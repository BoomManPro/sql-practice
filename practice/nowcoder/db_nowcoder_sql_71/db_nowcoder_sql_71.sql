/*
 Navicat Premium Data Transfer

 Source Server         : www.boommanpro.com
 Source Schema         : db_nowcoder_sql_71

 Date: 04/10/2020 11:49:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (1, 'pc');
INSERT INTO `client` VALUES (2, 'ios');
INSERT INTO `client` VALUES (3, 'anroid');
INSERT INTO `client` VALUES (4, 'h5');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `client_id` int(0) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, 2, 1, '2020-10-12');
INSERT INTO `login` VALUES (2, 3, 2, '2020-10-12');
INSERT INTO `login` VALUES (3, 1, 2, '2020-10-12');
INSERT INTO `login` VALUES (4, 1, 3, '2020-10-13');
INSERT INTO `login` VALUES (5, 3, 2, '2020-10-13');

-- ----------------------------
-- Table structure for passing_number
-- ----------------------------
DROP TABLE IF EXISTS `passing_number`;
CREATE TABLE `passing_number`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `number` int(0) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of passing_number
-- ----------------------------
INSERT INTO `passing_number` VALUES (1, 2, 4, '2020-10-12');
INSERT INTO `passing_number` VALUES (2, 3, 1, '2020-10-12');
INSERT INTO `passing_number` VALUES (3, 1, 0, '2020-10-13');
INSERT INTO `passing_number` VALUES (4, 3, 2, '2020-10-13');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'tm');
INSERT INTO `user` VALUES (2, 'fh');
INSERT INTO `user` VALUES (3, 'wangchao');

SET FOREIGN_KEY_CHECKS = 1;
