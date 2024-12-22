-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: Lab11
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.23.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AntonymHaveVerb`
--

DROP TABLE IF EXISTS `AntonymHaveVerb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AntonymHaveVerb` (
  `spell` varchar(30) DEFAULT NULL,
  `antonym` varchar(50) DEFAULT NULL,
  KEY `spell` (`spell`),
  CONSTRAINT `AntonymHaveVerb_ibfk_1` FOREIGN KEY (`spell`) REFERENCES `word` (`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AntonymHaveVerb`
--

LOCK TABLES `AntonymHaveVerb` WRITE;
/*!40000 ALTER TABLE `AntonymHaveVerb` DISABLE KEYS */;
INSERT INTO `AntonymHaveVerb` VALUES ('age',' decrease'),('age','stop'),('book','cancel'),('book','discard'),('book','withdraw'),('dog','cleanliness '),('dog','success'),('dog','kind person'),('go','come'),('go','wait'),('go','stop'),('institute',' ruin'),('institute',' discard'),('institute','terminate'),('parrot','be truth'),('parrot','be original'),('parrot','idle'),('plant','find out '),('plant','shift '),('plant','move'),('scrub','dirty'),('scrub','dry'),('scrub','rust');
/*!40000 ALTER TABLE `AntonymHaveVerb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DifferentLangStoreIn`
--

DROP TABLE IF EXISTS `DifferentLangStoreIn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DifferentLangStoreIn` (
  `hindi` varchar(30) DEFAULT NULL,
  `marathi` varchar(30) DEFAULT NULL,
  `tamil` varchar(30) DEFAULT NULL,
  `telugu` varchar(30) DEFAULT NULL,
  `spell` varchar(30) DEFAULT NULL,
  KEY `spell` (`spell`),
  CONSTRAINT `DifferentLangStoreIn_ibfk_1` FOREIGN KEY (`spell`) REFERENCES `word` (`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DifferentLangStoreIn`
--

LOCK TABLES `DifferentLangStoreIn` WRITE;
/*!40000 ALTER TABLE `DifferentLangStoreIn` DISABLE KEYS */;
INSERT INTO `DifferentLangStoreIn` VALUES ('आयु','वय','வயது','వయస్సు','age');
/*!40000 ALTER TABLE `DifferentLangStoreIn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LivingEntityCanBeNoun`
--

DROP TABLE IF EXISTS `LivingEntityCanBeNoun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LivingEntityCanBeNoun` (
  `spell` varchar(30) DEFAULT NULL,
  `path` varchar(400) DEFAULT NULL,
  KEY `spell` (`spell`),
  CONSTRAINT `LivingEntityCanBeNoun_ibfk_1` FOREIGN KEY (`spell`) REFERENCES `word` (`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LivingEntityCanBeNoun`
--

LOCK TABLES `LivingEntityCanBeNoun` WRITE;
/*!40000 ALTER TABLE `LivingEntityCanBeNoun` DISABLE KEYS */;
INSERT INTO `LivingEntityCanBeNoun` VALUES ('dog','https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcHUyMzMxNzg4LWltYWdlLXJtNTAzLTAxXzEtbDBqOXFyYzMucG5n.png'),('parrot','https://www.shutterstock.com/image-photo/parrot-on-branch-260nw-714651400.jpg'),('plant','https://static.vecteezy.com/system/resources/thumbnails/033/230/099/small/a-small-sapling-is-just-emerging-from-the-ground-generative-ai-photo.jpg '),('scrub','https://www.shutterstock.com/image-photo/small-short-plants-scrub-together-260nw-2017211576.jpg'),('tiger','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjhQgZYei2vWprW_5lcC-wlyjc-WMdfti_JVeZdBYiLA&s');
/*!40000 ALTER TABLE `LivingEntityCanBeNoun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NounAssociatedWithExample`
--

DROP TABLE IF EXISTS `NounAssociatedWithExample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NounAssociatedWithExample` (
  `spell` varchar(30) DEFAULT NULL,
  `meaning` varchar(400) DEFAULT NULL,
  `examples` varchar(400) DEFAULT NULL,
  KEY `spell` (`spell`),
  CONSTRAINT `NounAssociatedWithExample_ibfk_1` FOREIGN KEY (`spell`) REFERENCES `word` (`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NounAssociatedWithExample`
--

LOCK TABLES `NounAssociatedWithExample` WRITE;
/*!40000 ALTER TABLE `NounAssociatedWithExample` DISABLE KEYS */;
INSERT INTO `NounAssociatedWithExample` VALUES ('age','the period of time someone has been alive or something has existed','Do you know the age of that building?'),('age','a particular period in time:','the Victorian age'),('age','he fact of being or getting older:',' Her back was bent with age.'),('book','a written text that can be published in printed or electronic form ','She wrote a book on car maintenance. '),('dog','a common animal with four legs, especially kept by people as a pet or to hunt or guard things:  ','my pet dog '),('institute',' an organization whose purpose is to advance the study of a particular subject:',' The National Institutes of Health fund medical research in many areas. '),('kingdom','an area that is controlled by a particular person or where a particular quality is important: ','the kingdom of God/Pratap'),('kingdom','one of the groups that natural things can be divided into, depending on their type: ','the animal/plant kingdom\n'),('parrot','a tropical bird with a curved beak, often kept as a pet and trained to copy the human voice','She used to keep a parrot in a cage.'),('plant','a living thing that grows in earth, in water, or on other plants, usually has a stem, leaves, roots, and flowers, and produces seeds: \n','garden/greenhouse/indoor plants'),('scrub','low trees and bushes','scrub cover whole ground so it is not good place for playing'),('tiger','a large wild animal of the cat family with yellowish-orange fur with black lines that lives in parts of Asia','The video showed a man morphing into a tiger.');
/*!40000 ALTER TABLE `NounAssociatedWithExample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SnonymHaveVerb`
--

DROP TABLE IF EXISTS `SnonymHaveVerb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SnonymHaveVerb` (
  `spell` varchar(30) DEFAULT NULL,
  `snonym` varchar(50) DEFAULT NULL,
  KEY `spell` (`spell`),
  CONSTRAINT `SnonymHaveVerb_ibfk_1` FOREIGN KEY (`spell`) REFERENCES `word` (`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SnonymHaveVerb`
--

LOCK TABLES `SnonymHaveVerb` WRITE;
/*!40000 ALTER TABLE `SnonymHaveVerb` DISABLE KEYS */;
INSERT INTO `SnonymHaveVerb` VALUES ('age','decline'),('age','ripen'),('age','mature'),('book','copy'),('book','booklet'),('book','album'),('dog','puppy '),('dog','follow '),('dog','bother '),('go','move '),('go','progress'),('go','leave'),('institute','innovate'),('institute','establish'),('institute','introduce'),('parrot','repeat'),('parrot','copy'),('parrot','fake'),('plant','fix '),('plant','root'),('plant','place'),('scrub',' rub'),('scrub','clean'),('scrub','wash');
/*!40000 ALTER TABLE `SnonymHaveVerb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VerbAssociatedWithExample`
--

DROP TABLE IF EXISTS `VerbAssociatedWithExample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VerbAssociatedWithExample` (
  `spell` varchar(30) DEFAULT NULL,
  `meaning` varchar(400) DEFAULT NULL,
  `examples` varchar(400) DEFAULT NULL,
  KEY `spell` (`spell`),
  CONSTRAINT `VerbAssociatedWithExample_ibfk_1` FOREIGN KEY (`spell`) REFERENCES `word` (`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VerbAssociatedWithExample`
--

LOCK TABLES `VerbAssociatedWithExample` WRITE;
/*!40000 ALTER TABLE `VerbAssociatedWithExample` DISABLE KEYS */;
INSERT INTO `VerbAssociatedWithExample` VALUES ('age','to develop in flavour or leave something to do this:','The brandy is aged in oak for ten years.'),('age','to become or appear old, or to cause someone to appear old:',' She’s aged a lot since the last time we met.'),('book',' to arrange to have a seat, room, performer, etc. at a particular time in the future: ','She book a table for four at their favourite restaurant. '),('book','to make a record of something in a company accounts:  ','The loss would have been much larger had they not booked an £8m profit from property sales'),('dog',' to follow someone closely and continuously:',' Reporters dogged him for answers. '),('go',' to travel or move to another place:','I will go home. '),('go',' to continue for a particular length:',' The tree  roots go down three metres. '),('institute',' to put into effect; cause to be used:',' These are some of the safety guidelines we’ve instituted in our hotels. '),('parrot','to repeat exactly what someone else says, without understanding it or thinking about its meaning: ','She doesnot have an original thought in her head - she just parrots anything that Sara says.'),('plant','to put something firmly and strongly in a particular place: ','My brother planted himself on the sofa in front of the television.'),('plant','to put something  ','Bomb planted in the waiting room'),('scrub','to clean something by rubbing it hard:\n',' After the tomato sauce boiled over, I had to scrub the stove.');
/*!40000 ALTER TABLE `VerbAssociatedWithExample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word`
--

DROP TABLE IF EXISTS `word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `word` (
  `spell` varchar(30) NOT NULL,
  `Prounctation` varchar(20) DEFAULT NULL,
  `identifier` int DEFAULT NULL,
  PRIMARY KEY (`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word`
--

LOCK TABLES `word` WRITE;
/*!40000 ALTER TABLE `word` DISABLE KEYS */;
INSERT INTO `word` VALUES ('age','eɪdʒ',2),('book','bʊk',2),('dog','dɑːɡ',12),('go','ɡoʊ',1),('institute','ɪn.stə.tuːt',2),('kingdom','kɪŋ.dəm',0),('parrot','per.ət',12),('plant','plænt',12),('scrub','skrʌb',12),('tiger','taɪ.ɡɚ',10);
/*!40000 ALTER TABLE `word` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 23:27:33

