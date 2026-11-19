-- MySQL dump 10.13  Distrib 26.10.0, for Linux (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	26.10.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Current Database: `ad`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ad` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ad`;

--
-- Table structure for table `Equipo`
--

DROP TABLE IF EXISTS `Equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipo`
--

LOCK TABLES `Equipo` WRITE;
/*!40000 ALTER TABLE `Equipo` DISABLE KEYS */;
INSERT INTO `Equipo` VALUES (2,'Portátil HP ProBook 450',NULL,NULL,'Portátiles',0),(3,'Portátil Lenovo ThinkPad E15',NULL,NULL,'Portátiles',0),(4,'Portátil Acer Aspire 5',NULL,NULL,'Portátiles',1),(5,'Portátil ASUS ExpertBook B1',NULL,NULL,'Portátiles',1),(6,'Tablet Samsung Galaxy Tab A9',NULL,NULL,'Tablets',1),(7,'Tablet Apple iPad 10ª Gen',NULL,NULL,'Tablets',1),(8,'Tablet Lenovo Tab M10',NULL,NULL,'Tablets',1),(9,'Tablet Xiaomi Redmi Pad',NULL,NULL,'Tablets',1),(11,'Proyector Epson EB-X06',NULL,NULL,'Proyectores',1),(12,'Proyector BenQ MX560',NULL,NULL,'Proyectores',1),(13,'Proyector ViewSonic PA503S',NULL,NULL,'Proyectores',1),(14,'Proyector Acer X1128H',NULL,NULL,'Proyectores',1),(15,'Proyector Optoma X400LVe',NULL,NULL,'Proyectores',1),(16,'Cámara Canon EOS 2000D',NULL,NULL,'Fotografía',1),(17,'Cámara Nikon D3500',NULL,NULL,'Fotografía',1),(18,'Cámara Sony Alpha A6000',NULL,NULL,'Fotografía',1),(19,'Cámara Panasonic Lumix G7',NULL,NULL,'Fotografía',1),(20,'Cámara Fujifilm X-T200',NULL,NULL,'Fotografía',1),(21,'Micrófono Blue Yeti',NULL,NULL,'Audio',1),(22,'Micrófono Rode NT-USB',NULL,NULL,'Audio',1),(23,'Micrófono HyperX QuadCast',NULL,NULL,'Audio',1),(24,'Micrófono Samson Q2U',NULL,NULL,'Audio',1),(25,'Micrófono Fifine K669B',NULL,NULL,'Audio',1),(26,'Altavoz JBL Charge 5',NULL,NULL,'Audio',1),(27,'Altavoz Sony SRS-XB23',NULL,NULL,'Audio',1),(28,'Altavoz Bose SoundLink',NULL,NULL,'Audio',1),(29,'Altavoz LG XBoom Go',NULL,NULL,'Audio',1),(30,'Altavoz Anker Soundcore',NULL,NULL,'Audio',1),(31,'Monitor Dell 24\"',NULL,NULL,'Monitores',1),(32,'Monitor LG 27\"',NULL,NULL,'Monitores',1),(33,'Monitor Samsung 24\"',NULL,NULL,'Monitores',1),(34,'Monitor ASUS ProArt 27\"',NULL,NULL,'Monitores',1),(35,'Monitor Philips 24\"',NULL,NULL,'Monitores',1),(36,'Impresora HP LaserJet M110',NULL,NULL,'Impresoras',1),(37,'Impresora Brother HL-L2350DW',NULL,NULL,'Impresoras',1),(38,'Impresora Epson EcoTank L3250',NULL,NULL,'Impresoras',1),(39,'Impresora Canon PIXMA TS5350',NULL,NULL,'Impresoras',1),(40,'Impresora Xerox B230',NULL,NULL,'Impresoras',1),(41,'Router TP-Link Archer AX55',NULL,NULL,'Redes',1),(42,'Router ASUS RT-AX58U',NULL,NULL,'Redes',1),(43,'Router FRITZ!Box 7530',NULL,NULL,'Redes',1),(44,'Switch Cisco SG250-08',NULL,NULL,'Redes',1),(45,'Switch Netgear GS108',NULL,NULL,'Redes',1),(46,'Gafas Meta Quest 3',NULL,NULL,'Realidad Virtual',1),(47,'Gafas Pico 4',NULL,NULL,'Realidad Virtual',1),(48,'Kit HTC Vive Cosmos',NULL,NULL,'Realidad Virtual',1),(49,'Kit PlayStation VR2',NULL,NULL,'Realidad Virtual',1),(50,'Kit Oculus Quest 2',NULL,NULL,'Realidad Virtual',1),(51,'Kit Arduino Uno R4',NULL,NULL,'Electrónica',1),(52,'Kit Raspberry Pi 5',NULL,NULL,'Electrónica',1),(53,'Kit ESP32 DevKit',NULL,NULL,'Electrónica',1),(54,'Kit Sensores Básicos',NULL,NULL,'Electrónica',1),(55,'Kit Robótica Educativa',NULL,NULL,'Electrónica',1),(56,'Consola PlayStation 5',NULL,NULL,'Videojuegos',1),(57,'Consola Xbox Series X',NULL,NULL,'Videojuegos',1),(58,'Consola Nintendo Switch OLED',NULL,NULL,'Videojuegos',1),(59,'Steam Deck LCD',NULL,NULL,'Videojuegos',1),(60,'Steam Deck OLED',NULL,NULL,'Videojuegos',1),(61,'Trípode Manfrotto Compact',NULL,NULL,'Fotografía',1),(62,'Trípode Hama Star 63',NULL,NULL,'Fotografía',1),(63,'Trípode Amazon Basics',NULL,NULL,'Fotografía',1),(64,'Trípode K&F Concept',NULL,NULL,'Fotografía',0),(65,'Trípode Vanguard Alta Pro',NULL,NULL,'Fotografía',1),(66,'Pantalla de proyección 100\"',NULL,NULL,'Presentación',0),(67,'Pantalla de proyección 120\"',NULL,NULL,'Presentación',1),(68,'Puntero láser Logitech R400',NULL,NULL,'Presentación',0),(69,'Pizarra digital portátil',NULL,NULL,'Presentación',1),(70,'Clicker Kensington',NULL,NULL,'Presentación',1),(71,'Disco SSD Externo 1TB Samsung',NULL,NULL,'Almacenamiento',0),(72,'Disco SSD Externo 2TB Crucial',NULL,NULL,'Almacenamiento',1),(73,'Disco Duro Externo 4TB WD',NULL,NULL,'Almacenamiento',1),(74,'NAS Synology DS224+',NULL,NULL,'Almacenamiento',0),(75,'Memoria USB 128GB Kingston',NULL,NULL,'Almacenamiento',1),(76,'Impresora 3D Ender 3 V3',NULL,NULL,'Fabricación Digital',1),(77,'Impresora 3D Prusa MK4',NULL,NULL,'Fabricación Digital',1),(78,'Escáner 3D Creality CR-Scan',NULL,NULL,'Fabricación Digital',1),(79,'Plotter de corte Silhouette',NULL,NULL,'Fabricación Digital',1),(80,'Grabadora láser Ortur Laser Master',NULL,NULL,'Fabricación Digital',1),(81,'Portátil Lenovo ThinkPad T14',NULL,NULL,'Portátiles',1),(82,'Portátil Dell XPS 13',NULL,NULL,'Portátiles',1),(83,'Portátil HP EliteBook 840',NULL,NULL,'Portátiles',1),(84,'Portátil ASUS ZenBook 14',NULL,NULL,'Portátiles',0),(85,'Portátil MSI Modern 15',NULL,NULL,'Portátiles',1),(86,'Cámara Web Logitech C920',NULL,NULL,'Videoconferencia',1),(87,'Cámara Web Logitech Brio',NULL,NULL,'Videoconferencia',1),(88,'Cámara Web Microsoft Modern Webcam',NULL,NULL,'Videoconferencia',1),(89,'Cámara Web Lenovo 300 FHD',NULL,NULL,'Videoconferencia',1),(90,'Cámara Web HP 320 FHD',NULL,NULL,'Videoconferencia',1),(91,'Kit Podcast Básico',NULL,NULL,'Audio',1),(92,'Kit Streaming Profesional',NULL,NULL,'Audio',0),(93,'Mesa de mezclas Behringer Xenyx',NULL,NULL,'Audio',1),(94,'Auriculares Sony WH-CH720N',NULL,NULL,'Audio',1),(95,'Auriculares Audio-Technica M50X',NULL,NULL,'Audio',1),(96,'Bicicleta eléctrica urbana',NULL,NULL,'Movilidad',0),(97,'Patinete eléctrico Xiaomi Pro 2',NULL,NULL,'Movilidad',0),(98,'GPS Garmin eTrex 32x',NULL,NULL,'Geolocalización',1),(99,'Walkie Talkie Motorola T82',NULL,NULL,'Comunicación',1),(100,'Dron DJI Mini 4K',NULL,NULL,'Drones',0);
/*!40000 ALTER TABLE `Equipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-12  9:17:28
