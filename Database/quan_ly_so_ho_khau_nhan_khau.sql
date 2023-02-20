-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: quan_ly_so_ho_khau
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `nhan_khau`
--

DROP TABLE IF EXISTS `nhan_khau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhan_khau` (
  `ID` int NOT NULL,
  `soCMT_CCCD` int DEFAULT NULL,
  `hoTen` varchar(100) NOT NULL,
  `ngaySinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) DEFAULT NULL,
  `noiSinh` varchar(100) DEFAULT '',
  `nguyenQuan` varchar(100) DEFAULT NULL,
  `danToc` varchar(100) DEFAULT NULL,
  `quocTich` varchar(100) DEFAULT NULL,
  `soHoChieu` varchar(100) DEFAULT NULL,
  `noiThuongTru` varchar(100) DEFAULT NULL,
  `diaChiHienTai` varchar(100) DEFAULT NULL,
  `tonGiao` varchar(100) DEFAULT NULL,
  `ghiChu` varchar(100) DEFAULT NULL,
  `ngayTao` date DEFAULT NULL,
  `idNguoiTao` int DEFAULT NULL,
  `ngayXoa` date DEFAULT NULL,
  `idNguoiXoa` int DEFAULT NULL,
  `lyDoXoa` varchar(100) DEFAULT NULL,
  `dienThoai` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNguoiTao` (`idNguoiTao`,`idNguoiXoa`),
  KEY `idNguoiXoa` (`idNguoiXoa`),
  CONSTRAINT `nhan_khau_ibfk_1` FOREIGN KEY (`idNguoiTao`) REFERENCES `users` (`id`),
  CONSTRAINT `nhan_khau_ibfk_2` FOREIGN KEY (`idNguoiXoa`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_khau`
--

LOCK TABLES `nhan_khau` WRITE;
/*!40000 ALTER TABLE `nhan_khau` DISABLE KEYS */;
INSERT INTO `nhan_khau` VALUES (1,123456789,'Nguyễn Thị Hồng Vân','2002-06-26','Nữ','Thái Nguyên','Thái Nguyên','Kinh','Việt Nam','','Thái Nguyên','Số 1 Hà Nội','Không','Tạm vắng','2023-02-21',1,NULL,NULL,NULL,'0123456789'),(2,987654321,'Nguyễn Duy Phong','2002-11-12','Nam','Hòa Bình','Hưng Yên','Kinh','Việt Nam','123456','Hòa Bình','Số 2 Hà Nội','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,'0987654321'),(3,123789456,'Nguyễn Bá Tuấn','2002-06-25','Nam','Hà Nội','Hà Nội','Kinh','Việt Nam',NULL,'Hà Nội','Số 3 Hà Nội','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,'0123789456'),(4,987321654,'Vũ Xuân Lợi','2002-03-31','Nam','Thanh Hóa','Thanh Hóa','Kinh','Việt Nam',NULL,'Thanh Hóa','Số 4 Hà Nội','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,'0987321654'),(5,999666420,'Trần Quang Đông','2002-10-18','Nam','Bắc Giang','Bắc Giang','Kinh','Việt Nam',NULL,'Bắc Giang','Số 5 Hà Nội','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,'0999666420'),(6,NULL,'Hoàng Thị Hằng Nga','2020-05-31','Nữ','Thái Nguyên','Thái Nguyên','Kinh','Việt Nam',NULL,'Thái Nguyên','Không phải số 1 Hà Nội','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,NULL),(7,210020235,'Hoàng Văn An','2000-08-17','Nam','Hải Phòng','Hải Phòng','Kinh','Việt Nam',NULL,'Hải Phòng','Chắc chắn số 1 Hà Nội','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,'0135792468'),(8,123123123,'Trần Thu Bình','2003-09-16','Nữ','Hòa Bình','Hòa Bình','Kinh','Việt Nam',NULL,'Hòa Bình','Số 2 Hà Nội','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,'0975318642'),(9,NULL,'Nguyễn Bá Phúc','2021-01-01','Nam','Hải Dương','Hà Nội','Kinh','Việt Nam',NULL,'Hà Nội','Số 3 Hà Nội','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,NULL),(10,NULL,'Nguyễn Tuấn Tú','2020-02-04','Nam','Hải Dương','Hà Nội','Kinh','Việt Nam',NULL,'Hà Nội','Số 3 Hà Nội','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,NULL),(11,123095643,'Nguyễn Quỳnh','2003-03-30','Nữ','Hải Dương','Hải Dương','Kinh','Việt Nam',NULL,'Hải Dương','Số 3 Hà Nội','Không','Đã mất','2023-02-21',1,NULL,NULL,NULL,'0990123456'),(12,690540343,'Vũ Như Ý','2003-07-21','Nữ','Nghệ An','Nghệ An','Kinh','Việt Nam','654321','Nghệ An','Số 4 Hà Nội đấy','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,'0210007003'),(13,NULL,'Vũ Ngọc Xuân','2020-05-16','Nữ','Hà Nội','Thanh Hóa','Kinh','Việt Nam',NULL,'Hà Nội','Số 4 Hà Nội đấy','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,NULL),(14,NULL,'Vũ Tiến Lợi','2020-10-20','Nam','Thanh Hóa','Thanh Hóa','Kinh','Việt Nam',NULL,'Thanh Hóa','Số 4 Hà Nội đấy','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,NULL),(15,504905111,'Đinh Thị Sáng','2001-12-11','Nữ','Bắc Giang','Bắc Giang','Kinh','Việt Nam',NULL,'Bắc Giang','Số 5 Hà Nội','Không',NULL,'2023-02-21',1,NULL,NULL,NULL,'0112121122');
/*!40000 ALTER TABLE `nhan_khau` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-21  5:05:24
