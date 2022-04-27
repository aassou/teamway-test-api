-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: personality
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id_id` int DEFAULT NULL,
  `choice` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DADD4A254FAF8F53` (`question_id_id`),
  CONSTRAINT `FK_DADD4A254FAF8F53` FOREIGN KEY (`question_id_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,2,'I feel anxiety!',1,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(2,2,'I feel that I have to do it!',2,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(3,2,'That\'t my job, it\'s ok!',3,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(4,2,'I feel good!',4,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(5,2,'I feel like Let\'s make some money!',5,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(6,3,'I think to go out!',1,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(7,3,'I check if I have something on my clothes!',2,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(8,3,'I just go in and sit!',3,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(9,3,'I start to think that I am special!',4,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(10,3,'Of course they should look at me, I am a VIP!',5,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(11,4,'Oh, I feel dizzy!',1,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(12,4,'Again, that\'s exhausting!',2,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(13,4,'Well, I have to!',3,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(14,4,'That\'s a good idea!',4,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(15,4,'Amazing, I need to show up my skills!',5,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(16,5,'I can not do it!',1,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(17,5,'I don\'t like it but I have to!',2,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(18,5,'I just go in!',3,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(19,5,'Nice, I have some company!',4,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(20,5,'Hello Everybody, let me in please!',5,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(21,6,'I hide my face!',1,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(22,6,'Maybe I\'ll smile!',2,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(23,6,'Salute the camera!',3,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(24,6,'Smile at the camera and salute everyone!',4,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1),(25,6,'I will perform  my favourite dance of course!',5,'2022-04-25 14:45:23','abdelilah','2022-04-25 14:45:23','abdelilah',1);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20220425135805','2022-04-25 15:58:22',37),('DoctrineMigrations\\Version20220425140239','2022-04-25 16:02:55',100),('DoctrineMigrations\\Version20220425142818','2022-04-25 16:28:30',1588),('DoctrineMigrations\\Version20220425144311','2022-04-25 16:44:11',829);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (2,'When you have to make a cold call, you feel excitement or anxiety ?','2022-04-25 14:35:40','abdelilah','2022-04-25 14:44:52','aassou',1),(3,'When you get into a restaurant, and suddenly everyone is looking at you, what do you do ?','2022-04-25 14:54:04','abdelilah','2022-04-25 14:56:04','aassou',1),(4,'When your teacher asked you to do a presentation, what was the first thought came into your mind ?','2022-04-25 14:54:04','abdelilah','2022-04-25 14:56:04','aassou',1),(5,'You are waiting for the elevator and we the doors open it was full of people, how do you feel ?','2022-04-25 14:54:04','abdelilah','2022-04-25 14:56:04','aassou',1),(6,'Your friend and you, are in a football stadium, and the camera spotted you, what is your reaction ?','2022-04-25 14:54:04','abdelilah','2022-04-25 14:56:04','aassou',1);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 17:22:45
