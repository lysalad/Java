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
-- Table structure for table `chapter1_storyonly`
--

DROP TABLE IF EXISTS `chapter1_storyonly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapter1_storyonly` (
  `StoryId` int NOT NULL,
  `StoryNum` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `StoryMain` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `StoryTime` int DEFAULT NULL,
  `check` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`StoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter1_storyonly`
--

LOCK TABLES `chapter1_storyonly` WRITE;
/*!40000 ALTER TABLE `chapter1_storyonly` DISABLE KEYS */;
INSERT INTO `chapter1_storyonly` VALUES (1,'0-1','온 세상이 싸우고 있다.\n누가 누구랑 어떻게 싸우는지는\n이제 중요하지 않을 정도로\n싸움은 커져만 간다.\n\n우리나라는, 지리적 위치 때문인지\n전쟁의 한복판에 있다.\n매일 하늘을 가로지르는 미사일 소리와\n전투기 소리가 시끄럽다.\n\n하루에 두 시간 정도\n겨우 켜지는 비상 송출 라디오 방송에서는\n어느 지역에 인명 피해가 얼마나 발생했다더라,\n하는 암울한 소리만 흘러나온다.\n\n부산은 6.25 전투 때처럼 최후의 보루가 되었다.\n그래서 다른 지역들보다 안전하다고는 하지만,\n전국 각지에서 모여든 전쟁 난민들로\n매일매일 크고 작은 사건들이 끊이질 않는다.\n\n사람들은 옆집 수저가 몇 벌인지를 아는 수준을 넘어\n서로를 감시하기 시작했다.\n\n보급을 자기보다 조금이라도 더 받았을까봐,\n\n난민이면서 부산 토박이인 자기들보다\n더 이익을 받았을까봐,\n\n대피소에서 더 좋은 자리를 차지했을까봐.\n\n이유도 가지각색이다.',NULL,NULL),(2,'0-2','사람들의 생계 수단도 극적으로 바뀌었다.\n정부는 전국 단위로 크고 작은 일거리들을 나눴는데,\n부산에서 주로 담당하게 된 일은\n해양 자원 채취와 운송 업무다.\n\n사람들은 모두 몸을 쓰는 노역을 해야만\n보급을 받을 수 있다.\n\n그래도 어찌저찌 하루가 지나간다.\n죽음의 그림자가 캄캄하게 우리를 감싸고 있지만...\n\n분명 2년 전만 해도 세상은 지금과는 완전 달랐는데...\n나는 그냥, 취업 준비나 열심히 하면서\n학원이나 다니던 취준생 1이었는데...\n\n어딘가에서 쿵, 쿵, 시끄러운 소리가 계속 들린다.\n잠이 오지 않는다.\n\n내일은 보급이 제대로 나올까,\n보급에 식수는 얼마나 들어있을까,\n내일은 무슨 일을 몇시간이나 해야할까,\n내일 방송에선 또 어떤 말들이 나올까,\n부산 근처에서 또 전투가 일어나진 않을까,\n\n걱정도 산더미라 자리에서 뒤척거리고만 있는데\n할머니와 동생은 잘만 자고 있다.\n잠들어야지, 잠들어야지,\n억지로 눈을 감아보지만 잠이 오지 않는다.\n\n화음을 맞춰 코를 고는 소리도 들린다.\n코를 심하게 고는 사람들만\n따로 파티션 너머에서 자도록\n대피소 구역을 나눴는데도 이렇다.\n\n결국 자리를 박차고 일어났다.\n잠깐 바깥 공기를 쐬고 오면 잠이 오겠지.',NULL,NULL),(3,'0-3','밖으로 나와 대피소 근처,\n인적이 드문 건물 틈 사이에 몸을 기댔다.\n\n마른세수만 거듭하게 된다.\n벌써 일주일 째 대피소에 박혀있다.\n이번엔 언제 다시 집으로 돌아갈 수 있을까.\n\n웅웅거리는 소리를 뚫고\n무거운 군홧발 소리가 멀리서부터 들린다.\n주위에 경비를 도는 군인들인가보다.\n새벽에 밖에 나와 있어서\n좋은 소리를 들을 일은 없으니 몸을 숨겨야지.\n나는 건물 틈 깊숙이 몸을 구겨 넣었다.\n\n발자국 소리가 멈췄다.\n무전기에서 치직거리는 소리가 들렸기 때문이다.\n\n- 삼번 갈매기, 삼번 갈매기, 여기는 일 번 갈매기다.\n들리는가. 응답하라. 오버.\n\n“예, 삼번 갈매기, 듣고 있습니다. 말씀하십시오. 오버.”\n\n- 일정을 앞당겨야겠다. 수송차를\n바로 오늘 오전에 보내겠다. 오버.\n\n“예! 알겠습니다! 대피소 인원 총57명 중 12명,\n수송하겠습니다. 오버!”\n\n- 11시 전에는 도착하겠다.\n지금까지 일 번 갈매기였다. 통신 오버.\n\n내일 오전? 열두명?\n갑자기 머리가 팽팽 돌아간다.\n정부에서 사람들을, 그것도 어린이와 노인들만 데려간다는\n“그 괴담”이 사실이었을까?\n\n천천히 대피소 사람들의 얼굴을 떠올려봤다.\n하나, 둘, 셋... 열하나...\n우리 할머니... 딱 열두명이다!\n\n온몸에서 피가 빠져나가는 것 같다.\n어떻게 해야하지?',NULL,NULL),(4,'0-4','나는 원래 취준생이었다.\n다시 개발자가 떠오르는 직종이 되었다길래,\n열심히 학원에 다니는 중이었다.\n\n동생과 술 한잔을 하며 같이 할머니께 효도하자고...\n마주 보고 웃던 게 엊그제 같은데...\n\n그래, 이렇게 할머니를 순순히 보낼 순 없어.\n거기가 어디든 할머니를 혼자 보내지 않을 거야!\n\n나는 몰래 대피소에 남았다.\n\n\"할머니!\"\n\"니, 일 안 나가고 뭐했노?\"\n\"나, 오늘 배가 좀 아파서...\"\n\"배가 아프나? 많이? 우야노, 약은 뭇나?\"\n\"응 나 약 먹었다.\"\n\n최근 들어 부쩍 건강이 안 좋아진 할머니는\n피난소 안이 자꾸 춥다며\n늘 두껍게 옷을 껴입고 계신다.\n\n오늘도 할머니가 옷을 두껍게 껴입고 있다.\n...이런 할머니를 어떻게 혼자 보내!',NULL,'붕대+2'),(5,'1-1','우리는 차를 타고 어디론가 이동했다.\n수송차 내부는 아수라장이었다.\n갑자기 낯선 곳으로 나온 아이들이 불안한 탓에 계속 울었기 때문이다.\n\n할머니 할아버지들은 아이들을 달래느라 정신이 없었다.\n나도 아이들을 계속 달래야만 했다.\n\n두꺼운 벽 너머의 군인들은 우리에게 관심이 전혀 없다.',NULL,NULL),(6,'1-2','얼마나 달렸을까.\n빽 빽 울다가 지쳐나가떨어진 아이들이\n하나 둘 잠들기 시작할 때 쯤 차가 멈춰섰다.\n차 문이 드르륵, 힘있게 열렸다.	\n\n총을 든 군인이 우리를 맞이한다.\n평소에 볼 수 있는 군인들과는 조금 다른 행색이다.\n무장한 군인을 처음 본 건 아니지만, 볼때마다 심장이 쿵쾅거린다.\n\n\"모두 내리십시오.\"\n\n사람들이 하나 둘 천천히 찿에서 내리기 시작한다.\n할머니가 차에서 내린 순간, 갑자기 커다란 총성이 들린다.\n높은 비명소리와 낮은 비명이 뒤를 잇는다.',NULL,NULL),(7,'1-3','하지만 웅성거리는 소리는 들린다.\n나도 모르게 다리에 힘이 풀려 주저앉았지만,\n사람들의 웅성거림에 주의를 집중했다.\n\n\'...  사람이 죽었대!\'\n\'.... 사람이 죽었어!\'\n\'총에 맞았어! 사람이 죽었어!\'\n\n... 사람이 죽었다!\n정말 총을 맞고 죽은 건가?\n나는 차에서 뛰어내려 할머니 손을 잡았다.\n\n그제야 주위를 둘러볼 수 있다.\n넓은 공터에 많은 사람들이 모여있다.\n모두 할머니와 비슷한 노인들이거나, 어린 아이들이다.\n\n총성에 놀란 아이들이 그제야 울기 시작한다.\n공터가 다시 시끄러워진다.\n모두 혼란스럽다.',NULL,NULL),(8,'1-4','평소에도 군인들에게 질문이 많았던\n김용덕 할아버지께서 거의 울먹이며\n군인에게 질문한다.\n할아버지의 얼굴이 하얗게 질려있다.\n\n\"여기가 어딥니까?\"\n\"을숙도 특수구역입니다.\"\n\n을숙도?\n많이 들어보기는 했지만\n잘 와보지는 않은 낯선 곳이다.\n우리는 왜 을숙도에 온거지?\n\n\"왜 우리가 을숙도에 왔나요?\"\n\n장금순 할머니도 덜덜 떨면서 질문한다.\n\n\"정부의 지침입니다.\n다시 정부의 지침이 있을 때 까지,\n여러분들은 여기서 지내게 됩니다.\"',NULL,'선택지'),(13,'1-5','시계가 없으니 시간이 어떻게 지나가는 지 알 수 없다.\n초가을 볕을 오래 쬐었더니 현기증이 나는 것도 같다.\n\n사람들의 웅성거림도 조금씩 잦아들기 시작한다.\n사람들이 여러 갈래로 찢어져\n군인들의 인솔 아래 움직이고 있기 때문이다.\n아이들은 군인이 아닌 다른 사람들을 따라 어디론가 간다.\n\n곧 우리 대피소 사람들을 에워싸고 있던 군인들도\n일렬 횡대로 서더니 한 명씩 이름을 부른다.\n이름이 불린 사람들은 겁에 질려 군인의 뒤를 따른다.\n\n나와 할머니도 이름을 부르는 군인을 따라 걸음을 옮겼다.\n할머니의 손을 꼭 붙잡았다.\n할머니도 내 손을 꼭 붙잡는다.',NULL,''),(14,'2-1','군인은 우리를 커다란 건물의 커다란 방 안으로 이끌었다.\n건물과 방은 최근에 만든 것 같다.\n희미한 새 건물 냄새가 났다.\n\n방 안에는 이미 온 사람들로 차있다.\n역시나 대부분 노인이긴 한데\n노인의 옆에는 보호자인것 같은 다양한 연령대의 사람들도 조금 있다.\n\n저 사람들은 모두 보호자로 여기까지 온 걸까?\n아니면 나처럼 탈출 계획을 가지고 있는 사람이 있을까?\n\n방 안을 둘러보기로 한다.',NULL,NULL),(15,'2-2','다른 사람들보다 옷차림이 훨씬 더 말쑥한 여자 한 명이\n사람들과 약간 떨어진 곳에 혼자 앉아있다.\n모자 안쪽에 명품로고가 가득 박힌 모자를 쓰고 있다.\n\n가까이 다가가자 얼굴을 찌푸린 그녀의 표정이 보인다.\n발목이 부어있는데, 발목을 삔 것 같았다.',NULL,'선택지'),(18,'2-3','범상치 않은 민머리할아버지가 뭔가를 하고있다.\n궁금해져서 말을 걸어본다.\n\n\"지금 뭐하고 계세요?\"\n\"수련 중이다!\"\n\"수련이요?\"\n\"그래, 난 개금에서 체육관을 운영했었다.\n왕년엔 주먹으로 많은 사람들을 다스렸었고!\n오늘 치 운동량을 전부 못채웠드만 몸이 간지럽노 허허\"\n\n장주먹 할아버지는 열심히 몸을 움직이신다.\n하지만 그리 날렵해보이진 않는다...\n나이가 드셔서 그런가보다.\n\n\"내가 말이야! 200년에 한 번 나올까말까하는\n살골을 가졌다~! 이말이야!\n내가 느그 서장이랑 같이 밥 묵고! 사우나도 가고!\"\n\n할아버지는 이상한 소리를 하기 시작한다.\n다른 곳으로 가보자.',NULL,NULL),(19,'2-4','어떤 할머니가 갑자기 나에게 말을 걸었다.\n나보고 손자라고 한다.\n빨갛게 충혈된 눈으로 말을 걸어서 \n모르는 척 할 수가 없다.\n\n그냥 같이 앉아서 대화를 하기로 한다.\n할머니는 치매끼가 보이는듯 하다.\n자꾸 나를 딸이라고 했다가, 아들이라고 했다가, 손자라고 한다.\n\n할머니 말을 다 믿지는 못하지만 자기가 왕년에 잘나가던 부장판사라고 한다.\n\n\"내가 감방으로 보낸 놈들이 손으로 셀 수 가 없다!\n내가 마 얼마나 무서운 사람이었는지 아나??\n내가 잠도 법전을 베고 자던 사람이다.\n보여줄까?\"\n\n저 말을 믿어야할까...?',NULL,NULL),(20,'2-5','누워있는 사람의 주머니를 뒤지는 놈을 발견했다.\n가까이 가서 말렸다.\n\n\"아저씨 뭐하세요? 아는 분이예요?\"\n\"우리 엄만데 왜?\"\n\n나의 큰 목소리에 누워있던 사람이\n깜짝 놀라서 깼다.\n\n\"에그머니나 느그 뭐고? 내 딸래미 어디있노?\"\n\n이 아저씨가 주머니를 뒤지고 있었다는 사실을 전하니\n누워있던 사람이 보호자를 찾으러 자리를 떴다.\n\n여기까지 와서도 도둑질이라니...',NULL,NULL),(21,'2-6','문을 두드리며 농성 중인\n할아버지를 발견했다.\n\n기름지고 떡진 긴 머리를 가진 그 사람은\n등이 심하게 굽어있었지만\n목소리는 노인같지 않다.\n그런데 뭐라고 하는거지?\n\n\"이 건방진,,, 인간들!..\n감히 \"킹갓제너럴엠페럴\"인\n이 몸을 여기에 가두다니!\n\n내가 누군지 알아 ?\n내가 바로!\n태초마을 출신의 검술 마스터!\n고모리란 말이다!\n\n이 건방진 필멸자들아!\n내 오른손의 흑염소가\n날뛰기 전에!\n어서 날 여기서 풀어줘!\n안그러면-.\n여기에-.\n피바람이 불것이다!\"\n\n이상한 사람인 것 같다.\n다른 사람들도 피하는 이유가 있다.',NULL,NULL),(22,'2-7','TV 프로그램 <생활의 달인>에 나왔던 숨바꼭질의 달인\n한은둔 할아버지다!\n제작진들이 10일 동안 찾지 못해서 철수했다가\n겨우겨우 촬영할 수 있었다던 전설의 인물이다.\n미처 못숨었나? 여기 왜 잡혀왔지?\n\n\"내가... 잡혀왔다고 생각하나?\n나는... 스스로 잡힌거라네...\n이제 숨는 일에 지쳤어...\n누구도 나를 찾지 못해서\n10일 동안 얼마나 외로웠는지 몰라\n정말 사람과 소통하고 싶어 죽는줄 알았다고\n니가 알아?\n숨는데 너무 몰입하다 보니\n그만 서울에서 부산까지 와버렸군,,, 크큭,,,\n근데 여기는 어딘가?\"\n\n아무래도 할아버지는 숨기만 잘하는 것 같다.',NULL,NULL),(23,'3-1','굳게 닫혀있던 문을 열고\n까만 군복을 입은 군인 무리들이 들어왔다.\n\n그 중에 한 명이 앞으로 나선다.\n역시 총을 들고 있다.\n그의 표정은... 우리를 측은해하는 것 같은, 그런 눈빛이다.\n\n\"여러분. 갑자기 이곳에 소환당해서 많이 놀라셨으리라 생각합니다.\n이곳은 정부가 마련한 쉼터입니다.\n항간의 소문처럼 여러분들에게 해가 되는 일을 하거나 하지는 않으니\n걱정하지 마시고, 앞으로 이곳에서 격리해제가 될 때까지 머무시면서\n지시를 따라주시면 감사하겠습니다.\"\n\n투박한 생김새와는 달리 차분한 어조로 설명한다.\n그가 말을 잇는다.',NULL,NULL),(24,'3-2','\"많은 인원을 효율적으로 관리하기 위해 조를 편성하도록 하겠습니다.\n한 조는 네다섯명으로 구성해주시면 됩니다.\n각자 알아서 조를 짜 주십시오.\"\n\n이런 곳에 와서도 지옥의 조별 과제라니!\n믿을 수 없다.\n\n나는 오전에 마주쳤던 사람들의 얼굴을 떠올렸다.\n그 사람들이랑은 조가 되기 싫어.\n\n하지만 사람들은 언제 친해졌는지 벌써 삼삼오오 짝을 이뤘다.\n남은 인원은... 방을 돌아보며 마주쳤던 사람들 뿐이다...',NULL,'선택지'),(31,'4-1','여기서는 매일매일이 똑같다.\n매일 같이 지내다 보니 조원들과도 정이 들었다.\n\n할머니 할아버지들은 이틀에 한 번씩\n정체를 알 수 없는 주사를 맞는다.\n처음에 주사를 맞지 않으려고\n강하게 반발하는 사람들도 있었다.\n\n\"우리 엄마한테\n왜 알지도 못하는 주사를 맞게 해야하냐고!\"\n\n군인이 아닌, 실험복을 입은 사람이\n와서 그를 말린다.\n\n\"선생님.. 이러시면 곤란합니다...\n노약자들은 꼭 일정하게 주사를 맞아야...\"\n\n\"안돼! 우리 엄마한테 하지마!\"\n\n아저씨는 소리를 치고, 바닥에 물건을 집어던지며 난동을 부린다.\n총 든 군인이 와서 말릴 때 까지 아저씨는\n얼굴이 시뻘개져서 버럭버럭 소리를 질렀다.',NULL,NULL),(32,'4-2','그렇게 소리를 치던 아저씨는\n왜인지 그다음날부터 보이지 않았다.\n그리고 아저씨의 엄마라던 그 할머니도...\n\n그 뒤로 사람들은 군말없이\n이틀에 한 번씩 주사를 맞는다.\n\n사라진 아저씨와 할머니는 어디로 간걸까.\n어떻게 된 걸까.\n\n\"아이구... 야야...\n나는 괜찮다...\"\n\n우리 할머니는 매일 괜찮다며 웃어보이지만,\n할머니가 걱정된다.\n\n의문도 있다.\n잡아왔다고 하기에는 매일 세 끼 배식이 잘 나온다.\n어제는 소고기도 나왔다.\n전쟁이 일어난 후 처음으로 먹어본 소고기다.\n\n그래서인지 사람들은 두려워 하면서도\n매일 식단을 기대하며\n이곳에 빠르게 적응하고 있는 듯 하다.',NULL,NULL),(33,'4-3','잡아온 것 치고는 지나치게 좋은 음식들...\n감옥에 있는 죄수들의 식단이\n군인들보다 더 좋다고 하더니\n우리나라의 특징인가?\n\n나는 매일매일\n인원수를 살핀다.\n한 명 두 명 보이지 않는 사람들이\n늘어나는 것 같기도 하다.\n\n그리고 매일 이 건물을 벗어날 수 있는\n방법은 없을까 여기저기 살피고 있다.\n\n우리도 저렇게 사라지기 전에...!\n할머니와 함께 여길 빠져나가야해!\n\n그 전에 점심을 맛있게 먹자.\n오늘은 고등어구이란다.',NULL,NULL),(34,'4-4','보름이 더 지났다.\n사람들이 아주 조금씩 줄어들고 있는 것 같다.\n\n그리고 배식도...\n이전보다 점점 부실해지기 시작한다.\n\n사람들은 음식의 질이 떨어진다며\n항의하기 시작한다.\n\n하지만 군인들은 입을 꾹 다물고\n어떤 질문에도 대답해주지 않는다.\n\n이곳에 남아있어야 할\n마지막 이유가 사라졌다!\n이제 정말 탈출을 미룰 수 없다.\n여기서 나가야만한다!',NULL,NULL),(35,'5-1','이 곳을 나가기 위해서 나는 매일 밤마다\n사람들을 돌보는 척 하며 여기저기를 관찰했다.\n그러다가 화장실에는 작은 창문이 있는걸 발견했는데,\n그곳을 통해 일단 밖으로 나가보기로 했다.\n\n이곳에는 의외로 군인의 수가 그렇게 많지 않다.\n그래서 그런지 화장실을 지키고 있는 군인의 수도 고작 한 명이다.\n\n건물 밖은 어떤 상황인지 전혀 알 수 없다.\n분명한 것은 이 건물 밖에도 또 다른 공간이 있다는 것이다.\n여긴 을숙도라고 했으니까.\n\n함께 여기서 빠져나갈 사람을 구해봤지만\n아무도 지원하지 않았다.\n우리 조만 나가보기로 했다.\n커다란 가방안에\n몇개 없는 짐을 챙겼다.\n\n한 명씩 숙소를 빠져나와\n화장실에서 모였다.\n작은 창문을 통해 건물 밖으로\n나가려는 순간,\n\n\"지금 뭐하시는 겁니까?\"\n\n군인에게 들켰다!\n하지만 군인은 한 명 뿐이다!\n할 수 있을까?\n\n//+ 생수 2병 + 붕대 2개 + 과자 2봉지',NULL,'선택지/아이템+'),(38,'6-1','군인을 떨치고 겨우겨우 빠져나왔다.\n특수구역을 빠져나가면 무엇이 우리를 기다릴지 모르니\n만반의 준비를 하는 게 좋겠다.\n\n어떻게 하지?',NULL,'선택지'),(42,'6-2','심장이 터질것 같다.\n우리 전부 무사히 건물을 빠져나왔다.\n우리가 있었던 건물과 똑같이 생긴 건물들이 수십개가 있다.\n\n멀리 뒤에 높은 철창이 보인다.\n또 저길 넘어가야겠지...?\n\n이제 다음목표는 여기 저 철창을 넘어 밖으로 나가는 것이다.\n여기는 을숙도라고 했으니까, 이제 을숙도 밖까지 나가는 것이 우리의 최종 목표다.\n\n그런데 엄청나게 많은 인원이 있는 것 치고는\n배치된 군인들의 숫자가 그리 많은 것 같지는 않다.\n\n우리는 군인들의 감시를 피해\n조심히 밖으로 나가기로 했다.\n\n철창 쪽을 관리하는 군인들은 거의 없다시피 하다.\n철창에는 문도 있었는데, 잠겨있다.\n\n문을 어떻게 할까 ?',NULL,'정신력-1'),(47,'7-1\r ','철문 밖으로 나왔다.\n이제 을숙도다!\n우리는 을숙도를 나가 육지로 갈 거다.\n\n을숙도는 기후변화로 조금 잠겼지만,\n원형을 많이 유지하고 있다.\n\n철새 도래지로 유명한 건 옛말인 것 같다.\n지금은 황량하기 그지없다.\n\n볼품없는 갈대들만 자리를 차지하고 있을 뿐이다.\n이름모를 나무의 앙상한 나뭇가지들만 길바닥에 떨어져 있을 뿐이다.',NULL,'선택지'),(50,'7-3','그때 갈대 숲 안에서 부스럭 거리는 소리가 나더니\n사람이 비틀비틀 거리며 우리에게 천천히 걸어온다.\n\n\"아니, 저건... 박씨 할매 아이가?\"\n\n할머니가 눈을 가늘게 떠 누군지 확인했다.\n그런데 박씨 할머니의 상태가 이상하다.\n\n그르렁 그르렁 이상한 소리를 내고,\n피부 색깔도 푸르딩딩하면서 어딘가 초록빛이다.\n가까이 올 수록 심한 악취도 난다.\n\n\"할매! 어디 아프나!\"\n\n왠지 싸한 느낌이 든다.\n할머니가 가서 박씨 할머니를 붙잡으려 하기 전에\n내가 먼저 할머니를 말렸다.',NULL,'선택지'),(54,'7-4','박씨 할머니에게서 벗어나\n한참을 걸었다.\n그 뒤로는 다행히 좀비들과 마주치지는 않았다.\n\n어딘지도 모를 길을 계속해서 걸었다.\n휴대폰이나, 못해도 지도 있었으면 좋았을텐데..\n\n무작정 걸어도 계속 갈대들만 무성하다.\n해가 서쪽으로 지기 시작하고 저녁이 오기 시작했다.\n\n우리는 운좋게\n시설이 잘 갖춰진 빈 건물을\n발견했다.\n\n이곳을 거처로 삼기로 한 우리는\n휴식을 취했다.',NULL,NULL),(55,'7-5','모두 고됐는지\n깊이 잠에 들었다.\n그때 누군가 문을 두드린다.\n\n나는 선잠에 들어있어서 금방 자리를 박차고 일어났다.\n내가 일어나는 소리에 할머니도 잠에서 깬다.\n\n나는 문가로 서서히 다가갔다.\n문 밖에서 소리가 들린다.\n\n\"저기요~! 계십니까!\"\n\n\"누구세요?\"\n\n나는 멍청하게 누구냐는 질문을 했다.\n\n\"저는 지나다니는 행상인입니다!\"\n\n행상인?\n이런 곳에도 행상인이 있었나?\n\n문에 귀를 대고 한참을 들어도\n인기척이 거의 들리지 않는다.\n\n나는 경계를 늦추지 않고\n문을 조심스레 열었다.',NULL,NULL),(56,'7-6','밖에는 낡은 군복을 입은 군인이 한 명 서있다.\n\n\"아! 잠깐잠깐! 나는 그런 군인이 아니야!\n군인에서 손 턴지 오래라고!\"\n\n한주탈은 을숙도에 왔을 때 진작에 탈영한 군인으로,\n지금은 을숙도에 눌러앉아 행상인을 하고 있다고 한다.\n\n을숙도에서 나가지 못했거나,\n원래 을숙도에서 살고 있는 사람이 조금 있다고 한다.\n\n그는 우리 집에서 어른거리는\n불빛을 보고 왔다고 한다.\n\n\"낮에는 눈에 띄면 안되니까!\n밤에는 날 찾아달라고~\n유용한 물건이 많아!\"\n\n그는 물건을 많이 모아\n을숙도 밖에서 팔아\n부자가 되는 게 꿈이라고 한다.\n\n//상점 개방 해주기',NULL,NULL),(57,'7-7','오늘 하루는 걷기만 하다가 끝이 났다.\n주위가 검은 색으로 물들기 시작하니\n야생동물의 울음소리도 들리고,\n이상한 소리도 나는 것 같다.\n\n우리는 좀 전에 봐뒀던\n빈 건물 하나로 들어갔다.\n\n그곳엔 쇼파도 있고, 침대도 있고,\n문도 잠글 수 있다.\n우리는 이곳을 거처로 삼기로 했다.\n\n밤바람이 차다.\n우리는 불을 작게 피우고\n잠들었다.',NULL,NULL),(58,'7-8','아침이 왔다.\n우리는 모두 피곤한 몸을 일으켰다.\n\n그때 문을 긁는 소리가 난다.\n문가에 가보니 낑낑거리는 소리도 난다.\n강아지다!\n\n작은 몸집으로 간신히 눈을 뜨고 색색 숨을 쉰다.\n목이 마른건지 혀를 내밀고 있다.',NULL,'선택지'),(61,'8-1','갑자기 하늘에서 목소리가 들려온다.\n뭐지?\n\n\"안녕하세요!\n저희는 GM이에요!\n\n드디어 특수구역을\n무사히 벗어나셨군요!\n\n당신은 이제 을숙도를 탈출해야합니다.\n살아남아 할머니와 함께\n무사히 을숙도를 빠져나가세요!',NULL,''),(62,'8-2','밤에는 거처에서 쉬거나,\n상점에 방문할 수 있습니다.\n\n상점에서는 당신이 가진 물건과\n상점의 물건을 교환할 수 있습니다!\n\n말씀드리지 않은 게 더 많지만...\n그건... 게임 하면서 알아가자구요!\n\n자아... 그럼,\n저희를 만났다는 걸 기억하면 안되니까!\n\n레드 썬!\n당신은 이 사실은 기억하지만\n우리를 기억하지는 못합니다!\"\n\n환한 빛이 우리를 감싼다.',NULL,NULL),(63,'8-3','...갑자기 정신이 아득해졌다.\n\n뭐야? 무슨 일이 있었나?\n머리가 상쾌해진 느낌이다!\n\n\"우리! 을숙도를 꼭 빠져나가요!\"\n\n우리는 서로와 뜨거운 눈빛을\n주고받았다.\n\n+ 정신력 +1',NULL,'정신력+1'),(64,'0-5','...이럴 게 아니라 동생에게도 메시지를 남겨놔야지.\n갑자기 나랑 할머니 없이 혼자 남겨질 동생에게.\n\n나는 종이에 사정을 간략하게 적어 동생의 옷 속에 넣어뒀다.\n미안해 동생아. 하지만 너라도 이런 선택을 했을 거야.\n그래도 미리 말 못 해줘서 미안하다.\n\n오전 열 시 반.\n갑자기 대여섯 명의 군인들이 문을 앞문과 뒷문을 지키고 선다.\n총을 들고 있다.\n\n\"삼 다시 오번 구역 대피소 현 인원들 모두 저희를 따라옵니다!\"\n\n앞선 군인이 큰 소리로 외친다.\n나머지 군인들이 복창한다.\n\n갑자기 사람들이 공포에 질려 웅성거린다.\n어린아이들이 울기 시작한다.\n\n\"왜, 왜 갑자기 따라오라는 겁니까?\"\n\n제일 나이가 지긋한 할아버지가 까끌까끌하게\n쉰 목소리로 말을 건다.\n하지만 군인들은 할아버지를 쳐다보지도 않고\n입술을 굳게 다물고만 있는다.\n\n\"이건 명령입니다. 따라오십시오!\"\n\n갑자기 대피소 안이 아수라장이 된다.\n이유도 모르고 끌려가는 사람들이 공포에 질린다.\n어린아이들의 울음소리가 여기저기서 터진다.\n군인들은 꿈쩍도 하지 않고 사람들을 끌어낸다.\n\n예상대로 가장 고위직으로 보이는 군인이\n나에게 곧장 다가왔다.',NULL,NULL),(65,'0-6','\"당신은 왜 남아 있습니까. 지금은 노역 시간이 아닙니까?\"\n\n나도 공포감에 압도당해 입을 열 수 없다.\n군인이 든 총구가 마치 나를 잡아먹을 것만 같다.\n덜덜 떨리는 목소리를 가다듬을 수가 없다.\n\n\"저, 저는, 하, 할머니의, 보호자...\"\n\n내 앞에 선 군인이 이 서류를 받아든다.\n몇 장을 휙휙 넘긴 그가 내 얼굴과 할머니 얼굴을 확인한다.\n\n\"최예림, 그리고 김지우 맞습니까?\"\n\"마, 맞습니다.\"\n\"우, 우리 (내 이름)은 잘못이 없습니더!\"\n\"할머니, 괜찮아, 괜찮아.\"\n\"오늘 고마, 배가, 아프다꼬, 일을 몬나갔는데!\"\n\n군인은 딱딱한 표정 그대로 할 말만 한다.\n\n\"서류상... 최예림에게는 지병이 없다고 하는데.\"\n\n그때 나도 모르게 입에서 거짓말이 술술 나왔다.\n나는 할머니 손을 꼭 잡았다.\n할머니 제발 가만히 있어 줘.\n\n\"할머니가 갑자기 건강이 많이 안 좋아지셔서.\n요즘에는 제가 보살펴드리느라...\"\n\n이제 대피소는 텅 비었다.\n덜덜 떨고있는 나와 할머니만 남았다.\n복도를 타고 멀어지는 어린아이의 울음소리가 아련하다.\n\n\"...\"\n',NULL,NULL),(66,'0-7','군인은 한참이나 말없이 나와 할머니를 응시한다.\n잡은 손으로 할머니의 떨림이 전해진다.\n아니, 내가 떨고 있는 건가?\n\n\"수송차에 총 몇 명이 수용 가능하지?\"\n\"예, 열 다섯 명 입니다.“\n“좋아.”\n\n군인이 나를 다시 돌아봤다.\n\n“결정하십시오. 가시겠습니까?”',NULL,NULL);
/*!40000 ALTER TABLE `chapter1_storyonly` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-02 14:59:59
