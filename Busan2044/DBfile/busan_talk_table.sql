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
-- Table structure for table `talk_table`
--

DROP TABLE IF EXISTS `talk_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talk_table` (
  `id` int NOT NULL,
  `diaNum` int DEFAULT NULL,
  `talkNum` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `talk` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `note` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `likability` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talk_table`
--

LOCK TABLES `talk_table` WRITE;
/*!40000 ALTER TABLE `talk_table` DISABLE KEYS */;
INSERT INTO `talk_table` VALUES (1,1,'0','한주탈: 나는 을숙도에서 상점하는 한주탈이다.\n괜찮은 물건 있으면 가져와 교환해주지\n어휴 근데 얼굴이 왜 이렇게 안좋냐? \n누가보면 응? 군대라도 온 줄 알겠어(혼자 웃기)','대화1',0),(2,1,'0-1','한주탈: 그래!!얼굴도 안좋은데 박카스 하나 어떠냐~?','대화1>선택1 ',0),(3,1,'0-1-1','한주탈: 에이~ 그냥 받지 그래. 내 성의인데 ','대화1>선택1>선택1-1',0),(4,1,'0-1-2','한주탈: 그래그래! 어른이 주면 받아야지~ 암~~','대화1>선택1>선택1-2',1),(5,1,'0-2','한주탈: 이런.. 버릇이 좀 없는 애구나?\n 아니면 사람이랑 대화하는 법을 모르나? 갈란다.','대화1>선택2',-1),(6,2,'0','한주탈: 와 오늘 날씨가 도대체 왜이러냐? \n공기도 안좋고; 무슨 나라가 이러냐!!!!!아우 승질나\n그나저나 내가 여기 주변을 싹~ 탐색하고 왔는데 \n문을 두드려도 사람들이 문을 안열어주네. \r아무도 없는건지? 없는 척인건지? 아우!!!','대화2',0),(7,2,'0-1','한주탈: 으음.. 너는 어디로 갈 예정이냐? 음식이나 생필품은 있고? ','대화2>선택1',0),(8,2,'0-1-1','한주탈: 내 생각에는 빈 집이 많은 것 같다.\n 잘 둘러봐 필요한 것을 얻을 수 있을거다.','대화2>선택1>선택1-1',1),(9,2,'0-1-2','한주탈: 나는 혼자가 편하다. \n누구한테 짐이 되기도 싫고 이렇게 물건 파는 것도 좋고..','대화2>선택1>선택1-2',0),(10,2,'0-2','한주탈: 뭔,,말을 못붙이겠네;;','대화2>선택2',-1),(11,3,'0','한주탈: 이봐! 내가 몇살같아보이나?','대화3',0),(12,3,'0-1','한주탈: 뭐야? 장난하는거야? 내가 장난하는걸로 보여? ','대화3>선택1',-1),(13,3,'0-2','한주탈: 오. 그래? 비슷해~ 근데 말이야.. 민트초코 좋아하냐?',NULL,0),(14,3,'0-2-1','한주탈: 뭐라고?!?! 아니 GOD민트초코를 싫어한다고?! 에잇 안되겠네 이 친구~~',NULL,-1),(15,3,'0-2-2','한주탈: 좋아좋아 민초파는 아주 바람직하지~ 껄껄',NULL,1),(16,4,'0','한주탈: 아니 원래는 밖에서 들어오는 물건들이 많았는데, \n어느순간부터 물건이 끊기고 배가 전혀 안들어온다?','대화4',0),(17,4,'0-1','한주탈: 뭐? 내 탓이라는 거야? 싸울래?','대화4>선택1',-1),(18,4,'0-2','한주탈: 음, 비밀이지 그건? \n니가 내 창고 다 털어가면 어쩔려고 내가 알려주냐?\n아니면 너 저 사람들이랑 찢어지고 나랑 동업할래?','대화4>선택2',0),(19,4,'0-2-1','한주탈: 오~ 효자구나 그래 알겠다!','대화4>선택2>선택1',1),(20,4,'0-2-2','한주탈: 장난인데 뭘 그렇게 진지해!?','대회4>선택2>선택2',0),(21,5,'0','한주탈: 공짜로 물건 사려는 놈들은 무슨 심보냐고!! \n짜증나네.. 넌 내가 사람이 좋아보이냐?','대화5',0),(22,5,'0-1','한주탈: 아니 글쎄 너도 알겠지만 내가 지금 물건 팔러 다니지 않냐 \n근데 어떤 놈이 초코바 5개를 그냥 달라고 하는거야\n 그래서 내가 화가나서 막 소리를 질렀는데 \n내 얼굴을 때리고 그냥 도망가는거야!! 어이가 없어서 진짜 (눈물을 훔친다)','대화5>선택1',0),(23,5,'0-1-1','한주탈: 당연히 아프지!! 놀리냐?','대화5>선택1>선택1',-1),(24,5,'0-1-2','한주탈: 오 다정하구나? 괜찮다 나도 약은 있으니까 아껴서 너 써라','대화5>선택1>선택2',1),(25,5,'0-2','한주탈: 그래? 내가 나빠보이지 않는다니 허허 기분은 좋네\n그래서 내가 무슨 일이 있었나면 !! \n아니 글쎄 너도 알겠지만 내가 지금 물건 팔러 다니지 않냐\n근데 어떤 놈이 초코바 5개를 그냥 달라고 하는거야 \n그래서 내가 화가나서 막 소리를 질렀는데 내 얼굴을 때리고 그냥 도망가는거야!!\n어이가 없어서 진짜 어휴 그래도 너한테 말하니 좀 낫구나  ','대화5>선택2',1),(26,6,'0','한주탈: 요즘 저 멀리서 이상한 소리들이 많이 들려오지 않니? 나만 그런가?','대화6',0),(27,6,'0-1','한주탈: 오~ 그래? 몰랐네 무슨 소리일까 \r 세상이 드디어 망하는 소리일까??\r 기분이 안좋아지는군','대화6>선택1',-1),(28,6,'0-2','한주탈: 내 생각에는 말이다. \r아마 지금쯤 다른 동네부터 \n서서히 세상이 망하고 있는 소리가 아닐까 싶다.\r갑자기 짜증나네 ..','대화6>선택2',-1),(29,7,'0','한주탈: 네 연인이 다른 이성의 깻잎을 떼어줘도 된다고 생각하냐?','대화7',0),(30,7,'0-1','한주탈: 그렇지~ 다른 이성의 깻잎을 왜 떼어주냐고!!!','대화7>선택1',1),(31,7,'0-2','한주탈: 너에게 실망했다. 깻잎 떼어주는건 사랑이다.','대화7>선택2',-1),(32,8,'0','한주탈: 내가 무서운 이야기 하나 해줄까?','대화8',0),(34,8,'0-1','한주탈: 사실 내가 서울에서 왔는데 ..\n지금 서울에서는 사람들이 서로의 얼굴과 살을 물어 뜯으면서 싸우고 있어\n그래서 나도 여기로 도망쳐온거란다','대화8>선택1',0),(35,8,'0-2','한주탈: 그래 .. 대화할 사람이 필요했었는데 아쉽구나 ','대화8>선택2',0),(36,8,'0-1-1','한주탈: 내 말을 못믿는 모양이구나 ..','대화8>선택1>선택1',0),(37,8,'0-1-2','한주탈: 그래 거긴 정말 지옥이라고 ... 들어줘서 고맙다.','대화8>선택1>선택2',0),(38,9,'0','한주탈: 너 그거 뭐냐 ? 그거??? 무슨 네글자 영어~~!! mbti 인가 뭔가 그거','대화9>',0),(39,9,'0-1','한주탈: 뭐어??에잇 재미있는 이야기 해주려고 했는데 기분이 팍 상했다!!','대화9>선택1',-1),(40,9,'0-2','한주탈: 그래~? 내 MBTI가 뭔지 빨리빨리 물어봐라 껄껄','대화9>선택2',0),(41,9,'0-2-1','한주탈: 바로바로~~~~ C.U.T.E !!','대화9>선택2>선택1',0),(42,9,'0-2-2','한주탈: 잔인하구나 .. 속상하다 .......','대화9>선택2>선택2',-1),(43,9,'0-2-1-1','한주탈: 재밌다니 뿌듯하구나 우린 참 잘맞아 하하하하','대화9>선택2>선택1>선택1',1),(44,9,'0-2-1-2','한주탈: 뭐야 안웃겨?','대화9>선택2>선택1>선택2',0);
/*!40000 ALTER TABLE `talk_table` ENABLE KEYS */;
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
