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
-- Table structure for table `origin_chapter2`
--

DROP TABLE IF EXISTS `origin_chapter2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `origin_chapter2` (
  `StoryId` int NOT NULL,
  `StoryNum` varchar(30) NOT NULL,
  `StoryMain` varchar(1500) DEFAULT NULL,
  `StoryTime` varchar(10) DEFAULT NULL,
  `check` varchar(30) DEFAULT NULL,
  `check2` varchar(30) DEFAULT NULL,
  `check3` varchar(45) DEFAULT NULL,
  `check4` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`StoryId`,`StoryNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origin_chapter2`
--

LOCK TABLES `origin_chapter2` WRITE;
/*!40000 ALTER TABLE `origin_chapter2` DISABLE KEYS */;
INSERT INTO `origin_chapter2` VALUES (1,'1','쓸만한 것이 없나 찾아보던 중,\n꽤 오래 방치된 것 같은 차를 발견했다.\n\n안에 쓸만한 것이 있을지도 모른다.\n한 번 만져볼까?','12','선택지, 확률, 스탯증감, 조건, 아이템증감','전투, (사람이름), (아이템이름),수치',NULL,NULL),(2,'1-1','약이다!\n차 안에는 의약품이 제법 있다.\n식수도 있다.\n\n아마도 피난을 가던 차였던 것 같다.\n비상 식량을 챙겨서 가던 길인 것 같은데...\n\n차만 이렇게 덩그러니 남았다면\n그 주인은 어떻게 된걸까...?\n\n우울한 생각을 하지 않으려 애썼다.','낮','확률',NULL,NULL,NULL),(3,'1-1','가까이 다가가자 차의 도난방지경보음이 시끄럽게 울린다.\n시끄러운 소리 때문인지 어디선가\n좀비로 변한 야생동물이 나타났다!\n\n// 전투 발생','낮','확률','전투',NULL,NULL),(4,'1-2','차에 뭔가 중요한 게 있을리가 없다.\n우리는 다른 곳을 열심히 살펴보기로 하고 그곳을 떠났다.\n\n하지만 더 이상 쓸만한 것은 보이지 않는다.\n시간만 날렸다.\n\n빨리 이곳을 벗어나야 할건데...\n시간을 허투루 보낸 것 같아 초조하다.\n\n// 정신력 -1','낮','스탯증감','정신-1',NULL,NULL),(5,'2','방치된 커다란 폐건물을 발견했다.\n흉물스럽게 떨어진 커다란 간판을 보니\n예전에 카페를 하던 곳이었던 것 같다.\n\n찾아보면 쓸만한 게 많지 않을까?\n하지만 위험한 게 많을수도...\n내부는 깜깜해서 아무것도 보이지 않는다.','12','선택지',NULL,NULL,NULL),(6,'2-1','보이는 것과 달리 안쪽은\n햇빛이 잘 들도록 되어 있어\n많이 밝다.\n\n들어가자마자 향긋한 커피향이 난다.\n옆구리가 터져서 커피 원두들이 여기저기 흩어져있다.\n누군가 들렀다 간 흔적이 있다.\n\n안쪽까지 더 살펴보자\n멀쩡하게 보관된 커피 원두가 조금 있다.\n나머지는 봉지가 뜯어져 향이 다 날아갔다.\n\n일단 챙겼다.\n여기서 커피를 마실 일이 있을까 싶지만...\n가진 것 만으로도 기분이 좋다.\n\n커피원두 +1','낮','확률',NULL,NULL,NULL),(7,'2-1','보이는 것과 달리 안쪽은\n햇빛이 잘 들도록 되어 있어\n많이 밝다.\n\n들어가자마자 향긋한 커피향이 난다.\n옆구리가 터져서 커피 원두들이 여기저기 흩어져있다.\n누군가 들렀다 간 흔적이 있긴 하다.\n\n안쪽까지 더 살펴보자.\n\n- 우걱, 우걱, 와드득\n\n좀비다!\n좀비가 동물 사체를 씹어먹고있다.\n식사 시간을 방해하지 말고...\n조용히 도망가자...\n\n그러다가 할머니가 물건을 떨어트려\n결국 좀비의 주의를 끌고 만다.\n\n전투다!','낮','확률','전투','',NULL),(8,'2-2','보이는 것과 달리 안쪽은\n햇빛이 잘 들도록 되어 있어\n많이 밝다.\n\n\"아이고! 커피 향이 죽인다! 커피 함 마시자!\"\n전판례 할머니가 갑자기 건물 안으로 뛰어들어간다.\n\n\"할머니! 위험해요!\"\n\n하지만 할머니는 벌써 순식간에 멀어졌다.\n잡을 수가 없다.\n\n어디선가 좀비가 나타난다.\n전판례 할머니가 위험하다!\n\n\"할머니! 앞에 좀비가 있어요!\"\n\n전판례 할머니는 그 말에 걸음을 멈춘다.\n하지만... 전판례 할머니는 그만 물리고 만다.\n\n할머니는 순식간에 좀비로 변하고 만다...\n우리는 황급히 그 자리를 떠났지만...\n급하게 달리느라 온 몸에 상처를 입었다.\n\n체력 -2\n정신력 -2\n\n// 전판례 할머니 잃음','낮','확률','전판례','스탯증감','체력-2/정신-2'),(9,'2-2','보이는 것과 달리 안쪽은\n햇빛이 잘 들도록 되어 있어\n많이 밝다.\n\n\"아이고! 커피 향이 죽인다! 커피 함 마시자!\"\n전판례 할머니가 갑자기 건물 안으로 뛰어들어간다.\n\n\"전판례 할머니! 위험해요!\"\n\n하지만 할머니는 벌써 순식간에 멀어졌다.\n잡을 수가 없다.\n어디서 저런 기운이 나오신걸까?\n\n우리는 급히 할머니의 뒤를 쫓았다.\n전판례 할머니는 커피 원두 봉지의 향을 맡고 있다.\n\n\"쓸 만한 커피가 많구만!\"\n\n전판례 할머니의 마음에 드는 원두를\n찾아낼 때까지\n우리는 그곳에 있는 커피 원두를\n엄청나게 뒤져야만 했다.\n\n그 대신 최고급 커피원두를 많이 얻었다!\n\n\"이게, 그 루왁 커피여! 루왁 커피!\"\n\n뭔지는 모르겠지만, 그렇다고 한다.\n\n커피원두 +3(최고등급 희귀도)','낮','확률','전판례','아이템','커피원두+3'),(10,'2-3','내부가 너무 깜깜하다.\n들어가서 무슨 일이라도 생긴다면.... 대처하기가 힘들 것이다.\n\n우리는 다음 장소를 향해 터덜터덜 걸어갔다.\n','낮','',NULL,NULL,NULL),(11,'3','점점 가을로 접어들어가서 그런지\n날이 차고 쌀쌀하다.\n그 와중에 비가 내린다.\n\n비를 피할 곳을 찾다가 \n작은 폐건물을 하나 발견했다.\n급한대로 안에 들어간다.\n\n관리실이었던 듯\n조작할 수 있는 기계가 있고,\n카메라가 연결된 듯한\n모니터 화면이 여러개 보인다.\n\n전기가 들어오지 않아\n전원을 켤 수 없다.\n\n그리고 굳게 잠긴 라커가 하나 있다.\n열어보면 쓸만한 게 있지 않을까?','12','선택지',NULL,NULL,NULL),(13,'3-1','손쉽게 열고 안을 들여다봤다.\n안에는 담배 한 갑, 을숙도 지도가 있다.\n\n모두 챙긴 뒤 비가 멎고 밖으로 나왔다.\n//희귀도 정하기','낮','조건','도독놈',NULL,NULL),(14,'3-2','애써 열어보지만, 자물쇠가 너무 굳게 닫혀있다.\n나는 온 힘을 다해 자물쇠를 부수려고 하지만,\n부수기가 쉽지 않다.\n\n괜히 시간과 힘만 뺐다...\n저렇게 단단하다니!\n\n우리가 있었던 건물들을 감싸고 있었던\n철문보다 훨씬 단단해 보인다.\n\n// 체력 -1, 정신력 -1','낮','스탯증감','체력-1/정신-1',NULL,NULL),(15,'3-3','우리는 다시 거처로 돌아가려 하지만...\n비가 심하게 퍼붓는다.\n이런 길을 그대로 돌아갈 순 없다.\n게다가 비가 내리니 점점 추워진다.\n\n// 상태이상 : 감기 ???','낮','감기','의약품-1',NULL,NULL),(16,'4','\"살려줘! 사람 살려!\"\n\n좀비가 아닌 사람이 있다!\n군인이다.\n\n어디에 물린 것 같은 상처가 심하다.\n\n\"나, 나는, 좀비에게 물린 게 아니야!\n그냥 좀 도와줘!\"\n\n이 군인의 말을 믿을 수 있을까?','12','선택지',NULL,NULL,NULL),(17,'4-1','위험하니까 접근하지 말자.\n우리는 멀찍이 물러섰다.\n\n\"나, 나를 두고 가다니!\"\n\n군인이 총을 장전한다.\n안돼!\n\n탕! 큰 소리가 나고 총이 발사됐다.\n다행히 우리 중 아무도 맞추지 못했지만,\n\n커다란 좀비 멧돼지의 관심을 끈 모양이다.\n어디선가 갑자기 나타난 좀비 멧돼지가\n군인에게 달려든다.\n\n\"아아아악!\"\n\n끔찍한 장면이다.\n군인은 산 채로 뜯겨나간다...\n\n우리도 위험해지기 전에 어서 떠나자.\n\n그때, 금수잔이 갑자기\n우리에게서 멀찍이 떨어진다.\n\n\"당신들... 이런 사람들\n아니었잖아요.\n나는 도와줬으면서... 왜?\"\n\n금수잔은 갑자기\n우리와 따로 다니는게 좋겠다고 한다.\n\n그녀는 우리를 떠났다...\n부디 그녀도 을숙도를 떠날 수 있길 빈다.\n\n// 정신력 -2','낮','확률','금수잔','스탯증감','정신-2'),(18,'4-1','위험하니까 접근하지 말자.\n우리는 멀찍이 물러섰다.\n\n\"나, 나를 두고 가다니!\"\n\n군인이 총을 장전한다.\n안돼!\n\n탕! 큰 소리가 나고 총이 발사됐다.\n다행히 우리 중 아무도 맞추지 못했지만,\n\n큰 소리를 내서 좋을 건 없다.\n빨리 이곳을 벗어나려고 했지만\n\n결국 좀비 들개와 마주치고 만다.\n\n전투다!','낮','확률','전투',NULL,NULL),(19,'4-2','그는 다리와 옆구리에 큰 상처를 입고 있다.\n피가 흥건하다.\n\n\"나, 나를, 다시 특수구역으로... 데려다주면... 꼭 사례할게!\n아, 아니면 근처에 안전한 곳이라도...!\"\n\n\"당신이 좀비한테 당한 게 아니라는 걸 어떻게 믿죠?\"\n\n\"진짜야! 증명할 순 없지만 진짜라고!\"','낮','선택지',NULL,NULL,NULL),(20,'4-2-1','가지고 있던 의약품을 나눠줬다.\n그는 이정도에 만족하지 않는 것 같다.\n하지만 해줄 수 있는 건 다해줬는걸...? \n\n우리는 그자리를 벗어났다.\n그는 알 수 없는 표정으로 우리를 바라본다.','낮','조건','의약품',NULL,NULL),(21,'4-2-2','나는 그를 부축해 근처 빈 건물로 들어갔다.\n안전해 보이는 곳에 그를 두고 문을 단단히 닫아뒀다.\n그는 완전히 힘이 빠져 기진맥진하다.\n\n저 총... 총에 자꾸만 시선이 간다.\n저것만 있으면 우리 모두 안전하지 않을까?','낮','삼중선택지',NULL,NULL,NULL),(22,'4-2-2-1','기진맥진한 틈에\n그가 가진 총을 뺏았다.\n그는 제대로 반항하지 못한다.\n\n\"아, 안돼! 내 총!\"\n\n우리는 그의 외침을 뒤로 하고 밖으로 나왔다.\n\n//총 최고희귀등급 물건 한 개와\n// 희귀등급 하나와 동시에 교환 가능\n\n// 정신력 -1\n','낮','총/정신력-1',NULL,NULL,NULL),(23,'4-2-2-2','눈길을 애써 돌렸다.\n이사람도 자기 몸을 지킬 게 필요하니까...\n\n\"고, 고마워...\"\n\n그는 조용히 속삭인다.\n이정도 해줬으면 할 만큼 했지.\n\n우리는 그를 두고 밖으로 나왔다.\n그래도 좋은 일을 한 것 같다.\n그가 부디 안전하게 회복했으면...\n\n//체력 -1','낮','확률/식량-1/정신력-1',NULL,NULL,NULL),(24,'5','다른 곳과 달리\n땅이 눈에 띄게 불룩 솟아오른 곳이 있다.\n\n안에 뭐가있는걸까?\n한 번 파볼까?','12','선택지',NULL,NULL,NULL),(25,'5-1','땅을 꽤 깊게 파내려가자\n그 안에는 통조림들이 가득하다.\n몇 몇 통조림은 껍질만 있는 걸 보니,\n누군가 여기에 통조림을 묻어놨다는 걸 알고있는 것 같다.\n\n정신력 +1\n통조림 다섯개','낮','조건/삽/통조림+3',NULL,NULL,NULL),(26,'5-2','손으로 파내려가다가 뾰족한 물건에\n손을 깊게 베였다.\n\n더 이상 파는 건 좋지 않을 것 같다.\n\n상태이상 : 출혈(탐색 3번 까지 치료하지 않으면 죽음, 붕대 하나 소비)\n\n','낮','출혈',NULL,NULL,NULL),(27,'5-3','안에 뭐가 있을 지 확실하지 않은데\n파는게 좋을까?\n우리는 다음 장소로 걸음을 옮긴다.','낮',NULL,NULL,NULL,NULL),(28,'5-4','쿠키가 열심히 땅을 판다!\n쿠키가 열심히 파헤진 곳에는...\n통조림이 있다.\n그것도 꽤나 많이!\n\n쿠키 기특해!\n고마워! 귀여워!\n\n쿠키가 내 망을 알아듣기라도 한 듯,\n나와 함께 환하게 웃어준다.\n\n통조림 +3','낮','조건/쿠키/통조림+5',NULL,NULL,NULL),(29,'6','이리저리 돌아다니다가\n주택 몇 채가 모여있는 곳을 발견했다.\n\n이 집들을 하나하나 살펴보면\n시간은 많이 걸리지만,\n생존에 필요한 물건들을 많이 모을 수 있을 것 같다.\n\n어떻게 할까?','12','선택지',NULL,NULL,NULL),(30,'6-1','잠긴 문도 손쉽게 열고 들어갔다.\n집집마다 들려서 많은 식량과\n생필품들을 찾았다!\n\n시간은 오래 걸렸지만 그만큼\n수확이 많은 하루다.\n\n다음에 이곳에 또 올수도 있을 것 같긴 한데...\n헷갈리는 골목이 많다.\n길을 잃지 않도록 표시해둬야만 할 것 같다.\n\n+ 식량 + 6\n','낮','조건/도독놈',NULL,NULL,NULL),(31,'6-2','잠긴 문을 열 수 있는 방법이 없어서\n열린 곳만 털었다...\n\n문이 열려 있는 집을 찾는다고\n더 많은 시간이 걸렸다.\n우리는 많이 지쳤다...\n\n그래도 많은 식량과 생필품을 찾을 수 있었다.\n\n// 체력 -1\n// 식량 +3\n','낮','',NULL,NULL,NULL),(32,'8','오래 전에 누군가 설치해 둔 것 같은 덫이 있다.\n이걸 잘만 사용하면,\n고기를 얻을 수도 있을 것같다.','9','선택지',NULL,NULL,NULL),(33,'8-1','함부로 만지다가 다칠 수도 있다.\n가만히 놔두자.\n\n힘이 빠졌다고 해도 덫은 덫이다.\n잘못 건드리면 안 된다.\n\n그리고 동물이 걸려봤자...\n좀비로 변한 동물들이겠지...','밤',NULL,NULL,NULL,NULL),(34,'8-2','동물이 잘 다니는 곳으로 덫을 옮겨서\n다시 설치해뒀다.\n하지만 손을 깊게 베였다.\n\n피도 봤으니\n괜찮은 사냥감이 잡히길!\n\n+ 상태이상 출혈\n\n','밤','출혈',NULL,NULL,NULL),(35,'9','빈 집이나 빈 건물을 뒤져보고 있는데,\n어디서 부스럭 거리는 소리가 들린다.\n좀비인가?','12','선택지',NULL,NULL,NULL),(36,'9-1','소리가 나는 쪽을 겨누고 들어간다.\n\n갑자기 눈앞에 뭔가가 후다닥 하며 지나간다.\n어린 아이다!\n\n이런 곳에 아이가 혼자?\n걱정되는 마음에 뒤를 따르자.\n어린 아이 한 명과 아이의 엄마로 보이는 여자 한 명이있다.\n\n여자는 총을 보고 화들짝 놀라\n곧바로 손을 든다.\n\n\"살려주세요! 쏘지마세요!\"\n\n나는 겨눴던 총을 거둔다.\n여자의 눈에 눈물이 그렁거린다.\n\n\"옆방에 식량들이 있어요.\n저희가 가진 건 그게 전부에요.\n그것만 가지고 가주세요.\"\n\n오해를 풀 여지도 없다.\n여자는 몹시 심하게 겁에 질렸다.\n\n우리는 그냥 그 자리를 떠날 수밖에 없었다.\n\n//상태이상 우울(한도를 10일로 줄인다.)','낮','확률/총/우울',NULL,NULL,NULL),(37,'9-1','소리가 나는 쪽을 겨누고 들어간다.\n갑자기 눈앞에 뭔가가 후다닥 하며 지나간다.\n놀란 나는 그냥 총을 쏴버렸다.\n\n... 총에 맞은건, 한 여자다.\n그 옆에는 아이가 있다.\n아무래도 총에 맞을뻔한 아이 대신\n자신이 총을 맞은 것 같다.\n\n급히 다가가 몸을 흔들어보지만\n그녀는 벌써 의식이 없다.\n순식간에 일어난 일이다.\n\n아이는, 엄마의 옆에서 서럽게 운다.\n여기 어떻게 아이가 남아 있는거지?\n그리고, 저 여자는 갑자기 왜 튀어나와선!\n\n머릿속이 복잡해진다.\n할머니가 나를 황망하게 쳐다본다.\n나도 할머니를 황망하게 쳐다본다.\n\n다리가 덜덜 떨린다.\n나는 그자리에서 도망쳤다.\n그리고 다리에서 힘이 풀릴 때 까지\n계속 달렸다.\n\n눈앞에 죽은 여자의 모습이 어른거린다.\n\n// 정신력 모두 -  죽음','낮','확률/총/게임오버',NULL,NULL,NULL),(38,'9-2','소리가 나는 곳을 향하자,\n어린 아이 한 명과 아이의 엄마로 보이는 여자 한 명이 있다.\n\n\"이런 곳에서 뭐 하세요? 위험할텐데...\"\n\n여자는 우리를 경계한다.\n손에는 야구방망이를 들고있다.\n아이도 여자 뒤에 숨는다.\n\n\"우리 일에 신경쓰지 마세요.\"','낮','조건',NULL,NULL,NULL),(39,'9-3','조심히 소리가 나는 쪽으로 향한다.\n소리가 나는 곳을 향하자,\n어린 아이 한 명과 아이의 엄마로 보이는 여자 한 명이 있다.\n\n여자는 우리를 경계한다.\n손에는 야구방망이를 들고있다.\n아이도 여자 뒤에 숨는다.\n\n\"우리 일에 신경쓰지 마세요.\"\n\n갑자기 장주먹 할아버지가 나선다.\n\n\"야구방망이를 쥐는 자세부터 틀렸다!\n그래가지고 뭘 하겠노!\n\n이거는 이래 잡아가!\n이래 휘둘러야제!\"\n\n그 뒤로도 할아버지는 한참 일장 연설을 늘어놓는다...\n여자는 어느 순간 홀려서 할아버지의 말을\n고개를 끄덕이며 듣고 있다.\n\n\"감사합니다\"\n\n모녀는 원래 을숙도에 살고 있던 사람들이라고 했다.\n을숙도에는 원래 살던 사람도 많이 없었지만,\n그마저도 얼마 전에 강제로 밖으로 나가게 됐다고 한다.\n\n여자와 아이는 때마침 몸이 안좋아 집안에만 있었더니,\n밖으로 나갈 타이밍을 놓쳤다고 한다.\n우리는 함께 을숙도 밖을 나가자고 제안했다.\n\n\"아니에요.\n아이도 있고 그래서... \n저희가 많이 걸림돌이 될 거예요.\n오늘 가르쳐주신 것 만으로도\n큰 도움이 되었어요.\n감사합니다.\n\n떠날 때 그녀는 고맙다며\n우리에게 답례로\n전투식량을 나눠준다.\n\n오랜만의 융숭한 대접에\n우리는 모두 몸도 마음도 따뜻해졌다.\n나쁘지 않은 교환이었던 것 같기도 하고?\n\n체력+2\n정신력+2\n식량 +3','낮','고모리/정신력-2',NULL,NULL,NULL),(40,'9-4','소리가 나는 곳을 향하자,\n어린 아이 한 명과 아이의 엄마로 보이는\n여자 한 명이 있다.\n\n아이는 자를 든 고모리를 보고\n심하게 놀라 울음을 멈추지 않는다.\n\n\"괜찮아! 괜찮아!\"\n\n아이의 엄마가 열심히 아이를 달래지만\n눈물은 멈추지 않는다.\n\n이렇게 시끄럽게 하면 위험한데!\n우리는 잽싸게 밖으로 나갔다.\n\n...그나저나 우리 말고 사람이 있었다니\n놀랍다.\n\n\"저 어린 필멸자는 왜 나를 보고...\n그렇게 경계를 한 것이지?\n\n크큭, 아아- 역시 이 몸은.\n필멸자들의 세계와는 어울리지 않아...\n\n아아- 「이세카이」에서는 부디 나도...\"\n\n고모리는 상처를 받은 듯 하다.\n거처로 돌아가는 길에\n고모리가 갑자기 사라진다.\n\n한참을 찾아도 고모리는 보이지 않는다.\n고모리는... 우릴 떠난 것 같다.\n\n//정신력 -2\n','낮','장주먹/체력+2/정신력+2',NULL,NULL,NULL),(41,'10','조건 이벤트 4-1\n\n밤에 걱정이 돼서\n다친 군인이 있었던 쪽으로 가봤다.\n\n길게 끌린 핏자국만 을씨년스럽게 남아있다...\n군인은 무사할까?\n\n이 핏자국을 보니 무사하지 않을 확률이\n높은 것 같다.\n도움을 더 줬어야 했을까?\n\n좀 더 돌아다니다보니,\n좀비에게 끔찍하게 당해\n너덜너덜한 시체가 된\n군인을 발견했다...\n\n나는 너무 참혹한 현장을\n할머니께 보여드리지 않으려,\n할머니의 눈을 가렸다.\n\n정신력 -2\n','9','4-2-1-1/정신력-2',NULL,NULL,NULL),(42,'10','밤에 걱정이 돼서\n다친 군인을 데려다줬던 곳으로\n슬그머니 가봤다.\n\n우리는 조용히 건물 근처로 이동했다.\n그때, 갑자기\n번쩍이는 빛줄기가 나를 덮친다!\n\n칼이다!\n\n본능적으로 몸을 피한 덕에\n급소는 피했지만,\n\n상처가 심하다!\n\n우리는 빠르게 도망쳤다.\n아직 몸이 낫지 않은 군인은\n우리를 쫓아올 수 없다.\n\n\"내 총을 훔쳐간 죗값을\n언젠간 꼭 받아내고 말거다!!\"\n\n군인이 고래고래 소리를 지른다.\n\n// 체력 -2\n// 의약품 바로 소비\n// 없으면 출혈\n\n조건 이벤트 4-2(2)1','밤','체력 -2, 출혈',NULL,NULL,NULL),(43,'10','조건 4-2-2\n밤에 걱정이 돼서\n다친 군인을 데려다줬던 곳으로\n슬그머니 가봤다.\n\n희미한 불빛이 있는 건물이 있다.\n안으로 들어가자\n세상 모르게 자고 있던 군인이\n인기척에 놀라 일어났다.\n\n\"뭐야, 천사들이잖아! 깜짝 놀랬네.\"\n\n그는 우리를 웃으며 맞아준다.\n\n\"덕분에 상처가 좀 나아졌어.\n난 진짜 감염된 게 아니라고.\n아직까지 변하지 않았잖아?\"\n\n우리는 이런저런 이야기를 나눈다.\n\n\"확실하지는 않은 정보야.\n그래서 정부에서는 노약자들을\n따로 모아서\n백신 만드는 실험을 하고 있다더군\"\n\n정부에서 그런 끔찍한 짓을 하고 있다고?\n온몸에 소름이 돋았다.\n백신을 만들기 위한 신체실험이라니..\n\n\"아무튼간에, 여긴 험하니까.\n자, 이걸 가지고 가.\n보답이야.\"\n\n그는 나에게 권총 한 정을 건네준다.\n\n+ 권총(최고등급까지는 아닌 아이템)','밤','조건','권총',NULL,NULL),(44,'GM','(GM스푸키)\n새출발을 시작하는 아침이다.\n을숙도 탈출하기\n오늘부터 1일차!\n\n씩씩하게 거처의 문을 열고 나섰다.\n갑자기 하늘에서 빛줄기가 내려온다.\n어라? 이거 있었던 일 같은데?\n\n\"안녕하세요~\nGM 스푸키에요!\n당신의 새출발을 응원해!\n\n아이템과 인벤토리 기능에\n공을 많이 들였으니까!\n자주 자주 이용해주세요!\n\n아 그리고, 상점 아저씨랑 꼭!\n잘 되시길 바랄게요!\n거긴 게임 속의 미니게임으로\n미연시를 만들어뒀다구!\"\n\n번쩍! 빛이 나타났다가 사라진다.\n으악 너무 눈부셔!\n\n... 방금 무슨 일이 있었지?\n이런 일이 자주 있는 것 같은\n그런 느낌적인 느낌이다.\n\n가방이 묵직해졌다!\n나는 당장 상점에 가고싶어졌다.\n\n// + 교환 아이템\n// + 손전등','낮','GM/손전등+ 아이템+',NULL,NULL,NULL),(45,'GM','(GM 오마)\n밤안개인가?\n짙은 안개가 끼며\n밤의 고요한 분위기를\n확 깨는 시끄러운 음악소리가 어디서 들려온다.\n뭐지? 이렇게 시끄럽게 하면...!\n\n\"걱정마세요.\n나는 GM 오마니까.\n당신에게만 시끄러운 거예요.\"\n\n데자뷰?\n이 기시감은 뭐지?\n\n\"밤에 탐색을 하는 용자시군요.\n당신의 용기는 존중합니다만\n스토리 작가로서는 조금,,,\n\n시간이 부족해서\n저녁 이벤트는\n많이 만들지 않았거든요. 껄껄껄.\n저녁엔 휴식해! 이벤트가 없어!\"\n\n갑자기 그녀는 성질을 낸다.\n코딩이 잘 안돼 예민해졌나보다.\n\n\"마음같아선\n정신력과 체력을 깎아버리고 싶지만\n그러다간 우리 게임 손절하실까봐...\"\n\n안개가 스르륵 걷힌다.\n주위도 다시 고요해졌다.\n\n// 체력 +1\n','밤','GM/체력 +1',NULL,NULL,NULL),(46,'GM','(GM 숨탁)\n낮이지만 가을바람이 쌀쌀하다.\n불어오는 바람에 갈대 스치는 소리만 고요하다.\n\n\"여어-. 플레이어,\n게임은 어때?\n\n아아- 내 소개가 늦었군.\n나는 GM 「숨탁-」.\n눈을 마주치는 것 만으로도...\n숨이- 탁-, 멎어버린달까?\n\n그래서-, 랄까, 일부러\n모습을 드러내진 않았어.\n너를 \"죽이고 싶진\" 않으니까.\"\n\n그는 이상한 소리를 한다.\n아무래도 숨탁은 숨은 오타쿠의\n약자인 것 같다.\n\n\"아아-, 숨은 오타쿠-, 라-.\n야레야레-. 내 정체를 단번에 파악하다니...\n이건, 좀, 곤란하겠는데?\"\n\n내 마음은 어떻게 읽은거야!\nGM숨탁의 정신공격에\n항마력이 떨어진다.\n\n// 정신력 -2\n','낮','GM/정신력 -2',NULL,NULL,NULL),(47,'GM','(GM 모구)\n귀여운 검정 강아지 한 마리가\n나에게 무척 자연스럽게 말을 건다.\n... 강아지가 말을 한다고?\n\n\"저기... 혹시 게임 후기는 남겼어?\n게임 후기 게시판이 좀... 비어있는 것 같아서...\"\n\n강아지는 시무룩한 눈빛으로 귀엽게 날 바라본다.\n이러면! 내가 미안해지잖아!\n\n\"게임을 다 하고 엔딩을 보면...\n후기 꼭 남겨줘야해!\n별점도 만들어뒀단 말이야.\n난 너의 별점이 궁금해!\"\n\nGM 모구의 귀여움이 치명적이다!\n나는 당장 게임 후기를 적으러 가고싶어졌다!\n\n\"헤헤 고마워! 플레이어!\n네 덕분에 내가 힘... 자, 잠깐!\n지, 지금은 안돼!\"\n\n갑자기 귀여운 강아지가\n펑 소리를 내며\n그린컴퓨터아카데미의\n누군가로 변한다.\n\n\"하하...\n후기 기다릴게요!\"\n\n그는 머쓱하게 웃으며 후다닥 사라진다.\n아무래도 GM 모구는\n자기 강아지를 빌려 귀여운척을 하려다가\n실패한 것 같다.\n\n그래도 나는 후기를 남기고 싶다는\n의지로 충만해졌다!\n\n//체력 +1','낮','GM/체력 +1',NULL,NULL,NULL),(48,'GM','(GM 지박령)\n\n\"원통하다... 원통해...\"\n\n안그래도 스산한데\n분위기를 더하는 목소리가 어디선가 들려온다.\n귀신인가 ?\n\n\"원통하다...! 원통해!\n자리가... 멀어서! 원통해!\n나는! 이곳을 벗어날 수 없는데!\"\n\n소문으로만 듣던 GM지박령이다!\n그녀는 팀프로젝트 중\n조원들과 자리가 멀어\n행복하지만 괴로운 개발자가 되었다는\n전설이 있다!\n\n\"후원 계좌번호는... 우리은행...\"\n\n아앗, 저기까지는 듣고싶지않아!\n나는 황급히 자리를 벗어난다.\n\n\"후원 계좌번호는!!!!!! 우리은행!!!! 1002!!!!!\n받아적어!! 게임이 재밌으니까 후원을 해야지!!\"\n\n지박령이라며! 왜 쫓아오는데!\n그녀는 도망치는 내 뒤를 무서운 속도로 쫓아온다!\n정신없이 달리자 어느새 그녀는 저 뒤로 멀어진다.\n\n\"거긴... 내 구역... 밖이야...\"\n\nGM 지박령이 돌아갔다.\n휴... 다행이다.\n달밤에 너무 뛰었더니 힘들다..\n\n// 체력 -1','밤','GM/체력 -1',NULL,NULL,NULL),(49,'GM','(GM 소짱)\n길을 걸어가는데,\n뜬금없이 부숴진 피규어 하나가\n발에 채인다.\n\n어! 나 이거 뭔지 알아!\n페이트에 토오사카 린!\n\n\"그게 뭔데 씹덕아.\"\n\n예?\n\n\"그게 뭐냐고 씹덕아.\"\n\n아... 그게......\n\nGM 소짱은 오덕 중에 오덕들만 모인\n팀에서 그뭔씹을 외치는 역할을\n담당했다고 한다.\n\n오덕 토크에 과몰입한 팀원들을\n다시 현실로 돌아오게 만드는데\n중요한 역할을 했다고...\n\n아니 내가 이걸 어떻게 알지 ?\n나는 뒤통수를 긁적였다.\n\n\"그래서 그게 뭔데 씹덕아.\n나같은 갓반인은 그게 뭔지 모른다고.\"\n\n아 아니... 그게...\n나는 황급히 그자리를 벗어났다.\n\n내 덕력을 들킨 것 같아\n조금 수치스러워졌다.\n\n// 정신력 -1','낮','GM/정신력 -1',NULL,NULL,NULL),(50,'GM','(GM 치라미)\n밤에는 깜깜해서\n길을 다니기가 쉽지 않다.\n\n막 넘어질 것 같았던 그때\n따뜻한 손길이 날 잡아준다.\n덕분에 넘어지지 않았다!\n\n\"감사합니다!\"\n\n감사인사를 건넸... 는데?\n어라? 방금까지 분명 여기 있었는데!\n그녀는 빛의 속도로 나에게서 멀어진다.\n\n\"저기요오-!\n게임을 끝까지 즐기는 거\n잊으시면 안돼요오오오-!\n우리 게임-! 다회차 게임이니까-!\n업적 많이  해금해주세요!\"\n\n그러면서도 그녀는 나에게 신신당부를 한다.\nGM 치라미인 듯 하다.\n\n그렇군!\n이 게임은 다회차 게임이었어!\n하지만 컴퓨터가 켜져있을때만\n게임을 할 수 있지!\n\n\"그래서 슬퍼요오-!\"\n\n이제는 아련한 목소리가 들려온다.\n\n걱정마세요 GM 치라미!\n나는 게임을 여러번 하고 싶은\n의지로 가득찼다!\n\n// 체력 +1\n\n\n\n\n','밤','GM/체력 +1',NULL,NULL,NULL),(51,'GM','(GM 우파루파)\n끝도없이 비슷한 곳을 골라다니다 보니\n사색의 시간을 가지게 된다.\n\n우리... 이런 무기랑, 이런 스킬들로\n여기서 계속 살아남을 수 있을까?\n\n막막함이 몰려오는 그때,\n목소리가 들려온다.\n데자뷰!\n\n\"전투 시스템의 가호가 함께하기를!\n걱정 마세요!\n별 볼일 없는 아이템이지만!\n이세계에서는 용사들만 쓸 수 있는 템이라고!\"\n\n그건 그렇지.\n나는 고개를 끄덕였다.\n이제 어떤 전투가 와도\n이길 수 있을 것 같은 의지력이 생긴다!\n\n\"당신의 전투를 응원해!\n꼭 끝판왕도 만나길!\"\n\n끝판왕을 만나는건 좋은 일인지\n나쁜일인지 잘 모르겠다...\n불길한 기분이 드는 건 왜일까?\n\n목소리가 사라졌다.\n전투 의지가 충만해졌다!\n\n내 손에는 어느새\n그녀가 남기고 간 효자손이 들려있다.\n아니! 효자손을 왜 주는건데!\n\n아니 그리고 난 어떻게 그녀의 이름을 알지?\n고개를 갸웃거리게 된다.\n\n// 효자손 +1\n\n','낮','GM/효자손 +1',NULL,NULL,NULL),(52,'GM','(GM 킹박민) \n어디선가 아주 신성한 음악소리가 들려온다.\n경건해진다. 무릎을 꿇어야만 할 것 같다.\n\n\"나는... GM 킹박민...\n그린 컴퓨터 아카데미... 424호의 의지를 잇는 자...\"\n\n아니! 그런 엄청난 분께서 이런 누추한 곳에!\n\n\"GM 킹박민과 1조의 가호가 당신과 함께하길...\"\n\n그는 조용히 축복을 내려주고 사라진다.\n나, 취업 준비 할때, 그린 컴퓨터 다녔었지...\n그때가 그립다...\n\n당신은 훌륭한 개발자가 될 것 같은\n의지로 가득찼다!\n\n그러면서 게임을 하고싶다는 의지도\n충만해졌다!\n역시 GM 킹박민의 가호!\n\n// 체력 +1 정신력 +1','낮','GM/체력+1 정신력+1',NULL,NULL,NULL),(53,'12','하늘에 둥그런 보름달이 떴다.\n오늘따라 주위가 훤하고 밝다.\n\n그러고보니 이쯤이면 추석이었던가...?\n아니면 벌써 지났나?\n오늘이 며칠인지,\n몇 시인지 제대로 알 수 없어 답답하다.\n\n그래도 밤에는\n어떤 게 튀어나올지 몰라 조마조마하다.\n\n잔뜩 긴장한 채\n한걸음 한걸음을 조심해서 내딛는데,\n멀리서 차 소리가 들린다.\n우리는 다같이 후다닥 몸을 숨겼다.\n\n경비중이던 군인 무리다!\n차는 아슬아슬하게 우리 앞에 멈춰섰다.\n휴...','9','선택지',NULL,NULL,NULL),(54,'12-1','쿠키는 몸을 뒤척이더니 갑자기 튀어나간다.\n\n \"쿠키야! 안돼!\"\n\n나도 쿠키를 잡으러 나섰다.\n\n군인은 갑자기 튀어나온 쿠키 때문에\n화들짝 놀란다.\n\n\"녀석, 감염된 개인줄 알았네.\n귀여워라. 이름이 뭐예요?\"\n\n의외로 군인들은 우리를 경계하진 않는다.\n쿠키에게만 정신이 팔린 것 같다. 왜지?\n\n한참을 쿠키랑 놀아준 군인이\n그제야 고개를 돌려 우리를 바라본다.\n\n\"을숙도에 민간인도 있다는 건\n알고 있었습니다만...\"\n\n그의 눈길이 할머니에게 오래 머문다.\n\n\"민간인 중에 노약자가 있다는 건...\n처음 듣는데...\"\n\n군인은 뒤통수를 벅벅 긁는다.\n\n\"에잇, 저도 지침이 자꾸 바뀌어서\n이제 장단 맞추기도 힘듭니다.\n어쩌자는 건지 원.\n아무튼 조심하십시오!\"\n\n그는 쿠키를 몇 번 더 쓰다듬더니\n우리에게 차려, 경례를 하고\n다시 돌아갔다.\n\n아무일도 없었다는 게 이상하다.\n우리를 보고도 아무렇지도 않다고?\n\n그러고보니 이 군인이 군복은\n건물 안에 있던 군인들의 군복과 다르다.\n\n우리가 민간인이라면\n그럼 민간인이 아닌 사람은 누구지?\n\n의문들이 꼬리를 잇는다.\n...하지만 군인을 만나고도 큰일이 없었다.\n정말 다행이다.','밤','확률/조건-쿠키',NULL,NULL,NULL),(55,'12-2','한은둔 할아버지 덕에 우리는\n어둠과 하나가 되었다.\n\n군인은 군용트럭의 트렁크에서\n낑낑거리며 뭔가를 내린 후\n큰 구덩이안에\n내린 짐을 던져넣고 떠났다.\n\n군인이 완전히 떠난 걸 확인하고\n우리는 구덩이로 다가가봤다.\n\n깊은 구덩이에 버려진건...\n온 몸이 꽁꽁 묶이고\n재갈이 물려진 노인 두 명이다!\n\n두 노인이 미세하게 몸을 움직인다.\n살려줘야해! 도와줘야해!\n\n구덩이가 깊다.\n속으로 던질만한 게 없을까?\n그런데 뭔가 꺼림직하다...\n\n다시 잘 살펴보니...\n그들은 서서히 좀비로\n변하고 있는 중이었다!\n\n\"으아악!\"\n\n나도 모르게 뒷걸음질하다\n넘어져버렸다.\n\n구덩이에 아직까지\n두 명 밖에 없는 걸 보니\n\n생체실험을 당하고\n좀비로 변한 사람들을\n이곳에 버리기로 한 것 같다.\n\n그럼 군에서는 왜,\n좀비를 만들려고 하는거지?\n도대체 왜?\n\n의문이 꼬리를 잇는 밤이다.\n우리 모두 조용히 거처로 돌아왔다.\n\n다들 말이 없다.\n충격을 받은 듯하다.','밤','확률/조건-한은둔',NULL,NULL,NULL),(57,'12-3','군인은 군용트럭의 트렁크에서\n낑낑거리며 뭔가를 내리고 있다.\n\n달빛이 너무 밝아서일까\n결국 군인이 우리를 발견한다.\n\n\"여기서 뭐하십니까?\"\n\n하지만 군인은 오히려\n우리의 눈치를 본다.\n\n그는 자기가 군용 트럭에서 내린\n\'무언가\'를 계속 숨기려고 한다.\n\n나는 애써 웃으며\n말도 안되는 말을 한다.\n\n\"밤엔 위험합니다.\n문을 닫고 집안에만 계십시오!\n그리고 여기는 작전 수행지니\n돌아가주시길 바랍니다!\"\n\n이렇게 쉽게 우리의 말을 믿어준다고?\n하지만 우리가 탈출했다는 걸 알면\n큰일날지도 몰라.\n\n의문이 들지만 우린\n군인이 시키는 대로 하기로 했다.\n\n다시 거처로 돌아가는 그때,\n갑자기 비명소리가 들린다.\n\n\"으아아악!\"\n\n군인이 위험에 빠진 것 같다.\n무슨 일이지?','밤',NULL,NULL,NULL,NULL),(58,'12-3','돌아가서 도와줘야하나?\n아니면 그냥 가?\n\n고민에 빠져있을 때,\n군인이 엄청난 속도로 달려나온다.\n\n\"도, 도망쳐!\n감염자야! 감염자!\n예상보다 변이가 빨랐어!\"\n\n군인은 겁에 질린 표정이다.\n우리도 군인과 함께 달린다.\n\n한참을 달려 멀리 벗어났다.\n가쁜 숨을 조금 고르고 나자\n군인이 창백한 표정으로 말한다.\n\n\"오, 오늘 있었던 일은\n비밀로 해주십시오!\"\n\n무얼 비밀로 해달라는걸까?\n고개만 끄덕였다.\n\n\"감사합니다!\n감염자를 제대로 처리하지\n못했다는 걸 들키면... 저는...\"\n\n그는 어두운 표정으로 말끝을 흐린다.\n\n감염자? 변이?\n의문이 꼬리를 잇는다.\n분명히, 군인은 감염자라고 했다.\n나는 그의 말을 기억해뒀다.','밤',NULL,NULL,NULL,NULL),(59,'13','갈대가 우거진 곳에서\n작은 비명소리가 들린다.\n\n몸집이 작은 할머니  분이\n좀비 개에게 쫓기고 계신다.','12','선택지',NULL,NULL,NULL),(60,'13-1','좀비개가 맹렬하게 할머니에게 달려든다.\n우리 쪽으로 오지 않게 우리도 조심하자.\n\n나는 먼저 할머니를 챙기고\n다른 사람들을 살폈다.\n그러는 사이 할머니는 결국...\n물어뜯긴 곳에서 피가 뚝뚝 떨어진다.\n\n좀비 개는 개걸스럽게\n할머니의 시체를 먹어치운다.\n\n할머니는 그 뒤로\n내 눈치를 살피시는 것 같다.\n\n정신력-1','낮',NULL,NULL,NULL,NULL),(61,'13-2','개는 크고 빠르게 움직이는 나를 보고\n컹컹, 소리를 내며 달려든다.\n\n헉.... 헉... 하지만 그만큼\n숨도 가쁘다.\n겨우겨우 좀비 개를 따돌렸다.\n그러고니 원래 쫓기고 있던 할머니는?\n\n하지만 할머니는 어느샌가 사라져버렸다!\n남 좋은 일만 했네!\n\n//체력-1','낮',NULL,NULL,NULL,NULL),(62,'13-3','좀비개가 으르렁거리더니\n멀리 도망갔다.\n쫓기던 할머니가 구해줘서 고맙다고 한다.\n\n쫓기던 할머니와 우리 할머니는\n그새 친해졌다.\n\n둘은 이제 아예 자리에 앉아\n한참을 떠든다.\n\n\"간만에 비슷한 사람이랑\n얘길 하니까 좋네!\"\n\n할머니의 오지랖이\n갑자기 발동됐다!\n\n\"자자, 이것 좀 가지고 가시오!\"\n\n할머니는 식량을 나눠준다.\n가방이 홀쭉해졌다...\n\n\"도와줘서~ 고마워유~.\"\n\"근데 와 혼자 댕기고 그라노?\"\n\n느긋느긋한 강원도 사투리를 쓰는\n강지현 할머니는\n혼자 다니는 건 아니라고 한다.\n\n\"지는 쩌어기~ 을숙도 끄트머리로\n두 달 전 쯤 들어왔슈~\n최근에 거기 자리를 잡은 군인들 몇 명이~\n우릴 쫓아내지 뭐예유~\"','낮',NULL,NULL,NULL,NULL),(63,'13-3','군인이 할머니를 쫓아내?\n할머니를 잡는게 아니라?\n강씨 할머니는 부산에 막 도착한 지 얼마 안돼\n바로 이곳에 강제로 들어왔다고 한다.\n\n그리고 강씨 할머니는\n오늘 아침에 손자와 헤어졌다고 한다.\n\n\"곧 찾겄쥬~ 여기서 헤어져서\n딴 데 안가고 여기 있을라 해유~\n아이구, 그나저나, 이렇~게\n갈대랑~ 새 밖에 없는 곳에~\n왜이렇게 사람을 모아놨데유~\n아~무리 밖이 난리라구 하지만~\"\n\n밖이 난리라고 ?\n궁금한 걸 더 물어보려는 그때,\n강씨 할머니의 손자가 할머니를 찾았다!\n\n\"정말 감사합니다.\"\n\n할머니는 신이 나서 \n물건을 더 행겨 준다.\n\n그런데 밖이 난리나는 말이\n자꾸만 마음에 걸린다.\n\n특수구역에도 한 번도\n가보신적이 없다니...\n어떻게 된 일일까?\n\n//-무기 -식량','낮',NULL,NULL,NULL,NULL),(64,'14','오늘 밤엔 비가 온다.\n밤에 비가 오자\n많이 추워진다.\n\n아무래도 탐색을 나가기가\n힘들 것 같다.\n\n거처 안에 있기로 하는데,\n할머니가 몸을 오들오들 떤다.\n할머니 몸도 안좋은데...\n어떻게 하지?\n\n거처 안에 불을 세게 피울 순 없다.\n몸을 따뜻하게 할 만한 게 필요하다.','밤',NULL,NULL,NULL,NULL),(65,'14-1','어떻게 추위를 덜어드릴까 생각해도\n좋은 방법이 떠오르지 않는다.\n나는 할머니를 끌어안기로 했다.\n\n\"할머니...\"\n\"그래... 지우야...\"\n\n할머니도 나를 꽉 껴안아준다.\n\n우리는 서로를 부둥켜안고\n겨우겨우 잠이 들었다.\n\n그래도 추운 건 어쩔 수 없었다.\n할머니와 나는 나란히 감기에 걸렸다.\n\n열이 오르는 할머니를 보니\n마음이 좋지 않다.\n\n몸이 무겁다...\n\n// 체력 -2\n// 정신력 -1\n// 상태이상 + 감기','밤',NULL,NULL,NULL,NULL),(66,'14-2','커다란 침낭을 꺼냈다.\n그리고 불을 피우자\n한결 따뜻하다.\n\n할머니의 몸 떨림도\n조금 잦아들었다.\n\n모두 침낭에서\n몸을 웅크리고 잠이 들었다.\n\n2년 전의\n따뜻하고 푹신한 침대가 그립다...\n\n// 체력 -1','밤',NULL,NULL,NULL,NULL),(67,'15','오늘은 강가로 나왔다.\n\n멀리 군인 서너명이\n몰려 다니는 게 보인다.\n\n저들은 갈대밭에 가린 우리를\n아직 발견 못한 것 같다.\n\n아무래도 을숙도를 돌아다니며\n종종 마주치는 저 군인들은\n건물들이 모여 있던\n특수구역의 군인들과는\n다른 군인들 같다...\n차림새나 행동이 다르다.\n\n까만 군복을 입은,\n특수구역의 군인들은\n밖으로 나와 한 번도 본적이 없다.\n\n확실한건 \n저기 보이는 군인들은\n우리를 이 곳으로 데리고 온 군인들이 아니다.\n\n원래 있던 곳에서 흔히 볼 수 있었던\n그런 군인들인 것 같다.\n\n그 군인들은 오랜 기간 계속되는\n전쟁들때문에 굉장히 피폐해 보였지만\n그래도 민간인들을 다치게 하지 않았다.','낮',NULL,NULL,NULL,NULL),(68,'15-1','군인들에게 가까이 다가갔다.\n역시 그들은 나를 심하게 경계하지는 않는다.\n다만, 할머니에게 오랫동안 눈길이 머문다.\n\n\"혹시... 을숙도에는 왜 오신 건가요?\"\n\n군인들은 떨떠름한 표정이다.\n질문을 잘 못 했나?\n\n한 군인이 입을 연다.\n\n\"군인이 이유가 있어서 움직이겠습니까,\n상부의 명령때문입니다.\"\n\n그는 조금 까칠하다.\n그래도 질문을 멈추지 않았다.\n\n\"여기는 이미... 군인들이 있는 것 같던데...\"\n\n\"저희도 여기 와서 처음 알았습니다.\n그렇게 넓지도 않은 곳인데,\n군인들이 제법 있는 편이니...\"\n\n그때 다른 군인이 커다란 무전기를\n퍽퍽 소리나게 때린다.\n\n\"무전기가 이렇게 자주 먹통이 되다니\n아주 짐덩어리야.\"\n\n까칠했던 군인이 우리 눈치를 슬쩍\n한 번 살핀다.\n\n가까워진 김에 나도\n이들의 행색을 꼼꼼히 훑었다.','낮',NULL,NULL,NULL,NULL),(69,'15-1','특수구역의 군인들과는 달리,\n이들은 행색이 꾀죄죄하다.\n오랫동안 밖에서 야영을 한 것 같다.\n\n\"그럼 을숙도에는 배를 타고\n들어오신건가요 ?\"\n\n\"뭐.. 들어올 때는 그랬습니다...\n육로는 계속 막혀있었고요.\n당분간 나갈 일이 없으니 뭐...\"\n\n\"밖으로 나갈 일이 없다뇨?\"\n\n\"말 그대로입니다.\n을숙도 밖은... 아시잖습니까?\n보급을 넉넉하게 가지고 들어왔긴 한데...\"\n\n질문이 길어지자 군인이\n의심의 눈초리를 보낸다.\n\n\"죄송하지만, 노인분을 데리고 있으니\n이제 그만 돌아가주셔야겠습니다.\"\n\n그는 더 이상 입을 열지 않는다.\n군인들이 우리를 경계하기 시작한다.\n\n이제 더이상 질문하기는 힘들다.','낮',NULL,NULL,NULL,NULL),(70,'15-2','을숙도에 왜 군인들이 이렇게 많을까?\n넓어졌다고는 해도 그렇게 넓은 곳이 아닌데...\n\n아무튼간에 이곳이\n매우 중요한 곳이라는 건 확실하다.\n\n무슨 일을 하고 있길래\n을숙도가 이렇게 중요해진 걸까?\n\n역시 사람들을 좀비로 만드는\n그 일 때문일까?\n\n박씨 할머니의 모습이 다시 떠오른다.\n끔찍한 모습이었다.\n\n이 전쟁통에\n사람들을 왜 좀비로 만드는 거지?\n전쟁에서 이기려면\n이렇게 잔인한 짓도 해야한다는 걸까?\n\n의문이 꼬리를 잇지만,\n그래도 결론은 하나로 모인다.\n역시... 뭔가가 잘못되고 있다!','낮',NULL,NULL,NULL,NULL),(71,'15-3','아무래도 이 군인들은 강가쪽에\n거처를 마련한 게 확실한 것 같다.\n\n그렇다면, 을숙도를 나가려면\n강가에 있어야 하지 않을까?\n\n그래! 저들은 을숙도 밖과\n교류를 할 수 있는거야!\n\n그러니까 교류가 용이한 곳에\n거처를 마련한거고!\n\n머리속에 조각조각난 정보들이\n한 곳에 모인다.\n\n탈출하려면 이곳이다!\n이곳을 중점적으로 살펴봐야한다!','낮',NULL,NULL,NULL,NULL),(72,'10-1','\"덕분에 회복은 했지만!\n그렇게 놔두고 가서 거의 죽을 뻔 했다고!\n\n먹을 게 있으면 내놔!\"\n\n총을 들고 위협하는 그의 기세에\n우리는 조용히 식량을 내놓았다...\n\n\"다시 마주치면...\n그땐 우린 적이다...!\"\n\n군인은 이상한 말을 끝으로 하고\n거처를 나갔다.\n\n// 식량 -3\n// 만약 식량이 없으면\n체력 -1','밤',NULL,NULL,NULL,NULL),(73,'10-2','나도 문틈으로 조용히\n권총 총구를 내밀었다.\n\n군인은 잠시 흠칫, 몸을 떨더니\n한동안 나를 계속 노려봤다.\n\n숨막히는 대치가 시작됐다.\n먼저 꼬리를 내린 건 군인이었다.\n\n\"쳇, 총을 가지고 있는 줄 몰랐군.\n밤에 총을 쏴봤자 좋을 게 없으니...\n오늘은 봐주도록 하지.\n\n다음에 만났을땐...\n우린 적이다!\"\n\n군인은 곧 어둠속으로 사라졌다.\n\n우리는 밤새 군인이 다시 올까봐\n공포에 질려있었다.\n\n// 정신력 -1','밤',NULL,NULL,NULL,NULL),(74,'10-3','먼저 총구를 들이민 건 저쪽이다.\n나는 우리 조원들과 할머니를\n지켜야 할 의무가 있다!\n\n나는 품에서 바로 권총을 뽑아들고\n군인을 쐈다!\n\n큰 소리가 나며 군인이 뒤로 넘어진다.\n\n서툰 사격 솜씨지만...\n그래도 제대로 맞춘 것 같다.\n\n\"너,,, 너어,,,,!\"\n\n군인은 쉰 목소리로\n무시무시한 저주와 악담을 퍼붓더니,\n\n잠시 뒤 죽어버렸다.\n우리는 잠도 못잔 채\n그의 시체를 먼 곳에 다시 버리고 왔다.\n\n거처 앞의 핏자국이 거슬린다....\n정당방위였다...\n정당방위, 였다...\n...\n정당방위,\n가, 맞겠지?','밤','칭호 살인마',NULL,NULL,NULL),(75,'10','밤이다.\n거처를 막 나서려고 할때,\n누군가 문을 거칠게 두드린다.\n\n누구지?\n경계태세를 갖추고\n문을 조금만 열어봤다.\n\n문틈으로 낮에 봤던\n상처입은 군인이 보인다.\n\n\"너...! 그렇게 약만 던져주고 가면 다야?\n내가 얼마나 고생했는 지 알아?\n죽을 뻔 했다고!\"\n\n그는 문틈으로 총신을 들이민다.\n검은 총신이 보이자\n몸이 굳는다.\n\n\"좋은 말로 할때\n가진 걸 좀 내놔야겠어.\n배가 고프거든.\"',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `origin_chapter2` ENABLE KEYS */;
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
