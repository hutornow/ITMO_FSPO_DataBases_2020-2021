BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Movie" (
	"mID"	INTEGER NOT NULL UNIQUE,
	"title"	TEXT NOT NULL,
	"year"	INTEGER NOT NULL,
	"director"	TEXT,
	PRIMARY KEY("mID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Reviewer" (
	"rID"	INTEGER NOT NULL UNIQUE,
	"name"	TEXT NOT NULL,
	PRIMARY KEY("rID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "facebook_info" (
	"ad_id"	INTEGER,
	"fb_id"	TEXT,
	"impressions"	INTEGER,
	"unique_reach"	INTEGER,
	"unique_clicks"	INTEGER,
	"engagement_rate"	REAL,
	PRIMARY KEY("ad_id","fb_id")
);
CREATE TABLE IF NOT EXISTS "Rating" (
	"rID"	INTEGER NOT NULL,
	"mID"	INTEGER NOT NULL,
	"stars"	INTEGER NOT NULL,
	"ratingDate"	DATE,
	FOREIGN KEY("mID") REFERENCES "Movie"("mID"),
	FOREIGN KEY("rID") REFERENCES "Reviewer"("rID")
);
CREATE TABLE IF NOT EXISTS "ad_results" (
	"ad_id"	INTEGER NOT NULL,
	"customers_engaged"	TEXT,
	"revenue"	TEXT,
	"products_sold"	TEXT,
	"employees_hired"	TEXT,
	"new_customers"	TEXT,
	"success_score"	INTEGER,
	FOREIGN KEY("ad_id") REFERENCES "ad_info"("ad_id"),
	PRIMARY KEY("ad_id")
);
CREATE TABLE IF NOT EXISTS "ad_info" (
	"ad_id"	INTEGER NOT NULL,
	"date_launched"	TEXT,
	"total_budget"	INTEGER,
	"launching_team"	TEXT,
	"internal_purpose"	TEXT,
	PRIMARY KEY("ad_id")
);
INSERT INTO "Movie" VALUES (102,'Star Wars',1977,'George Lucas');
INSERT INTO "Movie" VALUES (103,'The Sound of Music',1965,'Robert Wise');
INSERT INTO "Reviewer" VALUES (201,'');
INSERT INTO "Reviewer" VALUES (202,'Daniel Lewis');
INSERT INTO "Reviewer" VALUES (203,'Brittany Harris');
INSERT INTO "Reviewer" VALUES (205,'Test1');
INSERT INTO "Reviewer" VALUES (206,'NewTest2');
INSERT INTO "facebook_info" VALUES (3,'fb-3371',2778,1563,966,0.618042226);
INSERT INTO "facebook_info" VALUES (4,'fb-4322',7942,6307,3284,0.520691295);
INSERT INTO "facebook_info" VALUES (9,'fb-7647',5346,3713,3054,0.822515486);
INSERT INTO "facebook_info" VALUES (10,'fb-7217',6766,6201,3387,0.546202225);
INSERT INTO "facebook_info" VALUES (15,'fb-8982',9603,9508,5075,0.533761043);
INSERT INTO "facebook_info" VALUES (16,'fb-3763',9997,6854,5107,0.745112343);
INSERT INTO "facebook_info" VALUES (21,'fb-9422',3938,3736,3704,0.99143469);
INSERT INTO "facebook_info" VALUES (22,'fb-2011',3636,2464,1614,0.655032468);
INSERT INTO "facebook_info" VALUES (27,'fb-7448',2677,1702,1394,0.819036428);
INSERT INTO "facebook_info" VALUES (28,'fb-3378',4723,4274,3938,0.921385119);
INSERT INTO "facebook_info" VALUES (33,'fb-1526',7135,4185,4143,0.989964158);
INSERT INTO "facebook_info" VALUES (34,'fb-9268',2762,1692,1479,0.874113475);
INSERT INTO "facebook_info" VALUES (39,'fb-6513',1018,862,699,0.810904872);
INSERT INTO "facebook_info" VALUES (40,'fb-3680',8755,5785,5212,0.900950735);
INSERT INTO "facebook_info" VALUES (45,'fb-6894',3158,2011,1616,0.803580308);
INSERT INTO "facebook_info" VALUES (46,'fb-3979',7259,6279,3428,0.545946807);
INSERT INTO "facebook_info" VALUES (51,'fb-6663',6923,5205,2905,0.558117195);
INSERT INTO "facebook_info" VALUES (52,'fb-1584',4808,4409,2750,0.6237242);
INSERT INTO "facebook_info" VALUES (57,'fb-3447',7985,4215,2434,0.577461447);
INSERT INTO "facebook_info" VALUES (123,'fb-6254',5153,3921,2125,0.541953583);
INSERT INTO "facebook_info" VALUES (124,'fb-3866',8283,8209,4372,0.532586186);
INSERT INTO "facebook_info" VALUES (129,'fb-8877',6118,3848,2518,0.654365904);
INSERT INTO "facebook_info" VALUES (130,'fb-2977',2964,2878,2556,0.888116748);
INSERT INTO "facebook_info" VALUES (135,'fb-8359',6316,5308,3758,0.707987943);
INSERT INTO "facebook_info" VALUES (136,'fb-9569',2174,2078,1813,0.872473532);
INSERT INTO "facebook_info" VALUES (141,'fb-6921',2178,1637,1621,0.990226023);
INSERT INTO "facebook_info" VALUES (142,'fb-1790',7966,5743,5186,0.903012363);
INSERT INTO "facebook_info" VALUES (147,'fb-2933',4202,3030,2887,0.952805281);
INSERT INTO "facebook_info" VALUES (148,'fb-6446',2161,1324,1065,0.804380665);
INSERT INTO "facebook_info" VALUES (37,'fb-6262',1288,983,587,0.597151577);
INSERT INTO "facebook_info" VALUES (38,'fb-3753',3674,2824,2587,0.916076487);
INSERT INTO "facebook_info" VALUES (41,'fb-8474',4075,3365,3025,0.898959881);
INSERT INTO "facebook_info" VALUES (42,'fb-1553',8153,7971,6936,0.870154309);
INSERT INTO "facebook_info" VALUES (43,'fb-5956',7076,6908,5315,0.7693978);
INSERT INTO "facebook_info" VALUES (44,'fb-2974',3168,2836,1625,0.572990127);
INSERT INTO "facebook_info" VALUES (47,'fb-7126',5932,5328,3153,0.591779279);
INSERT INTO "facebook_info" VALUES (48,'fb-9251',4085,3554,2168,0.610016882);
INSERT INTO "facebook_info" VALUES (49,'fb-7931',9126,8489,4518,0.532218165);
INSERT INTO "facebook_info" VALUES (50,'fb-4917',6866,6083,5634,0.926187736);
INSERT INTO "facebook_info" VALUES (53,'fb-9323',7935,7927,4646,0.586098146);
INSERT INTO "facebook_info" VALUES (54,'fb-6570',4355,3056,2927,0.957787958);
INSERT INTO "facebook_info" VALUES (55,'fb-4561',7509,6875,4195,0.610181818);
INSERT INTO "facebook_info" VALUES (56,'fb-3333',1825,1584,1117,0.705176768);
INSERT INTO "facebook_info" VALUES (59,'fb-7297',4023,3324,3244,0.975932611);
INSERT INTO "facebook_info" VALUES (60,'fb-5904',6622,3626,2944,0.811913955);
INSERT INTO "facebook_info" VALUES (61,'fb-8222',4957,4061,2133,0.525240089);
INSERT INTO "facebook_info" VALUES (62,'fb-7861',2633,2240,1145,0.511160714);
INSERT INTO "facebook_info" VALUES (65,'fb-6970',7045,4763,2599,0.545664497);
INSERT INTO "facebook_info" VALUES (66,'fb-7366',6737,5110,3778,0.739334638);
INSERT INTO "facebook_info" VALUES (67,'fb-4722',3036,2840,2012,0.708450704);
INSERT INTO "facebook_info" VALUES (68,'fb-9358',9787,6562,6114,0.931728132);
INSERT INTO "facebook_info" VALUES (71,'fb-1928',5539,4880,4483,0.918647541);
INSERT INTO "facebook_info" VALUES (72,'fb-8204',9955,5712,5061,0.886029412);
INSERT INTO "facebook_info" VALUES (73,'fb-5358',1312,1057,701,0.663197729);
INSERT INTO "facebook_info" VALUES (74,'fb-5422',4638,3057,1578,0.516192345);
INSERT INTO "facebook_info" VALUES (77,'fb-8962',3687,2968,2550,0.85916442);
INSERT INTO "facebook_info" VALUES (78,'fb-1366',3891,2756,2285,0.829100145);
INSERT INTO "facebook_info" VALUES (79,'fb-2668',6809,6720,5337,0.794196429);
INSERT INTO "facebook_info" VALUES (80,'fb-1208',8227,8149,5146,0.631488526);
INSERT INTO "facebook_info" VALUES (83,'fb-2008',8550,4502,3992,0.886717015);
INSERT INTO "facebook_info" VALUES (84,'fb-2036',9948,7969,7530,0.944911532);
INSERT INTO "facebook_info" VALUES (85,'fb-4327',9793,7676,6136,0.799374674);
INSERT INTO "facebook_info" VALUES (86,'fb-6928',8620,6424,4685,0.729296389);
INSERT INTO "facebook_info" VALUES (89,'fb-3019',4137,2900,2768,0.954482759);
INSERT INTO "facebook_info" VALUES (90,'fb-3495',2093,1366,1116,0.816983895);
INSERT INTO "Rating" VALUES (203,103,2,'2011-01-12');
INSERT INTO "ad_results" VALUES (1,'207',NULL,NULL,NULL,NULL,3);
INSERT INTO "ad_results" VALUES (2,NULL,NULL,NULL,NULL,'14',5);
INSERT INTO "ad_results" VALUES (3,NULL,'77195','5146',NULL,NULL,4);
INSERT INTO "ad_results" VALUES (4,NULL,'100523','6702',NULL,NULL,3);
INSERT INTO "ad_results" VALUES (5,NULL,'61015','4068',NULL,NULL,8);
INSERT INTO "ad_results" VALUES (6,NULL,'27062','1804',NULL,NULL,5);
INSERT INTO "ad_results" VALUES (7,NULL,'40903','2727',NULL,NULL,1);
INSERT INTO "ad_results" VALUES (8,NULL,'114953','7664',NULL,NULL,2);
INSERT INTO "ad_results" VALUES (9,NULL,'30975','2065',NULL,NULL,7);
INSERT INTO "ad_results" VALUES (10,NULL,'99793','6653',NULL,NULL,2);
INSERT INTO "ad_results" VALUES (11,NULL,'105257','7017',NULL,NULL,10);
INSERT INTO "ad_results" VALUES (12,NULL,'24840','1656',NULL,NULL,3);
INSERT INTO "ad_results" VALUES (13,NULL,'52045','3470',NULL,NULL,5);
INSERT INTO "ad_results" VALUES (14,NULL,'43637','2909',NULL,NULL,1);
INSERT INTO "ad_results" VALUES (15,NULL,NULL,NULL,NULL,'26',6);
INSERT INTO "ad_results" VALUES (16,NULL,NULL,NULL,NULL,'36',5);
INSERT INTO "ad_results" VALUES (17,NULL,NULL,NULL,NULL,'39',8);
INSERT INTO "ad_results" VALUES (18,NULL,NULL,NULL,NULL,'18',7);
INSERT INTO "ad_results" VALUES (19,NULL,NULL,NULL,NULL,'42',2);
INSERT INTO "ad_results" VALUES (20,NULL,NULL,NULL,NULL,'12',7);
INSERT INTO "ad_results" VALUES (21,NULL,NULL,NULL,NULL,'47',4);
INSERT INTO "ad_results" VALUES (22,NULL,NULL,NULL,NULL,'42',6);
INSERT INTO "ad_results" VALUES (23,NULL,NULL,NULL,NULL,'20',5);
INSERT INTO "ad_results" VALUES (24,NULL,NULL,NULL,NULL,'42',3);
INSERT INTO "ad_results" VALUES (25,NULL,NULL,NULL,NULL,'34',2);
INSERT INTO "ad_results" VALUES (26,NULL,NULL,NULL,NULL,'11',8);
INSERT INTO "ad_results" VALUES (27,NULL,NULL,NULL,NULL,'17',7);
INSERT INTO "ad_results" VALUES (28,NULL,NULL,NULL,NULL,'34',4);
INSERT INTO "ad_results" VALUES (29,NULL,NULL,NULL,NULL,'36',2);
INSERT INTO "ad_results" VALUES (30,NULL,NULL,NULL,NULL,'34',7);
INSERT INTO "ad_results" VALUES (31,NULL,NULL,NULL,NULL,'12',10);
INSERT INTO "ad_results" VALUES (32,'402',NULL,NULL,NULL,NULL,7);
INSERT INTO "ad_results" VALUES (33,'296',NULL,NULL,NULL,NULL,5);
INSERT INTO "ad_results" VALUES (34,'88',NULL,NULL,NULL,NULL,4);
INSERT INTO "ad_results" VALUES (35,'283',NULL,NULL,NULL,NULL,9);
INSERT INTO "ad_results" VALUES (36,'222',NULL,NULL,NULL,NULL,6);
INSERT INTO "ad_results" VALUES (37,'83',NULL,NULL,NULL,NULL,1);
INSERT INTO "ad_results" VALUES (38,'131',NULL,NULL,NULL,NULL,9);
INSERT INTO "ad_results" VALUES (39,'164',NULL,NULL,NULL,NULL,7);
INSERT INTO "ad_results" VALUES (40,'51',NULL,NULL,NULL,NULL,8);
INSERT INTO "ad_results" VALUES (41,'187',NULL,NULL,NULL,NULL,1);
INSERT INTO "ad_results" VALUES (42,'399',NULL,NULL,NULL,NULL,7);
INSERT INTO "ad_results" VALUES (43,'379',NULL,NULL,NULL,NULL,10);
INSERT INTO "ad_results" VALUES (44,'382',NULL,NULL,NULL,NULL,9);
INSERT INTO "ad_results" VALUES (45,'87',NULL,NULL,NULL,NULL,2);
INSERT INTO "ad_results" VALUES (46,'102',NULL,NULL,NULL,NULL,3);
INSERT INTO "ad_results" VALUES (47,'330',NULL,NULL,NULL,NULL,2);
INSERT INTO "ad_results" VALUES (48,'100',NULL,NULL,NULL,NULL,4);
INSERT INTO "ad_results" VALUES (49,'8',NULL,NULL,NULL,NULL,6);
INSERT INTO "ad_results" VALUES (50,'171',NULL,NULL,NULL,NULL,7);
INSERT INTO "ad_results" VALUES (51,'490',NULL,NULL,NULL,NULL,4);
INSERT INTO "ad_results" VALUES (52,'422',NULL,NULL,NULL,NULL,5);
INSERT INTO "ad_results" VALUES (53,'226',NULL,NULL,NULL,NULL,9);
INSERT INTO "ad_results" VALUES (54,'157',NULL,NULL,NULL,NULL,5);
INSERT INTO "ad_results" VALUES (55,'306',NULL,NULL,NULL,NULL,9);
INSERT INTO "ad_results" VALUES (56,'358',NULL,NULL,NULL,NULL,9);
INSERT INTO "ad_results" VALUES (57,'446',NULL,NULL,NULL,NULL,1);
INSERT INTO "ad_results" VALUES (58,'403',NULL,NULL,NULL,NULL,2);
INSERT INTO "ad_results" VALUES (59,'436',NULL,NULL,NULL,NULL,5);
INSERT INTO "ad_results" VALUES (60,'270',NULL,NULL,NULL,NULL,1);
INSERT INTO "ad_results" VALUES (61,'132',NULL,NULL,NULL,NULL,3);
INSERT INTO "ad_results" VALUES (62,'123',NULL,NULL,NULL,NULL,6);
INSERT INTO "ad_results" VALUES (63,'82',NULL,NULL,NULL,NULL,6);
INSERT INTO "ad_results" VALUES (64,'493',NULL,NULL,NULL,NULL,1);
INSERT INTO "ad_results" VALUES (65,NULL,NULL,NULL,'9',NULL,1);
INSERT INTO "ad_results" VALUES (66,NULL,NULL,NULL,'6',NULL,4);
INSERT INTO "ad_results" VALUES (67,NULL,NULL,NULL,'10',NULL,7);
INSERT INTO "ad_results" VALUES (68,NULL,NULL,NULL,'5',NULL,7);
INSERT INTO "ad_results" VALUES (69,NULL,NULL,NULL,'4',NULL,8);
INSERT INTO "ad_results" VALUES (70,NULL,NULL,NULL,'10',NULL,10);
INSERT INTO "ad_results" VALUES (71,NULL,NULL,NULL,'1',NULL,8);
INSERT INTO "ad_results" VALUES (72,NULL,NULL,NULL,'9',NULL,1);
INSERT INTO "ad_results" VALUES (73,NULL,NULL,NULL,'5',NULL,9);
INSERT INTO "ad_results" VALUES (74,NULL,NULL,NULL,'8',NULL,1);
INSERT INTO "ad_results" VALUES (75,NULL,NULL,NULL,'5',NULL,7);
INSERT INTO "ad_results" VALUES (76,NULL,NULL,NULL,'1',NULL,2);
INSERT INTO "ad_results" VALUES (77,NULL,NULL,NULL,'5',NULL,3);
INSERT INTO "ad_results" VALUES (78,NULL,NULL,NULL,'2',NULL,9);
INSERT INTO "ad_results" VALUES (79,NULL,NULL,NULL,'1',NULL,4);
INSERT INTO "ad_results" VALUES (80,NULL,NULL,NULL,'3',NULL,3);
INSERT INTO "ad_results" VALUES (81,NULL,NULL,NULL,'6',NULL,8);
INSERT INTO "ad_results" VALUES (82,NULL,NULL,NULL,'1',NULL,10);
INSERT INTO "ad_results" VALUES (83,NULL,NULL,NULL,'5',NULL,2);
INSERT INTO "ad_results" VALUES (84,NULL,NULL,NULL,'3',NULL,3);
INSERT INTO "ad_results" VALUES (85,NULL,NULL,NULL,'5',NULL,8);
INSERT INTO "ad_results" VALUES (86,NULL,NULL,NULL,'1',NULL,9);
INSERT INTO "ad_results" VALUES (87,NULL,NULL,NULL,'7',NULL,6);
INSERT INTO "ad_results" VALUES (88,NULL,NULL,NULL,'3',NULL,10);
INSERT INTO "ad_results" VALUES (89,NULL,NULL,NULL,'1',NULL,7);
INSERT INTO "ad_results" VALUES (90,NULL,NULL,NULL,'6',NULL,3);
INSERT INTO "ad_results" VALUES (91,NULL,NULL,NULL,'2',NULL,4);
INSERT INTO "ad_results" VALUES (92,NULL,NULL,NULL,'3',NULL,3);
INSERT INTO "ad_results" VALUES (93,NULL,NULL,NULL,'8',NULL,1);
INSERT INTO "ad_results" VALUES (94,NULL,NULL,NULL,'7',NULL,10);
INSERT INTO "ad_results" VALUES (95,NULL,NULL,NULL,'9',NULL,10);
INSERT INTO "ad_results" VALUES (96,NULL,NULL,NULL,'9',NULL,2);
INSERT INTO "ad_results" VALUES (97,NULL,NULL,NULL,'3',NULL,5);
INSERT INTO "ad_results" VALUES (98,NULL,NULL,NULL,'9',NULL,1);
INSERT INTO "ad_results" VALUES (99,NULL,'15516','776',NULL,NULL,6);
INSERT INTO "ad_results" VALUES (100,NULL,'41541','2077',NULL,NULL,7);
INSERT INTO "ad_results" VALUES (101,NULL,'56297','2815',NULL,NULL,8);
INSERT INTO "ad_results" VALUES (102,NULL,'64607','3230',NULL,NULL,10);
INSERT INTO "ad_results" VALUES (103,NULL,'56611','2831',NULL,NULL,5);
INSERT INTO "ad_results" VALUES (104,NULL,'118321','5916',NULL,NULL,6);
INSERT INTO "ad_results" VALUES (105,NULL,'138319','6916',NULL,NULL,5);
INSERT INTO "ad_results" VALUES (106,NULL,'75654','3783',NULL,NULL,1);
INSERT INTO "ad_results" VALUES (107,NULL,'72815','3641',NULL,NULL,1);
INSERT INTO "ad_results" VALUES (108,NULL,'26125','1306',NULL,NULL,2);
INSERT INTO "ad_results" VALUES (109,NULL,'131437','6572',NULL,NULL,5);
INSERT INTO "ad_results" VALUES (110,NULL,'82691','4135',NULL,NULL,5);
INSERT INTO "ad_results" VALUES (111,NULL,'86435','4322',NULL,NULL,8);
INSERT INTO "ad_results" VALUES (112,NULL,'97659','4883',NULL,NULL,4);
INSERT INTO "ad_results" VALUES (113,NULL,'129527','6476',NULL,NULL,4);
INSERT INTO "ad_results" VALUES (114,NULL,'105747','5287',NULL,NULL,4);
INSERT INTO "ad_results" VALUES (115,NULL,'94752','4738',NULL,NULL,2);
INSERT INTO "ad_results" VALUES (116,NULL,'67270','3364',NULL,NULL,1);
INSERT INTO "ad_results" VALUES (117,NULL,'118305','5915',NULL,NULL,2);
INSERT INTO "ad_results" VALUES (118,NULL,'92500','4625',NULL,NULL,4);
INSERT INTO "ad_results" VALUES (119,NULL,'76638','3832',NULL,NULL,6);
INSERT INTO "ad_results" VALUES (120,NULL,'93994','4700',NULL,NULL,9);
INSERT INTO "ad_results" VALUES (121,NULL,'92819','4641',NULL,NULL,2);
INSERT INTO "ad_results" VALUES (122,NULL,'117264','5863',NULL,NULL,7);
INSERT INTO "ad_results" VALUES (123,NULL,'112404','5620',NULL,NULL,3);
INSERT INTO "ad_results" VALUES (124,NULL,'97663','4883',NULL,NULL,6);
INSERT INTO "ad_results" VALUES (125,NULL,'38501','1925',NULL,NULL,1);
INSERT INTO "ad_results" VALUES (126,NULL,'53109','2655',NULL,NULL,2);
INSERT INTO "ad_results" VALUES (127,NULL,'68558','3428',NULL,NULL,4);
INSERT INTO "ad_results" VALUES (128,NULL,'54033','2702',NULL,NULL,2);
INSERT INTO "ad_results" VALUES (129,NULL,'59881','2994',NULL,NULL,2);
INSERT INTO "ad_results" VALUES (130,NULL,'88829','4441',NULL,NULL,10);
INSERT INTO "ad_results" VALUES (131,NULL,'36697','1835',NULL,NULL,6);
INSERT INTO "ad_results" VALUES (132,NULL,'26312','1316',NULL,NULL,4);
INSERT INTO "ad_results" VALUES (133,NULL,'39805','1990',NULL,NULL,5);
INSERT INTO "ad_results" VALUES (134,NULL,'72978','3649',NULL,NULL,8);
INSERT INTO "ad_results" VALUES (135,NULL,'97397','4870',NULL,NULL,8);
INSERT INTO "ad_results" VALUES (136,NULL,'59845','2992',NULL,NULL,7);
INSERT INTO "ad_results" VALUES (137,NULL,'134833','6742',NULL,NULL,7);
INSERT INTO "ad_results" VALUES (138,NULL,'64578','3229',NULL,NULL,5);
INSERT INTO "ad_results" VALUES (139,NULL,'91436','4572',NULL,NULL,9);
INSERT INTO "ad_results" VALUES (140,NULL,'88634','4432',NULL,NULL,3);
INSERT INTO "ad_results" VALUES (141,NULL,'13467','673',NULL,NULL,1);
INSERT INTO "ad_results" VALUES (142,NULL,'16176','809',NULL,NULL,8);
INSERT INTO "ad_results" VALUES (143,NULL,'105076','5254',NULL,NULL,1);
INSERT INTO "ad_results" VALUES (144,NULL,'59454','2973',NULL,NULL,5);
INSERT INTO "ad_results" VALUES (145,NULL,'14796','740',NULL,NULL,10);
INSERT INTO "ad_results" VALUES (146,NULL,'54294','2715',NULL,NULL,1);
INSERT INTO "ad_results" VALUES (147,NULL,'129306','6465',NULL,NULL,5);
INSERT INTO "ad_results" VALUES (148,NULL,'120554','6028',NULL,NULL,4);
INSERT INTO "ad_results" VALUES (149,NULL,'56525','2826',NULL,NULL,8);
INSERT INTO "ad_info" VALUES (1,'3/19/15',65941,'North America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (2,'8/23/17',58267,'South America','Get New Customers');
INSERT INTO "ad_info" VALUES (3,'12/31/13',57672,'Europe','Sell More of Product X');
INSERT INTO "ad_info" VALUES (4,'5/30/15',72322,'Australia','Sell More of Product X');
INSERT INTO "ad_info" VALUES (5,'11/15/13',34500,'Asia','Sell More of Product X');
INSERT INTO "ad_info" VALUES (6,'11/17/16',20442,'Africa','Sell More of Product X');
INSERT INTO "ad_info" VALUES (7,'2/19/13',25254,'North America','Sell More of Product X');
INSERT INTO "ad_info" VALUES (8,'7/19/16',93253,'South America','Sell More of Product X');
INSERT INTO "ad_info" VALUES (9,'8/23/13',14532,'Europe','Sell More of Product X');
INSERT INTO "ad_info" VALUES (10,'11/6/14',91000,'Australia','Sell More of Product X');
INSERT INTO "ad_info" VALUES (11,'12/22/15',95851,'Asia','Sell More of Product X');
INSERT INTO "ad_info" VALUES (12,'7/15/16',18841,'Africa','Sell More of Product X');
INSERT INTO "ad_info" VALUES (13,'5/25/13',11348,'North America','Sell More of Product X');
INSERT INTO "ad_info" VALUES (14,'8/9/15',17098,'South America','Sell More of Product X');
INSERT INTO "ad_info" VALUES (15,'1/5/16',22359,'Europe','Get New Customers');
INSERT INTO "ad_info" VALUES (16,'1/4/15',52801,'Australia','Get New Customers');
INSERT INTO "ad_info" VALUES (17,'1/17/17',10665,'Asia','Get New Customers');
INSERT INTO "ad_info" VALUES (18,'4/3/15',75901,'Africa','Get New Customers');
INSERT INTO "ad_info" VALUES (19,'8/18/17',91459,'North America','Get New Customers');
INSERT INTO "ad_info" VALUES (20,'5/12/14',19518,'South America','Get New Customers');
INSERT INTO "ad_info" VALUES (21,'4/18/13',71336,'Europe','Get New Customers');
INSERT INTO "ad_info" VALUES (22,'6/16/15',26606,'Australia','Get New Customers');
INSERT INTO "ad_info" VALUES (23,'4/27/16',42898,'Asia','Get New Customers');
INSERT INTO "ad_info" VALUES (24,'10/17/15',27043,'Africa','Get New Customers');
INSERT INTO "ad_info" VALUES (25,'7/1/16',46257,'North America','Get New Customers');
INSERT INTO "ad_info" VALUES (26,'7/12/14',20452,'South America','Get New Customers');
INSERT INTO "ad_info" VALUES (27,'4/23/13',64925,'Europe','Get New Customers');
INSERT INTO "ad_info" VALUES (28,'12/6/17',48405,'Australia','Get New Customers');
INSERT INTO "ad_info" VALUES (29,'7/4/13',68399,'Asia','Get New Customers');
INSERT INTO "ad_info" VALUES (30,'3/26/14',41050,'Africa','Get New Customers');
INSERT INTO "ad_info" VALUES (31,'5/20/16',73785,'North America','Get New Customers');
INSERT INTO "ad_info" VALUES (32,'8/1/17',70420,'South America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (33,'11/10/14',85751,'Europe','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (34,'1/31/15',73971,'Australia','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (35,'8/13/17',28570,'Asia','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (36,'12/15/16',81286,'Africa','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (37,'5/1/13',20864,'North America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (38,'7/31/15',46089,'South America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (39,'11/10/14',86549,'Europe','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (40,'4/28/13',69481,'Australia','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (41,'2/12/16',11412,'Asia','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (42,'11/10/17',71504,'Africa','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (43,'8/9/16',81402,'North America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (44,'3/29/17',88878,'South America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (45,'1/11/16',69511,'Europe','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (46,'9/28/14',31128,'Australia','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (47,'12/19/13',75791,'Asia','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (48,'8/4/16',54982,'Africa','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (49,'10/29/15',83019,'North America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (50,'6/29/16',55006,'South America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (51,'7/1/15',58402,'Europe','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (52,'5/23/14',14335,'Australia','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (53,'5/27/14',58908,'Asia','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (54,'7/23/13',86027,'Africa','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (55,'2/6/17',60212,'North America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (56,'4/5/15',72573,'South America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (57,'4/6/13',19478,'Europe','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (58,'6/6/13',72833,'Australia','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (59,'12/17/15',42835,'Asia','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (60,'8/9/17',64972,'Africa','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (61,'12/18/17',80529,'North America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (62,'2/1/15',80731,'South America','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (63,'8/13/14',44681,'Europe','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (64,'8/8/17',70166,'Australia','Increase Existing Customer Engagement');
INSERT INTO "ad_info" VALUES (65,'5/18/13',46078,'Asia','Attract Employees');
INSERT INTO "ad_info" VALUES (66,'4/14/17',83032,'Africa','Attract Employees');
INSERT INTO "ad_info" VALUES (67,'1/26/15',27915,'North America','Attract Employees');
INSERT INTO "ad_info" VALUES (68,'3/7/13',69499,'South America','Attract Employees');
INSERT INTO "ad_info" VALUES (69,'1/23/14',37583,'Europe','Attract Employees');
INSERT INTO "ad_info" VALUES (70,'6/4/13',76598,'Australia','Attract Employees');
INSERT INTO "ad_info" VALUES (71,'12/24/13',26522,'Asia','Attract Employees');
INSERT INTO "ad_info" VALUES (72,'10/5/13',25350,'Africa','Attract Employees');
INSERT INTO "ad_info" VALUES (73,'7/28/14',54447,'North America','Attract Employees');
INSERT INTO "ad_info" VALUES (74,'7/18/15',88153,'South America','Attract Employees');
INSERT INTO "ad_info" VALUES (75,'10/9/13',92336,'Europe','Attract Employees');
INSERT INTO "ad_info" VALUES (76,'6/2/16',72929,'Australia','Attract Employees');
INSERT INTO "ad_info" VALUES (77,'4/1/13',42912,'Asia','Attract Employees');
INSERT INTO "ad_info" VALUES (78,'6/14/14',27839,'Africa','Attract Employees');
INSERT INTO "ad_info" VALUES (79,'12/9/17',18755,'North America','Attract Employees');
INSERT INTO "ad_info" VALUES (80,'1/5/17',15555,'South America','Attract Employees');
INSERT INTO "ad_info" VALUES (81,'10/17/17',42138,'Europe','Attract Employees');
INSERT INTO "ad_info" VALUES (82,'1/22/16',21028,'Australia','Attract Employees');
INSERT INTO "ad_info" VALUES (83,'8/28/13',41576,'Asia','Attract Employees');
INSERT INTO "ad_info" VALUES (84,'12/28/17',16895,'Africa','Attract Employees');
INSERT INTO "ad_info" VALUES (85,'12/7/16',99372,'North America','Attract Employees');
INSERT INTO "ad_info" VALUES (86,'8/24/17',20836,'South America','Attract Employees');
INSERT INTO "ad_info" VALUES (87,'1/24/15',42738,'Europe','Attract Employees');
INSERT INTO "ad_info" VALUES (88,'1/10/16',74150,'Australia','Attract Employees');
INSERT INTO "ad_info" VALUES (89,'9/9/14',46460,'Asia','Attract Employees');
INSERT INTO "ad_info" VALUES (90,'5/11/13',27945,'Africa','Attract Employees');
INSERT INTO "ad_info" VALUES (91,'10/31/13',23769,'North America','Attract Employees');
INSERT INTO "ad_info" VALUES (92,'2/9/13',86359,'South America','Attract Employees');
INSERT INTO "ad_info" VALUES (93,'9/28/16',21390,'Europe','Attract Employees');
INSERT INTO "ad_info" VALUES (94,'3/29/17',44846,'Australia','Attract Employees');
INSERT INTO "ad_info" VALUES (95,'7/18/17',76156,'Asia','Attract Employees');
INSERT INTO "ad_info" VALUES (96,'12/27/16',36575,'Africa','Attract Employees');
INSERT INTO "ad_info" VALUES (97,'2/16/16',66121,'North America','Attract Employees');
INSERT INTO "ad_info" VALUES (98,'9/15/13',72294,'South America','Attract Employees');
INSERT INTO "ad_info" VALUES (99,'5/31/16',13765,'Europe','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (100,'11/8/13',23958,'Australia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (101,'3/3/14',44455,'Asia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (102,'2/27/17',56392,'Africa','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (103,'2/7/16',25612,'North America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (104,'1/12/15',85437,'South America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (105,'5/7/16',89357,'Europe','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (106,'12/22/14',26388,'Australia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (107,'4/28/15',38447,'Asia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (108,'1/14/13',25608,'Africa','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (109,'10/17/14',95800,'North America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (110,'9/5/17',55090,'South America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (111,'6/19/17',39460,'Europe','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (112,'8/11/13',78939,'Australia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (113,'3/23/16',95262,'Asia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (114,'8/7/13',60086,'Africa','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (115,'10/19/17',84450,'North America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (116,'5/10/17',22492,'South America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (117,'4/20/16',83625,'Europe','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (118,'9/1/16',67644,'Australia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (119,'4/22/13',50391,'Asia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (120,'9/8/17',46641,'Africa','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (121,'1/13/15',87748,'North America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (122,'4/19/15',74711,'South America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (123,'7/22/15',62960,'Europe','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (124,'7/14/17',57801,'Australia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (125,'7/4/16',11478,'Asia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (126,'12/28/14',10675,'Africa','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (127,'7/8/15',53535,'North America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (128,'9/4/14',10540,'South America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (129,'11/30/17',43231,'Europe','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (130,'9/20/17',47542,'Australia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (131,'11/27/16',29243,'Asia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (132,'11/17/16',19045,'Africa','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (133,'8/1/15',27664,'North America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (134,'5/17/13',62985,'South America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (135,'8/4/14',48646,'Europe','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (136,'12/8/13',38029,'Australia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (137,'4/30/15',85064,'Asia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (138,'12/8/14',17388,'Africa','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (139,'1/23/16',75813,'North America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (140,'9/29/15',58309,'South America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (141,'7/22/15',10594,'Europe','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (142,'1/28/13',15640,'Australia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (143,'12/12/16',87397,'Asia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (144,'5/10/13',30749,'Africa','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (145,'10/4/15',13233,'North America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (146,'12/28/17',15890,'South America','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (147,'3/17/15',81596,'Europe','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (148,'4/14/13',83272,'Australia','Sell More of Product Y');
INSERT INTO "ad_info" VALUES (149,'11/29/17',45106,'Asia','Sell More of Product Y');
COMMIT;
