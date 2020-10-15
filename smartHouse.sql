-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: smartHouse
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `Alertas`
--

DROP TABLE IF EXISTS `Alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Alertas` (
  `room_ID` int DEFAULT NULL,
  `time_sent` date DEFAULT NULL,
  `situation` varchar(42) DEFAULT NULL,
  `problem_solved` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `room_ID` (`room_ID`),
  CONSTRAINT `alertas_ibfk_1` FOREIGN KEY (`room_ID`) REFERENCES `Cuarto` (`room_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alertas`
--

LOCK TABLES `Alertas` WRITE;
/*!40000 ALTER TABLE `Alertas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Alertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Camera`
--

DROP TABLE IF EXISTS `Camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Camera` (
  `camera_ID` int NOT NULL AUTO_INCREMENT,
  `movement` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`camera_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Camera`
--

LOCK TABLES `Camera` WRITE;
/*!40000 ALTER TABLE `Camera` DISABLE KEYS */;
/*!40000 ALTER TABLE `Camera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Camera_in_room`
--

DROP TABLE IF EXISTS `Camera_in_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Camera_in_room` (
  `room_ID` int DEFAULT NULL,
  `camera_ID` int DEFAULT NULL,
  `movement` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `room_ID` (`room_ID`),
  KEY `camera_ID` (`camera_ID`),
  CONSTRAINT `camera_in_room_ibfk_1` FOREIGN KEY (`room_ID`) REFERENCES `Cuarto` (`room_ID`),
  CONSTRAINT `camera_in_room_ibfk_2` FOREIGN KEY (`camera_ID`) REFERENCES `Camera` (`camera_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Camera_in_room`
--

LOCK TABLES `Camera_in_room` WRITE;
/*!40000 ALTER TABLE `Camera_in_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `Camera_in_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candado`
--

DROP TABLE IF EXISTS `Candado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Candado` (
  `candado_ID` int NOT NULL AUTO_INCREMENT,
  `code` int DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`candado_ID`),
  KEY `code` (`code`),
  CONSTRAINT `candado_ibfk_1` FOREIGN KEY (`code`) REFERENCES `Control_de_acceso` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candado`
--

LOCK TABLES `Candado` WRITE;
/*!40000 ALTER TABLE `Candado` DISABLE KEYS */;
/*!40000 ALTER TABLE `Candado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candado_in_room`
--

DROP TABLE IF EXISTS `Candado_in_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Candado_in_room` (
  `room_ID` int DEFAULT NULL,
  `candado_ID` int DEFAULT NULL,
  `in_room` tinyint(1) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  UNIQUE KEY `room_ID` (`room_ID`),
  KEY `candado_ID` (`candado_ID`),
  CONSTRAINT `candado_in_room_ibfk_1` FOREIGN KEY (`room_ID`) REFERENCES `Cuarto` (`room_ID`),
  CONSTRAINT `candado_in_room_ibfk_2` FOREIGN KEY (`candado_ID`) REFERENCES `Candado` (`candado_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candado_in_room`
--

LOCK TABLES `Candado_in_room` WRITE;
/*!40000 ALTER TABLE `Candado_in_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `Candado_in_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Control_de_acceso`
--

DROP TABLE IF EXISTS `Control_de_acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Control_de_acceso` (
  `code` int NOT NULL,
  `level_of_energy` int DEFAULT NULL,
  `state_of_lock` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Control_de_acceso`
--

LOCK TABLES `Control_de_acceso` WRITE;
/*!40000 ALTER TABLE `Control_de_acceso` DISABLE KEYS */;
/*!40000 ALTER TABLE `Control_de_acceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Control_de_luces`
--

DROP TABLE IF EXISTS `Control_de_luces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Control_de_luces` (
  `room_ID` int DEFAULT NULL,
  `light_ID` int DEFAULT NULL,
  `lights_in_room` tinyint(1) DEFAULT NULL,
  `intensity` int DEFAULT NULL,
  `light_time_on` date DEFAULT NULL,
  `light_time_off` date DEFAULT NULL,
  UNIQUE KEY `room_ID` (`room_ID`),
  KEY `light_ID` (`light_ID`),
  CONSTRAINT `control_de_luces_ibfk_1` FOREIGN KEY (`light_ID`) REFERENCES `lights` (`light_ID`),
  CONSTRAINT `control_de_luces_ibfk_2` FOREIGN KEY (`room_ID`) REFERENCES `Cuarto` (`room_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Control_de_luces`
--

LOCK TABLES `Control_de_luces` WRITE;
/*!40000 ALTER TABLE `Control_de_luces` DISABLE KEYS */;
/*!40000 ALTER TABLE `Control_de_luces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cuarto`
--

DROP TABLE IF EXISTS `Cuarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cuarto` (
  `room_ID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`room_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cuarto`
--

LOCK TABLES `Cuarto` WRITE;
/*!40000 ALTER TABLE `Cuarto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cuarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lights`
--

DROP TABLE IF EXISTS `lights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lights` (
  `light_ID` int NOT NULL AUTO_INCREMENT,
  `light_on_off` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`light_ID`),
  UNIQUE KEY `light_ID` (`light_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lights`
--

LOCK TABLES `lights` WRITE;
/*!40000 ALTER TABLE `lights` DISABLE KEYS */;
/*!40000 ALTER TABLE `lights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Person` (
  `person_ID` int NOT NULL AUTO_INCREMENT,
  `code` int DEFAULT NULL,
  `room_ID` int DEFAULT NULL,
  PRIMARY KEY (`person_ID`),
  KEY `room_ID` (`room_ID`),
  KEY `code` (`code`),
  CONSTRAINT `person_ibfk_1` FOREIGN KEY (`room_ID`) REFERENCES `Cuarto` (`room_ID`),
  CONSTRAINT `person_ibfk_2` FOREIGN KEY (`code`) REFERENCES `Control_de_acceso` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Termostato`
--

DROP TABLE IF EXISTS `Termostato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Termostato` (
  `room_ID` int DEFAULT NULL,
  `termostato_ID` int NOT NULL AUTO_INCREMENT,
  `Estado` varchar(13) DEFAULT NULL,
  `temperature` int DEFAULT NULL,
  PRIMARY KEY (`termostato_ID`),
  KEY `room_ID` (`room_ID`),
  CONSTRAINT `termostato_ibfk_1` FOREIGN KEY (`room_ID`) REFERENCES `Cuarto` (`room_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Termostato`
--

LOCK TABLES `Termostato` WRITE;
/*!40000 ALTER TABLE `Termostato` DISABLE KEYS */;
/*!40000 ALTER TABLE `Termostato` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 18:39:34
