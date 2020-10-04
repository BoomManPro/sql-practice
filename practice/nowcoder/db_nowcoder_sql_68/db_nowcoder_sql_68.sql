/*
 Navicat Premium Data Transfer

 Source Server         : www.boommanpro.com
 Source Schema         : db_nowcoder_sql_68

 Date: 04/10/2020 11:28:16
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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, 2, 1, '2020-10-12');
INSERT INTO `login` VALUES (2, 3, 2, '2020-10-12');
INSERT INTO `login` VALUES (3, 2, 2, '2020-10-13');
INSERT INTO `login` VALUES (4, 3, 2, '2020-10-14');

SET FOREIGN_KEY_CHECKS = 1;
