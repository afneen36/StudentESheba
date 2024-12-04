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
-- Table structure for table `esheba`
--

DROP TABLE IF EXISTS `esheba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esheba` (
  `UserID` int NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esheba`
--

LOCK TABLES `esheba` WRITE;
/*!40000 ALTER TABLE `esheba` DISABLE KEYS */;
INSERT INTO `esheba` VALUES (1,'moon','@moon','moon','rokn','mahaer','maha@gmail.com','saidpur','saidpur','1533006399','2003-01-10','161717','171615','ab+','islam'),(2,'moon','@moon','moon','rokn','mahaer','maha@gmail.com','saidpur','saidpur','1533006399','2003-01-10','161717','171615','ab+','islam'),(3,'hasan','hasan','mahamudul','roknuzzaman','mahaer jaman','moon@gmail.com','saidpur','nilphamari','01738981583','2003-01-10','222222','222222','A+','Islam'),(4,'s','s','s','s','s','s','s','s','s','2003-10-02','s','s','s','s'),(5,'afneen','@moon','Afneen Zaman','Ashad Zaman','Bilkis Begum','afneen@gmail.com','Saidpur','Tkg','017','2004-09-06','2345','34545','A+','Muslim'),(6,'tanjir','@tanjir','Tanjir Ahammad','  Md.Mamunur Rashid','Sabina Yesmin','tanjirahammad82@gmail.com','saidpur','Saidpur','01974404758','2003-09-12','123456789','3321456','O+','islam'),(7,'mahamudul','20032003','SM MAHAMUDUL HASAN','MD ROKNUZZAMAN','MAHAERNAGER','moon@gmail.com','Saidpur','Saidpur','01533006399','2003-10-01','161776762003','123456789','A+','Muslim'),(8,'mhasan','2003','SM MAHAMUDUL HASAN MOON','MD ROKNUZZAMAN','MAHAERNAGER','moon123@gmail.com','Saidpur','Nilphamari','015000000000','2003-01-10','111111','22222','A+','Muslim'),(9,'mhmoon','2003','SM MOON','ROKNUZZAMAN','MAHAERNAGER','moon@gmail.com','Saidpur','Nilphamari','017','2003-01-10','11111','22222','A+','Muslim'),(10,'medusaa','moon@','Afneen Zaman','Ashad Zaman','Bilkis Begum','afneen@gmail.com','thakurgaon','nilphamari','01533006399','2002-06-09','222222222','33333333','A+','islam'),(11,'anam','123','anam','anam','anam','anam','anam','anam','123','2003-01-22','123','123','anam','anam'),(12,'rohit12','123456','Rahit Sarkar','Sarkar','miss Sarkar','rahit1234@gnail.com','Fulbari','Saidpur','017222222222','2002-02-04','12345678','123456','o+','hindu'),(13,'punom123','12345','Punom ROY','Roy','Roy','punom123@gmail.com','Saidpur','Saidpur','01222222222','2000-02-21','1234560','1234560','o+','Hindu'),(14,'karim123','12345','MD.KARIM ISLAM','MD.FOJAL HAQUE','MORZINA BEGUM','karim12@gmail.com','DOMAR','SAIDPUR','0172545645','2000-02-24','123456','3245678','A+','ISLAM'),(15,'rahim123','123456','MD.RAHIM KHAN','MD.ABDUL JALIL','MINARA BEGUM','rahim1234@gmail.com','Dimla','Rangpur','01725666652','2000-04-24','123456','1234568','B+','Islam'),(16,'shawon123','123456','MD.MAHAMUDUL ISLAM ','MD.KADER ISLAM','MISS.KADER','shawon@gmail.com','SAIDPUR','SAIDPUR','0172546420','2002-02-24','54678920','45678203','O+','ISLAM'),(17,'Sakib123','1234567','Sakib Al Hassan','MD Borkot Al Hassan','Mst juli Hassan','sakib75@gmail.com','Magura','Magura khulna','01703556471','1994-04-27','N/A','1702357480','A+','Islam'),(18,'hasan','hasan','SM Mahamudul Hasan','Md Rokn','Mahaer','moon@gmail.com','Saidpur','Nilphamari','01533****','2003-10-01','2134520003','23670946','A+','Muslim'),(19,'2222','2222','2222','2222','2222','222@','222','222','2222','2003-10-20','2222','2222','A+','222'),(20,'awalboss','awal12345','MD AWAL HOSSAIN','MD ISMAIL HOSSAIN','MST JAHANARA BEGUM','awalasif2000@gmail.com','Saidpur','Debigonj pancharagh','01704518602','2000-11-15','153468200','N/B','A+ve','Islam'),(21,'m','@2003','mm','mm','mm','mm','a','a','01','2003-10-01','22','22','a','a'),(22,'afneenz','036','Afneen Zaman','Ashad Zaman','Mothers Name','afneenz@gmail.com','Thakurgaon','Thakurgaon','01786801918','2006-09-20','0802320105','258743694','A+','Islam'),(23,'afneenz','036','Afneen Zaman','Ashad Zaman','Mothers Name','afneenz@gmail.com','Thakurgaon','Thakurgaon','01786801918','2006-09-20','0802320105','258743694','A+','Islam'),(24,'mrghla39','025846dg','musrat jahan meghla','mahafuj alam','nurun nahar','meghlala90@gmail.com','vbfjvnjdfhi','ncvknfr','01786801918','2006-09-20','2641164','42161','a+','cnnief'),(25,'meghla26','036','nusrat j megh','ycbhcucb','ennedjejd','megh23@gmail.com','sndhnc','dcuenjnc','01786801918','2006-09-20','551481315','5151874982','a+','muslim'),(26,'masuma23','1234','masuma','masuma','masuma','masuma','masuma','masuma','01245846','2006-09-20','1245','1245','a+','islam'),(27,'afneen345','2002','afneen zaman','ajhvjdfbnvj','uhihuvjh','ihibj','hubhfgy','gfrdfg','265461320','2017-09-20','5412','145636','a+','uhgv'),(28,'suchi19','1234','Raduia Islam','deybxbs','djnswyd','sjnxdnsn@gmail.com','dhsnd','dhsns','0123647895','2006-09-22','1234','1234','a+','sjndnd'),(29,'afneen','2003','Afneen Zaman','Md Ashad Zaman','Bilkis Begum','afneen@gmail.com','Saidpur','Tkg','01777777777','2003-09-06','226353582','5266724','A+','Muslim');
/*!40000 ALTER TABLE `esheba` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-30 16:59:21
