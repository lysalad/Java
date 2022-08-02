CREATE DATABASE  IF NOT EXISTS `busan` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `busan`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: busan
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `savehere`
--

DROP TABLE IF EXISTS `savehere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savehere` (
  `num` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) DEFAULT NULL,
  `storyPath1` varchar(500) NOT NULL,
  `storyPath2` varchar(500) DEFAULT NULL,
  `dayNight` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `userStat` varchar(45) DEFAULT NULL,
  `party` varchar(45) DEFAULT NULL,
  `item` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`num`),
  UNIQUE KEY `userId_UNIQUE` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savehere`
--

LOCK TABLES `savehere` WRITE;
/*!40000 ALTER TABLE `savehere` DISABLE KEYS */;
INSERT INTO `savehere` VALUES (1,'와니','[1, 4, 5]','1-2-4-5',NULL,NULL,NULL,NULL,NULL),(2,'magic22x','[2, 5, 7, 8]','[1, 3, 6, 7]',NULL,NULL,'5/5/3/0/0',NULL,NULL),(3,'gggg','[1, 3, 6, 8]','[1, 5, 9, 12]',NULL,NULL,NULL,NULL,NULL),(4,'yyyy','2-7-4-7','[1, 5, 9, 13]',NULL,NULL,NULL,NULL,NULL),(5,'jinsung','3-4-5-6',NULL,NULL,NULL,NULL,NULL,NULL),(6,'wani','4-9-8-6',NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,'1-3-4-6',NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,'1, 2, 3',NULL,NULL,NULL,NULL,NULL,NULL),(14,'rrrr','[2, 5, 7, 16, 18, 23, 26]','1-7-10-13',NULL,NULL,NULL,NULL,NULL),(23,'eeee','[3, 5, 7, 16, 18, 23, 26]','[2, 5, 7, 16, 18, 23, 26]',NULL,NULL,NULL,NULL,NULL),(25,'qwer','[1, 3, 2, 3, 4, 5]',NULL,NULL,NULL,NULL,NULL,NULL),(31,'rewrwqrewqrwqrq','[1, 3, 2, 3, 4, 5]',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `savehere` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-02 14:59:58
