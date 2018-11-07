/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100309
 Source Host           : localhost:3306
 Source Schema         : book

 Target Server Type    : MySQL
 Target Server Version : 100309
 File Encoding         : 65001

 Date: 07/11/2018 08:51:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for booking
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bed_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approve` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO `booking` VALUES (1, '000000000001', '1', '2008-10-06', '11:00', NULL);
INSERT INTO `booking` VALUES (2, NULL, '1', NULL, NULL, NULL);
INSERT INTO `booking` VALUES (3, NULL, '1', '2008-10-06', '11:00', NULL);
INSERT INTO `booking` VALUES (4, NULL, '1', '2008-10-06', '11:00', NULL);
INSERT INTO `booking` VALUES (5, NULL, '1', '2008-10-06', '11:00', NULL);
INSERT INTO `booking` VALUES (6, NULL, '1', '2008-10-06', '11:00', NULL);
INSERT INTO `booking` VALUES (7, NULL, '1', '2008-10-06', '11:00', NULL);
INSERT INTO `booking` VALUES (8, NULL, '1', '2008-10-06', '11:00', NULL);
INSERT INTO `booking` VALUES (9, NULL, '1', '2008-10-06', '11:00', NULL);

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient`  (
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activated` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES ('0000000000002', 'Mr', 'John', 'Hockin', 'y');
INSERT INTO `patient` VALUES ('0000000000003', 'Mr', 'Peter', 'Cop', 'y');

SET FOREIGN_KEY_CHECKS = 1;
