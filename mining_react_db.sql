-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: mining_react
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `Bar`
--

DROP TABLE IF EXISTS `Bar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bar` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Price` int NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bar`
--

LOCK TABLES `Bar` WRITE;
/*!40000 ALTER TABLE `Bar` DISABLE KEYS */;
INSERT INTO `Bar` VALUES (1,'Copper',1,'CopperBar.webp'),(2,'Tin',2,'TinBar.webp'),(3,'Bronze',4,'BronzeBar.webp'),(4,'Silver',6,'SilverBar.webp'),(5,'Gold',10,'GoldBar.webp');
/*!40000 ALTER TABLE `Bar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bar_Building`
--

DROP TABLE IF EXISTS `Bar_Building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bar_Building` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Bar_Id` int NOT NULL,
  `Building_Id` int NOT NULL,
  `Bar_Quantity` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Bar_Id` (`Bar_Id`),
  KEY `Building_Id` (`Building_Id`),
  CONSTRAINT `Bar_Building_ibfk_1` FOREIGN KEY (`Bar_Id`) REFERENCES `Bar` (`Id`),
  CONSTRAINT `Bar_Building_ibfk_2` FOREIGN KEY (`Building_Id`) REFERENCES `Building` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bar_Building`
--

LOCK TABLES `Bar_Building` WRITE;
/*!40000 ALTER TABLE `Bar_Building` DISABLE KEYS */;
INSERT INTO `Bar_Building` VALUES (1,1,1,25),(2,1,2,75),(3,2,3,100),(4,2,4,175),(5,3,5,250),(6,3,6,400),(7,4,7,500),(8,5,8,1200),(9,1,9,120),(10,1,10,120),(11,2,11,120),(12,3,12,120),(13,4,13,120),(14,5,14,120),(15,1,15,250),(16,1,16,250),(17,2,17,250),(18,3,18,250),(19,4,19,250),(20,5,20,250),(21,2,21,150),(22,3,22,150),(23,4,23,150),(24,5,24,150),(25,2,25,150),(26,3,26,150),(27,4,27,150),(28,5,28,150),(29,1,29,200),(30,2,30,200),(31,3,31,200),(32,4,32,200),(33,5,33,200);
/*!40000 ALTER TABLE `Bar_Building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bar_Player`
--

DROP TABLE IF EXISTS `Bar_Player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bar_Player` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Bar_Id` int NOT NULL,
  `Player_Id` int NOT NULL,
  `Bar_Quantity` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Bar_Id` (`Bar_Id`),
  KEY `Player_Id` (`Player_Id`),
  CONSTRAINT `Bar_Player_ibfk_1` FOREIGN KEY (`Bar_Id`) REFERENCES `Bar` (`Id`),
  CONSTRAINT `Bar_Player_ibfk_2` FOREIGN KEY (`Player_Id`) REFERENCES `Player` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bar_Player`
--

LOCK TABLES `Bar_Player` WRITE;
/*!40000 ALTER TABLE `Bar_Player` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bar_Player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Building`
--

DROP TABLE IF EXISTS `Building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Building` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Rent` int DEFAULT NULL,
  `Mining_Power` int DEFAULT NULL,
  `Woodcutting_Power` int DEFAULT NULL,
  `Health` int DEFAULT NULL,
  `Luck` int DEFAULT NULL,
  `Mining_Time` time DEFAULT NULL,
  `Construct_Time` time NOT NULL,
  `Resource_Limit` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Building`
--

LOCK TABLES `Building` WRITE;
/*!40000 ALTER TABLE `Building` DISABLE KEYS */;
INSERT INTO `Building` VALUES (1,'Post-Medieval','PostMedievalRent.webp','Rent',1,NULL,NULL,NULL,NULL,NULL,'00:04:48',NULL),(2,'Colonial','ColonialRent.webp','Rent',5,NULL,NULL,NULL,NULL,NULL,'00:15:00',NULL),(3,'Stick','StickRent.webp','Rent',10,NULL,NULL,NULL,NULL,NULL,'00:30:00',NULL),(4,'Tudor','TudorRent.webp','Rent',50,NULL,NULL,NULL,NULL,NULL,'01:00:00',NULL),(5,'Chalet','ChaletRent.webp','Rent',100,NULL,NULL,NULL,NULL,NULL,'02:00:00',NULL),(6,'Baroque','BaroqueRent.webp','Rent',500,NULL,NULL,NULL,NULL,NULL,'04:00:00',NULL),(7,'Gothic','GothicRent.webp','Rent',1000,NULL,NULL,NULL,NULL,NULL,'06:00:00',NULL),(8,'Contemporary','ContemporaryRent.webp','Rent',2500,NULL,NULL,NULL,NULL,NULL,'10:00:00',NULL),(9,'Medieval Sawmill','MedievalSawmill.webp','Support',NULL,NULL,1,NULL,NULL,NULL,'00:09:36',NULL),(10,'Reinassance Sawmill','ReinassanceSawmill.webp','Support',NULL,NULL,2,NULL,NULL,NULL,'00:30:00',NULL),(11,'Industrial Sawmill','IndustrialSawmill.webp','Support',NULL,NULL,4,NULL,NULL,NULL,'01:00:00',NULL),(12,'Modern Sawmill','ModernSawmill.webp','Support',NULL,NULL,6,NULL,NULL,NULL,'02:00:00',NULL),(13,'Nuclear Sawmill','NuclearSawmill.webp','Support',NULL,NULL,12,NULL,NULL,NULL,'04:00:00',NULL),(14,'Cyber Sawmill','CyberSawmill.webp','Support',NULL,NULL,15,NULL,NULL,NULL,'08:00:00',NULL),(15,'Medieval Foundry','MedievalFoundry.webp','Support',NULL,1,NULL,NULL,NULL,NULL,'00:09:36',NULL),(16,'Renaissance Foundry','RenaissanceFoundry.webp','Support',NULL,2,NULL,NULL,NULL,NULL,'00:30:00',NULL),(17,'Industrial Foundry','IndustrialFoundry.webp','Support',NULL,4,NULL,NULL,NULL,NULL,'01:00:00',NULL),(18,'Modern Foundry','ModernFoundry.webp','Support',NULL,6,NULL,NULL,NULL,NULL,'02:00:00',NULL),(19,'Nuclear Foundry','NuclearFoundry.webp','Support',NULL,12,NULL,NULL,NULL,NULL,'04:00:00',NULL),(20,'Cyber Foundry','CyberFoundry.webp','Support',NULL,15,NULL,NULL,NULL,NULL,'08:00:00',NULL),(21,'Apothecary','ApothecarySup.webp','Support',NULL,NULL,NULL,25,NULL,NULL,'01:00:00',NULL),(22,'Care Home','CareHomeSup.webp','Support',NULL,NULL,NULL,50,NULL,NULL,'02:00:00',NULL),(23,'Hospital','HospitalSup.webp','Support',NULL,NULL,NULL,100,NULL,NULL,'04:00:00',NULL),(24,'Generics Laboratory','GenericsLaboratorySup.webp','Support',NULL,NULL,NULL,500,NULL,NULL,'08:00:00',NULL),(25,'Medieval Workshop','MedievalWorkshop.webp','Support',NULL,NULL,NULL,NULL,5,NULL,'01:00:00',10),(26,'Industrial Workshop','IndustrialWorkshop.webp','Support',NULL,NULL,NULL,NULL,10,NULL,'02:00:00',25),(27,'Modern Workshop','ModernWorkshop.webp','Support',NULL,NULL,NULL,NULL,15,NULL,'04:00:00',50),(28,'Cyber Workshop','CyberWorkshop.webp','Support',NULL,NULL,NULL,NULL,25,NULL,'08:00:00',100),(29,'Tavern','TavernEmployer.webp','Employer',NULL,NULL,NULL,NULL,NULL,'00:00:30','01:00:00',NULL),(30,'Docks','DocksEmployer.webp','Employer',NULL,NULL,NULL,NULL,NULL,'00:00:15','02:00:00',NULL),(31,'Press','PressEmployer.webp','Employer',NULL,NULL,NULL,NULL,NULL,'00:00:05','04:00:00',NULL),(32,'Job Server','JobServerEmployer.webp','Employer',NULL,NULL,NULL,NULL,NULL,'00:00:01','06:00:00',NULL),(33,'Nano-Chip Broadcast','NanoChipEmployer.webp','Employer',NULL,NULL,NULL,NULL,NULL,'00:00:01','10:00:00',NULL);
/*!40000 ALTER TABLE `Building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Building_Player`
--

DROP TABLE IF EXISTS `Building_Player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Building_Player` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Building_Id` int NOT NULL,
  `Player_Id` int NOT NULL,
  `Building_Quantity` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Building_Id` (`Building_Id`),
  KEY `Player_Id` (`Player_Id`),
  CONSTRAINT `Building_Player_ibfk_1` FOREIGN KEY (`Building_Id`) REFERENCES `Building` (`Id`),
  CONSTRAINT `Building_Player_ibfk_2` FOREIGN KEY (`Player_Id`) REFERENCES `Player` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Building_Player`
--

LOCK TABLES `Building_Player` WRITE;
/*!40000 ALTER TABLE `Building_Player` DISABLE KEYS */;
/*!40000 ALTER TABLE `Building_Player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Player`
--

DROP TABLE IF EXISTS `Player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Player` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Money` int NOT NULL,
  `Health` int NOT NULL,
  `Luck` int NOT NULL,
  `Mining_Power` int NOT NULL,
  `Woodcutting_Power` int NOT NULL,
  `Resource_Limit` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Player`
--

LOCK TABLES `Player` WRITE;
/*!40000 ALTER TABLE `Player` DISABLE KEYS */;
INSERT INTO `Player` VALUES (1,'Miner',0,100,0,1,1,10);
/*!40000 ALTER TABLE `Player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resource`
--

DROP TABLE IF EXISTS `Resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Resource` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Hardness` int NOT NULL,
  `Image` varchar(150) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resource`
--

LOCK TABLES `Resource` WRITE;
/*!40000 ALTER TABLE `Resource` DISABLE KEYS */;
INSERT INTO `Resource` VALUES (1,'Stone','Ore',1,'StoneOre.webp'),(2,'Coal','Ore',5,'CoalOre.webp'),(3,'Copper','Ore',10,'CopperOre.webp'),(4,'Tin','Ore',10,'TinOre.webp'),(5,'Silver','Ore',25,'SilverOre.webp'),(6,'Gold','Ore',50,'GoldOre.webp'),(7,'Pine','Log',1,'PineLog.webp'),(8,'Oak','Log',5,'OakLog.webp'),(9,'Willow','Log',10,'WillowLog.webp'),(10,'Mahogany','Log',25,'MahoganyLog.webp'),(11,'Maple','Log',50,'MapleLog.webp');
/*!40000 ALTER TABLE `Resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resource_Bar`
--

DROP TABLE IF EXISTS `Resource_Bar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Resource_Bar` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Bar_Id` int NOT NULL,
  `Resource_Id` int NOT NULL,
  `Resource_Quantity` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Bar_Id` (`Bar_Id`),
  KEY `Resource_Id` (`Resource_Id`),
  CONSTRAINT `Resource_Bar_ibfk_1` FOREIGN KEY (`Bar_Id`) REFERENCES `Bar` (`Id`),
  CONSTRAINT `Resource_Bar_ibfk_2` FOREIGN KEY (`Resource_Id`) REFERENCES `Resource` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resource_Bar`
--

LOCK TABLES `Resource_Bar` WRITE;
/*!40000 ALTER TABLE `Resource_Bar` DISABLE KEYS */;
INSERT INTO `Resource_Bar` VALUES (1,1,1,25),(2,2,1,75),(3,3,2,100),(4,4,2,175),(5,5,3,250);
/*!40000 ALTER TABLE `Resource_Bar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resource_Building`
--

DROP TABLE IF EXISTS `Resource_Building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Resource_Building` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Building_Id` int NOT NULL,
  `Resource_Id` int NOT NULL,
  `Resource_Quantity` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Building_Id` (`Building_Id`),
  KEY `Resource_Id` (`Resource_Id`),
  CONSTRAINT `Resource_Building_ibfk_1` FOREIGN KEY (`Building_Id`) REFERENCES `Building` (`Id`),
  CONSTRAINT `Resource_Building_ibfk_2` FOREIGN KEY (`Resource_Id`) REFERENCES `Resource` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resource_Building`
--

LOCK TABLES `Resource_Building` WRITE;
/*!40000 ALTER TABLE `Resource_Building` DISABLE KEYS */;
INSERT INTO `Resource_Building` VALUES (1,1,7,50),(2,2,7,150),(3,3,8,200),(4,4,8,350),(5,5,9,500),(6,6,9,750),(7,7,10,1000),(8,8,11,2500),(9,9,7,250),(10,10,7,250),(11,11,8,250),(12,12,9,250),(13,13,10,250),(14,14,11,250),(15,15,7,500),(16,16,7,500),(17,17,8,500),(18,18,9,500),(19,19,10,500),(20,20,11,500),(21,21,8,300),(22,22,9,300),(23,23,10,300),(24,24,11,300),(25,25,8,300),(26,26,9,300),(27,27,10,300),(28,28,11,300),(29,29,7,400),(30,30,8,400),(31,31,9,400),(32,32,10,400),(33,33,11,400);
/*!40000 ALTER TABLE `Resource_Building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resource_Player`
--

DROP TABLE IF EXISTS `Resource_Player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Resource_Player` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Resource_Id` int NOT NULL,
  `Player_Id` int NOT NULL,
  `Resource_Quantity` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Resource_Id` (`Resource_Id`),
  KEY `Player_Id` (`Player_Id`),
  CONSTRAINT `Resource_Player_ibfk_1` FOREIGN KEY (`Resource_Id`) REFERENCES `Resource` (`Id`),
  CONSTRAINT `Resource_Player_ibfk_2` FOREIGN KEY (`Player_Id`) REFERENCES `Player` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resource_Player`
--

LOCK TABLES `Resource_Player` WRITE;
/*!40000 ALTER TABLE `Resource_Player` DISABLE KEYS */;
/*!40000 ALTER TABLE `Resource_Player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-13 20:52:45
