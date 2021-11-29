-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: moutzouris
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `cshape` varchar(255) NOT NULL,
  `curl` varchar(2550) NOT NULL,
  `player` enum('player1','player2') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cards_cname_cshape_uindex` (`cname`,`cshape`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,'ace','clover','https://upload.wikimedia.org/wikipedia/commons/3/36/Playing_card_club_A.svg',NULL),(2,'two','clover','https://upload.wikimedia.org/wikipedia/commons/f/f5/Playing_card_club_2.svg',NULL),(3,'three','clover','https://upload.wikimedia.org/wikipedia/commons/6/6b/Playing_card_club_3.svg',NULL),(4,'four','clover','https://upload.wikimedia.org/wikipedia/commons/3/3d/Playing_card_club_4.svg',NULL),(5,'five','clover','https://upload.wikimedia.org/wikipedia/commons/5/50/Playing_card_club_5.svg',NULL),(6,'six','clover','https://upload.wikimedia.org/wikipedia/commons/a/a0/Playing_card_club_6.svg',NULL),(7,'seven','clover','https://upload.wikimedia.org/wikipedia/commons/4/4b/Playing_card_club_7.svg',NULL),(8,'eight','clover','https://upload.wikimedia.org/wikipedia/commons/e/eb/Playing_card_club_8.svg',NULL),(9,'nine','clover','https://upload.wikimedia.org/wikipedia/commons/2/27/Playing_card_club_9.svg',NULL),(10,'ten','clover','https://upload.wikimedia.org/wikipedia/commons/3/3e/Playing_card_club_10.svg',NULL),(11,'ace','diamonds','https://upload.wikimedia.org/wikipedia/commons/d/d3/Playing_card_diamond_A.svg',NULL),(12,'two','diamonds','https://upload.wikimedia.org/wikipedia/commons/5/59/Playing_card_diamond_2.svg',NULL),(13,'three','diamonds','https://upload.wikimedia.org/wikipedia/commons/8/82/Playing_card_diamond_3.svg',NULL),(14,'four','diamonds','https://upload.wikimedia.org/wikipedia/commons/2/20/Playing_card_diamond_4.svg',NULL),(15,'five','diamonds','https://upload.wikimedia.org/wikipedia/commons/f/fd/Playing_card_diamond_5.svg',NULL),(16,'six','diamonds','https://upload.wikimedia.org/wikipedia/commons/8/80/Playing_card_diamond_6.svg',NULL),(17,'seven','diamonds','https://upload.wikimedia.org/wikipedia/commons/e/e6/Playing_card_diamond_7.svg',NULL),(18,'eight','diamonds','https://upload.wikimedia.org/wikipedia/commons/7/78/Playing_card_diamond_8.svg',NULL),(19,'nine','diamonds','https://upload.wikimedia.org/wikipedia/commons/9/9e/Playing_card_diamond_9.svg',NULL),(20,'ten','diamonds','https://upload.wikimedia.org/wikipedia/commons/3/34/Playing_card_diamond_10.svg',NULL),(21,'ace','hearts','https://upload.wikimedia.org/wikipedia/commons/5/57/Playing_card_heart_A.svg',NULL),(22,'two','hearts','https://upload.wikimedia.org/wikipedia/commons/d/d5/Playing_card_heart_2.svg',NULL),(23,'three','hearts','https://upload.wikimedia.org/wikipedia/commons/b/b6/Playing_card_heart_3.svg',NULL),(24,'four','hearts','https://upload.wikimedia.org/wikipedia/commons/a/a2/Playing_card_heart_4.svg',NULL),(25,'five','hearts','https://upload.wikimedia.org/wikipedia/commons/5/52/Playing_card_heart_5.svg',NULL),(26,'six','hearts','https://upload.wikimedia.org/wikipedia/commons/c/cd/Playing_card_heart_6.svg',NULL),(27,'seven','hearts','https://upload.wikimedia.org/wikipedia/commons/c/cd/Playing_card_heart_6.svg',NULL),(28,'eight','hearts','https://upload.wikimedia.org/wikipedia/commons/5/50/Playing_card_heart_8.svg',NULL),(29,'nine','hearts','https://upload.wikimedia.org/wikipedia/commons/5/50/Playing_card_heart_9.svg',NULL),(30,'ten','hearts','https://upload.wikimedia.org/wikipedia/commons/9/98/Playing_card_heart_10.svg',NULL),(31,'ace','spades','https://upload.wikimedia.org/wikipedia/commons/2/25/Playing_card_spade_A.svg',NULL),(32,'two','spades','https://upload.wikimedia.org/wikipedia/commons/f/f2/Playing_card_spade_2.svg',NULL),(33,'three','spades','https://upload.wikimedia.org/wikipedia/commons/5/52/Playing_card_spade_3.svg',NULL),(34,'four','spades','https://upload.wikimedia.org/wikipedia/commons/2/2c/Playing_card_spade_4.svg',NULL),(35,'five','spades','https://upload.wikimedia.org/wikipedia/commons/9/94/Playing_card_spade_5.svg',NULL),(36,'six','spades','https://upload.wikimedia.org/wikipedia/commons/d/d2/Playing_card_spade_6.svg',NULL),(37,'seven','spades','https://upload.wikimedia.org/wikipedia/commons/6/66/Playing_card_spade_7.svg',NULL),(38,'eight','spades','https://upload.wikimedia.org/wikipedia/commons/2/21/Playing_card_spade_8.svg',NULL),(39,'nine','spades','https://upload.wikimedia.org/wikipedia/commons/e/e0/Playing_card_spade_9.svg',NULL),(40,'ten','spades','https://upload.wikimedia.org/wikipedia/commons/8/87/Playing_card_spade_10.svg',NULL),(41,'king','spades','https://upload.wikimedia.org/wikipedia/commons/9/9f/Playing_card_spade_K.svg',NULL);
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_status`
--

DROP TABLE IF EXISTS `game_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_status` (
  `status` enum('not acitve','initialized','started','ended','aborded') NOT NULL COMMENT 'not active',
  `last_change` timestamp NULL DEFAULT NULL,
  `p_turn` enum('player1','player2') DEFAULT NULL,
  `result` enum('player1','player2','d') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_status`
--

LOCK TABLES `game_status` WRITE;
/*!40000 ALTER TABLE `game_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `username` varchar(20) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-29 20:55:16
