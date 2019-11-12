-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: ASSMS
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estimation`
--

DROP TABLE IF EXISTS `estimation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimation` (
  `estimationNo` varchar(10) NOT NULL,
  `jobId` varchar(10) DEFAULT NULL,
  `workerId` varchar(10) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`estimationNo`),
  KEY `jobId` (`jobId`),
  CONSTRAINT `estimation_ibfk_1` FOREIGN KEY (`jobId`) REFERENCES `job` (`jobId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimation`
--

LOCK TABLES `estimation` WRITE;
/*!40000 ALTER TABLE `estimation` DISABLE KEYS */;
INSERT INTO `estimation` VALUES ('E001','J001','W001',89250),('E002','J002','W001',150),('E003','J003','W003',51000);
/*!40000 ALTER TABLE `estimation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimationDetail`
--

DROP TABLE IF EXISTS `estimationDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimationDetail` (
  `estimationNo` varchar(10) NOT NULL,
  `itemCode` varchar(10) NOT NULL,
  `eiQuantity` int(10) DEFAULT NULL,
  `unitPrice` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`estimationNo`,`itemCode`),
  KEY `itemCode` (`itemCode`),
  CONSTRAINT `estimationDetail_ibfk_1` FOREIGN KEY (`estimationNo`) REFERENCES `estimation` (`estimationNo`),
  CONSTRAINT `estimationDetail_ibfk_2` FOREIGN KEY (`itemCode`) REFERENCES `item` (`itemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimationDetail`
--

LOCK TABLES `estimationDetail` WRITE;
/*!40000 ALTER TABLE `estimationDetail` DISABLE KEYS */;
INSERT INTO `estimationDetail` VALUES ('E001','IC001',45,50),('E001','IC002',56,1500),('E002','IC001',3,50),('E003','IC002',34,1500);
/*!40000 ALTER TABLE `estimationDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnrCustomer`
--

DROP TABLE IF EXISTS `fnrCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnrCustomer` (
  `customerId` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `contactNo` int(10) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnrCustomer`
--

LOCK TABLES `fnrCustomer` WRITE;
/*!40000 ALTER TABLE `fnrCustomer` DISABLE KEYS */;
INSERT INTO `fnrCustomer` VALUES ('FNRC001','Nimal','Homagama',774866985),('FNRC002','Thushara','Piliyanddala',768965562),('FNRC003','Sumanaweera','Balangoda',777454545),('FNRC004','Rajapaksha','Dehiwala',111111111);
/*!40000 ALTER TABLE `fnrCustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnrOrder`
--

DROP TABLE IF EXISTS `fnrOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnrOrder` (
  `orderId` varchar(10) NOT NULL,
  `date` date DEFAULT NULL,
  `jobId` varchar(10) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `advance` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `jobId` (`jobId`),
  CONSTRAINT `fnrOrder_ibfk_1` FOREIGN KEY (`jobId`) REFERENCES `job` (`jobId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnrOrder`
--

LOCK TABLES `fnrOrder` WRITE;
/*!40000 ALTER TABLE `fnrOrder` DISABLE KEYS */;
INSERT INTO `fnrOrder` VALUES ('FNROI001','2019-10-17','J001',93800,50000);
/*!40000 ALTER TABLE `fnrOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frCustomer`
--

DROP TABLE IF EXISTS `frCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frCustomer` (
  `customerId` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `contactNo` int(10) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frCustomer`
--

LOCK TABLES `frCustomer` WRITE;
/*!40000 ALTER TABLE `frCustomer` DISABLE KEYS */;
INSERT INTO `frCustomer` VALUES ('FRC001','Thilina','Homagama',714341811),('FRC002','Kumara','Maravila',774546811),('FRC003','Sampath','Delkadha',77745899),('FRC004','Thushara','Gampaha',788892530),('FRC005','Test','Test',10000);
/*!40000 ALTER TABLE `frCustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frOrder`
--

DROP TABLE IF EXISTS `frOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frOrder` (
  `orderId` varchar(10) NOT NULL,
  `date` date DEFAULT NULL,
  `frCustomerId` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `frCustomerId` (`frCustomerId`),
  CONSTRAINT `frOrder_ibfk_1` FOREIGN KEY (`frCustomerId`) REFERENCES `frCustomer` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frOrder`
--

LOCK TABLES `frOrder` WRITE;
/*!40000 ALTER TABLE `frOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `frOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `itemCode` varchar(10) NOT NULL,
  `description` varchar(20) DEFAULT NULL,
  `unitPrice` decimal(10,0) DEFAULT NULL,
  `qtyOnHand` int(10) DEFAULT NULL,
  PRIMARY KEY (`itemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('IC001','Aaaaaaaa',50,55),('IC002','Bbbbbbb',1500,94),('IC003','Ccccccc',400,500),('IC004','Test',1500,100);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `jobId` varchar(10) NOT NULL,
  `customerId` varchar(10) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`jobId`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `fnrCustomer` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES ('J001','FNRC001','rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr'),('J002','FNRC002','fgfdghdshsg'),('J003','FNRC004','fghfshsdghsgdh'),('J004','FNRC003','fghfshsdghsgdhfgsbfvcbxc');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobDetail`
--

DROP TABLE IF EXISTS `jobDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobDetail` (
  `jobId` varchar(10) NOT NULL,
  `workerId` varchar(10) NOT NULL,
  PRIMARY KEY (`jobId`,`workerId`),
  KEY `workerId` (`workerId`),
  CONSTRAINT `jobDetail_ibfk_1` FOREIGN KEY (`jobId`) REFERENCES `job` (`jobId`),
  CONSTRAINT `jobDetail_ibfk_2` FOREIGN KEY (`workerId`) REFERENCES `worker` (`workerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobDetail`
--

LOCK TABLES `jobDetail` WRITE;
/*!40000 ALTER TABLE `jobDetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderDetail`
--

DROP TABLE IF EXISTS `orderDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderDetail` (
  `orderId` varchar(10) NOT NULL,
  `itemCode` varchar(10) NOT NULL,
  `unitPrice` decimal(10,0) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  PRIMARY KEY (`orderId`,`itemCode`),
  KEY `itemCode` (`itemCode`),
  CONSTRAINT `orderDetail_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `frOrder` (`orderId`),
  CONSTRAINT `orderDetail_ibfk_2` FOREIGN KEY (`itemCode`) REFERENCES `item` (`itemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderDetail`
--

LOCK TABLES `orderDetail` WRITE;
/*!40000 ALTER TABLE `orderDetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `userType` varchar(20) DEFAULT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('Admin','1','1'),('Employee','2','2'),('Admin','Alisa','alisa'),('Employee','Dhammika','dhammika');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker` (
  `workerId` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contactNo` int(10) DEFAULT NULL,
  `salary` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`workerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES ('','Jayantha','Pitipana',714342815,25000),('W001','Thilina','Kottawa',714569236,50000),('W002','Prasadh','Meerigama',714243568,45000),('W003','Kamal','Maharagama',785552452,19000);
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-17 10:14:49
