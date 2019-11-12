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
INSERT INTO `estimation` VALUES ('E001','J001','W001',50),('E002','J002','W001',100),('E003','J008','W002',100),('E004','J011','W002',2750),('E005','J009','W001',710),('E006','J004','W002',800);
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
INSERT INTO `estimationDetail` VALUES ('E001','IC001',1,50),('E002','IC002',1,100),('E003','IC001',2,50),('E004','IC001',45,50),('E004','IC002',5,100),('E005','IC001',4,50),('E005','IC002',5,100),('E005','IC003',5,2),('E006','IC001',4,50),('E006','IC002',6,100);
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
INSERT INTO `fnrCustomer` VALUES ('FNRC001','ggg','hhhh',22222),('FNRC002','ddd','fff',66666),('FNRC003','ggghhh','hhhjjjj',55555),('FNRC004','Thilina','Homagama',714341811);
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
INSERT INTO `fnrOrder` VALUES ('FNROI001','2019-10-16','J001',150,50),('FNROI002','2019-10-16','J011',2773,100),('FNROI003','2019-10-16','J001',150,150),('FNROI004','2019-10-16','J002',103,13),('FNROI005','2019-10-16','J009',766,523);
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
INSERT INTO `frCustomer` VALUES ('FRC001','Kamal','Panadura',754998923),('FRC002','Kumara','Pitipana',714547838),('FRC003','Gihan','Pannipitiya',714423556);
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
INSERT INTO `frOrder` VALUES ('OI001','2019-10-15','FRC001'),('OI002','2019-10-15','FRC001'),('OI003','2019-10-16','FRC001'),('OI004','2019-10-16','FRC001'),('OI005','2019-10-16','FRC001');
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
INSERT INTO `item` VALUES ('IC001','aaaaa',50,45),('IC002','bbbbb',100,33),('IC003','ccccc',2,295);
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
INSERT INTO `job` VALUES ('J001','FNRC001','ddddddth dsfghdhgsd'),('J002','FNRC001','ghgdh'),('J004','FNRC002','fgxjgh'),('J008','FNRC001','hh'),('J009','FNRC001','eeeeeeeee'),('J010','FNRC002','uyturyty'),('J011','FNRC003','dfgdfghdshfg');
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
INSERT INTO `orderDetail` VALUES ('OI001','IC001',50,3),('OI002','IC001',50,1),('OI002','IC002',100,3),('OI002','IC003',2,4),('OI003','IC002',100,3),('OI004','IC002',100,3),('OI004','IC003',2,3);
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
INSERT INTO `register` VALUES ('Admin','1','1'),('Employee','2','2'),('Employee','Silva','456'),('Admin','Thilina','1234');
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
INSERT INTO `worker` VALUES ('W001','oo','oo',44,44),('W002','kk','ll',55,55);
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

-- Dump completed on 2019-10-16 21:47:13
