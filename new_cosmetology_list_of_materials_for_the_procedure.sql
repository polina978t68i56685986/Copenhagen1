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
-- Table structure for table `list_of_materials_for_the_procedure`
--

DROP TABLE IF EXISTS `list_of_materials_for_the_procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_of_materials_for_the_procedure` (
  `Iddm` int NOT NULL,
  `Idpr` int NOT NULL,
  `Idma` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`Iddm`),
  KEY `Idpr` (`Idpr`),
  KEY `Idma` (`Idma`),
  CONSTRAINT `list_of_materials_for_the_procedure_ibfk_1` FOREIGN KEY (`Idpr`) REFERENCES `procedures` (`Idpr`),
  CONSTRAINT `list_of_materials_for_the_procedure_ibfk_2` FOREIGN KEY (`Idma`) REFERENCES `materials` (`IDma`)
) ENGINE=InnoDB DEFAULT CHARSET=cp866;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_of_materials_for_the_procedure`
--

LOCK TABLES `list_of_materials_for_the_procedure` WRITE;
/*!40000 ALTER TABLE `list_of_materials_for_the_procedure` DISABLE KEYS */;
INSERT INTO `list_of_materials_for_the_procedure` VALUES (1,1,1,1),(2,1,1,1);
/*!40000 ALTER TABLE `list_of_materials_for_the_procedure` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-24 11:41:34
