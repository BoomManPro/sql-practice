/*
 Navicat Premium Data Transfer

 Source Server         : www.boommanpro.com
 Source Schema         : db_bytedance_1
 Date: 01/10/2020 10:50:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '语文');
INSERT INTO `course` VALUES (2, '英语');
INSERT INTO `course` VALUES (3, '数学');
INSERT INTO `course` VALUES (4, '政治');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `course_id` int(0) NULL DEFAULT NULL,
  `student_id` int(0) NULL DEFAULT NULL,
  `score` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (1, 1, 1, 50);
INSERT INTO `score` VALUES (2, 2, 1, 70);
INSERT INTO `score` VALUES (3, 3, 1, 70);
INSERT INTO `score` VALUES (4, 4, 1, 70);
INSERT INTO `score` VALUES (5, 1, 2, 80);
INSERT INTO `score` VALUES (6, 2, 2, 50);
INSERT INTO `score` VALUES (7, 3, 2, 50);
INSERT INTO `score` VALUES (8, 4, 2, 50);
INSERT INTO `score` VALUES (9, 1, 3, 60);
INSERT INTO `score` VALUES (10, 2, 3, 60);
INSERT INTO `score` VALUES (11, 3, 3, 60);
INSERT INTO `score` VALUES (12, 4, 3, 60);
INSERT INTO `score` VALUES (13, 1, 4, 90);
INSERT INTO `score` VALUES (14, 2, 4, 90);
INSERT INTO `score` VALUES (15, 3, 4, 90);
INSERT INTO `score` VALUES (16, 4, 4, 90);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '张三');
INSERT INTO `student` VALUES (2, '李四');
INSERT INTO `student` VALUES (3, '王五');
INSERT INTO `student` VALUES (4, '赵六');

SET FOREIGN_KEY_CHECKS = 1;
