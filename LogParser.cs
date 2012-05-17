using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net;

namespace MFN.Trees.Daemon
{
	public class LogParser
	{
		private const string numBase = @"0123456789`-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./~!@#$%^&*()_+QWERTYUIOP{}|ASDFGHJKL: ZXCVBNM<>?";
		private static long numCount { get { return numBase.Length; } }

		public LogParser() { }

		#region GetIpAddressFromHost
		public static string GetIpAddressFromHost()
		{
			IPHostEntry host;
			string address = string.Empty;
			try
			{
				host = Dns.GetHostEntry(Dns.GetHostName());
				foreach (IPAddress ip in host.AddressList)
				{
					if (ip.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork)
					{
						address = ip.ToString();
						break;
					}
				}
				if (address == null)
					address = string.Empty;
			}
			catch (Exception ex)
			{
				throw new Exception(string.Format("Failed to acquire agent machine IP address. Exception={0}", ex.Message));
			}
			return address;
		}
		#endregion


		public bool ProcessLogs()
		{
			bool result = true;

			List<FileInfo> _files = LoadFiles();
			if (_files.Count > 0)
			{
				List<LogResult> _logResults = new List<LogResult>();

				foreach (var file in _files)
				{ 
					_logResults.AddRange(ParseLog(file)); 
				}

				string bcpFileName = string.Format(@"{0}.bcp", Guid.NewGuid());

				string sIPBCPFolder = string.Format(ConfigurationManager.AppSettings["ImportMethodStatisticsFolder"], GetIpAddressFromHost());
				string sLocalBCPFolder = string.Format(@"{0}\bcp", ConfigurationManager.AppSettings["ImportMethodStatisticsLogFolder"]);

				if (!Directory.Exists(sLocalBCPFolder))
					Directory.CreateDirectory(sLocalBCPFolder);

				string sLocalBCPFilename = sLocalBCPFolder + Path.DirectorySeparatorChar + bcpFileName;
				string sIPBCPFilename = sIPBCPFolder + Path.DirectorySeparatorChar + bcpFileName;

				try
				{
					if (WriteBCPFile(_logResults, sLocalBCPFilename) == true)
					{
						if (DBManager.AdminImportMethodStatistics(sIPBCPFilename))
						{
							//Only delete BCP file if it was successful
							if (File.Exists(sLocalBCPFilename))
							{
								try
								{
									File.Delete(sLocalBCPFilename);
								}
								catch
								{
									// eat exception
								}
							}
						}
					}
				}
				finally
				{
					foreach (var file in _files)
					{
						if (File.Exists(file.FullName))
						{
							try
							{
								File.Delete(file.FullName);
							}
							catch
							{
								// eat exception
							}
						}
					}
				}
			}			
			return result;
		}

		private bool WriteBCPFile(List<LogResult> _logResults, string sLocalBCPFileName)
		{
			string bcpFileName = string.Empty;

			if (_logResults.Count > 0)
			{
				StreamWriter sw = new StreamWriter(sLocalBCPFileName, false, Encoding.Unicode);

				for (int i = 0; i < _logResults.Count; i++)
				{
					sw.WriteLine(string.Format("\t{0}\t{1}\t{2}\t{3}\t{4}\t{5}\t{6}\t{7}\t{8}\t{9}\t{10}\t{11}",
						_logResults[i].day.ToShortDateString(), //{0} 
						_logResults[i].hour, //{1}
						_logResults[i].methodID, //{2}
						_logResults[i].machineIP, //{3}
						_logResults[i].numCalls, //{4}
						_logResults[i].bytesSent, //{5}
						_logResults[i].bytesReceived, //{6}
						_logResults[i].avgDuration, //{7}
						_logResults[i].maxDuration, //{8}
						_logResults[i].p75Duration, //{9}
						_logResults[i].p75BytesSent, //{10}
						_logResults[i].p75BytesReceived)); //{11}
				}

				sw.Close();
				return true;
			}

			return false;
		}

		private List<FileInfo> LoadFiles()
		{
			string sLogPath = ConfigurationManager.AppSettings["TreeServiceLogFilePath"];

			foreach (string sServer in DBManager.ListWebServers())
			{
				try
				{
					string sPath = string.Format(@"\\{0}\{1}", sServer, sLogPath);
					List<FileInfo> logFiles;
					DirectoryInfo diLogFiles = new DirectoryInfo(sPath);
					logFiles = diLogFiles.GetFiles("TreeService*.log").ToList<FileInfo>();
					//Sort list by most recent 
					logFiles.Sort(delegate(FileInfo fi1, FileInfo fi2) { return fi2.CreationTime.CompareTo(fi1.CreationTime); });
					//Remove the two most recent to ensure we don't remove currently worked on file
					logFiles.RemoveAt(0);
					logFiles.RemoveAt(0);

					logFiles.ForEach(delegate(FileInfo fi) { fi.MoveTo(string.Format(@"{0}\{1}-{2}", ConfigurationManager.AppSettings["ImportMethodStatisticsLogFolder"], sServer, fi.Name)); });
				}
				catch (Exception ex)
				{ string x = ex.Message; }
			}

			List<FileInfo> _files;
			DirectoryInfo di = new DirectoryInfo(ConfigurationManager.AppSettings["ImportMethodStatisticsLogFolder"]);
			_files = di.GetFiles("*.log").ToList<FileInfo>();
			return _files;
		}

		private List<LogResult> ParseLog(FileInfo logFile)
		{
			Dictionary<long, List<long>> _durations = new Dictionary<long, List<long>>();
			Dictionary<long, List<long>> _bytesSent = new Dictionary<long, List<long>>();
			Dictionary<long, List<long>> _bytesReceived = new Dictionary<long, List<long>>();

			string line = string.Empty;
			string code = string.Empty;
			string[] lineParts;
			int codecount = 0;

			long methodID;
			long bytesReceived;
			long bytesSent;
			long duration;

			DateTime day = DateTime.MinValue;
			int hour = 0;
			string machineIP = string.Empty;

			StreamReader srLog = new StreamReader(logFile.FullName);

			//Map Data

			while ((line = srLog.ReadLine()) != null)
			{
				if (line.Substring(0, 1) == "\"") //contains log entry
				{
					codecount++;
					code = line.Substring(1, (line.LastIndexOf("\"") - 1));

					int count = code.Length / 14;
					int i = 0;
					while (i < code.Length)
					{
						try
						{
							methodID = this.UnPackNumber(code.Substring(0 + i, 2));
							bytesReceived = this.UnPackNumber(code.Substring(2 + i, 4));
							bytesSent = this.UnPackNumber(code.Substring(6 + i, 4));
							duration = this.UnPackNumber(code.Substring(10 + i, 4));

							try { _durations[methodID].Add(duration); }
							catch { _durations.Add(methodID, new List<long> { duration }); }

							try { _bytesReceived[methodID].Add(bytesReceived); }
							catch { _bytesReceived.Add(methodID, new List<long> { bytesReceived }); }

							try { _bytesSent[methodID].Add(bytesSent); }
							catch { _bytesSent.Add(methodID, new List<long> { bytesSent }); }

							if (day == DateTime.MinValue && hour == 0 && machineIP == string.Empty)
							{
								lineParts = line.Substring(code.Length + 3, (line.Length - (code.Length + 3))).Split(' ');

								DateTime dt = Convert.ToDateTime(lineParts[3] + " " + lineParts[4]);
								day = dt;
								hour = dt.Hour;
								machineIP = lineParts[5];
							}
						}
						catch
						{
							break;
						}

						i += 14;
					}
				}
			}
			srLog.Close();

			//Reduce Data

			List<LogResult> results = new List<LogResult>();
			LogResult lResult = null;

			foreach (long method in _durations.Keys)
			{
				lResult = new LogResult();
				lResult.day = day;
				lResult.hour = hour;
				lResult.machineIP = machineIP;

				//sort low to high
				_durations[method].Sort();
				_bytesReceived[method].Sort();
				_bytesSent[method].Sort();

				lResult.methodID = method;
				lResult.numCalls = _durations[method].Count;
				lResult.avgDuration = (long)_durations[method].Average();
				lResult.maxDuration = _durations[method].Max();
				lResult.p75Duration = _durations[method][(lResult.numCalls > 1 ? (int)(lResult.numCalls * .75) - 1 : 0)];

				lResult.bytesReceived = _bytesReceived[method].Sum();
				lResult.bytesSent = _bytesSent[method].Sum();
				lResult.p75BytesReceived = _bytesReceived[method][(lResult.numCalls > 1 ? (int)(lResult.numCalls * .75) - 1 : 0)];
				lResult.p75BytesSent = _bytesSent[method][(lResult.numCalls > 1 ? (int)(lResult.numCalls * .75) - 1 : 0)];

				results.Add(lResult);
			}
			
			return results;
		}

		private long UnPackNumber(string number)
		{
			long result = 0;

			number = number.TrimStart(new char[] { '0' });

			string currentChar = string.Empty;
			string currentBaseChar = string.Empty;
			int positions = number.Length;

			int currentIndex = 0;

			while (currentIndex < positions)
			{
				currentChar = number[currentIndex].ToString();

				for (int x = 0; x < numCount; x++)
				{
					currentBaseChar = numBase[x].ToString();

					if (currentBaseChar == currentChar)
					{
						if (positions > 1 && currentIndex < (positions - 1))
						{
							result += ((long)Math.Pow((double)numCount, ((double)(positions - 1) - (double)currentIndex))) * x;
							break;
						}

						result += x;
						break;
					}
				}

				currentIndex++;
			}

			return result;
		}
	}

	public class LogResult
	{
		public LogResult() { }

		public DateTime day { get; set; }
		public int hour { get; set; }
		public long methodID { get; set; }
		public string machineIP { get; set; }
		public int numCalls { get; set; }
		public long bytesReceived { get; set; }
		public long bytesSent { get; set; }
		public long avgDuration { get; set; }
		public long maxDuration { get; set; }
		public long p75Duration { get; set; }
		public long p75BytesReceived { get; set; }
		public long p75BytesSent { get; set; }
	}
}
