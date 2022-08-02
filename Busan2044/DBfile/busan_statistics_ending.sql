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
-- Table structure for table `statistics_ending`
--

DROP TABLE IF EXISTS `statistics_ending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics_ending` (
  `ending_id` int NOT NULL,
  `ending_name` varchar(45) DEFAULT NULL,
  `ending_headcount` int DEFAULT NULL,
  `ending_text` varchar(1500) DEFAULT NULL,
  `ending_path` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ending_id`),
  UNIQUE KEY `idstatistics_ending_UNIQUE` (`ending_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_ending`
--

LOCK TABLES `statistics_ending` WRITE;
/*!40000 ALTER TABLE `statistics_ending` DISABLE KEYS */;
INSERT INTO `statistics_ending` VALUES (1,'nomal1',7,'탕! 탕! 탕!\n\n군인들이\n연달아 총을 쏘는 소리가 들린다.\n\n큰 소리가 들리자 주위에서\n좀비들이 몰려든 것 같다.\n\n좀비들의 소리와 총소리가\n점점 가까워진다.\n\n빨리! 빨리!\n나는 모두를 챙겨 배에 태운다.\n작은 보트는 금새 꽉 찬다.\n\n저 멀리서 손해령 중위의 외침이 들린다.\n\n\"나가면 안돼!\"\n\n아니. 우린 나갈거야.\n여기서 생체실험 때문에 개죽음을 당하고,\n좀비로 변할 순 없어.\n\n여기서 나가서\n밖에 나가서 진실을 밝힐거야.',NULL),(2,'nomal2',1,'막 보트에 올라타려고 하는 순간\n어디선가 좀비 개 한마리가 튀어올라\n나를 물었다.\n\n...\n...\n......\n\n보트에 탄 사람들이\n나를 황망하게 바라본다.\n할머니는 다시 보트에서 내리려고 한다.\n\n팔에 고통이 느껴지긴 하지만\n머리가 멍하다.\n\n안돼,\n그래도 할머니는\n여길 탈출해야해.\n나는 보트에서 조금 떨어졌다.\n\n그때, 총소리가 들리더니\n배가 뜨끈해진다.\n\n한 번 더 총소리가 들린다.\n이번엔 가슴께가 뜨겁다.\n...총에 맞았다.',NULL),(3,'nomal3',2,'생각보다 아프지 않은건\n나도 좀비가 되어가서 그런거겠지?\n\n\"변이되기 전에 빨리 사살해!\"\n\n손해령 중위의 외침이 들린다.\n\n몸에 자꾸만 힘이 빠진다.\n머리도 멍해진다.\n나를 향해 소리치는 할머니의 목소리가 들린다.\n\n할머니...\n할머니는 꼭 나가서...\n집으로 돌아가... 이제 다 왔어...\n\n할머니...\n많이 보고 싶을거야...\n\n이제 아무것도 들리지 않는다.\n눈 앞이 너무 뿌옇다.',NULL),(4,'nomal4',42,'[노말 엔딩]\n당신 없는 당신팀',NULL),(5,'badbad1',22,'군인들이 다가와 물린 곳이 있는지,\n상처가 있는지 살핀다.\n\n그리고 우리를 차에 태운다.\n우린 다시 특수구역으로 향한다.\n\n안돼, 이렇게 허무하게\n다시 잡혀들어가다니.\n\n그때 손해령 손해령 중위가\n나에게 말을 건다.\n\n\"그렇게 억울해 할 필요 없습니다..\n나가지 않는게 훨씬 좋으니까.\n우린 모두를 보호하고있습니다.\n\n하지만 밖에 오래 있다가 왔으니...\n여러가지 검사도 받아야 하고,\n접종도 다시 받아야 합니다.\"\n\n보호?\n우릴 죽이지 않고 다시 데려가는 이유가 있나?\n아니면 특수구역에 가서 죽이려고?\n\n분명히 \"보호\"라고 했다.\n무엇으로부터 보호한다는거지?\n\n내가 질문하려고 할때,\n중위가 가지고 있던 무전기가\n큰 소리를 내며 울린다.',NULL),(6,'badbad2',0,'- 중위님! 큰일났습니다!\n격리소에... 감염 개체들이 침입했다고 합니다!\n\n손해령 중위의 얼굴이 사색이된다.\n중위는 운전대를 잡고 있는 군인에게\n속도를 올리라고 명령한다.\n\n차가 엄청난 속도로 달린다.\n곧 차는 우리가 있던,\n건물들이 모여있는 곳 까지 도착했다.\n안에서는 총소리와 비명소리가 들린다.\n\n\"중위님!\"\n\n얼굴이 하얗게 질린 군인 둘이 다가온다.\n\n\"상태가 심각합니다!\n격리소라... 노약자들밖에 없어서...\n전파 속도도 너무 빠릅니다!\"\n\n분위기가 아주 심각하다.\n군인들은 공포에 질려있다.\n중위는 우리를 돌아본다.\n\n\"여러분들은 일단 여기에 계십시오.\n그 편이 훨씬 더 안전할 것 같습니다.\"\n\n그리고 그는 군인들을 데리고\n굳게 닫힌 정문을 열고 안으로 들어간다\n\n구역 안쪽에선 총소리가 계속 들려온다.\n사람들의 비명소리도 계속 들려온다.\n\n무섭다.\n나는 할머니의 손을 꼭 잡았다.',NULL),(7,'badbad3',0,'...\n...\n시간이 조금 지나자\n비명소리는 잦아들었지만\n총소리는 계속 들린다.\n\n시끄러운 소리를 들은\n좀비들도 이곳으로 몰리고 있다.\n\n\"지금 무슨 상황인가요?\"\n\n우리와 함께 남겨진\n군인 둘 중 한 명에게 물었다.\n그는 잠시 고민하다가 대답한다.\n\n\"누군가 격리시설 쪽문을 부숴서...\n그틈으로 감염된 개체들이 들어온 모양입니다...\n쪽문 쪽 경비가 허술하기도 했습니다만...\"\n\n그는 말끝을 어물쩍 흘린다.\n책임을 물을까봐 그런 듯 하다.\n하지만 우리는 그 말에 흠칫 놀랄 수밖에 없다.\n\n\"그... 쪽문이 혹시... \n자물쇠가 잠겨 있던 철문 맞나요?\"\n\n나는 열리지 않으려는 입을 애써 열어\n군인에게 물었다.\n그는 고개를 끄덕였다.\n\n...\n특수구역에서 탈출하기 위해\n우리가 열고 갔던 그 철문이\n맞는 것 같다.\n\n\"이 전염병은\n특히 노약자 사이에서\n전염율이 높습니다...\n그래서 상황이 이렇게...\"\n\n군인이 마저 덧붙였다.\n뒤통수가 얼얼하다.\n\n이제 손해령 중위가\n\"보호\"라고 말한 이유를 알 것같다.\n\n우리는 오히려 안전한 곳에서 벗어나려\n발버둥친 것이다.',NULL),(8,'badbad4',NULL,'눈앞이 깜깜해졌다.\n이제 우리는 어떻게 되는 걸까?\n\n\"안되겠습니다.\n이곳에 감염된 개체들이 몰려듭니다!\"\n\n군인 둘이 우리를 다시 차에 태운다.\n그들도 어쩔줄을 모르는 것 같다.\n\n\"중위님! 중위님!\"\n\n군인 둘이 번갈아가며\n무전기로 중위를 부르지만\n중위는 대답하지 않는다.\n\n우리는 일단 이곳을\n벗어나기로 했다.\n\n- 밷밷 엔딩\n\n[베드엔딩]\n당신이 초래한 비극',NULL),(9,'real1',NULL,NULL,NULL),(10,'real2',NULL,NULL,NULL),(11,'real3',NULL,NULL,NULL),(12,'real4',NULL,NULL,NULL);
/*!40000 ALTER TABLE `statistics_ending` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-02 14:59:57
