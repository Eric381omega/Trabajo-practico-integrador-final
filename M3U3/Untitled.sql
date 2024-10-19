-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: base
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `Empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleados` (
  `ID_emp` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Trabajo` varchar(100) NOT NULL,
  `Edad` int NOT NULL,
  `Salario` int NOT NULL,
  `Email` varchar(150) NOT NULL,
  PRIMARY KEY (`ID_emp`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `Empleados` DISABLE KEYS */;
INSERT INTO `Empleados` VALUES (1,'Juan','Hagan','Programador Senior',32,120000,'juan_hagan@bignet.com'),(2,'Gonzalo','Pillai','Programador Senior',32,110000,'g_pillai@bignet.com'),(3,'Ana','Dharma','Desarrollador Web',27,90000,'ana@bignet.com'),(4,'Maria','Anchor','Desarrollador Web',26,85000,'mary@bignet.com'),(5,'Alfredo','Fernandez','Programador',31,75000,'af@bignet.com'),(6,'Juan','Aguero','Programador',34,80000,'juan@bignet.com'),(7,'Eduardo','Sacan','Programador',25,75000,'eddie@bignet.com'),(8,'Alejandro','Nanda','Programador',32,70000,'alenanda@bignet.com'),(9,'Hernan','Rosso','Especialista Multimedia',33,90000,'hernan@bignet.com'),(10,'Paublo','Simon','Especialista Multimedia',43,85000,'ps@bignet.com'),(11,'Arturo','Hernandez','Especialista Multimedia',32,75000,'arturo@bignet.com'),(12,'Jimena','Cazado','DiseÒador Web Senior',32,110000,'jimena@bignet.com'),(13,'Roberto','Luis','Administrador de Sistemas',35,100000,'roberto@bignet.com'),(14,'Daniel','Gutierrez','Administrador de Sistemas',34,900000,'daniel@bignet.com'),(15,'Miguel','Harper','Ejecutivo de Ventas Senior',36,120000,'miguel@bignet.com'),(16,'Monica','Sanchez','Ejecutivo de Ventas',30,90000,'monica@bignet.com'),(17,'Alicia','Simlai','Ejecutivo de Ventas',27,70000,'alicia@bignet.com'),(18,'Jose','Iriarte','Ejecutivo de Ventas',27,72000,'jose@bignet.com'),(19,'Sabrina','Allende','Gerente de Soporte Tecnico',32,200000,'sabrina@bignet.com'),(20,'Pedro','Campion','Gerente de Finanzas',36,220000,'pedro@bignet.com'),(21,'Mariano','Dharma','Presidente',28,300000,'mariano@bignet.com');
/*!40000 ALTER TABLE `Empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Novedades`
--

DROP TABLE IF EXISTS `Novedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Novedades` (
  `id` int NOT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `subtitulo` text,
  `cuerpo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Novedades`
--

LOCK TABLES `Novedades` WRITE;
/*!40000 ALTER TABLE `Novedades` DISABLE KEYS */;
INSERT INTO `Novedades` VALUES (0,'Buenas','Yo soy','Eric'),(1,'12345','Riquelme y Tevez111','volvimos a perder jajajaja111');
/*!40000 ALTER TABLE `Novedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `id` int NOT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (0,'eric','202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-10 21:39:10
