/*
Navicat MySQL Data Transfer

Source Server         : MySQL_XAMPP
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : warehouse

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-01-28 08:49:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for asset_acatagory
-- ----------------------------
DROP TABLE IF EXISTS `asset_acatagory`;
CREATE TABLE `asset_acatagory` (
  `groupid` char(3) NOT NULL DEFAULT '',
  `catagory` varchar(5) NOT NULL DEFAULT '',
  `descriptions` varchar(100) DEFAULT NULL,
  KEY `catagory` (`catagory`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asset_acatagory
-- ----------------------------
INSERT INTO `asset_acatagory` VALUES ('01', '024', 'Infusion Pump');
INSERT INTO `asset_acatagory` VALUES ('02', '018', 'เครื่องปรับอากาศ');
INSERT INTO `asset_acatagory` VALUES ('03', '002', 'คอมพิวเตอร์โน๊ตบุค');
INSERT INTO `asset_acatagory` VALUES ('04', '002', 'เครื่องขยายเสียง');
INSERT INTO `asset_acatagory` VALUES ('05', '001', 'กล้อง');
INSERT INTO `asset_acatagory` VALUES ('06', '001', 'รถเข็น');
INSERT INTO `asset_acatagory` VALUES ('07', '001', 'เครื่องชั่ง');
INSERT INTO `asset_acatagory` VALUES ('08', '006', 'เครื่องกรองน้ำ');
INSERT INTO `asset_acatagory` VALUES ('08', '007', 'เครื่องซักผ้า');
INSERT INTO `asset_acatagory` VALUES ('09', '003', 'รถยนต์');
INSERT INTO `asset_acatagory` VALUES ('10', '008', 'เครื่องเจียร');
INSERT INTO `asset_acatagory` VALUES ('11', '001', 'เครื่องเล่นเด็ก');
INSERT INTO `asset_acatagory` VALUES ('99', '999', 'ไม่ระบุ');
INSERT INTO `asset_acatagory` VALUES ('03', '003', 'เครื่องถ่ายทอดสัญญาณ (HUB/Switch/Router)');
INSERT INTO `asset_acatagory` VALUES ('03', '004', 'เครื่องแปลงรหัสสัญญาณ (Modem)');
INSERT INTO `asset_acatagory` VALUES ('03', '001', 'คอมพิวเตอร์ประมวลผล (ไมโครคอมพิวเตอร์)');
INSERT INTO `asset_acatagory` VALUES ('03', '005', 'Printer');
INSERT INTO `asset_acatagory` VALUES ('03', '006', 'Scanner');
INSERT INTO `asset_acatagory` VALUES ('03', '007', 'เครื่องสำรองไฟ (UPS)');
INSERT INTO `asset_acatagory` VALUES ('03', '008', 'โปรแกรมคอมพิวเตอร์ หรือซอฟต์แวร์');
INSERT INTO `asset_acatagory` VALUES ('05', '002', 'Projecter');

-- ----------------------------
-- Table structure for asset_astatus
-- ----------------------------
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

-- ----------------------------
-- Records of asset_astatus
-- ----------------------------
INSERT INTO `asset_astatus` VALUES ('1', 'ใช้งานปกติ', null, null, null, null);
INSERT INTO `asset_astatus` VALUES ('2', 'ส่งคืนคลัง สภาพใช้งานได้', null, null, null, null);
INSERT INTO `asset_astatus` VALUES ('3', 'ส่งคืนคลัง สภาพชำรุด', null, null, null, null);
INSERT INTO `asset_astatus` VALUES ('4', 'รอจำหน่าย', null, null, null, null);
INSERT INTO `asset_astatus` VALUES ('5', 'จำหน่ายแล้ว', null, null, null, null);
INSERT INTO `asset_astatus` VALUES ('6', 'ตรวจสอบข้อมูล', 'ผู้ดูแลระบบ', null, null, 'ผู้ดูแลระบบ');
INSERT INTO `asset_astatus` VALUES ('7', 'อื่นๆ', null, null, null, null);
INSERT INTO `asset_astatus` VALUES ('8', 'ชำรุด/เสีย (ซ่อมได้)', 'ผู้ดูแลระบบ', null, null, 'ผู้ดูแลระบบ');
INSERT INTO `asset_astatus` VALUES ('9', 'ชำรุด/เสีย (ซ่อมไม่ได้)', 'ผู้ดูแลระบบ', null, null, 'ผู้ดูแลระบบ');

-- ----------------------------
-- Table structure for asset_asubstatus
-- ----------------------------
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

-- ----------------------------
-- Records of asset_asubstatus
-- ----------------------------
INSERT INTO `asset_asubstatus` VALUES ('1', '1', 'ใช้การได้', null, '2004-08-03 22:46:22', null, '1900-01-01 00:25:21');
INSERT INTO `asset_asubstatus` VALUES ('2', '1', 'อยู่ระหว่างการสอบวัดเทียบ', null, '2004-08-03 22:47:12', null, '1900-01-01 00:25:21');
INSERT INTO `asset_asubstatus` VALUES ('2', '2', 'รอจำหน่าย', null, '2007-04-09 15:16:45', null, '1900-01-01 00:25:21');
INSERT INTO `asset_asubstatus` VALUES ('5', '1', 'จำหน่ายแล้ว', null, '2004-08-28 15:52:34', null, '1900-01-01 00:25:21');
INSERT INTO `asset_asubstatus` VALUES ('5', '2', 'อยู่ระหว่างการจำหน่าย', null, '2004-08-03 22:47:42', null, '1900-01-01 00:25:21');
INSERT INTO `asset_asubstatus` VALUES ('5', '3', 'รอจำหน่าย', null, '2004-10-01 19:18:28', null, '1900-01-01 00:25:21');

-- ----------------------------
-- Table structure for asset_group
-- ----------------------------
DROP TABLE IF EXISTS `asset_group`;
CREATE TABLE `asset_group` (
  `groupid` char(3) NOT NULL DEFAULT '',
  `description` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of asset_group
-- ----------------------------
INSERT INTO `asset_group` VALUES ('01', '01-ครุภัณฑ์การแพทย์');
INSERT INTO `asset_group` VALUES ('02', '02-ครุภัณฑ์สำนักงาน');
INSERT INTO `asset_group` VALUES ('03', '03-ครุภัณฑ์คอมพิวเตอร์');
INSERT INTO `asset_group` VALUES ('04', '04-ครุภัณฑ์ไฟฟ้าและวิทยุ');
INSERT INTO `asset_group` VALUES ('05', '05-ครุภัณฑ์โฆษณาและเผยแพร่');
INSERT INTO `asset_group` VALUES ('06', '06-ครุภัณฑ์ก่อสร้าง');
INSERT INTO `asset_group` VALUES ('07', '07-ครุภัณฑ์การเกษตร');
INSERT INTO `asset_group` VALUES ('08', '08-ครุภัณฑ์งานบ้านงานครัว');
INSERT INTO `asset_group` VALUES ('09', '09-ครุภัณฑ์ยานพาหนะ');
INSERT INTO `asset_group` VALUES ('10', '10-ครุภัณฑ์โรงงาน');
INSERT INTO `asset_group` VALUES ('11', '11-ครุภัณฑ์การศึกษา');
INSERT INTO `asset_group` VALUES ('99', '99-ไม่ระบุ');

-- ----------------------------
-- Table structure for asset_master
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asset_master
-- ----------------------------
INSERT INTO `asset_master` VALUES ('19', '7440-002-0001-003', '2541', '2555-02-16 00:00:00', 'Printer', 'G001', '', 'ชั้น 1 (OPD)', '', '03', '005', 'Epson', 'Dot Matrix', 'LQ 300', '', '8500.00', '2541-01-01 00:00:00', '', '', '2541-01-01 00:00:00', '', '', '', '3');
INSERT INTO `asset_master` VALUES ('20', '7440-001-0001-008', '2542', '2555-02-16 00:00:00', 'คอมพิวเตอร์ อัลฟ่า', 'D001', null, 'ชั้น 1 (ห้องฟัน)', null, '03', '001', null, 'Hard Disk 426, Ram 32 Mb.', 'celeron 366', null, '21500.00', '2542-06-11 00:00:00', null, '01/0038', '2542-06-11 00:00:00', null, 'cpu+จอ เสียซ่อมไม่ได้', null, '3');
INSERT INTO `asset_master` VALUES ('21', '7440-001-0001-009', '2542', '2555-02-16 00:00:00', 'คอมพิวเตอร์ อัลฟ่า', 'F002', null, 'ชั้น 1 (ผู้ป่วย ญ)', null, '03', '001', null, 'Hard Disk 426, Ram 32 Mb.', null, null, '21500.00', '2542-06-11 00:00:00', null, '01/0038', '2542-06-11 00:00:00', null, 'cpu+จอ เสียซ่อมไม่ได้', null, '3');
INSERT INTO `asset_master` VALUES ('22', '7440-001-0001-010', '2542', '2555-02-16 00:00:00', 'คอมพิวเตอร์ อัลฟ่า', 'ฺB001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, 'Hard Disk 4.3 Gb. Ram 32 Mb.', null, null, '22898.00', '2542-08-04 00:00:00', null, '05/0246', null, null, 'cpu+จอ เสียซ่อมไม่ได้', null, '3');
INSERT INTO `asset_master` VALUES ('23', '7440-002-0001-004', '2542', '2555-02-16 00:00:00', 'Printer', 'D001', null, 'ชั้น 1 (ห้องฟัน)', null, '03', '005', 'Epson', null, 'LQ 300', null, '8775.00', '2542-06-11 00:00:00', null, '01/0038', '2542-06-11 00:00:00', null, null, null, '3');
INSERT INTO `asset_master` VALUES ('24', '7440-002-0001-005', '2542', '2555-02-16 00:00:00', 'Printer', 'F001', '', 'ชั้น 2 (ผู้ป่วย ช)', '', '03', '005', 'Epson', '', 'LQ 300', '', '8775.00', '2542-06-11 00:00:00', '', '01/0038', '2542-06-11 00:00:00', '', '', '', '3');
INSERT INTO `asset_master` VALUES ('26', '7440-002-0001-007', '2542', '2555-02-16 00:00:00', 'Printer', 'E001', '', 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', '03', '005', 'Epson', '', 'LQ 670', '', '16500.00', '2542-01-01 00:00:00', '', '', null, '', '', '', '5');
INSERT INTO `asset_master` VALUES ('27', '7440-002-0001-008', '2542', '2555-02-16 00:00:00', 'Printer', 'C001', null, 'ชั้น 1', null, '03', '005', 'Epson', null, 'LQ 2070', null, '8775.00', '2542-10-23 00:00:00', null, '11/05/04', '2542-10-23 00:00:00', null, null, null, '3');
INSERT INTO `asset_master` VALUES ('30', '7440-001-0001-017', '2543', '2555-02-16 00:00:00', 'คอมพิวเตอร์ประมวลผลทั่วไป', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, 'Hard Disk 4.3 Gb. Ram 32 Mb.', 'celeron 466', null, '20580.00', '2543-01-01 00:00:00', null, '02/0054', null, null, 'cpu+จอ เสียซ่อมไม่ได้', null, '3');
INSERT INTO `asset_master` VALUES ('31', '7440-001-0001-018', '2543', '2555-02-16 00:00:00', 'คอมพิวเตอร์ Socos', 'A001', '', 'ชั้น 1', 'งานเอดส์', '03', '001', '', '', '', '', null, '2543-10-01 00:00:00', '', '', '2543-10-01 00:00:00', '', 'cpu เสียซ่อมไม่ได้', '', '5');
INSERT INTO `asset_master` VALUES ('32', '7440-001-0001-019', '2543', '2555-02-16 00:00:00', 'คอมพิวเตอร์ Visage SD', 'F006', null, 'ชั้น 1 (OPD)', 'ห้องตรวจ 1', '03', '001', null, null, null, null, null, '2543-10-01 00:00:00', null, null, '2543-10-01 00:00:00', null, 'cpu เสียซ่อมไม่ได้\r\nจอ อยู่ WARD ชาย', null, '3');
INSERT INTO `asset_master` VALUES ('33', '7440-001-0001-020', '2543', '2555-02-16 00:00:00', 'คอมพิวเตอร์ Visage SD', 'F006', null, 'ชั้น 1 (OPD)', 'ห้องตรวจ 2', '03', '001', null, null, null, null, null, '2543-10-01 00:00:00', null, null, '2543-10-01 00:00:00', null, 'จอ เสียซ่อมไม่ได้\r\n', null, '3');
INSERT INTO `asset_master` VALUES ('34', '7440-001-0001-021', '2543', '2555-02-16 00:00:00', 'คอมพิวเตอร์ Micro Scan', 'H001', null, 'ชั้น 1 (OPD)', 'ห้องตรวจ 3', '03', '001', null, null, null, null, null, '2543-10-01 00:00:00', null, null, '2543-10-01 00:00:00', null, 'cpu เสียซ่อมไม่ได้', null, '3');
INSERT INTO `asset_master` VALUES ('35', '7440-001-0001-022', '2543', '2555-02-16 00:00:00', 'คอมพิวเตอร์ Visage SD', 'ฺB001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, null, null, null, null, '2543-10-01 00:00:00', null, null, null, null, 'cpu+จอ เสีย ซ่อมไม่ได้', null, '3');
INSERT INTO `asset_master` VALUES ('36', '7440-001-0001-023', '2543', '2555-02-16 00:00:00', 'คอมพิวเตอร์ Visage SD', 'C002', null, 'ชั้น 1', null, '03', '001', null, null, null, null, null, '2543-10-01 00:00:00', null, null, null, null, 'cpu เสีย ซ่อมไม่ได้', null, '3');
INSERT INTO `asset_master` VALUES ('37', '7440-001-0001-011', '2542', '2555-02-16 00:00:00', 'คอมพิวเตอร์ อัลฟ่า', 'E000', null, 'ชั้น 2 (บริหาร)', null, '03', '001', null, 'Hard Disk 4.3 Gb. Ram 32 Mb.', null, null, '22898.00', '2542-08-04 00:00:00', null, '05/0246', '2542-08-04 00:00:00', null, 'cpu+จอ เสียซ่อมไม่ได้', null, '3');
INSERT INTO `asset_master` VALUES ('38', '7440-001-0001-012', '2542', '2555-02-16 00:00:00', 'คอมพิวเตอร์ อัลฟ่า', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, 'Hard Disk 4.3 Gb. Ram 32 Mb.', 'Pentium celeron 33', null, '23200.00', '2542-01-01 00:00:00', null, null, null, null, 'cpu เสียซ่อมไม่ได้', null, '3');
INSERT INTO `asset_master` VALUES ('39', '7440-001-0001-013', '2542', '2555-02-16 00:00:00', 'คอมพิวเตอร์ อัลฟ่า', 'ฺB001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, 'Hard Disk 4.3 Gb.', 'Celeron ', null, '26774.00', '2542-10-23 00:00:00', null, null, null, null, 'cpu เสียซ่อมไม่ได้', null, '3');
INSERT INTO `asset_master` VALUES ('40', '7440-001-0001-014', '2542', '2555-02-16 00:00:00', 'คอมพิวเตอร์ อัลฟ่า', 'F005', null, 'ชั้น 1 (OPD)', null, '03', '001', null, 'Hard Disk 4.3 Gb. Ram 32 Mb.', 'Celeron 400', null, '25000.00', '2542-10-23 00:00:00', null, null, null, null, 'cpu เสีย', null, '3');
INSERT INTO `asset_master` VALUES ('41', '7440-001-0001-015', '2542', '2555-02-16 00:00:00', 'คอมพิวเตอร์ อัลฟ่า', 'ฺB001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, null, null, null, '50000.00', '2542-01-01 00:00:00', null, null, null, null, 'cpu ย้ายไป OR\r\n\r\nจอเสีย', null, '7');
INSERT INTO `asset_master` VALUES ('42', '7440-001-0001-016', '2542', '2555-02-16 00:00:00', 'คอมพิวเตอร์ อัลฟ่า', 'E001', null, 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', '03', '001', null, null, null, null, '25000.00', '2542-01-01 00:00:00', null, null, null, null, 'cpu เสีย', null, '3');
INSERT INTO `asset_master` VALUES ('43', '7440-001-0001-024', '2545', '2555-02-16 00:00:00', 'คอมพิวเตอร์ Bata', 'E001', null, 'ชั้น 2 (บริหาร)', 'ฝ่ายบริหารทั่วไป', '03', '001', null, 'Hard Disk 40 Gb. Ram 128 Mb.', 'Intel Pentium 4 2GHz', null, '42000.00', '2545-06-24 00:00:00', null, 'IV06-0647', null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('44', '7440-001-0001-025', '2545', '2555-02-16 00:00:00', 'คอมพิวเตอร์ ', 'L001', null, 'ชั้น 1 (OPD)', 'Lab', '03', '001', null, 'cpu, Monitor Accuvision', null, null, null, '2545-12-01 00:00:00', null, null, null, null, 'ใช้เงินห้อง lab ซื้อเอง', null, '1');
INSERT INTO `asset_master` VALUES ('45', '7440-002-0001-011', '2545', '2555-02-16 00:00:00', 'Printer', 'E000', null, 'ชั้น 2 (บริหาร)', 'ฝ่ายบริหารทั่วไป', '03', '005', 'Canon', null, null, null, null, '2545-06-24 00:00:00', null, 'IV06-0647', '2545-06-24 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('46', '7440-002-0001-012', '2545', '2555-02-16 00:00:00', 'Printer', 'C001', null, 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', '03', '005', 'Canon', null, null, null, null, '2545-07-12 00:00:00', null, 'IV 07-0497', '2545-07-12 00:00:00', null, null, null, '3');
INSERT INTO `asset_master` VALUES ('47', '7440-007-0001-002', '2545', '2555-02-16 00:00:00', 'Switch HUB 16 port', 'ฺB001', null, 'ชั้น 1 (OPD)', 'ห้องบัตร', '03', '003', 'SureCom', '16 port', null, null, '9100.00', '2545-06-26 00:00:00', null, '50/2470', '2545-06-26 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('48', '7440-001-0007-001', '2546', '2555-02-16 00:00:00', 'Acer Travel Mate 230', 'E000', null, 'ชั้น 1 (OPD)', null, '03', '002', 'ACER', 'cpu celeron 2.4GHz', 'Travel Mate 230', null, '42693.00', '2546-02-18 00:00:00', null, null, '2546-02-18 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('49', '7440-001-0007-002', '2546', '2555-02-16 00:00:00', 'Acer Travel Mate 230', 'A001', null, 'ชั้น 1', null, '03', '002', 'ACER', 'cpu celeron 2.4GHz', 'Travel Mate 230', null, null, '2546-09-29 00:00:00', null, null, '2546-09-29 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('50', '7440-002-0001-013', '2546', '2555-02-16 00:00:00', 'Printer', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '005', 'Epson', null, 'LQ 300', null, '9600.00', '2546-10-03 00:00:00', null, '65/3210', '2546-10-03 00:00:00', null, null, null, '3');
INSERT INTO `asset_master` VALUES ('51', '7440-002-0001-014', '2546', '2555-02-16 00:00:00', 'Printer', 'ฺB001', null, 'ชั้น 1 (OPD)', 'stock', '03', '005', 'Epson', null, 'LQ 300', null, '9600.00', '2546-10-03 00:00:00', null, '65/3210', '2546-10-03 00:00:00', null, null, null, '7');
INSERT INTO `asset_master` VALUES ('52', '7440-002-0002-001', '2546', '2555-02-16 00:00:00', 'Printer', 'C001', null, 'ชั้น 1', null, '03', '005', 'HP', null, 'HP 1020', null, '4600.00', '2546-10-01 00:00:00', null, null, '2546-10-01 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('53', '7440-002-0002-002', '2546', '2555-02-16 00:00:00', 'Printer', 'ฺB001', null, 'ชั้น 1 (OPD)', null, '03', '005', 'HP', null, 'HP 1020', null, '4600.00', '2546-10-01 00:00:00', null, null, '2546-10-01 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('54', '7440-002-0002-003', '2546', '2555-02-16 00:00:00', 'Printer', 'A001', null, 'ชั้น 1', 'ยุทธศาสตร์', '03', '005', 'HP', null, 'HP Laser 1150', null, null, '2546-09-29 00:00:00', null, null, '2546-09-29 00:00:00', null, 'งบประมาณงานเอสด์ สสจ.ชม.', null, '3');
INSERT INTO `asset_master` VALUES ('55', '7440-002-0003-001', '2546', '2555-02-16 00:00:00', 'Printer Ink Jet', 'F010', null, 'ชั้น 1 (OPD)', null, '03', '005', 'Lexmark', null, 'LMZ 645', null, '1150.00', '2546-10-01 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('56', '7440-002-0003-003', '2546', '2555-02-16 00:00:00', 'Printer Ink Jet', 'F006', null, 'ชั้น 1 (OPD)', 'OPD', '03', '005', 'Canon', null, 'BJS S100', null, '2570.00', '2546-04-09 00:00:00', null, 'IV04-0283', null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('57', '7440-002-0002-004', '2548', '2555-02-16 00:00:00', 'Printer Laser Jet', 'E000', null, 'ชั้น 2 (บริหาร)', 'ฝ่ายบริหารทั่วไป', '03', '005', 'HP', null, 'HP Laser Jet 1020', null, '7090.00', '2548-09-08 00:00:00', null, 'IV09-0286', '2548-09-08 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('58', '7440-001-0007-003', '2549', '2555-02-16 00:00:00', 'Acer Aspire 5593WXMi', 'C002', null, 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', '03', '002', 'ACER', 'cpu Intel core2Duo 1.66GHz', 'Aspire 5593WXMi', null, null, '2549-11-01 00:00:00', null, null, '2549-11-01 00:00:00', null, 'งบยาเสพติด', null, '1');
INSERT INTO `asset_master` VALUES ('59', '7440-002-0002-005', '2549', '2555-02-16 00:00:00', 'Printer Laser Jet', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '005', 'HP', null, 'HP Laser Jet 1020', null, '6290.00', '2549-02-01 00:00:00', null, 'IS02-0004', '2549-02-01 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('60', '7440-002-0002-006', '2549', '2555-02-16 00:00:00', 'Printer Laser Jet', 'F011', null, 'ชั้น 2 (ผู้ป่วย ช)', 'ฝ่ายการพยาบาล', '03', '005', 'HP', null, 'HP Laser Jet 1020', null, '5890.00', '2549-10-27 00:00:00', null, 'IS10-0062', '2549-10-27 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('61', '7440-002-0003-002', '2549', '2555-02-16 00:00:00', 'Printer Ink Jet', 'D001', null, 'ชั้น 1 (ห้องฟัน)', null, '03', '005', 'Canon', null, 'IP 1200 Canon Pixma', null, null, '2549-07-27 00:00:00', null, '5694/114', '2549-07-27 00:00:00', null, 'โครงการยิ้มสดใสฯ', null, '1');
INSERT INTO `asset_master` VALUES ('62', '7440-006-0002-001', '2549', '2555-02-16 00:00:00', 'Scanner', 'C003', null, 'ชั้น 1', null, '03', '006', 'Canon', null, 'Canon Lide 25', null, '2098.27', '2549-06-16 00:00:00', null, 'IS06-0036', '2549-06-16 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('63', '7440-001-0007-004', '2551', '2555-02-16 00:00:00', 'Note book Toshiba', 'H001', null, 'ชั้น 1', null, '03', '002', 'Toshiba', null, 'Satellite M300-PA30T', null, '29990.00', '2551-10-31 00:00:00', null, 'cw10-0024', '2551-10-31 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('64', '7440-002-0002-008', '2551', '2555-02-16 00:00:00', 'Printer Laser Jet', 'E003', null, 'ชั้น 2 (บริหาร)', 'ย้ายไป ward', '03', '005', 'HP', null, 'HP Laser Jet 1018', null, '4250.00', '2551-12-19 00:00:00', null, '005/0201', '2551-12-19 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('65', '7440-002-0002-009', '2551', '2555-02-16 00:00:00', 'Printer Laser Jet', 'F001', null, 'ชั้น 2 (ผู้ป่วย ช)', 'ward ชาย', '03', '005', 'HP', null, 'HP Laser Jet 1018', null, '4250.00', '2551-12-19 00:00:00', null, '005/0202', '2551-12-19 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('66', '7440-002-0003-004', '2551', '2555-02-16 00:00:00', 'Printer Ink Jet', 'C003', null, 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', '03', '005', 'Epson', null, 'Stylus TX400 All-in-one', null, '4990.00', '2551-12-30 00:00:00', null, '13/0612', '2551-12-30 00:00:00', null, '+ชุด Tank และหมึก Ink Jet ราคา 1,200.-บาท', null, '1');
INSERT INTO `asset_master` VALUES ('67', '7440-002-0001-015', '2551', '2555-02-16 00:00:00', 'Printer', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '005', 'Epson', null, 'LQ 300', null, '7450.00', '2551-03-14 00:00:00', null, null, '2551-03-14 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('68', '7440-002-0001-016', '2551', '2555-02-16 00:00:00', 'Printer', 'E001', null, 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', '03', '005', 'Epson', null, 'LQ 300', null, '10850.00', '2551-05-12 00:00:00', null, null, '2551-05-12 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('69', '7440-002-0002-007', '2551', '2555-02-16 00:00:00', 'Printer Laser Jet', 'F003', null, 'ชั้น 1 (OPD)', 'ER', '03', '005', 'HP', null, 'HP Laser Jet 1020', null, '4600.00', '2551-03-19 00:00:00', null, null, '2551-03-19 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('70', '7440-005-0001-001', '2537', '2555-02-16 00:00:00', 'UPS Green', 'F006', null, 'ชั้น 1 (OPD)', 'ห้องตรวจ 1', '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('71', '7440-005-0001-002', '2537', '2555-02-16 00:00:00', 'UPS Green', 'F006', null, 'ชั้น 1 (OPD)', 'ห้องตรวจ 2', '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, 'Socomec?', null, '3');
INSERT INTO `asset_master` VALUES ('72', '7440-005-0001-003', '2537', '2555-02-16 00:00:00', 'UPS Green', 'ฺB001', null, 'ชั้น 1 (OPD)', 'ห้องบัตร', '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, 'สำรอง Switch Hup', null, '1');
INSERT INTO `asset_master` VALUES ('73', '7440-005-0001-004', '2537', '2555-02-16 00:00:00', 'UPS Power', 'L001', null, 'ชั้น 1 (OPD)', 'Lab', '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('74', '7440-005-0001-005', '2537', '2555-02-16 00:00:00', 'UPS Loonic', 'L001', null, 'ชั้น 1 (OPD)', 'Lab', '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('75', '7440-005-0001-006', '2537', '2555-02-16 00:00:00', 'UPS HLC', 'L001', null, 'ชั้น 1 (OPD)', 'Lab', '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('76', '7440-005-0001-007', '2537', '2555-02-16 00:00:00', 'UPS Syndome', 'L001', null, 'ชั้น 1 (OPD)', 'Lab', '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('77', '7440-005-0001-008', '2537', '2555-02-16 00:00:00', 'UPS Green', 'ฺB001', null, 'ชั้น 1 (OPD)', 'ห้องบัตร', '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, '3');
INSERT INTO `asset_master` VALUES ('78', '7440-005-0001-009', '2537', '2555-02-16 00:00:00', 'UPS 40X max', 'ฺB001', null, 'ชั้น 1 (OPD)', 'ห้องบัตร', '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, '3');
INSERT INTO `asset_master` VALUES ('79', '7440-005-0001-010', '2539', '2555-02-16 00:00:00', 'UPS ', 'E000', null, 'ชั้น 2 (บริหาร)', null, '03', '007', null, null, null, null, '3300.00', '2539-04-25 00:00:00', null, '1/95', '2539-04-25 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('80', '7440-005-0001-011', '2541', '2555-02-16 00:00:00', 'UPS ', 'F003', null, 'ชั้น 1 (OPD)', 'ER', '03', '007', null, null, null, null, '3300.00', '2541-10-01 00:00:00', null, null, null, null, null, null, '3');
INSERT INTO `asset_master` VALUES ('81', '7440-005-0001-012', '2541', '2555-02-16 00:00:00', 'UPS ', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '007', null, null, null, null, '5500.00', '2541-10-01 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('82', '7440-005-0001-013', '2542', '2555-02-16 00:00:00', 'UPS 500 VA', 'F001', null, 'ชั้น 2 (ผู้ป่วย ช)', null, '03', '007', null, null, null, null, '3300.00', '2542-06-11 00:00:00', null, '01/0038', '2542-06-11 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('83', '7440-005-0001-014', '2542', '2555-02-16 00:00:00', 'UPS', 'ฺB001', null, 'ชั้น 1 (OPD)', null, '03', '007', null, null, null, null, '3300.00', '2542-08-04 00:00:00', null, '05/0246', '2542-08-04 00:00:00', null, null, null, '3');
INSERT INTO `asset_master` VALUES ('84', '7440-005-0001-015', '2542', '2555-02-16 00:00:00', 'UPS 500 VA', 'E001', null, 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', '03', '007', null, null, null, null, '3500.00', '2542-10-01 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('85', '7440-005-0001-016', '2542', '2555-02-16 00:00:00', 'UPS', 'C001', null, 'ชั้น 1', null, '03', '007', null, null, null, null, '3300.00', '2542-10-23 00:00:00', null, '11/0504', '2542-10-23 00:00:00', null, null, null, '3');
INSERT INTO `asset_master` VALUES ('86', '7440-005-0001-017', '2542', '2555-02-16 00:00:00', 'UPS', 'F005', null, 'ชั้น 1 (OPD)', null, '03', '007', null, null, null, null, '3400.00', '2542-10-23 00:00:00', null, '11/0504', '2542-10-23 00:00:00', null, null, null, '3');
INSERT INTO `asset_master` VALUES ('87', '7440-005-0001-018', '2542', '2555-02-16 00:00:00', 'UPS', 'ฺB001', null, 'ชั้น 1 (OPD)', null, '03', '007', null, null, null, null, '4500.00', '2542-10-01 00:00:00', null, null, null, null, null, null, '3');
INSERT INTO `asset_master` VALUES ('88', '7440-005-0001-019', '2542', '2555-02-16 00:00:00', 'UPS', 'E001', null, 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', '03', '007', null, null, null, null, '3300.00', '2542-10-01 00:00:00', null, null, null, null, null, null, '3');
INSERT INTO `asset_master` VALUES ('89', '7440-005-0001-020', '2545', '2555-02-16 00:00:00', 'UPS APC 500 VA', 'C003', null, 'ชั้น 1', 'UC 1', '03', '007', null, null, null, null, '1400.00', '2545-07-12 00:00:00', null, 'IV07-0499', '2545-07-12 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('90', '7440-005-0001-021', '2546', '2555-02-16 00:00:00', 'UPS 600 VA', 'E001', null, 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', '03', '007', null, null, null, null, '2600.00', '2546-03-27 00:00:00', null, '44/2177', '2546-03-27 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('91', '7440-005-0001-022', '2546', '2555-02-16 00:00:00', 'UPS 600 VA Power Gard', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '007', null, null, null, null, '2600.00', '2546-04-25 00:00:00', null, '59/2943', '2546-04-25 00:00:00', null, null, null, '3');
INSERT INTO `asset_master` VALUES ('92', '7440-005-0001-023', '2546', '2555-02-16 00:00:00', 'UPS SLC MINI 600 VA', 'ฺB001', null, 'ชั้น 1 (OPD)', null, '03', '007', null, null, null, null, '1580.00', '2546-08-31 00:00:00', null, '0631487389', '2546-08-31 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('93', '7440-005-0001-024', '2547', '2555-02-16 00:00:00', 'UPS 600 VA Power Gard', 'E001', null, 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', '03', '007', null, null, null, null, '2500.00', '2547-05-20 00:00:00', null, '070/3456', '2547-05-20 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('94', '7440-005-0001-025', '2547', '2555-02-16 00:00:00', 'UPS Powergard PE', 'E000', null, 'ชั้น 2 (บริหาร)', null, '03', '007', null, null, null, null, '1900.00', '2547-10-21 00:00:00', null, 'L8-J9-17580', '2547-10-21 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('95', '7440-005-0001-026', '2547', '2555-02-16 00:00:00', 'UPS NUBOS S100 P3', 'E000', null, 'ชั้น 2 (บริหาร)', 'ตู้สาขาโทรศัพท์', '03', '007', null, null, null, null, '1890.00', '2547-12-07 00:00:00', null, '6035', '2547-12-07 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('96', '7440-005-0001-027', '2549', '2555-02-16 00:00:00', 'UPS APC BACK 500 AS', 'C003', null, 'ชั้น 1', null, '03', '007', null, null, null, null, null, '2549-02-01 00:00:00', null, 'IS02-0003', '2549-02-01 00:00:00', null, 'ซ้ำ', null, '1');
INSERT INTO `asset_master` VALUES ('97', '7440-005-0001-028', '2549', '2555-02-16 00:00:00', 'UPS APC BACK 500 EI', 'F001', null, 'ชั้น 2 (ผู้ป่วย ช)', null, '03', '007', null, null, null, null, '2890.00', '2549-06-01 00:00:00', null, 'IS06-0001', null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('98', '7440-005-0001-029', '2549', '2555-02-16 00:00:00', 'UPS APC BACK 500 EI', 'E001', null, 'ชั้น 2 (บริหาร)', null, '03', '007', null, null, null, null, '2890.00', '2549-06-16 00:00:00', null, 'IS06-0035', null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('99', '7440-005-0001-030', '2549', '2555-02-16 00:00:00', 'UPS SOS 800 Va', 'D001', null, 'ชั้น 1 (ห้องฟัน)', null, '03', '007', null, null, null, null, null, '2549-07-27 00:00:00', null, '5694/114', null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('100', '7440-005-0001-031', '2549', '2555-02-16 00:00:00', 'UPS APC BACK 500 R-AS', 'F011', null, 'ชั้น 2 (ผู้ป่วย ช)', null, '03', '007', null, null, 'Battery Back up 300 w.', null, null, '2549-10-27 00:00:00', null, 'IS10-0061', null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('101', '7440-005-0001-032', '2549', '2555-02-16 00:00:00', 'UPS APC BACK 500 R-AS', 'E003', null, 'ชั้น 2 (บริหาร)', null, '03', '007', null, null, 'Battery Back up 300 w.', null, null, '2549-11-03 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('102', '7440-005-0001-033', '2549', '2555-02-16 00:00:00', 'UPS APC BR 1000 I', 'C002', null, 'ชั้น 1', null, '03', '007', null, null, null, null, '8560.00', '2549-06-16 00:00:00', null, null, null, null, 'Projector', null, '1');
INSERT INTO `asset_master` VALUES ('103', '7440-005-0001-034', '2551', '2555-02-16 00:00:00', 'UPS Syndome S5', 'F003', null, 'ชั้น 1 (OPD)', 'ER', '03', '007', null, null, null, null, '1700.00', '2551-03-19 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('104', '7440-005-0001-035', '2551', '2555-02-16 00:00:00', 'UPS 4Tech 600 VA', 'K001', null, 'ชั้น 1 (OPD)', null, '03', '007', null, null, null, null, '1600.00', '2551-05-12 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('105', '7440-005-0001-036', '2551', '2555-02-16 00:00:00', 'UPS Syndome S9-80 VA', 'ฺB001', null, 'ชั้น 1 (OPD)', null, '03', '007', null, null, null, null, '1999.00', '2551-05-18 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('106', '7440-005-0001-037', '2551', '2555-02-16 00:00:00', 'UPS Apple 850 VA', 'F006', null, 'ชั้น 1 (OPD)', 'OPD', '03', '007', null, null, null, null, '1850.00', '2551-06-05 00:00:00', null, null, null, null, null, null, '1');
INSERT INTO `asset_master` VALUES ('107', '7440-005-0001-038', '2551', '2555-02-16 00:00:00', 'UPS FIT', 'A001', null, 'ชั้น 1', null, '03', '007', null, '850 VA, สำรองไฟได้ไม่น้อยกว่า 15 นาที', null, null, '1600.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('108', '7440-005-0001-039', '2551', '2555-02-16 00:00:00', 'UPS FIT', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '007', null, '850 VA, สำรองไฟได้ไม่น้อยกว่า 15 นาที', null, null, '1600.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('109', '7440-005-0001-040', '2551', '2555-02-16 00:00:00', 'UPS FIT', 'L001', null, 'ชั้น 1 (OPD)', 'Lab', '03', '007', null, '850 VA, สำรองไฟได้ไม่น้อยกว่า 15 นาที', null, null, '1600.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('110', '7440-005-0003-001', '2549', '2555-02-16 00:00:00', 'UPS Syndome SZ-1001 PRO', 'C002', null, 'ชั้น 1', null, '03', '007', null, '1000VA, สำรองไฟได้ไม่น้อยกว่า 30 นาที', null, null, '7704.00', '2549-08-31 00:00:00', null, 'IV09-0172', '2549-08-31 00:00:00', null, 'สำหรับสำรองไฟเครื่องคอมพิวเตอร์แม่ข่าย', null, '1');
INSERT INTO `asset_master` VALUES ('111', '7440-001-0001-026', '2546', '2555-02-16 00:00:00', 'Monitor BenQ 15\"', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '001', 'BenQ', null, null, null, '3738.00', '2546-04-09 00:00:00', null, 'IV-04-0283', '2546-04-09 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('112', '7440-001-0001-027', '2546', '2555-02-16 00:00:00', 'Monitor BenQ 15\"', 'F006', null, 'ชั้น 1 (OPD)', 'ห้องตรวจ 1', '03', '001', 'BenQ', null, null, null, '3738.00', '2546-04-09 00:00:00', null, 'IV04-0283', '2546-04-09 00:00:00', null, 'ย้ายจากงานยุทธฯ', null, '1');
INSERT INTO `asset_master` VALUES ('113', '7440-001-0001-028', '2546', '2555-02-16 00:00:00', 'Monitor 15\" Fire Ster', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, null, null, null, '3600.00', '2546-04-25 00:00:00', null, '59/2943', '2546-04-25 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('114', '7440-001-0001-029', '2546', '2555-02-16 00:00:00', 'Monitor Socos 15\"', 'F005', null, 'ชั้น 1 (OPD)', 'LR', '03', '001', null, null, null, null, '6900.00', '2546-08-01 00:00:00', null, null, '2546-08-01 00:00:00', null, null, null, '3');
INSERT INTO `asset_master` VALUES ('115', '7440-001-0001-030', '2546', '2555-02-16 00:00:00', 'Monitor Fire Star 15\"', 'C003', null, 'ชั้น 1', 'UC', '03', '001', null, null, null, null, '6900.00', '2546-08-01 00:00:00', null, null, '2546-08-01 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('116', '7440-001-0001-031', '2546', '2555-02-16 00:00:00', 'Computer Compeq S45 60AL', 'C003', null, 'ชั้น 1', 'UC 1', '03', '001', 'Compaq', null, 'S45 60AL', null, '19900.00', '2546-10-10 00:00:00', null, 'SI10-0091', '2546-10-10 00:00:00', null, '+จอ', null, '1');
INSERT INTO `asset_master` VALUES ('117', '7440-001-0001-032', '2546', '2555-02-16 00:00:00', 'Computer Compeq S45 60AL', 'C001', null, 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', '03', '001', 'Compaq', null, 'S45 60AL', null, '19900.00', '2546-10-10 00:00:00', null, 'SI10-0091', '2546-10-10 00:00:00', null, '+จอ', null, '1');
INSERT INTO `asset_master` VALUES ('118', '7440-001-0001-033', '2548', '2555-02-16 00:00:00', 'Monitor', 'E000', null, 'ชั้น 2 (บริหาร)', null, '03', '001', null, 'ขนาดแสดงผล 15\"', null, null, '3550.00', '2548-07-13 00:00:00', null, '73/3650', '2548-07-13 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('119', '7440-001-0001-034', '2548', '2555-02-16 00:00:00', 'คอมพิวเตอร์ ALPHA', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, 'cpu celeron 2.4GHz', null, null, '1850.00', '2548-10-07 00:00:00', null, '3665/74', '2548-10-07 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('120', '7440-001-0001-035', '2548', '2555-02-16 00:00:00', 'คอมพิวเตอร์ ALPHA', 'F006', null, 'ชั้น 1 (OPD)', 'หน้าห้องตรวจ (โต๊ะ screen)', '03', '001', null, 'cpu celeron 2.4GHz', null, null, '1850.00', '2548-10-07 00:00:00', null, '3665/74', '2548-10-07 00:00:00', null, 'cpu ตกทำให้ตัวเครื่องพัง แตก หัก\r\nเอาตัวเครื่องเก่าห้องฟ้าใสมาใช้', null, '7');
INSERT INTO `asset_master` VALUES ('121', '7440-001-0001-036', '2549', '2555-02-16 00:00:00', 'คอมพิวเตอร์ CHICHANG', 'C003', null, 'ชั้น 1', 'UC 2', '03', '001', null, 'CPU Pentium 4 3.0 GHz.(630)', null, null, '22299.97', '2549-02-01 00:00:00', null, 'IS02-0003', '2549-02-01 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('122', '7440-001-0001-037', '2549', '2555-02-16 00:00:00', 'คอมพิวเตอร์ CHICHANG', 'F002', null, 'ชั้น 1 (ผู้ป่วย ญ)', null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(630)', null, null, '16635.51', '2549-06-01 00:00:00', null, 'IS06-0001', '2549-06-01 00:00:00', null, 'เฉพาะ CPU', null, '7');
INSERT INTO `asset_master` VALUES ('123', '7440-001-0001-038', '2549', '2555-02-16 00:00:00', 'คอมพิวเตอร์ CHICHANG', 'F001', null, 'ชั้น 2 (ผู้ป่วย ช)', null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(630)', null, null, '16635.51', '2549-06-01 00:00:00', null, 'IS06-0001', '2549-06-01 00:00:00', null, 'จอเสีย', null, '7');
INSERT INTO `asset_master` VALUES ('124', '7440-001-0001-039', '2549', '2555-02-16 00:00:00', 'คอมพิวเตอร์ CHICHANG', 'E001', null, 'ชั้น 2 (บริหาร)', null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(630)', null, null, '16635.51', '2549-06-16 00:00:00', null, 'IS06-0035', '2549-06-16 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('125', '7440-001-0001-040', '2549', '2555-02-16 00:00:00', 'คอมพิวเตอร์ View', 'D001', null, 'ชั้น 1 (ห้องฟัน)', null, '03', '001', null, 'CPU Pentium 4 3.06 GHz.', null, null, '20749.44', '2549-07-29 00:00:00', null, null, '2549-07-29 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('126', '7440-001-0001-041', '2549', '2555-02-16 00:00:00', 'คอมพิวเตอร์ CHICHANG', 'ฺB001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, 'CPU Pentium DS20 2.8 GHz.', null, null, '12742.99', '2549-08-17 00:00:00', null, 'IS09-0016', '2549-08-17 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('127', '7440-001-0001-042', '2551', '2555-02-16 00:00:00', 'คอมพิวเตอร์ PCCOM', 'E001', null, 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', '03', '001', null, 'CPU Pentium 4 3.0 GHz.(631)', null, null, '5780.00', '2551-05-12 00:00:00', null, '0307/07', '2551-05-12 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('128', '7440-001-0001-043', '2551', '2555-02-16 00:00:00', 'คอมพิวเตอร์ PCCOM', 'K001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(631)', null, null, '16000.00', '2551-05-12 00:00:00', null, '0308/07', '2551-05-12 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('129', '7440-001-0001-044', '2551', '2555-02-16 00:00:00', 'คอมพิวเตอร์ PCCOM', 'A001', null, 'ชั้น 1', null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(637)', null, null, '23500.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('130', '7440-001-0001-045', '2551', '2555-02-16 00:00:00', 'คอมพิวเตอร์ PCCOM', 'G001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(637)', null, null, '23500.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('131', '7440-001-0001-046', '2551', '2555-02-16 00:00:00', 'คอมพิวเตอร์ PCCOM', 'L001', null, 'ชั้น 1 (OPD)', 'Lab', '03', '001', null, null, null, null, '23500.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('132', '7440-001-0001-047', '2551', '2555-02-16 00:00:00', 'คอมพิวเตอร์ PCCOM', 'E001', null, 'ชั้น 1 (OPD)', null, '03', '001', null, null, null, null, '12800.00', '2551-09-23 00:00:00', null, '10/0465', '2551-09-23 00:00:00', null, null, null, '1');
INSERT INTO `asset_master` VALUES ('133', '7440-001-0001-048', '2551', '2555-02-16 00:00:00', 'คอมพิวเตอร์ PCCOM', 'C003', null, 'ชั้น 1', null, '03', '001', null, null, null, null, '15000.00', '2551-12-01 00:00:00', null, '08/0378', '2551-12-01 00:00:00', null, null, null, '1');

-- ----------------------------
-- Table structure for asset_master_bms
-- ----------------------------
DROP TABLE IF EXISTS `asset_master_bms`;
CREATE TABLE `asset_master_bms` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `sap_code` varchar(50) DEFAULT NULL,
  `sap_code13` varchar(13) DEFAULT NULL,
  `old_code` varchar(30) DEFAULT NULL,
  `tpriority` char(1) DEFAULT NULL,
  `budget_year` varchar(4) DEFAULT NULL,
  `regis_date` datetime DEFAULT NULL,
  `next_date_main` datetime DEFAULT NULL,
  `aname` varchar(150) DEFAULT NULL,
  `engname` varchar(150) DEFAULT NULL,
  `cname` varchar(15) DEFAULT NULL,
  `repair_mtd` int(11) DEFAULT NULL,
  `maintenance_mtd` int(11) DEFAULT NULL,
  `caliber_mtd` int(11) DEFAULT NULL,
  `dept_tech` varchar(8) DEFAULT NULL,
  `dept_main` varchar(8) DEFAULT NULL,
  `dept_caliber` varchar(8) DEFAULT NULL,
  `branchid` varchar(5) DEFAULT NULL,
  `dept` varchar(8) DEFAULT NULL,
  `autorize_name` varchar(60) DEFAULT NULL,
  `positions` varchar(50) DEFAULT NULL,
  `int_phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bcode` varchar(10) DEFAULT NULL,
  `floorno` varchar(20) DEFAULT NULL,
  `roomno` varchar(60) DEFAULT NULL,
  `groupmain` char(3) DEFAULT NULL,
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
  `sup_sale` varchar(10) DEFAULT NULL,
  `salename` varchar(50) DEFAULT NULL,
  `salephone` varchar(50) DEFAULT NULL,
  `sup_product` varchar(10) DEFAULT NULL,
  `w_labor_startdate` datetime DEFAULT NULL,
  `w_labor_finishdate` datetime DEFAULT NULL,
  `w_part_startdate` datetime DEFAULT NULL,
  `w_part_finishdate` datetime DEFAULT NULL,
  `w_no_repair` varchar(20) DEFAULT NULL,
  `sup_repair` varchar(10) DEFAULT NULL,
  `w_start_date_repair_labor` datetime DEFAULT NULL,
  `w_period_repair_labor` int(11) DEFAULT NULL,
  `w_finish_date_repair_labor` datetime DEFAULT NULL,
  `w_start_date_repair_part` datetime DEFAULT NULL,
  `w_period_repair_part` int(11) DEFAULT NULL,
  `w_finish_date_repair_part` datetime DEFAULT NULL,
  `w_detail_repair` text,
  `w_no_maint` varchar(20) DEFAULT NULL,
  `sup_serv` varchar(10) DEFAULT NULL,
  `w_start_date_maint_labor` datetime DEFAULT NULL,
  `w_period_maint_labor` int(11) DEFAULT NULL,
  `w_finish_date_maint_labor` datetime DEFAULT NULL,
  `w_start_date_maint_part` datetime DEFAULT NULL,
  `w_period_maint_part` int(11) DEFAULT NULL,
  `w_finish_date_maint_part` datetime DEFAULT NULL,
  `w_detail_maint` text,
  `w_no_caliber` varchar(20) DEFAULT NULL,
  `sup_caliber` varchar(10) DEFAULT NULL,
  `w_start_date_caliber_labor` datetime DEFAULT NULL,
  `w_period_caliber_labor` int(11) DEFAULT NULL,
  `w_finish_date_caliber_labor` datetime DEFAULT NULL,
  `w_start_date_calibert_part` datetime DEFAULT NULL,
  `w_period_caliber_part` int(11) DEFAULT NULL,
  `w_finish_date_caliber_part` datetime DEFAULT NULL,
  `w_detail_caliber` text,
  `pict_path` varchar(50) DEFAULT NULL,
  `a_status` char(2) DEFAULT NULL,
  `a_substatus` char(2) DEFAULT NULL,
  `depre_year` int(11) DEFAULT NULL,
  `depre_start_date` datetime DEFAULT NULL,
  `month_depr_cal` int(11) DEFAULT NULL,
  `year_depr_cal` int(11) DEFAULT NULL,
  `salvage` double DEFAULT NULL,
  `curmonth_depr` double DEFAULT NULL,
  `acc_depr_bal` double DEFAULT NULL,
  `acc_depr_ytd_bal` double DEFAULT NULL,
  `cur_depr_bal` double DEFAULT NULL,
  `book_value` double DEFAULT NULL,
  `last_repair_date` datetime DEFAULT NULL,
  `last_repair_cost` float DEFAULT NULL,
  `last_maint_date` datetime DEFAULT NULL,
  `acc_repair_cost` float DEFAULT NULL,
  `last_maint_cost` double DEFAULT NULL,
  `acc_maint_cost` double DEFAULT NULL,
  `freq_period_main` int(11) DEFAULT NULL,
  `freq_period_caliber` int(11) DEFAULT NULL,
  `next_caliber_date` datetime DEFAULT NULL,
  `tot_hour_inmonth` double DEFAULT '0',
  `pmok` int(11) DEFAULT '0',
  `caliberok` int(11) DEFAULT '0',
  `expire_app_date` datetime DEFAULT NULL,
  `expire_doc_date` datetime DEFAULT NULL,
  `expire_doc_no` varchar(200) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `countryfac` varchar(50) DEFAULT NULL,
  `daily_rate` double DEFAULT NULL,
  `tmoney` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  `enterby` varchar(30) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `editby` varchar(30) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `dept_control` char(3) DEFAULT NULL,
  `prn_label` int(11) DEFAULT '0',
  PRIMARY KEY (`code`),
  KEY `bcode` (`bcode`),
  KEY `dept` (`dept`),
  KEY `dept_tech` (`dept_tech`),
  KEY `floorno` (`floorno`),
  KEY `IX_asset_master` (`sap_code`),
  KEY `IX_asset_master_1` (`branchid`),
  KEY `IX_asset_master_10` (`order_id`),
  KEY `IX_asset_master_11` (`aname`),
  KEY `IX_asset_master_2` (`dept`),
  KEY `IX_asset_master_3` (`groupid`),
  KEY `IX_asset_master_4` (`catagory`),
  KEY `IX_asset_master_5` (`groupid`,`catagory`),
  KEY `IX_asset_master_6` (`serial_no`),
  KEY `IX_asset_master_7` (`process_id`),
  KEY `IX_asset_master_8` (`dept_control`),
  KEY `IX_asset_master_9` (`prn_label`),
  KEY `roomno` (`roomno`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asset_master_bms
-- ----------------------------
INSERT INTO `asset_master_bms` VALUES ('1', '7440-007-0001-001', null, null, 'B', '2545', '2555-02-02 00:00:00', null, 'Switch 16 port 10/100', null, null, null, null, null, null, null, null, 'E', 'E000', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', 'ฝ่ายบริหารทั่วไป', null, '03', '003', 'SureCom', '16 port 10/100', null, null, '9100.00', '2545-06-22 00:00:00', null, '50/2470', '2545-06-22 00:00:00', null, 'วิธีการได้มา -ตกลงราคา\r\nงบประมาณที่ใช้ -เงินบำรุง\r\nรับประกันตลอดอายุการใช้งาน', '2470', null, null, null, null, null, null, null, null, null, null, null, null, '2545-06-22 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '10', '2545-06-22 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('2', '7440-007-0003-001', null, null, 'C', '2547', '2547-08-30 00:00:00', null, 'Router Modem', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '03', '003', 'TP-LINK', '1 port Lan/1 port USB', 'Xavi', null, '2250.00', '2547-08-30 00:00:00', null, null, '2547-08-30 00:00:00', null, 'วิธีได้มา -ตกลงราคา\r\nงบประมาณที่ใช้ -เงินบำรุง', 'TT&T', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('3', '7440-007-0001-003', null, null, 'B', '2551', '2555-02-03 00:00:00', null, 'Switch Compex 16 port', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '03', '003', null, '16 port Fash Ethernet', 'Dektop Switch PS2216 10/100 Mbps', '99195833', null, null, null, null, null, null, 'วิธีการได้มา -ตกลงราคา\r\nงบประมาณที่ใช้ -เงินบำรุง', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '9', null, '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('4', '7440-007-0001-005', null, null, 'B', '2553', '2555-02-03 00:00:00', null, 'Switch 48 port 10/100', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '03', '003', 'TP-LINK', '48 port 10/100', null, null, null, '2553-04-26 00:00:00', null, null, '2553-04-26 00:00:00', null, 'วิธีการได้มา -ตกลงราคา\r\nงบประมาณที่ใช้ -เงินบำรุง', '2553', null, null, null, null, null, null, null, null, null, null, null, null, '2553-04-26 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('5', '7440-003-0001-001', null, null, 'C', '2537', '2555-02-03 00:00:00', null, 'โมเด็มชนิดติดตั้งภายนอก Modem 3 Com', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '03', '005', null, 'ความเร็ว 56K/Paralle 1 port/RJ25 1 port', null, '455630-01', '4799.91', '2537-05-30 00:00:00', null, null, '2537-05-30 00:00:00', null, 'วิธีการได้มา -ตกลงราคา', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('6', '7440-004-0001-001', null, null, 'C', '2547', '2555-02-03 00:00:00', null, 'Projecter', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '05', '002', 'Panasonic', 'Power Supply: 100v-240v~50Hz/60Hz', 'PT-LC80E SA35071', 'SA3560071', '89000.00', '2547-10-21 00:00:00', null, 'L8-K3-M575', '2547-10-21 00:00:00', null, '-หลอดภาพแตก\r\n-คอแสดงผลเสีย\r\n-ราคาซ่อม 70,000.-บาท ไม่คุ้มซ่อม', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('7', '7440-004-0001-002', null, null, 'C', '2551', '2555-02-03 00:00:00', null, 'Projecter', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '05', '002', 'NEC', 'LAMP: Normal Mode:220 w 3,500 Hr.', 'NP100 DLP', '8742124CD', '19900.00', '2551-11-19 00:00:00', null, '0125/2551', '2551-11-19 00:00:00', null, '-ตกลงราคา\r\n-เงินบำรุง\r\n-ประกัน + 1 ปี', '5', null, null, null, null, null, null, null, null, null, null, null, null, '2551-11-19 00:00:00', '24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('8', '7440-004-0001-003', null, null, 'C', '2551', '2555-02-03 00:00:00', null, 'Projecter', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '05', '002', 'NEC', 'LAMP: Normal Mode:220 w 3,500 Hr.', 'NP100 DLP', '8742123CD', '19900.00', '2551-11-19 00:00:00', null, '01256/51', '2551-11-19 00:00:00', null, '-ตกลงราคา\r\n-เงินบำรุง\r\n-ประกัน + 1 ปี', '5', null, null, null, null, null, null, null, null, null, null, null, null, '2551-11-19 00:00:00', '24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('9', '7440-001-0004-001', null, null, 'A', '2553', '2555-02-03 00:00:00', null, 'คอมพิวเตอร์ BATA (เครื่องแม่ข่ายระดับพื้นฐาน)', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '03', '001', 'BATA', 'CPU Intel Pentium 4 2.0 GHz. /Drive 1.44 MB ', null, null, '42000.00', '2553-07-12 00:00:00', null, 'IV 07-0497', '2553-07-12 00:00:00', null, '-จอ อยู่ห้องตรวจ1\r\n-ตกลงราคา\r\n', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '2', '2553-07-12 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('10', '7440-001-0001-001', null, null, 'C', '2536', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, null, null, null, '58500.00', '2536-03-28 00:00:00', null, null, '2536-03-28 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('11', '7440-001-0001-002', null, null, 'C', '2539', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ AEC', null, null, null, null, null, null, null, null, 'A', 'A001', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '001', null, null, null, null, '34980.00', '2539-03-16 00:00:00', null, null, '2539-03-16 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('12', '7440-001-0001-003', null, null, 'C', '2539', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ AEC', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, null, null, null, '24900.00', '2539-03-16 00:00:00', null, null, '2539-02-16 00:00:00', null, 'cpu เสียซ่อมไม่ได้', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('13', '7440-001-0001-004', null, null, 'C', '2539', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ AEC', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, null, null, null, '24600.00', '2539-04-25 00:00:00', null, null, '2539-04-25 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('14', '7440-002-0001-001', null, null, 'C', '2539', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'I', 'I001', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '001', 'Canon', null, 'BJC 2100 SP', null, '5200.00', '2539-04-25 00:00:00', null, '1/95', '2539-04-25 00:00:00', null, null, '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('15', '7440-001-0001-005', null, null, 'C', '2541', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ คอลัสคอม', null, null, null, null, null, null, null, null, 'F', 'F006', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, null, null, null, '20125.00', '2541-10-16 00:00:00', null, null, '2541-10-16 00:00:00', null, '***หาไม่เจอ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('16', '7440-001-0001-006', null, null, 'C', '2541', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'F', 'F003', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, null, null, null, '32000.00', '2541-12-01 00:00:00', null, null, '2541-12-01 00:00:00', null, 'cpu+จอ เสียซ่อมไม่ได้', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('17', '7440-001-0001-007', null, null, 'C', '2541', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, null, null, null, '25000.00', '2541-12-01 00:00:00', null, null, '2541-12-01 00:00:00', null, 'cpu เสียซ่อมไม่ได้', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('18', '7440-002-0001-002', null, null, 'C', '2541', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'F', 'F003', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '005', 'Epson', null, 'LQ 300', null, '8775.00', '2541-01-01 00:00:00', null, null, '2541-01-01 00:00:00', null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('19', '7440-002-0001-003', null, null, 'C', '2541', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '005', 'Epson', null, 'LQ 300', null, '8500.00', '2541-01-01 00:00:00', null, null, '2541-01-01 00:00:00', null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('20', '7440-001-0001-008', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'D', 'D001', null, null, null, null, 'B04', 'ชั้น 1 (ห้องฟัน)', null, null, '03', '001', null, 'Hard Disk 426, Ram 32 Mb.', 'celeron 366', null, '21500.00', '2542-06-11 00:00:00', null, '01/0038', '2542-06-11 00:00:00', null, 'cpu+จอ เสียซ่อมไม่ได้', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('21', '7440-001-0001-009', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'F', 'F002', null, null, null, null, 'B05', 'ชั้น 1 (ผู้ป่วย ญ)', null, null, '03', '001', null, 'Hard Disk 426, Ram 32 Mb.', null, null, '21500.00', '2542-06-11 00:00:00', null, '01/0038', '2542-06-11 00:00:00', null, 'cpu+จอ เสียซ่อมไม่ได้', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('22', '7440-001-0001-010', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, 'Hard Disk 4.3 Gb. Ram 32 Mb.', null, null, '22898.00', '2542-08-04 00:00:00', null, '05/0246', null, null, 'cpu+จอ เสียซ่อมไม่ได้', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('23', '7440-002-0001-004', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'D', 'D001', null, null, null, null, 'B04', 'ชั้น 1 (ห้องฟัน)', null, null, '03', '005', 'Epson', null, 'LQ 300', null, '8775.00', '2542-06-11 00:00:00', null, '01/0038', '2542-06-11 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('24', '7440-002-0001-005', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'F', 'F001', null, null, null, null, 'B05', 'ชั้น 2 (ผู้ป่วย ช)', null, null, '03', '005', 'Epson', null, 'LQ 300', null, '8775.00', '2542-06-11 00:00:00', null, '01/0038', '2542-06-11 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('25', '7440-002-0001-006', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'F', 'F002', null, null, null, null, 'B05', 'ชั้น 1 (ผู้ป่วย ญ)', null, null, '03', '005', 'Epson', null, 'LQ 300', null, '8800.00', '2542-09-10 00:00:00', null, '08/379', '2542-09-10 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('26', '7440-002-0001-007', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', null, '03', '005', 'Epson', null, 'LQ 670', null, '16500.00', '2542-01-01 00:00:00', null, null, null, null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('27', '7440-002-0001-008', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'C', 'C001', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '005', 'Epson', null, 'LQ 2070', null, '8775.00', '2542-10-23 00:00:00', null, '11/05/04', '2542-10-23 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('28', '7440-002-0001-009', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '005', 'Epson', null, 'LQ 300', null, '8775.00', '2542-01-01 00:00:00', null, null, null, null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('29', '7440-002-0001-010', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '005', 'Epson', null, 'LQ 300', null, '8775.00', '2542-01-01 00:00:00', null, null, null, null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('30', '7440-001-0001-017', null, null, 'C', '2543', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ประมวลผลทั่วไป', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, 'Hard Disk 4.3 Gb. Ram 32 Mb.', 'celeron 466', null, '20580.00', '2543-01-01 00:00:00', null, '02/0054', null, null, 'cpu+จอ เสียซ่อมไม่ได้', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('31', '7440-001-0001-018', null, null, 'C', '2543', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ Socos', null, null, null, null, null, null, null, null, 'A', 'A001', null, null, null, null, 'B06', 'ชั้น 1', 'งานเอดส์', null, '03', '001', null, null, null, null, null, '2543-10-01 00:00:00', null, null, '2543-10-01 00:00:00', null, 'cpu เสียซ่อมไม่ได้', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('32', '7440-001-0001-019', null, null, 'C', '2543', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ Visage SD', null, null, null, null, null, null, null, null, 'F', 'F006', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องตรวจ 1', null, '03', '001', null, null, null, null, null, '2543-10-01 00:00:00', null, null, '2543-10-01 00:00:00', null, 'cpu เสียซ่อมไม่ได้\r\nจอ อยู่ WARD ชาย', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('33', '7440-001-0001-020', null, null, 'C', '2543', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ Visage SD', null, null, null, null, null, null, null, null, 'F', 'F006', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องตรวจ 2', null, '03', '001', null, null, null, null, null, '2543-10-01 00:00:00', null, null, '2543-10-01 00:00:00', null, 'จอ เสียซ่อมไม่ได้\r\n', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('34', '7440-001-0001-021', null, null, 'C', '2543', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ Micro Scan', null, null, null, null, null, null, null, null, 'H', 'H001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องตรวจ 3', null, '03', '001', null, null, null, null, null, '2543-10-01 00:00:00', null, null, '2543-10-01 00:00:00', null, 'cpu เสียซ่อมไม่ได้', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('35', '7440-001-0001-022', null, null, 'C', '2543', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ Visage SD', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, null, null, null, null, '2543-10-01 00:00:00', null, null, null, null, 'cpu+จอ เสีย ซ่อมไม่ได้', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('36', '7440-001-0001-023', null, null, 'C', '2543', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ Visage SD', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '001', null, null, null, null, null, '2543-10-01 00:00:00', null, null, null, null, 'cpu เสีย ซ่อมไม่ได้', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('37', '7440-001-0001-011', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'E', 'E000', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', null, null, '03', '001', null, 'Hard Disk 4.3 Gb. Ram 32 Mb.', null, null, '22898.00', '2542-08-04 00:00:00', null, '05/0246', '2542-08-04 00:00:00', null, 'cpu+จอ เสียซ่อมไม่ได้', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('38', '7440-001-0001-012', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, 'Hard Disk 4.3 Gb. Ram 32 Mb.', 'Pentium celeron 33', null, '23200.00', '2542-01-01 00:00:00', null, null, null, null, 'cpu เสียซ่อมไม่ได้', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('39', '7440-001-0001-013', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, 'Hard Disk 4.3 Gb.', 'Celeron ', null, '26774.00', '2542-10-23 00:00:00', null, null, null, null, 'cpu เสียซ่อมไม่ได้', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('40', '7440-001-0001-014', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'F', 'F005', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, 'Hard Disk 4.3 Gb. Ram 32 Mb.', 'Celeron 400', null, '25000.00', '2542-10-23 00:00:00', null, null, null, null, 'cpu เสีย', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('41', '7440-001-0001-015', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, null, null, null, '50000.00', '2542-01-01 00:00:00', null, null, null, null, 'cpu ย้ายไป OR\r\n\r\nจอเสีย', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('42', '7440-001-0001-016', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ อัลฟ่า', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', null, '03', '001', null, null, null, null, '25000.00', '2542-01-01 00:00:00', null, null, null, null, 'cpu เสีย', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('43', '7440-001-0001-024', null, null, 'C', '2545', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ Bata', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', 'ฝ่ายบริหารทั่วไป', null, '03', '001', null, 'Hard Disk 40 Gb. Ram 128 Mb.', 'Intel Pentium 4 2GHz', null, '42000.00', '2545-06-24 00:00:00', null, 'IV06-0647', null, null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('44', '7440-001-0001-025', null, null, 'C', '2545', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ ', null, null, null, null, null, null, null, null, 'L', 'L001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'Lab', null, '03', '001', null, 'cpu, Monitor Accuvision', null, null, null, '2545-12-01 00:00:00', null, null, null, null, 'ใช้เงินห้อง lab ซื้อเอง', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('45', '7440-002-0001-011', null, null, 'C', '2545', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'E', 'E000', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', 'ฝ่ายบริหารทั่วไป', null, '03', '005', 'Canon', null, null, null, null, '2545-06-24 00:00:00', null, 'IV06-0647', '2545-06-24 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('46', '7440-002-0001-012', null, null, 'C', '2545', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'C', 'C001', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '03', '005', 'Canon', null, null, null, null, '2545-07-12 00:00:00', null, 'IV 07-0497', '2545-07-12 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('47', '7440-007-0001-002', null, null, 'C', '2545', '2555-02-16 00:00:00', null, 'Switch HUB 16 port', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องบัตร', null, '03', '003', 'SureCom', '16 port', null, null, '9100.00', '2545-06-26 00:00:00', null, '50/2470', '2545-06-26 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, '2545-06-26 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('48', '7440-001-0007-001', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Acer Travel Mate 230', null, null, null, null, null, null, null, null, 'E', 'E000', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '002', 'ACER', 'cpu celeron 2.4GHz', 'Travel Mate 230', null, '42693.00', '2546-02-18 00:00:00', null, null, '2546-02-18 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('49', '7440-001-0007-002', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Acer Travel Mate 230', null, null, null, null, null, null, null, null, 'A', 'A001', null, null, null, null, 'B06', 'ชั้น 1', null, null, '03', '002', 'ACER', 'cpu celeron 2.4GHz', 'Travel Mate 230', null, null, '2546-09-29 00:00:00', null, null, '2546-09-29 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('50', '7440-002-0001-013', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '005', 'Epson', null, 'LQ 300', null, '9600.00', '2546-10-03 00:00:00', null, '65/3210', '2546-10-03 00:00:00', null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('51', '7440-002-0001-014', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'stock', null, '03', '005', 'Epson', null, 'LQ 300', null, '9600.00', '2546-10-03 00:00:00', null, '65/3210', '2546-10-03 00:00:00', null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('52', '7440-002-0002-001', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'C', 'C001', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '005', 'HP', null, 'HP 1020', null, '4600.00', '2546-10-01 00:00:00', null, null, '2546-10-01 00:00:00', null, null, '9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('53', '7440-002-0002-002', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '005', 'HP', null, 'HP 1020', null, '4600.00', '2546-10-01 00:00:00', null, null, '2546-10-01 00:00:00', null, null, '9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('54', '7440-002-0002-003', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'A', 'A001', null, null, null, null, 'B06', 'ชั้น 1', 'ยุทธศาสตร์', null, '03', '005', 'HP', null, 'HP Laser 1150', null, null, '2546-09-29 00:00:00', null, null, '2546-09-29 00:00:00', null, 'งบประมาณงานเอสด์ สสจ.ชม.', '10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('55', '7440-002-0003-001', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Printer Ink Jet', null, null, null, null, null, null, null, null, 'F', 'F010', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '005', 'Lexmark', null, 'LMZ 645', null, '1150.00', '2546-10-01 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('56', '7440-002-0003-003', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Printer Ink Jet', null, null, null, null, null, null, null, null, 'F', 'F006', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'OPD', null, '03', '005', 'Canon', null, 'BJS S100', null, '2570.00', '2546-04-09 00:00:00', null, 'IV04-0283', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('57', '7440-002-0002-004', null, null, 'C', '2548', '2555-02-16 00:00:00', null, 'Printer Laser Jet', null, null, null, null, null, null, null, null, 'E', 'E000', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', 'ฝ่ายบริหารทั่วไป', null, '03', '005', 'HP', null, 'HP Laser Jet 1020', null, '7090.00', '2548-09-08 00:00:00', null, 'IV09-0286', '2548-09-08 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('58', '7440-001-0007-003', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'Acer Aspire 5593WXMi', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '03', '002', 'ACER', 'cpu Intel core2Duo 1.66GHz', 'Aspire 5593WXMi', null, null, '2549-11-01 00:00:00', null, null, '2549-11-01 00:00:00', null, 'งบยาเสพติด', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('59', '7440-002-0002-005', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'Printer Laser Jet', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '005', 'HP', null, 'HP Laser Jet 1020', null, '6290.00', '2549-02-01 00:00:00', null, 'IS02-0004', '2549-02-01 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('60', '7440-002-0002-006', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'Printer Laser Jet', null, null, null, null, null, null, null, null, 'F', 'F011', null, null, null, null, 'B05', 'ชั้น 2 (ผู้ป่วย ช)', 'ฝ่ายการพยาบาล', null, '03', '005', 'HP', null, 'HP Laser Jet 1020', null, '5890.00', '2549-10-27 00:00:00', null, 'IS10-0062', '2549-10-27 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('61', '7440-002-0003-002', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'Printer Ink Jet', null, null, null, null, null, null, null, null, 'D', 'D001', null, null, null, null, 'B04', 'ชั้น 1 (ห้องฟัน)', null, null, '03', '005', 'Canon', null, 'IP 1200 Canon Pixma', null, null, '2549-07-27 00:00:00', null, '5694/114', '2549-07-27 00:00:00', null, 'โครงการยิ้มสดใสฯ', '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('62', '7440-006-0002-001', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'Scanner', null, null, null, null, null, null, null, null, 'C', 'C003', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '006', 'Canon', null, 'Canon Lide 25', null, '2098.27', '2549-06-16 00:00:00', null, 'IS06-0036', '2549-06-16 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('63', '7440-001-0007-004', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'Note book Toshiba', null, null, null, null, null, null, null, null, 'H', 'H001', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '002', 'Toshiba', null, 'Satellite M300-PA30T', null, '29990.00', '2551-10-31 00:00:00', null, 'cw10-0024', '2551-10-31 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('64', '7440-002-0002-008', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'Printer Laser Jet', null, null, null, null, null, null, null, null, 'E', 'E003', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', 'ย้ายไป ward', null, '03', '005', 'HP', null, 'HP Laser Jet 1018', null, '4250.00', '2551-12-19 00:00:00', null, '005/0201', '2551-12-19 00:00:00', null, null, 'ๅ/', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('65', '7440-002-0002-009', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'Printer Laser Jet', null, null, null, null, null, null, null, null, 'F', 'F001', null, null, null, null, 'B05', 'ชั้น 2 (ผู้ป่วย ช)', 'ward ชาย', null, '03', '005', 'HP', null, 'HP Laser Jet 1018', null, '4250.00', '2551-12-19 00:00:00', null, '005/0202', '2551-12-19 00:00:00', null, null, 'ๅ/', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('66', '7440-002-0003-004', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'Printer Ink Jet', null, null, null, null, null, null, null, null, 'C', 'C003', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '03', '005', 'Epson', null, 'Stylus TX400 All-in-one', null, '4990.00', '2551-12-30 00:00:00', null, '13/0612', '2551-12-30 00:00:00', null, '+ชุด Tank และหมึก Ink Jet ราคา 1,200.-บาท', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('67', '7440-002-0001-015', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '005', 'Epson', null, 'LQ 300', null, '7450.00', '2551-03-14 00:00:00', null, null, '2551-03-14 00:00:00', null, null, '13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('68', '7440-002-0001-016', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'Printer', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', null, '03', '005', 'Epson', null, 'LQ 300', null, '10850.00', '2551-05-12 00:00:00', null, null, '2551-05-12 00:00:00', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('69', '7440-002-0002-007', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'Printer Laser Jet', null, null, null, null, null, null, null, null, 'F', 'F003', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ER', null, '03', '005', 'HP', null, 'HP Laser Jet 1020', null, '4600.00', '2551-03-19 00:00:00', null, null, '2551-03-19 00:00:00', null, null, '9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('70', '7440-005-0001-001', null, null, 'C', '2537', '2555-02-16 00:00:00', null, 'UPS Green', null, null, null, null, null, null, null, null, 'F', 'F006', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องตรวจ 1', null, '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('71', '7440-005-0001-002', null, null, 'C', '2537', '2555-02-16 00:00:00', null, 'UPS Green', null, null, null, null, null, null, null, null, 'F', 'F006', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องตรวจ 2', null, '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, 'Socomec?', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('72', '7440-005-0001-003', null, null, 'C', '2537', '2555-02-16 00:00:00', null, 'UPS Green', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องบัตร', null, '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, 'สำรอง Switch Hup', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('73', '7440-005-0001-004', null, null, 'C', '2537', '2555-02-16 00:00:00', null, 'UPS Power', null, null, null, null, null, null, null, null, 'L', 'L001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'Lab', null, '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('74', '7440-005-0001-005', null, null, 'C', '2537', '2555-02-16 00:00:00', null, 'UPS Loonic', null, null, null, null, null, null, null, null, 'L', 'L001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'Lab', null, '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('75', '7440-005-0001-006', null, null, 'C', '2537', '2555-02-16 00:00:00', null, 'UPS HLC', null, null, null, null, null, null, null, null, 'L', 'L001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'Lab', null, '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('76', '7440-005-0001-007', null, null, 'C', '2537', '2555-02-16 00:00:00', null, 'UPS Syndome', null, null, null, null, null, null, null, null, 'L', 'L001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'Lab', null, '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('77', '7440-005-0001-008', null, null, 'C', '2537', '2555-02-16 00:00:00', null, 'UPS Green', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องบัตร', null, '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('78', '7440-005-0001-009', null, null, 'C', '2537', '2555-02-16 00:00:00', null, 'UPS 40X max', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องบัตร', null, '03', '007', null, null, null, null, null, '2537-10-01 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('79', '7440-005-0001-010', null, null, 'C', '2539', '2555-02-16 00:00:00', null, 'UPS ', null, null, null, null, null, null, null, null, 'E', 'E000', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', null, null, '03', '007', null, null, null, null, '3300.00', '2539-04-25 00:00:00', null, '1/95', '2539-04-25 00:00:00', null, null, '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('80', '7440-005-0001-011', null, null, 'C', '2541', '2555-02-16 00:00:00', null, 'UPS ', null, null, null, null, null, null, null, null, 'F', 'F003', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ER', null, '03', '007', null, null, null, null, '3300.00', '2541-10-01 00:00:00', null, null, null, null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('81', '7440-005-0001-012', null, null, 'C', '2541', '2555-02-16 00:00:00', null, 'UPS ', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '007', null, null, null, null, '5500.00', '2541-10-01 00:00:00', null, null, null, null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('82', '7440-005-0001-013', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'UPS 500 VA', null, null, null, null, null, null, null, null, 'F', 'F001', null, null, null, null, 'B05', 'ชั้น 2 (ผู้ป่วย ช)', null, null, '03', '007', null, null, null, null, '3300.00', '2542-06-11 00:00:00', null, '01/0038', '2542-06-11 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('83', '7440-005-0001-014', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'UPS', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '007', null, null, null, null, '3300.00', '2542-08-04 00:00:00', null, '05/0246', '2542-08-04 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('84', '7440-005-0001-015', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'UPS 500 VA', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', null, '03', '007', null, null, null, null, '3500.00', '2542-10-01 00:00:00', null, null, null, null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('85', '7440-005-0001-016', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'UPS', null, null, null, null, null, null, null, null, 'C', 'C001', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '007', null, null, null, null, '3300.00', '2542-10-23 00:00:00', null, '11/0504', '2542-10-23 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('86', '7440-005-0001-017', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'UPS', null, null, null, null, null, null, null, null, 'F', 'F005', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '007', null, null, null, null, '3400.00', '2542-10-23 00:00:00', null, '11/0504', '2542-10-23 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('87', '7440-005-0001-018', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'UPS', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '007', null, null, null, null, '4500.00', '2542-10-01 00:00:00', null, null, null, null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('88', '7440-005-0001-019', null, null, 'C', '2542', '2555-02-16 00:00:00', null, 'UPS', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', null, '03', '007', null, null, null, null, '3300.00', '2542-10-01 00:00:00', null, null, null, null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('89', '7440-005-0001-020', null, null, 'C', '2545', '2555-02-16 00:00:00', null, 'UPS APC 500 VA', null, null, null, null, null, null, null, null, 'C', 'C003', null, null, null, null, 'B02', 'ชั้น 1', 'UC 1', null, '03', '007', null, null, null, null, '1400.00', '2545-07-12 00:00:00', null, 'IV07-0499', '2545-07-12 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('90', '7440-005-0001-021', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'UPS 600 VA', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', null, '03', '007', null, null, null, null, '2600.00', '2546-03-27 00:00:00', null, '44/2177', '2546-03-27 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('91', '7440-005-0001-022', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'UPS 600 VA Power Gard', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '007', null, null, null, null, '2600.00', '2546-04-25 00:00:00', null, '59/2943', '2546-04-25 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('92', '7440-005-0001-023', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'UPS SLC MINI 600 VA', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '007', null, null, null, null, '1580.00', '2546-08-31 00:00:00', null, '0631487389', '2546-08-31 00:00:00', null, null, '14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('93', '7440-005-0001-024', null, null, 'C', '2547', '2555-02-16 00:00:00', null, 'UPS 600 VA Power Gard', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', null, '03', '007', null, null, null, null, '2500.00', '2547-05-20 00:00:00', null, '070/3456', '2547-05-20 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('94', '7440-005-0001-025', null, null, 'C', '2547', '2555-02-16 00:00:00', null, 'UPS Powergard PE', null, null, null, null, null, null, null, null, 'E', 'E000', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', null, null, '03', '007', null, null, null, null, '1900.00', '2547-10-21 00:00:00', null, 'L8-J9-17580', '2547-10-21 00:00:00', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('95', '7440-005-0001-026', null, null, 'C', '2547', '2555-02-16 00:00:00', null, 'UPS NUBOS S100 P3', null, null, null, null, null, null, null, null, 'E', 'E000', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', 'ตู้สาขาโทรศัพท์', null, '03', '007', null, null, null, null, '1890.00', '2547-12-07 00:00:00', null, '6035', '2547-12-07 00:00:00', null, null, '15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('96', '7440-005-0001-027', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'UPS APC BACK 500 AS', null, null, null, null, null, null, null, null, 'C', 'C003', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '007', null, null, null, null, null, '2549-02-01 00:00:00', null, 'IS02-0003', '2549-02-01 00:00:00', null, 'ซ้ำ', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('97', '7440-005-0001-028', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'UPS APC BACK 500 EI', null, null, null, null, null, null, null, null, 'F', 'F001', null, null, null, null, 'B05', 'ชั้น 2 (ผู้ป่วย ช)', null, null, '03', '007', null, null, null, null, '2890.00', '2549-06-01 00:00:00', null, 'IS06-0001', null, null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('98', '7440-005-0001-029', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'UPS APC BACK 500 EI', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', null, null, '03', '007', null, null, null, null, '2890.00', '2549-06-16 00:00:00', null, 'IS06-0035', null, null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('99', '7440-005-0001-030', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'UPS SOS 800 Va', null, null, null, null, null, null, null, null, 'D', 'D001', null, null, null, null, 'B04', 'ชั้น 1 (ห้องฟัน)', null, null, '03', '007', null, null, null, null, null, '2549-07-27 00:00:00', null, '5694/114', null, null, null, '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('100', '7440-005-0001-031', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'UPS APC BACK 500 R-AS', null, null, null, null, null, null, null, null, 'F', 'F011', null, null, null, null, 'B05', 'ชั้น 2 (ผู้ป่วย ช)', null, null, '03', '007', null, null, 'Battery Back up 300 w.', null, null, '2549-10-27 00:00:00', null, 'IS10-0061', null, null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('101', '7440-005-0001-032', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'UPS APC BACK 500 R-AS', null, null, null, null, null, null, null, null, 'E', 'E003', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', null, null, '03', '007', null, null, 'Battery Back up 300 w.', null, null, '2549-11-03 00:00:00', null, null, null, null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('102', '7440-005-0001-033', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'UPS APC BR 1000 I', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '007', null, null, null, null, '8560.00', '2549-06-16 00:00:00', null, null, null, null, 'Projector', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('103', '7440-005-0001-034', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'UPS Syndome S5', null, null, null, null, null, null, null, null, 'F', 'F003', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ER', null, '03', '007', null, null, null, null, '1700.00', '2551-03-19 00:00:00', null, null, null, null, null, '15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('104', '7440-005-0001-035', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'UPS 4Tech 600 VA', null, null, null, null, null, null, null, null, 'K', 'K001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '007', null, null, null, null, '1600.00', '2551-05-12 00:00:00', null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('105', '7440-005-0001-036', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'UPS Syndome S9-80 VA', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '007', null, null, null, null, '1999.00', '2551-05-18 00:00:00', null, null, null, null, null, '15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('106', '7440-005-0001-037', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'UPS Apple 850 VA', null, null, null, null, null, null, null, null, 'F', 'F006', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'OPD', null, '03', '007', null, null, null, null, '1850.00', '2551-06-05 00:00:00', null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('107', '7440-005-0001-038', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'UPS FIT', null, null, null, null, null, null, null, null, 'A', 'A001', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '007', null, '850 VA, สำรองไฟได้ไม่น้อยกว่า 15 นาที', null, null, '1600.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('108', '7440-005-0001-039', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'UPS FIT', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '007', null, '850 VA, สำรองไฟได้ไม่น้อยกว่า 15 นาที', null, null, '1600.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('109', '7440-005-0001-040', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'UPS FIT', null, null, null, null, null, null, null, null, 'L', 'L001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'Lab', null, '03', '007', null, '850 VA, สำรองไฟได้ไม่น้อยกว่า 15 นาที', null, null, '1600.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('110', '7440-005-0003-001', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'UPS Syndome SZ-1001 PRO', null, null, null, null, null, null, null, null, 'C', 'C002', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '007', null, '1000VA, สำรองไฟได้ไม่น้อยกว่า 30 นาที', null, null, '7704.00', '2549-08-31 00:00:00', null, 'IV09-0172', '2549-08-31 00:00:00', null, 'สำหรับสำรองไฟเครื่องคอมพิวเตอร์แม่ข่าย', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `asset_master_bms` VALUES ('111', '7440-001-0001-026', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Monitor BenQ 15\"', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', 'BenQ', null, null, null, '3738.00', '2546-04-09 00:00:00', null, 'IV-04-0283', '2546-04-09 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('112', '7440-001-0001-027', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Monitor BenQ 15\"', null, null, null, null, null, null, null, null, 'F', 'F006', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องตรวจ 1', null, '03', '001', 'BenQ', null, null, null, '3738.00', '2546-04-09 00:00:00', null, 'IV04-0283', '2546-04-09 00:00:00', null, 'ย้ายจากงานยุทธฯ', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('113', '7440-001-0001-028', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Monitor 15\" Fire Ster', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, null, null, null, '3600.00', '2546-04-25 00:00:00', null, '59/2943', '2546-04-25 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('114', '7440-001-0001-029', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Monitor Socos 15\"', null, null, null, null, null, null, null, null, 'F', 'F005', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'LR', null, '03', '001', null, null, null, null, '6900.00', '2546-08-01 00:00:00', null, null, '2546-08-01 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('115', '7440-001-0001-030', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Monitor Fire Star 15\"', null, null, null, null, null, null, null, null, 'C', 'C003', null, null, null, null, 'B02', 'ชั้น 1', 'UC', null, '03', '001', null, null, null, null, '6900.00', '2546-08-01 00:00:00', null, null, '2546-08-01 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('116', '7440-001-0001-031', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Computer Compeq S45 60AL', null, null, null, null, null, null, null, null, 'C', 'C003', null, null, null, null, 'B02', 'ชั้น 1', 'UC 1', null, '03', '001', 'Compaq', null, 'S45 60AL', null, '19900.00', '2546-10-10 00:00:00', null, 'SI10-0091', '2546-10-10 00:00:00', null, '+จอ', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('117', '7440-001-0001-032', null, null, 'C', '2546', '2555-02-16 00:00:00', null, 'Computer Compeq S45 60AL', null, null, null, null, null, null, null, null, 'C', 'C001', null, null, null, null, 'B02', 'ชั้น 1', 'ฝ่ายยุทธศาสตร์', null, '03', '001', 'Compaq', null, 'S45 60AL', null, '19900.00', '2546-10-10 00:00:00', null, 'SI10-0091', '2546-10-10 00:00:00', null, '+จอ', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('118', '7440-001-0001-033', null, null, 'C', '2548', '2555-02-16 00:00:00', null, 'Monitor', null, null, null, null, null, null, null, null, 'E', 'E000', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', null, null, '03', '001', null, 'ขนาดแสดงผล 15\"', null, null, '3550.00', '2548-07-13 00:00:00', null, '73/3650', '2548-07-13 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('119', '7440-001-0001-034', null, null, 'C', '2548', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ ALPHA', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, 'cpu celeron 2.4GHz', null, null, '1850.00', '2548-10-07 00:00:00', null, '3665/74', '2548-10-07 00:00:00', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('120', '7440-001-0001-035', null, null, 'C', '2548', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ ALPHA', null, null, null, null, null, null, null, null, 'F', 'F006', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'หน้าห้องตรวจ (โต๊ะ screen)', null, '03', '001', null, 'cpu celeron 2.4GHz', null, null, '1850.00', '2548-10-07 00:00:00', null, '3665/74', '2548-10-07 00:00:00', null, 'cpu ตกทำให้ตัวเครื่องพัง แตก หัก\r\nเอาตัวเครื่องเก่าห้องฟ้าใสมาใช้', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('121', '7440-001-0001-036', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ CHICHANG', null, null, null, null, null, null, null, null, 'C', 'C003', null, null, null, null, 'B02', 'ชั้น 1', 'UC 2', null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(630)', null, null, '22299.97', '2549-02-01 00:00:00', null, 'IS02-0003', '2549-02-01 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('122', '7440-001-0001-037', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ CHICHANG', null, null, null, null, null, null, null, null, 'F', 'F002', null, null, null, null, 'B05', 'ชั้น 1 (ผู้ป่วย ญ)', null, null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(630)', null, null, '16635.51', '2549-06-01 00:00:00', null, 'IS06-0001', '2549-06-01 00:00:00', null, 'เฉพาะ CPU', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('123', '7440-001-0001-038', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ CHICHANG', null, null, null, null, null, null, null, null, 'F', 'F001', null, null, null, null, 'B05', 'ชั้น 2 (ผู้ป่วย ช)', null, null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(630)', null, null, '16635.51', '2549-06-01 00:00:00', null, 'IS06-0001', '2549-06-01 00:00:00', null, 'จอเสีย', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('124', '7440-001-0001-039', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ CHICHANG', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 2 (บริหาร)', null, null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(630)', null, null, '16635.51', '2549-06-16 00:00:00', null, 'IS06-0035', '2549-06-16 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('125', '7440-001-0001-040', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ View', null, null, null, null, null, null, null, null, 'D', 'D001', null, null, null, null, 'B04', 'ชั้น 1 (ห้องฟัน)', null, null, '03', '001', null, 'CPU Pentium 4 3.06 GHz.', null, null, '20749.44', '2549-07-29 00:00:00', null, null, '2549-07-29 00:00:00', null, null, '16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('126', '7440-001-0001-041', null, null, 'C', '2549', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ CHICHANG', null, null, null, null, null, null, null, null, 'B', 'ฺB001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, 'CPU Pentium DS20 2.8 GHz.', null, null, '12742.99', '2549-08-17 00:00:00', null, 'IS09-0016', '2549-08-17 00:00:00', null, null, '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('127', '7440-001-0001-042', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ PCCOM', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'ห้องเก็บเงิน', null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(631)', null, null, '5780.00', '2551-05-12 00:00:00', null, '0307/07', '2551-05-12 00:00:00', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('128', '7440-001-0001-043', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ PCCOM', null, null, null, null, null, null, null, null, 'K', 'K001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(631)', null, null, '16000.00', '2551-05-12 00:00:00', null, '0308/07', '2551-05-12 00:00:00', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('129', '7440-001-0001-044', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ PCCOM', null, null, null, null, null, null, null, null, 'A', 'A001', null, null, null, null, 'B06', 'ชั้น 1', null, null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(637)', null, null, '23500.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('130', '7440-001-0001-045', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ PCCOM', null, null, null, null, null, null, null, null, 'G', 'G001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, 'CPU Pentium 4 3.0 GHz.(637)', null, null, '23500.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('131', '7440-001-0001-046', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ PCCOM', null, null, null, null, null, null, null, null, 'L', 'L001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', 'Lab', null, '03', '001', null, null, null, null, '23500.00', '2551-06-18 00:00:00', null, '0329/07', '2551-06-18 00:00:00', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('132', '7440-001-0001-047', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ PCCOM', null, null, null, null, null, null, null, null, 'E', 'E001', null, null, null, null, 'B01', 'ชั้น 1 (OPD)', null, null, '03', '001', null, null, null, null, '12800.00', '2551-09-23 00:00:00', null, '10/0465', '2551-09-23 00:00:00', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `asset_master_bms` VALUES ('133', '7440-001-0001-048', null, null, 'C', '2551', '2555-02-16 00:00:00', null, 'คอมพิวเตอร์ PCCOM', null, null, null, null, null, null, null, null, 'C', 'C003', null, null, null, null, 'B02', 'ชั้น 1', null, null, '03', '001', null, null, null, null, '15000.00', '2551-12-01 00:00:00', null, '08/0378', '2551-12-01 00:00:00', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('Administrator', '1', '1503026097');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
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

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('Administrator', '1', 'ผู้ดูแลระบบ', null, null, '1503025077', '1503025077');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for menus
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'home', 'index.php?r=site/index', 'หน้าแรก', 'หน้าแรก', null, '1', null);
INSERT INTO `menus` VALUES ('2', 'th-list', null, 'รายการครุภัณฑ์', 'ครุภัณฑ์ทั้งหมด', null, '2', null);
INSERT INTO `menus` VALUES ('3', 'list-ul', null, 'รายการวัสดุ', 'วัสดุทั้งหมด', null, '3', null);
INSERT INTO `menus` VALUES ('4', 'edit', 'index.php?r=card/index', 'ใบส่งซ่อม', 'เขียนใบส่งซ่อม', null, '4', null);
INSERT INTO `menus` VALUES ('5', 'list', 'index.php?r=card/report', 'รายการส่งซ่อม', null, null, '5', null);
INSERT INTO `menus` VALUES ('6', 'users', 'index.php?r=member/index', 'สมาชิก', null, null, '6', null);
INSERT INTO `menus` VALUES ('7', 'pie-chart', null, 'รายงาน', null, null, '7', null);
INSERT INTO `menus` VALUES ('8', 'gear', 'index.php?r=setting/index', 'ตั้งค่าระบบ', null, null, '8', null);

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1501349926');
INSERT INTO `migration` VALUES ('m140209_132017_init', '1501353530');
INSERT INTO `migration` VALUES ('m140403_174025_create_account_table', '1501353530');
INSERT INTO `migration` VALUES ('m140504_113157_update_tables', '1501353532');
INSERT INTO `migration` VALUES ('m140504_130429_create_token_table', '1501353533');
INSERT INTO `migration` VALUES ('m140830_171933_fix_ip_field', '1501353533');
INSERT INTO `migration` VALUES ('m140830_172703_change_account_table_name', '1501353533');
INSERT INTO `migration` VALUES ('m141222_110026_update_ip_field', '1501353533');
INSERT INTO `migration` VALUES ('m141222_135246_alter_username_length', '1501353534');
INSERT INTO `migration` VALUES ('m150614_103145_update_social_account_table', '1501353535');
INSERT INTO `migration` VALUES ('m150623_212711_fix_username_notnull', '1501353535');
INSERT INTO `migration` VALUES ('m151218_234654_add_timezone_to_profile', '1501353535');
INSERT INTO `migration` VALUES ('m160929_103127_add_last_login_at_to_user_table', '1501353535');
INSERT INTO `migration` VALUES ('m140506_102106_rbac_init', '1502901200');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
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

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', 'Tharaphong Chamnan', 'admphrao@gmail.com', 'admphrao@gmail.com', '286bb55023af0b4d5716542fc3e74213', '', '', '', 'Asia/Bangkok');
INSERT INTO `profile` VALUES ('2', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for session
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` char(64) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES ('ae14tjkt58k75sddpdpf17php5', '1514292505', 0x5F5F666C6173687C613A303A7B7D, null);

-- ----------------------------
-- Table structure for social_account
-- ----------------------------
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

-- ----------------------------
-- Records of social_account
-- ----------------------------

-- ----------------------------
-- Table structure for sub_menu
-- ----------------------------
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

-- ----------------------------
-- Records of sub_menu
-- ----------------------------
INSERT INTO `sub_menu` VALUES ('2', 'desktop', 'index.php?r=computer/index', 'ครุภัณฑ์คอมพิวเตอร์', 'รายการครุภัณฑ์คอมพิวเตอร์', '1', '1', null);
INSERT INTO `sub_menu` VALUES ('2', 'th', 'index.php?r=report', 'ครุภัณฑ์...1', 'รายการครุภัณฑ์...', null, '2', null);
INSERT INTO `sub_menu` VALUES ('7', 'pie-chart', 'index.php?r=report', 'รายงาน...1', 'รายการ...', '', '1', null);
INSERT INTO `sub_menu` VALUES ('3', 'th', 'index.php?r=report', 'วัสดุ...1', 'รายการครุภัณฑ์...', '', '1', null);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of token
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admphrao@gmail.com', '$2y$12$FH/tGRA1IKlsIIqBNZBY7O1GIz6u1JWTJ51FSkyXlu2EFV4WRBKDm', '_rWxFmXNGBiExucOIKMvo0mBZtp2qg_T', '1501355572', null, null, '::1', '1501353914', '1502437835', '0', '1514288494');
INSERT INTO `user` VALUES ('2', 'user', 'user@local.com', '$2y$12$0QC8gKY/smPAibOcx98hxOHSSHi8xKHP9vbsLF.t05APnEZJjfpZu', 'T5JgifFNUqSqJVfvJ5SWItNtA_w-OFjt', '1501356352', null, null, '::1', '1501356353', '1501356353', '0', '1510039430');

-- ----------------------------
-- Procedure structure for create_table_computer
-- ----------------------------
DROP PROCEDURE IF EXISTS `create_table_computer`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `create_table_computer`()
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

END
;;
DELIMITER ;
