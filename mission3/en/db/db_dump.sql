-- MySQL dump 10.13  Distrib 8.0.26
--
-- Host: 34.133.50.179    Database: dbcovidtesting
-- ------------------------------------------------------
-- Server version	5.7.34-google

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
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guest_name` varchar(200) NOT NULL,
  `home_country` varchar(200) DEFAULT NULL,
  `testing_type` varchar(200) DEFAULT NULL,
  `testing_result` varchar(200) DEFAULT NULL,
  `pdf` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;
INSERT INTO `records` VALUES (1,'Ervin Miles','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-ervin.pdf');
INSERT INTO `records` VALUES (2,'Jackie Stone','UK','Antigen','Negative','s029s02-as0202o9s-s29312-as-jackie.pdf');
INSERT INTO `records` VALUES (3,'Joseph Vargas','Germany','Antigen','Negative','s029s02-as0202o9s-s29312-as-joseph.pdf');
INSERT INTO `records` VALUES (4,'Velma Allison','Finland','Antigen','Negative','s029s02-as0202o9s-s29312-as-velma.pdf');
INSERT INTO `records` VALUES (5,'Darryl Gregor','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-darryl.pdf');
INSERT INTO `records` VALUES (6,'Jeannie Newto','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-jeanni.pdf');
INSERT INTO `records` VALUES (7,'Kumar Moore','India','Antigen','Negative','s029s02-as0202o9s-s29312-as-lydia.pdf');
INSERT INTO `records` VALUES (8,'Troy Gross','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-troyg.pdf');
INSERT INTO `records` VALUES (9,'Sally Mcguire','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-sally.pdf');
INSERT INTO `records` VALUES (10,'João Silva','Brazil','Antigen','Negative','s029s02-as0202o9s-s29312-as-johnni.pdf');
INSERT INTO `records` VALUES (11,'Otis Pearson','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-otisp.pdf');
INSERT INTO `records` VALUES (12,'Rosemary Morg','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-rosema.pdf');
INSERT INTO `records` VALUES (13,'Tony Barnes','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-tonyb.pdf');
INSERT INTO `records` VALUES (14,'Theresa Mcgee','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-theres.pdf');
INSERT INTO `records` VALUES (15,'Dora Phillips','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-dorap.pdf');
INSERT INTO `records` VALUES (16,'Irving Harvey','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-irving.pdf');
INSERT INTO `records` VALUES (17,'Isaac Cobb','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-isaac.pdf');
INSERT INTO `records` VALUES (18,'Shaun Alexand','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-shaun.pdf');
INSERT INTO `records` VALUES (19,'Jana Cruz','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-janac.pdf');
INSERT INTO `records` VALUES (20,'Tricia Berry','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-tricia.pdf');
INSERT INTO `records` VALUES (21,'Annie Meyer','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-annie.pdf');
INSERT INTO `records` VALUES (22,'Peter Patrick','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-peter.pdf');
INSERT INTO `records` VALUES (23,'Laurence Wade','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-lauren.pdf');
INSERT INTO `records` VALUES (24,'Roger Summers','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-roger.pdf');
INSERT INTO `records` VALUES (25,'Yvonne Stevenn','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-yvonne.pdf');
INSERT INTO `records` VALUES (26,'Lisa Lloyd','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-lisal.pdf');
INSERT INTO `records` VALUES (27,'Terry Mccormi','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-terry.pdf');
INSERT INTO `records` VALUES (28,'Javier Reid','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-javier.pdf');
INSERT INTO `records` VALUES (29,'Jamie George','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-jamie.pdf');
INSERT INTO `records` VALUES (30,'Judith Miller','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-judith.pdf');
INSERT INTO `records` VALUES (31,'Dallas Maxwel','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-dallas.pdf');
INSERT INTO `records` VALUES (32,'Kristin Aguil','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-kristi.pdf');
INSERT INTO `records` VALUES (33,'Marilyn Colli','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-marily.pdf');
INSERT INTO `records` VALUES (34,'Clifford Gray','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-cliffo.pdf');
INSERT INTO `records` VALUES (35,'Beverly Cohen','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-beverl.pdf');
INSERT INTO `records` VALUES (36,'Mandy Caldwel','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-mandy.pdf');
INSERT INTO `records` VALUES (37,'Charlene Brya','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-charle.pdf');
INSERT INTO `records` VALUES (38,'Phil Lawrence','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-phill.pdf');
INSERT INTO `records` VALUES (39,'Kay Crawford','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-kaycr.pdf');
INSERT INTO `records` VALUES (40,'Ann Sharp','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-annsh.pdf');
INSERT INTO `records` VALUES (41,'Maggie Simon','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-maggie.pdf');
INSERT INTO `records` VALUES (42,'Stacy Bowers','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-stacy.pdf');
INSERT INTO `records` VALUES (43,'Nicholas King','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-nichol.pdf');
INSERT INTO `records` VALUES (44,'Victoria Paul','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-victor.pdf');
INSERT INTO `records` VALUES (45,'Susan Leonard','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-susan.pdf');
INSERT INTO `records` VALUES (46,'Amanda Colema','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-amanda.pdf');
INSERT INTO `records` VALUES (47,'Billie Baldwi','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-billie.pdf');
INSERT INTO `records` VALUES (48,'Lillie Herrer','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-lillie.pdf');
INSERT INTO `records` VALUES (49,'Brandi Mathis','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-brandi.pdf');
INSERT INTO `records` VALUES (50,'Melvin Massey','USA','Antigen','Negative','s029s02-as0202o9s-s29312-as-melvin.pdf');
/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;
