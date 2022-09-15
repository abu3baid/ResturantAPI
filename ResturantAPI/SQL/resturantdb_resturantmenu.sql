-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: resturantdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `resturantmenu`
--

DROP TABLE IF EXISTS `resturantmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resturantmenu` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MealName` varchar(255) NOT NULL DEFAULT '',
  `PriceInNis` decimal(10,2) NOT NULL DEFAULT '0.00',
  `PriceInUsd` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Quantity` int NOT NULL DEFAULT '0',
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Archived` tinyint NOT NULL DEFAULT '0',
  `ResturantId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ResturantId_idx` (`ResturantId`),
  CONSTRAINT `ResturantId` FOREIGN KEY (`ResturantId`) REFERENCES `resturant` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resturantmenu`
--

LOCK TABLES `resturantmenu` WRITE;
/*!40000 ALTER TABLE `resturantmenu` DISABLE KEYS */;
INSERT INTO `resturantmenu` VALUES (1,'Pizza',30.00,8.57,100,'2022-09-13 22:12:58','2022-09-14 16:43:45',0,2),(2,'Shawarma',20.00,5.71,13,'2022-09-13 22:17:36','2022-09-14 01:38:45',0,1),(3,'Cheese Pizza',30.00,8.57,65,'2022-09-14 01:40:37','2022-09-14 01:40:37',0,1),(4,'Chicken Pizza',20.00,5.71,65,'2022-09-14 01:40:48','2022-09-14 01:40:48',0,1),(5,'Beef Pizza',10.00,2.86,65,'2022-09-14 01:41:06','2022-09-14 01:41:06',0,1),(6,'Cheese Manageesh',7.00,2.00,34,'2022-09-14 01:41:55','2022-09-14 01:41:55',0,2),(7,'Chicken Manageesh',9.00,2.57,34,'2022-09-14 01:42:03','2022-09-14 01:42:03',0,2),(8,'Beef Manageesh',6.00,1.71,34,'2022-09-14 01:42:10','2022-09-14 01:42:10',0,2),(9,'Beef Taboon',21.00,6.00,34,'2022-09-14 01:42:38','2022-09-14 01:42:38',0,3),(10,'Chicken Taboon',11.00,3.14,0,'2022-09-14 01:42:48','2022-09-14 13:53:03',0,3),(11,'Cheese Taboon',10.00,2.86,34,'2022-09-14 01:42:54','2022-09-14 01:42:54',0,3),(12,'Chicken Mandi',40.00,11.43,34,'2022-09-14 01:43:36','2022-09-14 01:43:36',0,4),(13,'Beef Mandi',40.00,11.43,34,'2022-09-14 01:43:43','2022-09-14 01:43:43',0,4);
/*!40000 ALTER TABLE `resturantmenu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-16  2:43:11
