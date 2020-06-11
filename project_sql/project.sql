-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.19.04.2-log

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `naam` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `wachtwoord` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Karin ','karin@gmail.nl','70b77b7546d42e83139316ec07d048672f5c4aa41a1fec329de6c18e6ef53e3cf7ad124af18aec0b55a25adeb1051f47e8899921cfd9af560e8dafeb0939abcf'),(2,'Sam','sam@gmail.nl','70b77b7546d42e83139316ec07d048672f5c4aa41a1fec329de6c18e6ef53e3cf7ad124af18aec0b55a25adeb1051f47e8899921cfd9af560e8dafeb0939abcf'),(3,'Sara','sara@gmail.nl','70b77b7546d42e83139316ec07d048672f5c4aa41a1fec329de6c18e6ef53e3cf7ad124af18aec0b55a25adeb1051f47e8899921cfd9af560e8dafeb0939abcf'),(4,'Jan','jan@gmail.nl','70b77b7546d42e83139316ec07d048672f5c4aa41a1fec329de6c18e6ef53e3cf7ad124af18aec0b55a25adeb1051f47e8899921cfd9af560e8dafeb0939abcf');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `titel` varchar(32) NOT NULL,
  `subtitel` varchar(64) NOT NULL,
  `omschrijving` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (1,'Kathedraal Malaga','Malaga, Spanje','Gelegen in het historische centrum van Malaga.'),(2,'Waterval Cascade du Rouget','Franse Alpen','Gelegen in het natuurreservaat Sixt-Passy.'),(3,'Navagio Beach','Zakynthos, Griekenland','Strand aan het Griekse eiland Zakynthos.'),(4,'Disneyland Parijs','Parijs, Frankrijk','Een attractiepark- en recreatiecomplex in Marne-la-Vallee.');
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reacties`
--

DROP TABLE IF EXISTS `reacties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reacties` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `foto` int(4) NOT NULL,
  `account` int(4) NOT NULL,
  `reactie` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reacties`
--

LOCK TABLES `reacties` WRITE;
/*!40000 ALTER TABLE `reacties` DISABLE KEYS */;
INSERT INTO `reacties` VALUES (1,1,1,'De Kathedraal is zoals in veel Spaanse steden indrukwekkend. In de avond is de kathedraal verlicht, wat er ook prachtig uitzag. Zeker de moeite waard om eens te bezoeken! '),(2,1,3,'Zeer mooie bezienswaardigheid. De moeite waard om eens te bezoeken als je in Malaga bent. Natuurlijk moet je wel van architectuur houden. Ook kan het erg druk zijn, het beste is om op zondag na de dienst te gaan. '),(3,1,4,'Mooi gebouw maar niet fantastisch. Op zondag moet je geen entree betalen. Een tip is dus om op zondag te gaan. '),(4,2,2,'Prachtige waterval waar je rondom kan wandelen en kan eten! Zeker de moeite om eens te bezoeken. '),(5,2,1,'Mooie waterval. Mogelijk om tot bovenaan te rijden. Er is een restaurant boven voor een pitstop. Het lijkt me wel erg zwaar om helemaal vanaf beneden te starten met lopen. '),(6,3,3,'De vaart ernaar is leuker dan het zien van dit wrak. Alleen maar boten vol toeristen en een wrak wat helemaal vol is met allemaal touristen. Het is erg mooi om te zien, maar heel touristisch.'),(7,3,4,'Een heel mooi strand, met prachtig helder blauw water. Aanrader om een boottocht te maken hier.'),(8,3,1,'Dank je: vind dit zelf ook best goed gelukt, hoewel de foto relatief donker geworden is.'),(9,4,2,'Leuk park, maar vermijdt het park tijdens het weekend of schoolvakanties in Frankrijk! Je betaald immers veel geld om gemiddeld 1 tot 1u30 per attractie aan te schuiven. Ook het eten is duur en meestal is het dan nog fastfood. Bovendien is logeren in een hotel van Disney duur. Het is beter om een hotel te boeken buiten het park. Als je tijdens een rustigere periode gaat, is het denk ik een hele leuke ervaring.');
/*!40000 ALTER TABLE `reacties` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-11 18:57:46
