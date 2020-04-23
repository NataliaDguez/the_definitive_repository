-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: Optica
-- ------------------------------------------------------
-- Server version	8.0.0-dmr

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `glass_has_frame`
--

DROP TABLE IF EXISTS `glass_has_frame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glass_has_frame` (
  `id_glass_has_frame` int(11) NOT NULL AUTO_INCREMENT,
  `frame_id_glass_frame` int(11) NOT NULL,
  `glass_id_glass` int(11) NOT NULL,
  PRIMARY KEY (`id_glass_has_frame`,`glass_id_glass`),
  UNIQUE KEY `id_glass_has_frame_UNIQUE` (`id_glass_has_frame`),
  KEY `fk_glass_has_frame_frame1_idx` (`frame_id_glass_frame`),
  KEY `fk_glass_has_frame_glass1_idx` (`glass_id_glass`),
  CONSTRAINT `fk_glass_has_frame_frame1` FOREIGN KEY (`frame_id_glass_frame`) REFERENCES `frame` (`id_glass_frame`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_glass_has_frame_glass1` FOREIGN KEY (`glass_id_glass`) REFERENCES `glass` (`id_glass`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glass_has_frame`
--

LOCK TABLES `glass_has_frame` WRITE;
/*!40000 ALTER TABLE `glass_has_frame` DISABLE KEYS */;
INSERT INTO `glass_has_frame` VALUES (1,1,1);
/*!40000 ALTER TABLE `glass_has_frame` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-23  9:29:07
