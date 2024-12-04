-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: esheba
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `esheba1`
--

DROP TABLE IF EXISTS `esheba1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esheba1` (
  `RegNo` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `FathersName` varchar(100) NOT NULL,
  `MothersName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PresentAddress` varchar(255) NOT NULL,
  `PermanentAddress` varchar(255) NOT NULL,
  `PhoneNo` varchar(20) NOT NULL,
  `BirthDate` date NOT NULL,
  `BirthRegNo` varchar(50) NOT NULL,
  `NIDNo` varchar(20) NOT NULL,
  `BloodGroup` varchar(5) NOT NULL,
  `Religion` varchar(50) NOT NULL,
  `SscFrom` varchar(50) NOT NULL,
  `SscGroup` varchar(50) NOT NULL,
  `SscRegNo` varchar(50) NOT NULL,
  `SscRoll` varchar(50) NOT NULL,
  `SscGpa` varchar(50) NOT NULL,
  `SscPassingYear` varchar(50) NOT NULL,
  `HscFrom` varchar(50) NOT NULL,
  `HscGroup` varchar(50) NOT NULL,
  `HscRoll` varchar(50) NOT NULL,
  `HscGpa` varchar(50) NOT NULL,
  `HscPassingYear` varchar(50) NOT NULL,
  `MastersDegree` varchar(50) NOT NULL,
  `MastersFrom` varchar(50) NOT NULL,
  `MStudentId` varchar(50) NOT NULL,
  `MastersCgpa` varchar(50) NOT NULL,
  `MastersPassingYear` varchar(50) NOT NULL,
  `BscDegree` varchar(50) NOT NULL,
  `BscFrom` varchar(50) NOT NULL,
  `BStudentId` varchar(50) NOT NULL,
  `BscCgpa` varchar(50) NOT NULL,
  `BscPassingYear` varchar(50) NOT NULL,
  PRIMARY KEY (`RegNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esheba1`
--

LOCK TABLES `esheba1` WRITE;
/*!40000 ALTER TABLE `esheba1` DISABLE KEYS */;
/*!40000 ALTER TABLE `esheba1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-30 16:59:22
