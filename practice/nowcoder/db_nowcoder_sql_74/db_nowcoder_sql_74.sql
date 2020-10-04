/*
 Navicat Premium Data Transfer

 Source Server         : www.boommanpro.com
 Source Schema         : db_nowcode_sql74

 Date: 30/09/2020 20:26:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for garde
-- ----------------------------
DROP TABLE IF EXISTS `garde`;
CREATE TABLE `garde`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `language_id` int(0) NULL DEFAULT NULL COMMENT '语言id',
  `score` int(0) NULL DEFAULT NULL COMMENT '分数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garde
-- ----------------------------
INSERT INTO `garde` VALUES (1, 1, 12000);
INSERT INTO `garde` VALUES (2, 1, 13000);
INSERT INTO `garde` VALUES (3, 2, 11000);
INSERT INTO `garde` VALUES (4, 2, 10000);
INSERT INTO `garde` VALUES (5, 3, 11000);
INSERT INTO `garde` VALUES (6, 1, 11000);
INSERT INTO `garde` VALUES (7, 2, 11000);

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '语言名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES (1, 'C++');
INSERT INTO `language` VALUES (2, 'JAVA');
INSERT INTO `language` VALUES (3, 'Python');

SET FOREIGN_KEY_CHECKS = 1;
