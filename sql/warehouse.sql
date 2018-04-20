# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.13)
# Database: warehouse
# Generation Time: 2018-04-20 07:30:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table asset_acatagory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_acatagory`;

CREATE TABLE `asset_acatagory` (
  `groupid` char(3) NOT NULL DEFAULT '',
  `catagory` varchar(5) NOT NULL DEFAULT '',
  `descriptions` varchar(100) DEFAULT NULL,
  KEY `catagory` (`catagory`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `asset_acatagory` WRITE;
/*!40000 ALTER TABLE `asset_acatagory` DISABLE KEYS */;

INSERT INTO `asset_acatagory` (`groupid`, `catagory`, `descriptions`)
VALUES
	('01','024','Infusion Pump'),
	('02','018','เครื่องปรับอากาศ'),
	('03','002','คอมพิวเตอร์โน๊ตบุค'),
	('04','002','เครื่องขยายเสียง'),
	('05','001','กล้อง'),
	('06','001','รถเข็น'),
	('07','001','เครื่องชั่ง'),
	('08','006','เครื่องกรองน้ำ'),
	('08','007','เครื่องซักผ้า'),
	('09','003','รถยนต์'),
	('10','008','เครื่องเจียร'),
	('11','001','เครื่องเล่นเด็ก'),
	('99','999','ไม่ระบุ'),
	('03','003','เครื่องถ่ายทอดสัญญาณ (HUB/Switch/Router)'),
	('03','004','เครื่องแปลงรหัสสัญญาณ (Modem)'),
	('03','001','คอมพิวเตอร์ประมวลผล (ไมโครคอมพิวเตอร์)'),
	('03','005','Printer'),
	('03','006','Scanner'),
	('03','007','เครื่องสำรองไฟ (UPS)'),
	('03','008','โปรแกรมคอมพิวเตอร์ หรือซอฟต์แวร์'),
	('05','002','Projecter');

/*!40000 ALTER TABLE `asset_acatagory` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table asset_astatus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_astatus`;

CREATE TABLE `asset_astatus` (
  `a_status` char(2) NOT NULL DEFAULT '',
  `descriptions` varchar(50) DEFAULT NULL,
  `enterby` varchar(30) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `editby` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`a_status`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

LOCK TABLES `asset_astatus` WRITE;
/*!40000 ALTER TABLE `asset_astatus` DISABLE KEYS */;

INSERT INTO `asset_astatus` (`a_status`, `descriptions`, `enterby`, `enterdate`, `editdate`, `editby`)
VALUES
	('1','ใช้งานปกติ',NULL,NULL,NULL,NULL),
	('2','ส่งคืนคลัง สภาพใช้งานได้',NULL,NULL,NULL,NULL),
	('3','ส่งคืนคลัง สภาพชำรุด',NULL,NULL,NULL,NULL),
	('4','รอจำหน่าย',NULL,NULL,NULL,NULL),
	('5','จำหน่ายแล้ว',NULL,NULL,NULL,NULL),
	('6','ตรวจสอบข้อมูล','ผู้ดูแลระบบ',NULL,NULL,'ผู้ดูแลระบบ'),
	('7','อื่นๆ',NULL,NULL,NULL,NULL),
	('8','ชำรุด/เสีย (ซ่อมได้)','ผู้ดูแลระบบ',NULL,NULL,'ผู้ดูแลระบบ'),
	('9','ชำรุด/เสีย (ซ่อมไม่ได้)','ผู้ดูแลระบบ',NULL,NULL,'ผู้ดูแลระบบ');

/*!40000 ALTER TABLE `asset_astatus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table asset_asubstatus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_asubstatus`;

CREATE TABLE `asset_asubstatus` (
  `a_status` char(2) NOT NULL DEFAULT '',
  `a_substatus` char(2) NOT NULL DEFAULT '',
  `descriptions` varchar(50) DEFAULT NULL,
  `enterby` varchar(30) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `editby` varchar(50) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  PRIMARY KEY (`a_status`,`a_substatus`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

LOCK TABLES `asset_asubstatus` WRITE;
/*!40000 ALTER TABLE `asset_asubstatus` DISABLE KEYS */;

INSERT INTO `asset_asubstatus` (`a_status`, `a_substatus`, `descriptions`, `enterby`, `enterdate`, `editby`, `editdate`)
VALUES
	('1','1','ใช้การได้',NULL,'2004-08-03 22:46:22',NULL,'1900-01-01 00:25:21'),
	('2','1','อยู่ระหว่างการสอบวัดเทียบ',NULL,'2004-08-03 22:47:12',NULL,'1900-01-01 00:25:21'),
	('2','2','รอจำหน่าย',NULL,'2007-04-09 15:16:45',NULL,'1900-01-01 00:25:21'),
	('5','1','จำหน่ายแล้ว',NULL,'2004-08-28 15:52:34',NULL,'1900-01-01 00:25:21'),
	('5','2','อยู่ระหว่างการจำหน่าย',NULL,'2004-08-03 22:47:42',NULL,'1900-01-01 00:25:21'),
	('5','3','รอจำหน่าย',NULL,'2004-10-01 19:18:28',NULL,'1900-01-01 00:25:21');

/*!40000 ALTER TABLE `asset_asubstatus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table asset_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_group`;

CREATE TABLE `asset_group` (
  `groupid` char(3) NOT NULL DEFAULT '',
  `description` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

LOCK TABLES `asset_group` WRITE;
/*!40000 ALTER TABLE `asset_group` DISABLE KEYS */;

INSERT INTO `asset_group` (`groupid`, `description`)
VALUES
	('01','01-ครุภัณฑ์การแพทย์'),
	('02','02-ครุภัณฑ์สำนักงาน'),
	('03','03-ครุภัณฑ์คอมพิวเตอร์'),
	('04','04-ครุภัณฑ์ไฟฟ้าและวิทยุ'),
	('05','05-ครุภัณฑ์โฆษณาและเผยแพร่'),
	('06','06-ครุภัณฑ์ก่อสร้าง'),
	('07','07-ครุภัณฑ์การเกษตร'),
	('08','08-ครุภัณฑ์งานบ้านงานครัว'),
	('09','09-ครุภัณฑ์ยานพาหนะ'),
	('10','10-ครุภัณฑ์โรงงาน'),
	('11','11-ครุภัณฑ์การศึกษา'),
	('99','99-ไม่ระบุ');

/*!40000 ALTER TABLE `asset_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table asset_master
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_master`;

CREATE TABLE `asset_master` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `sap_code` varchar(50) DEFAULT NULL,
  `budget_year` varchar(4) DEFAULT NULL,
  `regis_date` datetime DEFAULT NULL,
  `aname` varchar(150) DEFAULT NULL,
  `dept` varchar(8) DEFAULT NULL,
  `positions` varchar(50) DEFAULT NULL,
  `floorno` varchar(20) DEFAULT NULL,
  `roomno` varchar(60) DEFAULT NULL,
  `groupid` char(3) DEFAULT NULL,
  `catagory` varchar(5) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `asize` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT '0.00',
  `pur_date` datetime DEFAULT NULL,
  `doc_no` varchar(100) DEFAULT NULL,
  `pur_docno` varchar(30) DEFAULT NULL,
  `receive_date` datetime DEFAULT NULL,
  `bud_id` char(2) DEFAULT NULL,
  `asset_note` text,
  `pict_path` varchar(50) DEFAULT NULL,
  `a_status` char(2) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `dept` (`dept`),
  KEY `floorno` (`floorno`),
  KEY `IX_computer` (`sap_code`),
  KEY `roomno` (`roomno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `asset_master` WRITE;
/*!40000 ALTER TABLE `asset_master` DISABLE KEYS */;

INSERT INTO `asset_master` (`code`, `sap_code`, `budget_year`, `regis_date`, `aname`, `dept`, `positions`, `floorno`, `roomno`, `groupid`, `catagory`, `brand`, `asize`, `model`, `serial_no`, `price`, `pur_date`, `doc_no`, `pur_docno`, `receive_date`, `bud_id`, `asset_note`, `pict_path`, `a_status`)
VALUES
	(19,'7440-002-0001-003','2541','2555-02-16 00:00:00','Printer','G001','','ชั้น 1 (OPD)','','03','005','Epson','Dot Matrix','LQ 300','',8500.00,'2541-01-01 00:00:00','','','2541-01-01 00:00:00','','','','3'),
	(20,'7440-001-0001-008','2542','2555-02-16 00:00:00','คอมพิวเตอร์ อัลฟ่า','D001',NULL,'ชั้น 1 (ห้องฟัน)',NULL,'03','001',NULL,'Hard Disk 426, Ram 32 Mb.','celeron 366',NULL,21500.00,'2542-06-11 00:00:00',NULL,'01/0038','2542-06-11 00:00:00',NULL,'cpu+จอ เสียซ่อมไม่ได้',NULL,'3'),
	(21,'7440-001-0001-009','2542','2555-02-16 00:00:00','คอมพิวเตอร์ อัลฟ่า','F002',NULL,'ชั้น 1 (ผู้ป่วย ญ)',NULL,'03','001',NULL,'Hard Disk 426, Ram 32 Mb.',NULL,NULL,21500.00,'2542-06-11 00:00:00',NULL,'01/0038','2542-06-11 00:00:00',NULL,'cpu+จอ เสียซ่อมไม่ได้',NULL,'3'),
	(22,'7440-001-0001-010','2542','2555-02-16 00:00:00','คอมพิวเตอร์ อัลฟ่า','ฺB001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,'Hard Disk 4.3 Gb. Ram 32 Mb.',NULL,NULL,22898.00,'2542-08-04 00:00:00',NULL,'05/0246',NULL,NULL,'cpu+จอ เสียซ่อมไม่ได้',NULL,'3'),
	(23,'7440-002-0001-004','2542','2555-02-16 00:00:00','Printer','D001',NULL,'ชั้น 1 (ห้องฟัน)',NULL,'03','005','Epson',NULL,'LQ 300',NULL,8775.00,'2542-06-11 00:00:00',NULL,'01/0038','2542-06-11 00:00:00',NULL,NULL,NULL,'3'),
	(24,'7440-002-0001-005','2542','2555-02-16 00:00:00','Printer','F001','','ชั้น 2 (ผู้ป่วย ช)','','03','005','Epson','','LQ 300','',8775.00,'2542-06-11 00:00:00','','01/0038','2542-06-11 00:00:00','','','','3'),
	(26,'7440-002-0001-007','2542','2555-02-16 00:00:00','Printer','E001','','ชั้น 1 (OPD)','ห้องเก็บเงิน','03','005','Epson','','LQ 670','',16500.00,'2542-01-01 00:00:00','','',NULL,'','','','5'),
	(27,'7440-002-0001-008','2542','2555-02-16 00:00:00','Printer','C001',NULL,'ชั้น 1',NULL,'03','005','Epson',NULL,'LQ 2070',NULL,8775.00,'2542-10-23 00:00:00',NULL,'11/05/04','2542-10-23 00:00:00',NULL,NULL,NULL,'3'),
	(30,'7440-001-0001-017','2543','2555-02-16 00:00:00','คอมพิวเตอร์ประมวลผลทั่วไป','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,'Hard Disk 4.3 Gb. Ram 32 Mb.','celeron 466',NULL,20580.00,'2543-01-01 00:00:00',NULL,'02/0054',NULL,NULL,'cpu+จอ เสียซ่อมไม่ได้',NULL,'3'),
	(31,'7440-001-0001-018','2543','2555-02-16 00:00:00','คอมพิวเตอร์ Socos','A001','','ชั้น 1','งานเอดส์','03','001','','','','',NULL,'2543-10-01 00:00:00','','','2543-10-01 00:00:00','','cpu เสียซ่อมไม่ได้','','5'),
	(32,'7440-001-0001-019','2543','2555-02-16 00:00:00','คอมพิวเตอร์ Visage SD','F006',NULL,'ชั้น 1 (OPD)','ห้องตรวจ 1','03','001',NULL,NULL,NULL,NULL,NULL,'2543-10-01 00:00:00',NULL,NULL,'2543-10-01 00:00:00',NULL,'cpu เสียซ่อมไม่ได้\r\nจอ อยู่ WARD ชาย',NULL,'3'),
	(33,'7440-001-0001-020','2543','2555-02-16 00:00:00','คอมพิวเตอร์ Visage SD','F006',NULL,'ชั้น 1 (OPD)','ห้องตรวจ 2','03','001',NULL,NULL,NULL,NULL,NULL,'2543-10-01 00:00:00',NULL,NULL,'2543-10-01 00:00:00',NULL,'จอ เสียซ่อมไม่ได้\r\n',NULL,'3'),
	(34,'7440-001-0001-021','2543','2555-02-16 00:00:00','คอมพิวเตอร์ Micro Scan','H001',NULL,'ชั้น 1 (OPD)','ห้องตรวจ 3','03','001',NULL,NULL,NULL,NULL,NULL,'2543-10-01 00:00:00',NULL,NULL,'2543-10-01 00:00:00',NULL,'cpu เสียซ่อมไม่ได้',NULL,'3'),
	(35,'7440-001-0001-022','2543','2555-02-16 00:00:00','คอมพิวเตอร์ Visage SD','ฺB001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,NULL,NULL,NULL,NULL,'2543-10-01 00:00:00',NULL,NULL,NULL,NULL,'cpu+จอ เสีย ซ่อมไม่ได้',NULL,'3'),
	(36,'7440-001-0001-023','2543','2555-02-16 00:00:00','คอมพิวเตอร์ Visage SD','C002',NULL,'ชั้น 1',NULL,'03','001',NULL,NULL,NULL,NULL,NULL,'2543-10-01 00:00:00',NULL,NULL,NULL,NULL,'cpu เสีย ซ่อมไม่ได้',NULL,'3'),
	(37,'7440-001-0001-011','2542','2555-02-16 00:00:00','คอมพิวเตอร์ อัลฟ่า','E000',NULL,'ชั้น 2 (บริหาร)',NULL,'03','001',NULL,'Hard Disk 4.3 Gb. Ram 32 Mb.',NULL,NULL,22898.00,'2542-08-04 00:00:00',NULL,'05/0246','2542-08-04 00:00:00',NULL,'cpu+จอ เสียซ่อมไม่ได้',NULL,'3'),
	(38,'7440-001-0001-012','2542','2555-02-16 00:00:00','คอมพิวเตอร์ อัลฟ่า','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,'Hard Disk 4.3 Gb. Ram 32 Mb.','Pentium celeron 33',NULL,23200.00,'2542-01-01 00:00:00',NULL,NULL,NULL,NULL,'cpu เสียซ่อมไม่ได้',NULL,'3'),
	(39,'7440-001-0001-013','2542','2555-02-16 00:00:00','คอมพิวเตอร์ อัลฟ่า','ฺB001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,'Hard Disk 4.3 Gb.','Celeron ',NULL,26774.00,'2542-10-23 00:00:00',NULL,NULL,NULL,NULL,'cpu เสียซ่อมไม่ได้',NULL,'3'),
	(40,'7440-001-0001-014','2542','2555-02-16 00:00:00','คอมพิวเตอร์ อัลฟ่า','F005',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,'Hard Disk 4.3 Gb. Ram 32 Mb.','Celeron 400',NULL,25000.00,'2542-10-23 00:00:00',NULL,NULL,NULL,NULL,'cpu เสีย',NULL,'3'),
	(41,'7440-001-0001-015','2542','2555-02-16 00:00:00','คอมพิวเตอร์ อัลฟ่า','ฺB001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,NULL,NULL,NULL,50000.00,'2542-01-01 00:00:00',NULL,NULL,NULL,NULL,'cpu ย้ายไป OR\r\n\r\nจอเสีย',NULL,'7'),
	(42,'7440-001-0001-016','2542','2555-02-16 00:00:00','คอมพิวเตอร์ อัลฟ่า','E001',NULL,'ชั้น 1 (OPD)','ห้องเก็บเงิน','03','001',NULL,NULL,NULL,NULL,25000.00,'2542-01-01 00:00:00',NULL,NULL,NULL,NULL,'cpu เสีย',NULL,'3'),
	(43,'7440-001-0001-024','2545','2555-02-16 00:00:00','คอมพิวเตอร์ Bata','E001',NULL,'ชั้น 2 (บริหาร)','ฝ่ายบริหารทั่วไป','03','001',NULL,'Hard Disk 40 Gb. Ram 128 Mb.','Intel Pentium 4 2GHz',NULL,42000.00,'2545-06-24 00:00:00',NULL,'IV06-0647',NULL,NULL,NULL,NULL,'1'),
	(44,'7440-001-0001-025','2545','2555-02-16 00:00:00','คอมพิวเตอร์ ','L001',NULL,'ชั้น 1 (OPD)','Lab','03','001',NULL,'cpu, Monitor Accuvision',NULL,NULL,NULL,'2545-12-01 00:00:00',NULL,NULL,NULL,NULL,'ใช้เงินห้อง lab ซื้อเอง',NULL,'1'),
	(45,'7440-002-0001-011','2545','2555-02-16 00:00:00','Printer','E000',NULL,'ชั้น 2 (บริหาร)','ฝ่ายบริหารทั่วไป','03','005','Canon',NULL,NULL,NULL,NULL,'2545-06-24 00:00:00',NULL,'IV06-0647','2545-06-24 00:00:00',NULL,NULL,NULL,'1'),
	(46,'7440-002-0001-012','2545','2555-02-16 00:00:00','Printer','C001',NULL,'ชั้น 1','ฝ่ายยุทธศาสตร์','03','005','Canon',NULL,NULL,NULL,NULL,'2545-07-12 00:00:00',NULL,'IV 07-0497','2545-07-12 00:00:00',NULL,NULL,NULL,'3'),
	(47,'7440-007-0001-002','2545','2555-02-16 00:00:00','Switch HUB 16 port','ฺB001',NULL,'ชั้น 1 (OPD)','ห้องบัตร','03','003','SureCom','16 port',NULL,NULL,9100.00,'2545-06-26 00:00:00',NULL,'50/2470','2545-06-26 00:00:00',NULL,NULL,NULL,'1'),
	(48,'7440-001-0007-001','2546','2555-02-16 00:00:00','Acer Travel Mate 230','E000',NULL,'ชั้น 1 (OPD)',NULL,'03','002','ACER','cpu celeron 2.4GHz','Travel Mate 230',NULL,42693.00,'2546-02-18 00:00:00',NULL,NULL,'2546-02-18 00:00:00',NULL,NULL,NULL,'1'),
	(49,'7440-001-0007-002','2546','2555-02-16 00:00:00','Acer Travel Mate 230','A001',NULL,'ชั้น 1',NULL,'03','002','ACER','cpu celeron 2.4GHz','Travel Mate 230',NULL,NULL,'2546-09-29 00:00:00',NULL,NULL,'2546-09-29 00:00:00',NULL,NULL,NULL,'1'),
	(50,'7440-002-0001-013','2546','2555-02-16 00:00:00','Printer','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','005','Epson',NULL,'LQ 300',NULL,9600.00,'2546-10-03 00:00:00',NULL,'65/3210','2546-10-03 00:00:00',NULL,NULL,NULL,'3'),
	(51,'7440-002-0001-014','2546','2555-02-16 00:00:00','Printer','ฺB001',NULL,'ชั้น 1 (OPD)','stock','03','005','Epson',NULL,'LQ 300',NULL,9600.00,'2546-10-03 00:00:00',NULL,'65/3210','2546-10-03 00:00:00',NULL,NULL,NULL,'7'),
	(52,'7440-002-0002-001','2546','2555-02-16 00:00:00','Printer','C001',NULL,'ชั้น 1',NULL,'03','005','HP',NULL,'HP 1020',NULL,4600.00,'2546-10-01 00:00:00',NULL,NULL,'2546-10-01 00:00:00',NULL,NULL,NULL,'1'),
	(53,'7440-002-0002-002','2546','2555-02-16 00:00:00','Printer','ฺB001',NULL,'ชั้น 1 (OPD)',NULL,'03','005','HP',NULL,'HP 1020',NULL,4600.00,'2546-10-01 00:00:00',NULL,NULL,'2546-10-01 00:00:00',NULL,NULL,NULL,'1'),
	(54,'7440-002-0002-003','2546','2555-02-16 00:00:00','Printer','A001',NULL,'ชั้น 1','ยุทธศาสตร์','03','005','HP',NULL,'HP Laser 1150',NULL,NULL,'2546-09-29 00:00:00',NULL,NULL,'2546-09-29 00:00:00',NULL,'งบประมาณงานเอสด์ สสจ.ชม.',NULL,'3'),
	(55,'7440-002-0003-001','2546','2555-02-16 00:00:00','Printer Ink Jet','F010',NULL,'ชั้น 1 (OPD)',NULL,'03','005','Lexmark',NULL,'LMZ 645',NULL,1150.00,'2546-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(56,'7440-002-0003-003','2546','2555-02-16 00:00:00','Printer Ink Jet','F006',NULL,'ชั้น 1 (OPD)','OPD','03','005','Canon',NULL,'BJS S100',NULL,2570.00,'2546-04-09 00:00:00',NULL,'IV04-0283',NULL,NULL,NULL,NULL,'1'),
	(57,'7440-002-0002-004','2548','2555-02-16 00:00:00','Printer Laser Jet','E000',NULL,'ชั้น 2 (บริหาร)','ฝ่ายบริหารทั่วไป','03','005','HP',NULL,'HP Laser Jet 1020',NULL,7090.00,'2548-09-08 00:00:00',NULL,'IV09-0286','2548-09-08 00:00:00',NULL,NULL,NULL,'1'),
	(58,'7440-001-0007-003','2549','2555-02-16 00:00:00','Acer Aspire 5593WXMi','C002',NULL,'ชั้น 1','ฝ่ายยุทธศาสตร์','03','002','ACER','cpu Intel core2Duo 1.66GHz','Aspire 5593WXMi',NULL,NULL,'2549-11-01 00:00:00',NULL,NULL,'2549-11-01 00:00:00',NULL,'งบยาเสพติด',NULL,'1'),
	(59,'7440-002-0002-005','2549','2555-02-16 00:00:00','Printer Laser Jet','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','005','HP',NULL,'HP Laser Jet 1020',NULL,6290.00,'2549-02-01 00:00:00',NULL,'IS02-0004','2549-02-01 00:00:00',NULL,NULL,NULL,'1'),
	(60,'7440-002-0002-006','2549','2555-02-16 00:00:00','Printer Laser Jet','F011',NULL,'ชั้น 2 (ผู้ป่วย ช)','ฝ่ายการพยาบาล','03','005','HP',NULL,'HP Laser Jet 1020',NULL,5890.00,'2549-10-27 00:00:00',NULL,'IS10-0062','2549-10-27 00:00:00',NULL,NULL,NULL,'1'),
	(61,'7440-002-0003-002','2549','2555-02-16 00:00:00','Printer Ink Jet','D001',NULL,'ชั้น 1 (ห้องฟัน)',NULL,'03','005','Canon',NULL,'IP 1200 Canon Pixma',NULL,NULL,'2549-07-27 00:00:00',NULL,'5694/114','2549-07-27 00:00:00',NULL,'โครงการยิ้มสดใสฯ',NULL,'1'),
	(62,'7440-006-0002-001','2549','2555-02-16 00:00:00','Scanner','C003',NULL,'ชั้น 1',NULL,'03','006','Canon',NULL,'Canon Lide 25',NULL,2098.27,'2549-06-16 00:00:00',NULL,'IS06-0036','2549-06-16 00:00:00',NULL,NULL,NULL,'1'),
	(63,'7440-001-0007-004','2551','2555-02-16 00:00:00','Note book Toshiba','H001',NULL,'ชั้น 1',NULL,'03','002','Toshiba',NULL,'Satellite M300-PA30T',NULL,29990.00,'2551-10-31 00:00:00',NULL,'cw10-0024','2551-10-31 00:00:00',NULL,NULL,NULL,'1'),
	(64,'7440-002-0002-008','2551','2555-02-16 00:00:00','Printer Laser Jet','E003',NULL,'ชั้น 2 (บริหาร)','ย้ายไป ward','03','005','HP',NULL,'HP Laser Jet 1018',NULL,4250.00,'2551-12-19 00:00:00',NULL,'005/0201','2551-12-19 00:00:00',NULL,NULL,NULL,'1'),
	(65,'7440-002-0002-009','2551','2555-02-16 00:00:00','Printer Laser Jet','F001',NULL,'ชั้น 2 (ผู้ป่วย ช)','ward ชาย','03','005','HP',NULL,'HP Laser Jet 1018',NULL,4250.00,'2551-12-19 00:00:00',NULL,'005/0202','2551-12-19 00:00:00',NULL,NULL,NULL,'1'),
	(66,'7440-002-0003-004','2551','2555-02-16 00:00:00','Printer Ink Jet','C003',NULL,'ชั้น 1','ฝ่ายยุทธศาสตร์','03','005','Epson',NULL,'Stylus TX400 All-in-one',NULL,4990.00,'2551-12-30 00:00:00',NULL,'13/0612','2551-12-30 00:00:00',NULL,'+ชุด Tank และหมึก Ink Jet ราคา 1,200.-บาท',NULL,'1'),
	(67,'7440-002-0001-015','2551','2555-02-16 00:00:00','Printer','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','005','Epson',NULL,'LQ 300',NULL,7450.00,'2551-03-14 00:00:00',NULL,NULL,'2551-03-14 00:00:00',NULL,NULL,NULL,'1'),
	(68,'7440-002-0001-016','2551','2555-02-16 00:00:00','Printer','E001',NULL,'ชั้น 1 (OPD)','ห้องเก็บเงิน','03','005','Epson',NULL,'LQ 300',NULL,10850.00,'2551-05-12 00:00:00',NULL,NULL,'2551-05-12 00:00:00',NULL,NULL,NULL,'1'),
	(69,'7440-002-0002-007','2551','2555-02-16 00:00:00','Printer Laser Jet','F003',NULL,'ชั้น 1 (OPD)','ER','03','005','HP',NULL,'HP Laser Jet 1020',NULL,4600.00,'2551-03-19 00:00:00',NULL,NULL,'2551-03-19 00:00:00',NULL,NULL,NULL,'1'),
	(70,'7440-005-0001-001','2537','2555-02-16 00:00:00','UPS Green','F006',NULL,'ชั้น 1 (OPD)','ห้องตรวจ 1','03','007',NULL,NULL,NULL,NULL,NULL,'2537-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(71,'7440-005-0001-002','2537','2555-02-16 00:00:00','UPS Green','F006',NULL,'ชั้น 1 (OPD)','ห้องตรวจ 2','03','007',NULL,NULL,NULL,NULL,NULL,'2537-10-01 00:00:00',NULL,NULL,NULL,NULL,'Socomec?',NULL,'3'),
	(72,'7440-005-0001-003','2537','2555-02-16 00:00:00','UPS Green','ฺB001',NULL,'ชั้น 1 (OPD)','ห้องบัตร','03','007',NULL,NULL,NULL,NULL,NULL,'2537-10-01 00:00:00',NULL,NULL,NULL,NULL,'สำรอง Switch Hup',NULL,'1'),
	(73,'7440-005-0001-004','2537','2555-02-16 00:00:00','UPS Power','L001',NULL,'ชั้น 1 (OPD)','Lab','03','007',NULL,NULL,NULL,NULL,NULL,'2537-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(74,'7440-005-0001-005','2537','2555-02-16 00:00:00','UPS Loonic','L001',NULL,'ชั้น 1 (OPD)','Lab','03','007',NULL,NULL,NULL,NULL,NULL,'2537-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(75,'7440-005-0001-006','2537','2555-02-16 00:00:00','UPS HLC','L001',NULL,'ชั้น 1 (OPD)','Lab','03','007',NULL,NULL,NULL,NULL,NULL,'2537-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(76,'7440-005-0001-007','2537','2555-02-16 00:00:00','UPS Syndome','L001',NULL,'ชั้น 1 (OPD)','Lab','03','007',NULL,NULL,NULL,NULL,NULL,'2537-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(77,'7440-005-0001-008','2537','2555-02-16 00:00:00','UPS Green','ฺB001',NULL,'ชั้น 1 (OPD)','ห้องบัตร','03','007',NULL,NULL,NULL,NULL,NULL,'2537-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'3'),
	(78,'7440-005-0001-009','2537','2555-02-16 00:00:00','UPS 40X max','ฺB001',NULL,'ชั้น 1 (OPD)','ห้องบัตร','03','007',NULL,NULL,NULL,NULL,NULL,'2537-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'3'),
	(79,'7440-005-0001-010','2539','2555-02-16 00:00:00','UPS ','E000',NULL,'ชั้น 2 (บริหาร)',NULL,'03','007',NULL,NULL,NULL,NULL,3300.00,'2539-04-25 00:00:00',NULL,'1/95','2539-04-25 00:00:00',NULL,NULL,NULL,'1'),
	(80,'7440-005-0001-011','2541','2555-02-16 00:00:00','UPS ','F003',NULL,'ชั้น 1 (OPD)','ER','03','007',NULL,NULL,NULL,NULL,3300.00,'2541-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'3'),
	(81,'7440-005-0001-012','2541','2555-02-16 00:00:00','UPS ','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','007',NULL,NULL,NULL,NULL,5500.00,'2541-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(82,'7440-005-0001-013','2542','2555-02-16 00:00:00','UPS 500 VA','F001',NULL,'ชั้น 2 (ผู้ป่วย ช)',NULL,'03','007',NULL,NULL,NULL,NULL,3300.00,'2542-06-11 00:00:00',NULL,'01/0038','2542-06-11 00:00:00',NULL,NULL,NULL,'1'),
	(83,'7440-005-0001-014','2542','2555-02-16 00:00:00','UPS','ฺB001',NULL,'ชั้น 1 (OPD)',NULL,'03','007',NULL,NULL,NULL,NULL,3300.00,'2542-08-04 00:00:00',NULL,'05/0246','2542-08-04 00:00:00',NULL,NULL,NULL,'3'),
	(84,'7440-005-0001-015','2542','2555-02-16 00:00:00','UPS 500 VA','E001',NULL,'ชั้น 1 (OPD)','ห้องเก็บเงิน','03','007',NULL,NULL,NULL,NULL,3500.00,'2542-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(85,'7440-005-0001-016','2542','2555-02-16 00:00:00','UPS','C001',NULL,'ชั้น 1',NULL,'03','007',NULL,NULL,NULL,NULL,3300.00,'2542-10-23 00:00:00',NULL,'11/0504','2542-10-23 00:00:00',NULL,NULL,NULL,'3'),
	(86,'7440-005-0001-017','2542','2555-02-16 00:00:00','UPS','F005',NULL,'ชั้น 1 (OPD)',NULL,'03','007',NULL,NULL,NULL,NULL,3400.00,'2542-10-23 00:00:00',NULL,'11/0504','2542-10-23 00:00:00',NULL,NULL,NULL,'3'),
	(87,'7440-005-0001-018','2542','2555-02-16 00:00:00','UPS','ฺB001',NULL,'ชั้น 1 (OPD)',NULL,'03','007',NULL,NULL,NULL,NULL,4500.00,'2542-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'3'),
	(88,'7440-005-0001-019','2542','2555-02-16 00:00:00','UPS','E001',NULL,'ชั้น 1 (OPD)','ห้องเก็บเงิน','03','007',NULL,NULL,NULL,NULL,3300.00,'2542-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'3'),
	(89,'7440-005-0001-020','2545','2555-02-16 00:00:00','UPS APC 500 VA','C003',NULL,'ชั้น 1','UC 1','03','007',NULL,NULL,NULL,NULL,1400.00,'2545-07-12 00:00:00',NULL,'IV07-0499','2545-07-12 00:00:00',NULL,NULL,NULL,'1'),
	(90,'7440-005-0001-021','2546','2555-02-16 00:00:00','UPS 600 VA','E001',NULL,'ชั้น 1 (OPD)','ห้องเก็บเงิน','03','007',NULL,NULL,NULL,NULL,2600.00,'2546-03-27 00:00:00',NULL,'44/2177','2546-03-27 00:00:00',NULL,NULL,NULL,'1'),
	(91,'7440-005-0001-022','2546','2555-02-16 00:00:00','UPS 600 VA Power Gard','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','007',NULL,NULL,NULL,NULL,2600.00,'2546-04-25 00:00:00',NULL,'59/2943','2546-04-25 00:00:00',NULL,NULL,NULL,'3'),
	(92,'7440-005-0001-023','2546','2555-02-16 00:00:00','UPS SLC MINI 600 VA','ฺB001',NULL,'ชั้น 1 (OPD)',NULL,'03','007',NULL,NULL,NULL,NULL,1580.00,'2546-08-31 00:00:00',NULL,'0631487389','2546-08-31 00:00:00',NULL,NULL,NULL,'1'),
	(93,'7440-005-0001-024','2547','2555-02-16 00:00:00','UPS 600 VA Power Gard','E001',NULL,'ชั้น 1 (OPD)','ห้องเก็บเงิน','03','007',NULL,NULL,NULL,NULL,2500.00,'2547-05-20 00:00:00',NULL,'070/3456','2547-05-20 00:00:00',NULL,NULL,NULL,'1'),
	(94,'7440-005-0001-025','2547','2555-02-16 00:00:00','UPS Powergard PE','E000',NULL,'ชั้น 2 (บริหาร)',NULL,'03','007',NULL,NULL,NULL,NULL,1900.00,'2547-10-21 00:00:00',NULL,'L8-J9-17580','2547-10-21 00:00:00',NULL,NULL,NULL,'1'),
	(95,'7440-005-0001-026','2547','2555-02-16 00:00:00','UPS NUBOS S100 P3','E000',NULL,'ชั้น 2 (บริหาร)','ตู้สาขาโทรศัพท์','03','007',NULL,NULL,NULL,NULL,1890.00,'2547-12-07 00:00:00',NULL,'6035','2547-12-07 00:00:00',NULL,NULL,NULL,'1'),
	(96,'7440-005-0001-027','2549','2555-02-16 00:00:00','UPS APC BACK 500 AS','C003',NULL,'ชั้น 1',NULL,'03','007',NULL,NULL,NULL,NULL,NULL,'2549-02-01 00:00:00',NULL,'IS02-0003','2549-02-01 00:00:00',NULL,'ซ้ำ',NULL,'1'),
	(97,'7440-005-0001-028','2549','2555-02-16 00:00:00','UPS APC BACK 500 EI','F001',NULL,'ชั้น 2 (ผู้ป่วย ช)',NULL,'03','007',NULL,NULL,NULL,NULL,2890.00,'2549-06-01 00:00:00',NULL,'IS06-0001',NULL,NULL,NULL,NULL,'1'),
	(98,'7440-005-0001-029','2549','2555-02-16 00:00:00','UPS APC BACK 500 EI','E001',NULL,'ชั้น 2 (บริหาร)',NULL,'03','007',NULL,NULL,NULL,NULL,2890.00,'2549-06-16 00:00:00',NULL,'IS06-0035',NULL,NULL,NULL,NULL,'1'),
	(99,'7440-005-0001-030','2549','2555-02-16 00:00:00','UPS SOS 800 Va','D001',NULL,'ชั้น 1 (ห้องฟัน)',NULL,'03','007',NULL,NULL,NULL,NULL,NULL,'2549-07-27 00:00:00',NULL,'5694/114',NULL,NULL,NULL,NULL,'1'),
	(100,'7440-005-0001-031','2549','2555-02-16 00:00:00','UPS APC BACK 500 R-AS','F011',NULL,'ชั้น 2 (ผู้ป่วย ช)',NULL,'03','007',NULL,NULL,'Battery Back up 300 w.',NULL,NULL,'2549-10-27 00:00:00',NULL,'IS10-0061',NULL,NULL,NULL,NULL,'1'),
	(101,'7440-005-0001-032','2549','2555-02-16 00:00:00','UPS APC BACK 500 R-AS','E003',NULL,'ชั้น 2 (บริหาร)',NULL,'03','007',NULL,NULL,'Battery Back up 300 w.',NULL,NULL,'2549-11-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(102,'7440-005-0001-033','2549','2555-02-16 00:00:00','UPS APC BR 1000 I','C002',NULL,'ชั้น 1',NULL,'03','007',NULL,NULL,NULL,NULL,8560.00,'2549-06-16 00:00:00',NULL,NULL,NULL,NULL,'Projector',NULL,'1'),
	(103,'7440-005-0001-034','2551','2555-02-16 00:00:00','UPS Syndome S5','F003',NULL,'ชั้น 1 (OPD)','ER','03','007',NULL,NULL,NULL,NULL,1700.00,'2551-03-19 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(104,'7440-005-0001-035','2551','2555-02-16 00:00:00','UPS 4Tech 600 VA','K001',NULL,'ชั้น 1 (OPD)',NULL,'03','007',NULL,NULL,NULL,NULL,1600.00,'2551-05-12 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(105,'7440-005-0001-036','2551','2555-02-16 00:00:00','UPS Syndome S9-80 VA','ฺB001',NULL,'ชั้น 1 (OPD)',NULL,'03','007',NULL,NULL,NULL,NULL,1999.00,'2551-05-18 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(106,'7440-005-0001-037','2551','2555-02-16 00:00:00','UPS Apple 850 VA','F006',NULL,'ชั้น 1 (OPD)','OPD','03','007',NULL,NULL,NULL,NULL,1850.00,'2551-06-05 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'1'),
	(107,'7440-005-0001-038','2551','2555-02-16 00:00:00','UPS FIT','A001',NULL,'ชั้น 1',NULL,'03','007',NULL,'850 VA, สำรองไฟได้ไม่น้อยกว่า 15 นาที',NULL,NULL,1600.00,'2551-06-18 00:00:00',NULL,'0329/07','2551-06-18 00:00:00',NULL,NULL,NULL,'1'),
	(108,'7440-005-0001-039','2551','2555-02-16 00:00:00','UPS FIT','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','007',NULL,'850 VA, สำรองไฟได้ไม่น้อยกว่า 15 นาที',NULL,NULL,1600.00,'2551-06-18 00:00:00',NULL,'0329/07','2551-06-18 00:00:00',NULL,NULL,NULL,'1'),
	(109,'7440-005-0001-040','2551','2555-02-16 00:00:00','UPS FIT','L001',NULL,'ชั้น 1 (OPD)','Lab','03','007',NULL,'850 VA, สำรองไฟได้ไม่น้อยกว่า 15 นาที',NULL,NULL,1600.00,'2551-06-18 00:00:00',NULL,'0329/07','2551-06-18 00:00:00',NULL,NULL,NULL,'1'),
	(110,'7440-005-0003-001','2549','2555-02-16 00:00:00','UPS Syndome SZ-1001 PRO','C002',NULL,'ชั้น 1',NULL,'03','007',NULL,'1000VA, สำรองไฟได้ไม่น้อยกว่า 30 นาที',NULL,NULL,7704.00,'2549-08-31 00:00:00',NULL,'IV09-0172','2549-08-31 00:00:00',NULL,'สำหรับสำรองไฟเครื่องคอมพิวเตอร์แม่ข่าย',NULL,'1'),
	(111,'7440-001-0001-026','2546','2555-02-16 00:00:00','Monitor BenQ 15\"','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','001','BenQ',NULL,NULL,NULL,3738.00,'2546-04-09 00:00:00',NULL,'IV-04-0283','2546-04-09 00:00:00',NULL,NULL,NULL,'1'),
	(112,'7440-001-0001-027','2546','2555-02-16 00:00:00','Monitor BenQ 15\"','F006',NULL,'ชั้น 1 (OPD)','ห้องตรวจ 1','03','001','BenQ',NULL,NULL,NULL,3738.00,'2546-04-09 00:00:00',NULL,'IV04-0283','2546-04-09 00:00:00',NULL,'ย้ายจากงานยุทธฯ',NULL,'1'),
	(113,'7440-001-0001-028','2546','2555-02-16 00:00:00','Monitor 15\" Fire Ster','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,NULL,NULL,NULL,3600.00,'2546-04-25 00:00:00',NULL,'59/2943','2546-04-25 00:00:00',NULL,NULL,NULL,'1'),
	(114,'7440-001-0001-029','2546','2555-02-16 00:00:00','Monitor Socos 15\"','F005',NULL,'ชั้น 1 (OPD)','LR','03','001',NULL,NULL,NULL,NULL,6900.00,'2546-08-01 00:00:00',NULL,NULL,'2546-08-01 00:00:00',NULL,NULL,NULL,'3'),
	(115,'7440-001-0001-030','2546','2555-02-16 00:00:00','Monitor Fire Star 15\"','C003',NULL,'ชั้น 1','UC','03','001',NULL,NULL,NULL,NULL,6900.00,'2546-08-01 00:00:00',NULL,NULL,'2546-08-01 00:00:00',NULL,NULL,NULL,'1'),
	(116,'7440-001-0001-031','2546','2555-02-16 00:00:00','Computer Compeq S45 60AL','C003',NULL,'ชั้น 1','UC 1','03','001','Compaq',NULL,'S45 60AL',NULL,19900.00,'2546-10-10 00:00:00',NULL,'SI10-0091','2546-10-10 00:00:00',NULL,'+จอ',NULL,'1'),
	(117,'7440-001-0001-032','2546','2555-02-16 00:00:00','Computer Compeq S45 60AL','C001',NULL,'ชั้น 1','ฝ่ายยุทธศาสตร์','03','001','Compaq',NULL,'S45 60AL',NULL,19900.00,'2546-10-10 00:00:00',NULL,'SI10-0091','2546-10-10 00:00:00',NULL,'+จอ',NULL,'1'),
	(118,'7440-001-0001-033','2548','2555-02-16 00:00:00','Monitor','E000',NULL,'ชั้น 2 (บริหาร)',NULL,'03','001',NULL,'ขนาดแสดงผล 15\"',NULL,NULL,3550.00,'2548-07-13 00:00:00',NULL,'73/3650','2548-07-13 00:00:00',NULL,NULL,NULL,'1'),
	(119,'7440-001-0001-034','2548','2555-02-16 00:00:00','คอมพิวเตอร์ ALPHA','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,'cpu celeron 2.4GHz',NULL,NULL,1850.00,'2548-10-07 00:00:00',NULL,'3665/74','2548-10-07 00:00:00',NULL,NULL,NULL,'1'),
	(120,'7440-001-0001-035','2548','2555-02-16 00:00:00','คอมพิวเตอร์ ALPHA','F006',NULL,'ชั้น 1 (OPD)','หน้าห้องตรวจ (โต๊ะ screen)','03','001',NULL,'cpu celeron 2.4GHz',NULL,NULL,1850.00,'2548-10-07 00:00:00',NULL,'3665/74','2548-10-07 00:00:00',NULL,'cpu ตกทำให้ตัวเครื่องพัง แตก หัก\r\nเอาตัวเครื่องเก่าห้องฟ้าใสมาใช้',NULL,'7'),
	(121,'7440-001-0001-036','2549','2555-02-16 00:00:00','คอมพิวเตอร์ CHICHANG','C003',NULL,'ชั้น 1','UC 2','03','001',NULL,'CPU Pentium 4 3.0 GHz.(630)',NULL,NULL,22299.97,'2549-02-01 00:00:00',NULL,'IS02-0003','2549-02-01 00:00:00',NULL,NULL,NULL,'1'),
	(122,'7440-001-0001-037','2549','2555-02-16 00:00:00','คอมพิวเตอร์ CHICHANG','F002',NULL,'ชั้น 1 (ผู้ป่วย ญ)',NULL,'03','001',NULL,'CPU Pentium 4 3.0 GHz.(630)',NULL,NULL,16635.51,'2549-06-01 00:00:00',NULL,'IS06-0001','2549-06-01 00:00:00',NULL,'เฉพาะ CPU',NULL,'7'),
	(123,'7440-001-0001-038','2549','2555-02-16 00:00:00','คอมพิวเตอร์ CHICHANG','F001',NULL,'ชั้น 2 (ผู้ป่วย ช)',NULL,'03','001',NULL,'CPU Pentium 4 3.0 GHz.(630)',NULL,NULL,16635.51,'2549-06-01 00:00:00',NULL,'IS06-0001','2549-06-01 00:00:00',NULL,'จอเสีย',NULL,'7'),
	(124,'7440-001-0001-039','2549','2555-02-16 00:00:00','คอมพิวเตอร์ CHICHANG','E001',NULL,'ชั้น 2 (บริหาร)',NULL,'03','001',NULL,'CPU Pentium 4 3.0 GHz.(630)',NULL,NULL,16635.51,'2549-06-16 00:00:00',NULL,'IS06-0035','2549-06-16 00:00:00',NULL,NULL,NULL,'1'),
	(125,'7440-001-0001-040','2549','2555-02-16 00:00:00','คอมพิวเตอร์ View','D001',NULL,'ชั้น 1 (ห้องฟัน)',NULL,'03','001',NULL,'CPU Pentium 4 3.06 GHz.',NULL,NULL,20749.44,'2549-07-29 00:00:00',NULL,NULL,'2549-07-29 00:00:00',NULL,NULL,NULL,'1'),
	(126,'7440-001-0001-041','2549','2555-02-16 00:00:00','คอมพิวเตอร์ CHICHANG','ฺB001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,'CPU Pentium DS20 2.8 GHz.',NULL,NULL,12742.99,'2549-08-17 00:00:00',NULL,'IS09-0016','2549-08-17 00:00:00',NULL,NULL,NULL,'1'),
	(127,'7440-001-0001-042','2551','2555-02-16 00:00:00','คอมพิวเตอร์ PCCOM','E001',NULL,'ชั้น 1 (OPD)','ห้องเก็บเงิน','03','001',NULL,'CPU Pentium 4 3.0 GHz.(631)',NULL,NULL,5780.00,'2551-05-12 00:00:00',NULL,'0307/07','2551-05-12 00:00:00',NULL,NULL,NULL,'1'),
	(128,'7440-001-0001-043','2551','2555-02-16 00:00:00','คอมพิวเตอร์ PCCOM','K001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,'CPU Pentium 4 3.0 GHz.(631)',NULL,NULL,16000.00,'2551-05-12 00:00:00',NULL,'0308/07','2551-05-12 00:00:00',NULL,NULL,NULL,'1'),
	(129,'7440-001-0001-044','2551','2555-02-16 00:00:00','คอมพิวเตอร์ PCCOM','A001',NULL,'ชั้น 1',NULL,'03','001',NULL,'CPU Pentium 4 3.0 GHz.(637)',NULL,NULL,23500.00,'2551-06-18 00:00:00',NULL,'0329/07','2551-06-18 00:00:00',NULL,NULL,NULL,'1'),
	(130,'7440-001-0001-045','2551','2555-02-16 00:00:00','คอมพิวเตอร์ PCCOM','G001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,'CPU Pentium 4 3.0 GHz.(637)',NULL,NULL,23500.00,'2551-06-18 00:00:00',NULL,'0329/07','2551-06-18 00:00:00',NULL,NULL,NULL,'1'),
	(131,'7440-001-0001-046','2551','2555-02-16 00:00:00','คอมพิวเตอร์ PCCOM','L001',NULL,'ชั้น 1 (OPD)','Lab','03','001',NULL,NULL,NULL,NULL,23500.00,'2551-06-18 00:00:00',NULL,'0329/07','2551-06-18 00:00:00',NULL,NULL,NULL,'1'),
	(132,'7440-001-0001-047','2551','2555-02-16 00:00:00','คอมพิวเตอร์ PCCOM','E001',NULL,'ชั้น 1 (OPD)',NULL,'03','001',NULL,NULL,NULL,NULL,12800.00,'2551-09-23 00:00:00',NULL,'10/0465','2551-09-23 00:00:00',NULL,NULL,NULL,'1'),
	(133,'7440-001-0001-048','2551','2555-02-16 00:00:00','คอมพิวเตอร์ PCCOM','C003',NULL,'ชั้น 1',NULL,'03','001',NULL,NULL,NULL,NULL,15000.00,'2551-12-01 00:00:00',NULL,'08/0378','2551-12-01 00:00:00',NULL,NULL,NULL,'1');

/*!40000 ALTER TABLE `asset_master` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_assignment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`)
VALUES
	('Administrator','1',1503026097);

/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`)
VALUES
	('Administrator',1,'ผู้ดูแลระบบ',NULL,NULL,1503025077,1503025077);

/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_item_child
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table auth_rule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table compan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `compan`;

CREATE TABLE `compan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT 'รหัส',
  `compan_name` varchar(255) DEFAULT NULL COMMENT 'บริษัท',
  `compan_tel` varchar(30) DEFAULT NULL COMMENT 'โทรศัพท์',
  `compan_fax` varchar(30) DEFAULT NULL,
  `compan_email` varchar(255) DEFAULT NULL,
  `compan_address` varchar(255) DEFAULT NULL COMMENT 'ที่อยู่',
  `sell_name` varchar(255) DEFAULT NULL,
  `sell_tel` varchar(30) DEFAULT NULL,
  `sell_contact_other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `compan` WRITE;
/*!40000 ALTER TABLE `compan` DISABLE KEYS */;

INSERT INTO `compan` (`id`, `code`, `compan_name`, `compan_tel`, `compan_fax`, `compan_email`, `compan_address`, `sell_name`, `sell_tel`, `sell_contact_other`)
VALUES
	(1,'com01','ร่ำรวยการค้า','021-234-567_',NULL,NULL,'222/22 เขตบางจาก กทม',NULL,NULL,NULL);

/*!40000 ALTER TABLE `compan` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table depart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `depart`;

CREATE TABLE `depart` (
  `id` int(11) NOT NULL,
  `depart_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `items_code` int(11) DEFAULT NULL,
  `items_name` varchar(255) DEFAULT NULL,
  `items_price` decimal(10,0) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `visible` tinyint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `icon`, `url`, `label`, `title`, `badge`, `sort`, `visible`)
VALUES
	(1,'home','index.php?r=site/index','หน้าแรก','หน้าแรก',NULL,1,NULL),
	(2,'th-list',NULL,'รายการครุภัณฑ์','ครุภัณฑ์ทั้งหมด',NULL,2,NULL),
	(3,'list-ul',NULL,'รายการวัสดุ','วัสดุทั้งหมด',NULL,3,NULL),
	(4,'edit','index.php?r=card/index','ใบส่งซ่อม','เขียนใบส่งซ่อม',NULL,4,NULL),
	(5,'list','index.php?r=card/report','รายการส่งซ่อม',NULL,NULL,5,NULL),
	(6,'users','index.php?r=member/index','สมาชิก',NULL,NULL,6,NULL),
	(7,'pie-chart',NULL,'รายงาน',NULL,NULL,7,NULL),
	(8,'gear','index.php?r=setting/index','ตั้งค่าระบบ',NULL,NULL,8,NULL);

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migration
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;

INSERT INTO `migration` (`version`, `apply_time`)
VALUES
	('m000000_000000_base',1501349926),
	('m140209_132017_init',1501353530),
	('m140403_174025_create_account_table',1501353530),
	('m140504_113157_update_tables',1501353532),
	('m140504_130429_create_token_table',1501353533),
	('m140830_171933_fix_ip_field',1501353533),
	('m140830_172703_change_account_table_name',1501353533),
	('m141222_110026_update_ip_field',1501353533),
	('m141222_135246_alter_username_length',1501353534),
	('m150614_103145_update_social_account_table',1501353535),
	('m150623_212711_fix_username_notnull',1501353535),
	('m151218_234654_add_timezone_to_profile',1501353535),
	('m160929_103127_add_last_login_at_to_user_table',1501353535),
	('m140506_102106_rbac_init',1502901200);

/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `order_no` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_regist` int(4) NOT NULL,
  `order_group` int(4) NOT NULL,
  `order_compan` int(4) NOT NULL,
  `order_tatal` decimal(20,4) DEFAULT NULL,
  `order_image` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `1` (`order_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table order_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `items_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `order_qty` int(11) DEFAULT NULL,
  `order_unit` varchar(255) DEFAULT NULL,
  `ouder_price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `2` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table payout
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payout`;

CREATE TABLE `payout` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `payout_date` datetime DEFAULT NULL,
  `payout_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `pay_name` varchar(255) DEFAULT NULL,
  `receive_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table payout_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payout_detail`;

CREATE TABLE `payout_detail` (
  `id` int(11) NOT NULL,
  `payout_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `item_price` decimal(10,0) DEFAULT NULL,
  `item_qty` int(11) DEFAULT NULL,
  `items_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table profile
# ------------------------------------------------------------

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`)
VALUES
	(1,'Tharaphong Chamnan','admphrao@gmail.com','admphrao@gmail.com','286bb55023af0b4d5716542fc3e74213','','','','Asia/Bangkok'),
	(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table receivable
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receivable`;

CREATE TABLE `receivable` (
  `id` int(11) NOT NULL,
  `receive_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `compan_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `receive_status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table receive
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receive`;

CREATE TABLE `receive` (
  `id` int(11) NOT NULL,
  `receive_date` date DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` datetime DEFAULT NULL,
  `compan_id` int(11) DEFAULT NULL,
  `total_price` decimal(10,0) DEFAULT NULL,
  `confirm` varchar(255) DEFAULT NULL,
  `images_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table receive_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receive_detail`;

CREATE TABLE `receive_detail` (
  `id` int(11) NOT NULL,
  `receive_id` int(11) DEFAULT NULL,
  `items_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `items_price` decimal(11,0) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `receive_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table receive_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receive_status`;

CREATE TABLE `receive_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `session`;

CREATE TABLE `session` (
  `id` char(64) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;

INSERT INTO `session` (`id`, `expire`, `data`, `user_id`)
VALUES
	('6fa7sc2lhhdrq8rjtee6piahi6',1524093343,X'5F5F666C6173687C613A303A7B7D',NULL),
	('ae14tjkt58k75sddpdpf17php5',1514292505,X'5F5F666C6173687C613A303A7B7D',NULL);

/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table social_account
# ------------------------------------------------------------

DROP TABLE IF EXISTS `social_account`;

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`),
  CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `status_items`;

CREATE TABLE `status_items` (
  `id` int(11) NOT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



# Dump of table store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `items_id` int(11) DEFAULT NULL,
  `instore` int(11) DEFAULT NULL,
  `range_min` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sub_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sub_menu`;

CREATE TABLE `sub_menu` (
  `sub_id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sub_menu` WRITE;
/*!40000 ALTER TABLE `sub_menu` DISABLE KEYS */;

INSERT INTO `sub_menu` (`sub_id`, `icon`, `url`, `label`, `title`, `badge`, `sort`, `visible`)
VALUES
	(2,'desktop','index.php?r=computer/index','ครุภัณฑ์คอมพิวเตอร์','รายการครุภัณฑ์คอมพิวเตอร์',NULL,1,NULL),
	(2,'th','index.php?r=report','ครุภัณฑ์...1','รายการครุภัณฑ์...',NULL,2,NULL),
	(7,'pie-chart','index.php?r=report','รายงาน...1','รายการ...',NULL,1,NULL),
	(3,'th','index.php?r=report','วัสดุ...1','รายการครุภัณฑ์...',NULL,1,NULL);

/*!40000 ALTER TABLE `sub_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table unpaid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `unpaid`;

CREATE TABLE `unpaid` (
  `id` int(11) NOT NULL,
  `payout_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `status_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`)
VALUES
	(1,'admin','admphrao@gmail.com','$2y$12$FH/tGRA1IKlsIIqBNZBY7O1GIz6u1JWTJ51FSkyXlu2EFV4WRBKDm','_rWxFmXNGBiExucOIKMvo0mBZtp2qg_T',1501355572,NULL,NULL,'::1',1501353914,1502437835,0,1514288494),
	(2,'user','user@local.com','$2y$12$0QC8gKY/smPAibOcx98hxOHSSHi8xKHP9vbsLF.t05APnEZJjfpZu','T5JgifFNUqSqJVfvJ5SWItNtA_w-OFjt',1501356352,NULL,NULL,'::1',1501356353,1501356353,0,1510039430);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Dumping routines (PROCEDURE) for database 'warehouse'
--
DELIMITER ;;

# Dump of PROCEDURE create_table_computer
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `create_table_computer` */;;
/*!50003 SET SESSION SQL_MODE="ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`127.0.0.1`*/ /*!50003 PROCEDURE `create_table_computer`()
BEGIN

CREATE TABLE IF NOT EXISTS `computer` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `sap_code` varchar(50) DEFAULT NULL,
  `budget_year` varchar(4) DEFAULT NULL,
  `regis_date` datetime DEFAULT NULL,
  `aname` varchar(150) DEFAULT NULL,
  `dept` varchar(8) DEFAULT NULL,
  `positions` varchar(50) DEFAULT NULL,
  `floorno` varchar(20) DEFAULT NULL,
  `roomno` varchar(60) DEFAULT NULL,
  `groupid` char(3) DEFAULT NULL,
  `catagory` varchar(5) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `asize` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT '0.00',
  `pur_date` datetime DEFAULT NULL,
  `doc_no` varchar(100) DEFAULT NULL,
  `pur_docno` varchar(30) DEFAULT NULL,
  `receive_date` datetime DEFAULT NULL,
  `bud_id` char(2) DEFAULT NULL,
  `asset_note` text,
  `pict_path` varchar(50) DEFAULT NULL,
  `a_status` char(2) DEFAULT NULL,
  
  PRIMARY KEY (`code`),
  KEY `dept` (`dept`),
  KEY `floorno` (`floorno`),
  KEY `IX_computer` (`sap_code`),
  KEY `roomno` (`roomno`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

insert into computer
select code,sap_code,budget_year,regis_date,aname,dept,positions,floorno,roomno,groupid,catagory,brand,asize,model,
serial_no,price,pur_date,doc_no,pur_docno,receive_date,bud_id,asset_note,pict_path,a_status
from asset_master 
;

END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
