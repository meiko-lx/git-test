/*
 Navicat Premium Data Transfer

 Source Server         : 3306
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : vidio_mangage_db

 Target Server Type    : MySQL
 Target Server Version : 80012
 Date: 27/09/2021 11:07:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;



-- ----------------------------
-- Records of t_message_user
-- ----------------------------
INSERT INTO `t_message_user` VALUES (1, 1, 1, b'1', '2019-09-07 06:59:59', '2019-09-07 07:06:50', NULL);
INSERT INTO `t_message_user` VALUES (2, 2, 1, b'0', '2021-08-12 13:54:34', NULL, NULL);
INSERT INTO `t_message_user` VALUES (3, 3, 1, b'0', '2021-08-12 13:55:45', NULL, NULL);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_describe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (3, 2, 'ADMIN', '管理员');


-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_uuid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `age` int(11) NULL DEFAULT NULL,
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '1.男 0女',
  `birth_day` datetime(0) NULL DEFAULT NULL,
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '1.启用 2禁用',
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modify_time` datetime(0) NULL DEFAULT NULL,
  `last_active_time` datetime(0) NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `job` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wx_open_id` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'd2d29da2-dcb3-4013-b874-727626236f47', 'student', 'D1AGFL+Gx37t0NPG4d6biYP5Z31cNbwhK5w1lUeiHB2zagqbk8efYfSjYoh1Z/j1dkiRjHU+b0EpwzCh8IGsksJjzD65ci5LsnodQVf4Uj6D3pwoscXGqmkjjpzvSJbx42swwNTA+QoDU8YLo7JhtbUK2X0qCjFGpd+8eJ5BGvk=', '学生', 17, 1, '2019-09-07 18:54:40', '15007133738', 1, NULL, '2021-09-07 18:55:02', NULL, NULL, 0, '南京', '学生', NULL, 1);
INSERT INTO `t_user` VALUES (2, '52045f5f-a13f-4ccc-93dd-f7ee8270ad4c', 'admin', 'D1AGFL+Gx37t0NPG4d6biYP5Z31cNbwhK5w1lUeiHB2zagqbk8efYfSjYoh1Z/j1dkiRjHU+b0EpwzCh8IGsksJjzD65ci5LsnodQVf4Uj6D3pwoscXGqmkjjpzvSJbx42swwNTA+QoDU8YLo7JhtbUK2X0qCjFGpd+8eJ5BGvk=', '管理员', 35, 1, '2019-09-07 18:56:07', NULL, 1, NULL, '2019-09-07 18:56:21', NULL, NULL, 0, NULL, NULL, NULL, 3);
INSERT INTO `t_user` VALUES (3, '52379b13-5c01-43f9-a427-899ae57989c0', 'alvis', 'fnanT3ob78rUADLF8Mky+N29gFyP5952C861ONTSn0A9n8VXU414aSqIVghU+YOVc6UHltxMM+AVymdZPssw+zIUiJtbWu4+zYH4iDfpIHyJW1Tb01IVs3nJPId5YMVWd9rMBBkavA73zOjdwkm13HcV98bFMxyhIqoNuuWdCSY=', 'alvis', NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:54:49', '2021-08-27 02:48:02', '2019-09-07 06:54:49', 0, NULL, NULL, NULL, 1);
INSERT INTO `t_user` VALUES (4, '4e182be9-3ee0-45a4-8329-fd79aee3b8e2', '32', 'je+NzP95ymeyrTYnFy7+SLqWlePAYvV4AoZBnVhNAJcYYPDJ9hpLMOj0epD7nkz9N1F/IunV4kK8HylCqGZoDFGx4/ey8LKVElG1JYxbZEvAf6OM8Qu/gvL6Hhyan3UHMbYcgXQ16gZtasHrz3K4s3Pb0x14GZtN9WBqqBw4Vec=', '32', NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:56:28', '2021-09-27 03:03:34', '2019-09-07 06:56:28', 0, NULL, NULL, NULL, 1);
INSERT INTO `t_user` VALUES (5, 'f0cfa3c5-7131-48af-a2be-b8c792018daa', 'bbbvc', 'kc0DETYvKgh9AYyb2oV+b7Z9+DOrcrAbp5F/KMFCtLE5hPyhXy7kHqksNEcCvsPgW2jygkGF6Gfj5iyhRwA/fhacW/LR7+8zOGUQ3hyejPygLW+H2VEkUVnV/LlkD5ge7chqAdBRUkU7uW6MoFGscPL1oTTLusjE5e1hRmHkdWQ=', '2323', NULL, NULL, NULL, NULL, 1, NULL, '2019-09-07 06:57:16', NULL, '2019-09-07 06:57:16', 0, NULL, NULL, NULL, 1);
INSERT INTO `t_user` VALUES (6, '43484f2d-61a2-434a-a8b3-be9b53602fd6', '的', 'STVxlaVguREAwKsIZPAllSYhII2ET8GQn7X9JCnMCjTRDsq5J3NfCKX8V6TuhjcgX1m+yVsUy8rZyLVCl2rbOuTQ3lFA6Bcztp+TluCucRyDuh1fPiyId2MD2ScMDdBCQv6RGxt5DKO+bHBE1Vxpmm5iTqISbw2+93hxYaztGE8=', '得到', NULL, NULL, NULL, NULL, 1, NULL, '2021-09-26 15:21:42', NULL, '2021-09-26 15:21:42', 0, NULL, NULL, NULL, 3);

-- ----------------------------
-- Table structure for t_user_event_log
-- ----------------------------
DROP TABLE IF EXISTS `t_user_event_log`;
CREATE TABLE `t_user_event_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_log`(`user_id`) USING BTREE,
  CONSTRAINT `fk_user_log` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;



-- ----------------------------
-- Table structure for t_user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role_relation`;
CREATE TABLE `t_user_role_relation`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  INDEX `fk_relation_user_id`(`user_id`) USING BTREE,
  INDEX `fk_relation_role_id`(`role_id`) USING BTREE,
  CONSTRAINT `fk_relation_role_id` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_relation_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_user_tag`;
CREATE TABLE `t_user_tag`  (
  `user_id` int(11) NOT NULL,
  `tag_id` int(11) NULL DEFAULT NULL,
  `user_property_flag` tinyint(1) NULL DEFAULT NULL COMMENT '是否分析得到的数据是1否0',
  INDEX `fk_user_likes`(`user_id`) USING BTREE,
  INDEX `fk_t_user_tagId`(`tag_id`) USING BTREE,
  CONSTRAINT `fk_user_likes` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_t_user_tagId` FOREIGN KEY (`tag_id`) REFERENCES `t_tag` (`tag_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user_token
-- ----------------------------
DROP TABLE IF EXISTS `t_user_token`;
CREATE TABLE `t_user_token`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户Id',
  `wx_open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信openId',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_toke_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `fk_toke_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

