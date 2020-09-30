/*
 Navicat Premium Data Transfer

 Source Server         : www.boommanpro.com
 Source Schema         : db_nowcode_sql_1

 Date: 30/09/2020 19:54:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `emp_no` int(0) NOT NULL COMMENT '员工编号',
  `birth_date` date NULL DEFAULT NULL,
  `first_name` varchar(14) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `last_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `hire_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`emp_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (10007, '1958-02-20', 'BoomMan', 'Pro', 'M', '1993-09-09');
INSERT INTO `employees` VALUES (10008, '1958-02-19', 'Saniya', 'Kalloufi', 'M', '1994-09-15');

SET FOREIGN_KEY_CHECKS = 1;
