-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: edu
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
-- Table structure for table `edu`
--

DROP TABLE IF EXISTS `edu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
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
  `HonoursDegree` varchar(50) NOT NULL,
  `HonoursFrom` varchar(50) NOT NULL,
  `HStudentId` varchar(50) NOT NULL,
  `HonoursCgpa` varchar(50) NOT NULL,
  `HonoursPassingYear` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu`
--

LOCK TABLES `edu` WRITE;
/*!40000 ALTER TABLE `edu` DISABLE KEYS */;
INSERT INTO `edu` VALUES ('user1','pass1','SSC School 1','Science','1234','S1001','5.00','2010','HSC College 1','Science','H1001','4.75','2012','Masters','University 1','M001','3.80','2016','Bachelors','University 2','B001','3.50','2014'),('jTextField22','jTextField23','jTextField1','jTextField2','jTextField3','jTextField4','jTextField5','jTextField6','jTextField7','jTextField8','jTextField9','jTextField10','jTextField11','jTextField12','jTextField13','jTextField14','jTextField15','jTextField16','jTextField17','jTextField18','jTextField19','jTextField20','jTextField21'),('moon','@moon','nghs','science','1617','24','5','2019','PLSCR','Science','21','5','2021','msc','baust','12','3','2029','cse','BAUST','87','4','2027'),('user1','pass1','SSC School 1','Science','1234','S1001','5.00','2010','HSC College 1','Science','H1001','4.75','2012','Masters','University 1','M001','3.80','2016','Bachelors','University 2','B001','3.50','2014'),('user1','pass1','SSC School 1','Science','1234','S1001','5.00','2010','HSC College 1','Science','H1001','4.75','2012','Masters','University 1','M001','3.80','2016','Bachelors','University 2','B001','3.50','2014'),('moon','jTextField23','jTextField1','jTextField2','jTextField3','jTextField4','jTextField5','jTextField6','jTextField7','jTextField8','jTextField9','jTextField10','jTextField11','jTextField12','jTextField13','jTextField14','jTextField15','jTextField16','jTextField17','jTextField18','jTextField19','jTextField20','jTextField21'),('afneen','@moon','TGGHS','SCIENCE','2346','9786','5','2020','TGC','SCIENCE','3456','5','2022','NO','NO','NO','NO','NO','BSC IN CSE','BAUST','36','3.5','2027'),('tanjirr','@tanjir','cscr','science','32','425058','5.00','2019','cscr','science','161883','5.00','2021','n\\a','n\\a','n\\a','n\\a','n\\a','BSC IN CSE','BAUST','56','4','2027'),('mahamudul','20032003','NGHS','SCIENCE','1617670494','216414','5.00','2019','PLSCR','SCIENCE','1617167','5.00','2021','MSC IN CSE','NULL','NULL','NULL','NULL','BSC IN CSE','BAUST','0802310405101087','3.87','2027'),('mhasan','2003','NGHS','SCIENCE','11111','111111','5.00','2019','PLSCR','SCIENCE','22222','5.00','2021','NULL','NULL','NULL','NULL','NULL','BSC IN CSE','BAUST','0802310405101087','3.87','2027'),('mhmoon','2003','NGHS','SCIENCE','11111','22222','5.0','2019','PLSCR','SCIENCE','22222','5.0','2021','NULL','NULL','NULL','NULL','NULL','BSC IN CSE','BAUST','0802310405101087','3.87','2027'),('punom','12345','DSS','SCIENCE','123456','12345','5.00','2019','DSS','SCIENCE','1234','5.00','2021','N/A','N/A','N/A','N/A','N/A','BSC ENGG IN CSE','BAUST','27','3.14','2027'),('karim123','12345','RCCI','SCIENCE','12457890','45201','5.00','2019','RCCI','SCIENCE','457860','5.00','2021','N/A','N/A','N/A','N/A','N/A','BSC ENGG IN CSE','BAUST','22021045','3.45','2026'),('rahim123','123456','RBR','SCIENCE','16457890','425058','5.00','2019','CSCR','SCIENCE','124568','5.00','2021','N/A','N/A','N/A','N/A','N/A','BSC ENGG IN EEE','SUST','25648201','3.78','2027'),('shawon123','123456','KMHS','SCIENCE','1618833735','425012','5.00','2019','KGC','SCIENCE','456210','5.00','2021','','','','','','BSC ENG IN CSE','BAUST','50','3.80','2027'),('sakib123','1234567','Dhaka collage','science','12348634','122300','4.00','2003','Dhaka collage','science','12354685','4.50','2005','N/A','N/A','N/A','N/A','N/A','N/A','N/A','N/A','N/A','N/A'),('hasan','hasan','NGHS','Science','1617670494','216414','5.00','2019','PLSCR','Science','161767','5.00','2021','NULL','NULL','NULL','NULL','NULL','BSc in CSE','BAUST','0802310405101087','3.87','2027'),('user1','pass1','SSC School 1','Science','1234','S1001','5.00','2010','HSC College 1','Science','H1001','4.75','2012','Masters','University 1','M001','3.80','2016','Bachelors','University 2','B001','3.50','2014'),('user1','pass1','SSC School 1','Science','1234','S1001','5.00','2010','HSC College 1','Science','H1001','4.75','2012','Masters','University 1','M001','3.80','2016','Bachelors','University 2','B001','3.50','2014'),('user1','pass1','SSC School 1','Science','1234','S1001','5.00','2010','HSC College 1','Science','H1001','4.75','2012','Masters','University 1','M001','3.80','2016','Bachelors','University 2','B001','3.50','2014'),('user1','pass1','SSC School 1','Science','1234','S1001','5.00','2010','HSC College 1','Science','H1001','4.75','2012','Masters','University 1','M001','3.80','2016','Bachelors','University 2','B001','3.50','2014'),('masuma23','1234','1234','science','1234','1234','5.00','2019','1234','science','1245','5.00','2017','cse','1234','1234','5.00','2024','cse','1234','1234','5.00','2020'),('afneen345','2002','tgghs','science','1234','1234','5.00','2020','tgc','science','123','5.00','2022','cse','baust','13235','4.00','2021','cse','baust','123','4.00','2027'),('suchi19','1234','tgghs','science','1234','1234','4.50','2020','tgc','science','1234','5.00','2022','','','','','','cse','baust','1234','4.00','2027');
/*!40000 ALTER TABLE `edu` ENABLE KEYS */;
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
