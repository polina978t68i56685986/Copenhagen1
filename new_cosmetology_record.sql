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
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record` (
  `Idre` int NOT NULL,
  `Idcl` int NOT NULL,
  `Idsp` int NOT NULL,
  `rDate` date NOT NULL,
  `rtime` time DEFAULT NULL,
  `Idrecor` int NOT NULL,
  `Cost` decimal(50,0) NOT NULL,
  `Idpr` int NOT NULL,
  PRIMARY KEY (`Idre`),
  KEY `Idcl` (`Idcl`),
  KEY `Idsp` (`Idsp`),
  KEY `Idrecor` (`Idrecor`),
  KEY `Idpr` (`Idpr`),
  CONSTRAINT `record_ibfk_1` FOREIGN KEY (`Idcl`) REFERENCES `client_` (`Idcl`),
  CONSTRAINT `record_ibfk_2` FOREIGN KEY (`Idsp`) REFERENCES `specialist` (`IDsp`),
  CONSTRAINT `record_ibfk_3` FOREIGN KEY (`Idrecor`) REFERENCES `record_status` (`IDrecor`),
  CONSTRAINT `record_ibfk_4` FOREIGN KEY (`Idpr`) REFERENCES `procedures` (`Idpr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (1,2,1,'2025-01-22','13:00:00',1,9000,1),(2,1,1,'2025-01-23','13:00:00',1,9000,1),(3,2,2,'2025-01-24','12:00:00',2,10000,2);
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-24 11:41:35
