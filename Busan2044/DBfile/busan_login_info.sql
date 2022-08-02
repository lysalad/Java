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
-- Table structure for table `login_info`
--

DROP TABLE IF EXISTS `login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_info` (
  `userNum` int NOT NULL AUTO_INCREMENT,
  `id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `birthDay` varchar(45) NOT NULL,
  `phoneNum` varchar(45) NOT NULL,
  `stat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userNum`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `userNum_UNIQUE` (`userNum`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_info`
--

LOCK TABLES `login_info` WRITE;
/*!40000 ALTER TABLE `login_info` DISABLE KEYS */;
INSERT INTO `login_info` VALUES (2,'gggg','11111','김진성','970244','010-5554-5555',NULL),(3,'yyyy','1357','이예슬','930129','010-5666-7744',NULL),(4,'jinsung','1234','진승이','970520','010-8444-4444',NULL),(5,'wani','1234','김동동','931130','010-8334-4333',NULL),(6,'doony123','79spfh','이예슬','930129','010-4949-6305',NULL),(7,'아어라이','1234','김동딩','971212','010-5878-7777',NULL),(8,'woww','qqqq','김두준','930231','010-7878-7878',NULL),(9,'while','qwer','김동두','931202','010-8885-5558',NULL),(10,'myname','qwer','김진송','970521','010-8787-9999',NULL),(11,'박so현','ERER123','박소현','960101','010-4815-4836',NULL),(12,'박so현ㅋ','12345678','박소현','960101','010-4815-4836',NULL),(13,'qwer','1234','김','991223','010-1312-1232',NULL),(14,'qwert','qqqq','김동두','940220','010-8777-1541',NULL),(15,'magic22x','mmm','와','999999','010-3213-1232',NULL),(16,'Inha123','Inha123','전인하','980301','010-1111-1111',NULL),(17,'깜찍예슬구슬','kys123','이예슬','931111','010-0000-0000',NULL),(18,'김진성이','1234','김진성','940204','010-8221-1817',NULL),(19,'kiki','k1234','키키','150820','010-1234-5678',NULL),(20,'yoyobiii','yoyobiii','장영빈','970310','010-3333-2222',NULL),(21,'yeriming','yeriming','장예림','971202','010-0000-0000',NULL),(22,'kch9253','0000','ㅎㅇ','000000','010-1234-1234',NULL),(23,'test22','1234','다다다','940526','010-1111-1111',NULL),(24,'jinho','jinho','진호','921203','010-2027-4039',NULL),(25,'running','xkfwn','최탈주','001020','010-0285-5858',NULL),(26,'김정욱123','131322','김정욱','970830','010-9676-3790',NULL);
/*!40000 ALTER TABLE `login_info` ENABLE KEYS */;
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
