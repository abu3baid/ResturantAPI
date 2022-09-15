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
-- Table structure for table `customerorder`
--

DROP TABLE IF EXISTS `customerorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerorder` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MealId` int NOT NULL,
  `CustomerId` int NOT NULL,
  `OrderQuantity` int NOT NULL DEFAULT '0',
  `Archived` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `OrderId_UNIQUE` (`Id`),
  KEY `MealId_idx` (`MealId`),
  KEY `CustomerId_idx` (`CustomerId`),
  CONSTRAINT `CustomerId` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`),
  CONSTRAINT `MealId` FOREIGN KEY (`MealId`) REFERENCES `resturantmenu` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerorder`
--

LOCK TABLES `customerorder` WRITE;
/*!40000 ALTER TABLE `customerorder` DISABLE KEYS */;
INSERT INTO `customerorder` VALUES (1,1,1,3,0),(2,2,2,1,0),(3,1,2,1,0),(4,1,3,1,0),(5,1,4,1,0),(6,1,5,1,0),(7,2,5,1,0),(8,2,6,4,0),(9,3,6,3,0),(10,3,7,2,0),(11,4,7,2,0),(12,5,7,1,0),(13,6,7,1,0),(14,7,7,1,0),(15,8,7,1,0),(16,9,7,3,0),(17,9,8,2,0),(18,9,9,3,0),(20,9,5,2,0),(21,9,5,1,0),(22,1,2,1,0),(23,1,6,2,1),(24,1,9,1,0),(25,1,4,6,0);
/*!40000 ALTER TABLE `customerorder` ENABLE KEYS */;
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
