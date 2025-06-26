-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: new_cosmetology
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `specialist`
--

DROP TABLE IF EXISTS `specialist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialist` (
  `IDsp` int NOT NULL AUTO_INCREMENT,
  `SpLaName` varchar(50) NOT NULL,
  `SpName` varchar(50) NOT NULL,
  `SpFatherland` varchar(50) DEFAULT NULL,
  `IDsz` int NOT NULL,
  `IDqu` int NOT NULL,
  `PhNumber` varchar(50) NOT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDsp`),
  KEY `IDsz` (`IDsz`),
  KEY `IDqu` (`IDqu`),
  CONSTRAINT `specialist_ibfk_1` FOREIGN KEY (`IDsz`) REFERENCES `specialization` (`IDsz`),
  CONSTRAINT `specialist_ibfk_2` FOREIGN KEY (`IDqu`) REFERENCES `qualification` (`IDqu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialist`
--

LOCK TABLES `specialist` WRITE;
/*!40000 ALTER TABLE `specialist` DISABLE KEYS */;
INSERT INTO `specialist` VALUES (1,'Лектор','Ганнибал','Микельсен',2,1,'92223334455','Willmeandthedogs@gmail.com'),(2,'Крамер','Джон','Билл',2,1,'96667778899','HoffmanAmandaGordon@gmail.com'),(3,'Ануфриев','Артём ','Генадьевич',1,2,'98887776655','hammer_1@gmail.com'),(4,'Лыткин','Никита','Артемович',1,1,'90009998877','hammer_2@gmail.com');
/*!40000 ALTER TABLE `specialist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-24 11:41:33
