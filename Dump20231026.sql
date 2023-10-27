-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: bookingdb
-- ------------------------------------------------------
-- Server version	5.7.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `bookingNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotelNo` int(10) unsigned DEFAULT NULL,
  `guestNo` int(10) unsigned DEFAULT NULL,
  `dateFrom` date NOT NULL,
  `dateTo` date DEFAULT NULL,
  `roomType` char(20) DEFAULT NULL,
  `roomNo` int(10) unsigned DEFAULT NULL,
  `last_mod_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bookingNo`),
  KEY `hotelNo` (`hotelNo`),
  KEY `guestNo` (`guestNo`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`hotelNo`) REFERENCES `hotel` (`hotelNo`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`guestNo`) REFERENCES `guest` (`guestNo`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,1,'2023-01-05','2023-01-10',NULL,101,'2023-04-26 02:38:11'),(2,1,2,'2023-01-25','2023-01-04',NULL,102,'2023-04-26 02:38:11'),(3,1,3,'2023-02-01','2023-02-10',NULL,103,'2023-04-26 02:38:11'),(4,1,4,'2023-02-05','2023-02-20',NULL,104,'2023-04-26 02:38:11'),(5,2,5,'2023-01-05','2023-01-07',NULL,105,'2023-04-26 02:38:11'),(6,2,6,'2023-01-22','2023-01-29',NULL,106,'2023-04-26 02:38:11'),(7,3,7,'2023-02-08','2023-02-18',NULL,109,'2023-04-26 02:38:11'),(8,3,8,'2023-03-01','2023-03-10',NULL,101,'2023-04-26 02:38:11'),(9,4,9,'2023-03-05','2023-03-17',NULL,103,'2023-04-26 02:38:11'),(10,4,10,'2023-01-11','2023-01-18',NULL,108,'2023-04-26 02:38:11'),(11,5,11,'2023-01-11','2023-01-29',NULL,102,'2023-04-26 02:38:11'),(12,5,12,'2023-03-10','2023-03-18',NULL,104,'2023-04-26 02:38:11'),(13,3,2,'2023-04-21','2023-04-23','Double',0,'2023-04-26 16:57:16'),(14,3,2,'2023-04-21','2023-04-23','Double',0,'2023-04-26 16:59:18'),(15,3,2,'2023-04-21','2023-04-23','Double',0,'2023-04-26 17:00:16'),(16,3,2,'2023-04-21','2023-04-23','Double',0,'2023-04-26 17:00:42'),(17,3,2,'2023-04-21','2023-04-23','Double',0,'2023-04-26 17:00:54'),(18,3,2,'2023-04-21','2023-04-23','Double',0,'2023-04-26 17:01:00'),(19,1,2,'2023-04-21','2023-04-23','single',0,'2023-04-26 17:03:03'),(20,1,2,'2023-04-21','2023-04-23','single',0,'2023-04-26 17:27:38'),(21,1,2,'2023-04-21','2023-04-23','single',0,'2023-04-26 17:30:42'),(22,1,2,'2023-04-21','2023-04-23','single',0,'2023-04-26 17:30:47'),(23,1,2,'2023-04-21','2023-04-23','single',0,'2023-04-26 17:32:53'),(24,1,2,'2023-04-21','2023-04-23','single',0,'2023-04-26 17:33:03'),(25,1,2,'2023-04-21','2023-04-23','single',0,'2023-04-26 17:33:24'),(30,1,3,'2023-04-29','2023-04-30','single',0,'2023-05-02 16:44:21'),(31,1,3,'2023-04-29','2023-04-30','single',0,'2023-05-02 16:44:40'),(90,1,1,'2023-04-28','2023-05-03','Single',NULL,'2023-05-03 00:34:42'),(91,1,3,'2023-04-29','2023-04-30','single',0,'2023-05-11 15:49:10');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `guestNo` int(10) unsigned NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`guestNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,'John Doe','Los Angeles'),(2,'Mary Jane','New York'),(3,'Hank Kim','London'),(4,'Bob Jones','London'),(5,'Paul John','New York'),(6,'Ann Smith','New York'),(7,'James Mann','London'),(8,'Mary Mann','London'),(9,'Jim Jones','New York'),(10,'Tom Jones','Los Angeles'),(11,'Jimmy Johnson','Boston'),(12,'Harry Coleman','Dallas'),(13,'Bob James','Los Angeles'),(18,'John Mary','London'),(21,'Jeff Bridges','London'),(23,'Larry Cohen','New York');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestmessage`
--

DROP TABLE IF EXISTS `guestmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestmessage` (
  `messageNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `messageTS` datetime DEFAULT CURRENT_TIMESTAMP,
  `bookingNo` int(10) unsigned NOT NULL,
  `guestNo` decimal(10,0) DEFAULT NULL,
  `hotelNo` decimal(10,0) DEFAULT NULL,
  `roomtype` varchar(20) DEFAULT NULL,
  `roomprice` decimal(10,2) DEFAULT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`messageNo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestmessage`
--

LOCK TABLES `guestmessage` WRITE;
/*!40000 ALTER TABLE `guestmessage` DISABLE KEYS */;
INSERT INTO `guestmessage` VALUES (1,'2023-05-02 12:44:21',30,3,1,'single',NULL,'2023-04-29','2023-04-30','Dear Hank Kim, Your booking# 30 on 2023-04-29 up to 2023-04-30 has been granted. Hilton Hotel look forward to your pleasent stay '),(2,'2023-05-02 12:44:40',31,3,1,'single',NULL,'2023-04-29','2023-04-30','Dear Hank Kim, Your booking# 31 on 2023-04-29 up to 2023-04-30 has been granted. Hilton Hotel look forward to your pleasent stay '),(3,'2023-05-02 12:46:14',90,1,1,'single',NULL,'2023-05-10','2023-05-15','Dear John Doe, Your booking# 90 on 2023-05-10 up to 2023-05-15 has been granted. Hilton Hotel look forward to your pleasent stay '),(4,'2023-05-02 20:34:42',90,1,1,'Single',NULL,'2023-04-28','2023-05-03','Dear John Doe, Your booking# 90 on 2023-04-28 up to 2023-05-03 has been updated. Hilton Hotel look forward to your pleasent stay '),(5,'2023-05-11 11:49:10',91,3,1,'single',NULL,'2023-04-29','2023-04-30','Dear Hank Kim, Your booking# 91 on 2023-04-29 up to 2023-04-30 has been granted. Hilton Hotel look forward to your pleasent stay ');
/*!40000 ALTER TABLE `guestmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotelNo` int(10) unsigned NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` char(200) DEFAULT NULL,
  PRIMARY KEY (`hotelNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'Hilton Hotel','123 Main St','Jersey City, NJ'),(2,'Holiday Inn','50 3rd Ave.','New York, NY'),(3,'Governor Hotel','8243 Berkley Sq.','London SE1 5DR, UK'),(4,'New World Hotel','30 East River Rd','New York, NY'),(5,'BMCC Hotel','199 Chambers Street','New York, NY');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `roomNo` int(10) unsigned NOT NULL,
  `hotelNo` int(10) unsigned NOT NULL,
  `type` char(20) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`roomNo`,`hotelNo`),
  KEY `hotelNo` (`hotelNo`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`hotelNo`) REFERENCES `hotel` (`hotelNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (101,1,'Family',200),(101,2,'Family',80),(101,3,'Single',35),(101,4,'Single',30),(101,5,'Double',38),(102,1,'Family',200),(102,2,'Family',85),(102,3,'Double',115),(102,4,'Single',30),(102,5,'Double',38),(103,1,'Single',100),(103,2,'Family',80),(103,3,'Double',115),(103,4,'Single',30),(103,5,'Single',32),(104,1,'Single',100),(104,3,'Family',150),(104,4,'Double',90),(104,5,'Single',32),(105,4,'Double',90),(106,4,'Double',90),(107,4,'Double',90),(108,4,'Family',110),(109,4,'Family',110);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-26 20:53:52
