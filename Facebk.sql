CREATE DATABASE  IF NOT EXISTS `facebook` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `facebook`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: facebook
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `activity_log` (
  `User_id` int(11) NOT NULL,
  `Friend_id` int(11) DEFAULT NULL,
  `Action_performed` varchar(15) DEFAULT NULL,
  `Activity_date` datetime DEFAULT NULL,
  PRIMARY KEY (`User_id`),
  CONSTRAINT `fk_Activity_log_User_basic1` FOREIGN KEY (`User_id`) REFERENCES `user_basic` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (100500,300500,'Liked','2018-11-07 00:00:00'),(100503,300503,'Shared','2018-10-18 00:00:00'),(100504,300504,'Saved','2018-09-28 00:00:00'),(100505,300505,'Liked','2018-09-08 00:00:00'),(100506,300506,'Reacted','2018-11-07 00:00:00'),(100507,300507,'Commented','2015-11-07 00:00:00'),(100508,300508,'Shared','2017-10-03 00:00:00'),(100509,300509,'Saved','2016-10-28 00:00:00'),(100510,300510,'Liked','2003-10-18 00:00:00'),(100511,300511,'Saved','2018-09-28 00:00:00'),(100512,300512,'Commented','2009-09-08 00:00:00'),(100513,300513,'Reacted','2018-11-07 00:00:00'),(100514,300514,'Liked','2018-11-07 00:00:00'),(100515,300515,'Saved','2017-10-03 00:00:00'),(100516,300516,'Commented','2018-10-28 00:00:00'),(100517,300517,'Liked','2018-10-18 00:00:00'),(100519,300519,'Commented','2018-09-28 00:00:00'),(100520,300520,'Saved','2009-09-08 00:00:00'),(100521,300521,'Liked','2018-11-07 00:00:00'),(100523,300523,'Reacted','2018-10-28 00:00:00'),(100524,300524,'Commented','2018-10-18 00:00:00'),(100525,300525,'Shared','2018-09-28 00:00:00'),(100526,300526,'Commented','2018-09-08 00:00:00'),(100530,300530,'Commented','2018-10-28 00:00:00');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_metrics`
--

DROP TABLE IF EXISTS `ad_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ad_metrics` (
  `Tool_id` decimal(6,0) NOT NULL,
  `Tool_name` varchar(25) NOT NULL,
  `Trial_weeks` int(11) NOT NULL,
  `Cost` int(11) NOT NULL,
  `Description` varchar(161) NOT NULL,
  `Ad_tool_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`Tool_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_metrics`
--

LOCK TABLES `ad_metrics` WRITE;
/*!40000 ALTER TABLE `ad_metrics` DISABLE KEYS */;
INSERT INTO `ad_metrics` VALUES (200600,'Performance',12,32,'The Performance chart shows the number of people who click on your ad, the number of people you reach and the overall cost of your ad.',2),(200601,'Demographics',12,35,'The Demographics chart shows how your ad performs across different ages and genders.',2),(200602,'Placement',12,20,'The Placement chart shows your ad\'s performance across different placements, such as Facebook or Instagram.',1),(200603,'Impressions',2,15,'This is defined as the number of times your ad is shown.',1),(200604,'Clicks',3,25,'This is defined as the number of times your ad is clicked on. Clicks are a way to measure customer engagement and level of interest.',1),(200605,'Conversions Metrics',3,30,'Conversions refer to actions taken on your website. In general, it refers to the desired action you want to take place.',2),(200606,'Return on Ad Spend (ROAS)',2,45,'Return on ad spend (ROAS) is defined as revenue divided by advertising spend.',3),(200607,'Lifetime Value',4,35,'Lifetime value is the projected revenue that a customer will generate during their lifetime.',3),(200608,'Split testing',2,50,'Use split tests—also known as A/B tests—to determine which ad strategies perform best and optimize your future campaigns.',3),(200609,'Attribution',4,55,'Assign conversion credit to marketing touchpoints along the consumer journey, on and off Facebook, to understand which of your ads are getting the right results.',3);
/*!40000 ALTER TABLE `ad_metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `Address_id` int(11) NOT NULL AUTO_INCREMENT,
  `Street` varchar(80) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(35) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Zipcode` int(10) unsigned zerofill DEFAULT NULL,
  `Region` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`Address_id`),
  UNIQUE KEY `Address_id_UNIQUE` (`Address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200531 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (200500,'1 Apple Pkwy','Cupertino','California','USA',0000095014,'USA'),(200501,'2 Pleasanton Dr','Pleasanton','California','USA',0000094586,'USA'),(200502,'3 Austin Blvd','Austin','Texas','USA',0000073344,'USA'),(200503,'4 New York Dr','New York','New York','USA',0000010005,'USA'),(200504,'3 Austin Blvd','Austin','Texas','USA',0000073344,'USA'),(200505,'5 Illinois Pkwy','Illinois','Chicago','USA',0000060606,'USA'),(200506,'4 New York Dr','New York','New York','USA',0000010005,'USA'),(200513,'10 Singapore Dr','Singapore','Singapore','Singapore',0000408600,'Asia'),(200516,'1 Apple Pkwy','Cupertino','California','USA',0000095014,'USA'),(200517,'2 Pleasanton Dr','Pleasanton','California','USA',0000094586,'USA'),(200518,'5 Illinois Pkwy','Illinois','Chicago','USA',0000060606,'USA'),(200519,'2 Bangalore Dr','Bangalore','Karnataka','India',0000560012,'Asia'),(200521,'2 Bangalore Dr','Bangalore','Karnataka','India',0000560012,'Asia'),(200522,'5 Illinois Pkwy','Illinois','Chicago','USA',0000060606,'USA'),(200524,'3 Austin Blvd','Austin','Texas','USA',0000073344,'USA'),(200525,'2 Bangalore Dr','Bangalore','Karnataka','India',0000560012,'Asia'),(200526,'3 Hyd Road','Hyderabad','Telangana','India',0000500008,'Asia'),(200527,'3 Hyd Road','Hyderabad','Telangana','India',0000500008,'Asia'),(200528,'3 Hyd Road','Hyderabad','Telangana','India',0000500008,'Asia'),(200529,'2 Bangalore Dr','Bangalore','Karnataka','India',0000560012,'Asia'),(200530,'3 Austin Blvd','Austin','Texas','USA',0000073344,'USA');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `advertisements` (
  `Ad_id` int(11) NOT NULL,
  `Page_id` int(11) NOT NULL,
  `No_of_clicks` int(10) unsigned zerofill DEFAULT NULL,
  `Traffic` varchar(10) DEFAULT NULL,
  `Location` varchar(65) DEFAULT NULL,
  `Audience` varchar(35) DEFAULT NULL,
  `Budget` float unsigned zerofill DEFAULT NULL,
  `Schedule` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Ad_id`),
  KEY `fk_Advertisements_Pages1_idx` (`Page_id`),
  CONSTRAINT `fk_Advertisements_Pages1` FOREIGN KEY (`Page_id`) REFERENCES `pages` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisements`
--

LOCK TABLES `advertisements` WRITE;
/*!40000 ALTER TABLE `advertisements` DISABLE KEYS */;
INSERT INTO `advertisements` VALUES (100900,800500,0000001244,NULL,'California','Children',000000018503,'Weekly'),(100901,800501,0000001924,NULL,'California','Students',000000018240,'Daily'),(100902,800502,0000001741,NULL,'Texas','Adults',000000011388,'Monthly'),(100904,800504,0000002398,NULL,'Texas','Professional',000000017647,'Monthly'),(100906,800506,0000002823,NULL,'New York','Adults',000000017699,'Weekly'),(100907,800507,0000001458,NULL,'Ontario','Families',000000017388,'Daily'),(100908,800508,0000001303,NULL,'British Columbia','Professional',000000013845,'Weekly'),(100909,800509,0000002413,NULL,'Ontario','Children',000000017011,'Monthly'),(100910,800510,0000001132,NULL,'Ontario','Students',000000013227,'Daily'),(100911,800511,0000002150,NULL,'Tokyo','Adults',000000019328,'Weekly'),(100912,800512,0000001492,NULL,'Tokyo','Professional',000000014834,'Monthly'),(100913,800513,0000002151,NULL,'Singapore','Families',000000018086,'Weekly'),(100914,800514,0000001650,NULL,'London','Adults',000000014238,'Daily'),(100915,800515,0000001572,NULL,'Dublin','Professional',000000019967,'Monthly'),(100916,800516,0000002779,NULL,'California','Students',000000013297,'Weekly'),(100917,800517,0000001375,NULL,'California','Families',000000014242,'Daily');
/*!40000 ALTER TABLE `advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `events` (
  `Evite_id` int(11) NOT NULL,
  `Invitees_Userid` int(11) DEFAULT NULL,
  `Going_Userid` int(11) DEFAULT NULL,
  `Date_time` datetime DEFAULT NULL,
  `Venue` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Evite_id`),
  KEY `fk_Events_User_basic1_idx` (`Invitees_Userid`),
  KEY `fk_Events_User_basic2_idx` (`Going_Userid`),
  CONSTRAINT `fk_Events_User_basic1` FOREIGN KEY (`Invitees_Userid`) REFERENCES `user_basic` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Events_User_basic2` FOREIGN KEY (`Going_Userid`) REFERENCES `user_basic` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (700500,100530,100524,'2018-11-07 11:11:00','Cape Town'),(700502,100528,100526,'2018-10-18 11:10:00','Moses Mabhida Stadium'),(700504,100520,100528,'2018-09-18 11:09:00','Ticketpro Dome'),(700507,100523,100507,'2018-10-18 11:10:00','FNB Stadium'),(700508,100524,100508,'2018-09-28 11:09:00','Nelson Mandela Bay Stadium'),(700509,100525,100509,'2018-09-18 11:09:00','Loftus Versfeld Stadium'),(700510,100526,100510,'2018-11-07 11:11:00','Sun City Superbowl'),(700512,100528,100512,'2018-10-18 11:10:00','Stade El Menzah'),(700514,100530,100515,'2018-09-18 11:09:00','Nissan Sports Centre'),(700515,100507,100516,'2018-11-07 11:11:00','Lingan Mingzhu Gymnasium'),(700516,100508,100517,'2018-10-28 11:10:00','National Olympic Stadium'),(700517,100509,100500,'2018-10-18 11:10:00','National Center For The Performing Arts'),(700520,100512,100503,'2018-11-07 11:11:00','National Indoor Stadium'),(700521,100513,100504,'2018-10-28 11:10:00','National Stadium'),(700524,100516,100528,'2018-09-18 11:09:00','Xincheng Gymnasium'),(700525,100517,100519,'2018-11-07 11:11:00','Changzhou Olympic Sports Centre'),(700526,100500,100520,'2018-10-28 11:10:00','Sichuan Provincial Gymnasium'),(700529,100503,100523,'2018-09-18 11:09:00','Dalian People\'s Culture Club'),(700530,100504,100524,'2018-11-07 11:11:00','Damai Center');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `friends` (
  `Friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) NOT NULL,
  `Friends_User_id` int(11) NOT NULL,
  `Start_date` date NOT NULL,
  PRIMARY KEY (`Friend_id`),
  KEY `fk_Friends_User_basic_idx` (`User_id`),
  CONSTRAINT `fk_Friends_User_basic` FOREIGN KEY (`User_id`) REFERENCES `user_basic` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=300624 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (300500,100500,100524,'2018-11-07'),(300501,100500,100525,'2017-10-03'),(300502,100500,100526,'2016-10-28'),(300503,100500,100524,'2018-10-18'),(300504,100500,100525,'2018-09-28'),(300505,100500,100526,'2018-09-08'),(300516,100503,100517,'2018-10-28'),(300517,100503,100500,'2018-10-18'),(300518,100503,100504,'2003-10-18'),(300519,100503,100504,'2018-09-28'),(300520,100504,100503,'2009-09-08'),(300521,100504,100524,'2018-10-18'),(300522,100504,100525,'2018-09-28'),(300523,100504,100526,'2018-09-08'),(300524,100505,100530,'2018-11-07'),(300525,100505,100525,'2015-11-07'),(300526,100505,100526,'2017-10-03'),(300527,100505,100530,'2016-10-28'),(300528,100506,100507,'2003-10-18'),(300529,100506,100508,'2018-09-28'),(300530,100506,100509,'2017-09-08'),(300531,100506,100510,'2018-11-07'),(300532,100506,100511,'2018-11-07'),(300533,100506,100512,'2017-10-03'),(300534,100507,100514,'2018-10-18'),(300535,100507,100515,'2018-09-28'),(300536,100507,100516,'2018-09-08'),(300537,100507,100517,'2018-11-07'),(300538,100507,100500,'2015-11-07'),(300539,100508,100504,'2017-10-03'),(300540,100508,100504,'2016-10-28'),(300541,100508,100503,'2003-10-18'),(300542,100508,100524,'2018-09-28'),(300543,100509,100525,'2009-09-08'),(300544,100509,100524,'2018-11-07'),(300545,100509,100524,'2018-11-07'),(300546,100509,100525,'2017-10-03'),(300547,100509,100526,'2018-10-18'),(300548,100510,100530,'2018-09-28'),(300549,100510,100507,'2018-09-08'),(300550,100510,100508,'2018-11-07'),(300551,100510,100509,'2015-11-07'),(300552,100511,100510,'2017-10-03'),(300553,100511,100511,'2016-10-28'),(300554,100511,100512,'2003-10-18'),(300555,100511,100514,'2018-09-28'),(300556,100512,100515,'2009-09-08'),(300557,100512,100516,'2018-11-07'),(300558,100512,100517,'2018-11-07'),(300559,100512,100500,'2017-10-03'),(300560,100513,100504,'2018-10-18'),(300561,100513,100504,'2018-09-28'),(300562,100513,100503,'2018-09-08'),(300563,100513,100524,'2018-11-07'),(300564,100514,100525,'2015-11-07'),(300565,100514,100524,'2017-10-03'),(300566,100514,100525,'2016-10-28'),(300567,100514,100526,'2003-10-18'),(300568,100515,100520,'2018-09-28'),(300569,100515,100530,'2009-09-08'),(300570,100515,100507,'2018-11-07'),(300571,100515,100508,'2018-11-07'),(300572,100516,100509,'2018-10-03'),(300573,100516,100510,'2018-10-18'),(300574,100516,100511,'2018-09-28'),(300575,100517,100512,'2018-09-08'),(300576,100517,100514,'2018-11-07'),(300577,100517,100515,'2015-11-07'),(300578,100517,100516,'2017-10-03'),(300584,100519,100524,'2018-11-07'),(300585,100519,100525,'2017-10-03'),(300586,100520,100524,'2018-10-18'),(300587,100520,100525,'2018-09-28'),(300588,100520,100526,'2018-09-08'),(300589,100520,100520,'2018-11-07'),(300590,100521,100530,'2015-11-07'),(300591,100521,100507,'2017-10-03'),(300596,100523,100512,'2018-11-07'),(300597,100523,100514,'2018-11-07'),(300598,100523,100515,'2017-10-03'),(300599,100523,100516,'2018-10-18'),(300600,100524,100517,'2018-09-28'),(300601,100524,100500,'2018-09-08'),(300602,100524,100504,'2018-11-07'),(300603,100524,100504,'2015-11-07'),(300604,100525,100503,'2017-10-03'),(300605,100525,100524,'2016-10-28'),(300606,100526,100525,'2003-10-18'),(300607,100526,100524,'2018-09-28'),(300608,100526,100525,'2009-09-08'),(300609,100526,100526,'2018-11-07'),(300610,100526,100526,'2018-11-07'),(300621,100530,100517,'2009-09-08'),(300622,100530,100500,'2018-11-07'),(300623,100530,100504,'2018-11-07');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `games` (
  `Game_id` int(11) NOT NULL,
  `User_id` int(10) unsigned zerofill DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `Paid` varchar(6) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  PRIMARY KEY (`Game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (500500,0000100524,'Wordscapes','Crossword',26,'Yes',10),(500501,0000100525,'8 Ball Pool','Simulation',46,'No',0),(500502,0000100526,'Soccer Manager 2018','Simulation',40,'Yes',70),(500504,0000100525,'Epic Winning quest','Adventure',43,'Yes',6),(500505,0000100525,'Farm Heroes Saga','Real-life',28,'No',0),(500506,0000100530,'Criminal Case','Puzzle',27,'No',0),(500507,0000100507,'Angry birds','Adventure',43,'Yes',4),(500508,0000100508,'8 Ball Pool','Simulation',23,'No',0),(500509,0000100509,'Winning Slots','Slots game',31,'Yes',4),(500510,0000100510,'Epic Winning quest','Adventure',13,'Yes',2),(500511,0000100511,'Candy Crush','Puzzle',36,'No',0),(500512,0000100512,'Dragon City','Action',21,'Yes',7),(500513,0000100514,'Criminal Case','Puzzle',10,'Yes',5),(500514,0000100515,'Farm Heroes Saga','Real-life',32,'Yes',3),(500515,0000100516,'8 Ball Pool','Simulation',48,'No',0),(500516,0000100517,'Soccer Manager 2018','Simulation',33,'No',0),(500517,0000100500,'Wordscapes','Crossword',17,'Yes',2);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace`
--

DROP TABLE IF EXISTS `marketplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `marketplace` (
  `Item_id` int(11) NOT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Quantity` int(2) unsigned zerofill DEFAULT NULL,
  `Location` varchar(65) NOT NULL,
  `Price` float unsigned zerofill DEFAULT NULL,
  `Seller_id` int(11) NOT NULL,
  `Item_description` varchar(85) DEFAULT NULL,
  PRIMARY KEY (`Item_id`),
  KEY `fk_Marketplace_User_basic1_idx` (`Seller_id`),
  CONSTRAINT `fk_Marketplace_User_basic1` FOREIGN KEY (`Seller_id`) REFERENCES `user_basic` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace`
--

LOCK TABLES `marketplace` WRITE;
/*!40000 ALTER TABLE `marketplace` DISABLE KEYS */;
INSERT INTO `marketplace` VALUES (500500,'Camera & Photo',11,'Cupertino',000000000189,100500,'Used'),(500503,'Consumer Electronics',25,'New York',000000000173,100503,'New'),(500504,'Entertainment Collectibles',24,'Austin',000000000188,100504,'New, Used, Collectible'),(500505,'Fine Art',24,'Illinois',000000000175,100505,'New, Certified refurbished, Used'),(500506,'Grocery & Gourmet Food',29,'New York',000000000200,100506,'New, Used, Certified refurbished; Unlocked'),(500507,'Health & Personal Care',23,'Toronto',000000000125,100507,'Collectible-Like New'),(500508,'Home & Garden',30,'Vancouver',000000000067,100508,'New, Certified refurbished, Used'),(500509,'Independent Design',18,'Ottawa',000000000109,100509,'Collectible-Like New'),(500510,'Industrial & Scientific',19,'Toronto',000000000119,100510,'New (includes Primary and Secondary Sale artworks)'),(500512,'Major Appliances',12,'Tokyo City',000000000145,100512,'New'),(500513,'Music',16,'Cupertino',000000000145,100513,'New, Certified refurbished, Used, Collectible'),(500514,'Musical Instruments',23,'Pleasanton',000000000050,100514,'New'),(500515,'Office Products',14,'Illinois',000000000176,100515,'New, Certified refurbished, Used'),(500516,'Outdoors',27,'Bangalore',000000000127,100516,'New, Certified refurbished, Used'),(500517,'Personal Computers',22,'London',000000000103,100517,'New, Used, Certified refurbished'),(500520,'Fine Art',23,'Pleasanton',000000000109,100520,'New'),(500521,'Grocery & Gourmet Food',25,'Austin',000000000119,100521,'New'),(500523,'Home & Garden',24,'Austin',000000000145,100523,'New, Certified refurbished, Used'),(500524,'Independent Design',29,'Illinois',000000000145,100524,'New, Used, Certified refurbished; Unlocked'),(500525,'Industrial & Scientific',23,'New York',000000000050,100525,'New, Certified refurbished, Used, Collectible'),(500528,'Music',18,'Ottawa',000000000168,100528,'New, Certified refurbished, Used'),(500530,'Office Products',13,'Austin',000000000173,100530,'New, Used, Collectible');
/*!40000 ALTER TABLE `marketplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pages` (
  `Page_id` int(11) NOT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `User_id` int(11) NOT NULL,
  `No_of_followers` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`Page_id`),
  UNIQUE KEY `Page_id_UNIQUE` (`Page_id`),
  KEY `fk_Pages_User_basic1_idx` (`User_id`),
  CONSTRAINT `fk_Pages_User_basic1` FOREIGN KEY (`User_id`) REFERENCES `user_basic` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (800500,'Cars',100524,0000076149),(800501,'Fan',100525,0000065165),(800502,'Rentals',100526,0000051474),(800504,'Celebrity',100525,0000052288),(800506,'Rentals',100530,0000075119),(800507,'Sports',100507,0000083453),(800508,'Celebrity',100508,0000054886),(800509,'Fan',100509,0000088043),(800510,'Cars',100510,0000050252),(800511,'Sports',100511,0000075704),(800512,'Houses',100512,0000042660),(800513,'Rentals',100514,0000044675),(800514,'Fan',100515,0000058054),(800515,'Sports',100516,0000087958),(800516,'Cars',100517,0000089468),(800517,'Celebrity',100500,0000084105),(800520,'Fan',100503,0000060973);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `photos` (
  `Photo_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Caption` varchar(70) DEFAULT NULL,
  `Tags` varchar(55) DEFAULT NULL,
  `Location` varchar(35) DEFAULT NULL,
  `Upload_date_time` datetime NOT NULL,
  PRIMARY KEY (`Photo_id`),
  KEY `fk_Photos_User_basic1_idx` (`User_id`),
  CONSTRAINT `fk_Photos_User_basic1` FOREIGN KEY (`User_id`) REFERENCES `user_basic` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (600500,100500,'Life goes on, with or without you.','100530','Alaska','2018-11-07 11:25:00'),(600503,100503,'If you’re honestly happy,  what people think.','100519','California','2018-09-28 11:25:00'),(600504,100504,'I didn’t choose the thug life, the thug life chose me.','100520','Colorado','2018-09-18 11:25:00'),(600505,100505,'her attitude savage but her heart is gold.','100521','Connecticut','2018-11-07 11:25:00'),(600506,100506,'Own what’s yours, or else others will try to.','100522','Delaware','2018-10-28 11:25:00'),(600507,100507,'Life goes on, with or without you.','100523','Florida','2018-10-18 11:25:00'),(600508,100508,'Don’t mistake my kindness for weakness, bitch.','100524','Georgia','2018-09-28 11:25:00'),(600509,100509,'You couldn’t handle me even if I came with instructions.','100525','Hawaii','2018-09-18 11:25:00'),(600510,100510,'Forgive, yes. Forget, never.','100526','Idaho','2018-11-07 11:25:00'),(600511,100511,'There’s a hole in my heart where you use to be.','100527','Illinois','2018-10-28 11:25:00'),(600512,100512,'I don’t need any part-time people in my life.','100528','Indiana','2018-10-18 11:25:00'),(600513,100513,'I got back with my Ex…Box 360','100529','Iowa','2018-09-28 11:25:00'),(600514,100514,'I got it from my mama.','100530','Kansas','2018-09-18 11:25:00'),(600515,100515,'Thick thighs and pretty eyes.','100507','Kentucky','2018-11-07 11:25:00'),(600516,100516,'Be a Warrior, not a Worrier.','100508','Louisiana','2018-10-28 11:25:00'),(600517,100517,'Go wild for a while.','100509','Maine','2018-10-18 11:25:00'),(600519,100519,'When you are Downie, eat a brownie.','100511','Massachusetts','2018-09-18 11:25:00'),(600520,100520,'All we have is NOW.','100512','Michigan','2018-11-07 11:25:00'),(600521,100521,'We got that Friday feeling.','100513','Minnesota','2018-10-28 11:25:00'),(600523,100523,'Disappointed but not surprised.','100515','Missouri','2018-09-28 11:25:00'),(600524,100524,'How I feel when there is no Coffee. DEPRESSO!','100516','Montana','2018-09-18 11:25:00'),(600525,100525,'50% Savage. 50% Sweetness.','100517','Nebraska','2018-11-07 11:25:00'),(600526,100526,'You can’t do epic shit with basic people.','100500','Nevada','2018-10-28 11:25:00'),(600530,100530,'Life is not a problem to be solved, but a reality to be experienced.','100504','New York','2018-11-07 11:25:00');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `posts` (
  `Post_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Action_performed` varchar(15) DEFAULT NULL,
  `Privacy_level` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Post_id`),
  KEY `fk_Posts_User_basic1_idx` (`User_id`),
  CONSTRAINT `fk_Posts_User_basic1` FOREIGN KEY (`User_id`) REFERENCES `user_basic` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (400600,100500,'Shared','Public'),(400606,100506,'Created','Private'),(400607,100507,'Created','Public'),(400608,100508,'Commented','Public'),(400609,100509,'Shared','Only Me'),(400610,100510,'Shared','Only Me'),(400611,100511,'Created','Private'),(400612,100512,'Saved','Public'),(400613,100512,'Created','Private'),(400614,100512,'Shared','Private'),(400615,100515,'Created','Public'),(400616,100515,'Created','Public'),(400619,100519,'Created','Public'),(400620,100520,'Commented','Private'),(400621,100520,'Commented','Public'),(400622,100524,'Created','Public'),(400623,100524,'Commented','Private'),(400624,100525,'Shared','Public'),(400627,100530,'Shared','Public'),(400629,100528,'Shared','Only Me');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_table`
--

DROP TABLE IF EXISTS `sales_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sales_table` (
  `Item_id` int(11) NOT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Price` float unsigned zerofill DEFAULT NULL,
  `Quantity` int(2) unsigned zerofill DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_table`
--

LOCK TABLES `sales_table` WRITE;
/*!40000 ALTER TABLE `sales_table` DISABLE KEYS */;
INSERT INTO `sales_table` VALUES (500500,'Camera & Photo',000000000189,11),(500501,'Cell Phones & Accessories',000000000168,30),(500502,'Collectible Coins',000000000198,23),(500503,'Consumer Electronics',000000000173,25),(500504,'Entertainment Collectibles',000000000188,24),(500505,'Fine Art',000000000175,24),(500506,'Grocery & Gourmet Food',000000000200,29),(500507,'Health & Personal Care',000000000125,23),(500508,'Home & Garden',000000000067,30),(500509,'Independent Design',000000000109,18),(500510,'Industrial & Scientific',000000000119,19),(500512,'Major Appliances',000000000145,12),(500513,'Music',000000000145,16),(500514,'Musical Instruments',000000000050,23),(500515,'Office Products',000000000176,14),(500516,'Outdoors',000000000127,27),(500517,'Personal Computers',000000000103,22),(500518,'Pet Supplies',000000000163,26),(500520,'Fine Art',000000000109,23),(500521,'Grocery & Gourmet Food',000000000119,25),(500522,'Health & Personal Care',000000000175,24),(500523,'Home & Garden',000000000145,24),(500524,'Independent Design',000000000145,29),(500525,'Industrial & Scientific',000000000050,23),(500527,'Major Appliances',000000000127,18),(500528,'Music',000000000168,18),(500529,'Musical Instruments',000000000198,19),(500530,'Office Products',000000000173,13);
/*!40000 ALTER TABLE `sales_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_about`
--

DROP TABLE IF EXISTS `user_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_about` (
  `User_id` int(11) NOT NULL,
  `Occupation` varchar(40) DEFAULT NULL,
  `Education_level` varchar(50) DEFAULT NULL,
  `Lives_in` varchar(45) DEFAULT NULL,
  `Address_id` int(11) DEFAULT NULL,
  `Date_of_joining` date DEFAULT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `User_id_UNIQUE` (`User_id`),
  KEY `fk_User_about_Address1_idx` (`Address_id`),
  CONSTRAINT `fk_User_about_Address1` FOREIGN KEY (`Address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_User_about_User_basic1` FOREIGN KEY (`User_id`) REFERENCES `user_basic` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_about`
--

LOCK TABLES `user_about` WRITE;
/*!40000 ALTER TABLE `user_about` DISABLE KEYS */;
INSERT INTO `user_about` VALUES (100500,'Accountant','Undergraduate','California',200500,'2010-01-01'),(100503,'Engineer','Graduate','New York',200503,'2010-01-05'),(100504,'Teacher','Undergraduate','Texas',200504,'2010-01-05'),(100505,'Accountant','Undergraduate','Chicago',200505,'2010-01-05'),(100506,'Journalist','Graduate','New York',200506,'2010-01-20'),(100513,'Hairdresser','High School','Singapore',200513,'2010-02-15'),(100516,'Lawyer','Professional Degree','California',200516,'2008-03-10'),(100517,'Consultant','Undergraduate','California',200517,'2007-03-15'),(100519,'Teacher','Undergraduate','India',200519,'2009-03-21'),(100521,'Doctor','Professional Degree','India',200521,'2009-03-25'),(100524,'Broker','High School','Texas',200524,'2008-04-04'),(100525,'Engineer','Graduate','India',200525,'2009-04-10'),(100526,'Software Developer','Graduate','India',200526,'2009-04-10'),(100528,'Engineer','Graduate','India',200528,'2010-05-15'),(100530,'Plumber','High School','Texas',200530,'2008-12-12');
/*!40000 ALTER TABLE `user_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_basic`
--

DROP TABLE IF EXISTS `user_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_basic` (
  `User_id` int(11) NOT NULL,
  `First_name` varchar(45) DEFAULT NULL,
  `Last_name` varchar(60) DEFAULT NULL,
  `Password` varchar(25) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Mobile_no` varchar(20) DEFAULT NULL,
  `Birth_date` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Mobile_no_UNIQUE` (`Mobile_no`),
  UNIQUE KEY `Password_UNIQUE` (`Password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_basic`
--

LOCK TABLES `user_basic` WRITE;
/*!40000 ALTER TABLE `user_basic` DISABLE KEYS */;
INSERT INTO `user_basic` VALUES (100500,'Aaron','Abraham','Aaron123','aaron.abraham@xyz.com','100-100-100','1990-01-01','Male'),(100503,'Brinda','Lakshman','Brinda234','brinda234@abc.com','123-111-100','1990-01-10','Female'),(100504,'Bryan','Custock','Bryan456','bryan456@abc.com','123-100-111','1990-01-10','Male'),(100505,'Candy','Antony','Candy456','candy456@xyz.com','123-100-100','1991-01-15','Female'),(100506,'Christian','Bernard','Christian678','christian678@xyz.com','100-111-123','1992-01-20','Male'),(100507,'Curt','Morgan','Curt678','curt678@abc.com','111-100-123','1992-01-30','Male'),(100508,'David','Sheperd','Dave123','dave123@xyz.com','100-123-111','1991-02-01','Male'),(100509,'Dolphia','Nandi','Dolphia234','dolphia@abc.com','111-123-123','1991-02-10','Female'),(100510,'Dwight','Eisenhower','Dwight456','dwight456@abc.com','100-110-100','1993-02-15','Male'),(100511,'Eleanor','Phoebe','Eleanor123','eleanor123@xyz.com','110-110-110','1990-03-01','Female'),(100512,'Ethan','Bartizal','Ethan234','ethan234@abc.com','110-100-110','1991-03-05','Male'),(100513,'Fania','Wasim','Fania345','fania345@tuv.com','110-110-100','1995-03-04','Female'),(100514,'Fred','Weasley','Fred123','fred123@xyz.com','200-200-200','1991-03-05','Male'),(100515,'George','Weasley','George123','george123@xyz.com','200-210-200','1991-03-05','Male'),(100516,'Harry','Potter','Harry456','harry456@abc.com','200-200-210','1992-07-11','Male'),(100517,'Hermione','Granger','Hermione123','hermione123@abc.com','200-210-210','1992-03-15','Female'),(100519,'Jaya','Devi','Jaya456','jaya456@xyz.com','211-211-211','1989-07-02','Female'),(100520,'James','Potter','James456','james456@abc.com','211-210-211','1975-04-20','Male'),(100521,'Kavya','Patel','Kavya123','kavya123@xyz.com','211-210-210','1988-05-11','Female'),(100523,'Millicent','Bulstrode','Milli123','milli123@abc.com','222-200-200','1992-03-21','Female'),(100524,'Minerva','McConogall','Minerva345','minerva345@xyz.com','222-200-210','1980-05-10','Female'),(100525,'Pansy','Parkinson','Pansy234','pansy234@xyz.com','222-210-210','1990-01-02','Female'),(100526,'Padma','Patil','Padma456','padma456@xyz.com','222-222-222','1991-03-03','Female'),(100528,'Peter','Pettigrew','Peter567','peter567@xyz.com','222-210-222','1982-01-01','Male'),(100530,'Stan','Shunpike','Stan789','stan789@abc.com','200-222-222','1994-06-02','Male');
/*!40000 ALTER TABLE `user_basic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-10 22:08:38
