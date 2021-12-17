/*
 Navicat Premium Data Transfer

 Source Server         : ThuPQ
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : quanlycuahangthuexe

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 17/12/2021 17:36:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_cuahang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cuahang`;
CREATE TABLE `tbl_cuahang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_cuahang
-- ----------------------------
BEGIN;
INSERT INTO `tbl_cuahang` (`id`, `ten`, `diachi`, `ghichu`) VALUES (1, 'ThuPQ', '233_Giáp Nhất_Hà Nội', NULL);
COMMIT;

-- ----------------------------
-- Table structure for tbl_doitac
-- ----------------------------
DROP TABLE IF EXISTS `tbl_doitac`;
CREATE TABLE `tbl_doitac` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `trangthai` int(10) DEFAULT NULL COMMENT '1:còn hiệu lực; 0 hết hiệu lực',
  `ten` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `dt` varchar(15) DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_doitac
-- ----------------------------
BEGIN;
INSERT INTO `tbl_doitac` (`id`, `trangthai`, `ten`, `diachi`, `dt`, `ghichu`) VALUES (1, 1, 'Pham Quang Thu', 'Thai Binh', '0984923502', NULL);
INSERT INTO `tbl_doitac` (`id`, `trangthai`, `ten`, `diachi`, `dt`, `ghichu`) VALUES (2, 1, 'Nguyen Van Anh', 'Thai Binh', '0123456789', NULL);
INSERT INTO `tbl_doitac` (`id`, `trangthai`, `ten`, `diachi`, `dt`, `ghichu`) VALUES (3, 1, 'Tạ Ngọc Ánh', 'Thái Bình', '01112223334', NULL);
INSERT INTO `tbl_doitac` (`id`, `trangthai`, `ten`, `diachi`, `dt`, `ghichu`) VALUES (4, 1, 'Phạm Quang Thịnh', 'Hà Nội', '012345566', NULL);
INSERT INTO `tbl_doitac` (`id`, `trangthai`, `ten`, `diachi`, `dt`, `ghichu`) VALUES (5, 1, 'Phan Thanh Bình', 'Nam Định', '01234565657', NULL);
INSERT INTO `tbl_doitac` (`id`, `trangthai`, `ten`, `diachi`, `dt`, `ghichu`) VALUES (6, 1, 'Bùi Văn Thái', 'Nam Định', '01231231231', NULL);
INSERT INTO `tbl_doitac` (`id`, `trangthai`, `ten`, `diachi`, `dt`, `ghichu`) VALUES (7, 1, 'Đặng Văn Tú', 'Hòa Bình', '01231231237', NULL);
INSERT INTO `tbl_doitac` (`id`, `trangthai`, `ten`, `diachi`, `dt`, `ghichu`) VALUES (8, 1, 'Đặng Văn Lâm', 'Nga', '09998887774', NULL);
INSERT INTO `tbl_doitac` (`id`, `trangthai`, `ten`, `diachi`, `dt`, `ghichu`) VALUES (9, 1, 'Đỗ Văn Tuấn', 'Vĩnh Phúc', '07777777777', NULL);
INSERT INTO `tbl_doitac` (`id`, `trangthai`, `ten`, `diachi`, `dt`, `ghichu`) VALUES (10, 1, 'Nguyễn Văn Đông', 'Bắc Ninh', '0666666666', NULL);
INSERT INTO `tbl_doitac` (`id`, `trangthai`, `ten`, `diachi`, `dt`, `ghichu`) VALUES (11, 1, 'Nguyễn Thị Hồng', 'Ninh Bình', '0555555555', NULL);
COMMIT;

-- ----------------------------
-- Table structure for tbl_hangxe
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hangxe`;
CREATE TABLE `tbl_hangxe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) NOT NULL,
  `xuatxu` varchar(255) NOT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_hangxe
-- ----------------------------
BEGIN;
INSERT INTO `tbl_hangxe` (`id`, `ten`, `xuatxu`, `ghichu`) VALUES (1, 'Honda', 'Nhật Bản', NULL);
INSERT INTO `tbl_hangxe` (`id`, `ten`, `xuatxu`, `ghichu`) VALUES (2, 'Nissan', 'Nhật Bản', NULL);
INSERT INTO `tbl_hangxe` (`id`, `ten`, `xuatxu`, `ghichu`) VALUES (3, 'Toyota', 'Nhật Bản', NULL);
INSERT INTO `tbl_hangxe` (`id`, `ten`, `xuatxu`, `ghichu`) VALUES (4, 'Ford', 'Mỹ', NULL);
INSERT INTO `tbl_hangxe` (`id`, `ten`, `xuatxu`, `ghichu`) VALUES (5, 'Kia', 'Hàn Quốc', NULL);
COMMIT;

-- ----------------------------
-- Table structure for tbl_hdongdoitacchothue
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hdongdoitacchothue`;
CREATE TABLE `tbl_hdongdoitacchothue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ngaybd` date DEFAULT NULL,
  `ngaykt` date DEFAULT NULL,
  `trangthai` int(10) DEFAULT NULL,
  `tongtien` float(10,0) DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `tbl_doitacid` int(10) NOT NULL,
  `tbl_nhanvienid` int(10) NOT NULL,
  `ngaytao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tbl_doitacid` (`tbl_doitacid`) USING BTREE,
  KEY `tbl_nhanvienid` (`tbl_nhanvienid`) USING BTREE,
  CONSTRAINT `tbl_hdongdoitacchothue_ibfk_1` FOREIGN KEY (`tbl_doitacid`) REFERENCES `tbl_doitac` (`id`),
  CONSTRAINT `tbl_hdongdoitacchothue_ibfk_2` FOREIGN KEY (`tbl_nhanvienid`) REFERENCES `tbl_nhanvien` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 STATS_AUTO_RECALC=0 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_hdongdoitacchothue
-- ----------------------------
BEGIN;
INSERT INTO `tbl_hdongdoitacchothue` (`id`, `ngaybd`, `ngaykt`, `trangthai`, `tongtien`, `ghichu`, `tbl_doitacid`, `tbl_nhanvienid`, `ngaytao`) VALUES (1, '2021-11-01', '2021-11-11', 1, 122, 'd', 1, 1, NULL);
INSERT INTO `tbl_hdongdoitacchothue` (`id`, `ngaybd`, `ngaykt`, `trangthai`, `tongtien`, `ghichu`, `tbl_doitacid`, `tbl_nhanvienid`, `ngaytao`) VALUES (2, '2021-11-04', '2021-11-19', 1, 12, '', 2, 1, NULL);
INSERT INTO `tbl_hdongdoitacchothue` (`id`, `ngaybd`, `ngaykt`, `trangthai`, `tongtien`, `ghichu`, `tbl_doitacid`, `tbl_nhanvienid`, `ngaytao`) VALUES (3, '2021-10-31', '2021-11-27', 2, 23, '', 2, 1, NULL);
INSERT INTO `tbl_hdongdoitacchothue` (`id`, `ngaybd`, `ngaykt`, `trangthai`, `tongtien`, `ghichu`, `tbl_doitacid`, `tbl_nhanvienid`, `ngaytao`) VALUES (4, '2021-10-31', '2021-11-06', 1, 9999, '', 1, 1, NULL);
INSERT INTO `tbl_hdongdoitacchothue` (`id`, `ngaybd`, `ngaykt`, `trangthai`, `tongtien`, `ghichu`, `tbl_doitacid`, `tbl_nhanvienid`, `ngaytao`) VALUES (5, '2021-11-11', '2021-11-30', 1, 130, NULL, 1, 1, '2021-12-17 00:05:07');
INSERT INTO `tbl_hdongdoitacchothue` (`id`, `ngaybd`, `ngaykt`, `trangthai`, `tongtien`, `ghichu`, `tbl_doitacid`, `tbl_nhanvienid`, `ngaytao`) VALUES (6, '2021-12-17', '2021-12-28', 1, 400, NULL, 1, 1, '2021-12-17 00:23:36');
COMMIT;

-- ----------------------------
-- Table structure for tbl_hdongkyguidoitac
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hdongkyguidoitac`;
CREATE TABLE `tbl_hdongkyguidoitac` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ngaybd` date DEFAULT NULL,
  `ngaykt` date DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `trangthai` int(10) DEFAULT NULL,
  `tbl_doitacid` int(10) NOT NULL,
  `tbl_nhanvienid` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tbl_hDongkyguidoitac` (`tbl_nhanvienid`) USING BTREE,
  KEY `tbl_doitacid` (`tbl_doitacid`) USING BTREE,
  CONSTRAINT `tbl_hDongkyguidoitac` FOREIGN KEY (`tbl_nhanvienid`) REFERENCES `tbl_nhanvien` (`id`),
  CONSTRAINT `tbl_hdongkyguidoitac_ibfk_1` FOREIGN KEY (`tbl_doitacid`) REFERENCES `tbl_doitac` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_hdongkyguidoitac
-- ----------------------------
BEGIN;
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (1, '2021-11-01', '2022-11-16', NULL, 1, 1, 1);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (2, '2021-11-15', '2022-11-23', NULL, 1, 2, 2);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (3, '2021-11-01', '2022-12-11', NULL, 1, 3, 1);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (4, '2021-11-01', '2021-12-13', NULL, 0, 2, 1);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (5, '2021-12-17', '2022-12-17', NULL, 1, 11, 2);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (6, '2021-12-17', '2022-12-17', NULL, 1, 10, 2);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (7, '2021-12-17', '2022-12-17', NULL, 1, 9, 2);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (8, '2021-12-17', '2022-12-17', NULL, 1, 8, 1);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (9, '2021-12-17', '2022-12-17', NULL, 1, 7, 1);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (10, '2021-12-17', '2022-12-17', NULL, 1, 6, 1);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (11, '2021-12-17', '2022-12-17', NULL, 1, 5, 2);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (12, '2021-12-17', '2022-12-17', NULL, 1, 4, 2);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (13, '2021-12-17', '2022-12-17', NULL, 1, 1, 1);
INSERT INTO `tbl_hdongkyguidoitac` (`id`, `ngaybd`, `ngaykt`, `ghichu`, `trangthai`, `tbl_doitacid`, `tbl_nhanvienid`) VALUES (14, '2021-12-20', '2022-12-20', NULL, 1, 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for tbl_nhanvien
-- ----------------------------
DROP TABLE IF EXISTS `tbl_nhanvien`;
CREATE TABLE `tbl_nhanvien` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `dt` varchar(15) NOT NULL,
  `vitri` varchar(255) NOT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_nhanvien
-- ----------------------------
BEGIN;
INSERT INTO `tbl_nhanvien` (`id`, `ten`, `username`, `password`, `ngaysinh`, `diachi`, `email`, `dt`, `vitri`, `ghichu`) VALUES (1, 'Thuws', 'thupq', '1234', '1999-05-02', 'thai binh', 'thu2@gmail.com', '0984923502', 'nhan vien quan ly', 'moi');
INSERT INTO `tbl_nhanvien` (`id`, `ten`, `username`, `password`, `ngaysinh`, `diachi`, `email`, `dt`, `vitri`, `ghichu`) VALUES (2, 'Thinh', 'thinh', '12345', '2000-08-20', 'ha noi', 'thinh2@gmail.com', '0868864502', 'nhan vien quan ly', 'moi');
COMMIT;

-- ----------------------------
-- Table structure for tbl_xe
-- ----------------------------
DROP TABLE IF EXISTS `tbl_xe`;
CREATE TABLE `tbl_xe` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) DEFAULT NULL,
  `bienso` varchar(10) NOT NULL,
  `dong` varchar(255) DEFAULT NULL,
  `doi` varchar(10) DEFAULT NULL,
  `mau` varchar(255) DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `tbl_hangid` int(10) DEFAULT NULL,
  `tbl_doitacid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tbl_hangid` (`tbl_hangid`) USING BTREE,
  CONSTRAINT `tbl_xe_ibfk_1` FOREIGN KEY (`tbl_hangid`) REFERENCES `tbl_hangxe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_xe
-- ----------------------------
BEGIN;
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (1, 'Toyota Vios', '17B-1234', 'sedan', '2019', 'xanh', NULL, 3, 1);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (2, 'Toyota Camry', '17C-1234', 'sedan', '2019', 'xanh', NULL, 3, 1);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (3, 'Nissan Sunny', '18B-1234', 'sedan', '2019', 'đỏ', NULL, 2, 1);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (4, 'Kia Morning', '18C-1233', 'hatback', '2019', 'đỏ', NULL, 5, 1);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (5, 'Toyota Yaris', '19B-1234', 'hatback', '2018', 'vàng', NULL, 3, 2);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (6, 'Ford Fiesta', '19C-1122', 'hatback', '2017', 'vàng', NULL, 4, 2);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (7, 'Toyota Land Cruiser', '20C-1102', 'SUV', '2020', 'vàng', NULL, 3, 3);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (8, 'Toyota Fortuner', '22C-1234', 'SUV', '2020', 'vàng', NULL, 3, 5);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (9, 'Honda CR-V', '29C-1234', 'Crossover', '2019', 'tím', NULL, 1, 3);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (10, 'Honda HR-V', '30D-1234', 'Crossover', '2017', 'tím', NULL, 1, 4);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (11, 'Toyota Vios_v2', '36H-1234', 'sedan', '2019', 'vàng', NULL, 3, 1);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (12, 'Toyota Camry_v2', '37H-5678', 'sedan', '2019', 'đen', NULL, 3, 1);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (13, 'Toyota Camry_v3', '38H-7890', 'sedan', '2019', 'xanh', NULL, 3, 1);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (14, 'Toyota Vios_v3', '39L-7888', 'sedan', '2016', 'tím', NULL, 3, 1);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (15, 'Toyota Vios_v4', '51G-4444', 'sedan', '2015', 'đen', NULL, 3, 2);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (16, 'Nissan Sunny_v2', '30F-5623', 'sedan', '2017', 'den', NULL, 2, 3);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (17, 'Nissan Sunny_v3', '29A-4567', 'sedan', '2017', 'xanh', NULL, 2, 5);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (18, 'Honda HR-V', '33H-1234', 'Crossover', '2017', 'xanh', NULL, 1, 6);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (19, 'Honda HR-V_v1', '31A-5555', 'Crossover', '2018', 'xanh', NULL, 1, 7);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (20, 'Kia Seltos', '35A-6666', 'SUV', '2018', 'xanh', NULL, 5, 4);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (21, 'Toyota Yaris_v2', '90A-1595', 'hatback', '2017', 'đen', NULL, 3, 2);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (22, 'Kia Morning_v2', '99A-1255', 'hatback', '2016', 'tím', NULL, 5, 8);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (23, 'Ford Fiesta_v2', '20H-4555', 'hatback', '2015', 'trắng', NULL, 4, 9);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (24, 'Toyota Vios_v5', '16S-1234', 'sedan', '2015', 'trắng', NULL, 3, 6);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (25, 'Nissan Sunny_v5', '15H-2201', 'sedan', '2015', 'đen', NULL, 2, 7);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (26, 'Toyota Camry_v5', '14H-2202', 'sedan', '2014', 'tím', NULL, 3, 8);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (27, 'Toyota Vios_v5', '14H-2203', 'sedan', '2015', 'nâu', NULL, 3, 9);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (28, 'Nissan Sunny_v5', '15H-2204', 'sedan', '2015', 'trứng', NULL, 2, 10);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (29, 'Ford Fiesta', '19H-1155', 'hatback', '2014', 'nâu', NULL, 4, 10);
INSERT INTO `tbl_xe` (`id`, `ten`, `bienso`, `dong`, `doi`, `mau`, `ghichu`, `tbl_hangid`, `tbl_doitacid`) VALUES (30, 'Ford Fiesta', '17A-6666', 'hatback', '2015', 'đen', NULL, 4, 11);
COMMIT;

-- ----------------------------
-- Table structure for tbl_xedathuedoitac
-- ----------------------------
DROP TABLE IF EXISTS `tbl_xedathuedoitac`;
CREATE TABLE `tbl_xedathuedoitac` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ngaytra` date DEFAULT NULL,
  `dongia` float(11,0) DEFAULT NULL,
  `tinhtrang` varchar(255) DEFAULT NULL,
  `trangthai` int(10) DEFAULT NULL COMMENT '1:đã trả; 0: chưa trả',
  `tbl_xekyguiid` int(10) DEFAULT NULL,
  `tbl_hdongdoitacthueid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tbl_xeid` (`tbl_xekyguiid`) USING BTREE,
  KEY `tbl_hdongdoitacthueid` (`tbl_hdongdoitacthueid`) USING BTREE,
  CONSTRAINT `tbl_xedathuedoitac_ibfk_1` FOREIGN KEY (`tbl_xekyguiid`) REFERENCES `tbl_xedoitackygui` (`id`),
  CONSTRAINT `tbl_xedathuedoitac_ibfk_2` FOREIGN KEY (`tbl_hdongdoitacthueid`) REFERENCES `tbl_hdongdoitacchothue` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_xedathuedoitac
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tbl_xedoitackygui
-- ----------------------------
DROP TABLE IF EXISTS `tbl_xedoitackygui`;
CREATE TABLE `tbl_xedoitackygui` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `trangthai` int(10) NOT NULL COMMENT '3 trạng thái: 0: ko hoạt động, 1: còn, 2: đã thuê',
  `ngaykt` date DEFAULT NULL,
  `tbl_HDongKyGuiDoitacid` int(10) DEFAULT NULL,
  `tbl_Xeid` int(10) DEFAULT NULL,
  `tbl_Cuahangid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tbl_Xeid` (`tbl_Xeid`) USING BTREE,
  KEY `tbl_xedoitackygui_ibfk_1` (`tbl_HDongKyGuiDoitacid`) USING BTREE,
  KEY `tbl_Cuahangid` (`tbl_Cuahangid`) USING BTREE,
  CONSTRAINT `tbl_xedoitackygui_ibfk_1` FOREIGN KEY (`tbl_HDongKyGuiDoitacid`) REFERENCES `tbl_hdongkyguidoitac` (`id`),
  CONSTRAINT `tbl_xedoitackygui_ibfk_2` FOREIGN KEY (`tbl_Xeid`) REFERENCES `tbl_xe` (`id`),
  CONSTRAINT `tbl_xedoitackygui_ibfk_3` FOREIGN KEY (`tbl_Cuahangid`) REFERENCES `tbl_cuahang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_xedoitackygui
-- ----------------------------
BEGIN;
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (1, 0, '2021-12-05', 1, 1, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (2, 0, '2021-12-05', 1, 3, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (3, 0, '2021-12-05', 1, 4, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (9, 1, NULL, 13, 1, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (10, 1, NULL, 13, 2, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (11, 1, NULL, 13, 4, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (12, 1, NULL, 14, 11, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (13, 1, NULL, 14, 12, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (14, 1, NULL, 14, 13, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (15, 1, NULL, 14, 14, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (17, 0, '2021-12-10', 4, 5, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (18, 0, '2021-12-10', 4, 21, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (19, 1, NULL, 2, 6, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (20, 1, NULL, 2, 15, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (21, 1, NULL, 3, 7, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (22, 1, NULL, 3, 9, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (23, 1, NULL, 3, 16, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (24, 1, NULL, 12, 10, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (25, 1, NULL, 12, 20, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (26, 1, NULL, 11, 8, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (27, 1, NULL, 11, 17, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (28, 1, NULL, 10, 18, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (29, 1, NULL, 10, 24, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (30, 1, NULL, 9, 19, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (31, 1, NULL, 9, 25, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (32, 1, NULL, 8, 22, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (33, 1, NULL, 8, 26, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (34, 1, NULL, 7, 23, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (35, 1, NULL, 7, 27, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (36, 1, NULL, 6, 28, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (37, 1, NULL, 6, 29, 1);
INSERT INTO `tbl_xedoitackygui` (`id`, `trangthai`, `ngaykt`, `tbl_HDongKyGuiDoitacid`, `tbl_Xeid`, `tbl_Cuahangid`) VALUES (38, 1, NULL, 5, 30, 1);
COMMIT;

-- ----------------------------
-- Procedure structure for getOneDt
-- ----------------------------
DROP PROCEDURE IF EXISTS `getOneDt`;
delimiter ;;
CREATE PROCEDURE `getOneDt`(IN doitac int(10))
BEGIN
	SELECT * FROM tbl_doitac a WHERE a.id = doitac;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getOneNv
-- ----------------------------
DROP PROCEDURE IF EXISTS `getOneNv`;
delimiter ;;
CREATE PROCEDURE `getOneNv`(IN nv int(10))
BEGIN
	SELECT * FROM tbl_nhanvien a WHERE a.id = nv;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getOneXe
-- ----------------------------
DROP PROCEDURE IF EXISTS `getOneXe`;
delimiter ;;
CREATE PROCEDURE `getOneXe`(IN xe int(10))
BEGIN
	SELECT * FROM tbl_xe a WHERE a.id = xe;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for kiemtraDN
-- ----------------------------
DROP PROCEDURE IF EXISTS `kiemtraDN`;
delimiter ;;
CREATE PROCEDURE `kiemtraDN`(IN usr VARCHAR(20), IN pwd VARCHAR(20))
BEGIN
    SELECT * FROM tbl_nhanvien
    WHERE username = usr AND password = pwd;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for listHD
-- ----------------------------
DROP PROCEDURE IF EXISTS `listHD`;
delimiter ;;
CREATE PROCEDURE `listHD`()
BEGIN
	SELECT a.* FROM tbl_hdongdoitacchothue a 
	JOIN tbl_xe b ON b.id=a.tbl_xeid  
	JOIN tbl_doitac c ON a.tbl_doitacid=c.id
	JOIN tbl_nhanvien d ON d.id=a.tbl_nhanvienid;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for searchDoitac
-- ----------------------------
DROP PROCEDURE IF EXISTS `searchDoitac`;
delimiter ;;
CREATE PROCEDURE `searchDoitac`(IN dong VARCHAR(255))
BEGIN
	SELECT DISTINCT a.* FROM tbl_doitac a JOIN tbl_hdongkyguidoitac b ON a.id=b.tbl_doitacid  
	JOIN tbl_xedoitackygui c ON c.tbl_HDongKyGuiDoitacid=b.id
	JOIN tbl_xe d ON d.id=c.tbl_Xeid WHERE d.dong=dong AND c.trangthai=1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for searchDtByXe
-- ----------------------------
DROP PROCEDURE IF EXISTS `searchDtByXe`;
delimiter ;;
CREATE PROCEDURE `searchDtByXe`(IN dong VARCHAR(255))
BEGIN
	SELECT DISTINCT a.* FROM tbl_doitac a JOIN tbl_xe b ON a.id=b.tbl_doitacid  
	JOIN tbl_xedoitackygui c ON c.tbl_Xeid = b.id
	WHERE b.dong = dong AND c.trangthai=1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for searchXeByDt
-- ----------------------------
DROP PROCEDURE IF EXISTS `searchXeByDt`;
delimiter ;;
CREATE PROCEDURE `searchXeByDt`(IN doitac int(10), IN dong VARCHAR(255))
BEGIN
	SELECT DISTINCT a.* FROM tbl_xe a 
	JOIN tbl_xedoitackygui b ON a.id = b.tbl_Xeid
	WHERE a.tbl_doitacid = doitac AND a.dong=dong AND b.trangthai=1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for searchXetheoDt
-- ----------------------------
DROP PROCEDURE IF EXISTS `searchXetheoDt`;
delimiter ;;
CREATE PROCEDURE `searchXetheoDt`(IN doitac int(10), IN dong VARCHAR(255))
BEGIN
	SELECT DISTINCT a.* FROM tbl_xe a 
	JOIN tbl_xedoitackygui b ON a.id = b.tbl_Xeid
	JOIN tbl_hdongkyguidoitac c ON b.tbl_HDongKyGuiDoitacid=c.id WHERE c.tbl_doitacid=doitac AND a.dong=dong;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
