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
-- Table structure for table `glass`
--

DROP TABLE IF EXISTS `glass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glass` (
  `id_glass` int(11) NOT NULL AUTO_INCREMENT,
  `glass_grad_izq` decimal(4,0) NOT NULL COMMENT 'Diopters level left glass',
  `glass_grad_dcha` decimal(4,0) NOT NULL COMMENT 'Diopters level right glass',
  `glass_colour` varchar(45) NOT NULL,
  `glass_price` decimal(4,0) NOT NULL,
  `brand_id_brand` int(11) NOT NULL,
  PRIMARY KEY (`id_glass`),
  KEY `fk_glass_brand1_idx` (`brand_id_brand`),
  CONSTRAINT `fk_glass_brand1` FOREIGN KEY (`brand_id_brand`) REFERENCES `brand` (`id_brand`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glass`
--

LOCK TABLES `glass` WRITE;
/*!40000 ALTER TABLE `glass` DISABLE KEYS */;
INSERT INTO `glass` VALUES (1,4,1,'red',169,50),(2,4,1,'red',168,50),(4,3,3,'red',168,50),(5,1,1,'blue',89,50),(9,1,2,'black',120,50);
/*!40000 ALTER TABLE `glass` ENABLE KEYS */;
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
