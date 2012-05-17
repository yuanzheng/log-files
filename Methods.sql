
set nocount on
set xact_abort on

begin tran

select * into #Methods from dbo.Methods with (nolock) where 1 = 0
insert into #Methods ( method_id, category_id, method_name) values (0,1,'UNKNOWN');
insert into #Methods ( method_id, category_id, method_name) values (1,1,'APIListAssertions');
insert into #Methods ( method_id, category_id, method_name) values (2,1,'APIListPersonas');
insert into #Methods ( method_id, category_id, method_name) values (3,1,'APIListRelationships');
insert into #Methods ( method_id, category_id, method_name) values (4,1,'APIListSettings');
insert into #Methods ( method_id, category_id, method_name) values (5,1,'APIListShares');
insert into #Methods ( method_id, category_id, method_name) values (6,1,'APIListTrees');
insert into #Methods ( method_id, category_id, method_name) values (7,1,'APISelectAssertion');
insert into #Methods ( method_id, category_id, method_name) values (8,1,'APISelectPersona');
insert into #Methods ( method_id, category_id, method_name) values (9,1,'APISelectRelationship');
insert into #Methods ( method_id, category_id, method_name) values (10,1,'APISelectSettings');
insert into #Methods ( method_id, category_id, method_name) values (11,1,'APISelectShare');
insert into #Methods ( method_id, category_id, method_name) values (12,1,'APISelectTree');
insert into #Methods ( method_id, category_id, method_name) values (13,2,'APIDatabaseContext');
insert into #Methods ( method_id, category_id, method_name) values (14,2,'IFHDatabaseContext');
insert into #Methods ( method_id, category_id, method_name) values (15,2,'OHTDatabaseContext');
insert into #Methods ( method_id, category_id, method_name) values (16,2,'OWTDatabaseContext');
insert into #Methods ( method_id, category_id, method_name) values (17,3,'DBContextDDRCacheLookup');
insert into #Methods ( method_id, category_id, method_name) values (18,3,'DBContextDDRLookup');
insert into #Methods ( method_id, category_id, method_name) values (19,3,'DBContextExceptions');
insert into #Methods ( method_id, category_id, method_name) values (20,4,'IFHAbortSync');
insert into #Methods ( method_id, category_id, method_name) values (21,4,'IFHAddAssertion');
insert into #Methods ( method_id, category_id, method_name) values (22,4,'IFHAddBookmarkPID');
insert into #Methods ( method_id, category_id, method_name) values (23,4,'IFHAddBookmarkTID');
insert into #Methods ( method_id, category_id, method_name) values (24,4,'IFHAddCitation');
insert into #Methods ( method_id, category_id, method_name) values (25,4,'IFHAddCitationReference');
insert into #Methods ( method_id, category_id, method_name) values (26,4,'IFHAddConnection');
insert into #Methods ( method_id, category_id, method_name) values (27,4,'IFHAddConnectionExcludedEvent');
insert into #Methods ( method_id, category_id, method_name) values (28,4,'IFHAddConnectionExcludedObject');
insert into #Methods ( method_id, category_id, method_name) values (29,4,'IFHAddConnectionExcludedPersona');
insert into #Methods ( method_id, category_id, method_name) values (30,4,'IFHAddConnectionHint');
insert into #Methods ( method_id, category_id, method_name) values (31,4,'IFHAddDNAObject');
insert into #Methods ( method_id, category_id, method_name) values (32,4,'IFHAddExcludedConnection');
insert into #Methods ( method_id, category_id, method_name) values (33,4,'IFHAddInvitee');
insert into #Methods ( method_id, category_id, method_name) values (34,4,'IFHAddObjectComment');
insert into #Methods ( method_id, category_id, method_name) values (35,4,'IFHAddObjectHint');
insert into #Methods ( method_id, category_id, method_name) values (36,4,'IFHAddObjectNote');
insert into #Methods ( method_id, category_id, method_name) values (37,4,'IFHAddPersona');
insert into #Methods ( method_id, category_id, method_name) values (38,4,'IFHAddPersonaComment');
insert into #Methods ( method_id, category_id, method_name) values (39,4,'IFHAddPersonaHint');
insert into #Methods ( method_id, category_id, method_name) values (40,4,'IFHAddPersonaNote');
insert into #Methods ( method_id, category_id, method_name) values (41,4,'IFHAddRecordHint');
insert into #Methods ( method_id, category_id, method_name) values (42,4,'IFHAddRelationship');
insert into #Methods ( method_id, category_id, method_name) values (43,4,'IFHAddRepository');
insert into #Methods ( method_id, category_id, method_name) values (44,4,'IFHAddSharedTree');
insert into #Methods ( method_id, category_id, method_name) values (45,4,'IFHAddSource');
insert into #Methods ( method_id, category_id, method_name) values (46,4,'IFHAddTree');
insert into #Methods ( method_id, category_id, method_name) values (47,4,'IFHAddView');
insert into #Methods ( method_id, category_id, method_name) values (48,4,'IFHAddViewField');
insert into #Methods ( method_id, category_id, method_name) values (49,4,'IFHAddWeblink');
insert into #Methods ( method_id, category_id, method_name) values (50,4,'IFHAttachMergedPersona');
insert into #Methods ( method_id, category_id, method_name) values (51,4,'IFHAttachObject');
insert into #Methods ( method_id, category_id, method_name) values (52,4,'IFHAttachViewEvent');
insert into #Methods ( method_id, category_id, method_name) values (53,4,'IFHAttachViewObject');
insert into #Methods ( method_id, category_id, method_name) values (54,4,'IFHBeginSync');
insert into #Methods ( method_id, category_id, method_name) values (55,4,'IFHBeginSyncImport');
insert into #Methods ( method_id, category_id, method_name) values (56,4,'IFHBrowseViewField1');
insert into #Methods ( method_id, category_id, method_name) values (57,4,'IFHBrowseViewField2');
insert into #Methods ( method_id, category_id, method_name) values (58,4,'IFHBrowseViewField3');
insert into #Methods ( method_id, category_id, method_name) values (59,4,'IFHBrowseViewField4');
insert into #Methods ( method_id, category_id, method_name) values (60,4,'IFHBrowseViewField5');
insert into #Methods ( method_id, category_id, method_name) values (61,4,'IFHCloneDNAObject');
insert into #Methods ( method_id, category_id, method_name) values (62,4,'IFHCloneObject');
insert into #Methods ( method_id, category_id, method_name) values (63,4,'IFHCopyInvitees');
insert into #Methods ( method_id, category_id, method_name) values (64,4,'IFHCopyTreeShares');
insert into #Methods ( method_id, category_id, method_name) values (65,4,'IFHCountAllComments');
insert into #Methods ( method_id, category_id, method_name) values (66,4,'IFHCountBookmarkPIDs');
insert into #Methods ( method_id, category_id, method_name) values (67,4,'IFHCountBookmarkTIDs');
insert into #Methods ( method_id, category_id, method_name) values (68,4,'IFHCountCitationRecords');
insert into #Methods ( method_id, category_id, method_name) values (69,4,'IFHCountObjectComments');
insert into #Methods ( method_id, category_id, method_name) values (70,4,'IFHCountObjectReferences');
insert into #Methods ( method_id, category_id, method_name) values (71,4,'IFHCountObjects');
insert into #Methods ( method_id, category_id, method_name) values (72,4,'IFHCountPersonaComments');
insert into #Methods ( method_id, category_id, method_name) values (73,4,'IFHCountPersonas');
insert into #Methods ( method_id, category_id, method_name) values (74,4,'IFHCountPersonasWithHints');
insert into #Methods ( method_id, category_id, method_name) values (75,4,'IFHCountSharedTrees');
insert into #Methods ( method_id, category_id, method_name) values (76,4,'IFHCountSharedTreesEx');
insert into #Methods ( method_id, category_id, method_name) values (77,4,'IFHCountSources');
insert into #Methods ( method_id, category_id, method_name) values (78,4,'IFHCountSuggestions');
insert into #Methods ( method_id, category_id, method_name) values (79,4,'IFHCountTrees');
insert into #Methods ( method_id, category_id, method_name) values (80,4,'IFHCountTreeShares');
insert into #Methods ( method_id, category_id, method_name) values (81,4,'IFHCountViewFields');
insert into #Methods ( method_id, category_id, method_name) values (82,4,'IFHDetachMergedPersona');
insert into #Methods ( method_id, category_id, method_name) values (83,4,'IFHDetachObject');
insert into #Methods ( method_id, category_id, method_name) values (84,4,'IFHDetachViewEvent');
insert into #Methods ( method_id, category_id, method_name) values (85,4,'IFHDetachViewObject');
insert into #Methods ( method_id, category_id, method_name) values (86,4,'IFHEndSync');
insert into #Methods ( method_id, category_id, method_name) values (87,4,'IFHEndSyncImport');
insert into #Methods ( method_id, category_id, method_name) values (88,4,'IFHExportGedcom');
insert into #Methods ( method_id, category_id, method_name) values (89,4,'IFHFindConnections');
insert into #Methods ( method_id, category_id, method_name) values (90,4,'IFHFindObject');
insert into #Methods ( method_id, category_id, method_name) values (91,4,'IFHGetAuthzRights');
insert into #Methods ( method_id, category_id, method_name) values (92,4,'IFHGetTrackedPID');
insert into #Methods ( method_id, category_id, method_name) values (93,4,'IFHGetTreeAttributes');
insert into #Methods ( method_id, category_id, method_name) values (94,4,'IFHImportGedcom');
insert into #Methods ( method_id, category_id, method_name) values (95,4,'IFHImportObject');
insert into #Methods ( method_id, category_id, method_name) values (96,4,'IFHLinkPersona');
insert into #Methods ( method_id, category_id, method_name) values (97,4,'IFHListAllComments');
insert into #Methods ( method_id, category_id, method_name) values (98,4,'IFHListAssertionTokens');
insert into #Methods ( method_id, category_id, method_name) values (99,4,'IFHListBookmarkPIDs');
insert into #Methods ( method_id, category_id, method_name) values (100,4,'IFHListBookmarkTIDs');
insert into #Methods ( method_id, category_id, method_name) values (101,4,'IFHListCachedObjects');
insert into #Methods ( method_id, category_id, method_name) values (102,4,'IFHListCitationRecords');
insert into #Methods ( method_id, category_id, method_name) values (103,4,'IFHListCitations');
insert into #Methods ( method_id, category_id, method_name) values (104,4,'IFHListCitationsWithDBID');
insert into #Methods ( method_id, category_id, method_name) values (105,4,'IFHListClonedObjectTrees');
insert into #Methods ( method_id, category_id, method_name) values (106,4,'IFHListConnections');
insert into #Methods ( method_id, category_id, method_name) values (107,4,'IFHListDashboardEvents');
insert into #Methods ( method_id, category_id, method_name) values (108,4,'IFHListDNAKeyObjectReferences');
insert into #Methods ( method_id, category_id, method_name) values (109,4,'IFHListDNAObjects');
insert into #Methods ( method_id, category_id, method_name) values (110,4,'IFHListDNAPersonaReferences');
insert into #Methods ( method_id, category_id, method_name) values (111,4,'IFHListGedcoms');
insert into #Methods ( method_id, category_id, method_name) values (112,4,'IFHListInvitees');
insert into #Methods ( method_id, category_id, method_name) values (113,4,'IFHListMergedPersonas');
insert into #Methods ( method_id, category_id, method_name) values (114,4,'IFHListObjectAssertions');
insert into #Methods ( method_id, category_id, method_name) values (115,4,'IFHListObjectCitations');
insert into #Methods ( method_id, category_id, method_name) values (116,4,'IFHListObjectComments');
insert into #Methods ( method_id, category_id, method_name) values (117,4,'IFHListObjectCommentsEx');
insert into #Methods ( method_id, category_id, method_name) values (118,4,'IFHListObjectHintPersonas');
insert into #Methods ( method_id, category_id, method_name) values (119,4,'IFHListObjectHints');
insert into #Methods ( method_id, category_id, method_name) values (120,4,'IFHListObjectNotes');
insert into #Methods ( method_id, category_id, method_name) values (121,4,'IFHListObjectPersonas');
insert into #Methods ( method_id, category_id, method_name) values (122,4,'IFHListObjectReferences');
insert into #Methods ( method_id, category_id, method_name) values (123,4,'IFHListObjects');
insert into #Methods ( method_id, category_id, method_name) values (124,4,'IFHListObjectUserNotes');
insert into #Methods ( method_id, category_id, method_name) values (125,4,'IFHListPersonaComments');
insert into #Methods ( method_id, category_id, method_name) values (126,4,'IFHListPersonaCommentsEx');
insert into #Methods ( method_id, category_id, method_name) values (127,4,'IFHListPersonaHintPersonas');
insert into #Methods ( method_id, category_id, method_name) values (128,4,'IFHListPersonaHints');
insert into #Methods ( method_id, category_id, method_name) values (129,4,'IFHListPersonaNotes');
insert into #Methods ( method_id, category_id, method_name) values (130,4,'IFHListPersonas');
insert into #Methods ( method_id, category_id, method_name) values (131,4,'IFHListPersonasWithHints');
insert into #Methods ( method_id, category_id, method_name) values (132,4,'IFHListPIDDeletes');
insert into #Methods ( method_id, category_id, method_name) values (133,4,'IFHListPublicObjects');
insert into #Methods ( method_id, category_id, method_name) values (134,4,'IFHListRecordHintPersonas');
insert into #Methods ( method_id, category_id, method_name) values (135,4,'IFHListRecordHints');
insert into #Methods ( method_id, category_id, method_name) values (136,4,'IFHListRepositories');
insert into #Methods ( method_id, category_id, method_name) values (137,4,'IFHListSettings');
insert into #Methods ( method_id, category_id, method_name) values (138,4,'IFHListSharedTrees');
insert into #Methods ( method_id, category_id, method_name) values (139,4,'IFHListSources');
insert into #Methods ( method_id, category_id, method_name) values (140,4,'IFHListSourcesWithDBID');
insert into #Methods ( method_id, category_id, method_name) values (141,4,'IFHListSyncs');
insert into #Methods ( method_id, category_id, method_name) values (142,4,'IFHListTopCitations');
insert into #Methods ( method_id, category_id, method_name) values (143,4,'IFHListTopLinkedObjects');
insert into #Methods ( method_id, category_id, method_name) values (144,4,'IFHListTopLinkedPersonas');
insert into #Methods ( method_id, category_id, method_name) values (145,4,'IFHListTopLinkedRecords');
insert into #Methods ( method_id, category_id, method_name) values (146,4,'IFHListTopLinkedRecords2');
insert into #Methods ( method_id, category_id, method_name) values (147,4,'IFHListTrackedPID');
insert into #Methods ( method_id, category_id, method_name) values (148,4,'IFHListTreeGraph');
insert into #Methods ( method_id, category_id, method_name) values (149,4,'IFHListTreeGraph2');
insert into #Methods ( method_id, category_id, method_name) values (150,4,'IFHListTreeMembers');
insert into #Methods ( method_id, category_id, method_name) values (151,4,'IFHListTreeNames');
insert into #Methods ( method_id, category_id, method_name) values (152,4,'IFHListTreeNames2');
insert into #Methods ( method_id, category_id, method_name) values (153,4,'IFHListTreePersonas');
insert into #Methods ( method_id, category_id, method_name) values (154,4,'IFHListTreePersonas2');
insert into #Methods ( method_id, category_id, method_name) values (155,4,'IFHListTreePersonas3');
insert into #Methods ( method_id, category_id, method_name) values (156,4,'IFHListTreePIDs');
insert into #Methods ( method_id, category_id, method_name) values (157,4,'IFHListTreePlaces');
insert into #Methods ( method_id, category_id, method_name) values (158,4,'IFHListTrees');
insert into #Methods ( method_id, category_id, method_name) values (159,4,'IFHListTreeShares');
insert into #Methods ( method_id, category_id, method_name) values (160,4,'IFHListViews');
insert into #Methods ( method_id, category_id, method_name) values (161,4,'IFHListWeblinks');
insert into #Methods ( method_id, category_id, method_name) values (162,4,'IFHMergeHints');
insert into #Methods ( method_id, category_id, method_name) values (163,4,'IFHPrepareObject');
insert into #Methods ( method_id, category_id, method_name) values (164,4,'IFHRCalcDeleteCachedPersonas');
insert into #Methods ( method_id, category_id, method_name) values (165,4,'IFHRCalcListCachedPersonas');
insert into #Methods ( method_id, category_id, method_name) values (166,4,'IFHRCalcRunCalculator');
insert into #Methods ( method_id, category_id, method_name) values (167,4,'IFHRCalcRunDirectCalculator');
insert into #Methods ( method_id, category_id, method_name) values (168,4,'IFHRemoveAssertion');
insert into #Methods ( method_id, category_id, method_name) values (169,4,'IFHRemoveBookmarkPID');
insert into #Methods ( method_id, category_id, method_name) values (170,4,'IFHRemoveBookmarkTID');
insert into #Methods ( method_id, category_id, method_name) values (171,4,'IFHRemoveCitation');
insert into #Methods ( method_id, category_id, method_name) values (172,4,'IFHRemoveCitationReference');
insert into #Methods ( method_id, category_id, method_name) values (173,4,'IFHRemoveConnection');
insert into #Methods ( method_id, category_id, method_name) values (174,4,'IFHRemoveConnectionExcludedEvent');
insert into #Methods ( method_id, category_id, method_name) values (175,4,'IFHRemoveConnectionExcludedObject');
insert into #Methods ( method_id, category_id, method_name) values (176,4,'IFHRemoveConnectionExcludedPersona');
insert into #Methods ( method_id, category_id, method_name) values (177,4,'IFHRemoveConnectionExcludedRecord');
insert into #Methods ( method_id, category_id, method_name) values (178,4,'IFHRemoveConnectionHint');
insert into #Methods ( method_id, category_id, method_name) values (179,4,'IFHRemoveDNAObject');
insert into #Methods ( method_id, category_id, method_name) values (180,4,'IFHRemoveExcludedConnection');
insert into #Methods ( method_id, category_id, method_name) values (181,4,'IFHRemoveGedcom');
insert into #Methods ( method_id, category_id, method_name) values (182,4,'IFHRemoveInvitee');
insert into #Methods ( method_id, category_id, method_name) values (183,4,'IFHRemoveObject');
insert into #Methods ( method_id, category_id, method_name) values (184,4,'IFHRemoveObjectComment');
insert into #Methods ( method_id, category_id, method_name) values (185,4,'IFHRemoveObjectHint');
insert into #Methods ( method_id, category_id, method_name) values (186,4,'IFHRemoveObjectHints');
insert into #Methods ( method_id, category_id, method_name) values (187,4,'IFHRemoveObjectNote');
insert into #Methods ( method_id, category_id, method_name) values (188,4,'IFHRemovePersona');
insert into #Methods ( method_id, category_id, method_name) values (189,4,'IFHRemovePersonaComment');
insert into #Methods ( method_id, category_id, method_name) values (190,4,'IFHRemovePersonaHint');
insert into #Methods ( method_id, category_id, method_name) values (191,4,'IFHRemovePersonaHints');
insert into #Methods ( method_id, category_id, method_name) values (192,4,'IFHRemovePersonaNote');
insert into #Methods ( method_id, category_id, method_name) values (193,4,'IFHRemoveRecordHint');
insert into #Methods ( method_id, category_id, method_name) values (194,4,'IFHRemoveRecordHints');
insert into #Methods ( method_id, category_id, method_name) values (195,4,'IFHRemoveRelationship');
insert into #Methods ( method_id, category_id, method_name) values (196,4,'IFHRemoveRepository');
insert into #Methods ( method_id, category_id, method_name) values (197,4,'IFHRemoveSettings');
insert into #Methods ( method_id, category_id, method_name) values (198,4,'IFHRemoveSharedTree');
insert into #Methods ( method_id, category_id, method_name) values (199,4,'IFHRemoveSource');
insert into #Methods ( method_id, category_id, method_name) values (200,4,'IFHRemoveSync');
insert into #Methods ( method_id, category_id, method_name) values (201,4,'IFHRemoveTree');
insert into #Methods ( method_id, category_id, method_name) values (202,4,'IFHRemoveView');
insert into #Methods ( method_id, category_id, method_name) values (203,4,'IFHRemoveViewField');
insert into #Methods ( method_id, category_id, method_name) values (204,4,'IFHRemoveWeblink');
insert into #Methods ( method_id, category_id, method_name) values (205,4,'IFHResetHint');
insert into #Methods ( method_id, category_id, method_name) values (206,4,'IFHSearchViewFields');
insert into #Methods ( method_id, category_id, method_name) values (207,4,'IFHSelectBookmarkPID');
insert into #Methods ( method_id, category_id, method_name) values (208,4,'IFHSelectBookmarkTID');
insert into #Methods ( method_id, category_id, method_name) values (209,4,'IFHSelectCitation');
insert into #Methods ( method_id, category_id, method_name) values (210,4,'IFHSelectDNAObject');
insert into #Methods ( method_id, category_id, method_name) values (211,4,'IFHSelectGedcom');
insert into #Methods ( method_id, category_id, method_name) values (212,4,'IFHSelectInvitee');
insert into #Methods ( method_id, category_id, method_name) values (213,4,'IFHSelectMergedPersona');
insert into #Methods ( method_id, category_id, method_name) values (214,4,'IFHSelectMilanoFeed');
insert into #Methods ( method_id, category_id, method_name) values (215,4,'IFHSelectObject');
insert into #Methods ( method_id, category_id, method_name) values (216,4,'IFHSelectObjectComment');
insert into #Methods ( method_id, category_id, method_name) values (217,4,'IFHSelectObjectHint');
insert into #Methods ( method_id, category_id, method_name) values (218,4,'IFHSelectObjectNote');
insert into #Methods ( method_id, category_id, method_name) values (219,4,'IFHSelectObjectReference');
insert into #Methods ( method_id, category_id, method_name) values (220,4,'IFHSelectPersonaComment');
insert into #Methods ( method_id, category_id, method_name) values (221,4,'IFHSelectPersonaHint');
insert into #Methods ( method_id, category_id, method_name) values (222,4,'IFHSelectPersonaNote');
insert into #Methods ( method_id, category_id, method_name) values (223,4,'IFHSelectRecordHint');
insert into #Methods ( method_id, category_id, method_name) values (224,4,'IFHSelectRepository');
insert into #Methods ( method_id, category_id, method_name) values (225,4,'IFHSelectSettings');
insert into #Methods ( method_id, category_id, method_name) values (226,4,'IFHSelectSource');
insert into #Methods ( method_id, category_id, method_name) values (227,4,'IFHSelectSync');
insert into #Methods ( method_id, category_id, method_name) values (228,4,'IFHSelectView');
insert into #Methods ( method_id, category_id, method_name) values (229,4,'IFHSelectWeblink');
insert into #Methods ( method_id, category_id, method_name) values (230,4,'IFHSetCommentsSetting');
insert into #Methods ( method_id, category_id, method_name) values (231,4,'IFHSetContentSetting');
insert into #Methods ( method_id, category_id, method_name) values (232,4,'IFHSetFlagsSetting');
insert into #Methods ( method_id, category_id, method_name) values (233,4,'IFHSetHintNotificationsSetting');
insert into #Methods ( method_id, category_id, method_name) values (234,4,'IFHSetInvitationsSetting');
insert into #Methods ( method_id, category_id, method_name) values (235,4,'IFHSetMePIDSetting');
insert into #Methods ( method_id, category_id, method_name) values (236,4,'IFHSetNicknameSetting');
insert into #Methods ( method_id, category_id, method_name) values (237,4,'IFHSetRootPIDSetting');
insert into #Methods ( method_id, category_id, method_name) values (238,4,'IFHSetTrackedPID');
insert into #Methods ( method_id, category_id, method_name) values (239,4,'IFHSetTreeAttributes');
insert into #Methods ( method_id, category_id, method_name) values (240,4,'IFHSetVisitedSetting');
insert into #Methods ( method_id, category_id, method_name) values (241,4,'IFHSyncTree');
insert into #Methods ( method_id, category_id, method_name) values (242,4,'IFHTrackHint');
insert into #Methods ( method_id, category_id, method_name) values (243,4,'IFHTrackObject');
insert into #Methods ( method_id, category_id, method_name) values (244,4,'IFHUpdateAssertion');
insert into #Methods ( method_id, category_id, method_name) values (245,4,'IFHUpdateAssertionPin');
insert into #Methods ( method_id, category_id, method_name) values (246,4,'IFHUpdateCitation');
insert into #Methods ( method_id, category_id, method_name) values (247,4,'IFHUpdateInvitee');
insert into #Methods ( method_id, category_id, method_name) values (248,4,'IFHUpdateObject');
insert into #Methods ( method_id, category_id, method_name) values (249,4,'IFHUpdateObjectComment');
insert into #Methods ( method_id, category_id, method_name) values (250,4,'IFHUpdateObjectHint');
insert into #Methods ( method_id, category_id, method_name) values (251,4,'IFHUpdateObjectNote');
insert into #Methods ( method_id, category_id, method_name) values (252,4,'IFHUpdatePersonaBinding');
insert into #Methods ( method_id, category_id, method_name) values (253,4,'IFHUpdatePersonaComment');
insert into #Methods ( method_id, category_id, method_name) values (254,4,'IFHUpdatePersonaFlags');
insert into #Methods ( method_id, category_id, method_name) values (255,4,'IFHUpdatePersonaHint');
insert into #Methods ( method_id, category_id, method_name) values (256,4,'IFHUpdatePersonaNote');
insert into #Methods ( method_id, category_id, method_name) values (257,4,'IFHUpdatePersonaPhoto');
insert into #Methods ( method_id, category_id, method_name) values (258,4,'IFHUpdatePersonaUserID');
insert into #Methods ( method_id, category_id, method_name) values (259,4,'IFHUpdateRecordHint');
insert into #Methods ( method_id, category_id, method_name) values (260,4,'IFHUpdateRelationship');
insert into #Methods ( method_id, category_id, method_name) values (261,4,'IFHUpdateRepository');
insert into #Methods ( method_id, category_id, method_name) values (262,4,'IFHUpdateSource');
insert into #Methods ( method_id, category_id, method_name) values (263,4,'IFHUpdateTreePhoto');
insert into #Methods ( method_id, category_id, method_name) values (264,4,'IFHUpdateViewAccess');
insert into #Methods ( method_id, category_id, method_name) values (265,4,'IFHUpdateViewEventNameID');
insert into #Methods ( method_id, category_id, method_name) values (266,4,'IFHUpdateViewFieldNameID');
insert into #Methods ( method_id, category_id, method_name) values (267,4,'IFHUpdateViewObjectNameID');
insert into #Methods ( method_id, category_id, method_name) values (268,4,'IFHUpdateViewScore');
insert into #Methods ( method_id, category_id, method_name) values (269,4,'IFHUpdateViewViews');
insert into #Methods ( method_id, category_id, method_name) values (270,4,'IFHUpdateWeblink');
insert into #Methods ( method_id, category_id, method_name) values (271,4,'IFHWalkConnection');
insert into #Methods ( method_id, category_id, method_name) values (272,4,'IFHWalkFamily');
insert into #Methods ( method_id, category_id, method_name) values (273,4,'IFHWalkFamily2');
insert into #Methods ( method_id, category_id, method_name) values (274,4,'IFHWalkTree');
insert into #Methods ( method_id, category_id, method_name) values (275,4,'IFHWalkTree2');
insert into #Methods ( method_id, category_id, method_name) values (276,5,'OHTCountSubmitters');
insert into #Methods ( method_id, category_id, method_name) values (277,5,'OHTListCitations');
insert into #Methods ( method_id, category_id, method_name) values (278,5,'OHTListSubmitters');
insert into #Methods ( method_id, category_id, method_name) values (279,5,'OHTWalkTree2');
insert into #Methods ( method_id, category_id, method_name) values (280,6,'OWTCountSubmitters');
insert into #Methods ( method_id, category_id, method_name) values (281,6,'OWTListSecondarySources');
insert into #Methods ( method_id, category_id, method_name) values (282,6,'OWTListSubmitters');
insert into #Methods ( method_id, category_id, method_name) values (283,6,'OWTWalkTree');
insert into #Methods ( method_id, category_id, method_name) values (284,7,'MessagePipeline');
insert into #Methods ( method_id, category_id, method_name) values (285,7,'MessagePipelineExceptions');
insert into #Methods ( method_id, category_id, method_name) values (286,7,'MessagePipelineFlush');
insert into #Methods ( method_id, category_id, method_name) values (287,7,'MessagePipelineWarnings');
insert into #Methods ( method_id, category_id, method_name) values (288,8,'IFHAddShoeboxRecord');
insert into #Methods ( method_id, category_id, method_name) values (289,8,'IFHCountShoeboxRecords');
insert into #Methods ( method_id, category_id, method_name) values (290,8,'IFHListShoeboxRecords');
insert into #Methods ( method_id, category_id, method_name) values (291,8,'IFHListTopShoeboxRecords');
insert into #Methods ( method_id, category_id, method_name) values (292,8,'IFHRemoveShoeboxRecord');
insert into #Methods ( method_id, category_id, method_name) values (293,8,'IFHSelectShoeboxRecord');
insert into #Methods ( method_id, category_id, method_name) values (294,9,'CompletionPortThreads');
insert into #Methods ( method_id, category_id, method_name) values (295,9,'MaxCompletionPortThreads');
insert into #Methods ( method_id, category_id, method_name) values (296,9,'MaxWorkerThreads');
insert into #Methods ( method_id, category_id, method_name) values (297,9,'WorkerThreads');
insert into #Methods ( method_id, category_id, method_name) values (298,1, 'apiping');
insert into #Methods ( method_id, category_id, method_name) values (299,4, 'ifhping');
insert into #Methods ( method_id, category_id, method_name) values (300,4, 'ifhlistuserpersonalinkedrecords');
insert into #Methods ( method_id, category_id, method_name) values (301,4, 'ifhbeginsyncexport');
insert into #Methods ( method_id, category_id, method_name) values (302,4, 'ifhendsyncexport');
insert into #Methods ( method_id, category_id, method_name) values (303,4, 'ifhlisttrackedpids');
insert into #Methods ( method_id, category_id, method_name) values (304,4, 'ifhlisttreesinfo');
insert into #Methods ( method_id, category_id, method_name) values (305,4, 'ifhselectpersonanotertf');
insert into #Methods ( method_id, category_id, method_name) values (306,4, 'ifhselecttoppersonanote');
insert into #Methods ( method_id, category_id, method_name) values (307,4, 'ifhselecttoppersonanotertf');
insert into #Methods ( method_id, category_id, method_name) values (308,4, 'ifhlistpersonanotesrtf');
insert into #Methods ( method_id, category_id, method_name) values (309,4, 'ifhaddconnectionexcludedrecord');
insert into #Methods ( method_id, category_id, method_name) values (310,6, 'owtping');
insert into dbo.Methods
(
    method_id,
    category_id,
    method_name
)
select
    t.method_id,
    t.category_id,
    t.method_name
from
    #Methods t
    left join dbo.Methods m on m.method_id = t.method_id
where
    m.method_id is null

update m
set
    method_name = t.method_name,
    category_id = t.category_id
from
    #Methods t
    join dbo.Methods m on m.method_id = t.method_id
where
    t.method_name <> m.method_name or
    t.category_id <> m.category_id

drop table #Methods

commit tran
