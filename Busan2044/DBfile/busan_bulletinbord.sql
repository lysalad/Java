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
-- Table structure for table `bulletinbord`
--

DROP TABLE IF EXISTS `bulletinbord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulletinbord` (
  `num` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) DEFAULT NULL,
  `achv` varchar(45) DEFAULT NULL,
  `text` varchar(140) DEFAULT NULL,
  `star` int DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulletinbord`
--

LOCK TABLES `bulletinbord` WRITE;
/*!40000 ALTER TABLE `bulletinbord` DISABLE KEYS */;
INSERT INTO `bulletinbord` VALUES (0,'yyy','굿!','너무 재밌어요~~!!!!!',5),(1,'doony123','굿!','너무 재밌어요~~!!!!!',3),(2,'wani','개발자는 코딩코딩하고 웁니다','게임계를 뒤집어놓으셨다~~!!!!!',5),(3,'wani','개발자는 코딩 웁니다','뒤집어놓으셨다~~!!!!!',3),(16,'wani','개발자는  웁니다','뒤집어놓으셨다~~!!!!!',5),(54,'gggg','업적','별점 높게 추가해주세요!!',5),(61,'gggg','업적','게임이 너무 사혼의구슬조각인듯; 1점 드릴게영 ㅎㅎㅎㅎㅎ',1),(62,'gggg','업적','썼던사람이 게시판 도배 가능',2),(63,'jinsung','굿!','미안하다 이거 보여주려고 어그로끌었다..',5),(64,'jinsung','굿!','나루토 사스케 싸움수준 ㄹㅇ실화냐? 진짜 세계관최강자들의 싸움이다.. ',5),(66,'doony123','굿!','그찐따같던 나루토가 맞나? 진짜 나루토는 전설이다..',4),(67,'박so현','굿!','진짜옛날에 맨날나루토봘는데 왕같은존재인 호카게 되서 세계최강 전설적인 영웅이된나루토보면',5),(68,'박so현','굿!','진짜내가다 감격스럽고 나루토 노래부터 명장면까지 가슴울리는장면들이 뇌리에 스치면서 가슴이 웅장해진다..',2),(69,'Inha123','업적','ㅠㅠㅠㅠㅠㅠㅠ 왜 안합쳐지는건데!!!! 스윙 나빠 .......................',5),(70,'깜찍예슬구슬','업적','아아 - 저로 말할 것 같으면 깜찍구슬예슬\'이랄까\' .? wwwww 내가 해본 게임 중에 가장 우수한 게임이군 (어이어이! 그게 무슨소리냐!-) ',5),(71,'Inha123','업적','근데 일케 별점을 막막 올리고있으니까 좀 ................... 별점조작알바를 하는듯한기분이 들기도하고 ',5),(72,'Inha123','업적','암튼 5점을 마구마구',5),(73,'Inha123','업적','올',5),(74,'Inha123','업적','려',5),(75,'Inha123','업적','줍',5),(76,'Inha123','업적','시',5),(77,'Inha123','업적','다',5),(78,'Inha123','업적','이',5),(79,'Inha123','업적','후',5),(80,'Inha123','업적','기',5),(81,'Inha123','업적','창',5),(82,'Inha123','업적','은',5),(83,'Inha123','업적','내',5),(84,'Inha123','업적','가',5),(85,'Inha123','업적','접',5),(86,'Inha123','업적','수',5),(87,'Inha123','업적','한',5),(88,'Inha123','업적','다',5),(89,'김진성이','업적','운영자 나온나',5),(90,'kiki','업적','재밋네요 제 점수는요',4),(91,'kiki','업적','4점이 박해서 4점도 드리겠읍니다',4),(92,'kiki','업적','악 이제 발표시간이에요 ',4),(93,'yoyobiii','업적','　　　　　　　　  　 | ',5),(94,'yoyobiii','업적','　　별점 5점　　　  | ',5),(95,'yoyobiii','업적','　　 주실거죠　　 　    |,,∧ ',5),(96,'yoyobiii','업적','　 ／l、   　　　        ノ/.ω.`) ',5),(97,'yoyobiii','업적','（˚˛ 。 ７　　 　   ／　/⊂ノ ',5),(98,'yoyobiii','업적','  l、˝ ~＼　　　   ＼ /ーJ ',5),(99,'yoyobiii','업적',' じ_しf_, )ノ￣￣￣ 　　,',5),(100,'jinho','업적','고생하셨어용',5),(101,'gggg','업적','후기 게시판 도배한거 누굽니까,,,',2),(102,'running','업적','안녕하세요',1),(103,'running','업적','재밌네요',5);
/*!40000 ALTER TABLE `bulletinbord` ENABLE KEYS */;
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
