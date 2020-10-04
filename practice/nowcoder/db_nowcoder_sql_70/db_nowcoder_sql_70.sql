/*
 Navicat Premium Data Transfer

 Source Server         : www.boommanpro.com
 Source Schema         : db_nowcoder_sql_70

 Date: 04/10/2020 11:28:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
INSERT INTO `login` VALUES (4, 2, 2, '2020-10-13');
INSERT INTO `login` VALUES (5, 1, 2, '2020-10-13');
INSERT INTO `login` VALUES (6, 3, 1, '2020-10-14');
INSERT INTO `login` VALUES (7, 4, 1, '2020-10-14');
INSERT INTO `login` VALUES (8, 4, 1, '2020-10-15');

SET FOREIGN_KEY_CHECKS = 1;
