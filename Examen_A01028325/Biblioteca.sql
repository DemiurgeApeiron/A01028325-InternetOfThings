-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: Biblioteca
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
-- Table structure for table `Autores`
--

DROP TABLE IF EXISTS `Autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Autores` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(99) DEFAULT NULL,
  `apellido` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autores`
--

LOCK TABLES `Autores` WRITE;
/*!40000 ALTER TABLE `Autores` DISABLE KEYS */;
INSERT INTO `Autores` VALUES (151,'Stefanie','Wolff'),(152,'Kimberly','Ward'),(153,'George','Aikman'),(154,'Stephanie','Raxter'),(155,'Michael','Hayes'),(156,'Sadie','Nero'),(157,'Jennifer','Frailey'),(158,'Fernando','Hernandez'),(159,'David','Jones'),(160,'Gene','Lewis');
/*!40000 ALTER TABLE `Autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Libros`
--

DROP TABLE IF EXISTS `Libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Libros` (
  `id_libro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(99) DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=1501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Libros`
--

LOCK TABLES `Libros` WRITE;
/*!40000 ALTER TABLE `Libros` DISABLE KEYS */;
INSERT INTO `Libros` VALUES (1401,'Curvy Gargoyles','2020-01-11',682),(1402,'Angels Kinky','2020-01-18',260),(1403,'Bold Brunette','2020-01-30',895),(1404,'Reapers Blonde','2020-01-27',947),(1405,'Zombies Flirty','2020-01-31',514),(1406,'Wild Ghosts','2020-01-26',613),(1407,'Innocent Kinky','2020-01-04',444),(1408,'Gargoyles Reapers','2020-01-22',677),(1409,'Innocent Angels','2020-01-02',864),(1410,'Kinky Sirens','2020-01-05',753),(1411,'Cute Bold','2020-01-27',693),(1412,'Ancient Blonde','2020-01-07',649),(1413,'Bold Live','2020-01-14',383),(1414,'Curvy Fleshy','2020-01-23',394),(1415,'Gargoyles Bold','2020-01-02',343),(1416,'Live Brunette','2020-01-04',752),(1417,'Brunette Gargoyles','2020-01-17',277),(1418,'Mummies Cute','2020-01-19',16),(1419,'Live Steamy','2020-01-27',574),(1420,'Bold Angels','2020-01-07',792),(1421,'Kinky Lusty','2020-01-12',463),(1422,'Reapers Curvy','2020-01-24',289),(1423,'Lusty Sirens','2020-01-23',633),(1424,'Wild Fleshy','2020-01-05',911),(1425,'Reapers Ghosts','2020-01-14',146),(1426,'Mummies Crazy','2020-01-09',561),(1427,'Ghosts Crazy','2020-01-08',455),(1428,'Wild Steamy','2020-01-03',864),(1429,'Reapers Mummies','2020-01-22',978),(1430,'Brunette Angels','2020-01-30',692),(1431,'Kinky Wild','2020-01-14',465),(1432,'Bold Kinky','2020-01-25',695),(1433,'Sultry Curvy','2020-01-17',19),(1434,'Lusty Cute','2020-01-17',247),(1435,'Ghosts Demons','2020-01-03',686),(1436,'Ancient Zombies','2020-01-13',795),(1437,'Reapers Innocent','2020-01-28',349),(1438,'Sultry Innocent','2020-01-31',117),(1439,'Brunette Sirens','2020-01-16',829),(1440,'Flirty Cute','2020-01-18',377),(1441,'Brunette Reapers','2020-01-07',588),(1442,'Steamy Zombies','2020-01-12',192),(1443,'Wild Wild','2020-01-27',454),(1444,'Curvy Steamy','2020-01-24',299),(1445,'Brunette Lusty','2020-01-06',277),(1446,'Cute Innocent','2020-01-31',109),(1447,'Kinky Cute','2020-01-29',292),(1448,'Bold Ghosts','2020-01-01',357),(1449,'Wild Mummies','2020-01-25',522),(1450,'Demons Cute','2020-01-01',437),(1451,'Blonde Brunette','2020-01-13',941),(1452,'Fleshy Curvy','2020-01-10',217),(1453,'Mummies Angels','2020-01-02',813),(1454,'Lusty Curvy','2020-01-06',88),(1455,'Curvy Mummies','2020-01-21',435),(1456,'Fleshy Zombies','2020-01-31',283),(1457,'Cute Brunette','2020-01-11',995),(1458,'Crazy Curvy','2020-01-04',702),(1459,'Blonde Fleshy','2020-01-24',854),(1460,'Blonde Curvy','2020-01-07',716),(1461,'Flirty Lusty','2020-01-29',777),(1462,'Innocent Reapers','2020-01-16',965),(1463,'Cute Lusty','2020-01-10',2),(1464,'Steamy Ghosts','2020-01-25',730),(1465,'Angels Ancient','2020-01-30',424),(1466,'Kinky Steamy','2020-01-29',661),(1467,'Ghosts Blonde','2020-01-30',93),(1468,'Mummies Brunette','2020-01-23',980),(1469,'Innocent Brunette','2020-01-14',973),(1470,'Angels Angels','2020-01-18',88),(1471,'Steamy Sultry','2020-01-14',377),(1472,'Kinky Mummies','2020-01-09',897),(1473,'Crazy Ghosts','2020-01-13',419),(1474,'Wild Crazy','2020-01-15',456),(1475,'Angels Cute','2020-01-23',540),(1476,'Innocent Crazy','2020-01-01',421),(1477,'Flirty Live','2020-01-10',617),(1478,'Reapers Ancient','2020-01-22',200),(1479,'Gargoyles Curvy','2020-01-26',889),(1480,'Brunette Zombies','2020-01-06',944),(1481,'Cute Steamy','2020-01-23',548),(1482,'Kinky Zombies','2020-01-22',708),(1483,'Steamy Innocent','2020-01-15',912),(1484,'Flirty Zombies','2020-01-07',666),(1485,'Mummies Ghosts','2020-01-15',329),(1486,'Cute Ghosts','2020-01-29',734),(1487,'Reapers Gargoyles','2020-01-05',527),(1488,'Mummies Blonde','2020-01-01',181),(1489,'Zombies Brunette','2020-01-24',536),(1490,'Demons Bold','2020-01-22',961),(1491,'Mummies Kinky','2020-01-21',600),(1492,'Mummies Fleshy','2020-01-06',973),(1493,'Flirty Brunette','2020-01-21',781),(1494,'Zombies Ancient','2020-01-13',808),(1495,'Wild Reapers','2020-01-28',326),(1496,'Reapers Steamy','2020-01-15',739),(1497,'Fleshy Mummies','2020-01-26',923),(1498,'Cute Crazy','2020-01-21',263),(1499,'Flirty Kinky','2020-01-23',13),(1500,'Lusty Bold','2020-01-19',973);
/*!40000 ALTER TABLE `Libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_autores`
--

DROP TABLE IF EXISTS `libros_autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros_autores` (
  `id_libro` int DEFAULT NULL,
  `id_autor` int DEFAULT NULL,
  UNIQUE KEY `id_libro` (`id_libro`),
  KEY `id_autor` (`id_autor`),
  CONSTRAINT `libros_autores_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `Libros` (`id_libro`),
  CONSTRAINT `libros_autores_ibfk_2` FOREIGN KEY (`id_autor`) REFERENCES `Autores` (`id_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_autores`
--

LOCK TABLES `libros_autores` WRITE;
/*!40000 ALTER TABLE `libros_autores` DISABLE KEYS */;
INSERT INTO `libros_autores` VALUES (1401,151),(1402,152),(1403,153),(1404,154),(1405,155),(1406,156),(1407,157),(1408,158),(1409,159),(1410,160),(1411,151),(1412,152),(1413,153),(1414,154),(1415,155),(1416,156),(1417,157),(1418,158),(1419,159),(1420,160),(1421,151),(1422,152),(1423,153),(1424,154),(1425,155),(1426,156),(1427,157),(1428,158),(1429,159),(1430,160),(1431,151),(1432,152),(1433,153),(1434,154),(1435,155),(1436,156),(1437,157),(1438,158),(1439,159),(1440,160),(1441,151),(1442,152),(1443,153),(1444,154),(1445,155),(1446,156),(1447,157),(1448,158),(1449,159),(1450,160),(1451,151),(1452,152),(1453,153),(1454,154),(1455,155),(1456,156),(1457,157),(1458,158),(1459,159),(1460,160),(1461,151),(1462,152),(1463,153),(1464,154),(1465,155),(1466,156),(1467,157),(1468,158),(1469,159),(1470,160),(1471,151),(1472,152),(1473,153),(1474,154),(1475,155),(1476,156),(1477,157),(1478,158),(1479,159),(1480,160),(1481,151),(1482,152),(1483,153),(1484,154),(1485,155),(1486,156),(1487,157),(1488,158),(1489,159),(1490,160),(1491,151),(1492,152),(1493,153),(1494,154),(1495,155),(1496,156),(1497,157),(1498,158),(1499,159),(1500,160);
/*!40000 ALTER TABLE `libros_autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_tags`
--

DROP TABLE IF EXISTS `libros_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros_tags` (
  `id_libro` int DEFAULT NULL,
  `id_tag` int DEFAULT NULL,
  UNIQUE KEY `id_libro` (`id_libro`),
  KEY `id_tag` (`id_tag`),
  CONSTRAINT `libros_tags_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `Libros` (`id_libro`),
  CONSTRAINT `libros_tags_ibfk_2` FOREIGN KEY (`id_tag`) REFERENCES `Tags` (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_tags`
--

LOCK TABLES `libros_tags` WRITE;
/*!40000 ALTER TABLE `libros_tags` DISABLE KEYS */;
INSERT INTO `libros_tags` VALUES (1401,151),(1402,152),(1403,153),(1404,154),(1405,155),(1406,156),(1407,157),(1408,158),(1409,159),(1410,160),(1411,151),(1412,152),(1413,153),(1414,154),(1415,155),(1416,156),(1417,157),(1418,158),(1419,159),(1420,160),(1421,151),(1422,152),(1423,153),(1424,154),(1425,155),(1426,156),(1427,157),(1428,158),(1429,159),(1430,160),(1431,151),(1432,152),(1433,153),(1434,154),(1435,155),(1436,156),(1437,157),(1438,158),(1439,159),(1440,160),(1441,151),(1442,152),(1443,153),(1444,154),(1445,155),(1446,156),(1447,157),(1448,158),(1449,159),(1450,160),(1451,151),(1452,152),(1453,153),(1454,154),(1455,155),(1456,156),(1457,157),(1458,158),(1459,159),(1460,160),(1461,151),(1462,152),(1463,153),(1464,154),(1465,155),(1466,156),(1467,157),(1468,158),(1469,159),(1470,160),(1471,151),(1472,152),(1473,153),(1474,154),(1475,155),(1476,156),(1477,157),(1478,158),(1479,159),(1480,160),(1481,151),(1482,152),(1483,153),(1484,154),(1485,155),(1486,156),(1487,157),(1488,158),(1489,159),(1490,160),(1491,151),(1492,152),(1493,153),(1494,154),(1495,155),(1496,156),(1497,157),(1498,158),(1499,159),(1500,160);
/*!40000 ALTER TABLE `libros_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tags`
--

DROP TABLE IF EXISTS `Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tags` (
  `id_tag` int NOT NULL AUTO_INCREMENT,
  `tag` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tags`
--

LOCK TABLES `Tags` WRITE;
/*!40000 ALTER TABLE `Tags` DISABLE KEYS */;
INSERT INTO `Tags` VALUES (151,'miedeo'),(152,'suspenso'),(153,'Reapers'),(154,'fantasia'),(155,'si-fy'),(156,'accion'),(157,'novela'),(158,'dramático'),(159,'cuento'),(160,'Parodia');
/*!40000 ALTER TABLE `Tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista 1`
--

DROP TABLE IF EXISTS `vista 1`;
/*!50001 DROP VIEW IF EXISTS `vista 1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista 1` AS SELECT 
 1 AS `Titulo`,
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista 2`
--

DROP TABLE IF EXISTS `vista 2`;
/*!50001 DROP VIEW IF EXISTS `vista 2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista 2` AS SELECT 
 1 AS `Titulo`,
 1 AS `Tag`,
 1 AS `$`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista 3`
--

DROP TABLE IF EXISTS `vista 3`;
/*!50001 DROP VIEW IF EXISTS `vista 3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista 3` AS SELECT 
 1 AS `Titulo`,
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Tag`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista 1`
--

/*!50001 DROP VIEW IF EXISTS `vista 1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista 1` AS select `libros`.`titulo` AS `Titulo`,`autores`.`nombre` AS `Nombre`,`autores`.`apellido` AS `Apellido`,`libros`.`fecha_publicacion` AS `Fecha` from ((`libros` join `libros_autores` on((`libros`.`id_libro` = `libros_autores`.`id_libro`))) join `autores` on((`autores`.`id_autor` = `libros_autores`.`id_autor`))) order by `libros`.`fecha_publicacion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista 2`
--

/*!50001 DROP VIEW IF EXISTS `vista 2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista 2` AS select `libros`.`titulo` AS `Titulo`,`tags`.`tag` AS `Tag`,`libros`.`precio` AS `$` from ((`libros` join `libros_tags` on((`libros`.`id_libro` = `libros_tags`.`id_libro`))) join `tags` on((`tags`.`id_tag` = `libros_tags`.`id_tag`))) order by `libros`.`precio` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista 3`
--

/*!50001 DROP VIEW IF EXISTS `vista 3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista 3` AS select `libros`.`titulo` AS `Titulo`,`autores`.`nombre` AS `Nombre`,`autores`.`apellido` AS `Apellido`,`tags`.`tag` AS `Tag` from ((((`libros` join `libros_tags` on((`libros`.`id_libro` = `libros_tags`.`id_libro`))) join `tags` on((`tags`.`id_tag` = `libros_tags`.`id_tag`))) join `libros_autores` on((`libros`.`id_libro` = `libros_autores`.`id_libro`))) join `autores` on((`autores`.`id_autor` = `libros_autores`.`id_autor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-19 19:43:22
