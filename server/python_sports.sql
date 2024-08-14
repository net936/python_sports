/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_sports

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 28/07/2024 11:05:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1721137389652.jpeg', 'https://gitapp.cn/', '2024-07-16 21:43:12.242642');
INSERT INTO `b_ad` VALUES (2, 'ad/1721137395524.jpeg', 'https://m3u8player.org', '2024-07-16 21:43:19.019786');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '其它类', '2024-07-14 22:18:45.987588');
INSERT INTO `b_classification` VALUES (2, '轮滑类', '2024-07-14 22:18:50.513896');
INSERT INTO `b_classification` VALUES (3, '护具类', '2024-07-14 22:19:00.679727');
INSERT INTO `b_classification` VALUES (4, '拍类', '2024-07-15 21:40:22.683161');
INSERT INTO `b_classification` VALUES (5, '球类', '2024-07-27 21:32:34.424291');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (3, '11111111111111111111111', '2024-07-28 10:58:22.534125', 0, 15, 2);
INSERT INTO `b_comment` VALUES (4, '22222222222222222222', '2024-07-28 10:58:24.817946', 0, 15, 2);
INSERT INTO `b_comment` VALUES (5, '222222222', '2024-07-28 11:03:03.089544', 9, 13, 2);
INSERT INTO `b_comment` VALUES (6, '啊啊啊啊啊啊啊啊啊', '2024-07-28 11:03:06.406924', 6, 13, 2);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '111111111111111111111', '武松', '222211@gmail.com', '2222651534', '2024-07-16 21:44:09.325896');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 22:16:04.279025');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-16 20:21:00.495603');
INSERT INTO `b_login_log` VALUES (3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-16 20:50:16.324859');
INSERT INTO `b_login_log` VALUES (4, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-27 21:31:32.230430');
INSERT INTO `b_login_log` VALUES (5, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-27 21:32:08.409176');
INSERT INTO `b_login_log` VALUES (6, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-27 22:03:53.732202');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '13333', '2024-07-16 21:43:25.707058');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1419 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-07-14 22:15:17.643384', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-07-14 22:15:17.667573', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-07-14 22:15:17.684920', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-07-14 22:15:23.424358', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-07-14 22:15:23.425774', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-07-14 22:15:23.425774', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-07-14 22:16:04.289026', '/myapp/admin/adminLogin', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-07-14 22:16:04.680380', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-07-14 22:16:04.682866', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-07-14 22:16:06.473833', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-07-14 22:16:07.043209', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-07-14 22:16:07.046852', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-07-14 22:17:40.420909', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-07-14 22:17:40.913337', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-07-14 22:17:40.915633', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-07-14 22:18:26.044366', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-07-14 22:18:26.047314', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-07-14 22:18:28.427600', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-07-14 22:18:28.904266', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-07-14 22:18:28.908402', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-07-14 22:18:38.610302', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-07-14 22:18:46.000050', '/myapp/admin/classification/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-07-14 22:18:46.044791', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-07-14 22:18:50.516512', '/myapp/admin/classification/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-07-14 22:18:50.563901', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-07-14 22:19:00.684784', '/myapp/admin/classification/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-07-14 22:19:00.731570', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-07-14 22:19:02.041497', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-07-14 22:19:02.044840', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-07-14 22:19:25.160430', '/myapp/admin/thing/create', 'POST', NULL, '495');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-07-14 22:19:25.236570', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-07-14 22:19:27.417293', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-07-14 22:19:28.362333', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-07-14 22:19:28.385427', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-07-15 21:31:13.049420', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-07-15 21:31:13.051979', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-07-15 21:34:50.674405', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-07-15 21:36:47.688998', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-07-15 21:36:47.698034', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-07-15 21:36:47.707776', '/upload/cover/1720966756430.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-07-15 21:36:47.756927', '/upload/cover/1720966756430.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-07-15 21:36:47.947643', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-07-15 21:36:47.973063', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-07-15 21:37:49.168647', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-07-15 21:37:49.243341', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-07-15 21:38:23.963379', '/myapp/admin/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-07-15 21:38:30.497904', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-07-15 21:38:31.887999', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-07-15 21:38:44.245471', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-07-15 21:38:44.469843', '/myapp/admin/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-07-15 21:39:05.667240', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-07-15 21:39:05.895469', '/myapp/admin/thing/list', 'GET', NULL, '148');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-07-15 21:39:26.979675', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-07-15 21:39:27.171344', '/myapp/admin/thing/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-07-15 21:39:43.290029', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-07-15 21:39:43.496287', '/myapp/admin/thing/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-07-15 21:40:04.058844', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-07-15 21:40:04.257227', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-07-15 21:40:08.894929', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-07-15 21:40:22.690087', '/myapp/admin/classification/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-07-15 21:40:22.740408', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-07-15 21:40:24.974152', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-07-15 21:40:25.107057', '/myapp/admin/classification/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-07-15 21:40:26.906166', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-07-15 21:40:41.300847', '/myapp/admin/thing/update', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-07-15 21:40:41.512741', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-07-15 21:40:57.613118', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-07-15 21:40:57.813223', '/myapp/admin/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-07-15 21:41:03.838510', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-07-15 21:41:04.049976', '/myapp/admin/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-07-15 21:41:08.043838', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-07-15 21:41:08.270299', '/myapp/admin/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-07-15 21:41:11.922669', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-07-15 21:41:12.145316', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-07-15 21:41:16.720713', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-07-15 21:41:16.912383', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-07-15 21:41:33.365892', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-07-15 21:41:33.540145', '/myapp/admin/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-07-15 21:41:42.420724', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-07-15 21:41:45.186781', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-07-15 21:41:45.386245', '/myapp/admin/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-07-15 21:41:47.922218', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-07-15 21:41:47.955516', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-07-15 21:41:47.997467', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-07-15 21:41:48.008852', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-07-15 21:41:48.020832', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-07-15 21:41:48.039136', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-07-15 21:41:48.051557', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-07-15 21:41:48.051557', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-07-15 21:41:48.054920', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-07-15 21:41:48.078503', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-07-15 21:41:48.334172', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-07-15 21:41:48.336887', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-07-15 21:41:48.372950', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-07-15 21:41:54.476969', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-07-15 21:41:55.076071', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-07-15 21:41:55.707251', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-07-15 21:41:56.041906', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-07-15 21:41:57.884796', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-07-15 21:41:59.712502', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-07-15 21:42:46.158427', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-07-15 21:42:59.372556', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-07-15 21:42:59.581575', '/myapp/admin/thing/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-07-15 21:43:05.165879', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-07-15 21:43:05.213547', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-07-15 21:43:05.735889', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-07-15 21:43:35.843910', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-07-15 21:43:35.851311', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-07-15 21:43:35.859778', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-07-15 21:43:35.876464', '/myapp/index/thing/getRecommend', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-07-15 21:43:35.930963', '/myapp/index/thing/getRecommend', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-07-15 21:43:37.214435', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-07-15 21:43:37.215476', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-07-15 21:43:37.244024', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-07-15 21:43:37.294312', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-07-15 21:43:37.299381', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-07-15 21:43:37.299381', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-07-15 21:43:37.299381', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-07-15 21:43:37.299381', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-07-15 21:43:37.311220', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-07-15 21:43:37.328355', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-07-15 21:43:37.330570', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-07-15 21:43:37.332685', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-07-15 21:43:38.031560', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-07-15 21:43:38.048254', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-07-15 21:43:38.069350', '/myapp/index/notice/list_api', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-07-15 21:43:38.085774', '/myapp/index/notice/list_api', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-07-15 21:43:38.116824', '/myapp/index/notice/list_api', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-07-15 21:43:38.891797', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-07-15 21:43:38.908769', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-07-15 21:43:38.957336', '/myapp/index/classification/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-07-15 21:43:39.757161', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-07-15 21:43:39.774370', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-07-15 21:43:39.790246', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-07-15 21:43:39.833696', '/myapp/index/comment/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-07-15 21:43:39.890137', '/myapp/index/comment/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-07-15 21:43:41.046970', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-07-15 21:43:41.056167', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-07-15 21:43:41.092886', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-07-15 21:43:41.136759', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-07-15 21:43:41.859848', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-07-15 21:43:41.859848', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-07-15 21:43:41.890417', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-07-15 21:43:41.924009', '/myapp/index/comment/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-07-15 21:43:41.957199', '/myapp/index/comment/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-07-15 21:43:42.618570', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-07-15 21:43:42.624205', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-07-15 21:43:42.675574', '/myapp/index/classification/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-07-15 21:43:43.905416', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-07-15 21:43:43.917397', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-07-15 21:43:43.933809', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-07-15 21:43:43.967639', '/myapp/index/thing/detail', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-07-15 21:43:43.992405', '/myapp/index/thing/detail', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-07-15 21:45:31.005715', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-07-15 21:45:31.019396', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-07-15 21:45:31.022644', '/myapp/index/thing/getRecommend', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-07-15 21:45:31.064742', '/myapp/index/thing/getRecommend', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-07-15 21:45:31.100780', '/myapp/index/thing/getRecommend', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-07-15 21:58:08.966087', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-07-15 21:58:09.053590', '/myapp/index/comment/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-07-15 21:58:09.066353', '/myapp/index/comment/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-07-15 21:58:09.268302', '/myapp/index/comment/list', 'GET', NULL, '321');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-07-15 21:58:09.298816', '/myapp/index/comment/list', 'GET', NULL, '352');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-07-15 21:58:37.185916', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-07-15 21:58:37.226489', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-07-15 21:58:37.240829', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-07-15 21:58:37.264769', '/myapp/index/thing/getRecommend', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-07-15 21:58:37.297087', '/upload/cover/1721050716882.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-07-15 21:58:37.306755', '/upload/cover/1721050716882.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-07-15 21:58:37.348397', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-07-15 21:58:37.365057', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-07-15 21:58:37.365057', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-07-15 21:59:17.380700', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-07-15 21:59:17.387092', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-07-15 21:59:17.403457', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-07-15 21:59:17.435820', '/myapp/admin/ad/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-07-15 21:59:17.441876', '/myapp/admin/ad/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-07-15 21:59:17.467927', '/upload/cover/1721050716882.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-07-15 21:59:17.499491', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-07-15 21:59:17.499491', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-07-15 21:59:17.499491', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-07-15 22:03:05.462301', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-07-15 22:04:39.284593', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-07-15 22:04:39.290538', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-07-15 22:04:39.340578', '/myapp/index/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-07-15 22:04:39.353641', '/myapp/index/comment/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-07-15 22:04:39.370361', '/upload/cover/1721050716882.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-07-15 22:04:39.426401', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-07-15 22:04:39.428745', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-07-15 22:04:39.434258', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-07-15 22:05:56.450248', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-07-15 22:05:56.480721', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-07-15 22:05:56.492454', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-07-15 22:05:56.508920', '/myapp/admin/ad/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-07-15 22:05:56.522729', '/upload/cover/1721050716882.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-07-15 22:05:56.578051', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-07-15 22:05:56.578051', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-07-15 22:05:56.578051', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-07-15 22:06:38.120653', '/myapp/index/thing/getRecommend', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-07-15 22:06:38.230509', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-07-15 22:06:38.230509', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-07-15 22:06:38.230509', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-07-15 22:06:38.230509', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-07-15 22:06:38.246161', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-07-15 22:06:38.309544', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-07-15 22:06:38.325264', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-07-15 22:06:38.325264', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-07-15 22:06:38.325264', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-07-15 22:06:38.325264', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-07-15 22:06:39.218255', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-07-15 22:06:39.257767', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-07-15 22:06:39.310804', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-07-15 22:06:39.310804', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-07-15 22:06:39.310804', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-07-15 22:06:39.310804', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-07-15 22:06:39.310804', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-07-15 22:06:39.322467', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-07-15 22:06:39.372262', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-07-15 22:06:39.372807', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-07-15 22:06:39.377897', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-07-15 22:06:39.379414', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-07-15 22:06:55.079919', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-07-15 22:06:55.101495', '/myapp/admin/ad/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-07-15 22:06:55.126218', '/myapp/admin/ad/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-07-15 22:06:55.151533', '/myapp/admin/ad/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-07-15 22:06:55.166428', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-07-15 22:06:55.218163', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-07-15 22:06:55.218163', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-07-15 22:06:55.218163', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-07-15 22:06:55.227464', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-07-15 22:07:04.044489', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-07-15 22:07:04.059708', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-07-15 22:07:04.106394', '/myapp/index/thing/detail', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-07-15 22:07:04.140080', '/myapp/index/thing/detail', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-07-15 22:07:04.157175', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-07-15 22:07:04.197639', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-07-15 22:07:04.197639', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-07-15 22:07:04.197639', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-07-15 22:08:59.322707', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-07-15 22:08:59.322707', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-07-15 22:08:59.385386', '/myapp/index/thing/detail', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-07-15 22:08:59.394332', '/myapp/index/thing/detail', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-07-15 22:08:59.424074', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-07-15 22:08:59.471772', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-07-15 22:08:59.487906', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-07-15 22:08:59.487906', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-07-16 20:19:27.283913', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-07-16 20:19:27.286784', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-07-16 20:19:27.306827', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-07-16 20:19:27.322193', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-07-16 20:19:27.339734', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-07-16 20:19:27.365699', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-07-16 20:19:27.365699', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-07-16 20:19:27.365699', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-07-16 20:20:53.041312', '/myapp/index/user/login', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-07-16 20:20:57.984132', '/myapp/index/user/register', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-07-16 20:21:00.502383', '/myapp/index/user/login', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-07-16 20:21:00.950323', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-07-16 20:21:00.991422', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-07-16 20:21:01.023547', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-07-16 20:21:01.075942', '/upload/cover/1721050833371.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-07-16 20:21:01.080277', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-07-16 20:21:01.080277', '/upload/cover/1721050833371.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-07-16 20:21:01.087955', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-07-16 20:21:01.090944', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-07-16 20:21:01.090944', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-07-16 20:21:03.086074', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-07-16 20:21:03.086074', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-07-16 20:21:03.117790', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-07-16 20:21:03.151135', '/myapp/index/thing/detail', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-07-16 20:21:03.184552', '/myapp/index/thing/detail', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-07-16 20:21:36.108118', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-07-16 20:21:54.160759', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-07-16 20:21:59.011966', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-07-16 20:23:30.771617', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-07-16 20:23:58.227977', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-07-16 20:27:09.185464', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-07-16 20:31:34.742727', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-07-16 20:32:18.221569', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-07-16 20:33:22.122989', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-07-16 20:34:52.683708', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-07-16 20:35:19.844779', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-07-16 20:35:23.196613', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-07-16 20:35:29.270164', '/myapp/index/user/info', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-07-16 20:36:52.986657', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-07-16 20:37:05.842736', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-07-16 20:37:24.942991', '/myapp/index/order/create', 'POST', NULL, '2810');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-07-16 20:39:40.111290', '/myapp/index/order/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-07-16 20:39:40.607327', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-07-16 20:40:10.016125', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-07-16 20:40:10.018682', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-07-16 20:40:10.018682', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-07-16 20:40:10.034315', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-07-16 20:40:10.047277', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-07-16 20:40:15.078737', '/myapp/index/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-07-16 20:41:13.060459', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-07-16 20:46:16.712148', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-07-16 20:46:16.716863', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-07-16 20:46:16.730946', '/myapp/index/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-07-16 20:46:16.739506', '/myapp/index/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-07-16 20:46:16.743447', '/myapp/index/order/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-07-16 20:50:07.417668', '/myapp/index/order/cancel_order', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-07-16 20:50:07.449849', '/myapp/index/order/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-07-16 20:50:10.763307', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-07-16 20:50:10.881959', '/myapp/admin/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-07-16 20:50:16.324859', '/myapp/admin/adminLogin', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-07-16 20:50:16.414599', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-07-16 20:50:16.504471', '/myapp/admin/classification/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-07-16 20:51:29.985072', '/myapp/admin/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-07-16 20:53:11.770109', '/myapp/admin/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-07-16 20:53:46.185984', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-07-16 21:03:39.028364', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-07-16 21:07:57.635632', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-07-16 21:08:59.179599', '/myapp/admin/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-07-16 21:09:05.714105', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-07-16 21:09:08.736743', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-07-16 21:10:02.117846', '/myapp/admin/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-07-16 21:10:04.900950', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-07-16 21:10:57.150904', '/myapp/admin/order/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-07-16 21:10:59.520562', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-07-16 21:11:35.916420', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-07-16 21:11:38.803725', '/myapp/admin/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-07-16 21:12:44.938683', '/myapp/admin/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-07-16 21:12:47.765998', '/myapp/admin/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-07-16 21:13:05.213161', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-07-16 21:13:06.983888', '/myapp/admin/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-07-16 21:13:17.587016', '/myapp/admin/order/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-07-16 21:13:38.646809', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-07-16 21:13:41.314308', '/myapp/admin/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-07-16 21:14:11.860379', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-07-16 21:16:51.665236', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-07-16 21:18:35.584954', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-07-16 21:18:54.206781', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-07-16 21:19:10.826739', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-07-16 21:19:39.057004', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-07-16 21:19:51.300803', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-07-16 21:19:53.540213', '/myapp/admin/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-07-16 21:19:57.359870', '/myapp/admin/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-07-16 21:20:00.060513', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-07-16 21:20:25.634855', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-07-16 21:22:44.067478', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-07-16 21:23:02.026417', '/myapp/admin/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-07-16 21:23:44.101987', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-07-16 21:23:47.506443', '/myapp/admin/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-07-16 21:24:31.224093', '/myapp/admin/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-07-16 21:24:33.741086', '/myapp/admin/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-07-16 21:26:52.433315', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-07-16 21:26:54.350789', '/myapp/admin/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-07-16 21:27:10.839771', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-07-16 21:27:18.386966', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-07-16 21:27:39.095258', '/myapp/admin/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-07-16 21:27:46.895947', '/myapp/admin/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-07-16 21:28:48.157000', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-07-16 21:29:08.241048', '/myapp/admin/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-07-16 21:29:40.497766', '/myapp/admin/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-07-16 21:29:54.253473', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-07-16 21:29:54.287181', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-07-16 21:29:54.301339', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-07-16 21:29:55.953934', '/myapp/admin/ad/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-07-16 21:29:55.969927', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-07-16 21:29:55.970373', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-07-16 21:29:55.989541', '/myapp/admin/ad/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-07-16 21:29:56.003761', '/myapp/admin/ad/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-07-16 21:30:06.158170', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-07-16 21:30:06.181628', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-07-16 21:30:06.209579', '/myapp/admin/ad/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-07-16 21:30:06.209579', '/myapp/admin/ad/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-07-16 21:30:11.285908', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-07-16 21:30:31.325611', '/myapp/index/order/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-07-16 21:30:31.372063', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-07-16 21:30:32.907004', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-07-16 21:30:32.924343', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-07-16 21:30:32.924343', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-07-16 21:30:32.941685', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-07-16 21:30:32.948224', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-07-16 21:30:39.382217', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-07-16 21:30:39.746680', '/myapp/admin/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-07-16 21:31:28.965960', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-07-16 21:31:29.382114', '/myapp/admin/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-07-16 21:31:35.908780', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-07-16 21:31:35.908780', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-07-16 21:31:35.957880', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-07-16 21:31:36.888957', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-07-16 21:31:36.892502', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-07-16 21:31:36.892502', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-07-16 21:31:36.939970', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-07-16 21:31:36.958364', '/myapp/index/comment/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-07-16 21:31:41.326038', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-07-16 21:31:41.329244', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-07-16 21:31:41.361656', '/myapp/admin/ad/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-07-16 21:31:41.397464', '/myapp/admin/ad/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-07-16 21:31:43.421845', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-07-16 21:31:43.429056', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-07-16 21:31:43.463856', '/myapp/admin/ad/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-07-16 21:31:43.497013', '/myapp/admin/ad/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-07-16 21:31:45.747023', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-07-16 21:31:45.760135', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-07-16 21:31:45.789900', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-07-16 21:31:45.811349', '/myapp/index/comment/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-07-16 21:31:47.539209', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-07-16 21:31:47.548145', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-07-16 21:31:47.589329', '/myapp/index/classification/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-07-16 21:31:50.271284', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-07-16 21:31:50.276635', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-07-16 21:31:50.294526', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-07-16 21:31:50.341416', '/myapp/index/comment/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-07-16 21:31:50.363542', '/myapp/index/comment/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-07-16 21:31:52.074025', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-07-16 21:31:52.078013', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-07-16 21:31:52.121687', '/myapp/index/classification/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-07-16 21:31:53.797077', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-07-16 21:31:53.812996', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-07-16 21:31:53.830362', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-07-16 21:31:53.847684', '/myapp/index/thing/detail', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-07-16 21:31:53.880350', '/myapp/index/thing/detail', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-07-16 21:31:56.165581', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-07-16 21:31:56.181027', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-07-16 21:31:56.197154', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-07-16 21:31:57.478202', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-07-16 21:31:57.483878', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-07-16 21:31:57.497670', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-07-16 21:31:57.526460', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-07-16 21:31:57.559078', '/myapp/index/comment/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-07-16 21:31:58.958626', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-07-16 21:31:58.965752', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-07-16 21:31:59.010596', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-07-16 21:31:59.702423', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-07-16 21:31:59.722393', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-07-16 21:31:59.722393', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-07-16 21:31:59.754677', '/myapp/index/thing/detail', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-07-16 21:31:59.787428', '/myapp/index/thing/detail', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-07-16 21:32:01.158290', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-07-16 21:32:01.165789', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-07-16 21:32:01.205760', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-07-16 21:32:13.613509', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-07-16 21:32:14.537160', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-07-16 21:32:14.547300', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-07-16 21:32:14.576297', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-07-16 21:35:12.778163', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-07-16 21:35:12.794262', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-07-16 21:35:12.828144', '/myapp/index/classification/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-07-16 21:35:29.410098', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-07-16 21:35:29.425601', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-07-16 21:35:29.459029', '/myapp/index/classification/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-07-16 21:36:21.600456', '/myapp/index/thing/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-07-16 21:36:21.616083', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-07-16 21:36:21.649876', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-07-16 21:37:26.898591', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-07-16 21:37:26.912804', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-07-16 21:37:26.946314', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-07-16 21:37:52.908358', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-07-16 21:38:22.837363', '/myapp/index/order/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-07-16 21:38:22.910166', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-07-16 21:38:47.147808', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-07-16 21:38:47.163430', '/myapp/index/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-07-16 21:38:47.179111', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-07-16 21:38:47.183459', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-07-16 21:38:47.194917', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-07-16 21:39:29.312078', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-07-16 21:39:29.317331', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-07-16 21:39:29.361535', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-07-16 21:39:30.062543', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-07-16 21:39:30.077390', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-07-16 21:39:30.077390', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-07-16 21:39:30.128156', '/myapp/admin/ad/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-07-16 21:39:30.144788', '/myapp/admin/ad/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-07-16 21:39:32.717844', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-07-16 21:39:37.053897', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-07-16 21:39:37.073042', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-07-16 21:39:37.087370', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-07-16 21:39:37.111311', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-07-16 21:39:37.137239', '/myapp/index/comment/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-07-16 21:39:39.829945', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-07-16 21:39:39.833965', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-07-16 21:39:39.877717', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-07-16 21:39:47.126125', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-07-16 21:39:47.127697', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-07-16 21:39:47.144131', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-07-16 21:39:47.177484', '/myapp/index/comment/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-07-16 21:39:47.209619', '/myapp/index/comment/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-07-16 21:39:49.427752', '/myapp/index/thing/addCollectUser', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-07-16 21:39:49.482428', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-07-16 21:39:49.878440', '/myapp/index/thing/addWishUser', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-07-16 21:39:49.916343', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-07-16 21:39:51.403111', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-07-16 21:39:51.432433', '/myapp/index/thing/getRecommend', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-07-16 21:39:54.336949', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-07-16 21:39:54.364133', '/myapp/index/thing/getWishThingList', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-07-16 21:39:54.364133', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-07-16 21:39:54.380889', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-07-16 21:39:54.397597', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-07-16 21:39:55.653913', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-07-16 21:39:56.308101', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-07-16 21:39:57.105929', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-07-16 21:39:57.114157', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-07-16 21:39:57.148214', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-07-16 21:40:01.741202', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-07-16 21:40:01.756742', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-07-16 21:40:03.349576', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-07-16 21:40:03.389851', '/myapp/index/thing/getRecommend', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-07-16 21:40:04.184110', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-07-16 21:40:04.184110', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-07-16 21:40:04.234155', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-07-16 21:40:09.929698', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-07-16 21:40:09.932634', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-07-16 21:40:09.953911', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-07-16 21:40:09.997589', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-07-16 21:40:10.013020', '/myapp/index/thing/detail', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-07-16 21:40:11.740539', '/myapp/index/thing/addCollectUser', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-07-16 21:40:11.769234', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-07-16 21:40:12.132260', '/myapp/index/thing/addWishUser', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-07-16 21:40:12.172379', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-07-16 21:40:13.367723', '/myapp/index/thing/rate', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-07-16 21:40:50.200828', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-07-16 21:40:50.217531', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-07-16 21:40:50.217531', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-07-16 21:40:50.267710', '/myapp/index/comment/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-07-16 21:40:50.284462', '/myapp/index/comment/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-07-16 21:40:58.756604', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-07-16 21:40:58.774212', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-07-16 21:40:58.795103', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-07-16 21:40:58.831122', '/myapp/index/comment/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-07-16 21:41:02.680608', '/myapp/index/thing/addWishUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-07-16 21:41:02.728324', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-07-16 21:41:03.110923', '/myapp/index/thing/addCollectUser', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-07-16 21:41:03.179551', '/myapp/index/thing/detail', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-07-16 21:41:14.459223', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-07-16 21:41:49.234906', '/myapp/index/order/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-07-16 21:41:49.263877', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-07-16 21:41:51.672635', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-07-16 21:41:51.691917', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-07-16 21:41:51.705769', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-07-16 21:41:51.723699', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-07-16 21:41:51.731735', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-07-16 21:42:17.879167', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-07-16 21:42:18.278969', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-07-16 21:42:38.558307', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-07-16 21:42:38.655025', '/myapp/admin/classification/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-07-16 21:42:39.769763', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-07-16 21:42:40.771805', '/myapp/admin/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-07-16 21:42:43.454684', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-07-16 21:42:43.454684', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-07-16 21:42:43.503272', '/myapp/index/classification/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-07-16 21:42:44.166478', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-07-16 21:42:44.173707', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-07-16 21:42:44.173707', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-07-16 21:42:44.219540', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-07-16 21:42:44.259955', '/myapp/admin/ad/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-07-16 21:42:47.951893', '/myapp/index/comment/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-07-16 21:42:47.982193', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-07-16 21:42:49.448087', '/myapp/index/comment/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-07-16 21:42:49.477464', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-07-16 21:42:50.565453', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-07-16 21:42:52.047134', '/myapp/index/comment/like', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-07-16 21:42:52.077873', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-07-16 21:42:52.836527', '/myapp/index/comment/like', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-07-16 21:42:52.876096', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-07-16 21:42:53.682267', '/myapp/index/comment/like', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-07-16 21:42:53.714324', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-07-16 21:42:53.893928', '/myapp/index/comment/like', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-07-16 21:42:53.929937', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-07-16 21:42:54.036375', '/myapp/index/comment/like', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-07-16 21:42:54.064790', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-07-16 21:42:54.200216', '/myapp/index/comment/like', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-07-16 21:42:54.230943', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-07-16 21:42:54.350102', '/myapp/index/comment/like', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-07-16 21:42:54.377363', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-07-16 21:42:54.541793', '/myapp/index/comment/like', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-07-16 21:42:54.577609', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-07-16 21:42:56.278793', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-07-16 21:43:00.930263', '/myapp/admin/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-07-16 21:43:01.391589', '/myapp/admin/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-07-16 21:43:02.279737', '/myapp/admin/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-07-16 21:43:03.910234', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-07-16 21:43:12.246860', '/myapp/admin/ad/create', 'POST', NULL, '342');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-07-16 21:43:12.263165', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-07-16 21:43:12.293163', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-07-16 21:43:19.023943', '/myapp/admin/ad/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-07-16 21:43:19.069456', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-07-16 21:43:19.102128', '/upload/ad/1721137395524.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-07-16 21:43:20.189964', '/myapp/admin/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-07-16 21:43:25.726366', '/myapp/admin/notice/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-07-16 21:43:25.740052', '/myapp/admin/notice/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-07-16 21:43:30.654288', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-07-16 21:43:30.675758', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-07-16 21:43:30.692438', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-07-16 21:43:30.692438', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-07-16 21:43:30.727040', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-07-16 21:43:31.885884', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-07-16 21:43:34.709416', '/myapp/admin/overview/count', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-07-16 21:43:52.333746', '/myapp/admin/feedback/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-07-16 21:43:55.169812', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-07-16 21:44:09.328428', '/myapp/index/feedback/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-07-16 21:44:10.922718', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-07-16 21:44:12.249343', '/myapp/admin/overview/count', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-07-16 21:44:12.907712', '/myapp/admin/feedback/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-07-16 21:44:38.289341', '/myapp/admin/feedback/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-07-16 21:44:38.999203', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-07-16 21:45:18.002372', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-07-16 21:45:18.356605', '/myapp/admin/feedback/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-07-16 21:45:21.497020', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-07-16 21:45:21.499748', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-07-16 21:45:21.533311', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-07-16 21:46:05.133958', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-07-16 21:46:05.133958', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-07-16 21:46:05.183987', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-07-16 21:46:06.714344', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-07-16 21:46:06.759499', '/myapp/index/thing/getRecommend', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-07-16 21:46:07.346069', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-07-16 21:46:07.355687', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-07-16 21:46:07.389910', '/myapp/index/classification/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-07-16 21:46:14.742489', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-07-16 21:46:14.775235', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-07-16 21:46:14.792920', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-07-16 21:46:14.808757', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-07-16 21:46:14.826633', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-07-16 21:46:16.038413', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-07-16 21:46:16.791448', '/myapp/index/comment/listMyComments', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-07-16 21:46:43.087844', '/myapp/index/comment/listMyComments', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-07-16 21:46:43.114842', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-07-16 21:46:43.116853', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-07-16 21:46:43.138351', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-07-16 21:46:43.138351', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-07-16 21:46:43.787654', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-07-16 21:46:49.437954', '/myapp/admin/feedback/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-07-16 21:46:51.193787', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-07-16 21:46:51.289512', '/myapp/admin/thing/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-07-16 21:46:59.752952', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-07-16 21:47:00.402413', '/myapp/admin/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-07-16 21:47:26.415146', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-07-16 21:47:26.421165', '/myapp/index/classification/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-07-16 21:47:26.456486', '/myapp/index/classification/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-07-16 21:47:26.795214', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-07-16 21:47:26.831033', '/myapp/index/thing/getRecommend', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-07-16 21:47:27.994963', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-07-16 21:47:27.999953', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-07-16 21:47:28.039912', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-07-16 21:47:29.112100', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-07-16 21:47:29.130623', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-07-16 21:47:29.144664', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-07-16 21:47:29.186807', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-07-16 21:47:29.186807', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-07-16 21:47:29.186807', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-07-16 21:47:29.203697', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-07-16 21:47:29.724254', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-07-16 21:47:29.736726', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-07-16 21:47:31.907261', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-07-16 21:47:31.913567', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-07-16 21:47:31.963186', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-07-16 21:47:50.836094', '/myapp/admin/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-07-16 21:48:02.418626', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-07-16 21:48:02.445184', '/myapp/index/thing/getRecommend', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-07-16 21:48:29.959701', '/myapp/admin/user/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-07-16 21:48:37.343422', '/myapp/admin/user/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-07-16 21:48:37.379662', '/myapp/admin/user/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-07-16 21:48:47.850583', '/myapp/admin/user/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-07-16 21:48:47.871454', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-07-16 21:48:57.255161', '/myapp/admin/user/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-07-16 21:48:57.298710', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-07-16 21:49:08.550861', '/myapp/admin/user/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-07-16 21:49:08.584307', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-07-16 21:49:25.047775', '/myapp/admin/user/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-07-16 21:49:25.100593', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-07-16 21:49:28.075024', '/myapp/admin/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-07-16 21:49:28.712593', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-07-16 21:49:29.468957', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-07-16 21:49:29.579700', '/myapp/admin/classification/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-07-16 21:49:31.752406', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-07-16 21:49:31.752406', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-07-16 21:49:31.802397', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-07-16 21:49:32.569124', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-07-16 21:49:33.220288', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-07-16 21:49:33.921186', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-07-16 21:49:37.866625', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-07-16 21:49:37.866625', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-07-16 21:49:37.916558', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-07-16 21:49:37.933467', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-07-16 21:49:37.933467', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-07-16 21:49:37.933467', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-07-16 21:49:37.933467', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-07-16 21:49:39.616220', '/myapp/index/thing/addWishUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-07-16 21:49:39.652425', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-07-16 21:49:40.050363', '/myapp/index/thing/addCollectUser', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-07-16 21:49:40.100520', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-07-16 21:49:42.093382', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-07-16 21:49:42.105815', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-07-16 21:49:42.117352', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-07-16 21:49:42.121055', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-07-16 21:49:42.133739', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-07-16 21:49:50.448763', '/myapp/index/user/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-07-16 21:49:51.267948', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-07-16 21:49:51.306083', '/upload/avatar/1721137786035.png', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-07-16 21:49:51.308720', '/upload/avatar/1721137786035.png', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-07-16 21:49:51.317833', '/upload/avatar/1721137786035.png', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-07-16 21:49:51.317833', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-07-16 21:49:51.337091', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-07-16 21:49:52.893053', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-07-16 21:49:52.896773', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-07-16 21:49:52.929258', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-07-16 21:49:54.579285', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-07-16 21:49:54.597618', '/myapp/index/thing/getRecommend', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-07-16 21:49:55.178918', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-07-16 21:49:55.194886', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-07-16 21:49:55.214074', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-07-16 21:49:57.594852', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-07-16 21:49:57.634981', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-07-16 21:49:57.635951', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-07-16 21:49:57.643656', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-07-16 21:49:57.652678', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-07-16 21:49:58.729337', '/myapp/index/comment/listMyComments', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-07-16 21:49:59.484996', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-07-16 21:50:00.449600', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-07-16 21:50:00.452993', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-07-16 21:50:00.502942', '/myapp/index/classification/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-07-16 21:50:05.873172', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-07-16 21:50:07.876651', '/myapp/admin/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-07-16 21:50:09.036685', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-07-16 21:50:09.786228', '/myapp/admin/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-07-16 21:50:10.722992', '/myapp/admin/overview/count', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-07-16 21:50:11.394135', '/myapp/admin/feedback/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-07-16 21:50:13.252377', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1062');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-07-16 21:50:13.903354', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-07-16 21:50:14.004091', '/myapp/admin/classification/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-07-27 21:30:22.710184', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-07-27 21:30:22.766521', '/myapp/index/thing/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-07-27 21:30:23.116534', '/myapp/index/thing/list', 'GET', NULL, '442');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-07-27 21:30:45.413647', '/myapp/index/thing/getRecommend', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-07-27 21:30:45.465365', '/myapp/index/thing/getRecommend', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-07-27 21:30:46.013547', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-07-27 21:30:46.095720', '/myapp/index/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-07-27 21:30:46.179447', '/myapp/index/thing/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-07-27 21:31:32.243067', '/myapp/admin/adminLogin', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-07-27 21:31:33.154123', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-07-27 21:31:33.288836', '/myapp/admin/classification/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-07-27 21:31:35.653136', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-07-27 21:32:08.413682', '/myapp/admin/adminLogin', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-07-27 21:32:08.693485', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-07-27 21:32:08.821363', '/myapp/admin/classification/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-07-27 21:32:25.777310', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-07-27 21:32:34.440945', '/myapp/admin/classification/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-07-27 21:32:34.479987', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-07-27 21:32:50.681747', '/myapp/admin/classification/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-07-27 21:32:50.742432', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-07-27 21:32:58.447883', '/myapp/admin/classification/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-07-27 21:32:58.497004', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-07-27 21:33:04.664571', '/myapp/admin/classification/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-07-27 21:33:04.712213', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-07-27 21:33:18.848653', '/myapp/admin/classification/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-07-27 21:33:18.900796', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-07-27 21:33:26.565352', '/myapp/admin/classification/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-07-27 21:33:26.615232', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-07-27 21:33:29.187546', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-07-27 21:33:29.355797', '/myapp/admin/classification/list', 'GET', NULL, '176');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-07-27 21:33:45.199948', '/myapp/admin/thing/delete', 'POST', NULL, '94');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-07-27 21:33:45.391225', '/myapp/admin/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-07-27 21:33:53.924141', '/myapp/admin/thing/delete', 'POST', NULL, '71');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-07-27 21:33:54.001319', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-07-27 21:33:56.524524', '/myapp/admin/thing/delete', 'POST', NULL, '82');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-07-27 21:33:56.561051', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-07-27 21:36:21.677534', '/myapp/admin/classification/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-07-27 21:36:21.682228', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-07-27 21:37:07.736633', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-07-27 21:37:07.745934', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-07-27 21:37:19.766350', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-07-27 21:37:19.769997', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-07-27 21:37:25.423217', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-07-27 21:37:25.435547', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-07-27 21:37:40.943363', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-07-27 21:37:40.946952', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-07-27 21:37:49.788146', '/myapp/admin/classification/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-07-27 21:37:49.804814', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-07-27 21:42:18.876326', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-07-27 21:42:18.882391', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-07-27 21:42:20.138336', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-07-27 21:42:20.837336', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-07-27 21:42:20.847081', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-07-27 21:45:52.035941', '/myapp/admin/thing/create', 'POST', NULL, '578');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-07-27 21:45:52.151240', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-07-27 21:46:58.484218', '/upload/cover/1722087866210.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-07-27 21:47:18.867331', '/myapp/admin/thing/update', 'POST', NULL, '76');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-07-27 21:47:18.947031', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-07-27 21:47:29.938134', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-07-27 21:47:30.482933', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-07-27 21:47:30.495785', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-07-27 21:47:56.390153', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-07-27 21:47:56.411409', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-07-27 21:48:11.921752', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-07-27 21:48:12.011141', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-07-27 21:48:17.849648', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-07-27 21:51:20.990600', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-07-27 21:52:03.090317', '/myapp/admin/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-07-27 21:52:11.817921', '/myapp/admin/thing/list', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-07-27 21:52:32.254834', '/myapp/admin/thing/update', 'POST', NULL, '379');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-07-27 21:52:32.472303', '/myapp/admin/thing/list', 'GET', NULL, '148');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-07-27 21:54:23.557684', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-07-27 21:55:34.577554', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-07-27 21:55:34.734743', '/myapp/admin/classification/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-07-27 21:55:52.230692', '/myapp/admin/thing/update', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-07-27 21:55:52.459975', '/myapp/admin/thing/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-07-27 21:56:03.509615', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-07-27 21:56:03.725949', '/myapp/admin/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-07-27 21:56:17.166955', '/myapp/admin/thing/update', 'POST', NULL, '76');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-07-27 21:56:17.395831', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-07-27 21:56:33.093679', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-07-27 21:56:33.350909', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-07-27 21:56:50.607275', '/myapp/admin/thing/update', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-07-27 21:56:50.818350', '/myapp/admin/thing/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-07-27 21:57:09.772007', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-07-27 21:57:09.985430', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-07-27 21:57:34.769755', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-07-27 21:57:35.014872', '/myapp/admin/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-07-27 21:57:52.298120', '/myapp/admin/thing/update', 'POST', NULL, '75');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-07-27 21:57:52.556229', '/myapp/admin/thing/list', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-07-27 21:58:08.101660', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-07-27 21:58:08.318382', '/myapp/admin/thing/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-07-27 21:58:25.019074', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-07-27 21:58:25.247193', '/myapp/admin/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-07-27 21:58:29.849805', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-07-27 21:58:29.897063', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-07-27 21:58:29.963579', '/upload/cover/1722088557742.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-07-27 21:58:29.978769', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-07-27 21:58:29.980392', '/upload/cover/1722088583447.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-07-27 21:58:29.981505', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-07-27 21:58:29.994788', '/upload/cover/1722088583447.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-07-27 21:58:30.004930', '/upload/cover/1722088601262.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-07-27 21:58:30.051568', '/upload/cover/1722088601262.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-07-27 21:58:30.096717', '/upload/cover/1722088694217.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-07-27 21:58:30.096717', '/upload/cover/1722088694217.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-07-27 21:58:30.096717', '/upload/cover/1722088694217.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-07-27 21:58:30.096717', '/upload/cover/1722088694217.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-07-27 21:58:30.096717', '/upload/cover/1722088694217.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-07-27 21:58:38.110093', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-07-27 21:58:39.313892', '/myapp/admin/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-07-27 21:58:40.012317', '/myapp/admin/user/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-07-27 21:58:41.160401', '/myapp/admin/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-07-27 21:58:43.674619', '/myapp/admin/order/delete', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-07-27 21:58:43.736290', '/myapp/admin/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-07-27 21:58:45.472310', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-07-27 21:58:45.617052', '/myapp/admin/classification/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-07-27 21:58:50.756995', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-07-27 21:58:52.130397', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-07-27 21:58:52.576508', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-07-27 21:58:53.245632', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-07-27 21:58:54.334778', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-07-27 21:58:58.851344', '/upload/cover/1722088557742.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-07-27 21:59:02.284624', '/myapp/admin/thing/update', 'POST', NULL, '75');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-07-27 21:59:02.485413', '/myapp/admin/thing/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-07-27 21:59:04.815235', '/upload/cover/1722088637722.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-07-27 21:59:08.975727', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-07-27 21:59:09.045988', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-07-27 21:59:09.045988', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-07-27 21:59:09.048611', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-07-27 21:59:09.054129', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-07-27 21:59:09.054129', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-07-27 21:59:09.382324', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-07-27 21:59:09.943059', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-07-27 21:59:10.915450', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-07-27 21:59:11.655245', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-07-27 21:59:12.068771', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-07-27 21:59:13.086935', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-07-27 21:59:18.699302', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-07-27 21:59:18.713190', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-07-27 21:59:18.756043', '/myapp/admin/ad/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-07-27 21:59:18.771858', '/myapp/admin/ad/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-07-27 21:59:18.806243', '/upload/cover/1722088347812.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-07-27 21:59:18.852663', '/upload/cover/1722088557742.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-07-27 21:59:18.852663', '/upload/cover/1722088557742.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-07-27 21:59:19.848667', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-07-27 21:59:19.893589', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-07-27 21:59:19.939017', '/upload/cover/1722088694217.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-07-27 21:59:19.939017', '/upload/cover/1722088694217.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-07-27 21:59:19.939017', '/upload/cover/1722088694217.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-07-27 21:59:20.604128', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-07-27 21:59:20.611279', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-07-27 21:59:20.645016', '/myapp/index/comment/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-07-27 21:59:20.691759', '/myapp/index/comment/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-07-27 21:59:21.605393', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-07-27 21:59:21.648589', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-07-27 21:59:22.399998', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-07-27 21:59:22.437383', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-07-27 21:59:22.493826', '/myapp/index/thing/detail', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-07-27 21:59:22.529030', '/myapp/index/thing/detail', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-07-27 21:59:23.427022', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-07-27 21:59:23.491720', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-07-27 21:59:24.399520', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-07-27 21:59:24.432351', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-07-27 21:59:24.472483', '/myapp/index/comment/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-07-27 21:59:24.510702', '/myapp/index/comment/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-07-27 21:59:25.220599', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-07-27 21:59:25.279835', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-07-27 21:59:26.284422', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-07-27 21:59:26.308835', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-07-27 21:59:26.364916', '/myapp/index/thing/detail', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-07-27 21:59:26.390179', '/myapp/index/thing/detail', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-07-27 21:59:27.529885', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-07-27 21:59:27.571894', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-07-27 21:59:28.368492', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-07-27 21:59:28.399637', '/myapp/admin/ad/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-07-27 21:59:28.433059', '/myapp/admin/ad/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-07-27 21:59:28.472224', '/myapp/admin/ad/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-07-27 21:59:29.370360', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-07-27 21:59:29.430170', '/myapp/index/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-07-27 21:59:29.982711', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-07-27 21:59:30.000598', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-07-27 21:59:30.049639', '/myapp/index/thing/detail', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-07-27 21:59:30.076535', '/myapp/index/thing/detail', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-07-27 21:59:31.015231', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-07-27 21:59:31.073291', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-07-27 21:59:31.737309', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-07-27 21:59:31.752470', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-07-27 21:59:31.806324', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-07-27 21:59:31.827453', '/myapp/index/comment/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-07-27 21:59:31.847721', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-07-27 21:59:32.636528', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-07-27 21:59:32.691734', '/myapp/index/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-07-27 21:59:32.756335', '/upload/cover/1722088663673.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-07-27 21:59:32.756335', '/upload/cover/1722088663673.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-07-27 21:59:32.756335', '/upload/cover/1722088663673.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-07-27 21:59:32.761851', '/upload/cover/1722088663673.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-07-27 21:59:32.761851', '/upload/cover/1722088663673.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-07-27 21:59:32.761851', '/upload/cover/1722088663673.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-07-27 21:59:33.861254', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-07-27 21:59:33.878769', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-07-27 21:59:33.929741', '/myapp/index/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-07-27 21:59:33.946921', '/myapp/index/comment/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-07-27 21:59:35.380701', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-07-27 21:59:35.444961', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-07-27 21:59:36.688731', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-07-27 21:59:36.698333', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-07-27 21:59:36.748684', '/myapp/admin/ad/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-07-27 21:59:36.782175', '/myapp/admin/ad/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-07-27 21:59:37.831483', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-07-27 21:59:37.883204', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-07-27 21:59:38.509231', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-07-27 21:59:38.526756', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-07-27 21:59:38.575251', '/myapp/index/thing/getRecommend', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-07-27 21:59:38.621964', '/myapp/index/thing/getRecommend', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-07-27 21:59:40.055533', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-07-27 21:59:40.106201', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-07-27 21:59:41.510114', '/myapp/admin/ad/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-07-27 21:59:41.516817', '/myapp/admin/ad/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-07-27 21:59:41.527183', '/myapp/admin/ad/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-07-27 21:59:41.546650', '/myapp/admin/ad/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-07-27 21:59:41.558440', '/upload/cover/1722088543437.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-07-27 21:59:41.586452', '/upload/cover/1722088557742.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-07-27 22:00:59.194915', '/upload/cover/1722088543437.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-07-27 22:01:08.916286', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-07-27 22:01:09.157248', '/myapp/admin/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2024-07-27 22:01:10.743279', '/upload/cover/1722088637722.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2024-07-27 22:01:22.596726', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2024-07-27 22:01:22.822024', '/myapp/admin/thing/list', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2024-07-27 22:01:25.274976', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2024-07-27 22:01:25.327579', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2024-07-27 22:01:25.393168', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2024-07-27 22:01:25.395858', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2024-07-27 22:01:25.395858', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2024-07-27 22:01:25.395858', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2024-07-27 22:01:25.400727', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2024-07-27 22:01:25.408637', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2024-07-27 22:01:25.448531', '/upload/cover/1722088694217.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2024-07-27 22:01:28.050261', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2024-07-27 22:01:28.581077', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2024-07-27 22:01:35.917624', '/myapp/index/thing/getRecommend', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2024-07-27 22:01:36.267851', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2024-07-27 22:01:36.325488', '/myapp/index/classification/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2024-07-27 22:01:43.485065', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2024-07-27 22:01:43.542660', '/myapp/admin/ad/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2024-07-27 22:01:43.576440', '/myapp/admin/ad/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2024-07-27 22:01:43.592158', '/myapp/admin/ad/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2024-07-27 22:03:39.160193', '/myapp/index/thing/getRecommend', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2024-07-27 22:03:40.873660', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2024-07-27 22:03:40.930371', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2024-07-27 22:03:53.746492', '/myapp/index/user/login', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2024-07-27 22:03:53.835011', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2024-07-27 22:03:53.849091', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2024-07-27 22:03:53.881295', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2024-07-27 22:03:55.298859', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2024-07-27 22:03:55.304092', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2024-07-27 22:03:55.337732', '/myapp/admin/ad/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2024-07-27 22:03:55.370303', '/myapp/admin/ad/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2024-07-27 22:03:55.404506', '/myapp/admin/ad/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2024-07-27 22:03:57.337180', '/myapp/index/thing/addWishUser', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2024-07-27 22:03:57.402351', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2024-07-27 22:03:57.717038', '/myapp/index/thing/addCollectUser', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2024-07-27 22:03:57.807768', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2024-07-27 22:03:59.027773', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2024-07-27 22:03:59.041293', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2024-07-27 22:03:59.050751', '/myapp/index/thing/getWishThingList', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2024-07-27 22:03:59.086440', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2024-07-27 22:03:59.104831', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2024-07-27 22:04:00.102893', '/myapp/index/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2024-07-27 22:04:00.638668', '/myapp/index/comment/listMyComments', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2024-07-27 22:04:01.392755', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2024-07-27 22:04:01.851332', '/myapp/index/thing/getWishThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2024-07-27 22:04:02.639509', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2024-07-27 22:04:02.656361', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2024-07-27 22:04:02.712787', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2024-07-27 22:04:05.029334', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2024-07-27 22:04:05.037276', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2024-07-27 22:04:05.053648', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2024-07-27 22:04:05.103761', '/myapp/index/comment/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2024-07-27 22:04:05.117314', '/myapp/index/comment/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2024-07-27 22:04:06.254745', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2024-07-27 22:04:20.480365', '/myapp/index/order/create', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2024-07-27 22:04:20.623586', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2024-07-27 22:04:21.676874', '/myapp/index/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2024-07-27 22:04:21.701199', '/myapp/index/order/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2024-07-27 22:04:21.718763', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2024-07-27 22:04:21.747077', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2024-07-27 22:04:21.763086', '/myapp/index/user/info', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2024-07-27 22:04:23.947709', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2024-07-27 22:04:23.991088', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2024-07-27 22:04:24.013547', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2024-07-27 22:04:26.734206', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2024-07-27 22:04:26.746431', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2024-07-27 22:04:26.778553', '/myapp/index/comment/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2024-07-27 22:04:26.834938', '/myapp/index/comment/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2024-07-27 22:04:26.843421', '/myapp/index/comment/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2024-07-27 22:04:28.455437', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2024-07-27 22:04:28.458627', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2024-07-27 22:04:28.511118', '/myapp/admin/ad/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2024-07-27 22:04:28.552646', '/myapp/admin/ad/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2024-07-27 22:04:30.428489', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2024-07-27 22:04:30.439110', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2024-07-27 22:04:30.490896', '/myapp/admin/ad/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2024-07-27 22:04:30.528971', '/myapp/admin/ad/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2024-07-27 22:04:53.621365', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2024-07-27 22:05:13.558537', '/myapp/index/order/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2024-07-27 22:05:13.621202', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2024-07-27 22:05:14.791553', '/myapp/index/order/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2024-07-27 22:05:14.815875', '/myapp/index/order/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2024-07-27 22:05:14.815875', '/myapp/index/order/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2024-07-27 22:05:14.838108', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2024-07-27 22:05:14.849406', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2024-07-27 22:05:18.098061', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2024-07-27 22:05:19.032355', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2024-07-27 22:05:19.046911', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2024-07-27 22:05:19.095800', '/myapp/index/classification/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2024-07-27 22:05:19.150655', '/upload/cover/1722088682530.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2024-07-27 22:05:19.150655', '/upload/cover/1722088682530.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2024-07-27 22:05:19.153218', '/upload/cover/1722088682530.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2024-07-27 22:05:19.154897', '/upload/cover/1722088682530.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2024-07-27 22:05:19.158769', '/upload/cover/1722088682530.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2024-07-27 22:05:19.167038', '/upload/cover/1722088682530.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2024-07-27 22:05:19.188131', '/upload/cover/1722088694217.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2024-07-27 22:05:19.713482', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2024-07-27 22:05:19.776174', '/myapp/index/thing/getRecommend', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2024-07-27 22:05:20.303352', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2024-07-27 22:05:20.314123', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2024-07-27 22:05:20.362588', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2024-07-27 22:05:26.989202', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2024-07-27 22:05:27.592336', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2024-07-27 22:05:27.713485', '/myapp/admin/classification/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2024-07-28 10:55:37.780208', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2024-07-28 10:55:37.822641', '/myapp/admin/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2024-07-28 10:55:46.189162', '/upload/cover/1722088601262.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2024-07-28 10:55:52.896099', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2024-07-28 10:55:52.973194', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2024-07-28 10:56:02.771174', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2024-07-28 10:56:03.270551', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2024-07-28 10:56:03.294796', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2024-07-28 10:56:09.903381', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2024-07-28 10:56:15.426041', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2024-07-28 10:56:15.434483', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2024-07-28 10:56:15.451778', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2024-07-28 10:56:15.495225', '/upload/cover/1722088569404.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2024-07-28 10:56:15.495796', '/upload/cover/1722088347812.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2024-07-28 10:56:15.496862', '/upload/cover/1722088583447.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2024-07-28 10:56:15.503197', '/upload/cover/1722088557742.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2024-07-28 10:56:15.504231', '/upload/cover/1722088557742.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2024-07-28 10:56:15.504802', '/upload/cover/1722088557742.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2024-07-28 10:56:15.517443', '/upload/cover/1722088617309.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2024-07-28 10:56:15.526673', '/upload/cover/1722088682530.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2024-07-28 10:56:15.526673', '/upload/cover/1722088682530.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2024-07-28 10:56:15.527866', '/upload/cover/1722088682530.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2024-07-28 10:56:15.527866', '/upload/cover/1722088637722.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2024-07-28 10:56:16.204474', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2024-07-28 10:56:16.980076', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2024-07-28 10:56:17.362153', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2024-07-28 10:56:17.759052', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2024-07-28 10:56:18.377339', '/myapp/index/thing/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2024-07-28 10:56:19.057257', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2024-07-28 10:56:23.582440', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2024-07-28 10:56:23.598572', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2024-07-28 10:56:23.607939', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2024-07-28 10:56:23.614498', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2024-07-28 10:56:23.623562', '/myapp/admin/ad/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2024-07-28 10:56:25.818192', '/myapp/index/thing/addWishUser', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2024-07-28 10:56:25.850979', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2024-07-28 10:56:26.451608', '/myapp/index/thing/addCollectUser', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2024-07-28 10:56:26.491539', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2024-07-28 10:56:28.782359', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2024-07-28 10:56:49.063358', '/myapp/index/order/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2024-07-28 10:56:49.088036', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2024-07-28 10:56:50.344985', '/myapp/index/thing/getWishThingList', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2024-07-28 10:56:50.365243', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2024-07-28 10:56:50.366341', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2024-07-28 10:56:50.368307', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2024-07-28 10:56:50.371463', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2024-07-28 10:56:53.467236', '/myapp/index/thing/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2024-07-28 10:56:53.474246', '/myapp/index/thing/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2024-07-28 10:56:53.483438', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2024-07-28 10:56:57.592375', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2024-07-28 10:56:57.594529', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2024-07-28 10:56:57.597773', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2024-07-28 10:56:57.614259', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2024-07-28 10:56:57.614847', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2024-07-28 10:57:00.190642', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2024-07-28 10:57:00.246238', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2024-07-28 10:57:00.323197', '/myapp/index/thing/detail', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2024-07-28 10:57:00.334278', '/myapp/index/thing/detail', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2024-07-28 10:57:02.615636', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2024-07-28 10:57:02.637294', '/myapp/admin/ad/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2024-07-28 10:57:02.695225', '/myapp/admin/ad/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2024-07-28 10:57:02.737045', '/myapp/admin/ad/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2024-07-28 10:57:04.700132', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2024-07-28 10:57:04.732611', '/myapp/index/comment/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2024-07-28 10:57:04.790093', '/myapp/index/comment/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2024-07-28 10:57:04.831598', '/myapp/index/comment/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2024-07-28 10:57:06.489980', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2024-07-28 10:57:06.492727', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2024-07-28 10:57:06.545778', '/myapp/index/classification/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2024-07-28 10:57:08.034275', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2024-07-28 10:57:08.049210', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2024-07-28 10:57:08.065892', '/myapp/index/thing/detail', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2024-07-28 10:57:08.128733', '/myapp/index/thing/detail', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2024-07-28 10:57:08.168500', '/myapp/index/thing/detail', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2024-07-28 10:57:11.027340', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2024-07-28 10:57:11.036406', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2024-07-28 10:57:11.097117', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2024-07-28 10:57:16.790922', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2024-07-28 10:57:51.871790', '/myapp/index/order/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2024-07-28 10:57:51.935013', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2024-07-28 10:57:53.387654', '/myapp/index/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2024-07-28 10:57:53.444896', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2024-07-28 10:57:53.474453', '/myapp/index/user/info', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2024-07-28 10:57:53.495084', '/myapp/index/user/info', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2024-07-28 10:57:53.512021', '/myapp/index/user/info', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2024-07-28 10:57:56.534678', '/myapp/index/order/cancel_order', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2024-07-28 10:57:56.579174', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2024-07-28 10:57:59.773311', '/myapp/admin/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2024-07-28 10:58:11.881644', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2024-07-28 10:58:12.008427', '/myapp/admin/classification/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2024-07-28 10:58:12.516499', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2024-07-28 10:58:13.483322', '/myapp/admin/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2024-07-28 10:58:16.492608', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2024-07-28 10:58:16.499906', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2024-07-28 10:58:16.559865', '/myapp/index/classification/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2024-07-28 10:58:18.217437', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2024-07-28 10:58:18.237479', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2024-07-28 10:58:18.257991', '/myapp/index/thing/getRecommend', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2024-07-28 10:58:18.303860', '/myapp/index/thing/getRecommend', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2024-07-28 10:58:18.344022', '/myapp/index/thing/getRecommend', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2024-07-28 10:58:22.551277', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2024-07-28 10:58:22.599255', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2024-07-28 10:58:24.826479', '/myapp/index/comment/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2024-07-28 10:58:24.890987', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2024-07-28 10:58:27.149795', '/myapp/index/comment/create', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2024-07-28 10:58:28.777042', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2024-07-28 10:58:28.782277', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2024-07-28 10:58:28.832971', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2024-07-28 10:58:33.466414', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2024-07-28 10:58:34.060842', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2024-07-28 10:58:36.422637', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2024-07-28 10:58:37.669889', '/myapp/admin/notice/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2024-07-28 10:58:42.032459', '/myapp/admin/loginLog/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2024-07-28 10:58:42.487974', '/myapp/admin/opLog/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2024-07-28 10:58:42.865935', '/myapp/admin/errorLog/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2024-07-28 10:58:43.338143', '/myapp/admin/loginLog/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2024-07-28 10:58:44.719894', '/myapp/admin/overview/count', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2024-07-28 10:58:46.201699', '/myapp/admin/feedback/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2024-07-28 10:58:48.586477', '/myapp/admin/feedback/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2024-07-28 10:58:49.661407', '/myapp/admin/overview/count', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2024-07-28 10:58:52.115656', '/myapp/admin/feedback/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2024-07-28 10:58:55.493990', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1111');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2024-07-28 10:58:57.229834', '/myapp/admin/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2024-07-28 10:58:59.682320', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2024-07-28 10:58:59.686552', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2024-07-28 10:58:59.691676', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2024-07-28 10:58:59.761288', '/myapp/index/comment/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2024-07-28 10:58:59.782062', '/myapp/index/comment/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2024-07-28 10:59:02.841330', '/myapp/index/comment/create', 'POST', NULL, '6');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2024-07-28 11:00:57.729313', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2024-07-28 11:00:57.755056', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2024-07-28 11:01:00.862524', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2024-07-28 11:01:00.870276', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2024-07-28 11:01:00.915301', '/myapp/index/classification/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2024-07-28 11:01:02.582537', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2024-07-28 11:01:02.586653', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2024-07-28 11:01:02.627588', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2024-07-28 11:02:52.672450', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2024-07-28 11:02:52.691014', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2024-07-28 11:02:52.731572', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2024-07-28 11:02:53.092635', '/myapp/admin/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2024-07-28 11:02:59.587173', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2024-07-28 11:02:59.592971', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2024-07-28 11:02:59.616705', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2024-07-28 11:02:59.653420', '/myapp/admin/ad/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2024-07-28 11:02:59.666180', '/myapp/admin/ad/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2024-07-28 11:03:03.106154', '/myapp/index/comment/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2024-07-28 11:03:03.132399', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2024-07-28 11:03:06.421601', '/myapp/index/comment/create', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2024-07-28 11:03:06.473456', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2024-07-28 11:03:07.431536', '/myapp/index/comment/like', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2024-07-28 11:03:07.471162', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2024-07-28 11:03:08.052831', '/myapp/index/comment/like', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2024-07-28 11:03:08.106186', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2024-07-28 11:03:08.214114', '/myapp/index/comment/like', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2024-07-28 11:03:08.263174', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2024-07-28 11:03:08.404876', '/myapp/index/comment/like', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2024-07-28 11:03:08.453329', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2024-07-28 11:03:08.593135', '/myapp/index/comment/like', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2024-07-28 11:03:08.638119', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2024-07-28 11:03:08.783901', '/myapp/index/comment/like', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2024-07-28 11:03:08.840686', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2024-07-28 11:03:08.978113', '/myapp/index/comment/like', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2024-07-28 11:03:09.030255', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2024-07-28 11:03:10.284310', '/myapp/index/comment/like', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2024-07-28 11:03:10.338419', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2024-07-28 11:03:10.482661', '/myapp/index/comment/like', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2024-07-28 11:03:10.521432', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2024-07-28 11:03:10.657350', '/myapp/index/comment/like', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2024-07-28 11:03:10.705616', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2024-07-28 11:03:10.879612', '/myapp/index/comment/like', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2024-07-28 11:03:10.919533', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2024-07-28 11:03:11.056293', '/myapp/index/comment/like', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2024-07-28 11:03:11.093444', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2024-07-28 11:03:11.241521', '/myapp/index/comment/like', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2024-07-28 11:03:11.287515', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2024-07-28 11:03:11.383979', '/myapp/index/comment/like', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2024-07-28 11:03:11.449205', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2024-07-28 11:03:11.605998', '/myapp/index/comment/like', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2024-07-28 11:03:11.643644', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2024-07-28 11:03:13.228267', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2024-07-28 11:03:13.237174', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2024-07-28 11:03:13.291497', '/myapp/index/classification/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2024-07-28 11:03:54.710998', '/myapp/index/thing/getRecommend', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2024-07-28 11:03:54.729781', '/myapp/index/thing/getRecommend', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2024-07-28 11:03:55.348866', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2024-07-28 11:03:55.355811', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2024-07-28 11:03:55.404508', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2024-07-28 11:03:57.818824', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2024-07-28 11:03:57.834517', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2024-07-28 11:03:57.891584', '/myapp/index/thing/detail', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1245, '127.0.0.1', '2024-07-28 11:03:57.924766', '/myapp/index/thing/detail', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (1246, '127.0.0.1', '2024-07-28 11:03:57.943609', '/myapp/index/thing/detail', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (1247, '127.0.0.1', '2024-07-28 11:03:59.276989', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1248, '127.0.0.1', '2024-07-28 11:03:59.283447', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1249, '127.0.0.1', '2024-07-28 11:03:59.337241', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1250, '127.0.0.1', '2024-07-28 11:03:59.841377', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1251, '127.0.0.1', '2024-07-28 11:03:59.841377', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1252, '127.0.0.1', '2024-07-28 11:03:59.875702', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1253, '127.0.0.1', '2024-07-28 11:03:59.958536', '/myapp/admin/ad/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (1254, '127.0.0.1', '2024-07-28 11:03:59.977265', '/myapp/admin/ad/list', 'GET', NULL, '164');
INSERT INTO `b_op_log` VALUES (1255, '127.0.0.1', '2024-07-28 11:04:00.805297', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1256, '127.0.0.1', '2024-07-28 11:04:00.813913', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1257, '127.0.0.1', '2024-07-28 11:04:00.861650', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1258, '127.0.0.1', '2024-07-28 11:04:01.658930', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1259, '127.0.0.1', '2024-07-28 11:04:01.675364', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1260, '127.0.0.1', '2024-07-28 11:04:01.708601', '/myapp/index/comment/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1261, '127.0.0.1', '2024-07-28 11:04:01.768585', '/myapp/index/comment/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (1262, '127.0.0.1', '2024-07-28 11:04:01.795799', '/myapp/index/comment/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (1263, '127.0.0.1', '2024-07-28 11:04:02.743881', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1264, '127.0.0.1', '2024-07-28 11:04:02.756960', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1265, '127.0.0.1', '2024-07-28 11:04:02.823338', '/myapp/index/classification/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1266, '127.0.0.1', '2024-07-28 11:04:03.454221', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1267, '127.0.0.1', '2024-07-28 11:04:03.465774', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1268, '127.0.0.1', '2024-07-28 11:04:03.492064', '/myapp/index/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1269, '127.0.0.1', '2024-07-28 11:04:03.533990', '/myapp/index/comment/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1270, '127.0.0.1', '2024-07-28 11:04:03.562756', '/myapp/index/comment/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (1271, '127.0.0.1', '2024-07-28 11:04:04.452901', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1272, '127.0.0.1', '2024-07-28 11:04:04.464744', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1273, '127.0.0.1', '2024-07-28 11:04:04.508604', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1274, '127.0.0.1', '2024-07-28 11:04:05.135583', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1275, '127.0.0.1', '2024-07-28 11:04:05.146120', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1276, '127.0.0.1', '2024-07-28 11:04:05.170393', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1277, '127.0.0.1', '2024-07-28 11:04:05.210513', '/myapp/index/comment/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (1278, '127.0.0.1', '2024-07-28 11:04:05.242579', '/myapp/index/comment/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1279, '127.0.0.1', '2024-07-28 11:04:06.083923', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1280, '127.0.0.1', '2024-07-28 11:04:06.090914', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1281, '127.0.0.1', '2024-07-28 11:04:06.147838', '/myapp/index/thing/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (1282, '127.0.0.1', '2024-07-28 11:04:06.809372', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1283, '127.0.0.1', '2024-07-28 11:04:06.829216', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1284, '127.0.0.1', '2024-07-28 11:04:06.851286', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1285, '127.0.0.1', '2024-07-28 11:04:06.890629', '/myapp/index/comment/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1286, '127.0.0.1', '2024-07-28 11:04:06.925447', '/myapp/index/comment/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (1287, '127.0.0.1', '2024-07-28 11:04:07.589712', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1288, '127.0.0.1', '2024-07-28 11:04:07.604685', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1289, '127.0.0.1', '2024-07-28 11:04:07.662661', '/myapp/index/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1290, '127.0.0.1', '2024-07-28 11:04:08.607200', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1291, '127.0.0.1', '2024-07-28 11:04:08.625108', '/myapp/index/thing/getRecommend', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1292, '127.0.0.1', '2024-07-28 11:04:08.638378', '/myapp/index/thing/getRecommend', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1293, '127.0.0.1', '2024-07-28 11:04:08.694296', '/myapp/index/thing/getRecommend', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (1294, '127.0.0.1', '2024-07-28 11:04:08.719087', '/myapp/index/thing/getRecommend', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (1295, '127.0.0.1', '2024-07-28 11:04:09.624259', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1296, '127.0.0.1', '2024-07-28 11:04:09.633188', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1297, '127.0.0.1', '2024-07-28 11:04:09.688303', '/myapp/index/classification/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1298, '127.0.0.1', '2024-07-28 11:04:10.649748', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1299, '127.0.0.1', '2024-07-28 11:04:10.659638', '/myapp/index/thing/getRecommend', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1300, '127.0.0.1', '2024-07-28 11:04:10.681319', '/myapp/index/thing/getRecommend', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1301, '127.0.0.1', '2024-07-28 11:04:10.744063', '/myapp/index/thing/getRecommend', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1302, '127.0.0.1', '2024-07-28 11:04:10.760947', '/myapp/index/thing/getRecommend', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (1303, '127.0.0.1', '2024-07-28 11:04:11.839427', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1304, '127.0.0.1', '2024-07-28 11:04:11.854427', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1305, '127.0.0.1', '2024-07-28 11:04:11.914182', '/myapp/index/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1306, '127.0.0.1', '2024-07-28 11:04:12.910973', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1307, '127.0.0.1', '2024-07-28 11:04:12.910973', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1308, '127.0.0.1', '2024-07-28 11:04:12.949468', '/myapp/index/thing/detail', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1309, '127.0.0.1', '2024-07-28 11:04:12.990358', '/myapp/index/thing/detail', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (1310, '127.0.0.1', '2024-07-28 11:04:13.009039', '/myapp/index/thing/detail', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (1311, '127.0.0.1', '2024-07-28 11:04:14.195426', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1312, '127.0.0.1', '2024-07-28 11:04:14.202104', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1313, '127.0.0.1', '2024-07-28 11:04:14.262047', '/myapp/index/classification/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1314, '127.0.0.1', '2024-07-28 11:04:16.232265', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1315, '127.0.0.1', '2024-07-28 11:04:16.241032', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1316, '127.0.0.1', '2024-07-28 11:04:16.258932', '/myapp/index/thing/detail', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1317, '127.0.0.1', '2024-07-28 11:04:16.307946', '/myapp/index/thing/detail', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (1318, '127.0.0.1', '2024-07-28 11:04:16.353892', '/myapp/index/thing/detail', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (1319, '127.0.0.1', '2024-07-28 11:04:17.290735', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1320, '127.0.0.1', '2024-07-28 11:04:17.306122', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1321, '127.0.0.1', '2024-07-28 11:04:17.365274', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1322, '127.0.0.1', '2024-07-28 11:04:17.940822', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1323, '127.0.0.1', '2024-07-28 11:04:17.950161', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1324, '127.0.0.1', '2024-07-28 11:04:17.958401', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1325, '127.0.0.1', '2024-07-28 11:04:18.030853', '/myapp/index/comment/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (1326, '127.0.0.1', '2024-07-28 11:04:18.057650', '/myapp/index/comment/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (1327, '127.0.0.1', '2024-07-28 11:04:18.644324', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1328, '127.0.0.1', '2024-07-28 11:04:18.657095', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1329, '127.0.0.1', '2024-07-28 11:04:18.711825', '/myapp/index/classification/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1330, '127.0.0.1', '2024-07-28 11:04:19.209103', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1331, '127.0.0.1', '2024-07-28 11:04:19.229973', '/myapp/admin/ad/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1332, '127.0.0.1', '2024-07-28 11:04:19.306253', '/myapp/admin/ad/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (1333, '127.0.0.1', '2024-07-28 11:04:19.326161', '/myapp/admin/ad/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (1334, '127.0.0.1', '2024-07-28 11:04:19.358269', '/myapp/admin/ad/list', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (1335, '127.0.0.1', '2024-07-28 11:04:20.078485', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1336, '127.0.0.1', '2024-07-28 11:04:20.084448', '/myapp/index/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1337, '127.0.0.1', '2024-07-28 11:04:20.142003', '/myapp/index/classification/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1338, '127.0.0.1', '2024-07-28 11:04:21.439899', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1339, '127.0.0.1', '2024-07-28 11:04:21.455178', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1340, '127.0.0.1', '2024-07-28 11:04:21.462537', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1341, '127.0.0.1', '2024-07-28 11:04:21.512127', '/myapp/admin/ad/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (1342, '127.0.0.1', '2024-07-28 11:04:21.557129', '/myapp/admin/ad/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (1343, '127.0.0.1', '2024-07-28 11:04:22.192927', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1344, '127.0.0.1', '2024-07-28 11:04:22.201792', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1345, '127.0.0.1', '2024-07-28 11:04:22.273008', '/myapp/index/classification/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1346, '127.0.0.1', '2024-07-28 11:04:22.707509', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1347, '127.0.0.1', '2024-07-28 11:04:22.714094', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1348, '127.0.0.1', '2024-07-28 11:04:22.792735', '/myapp/index/comment/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (1349, '127.0.0.1', '2024-07-28 11:04:22.810977', '/myapp/index/comment/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (1350, '127.0.0.1', '2024-07-28 11:04:22.839289', '/myapp/index/comment/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (1351, '127.0.0.1', '2024-07-28 11:04:23.514197', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1352, '127.0.0.1', '2024-07-28 11:04:23.527276', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1353, '127.0.0.1', '2024-07-28 11:04:23.579977', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1354, '127.0.0.1', '2024-07-28 11:04:24.536948', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1355, '127.0.0.1', '2024-07-28 11:04:24.592543', '/myapp/index/thing/getRecommend', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1356, '127.0.0.1', '2024-07-28 11:04:54.530399', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1357, '127.0.0.1', '2024-07-28 11:04:54.539114', '/myapp/index/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1358, '127.0.0.1', '2024-07-28 11:04:54.590629', '/myapp/index/classification/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1359, '127.0.0.1', '2024-07-28 11:04:55.274133', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1360, '127.0.0.1', '2024-07-28 11:04:55.268121', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1361, '127.0.0.1', '2024-07-28 11:04:55.347092', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1362, '127.0.0.1', '2024-07-28 11:04:55.362097', '/myapp/index/comment/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1363, '127.0.0.1', '2024-07-28 11:04:56.177458', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1364, '127.0.0.1', '2024-07-28 11:04:56.183497', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1365, '127.0.0.1', '2024-07-28 11:04:56.252156', '/myapp/index/classification/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1366, '127.0.0.1', '2024-07-28 11:04:56.716567', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1367, '127.0.0.1', '2024-07-28 11:05:00.771980', '/myapp/index/user/info', 'GET', NULL, '4075');
INSERT INTO `b_op_log` VALUES (1368, '127.0.0.1', '2024-07-28 11:05:00.820139', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1369, '127.0.0.1', '2024-07-28 11:05:01.690434', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1370, '127.0.0.1', '2024-07-28 11:05:01.692832', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1371, '127.0.0.1', '2024-07-28 11:05:01.748595', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1372, '127.0.0.1', '2024-07-28 11:05:02.426700', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1373, '127.0.0.1', '2024-07-28 11:05:02.473529', '/myapp/index/thing/getRecommend', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1374, '127.0.0.1', '2024-07-28 11:05:03.057491', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1375, '127.0.0.1', '2024-07-28 11:05:03.069514', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1376, '127.0.0.1', '2024-07-28 11:05:03.116924', '/myapp/index/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1377, '127.0.0.1', '2024-07-28 11:05:04.104054', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1378, '127.0.0.1', '2024-07-28 11:05:04.106767', '/myapp/admin/ad/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1379, '127.0.0.1', '2024-07-28 11:05:04.120723', '/myapp/admin/ad/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1380, '127.0.0.1', '2024-07-28 11:05:04.153470', '/myapp/admin/ad/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1381, '127.0.0.1', '2024-07-28 11:05:04.185711', '/myapp/admin/ad/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (1382, '127.0.0.1', '2024-07-28 11:05:06.393031', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1383, '127.0.0.1', '2024-07-28 11:05:06.440727', '/myapp/index/thing/getRecommend', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1384, '127.0.0.1', '2024-07-28 11:05:08.181923', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1385, '127.0.0.1', '2024-07-28 11:05:08.185690', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1386, '127.0.0.1', '2024-07-28 11:05:08.237383', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1387, '127.0.0.1', '2024-07-28 11:05:09.822945', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1388, '127.0.0.1', '2024-07-28 11:05:09.827277', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1389, '127.0.0.1', '2024-07-28 11:05:09.860635', '/myapp/index/thing/detail', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1390, '127.0.0.1', '2024-07-28 11:05:09.929288', '/myapp/index/thing/detail', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (1391, '127.0.0.1', '2024-07-28 11:05:09.939159', '/myapp/index/thing/detail', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (1392, '127.0.0.1', '2024-07-28 11:05:10.701666', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1393, '127.0.0.1', '2024-07-28 11:05:10.733487', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1394, '127.0.0.1', '2024-07-28 11:05:10.777481', '/myapp/index/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (1395, '127.0.0.1', '2024-07-28 11:05:11.368873', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1396, '127.0.0.1', '2024-07-28 11:05:11.378573', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1397, '127.0.0.1', '2024-07-28 11:05:11.394084', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1398, '127.0.0.1', '2024-07-28 11:05:11.433256', '/myapp/index/thing/getRecommend', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1399, '127.0.0.1', '2024-07-28 11:05:11.465649', '/myapp/index/thing/getRecommend', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (1400, '127.0.0.1', '2024-07-28 11:05:12.163557', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1401, '127.0.0.1', '2024-07-28 11:05:12.187751', '/myapp/index/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1402, '127.0.0.1', '2024-07-28 11:05:12.227577', '/myapp/index/classification/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1403, '127.0.0.1', '2024-07-28 11:05:12.661957', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1404, '127.0.0.1', '2024-07-28 11:05:12.701465', '/myapp/index/thing/getRecommend', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1405, '127.0.0.1', '2024-07-28 11:05:22.977133', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1406, '127.0.0.1', '2024-07-28 11:05:23.061462', '/myapp/admin/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1407, '127.0.0.1', '2024-07-28 11:05:24.960116', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1408, '127.0.0.1', '2024-07-28 11:05:25.683412', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1409, '127.0.0.1', '2024-07-28 11:05:25.796076', '/myapp/admin/classification/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (1410, '127.0.0.1', '2024-07-28 11:05:26.373359', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1411, '127.0.0.1', '2024-07-28 11:05:27.162305', '/myapp/admin/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1412, '127.0.0.1', '2024-07-28 11:05:27.778975', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1413, '127.0.0.1', '2024-07-28 11:05:28.440076', '/myapp/admin/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1414, '127.0.0.1', '2024-07-28 11:05:31.131692', '/myapp/admin/overview/count', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1415, '127.0.0.1', '2024-07-28 11:05:31.879008', '/myapp/admin/feedback/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1416, '127.0.0.1', '2024-07-28 11:05:33.102390', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1417, '127.0.0.1', '2024-07-28 11:05:43.304195', '/myapp/index/thing/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1418, '127.0.0.1', '2024-07-28 11:05:43.346360', '/myapp/index/thing/list', 'GET', NULL, '49');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `gwc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (5, '1722089060455', '1', '2024-07-27 22:04:20.464797', '刘德华', '人民路22号', '9998888', '', 2, '{\"gwc\":[{\"id\":16,\"title\":\"羽毛球2222\",\"price\":\"128\",\"count\":1}]}', '128');
INSERT INTO `b_order` VALUES (6, '1722089113544', '1', '2024-07-27 22:05:13.550499', '郭靖', '人民路900号', '8887777', '', 2, '{\"gwc\":[{\"id\":13,\"title\":\"测试球类\",\"price\":\"128\",\"count\":2},{\"id\":15,\"title\":\"羽毛球测试11\",\"price\":\"128\",\"count\":1},{\"id\":14,\"title\":\"测试球类22\",\"price\":\"222\",\"count\":1}]}', '606');
INSERT INTO `b_order` VALUES (7, '1722135409056', '2', '2024-07-28 10:56:49.056351', '刘德华', '崂山区99号', '9998888', '', 2, '{\"gwc\":[{\"id\":16,\"title\":\"羽毛球2222\",\"price\":\"128\",\"count\":1}]}', '128');
INSERT INTO `b_order` VALUES (8, '1722135471856', '1', '2024-07-28 10:57:51.863772', '武松', '南山区澳门路99号', '222333', '', 2, '{\"gwc\":[{\"id\":21,\"title\":\"足球测试222\",\"price\":\"289\",\"count\":1},{\"id\":15,\"title\":\"羽毛球测试11\",\"price\":\"128\",\"count\":1},{\"id\":16,\"title\":\"羽毛球2222\",\"price\":\"128\",\"count\":2},{\"id\":14,\"title\":\"测试球类22\",\"price\":\"222\",\"count\":1},{\"id\":24,\"title\":\"测试轮滑33322\",\"price\":\"128\",\"count\":3}]}', '1279');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (21, 13, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (22, 14, 3, '127.0.0.2');
INSERT INTO `b_record` VALUES (23, 17, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (24, 19, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (25, 20, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (26, 22, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (27, 21, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (28, 23, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (29, 15, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (30, 13, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (31, 16, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (32, 18, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (33, 17, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `caizhi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `guige` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pinpai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhongliang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (13, '测试球类', 'cover/1722087866210.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '128', '0', '2024-07-27 21:45:52.000029', 14, 0, 0, 0, 5, NULL, 3, '聚酯纤维', '20X20cm', '乔丹', '2kg');
INSERT INTO `b_thing` VALUES (14, '测试球类22', 'cover/1722088347812.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '222', '0', '2024-07-27 21:45:52.000029', 16, 0, 0, 0, 5, NULL, 3, '聚酯纤维', '20X20cm', '乔丹', '2kg');
INSERT INTO `b_thing` VALUES (15, '羽毛球测试11', 'cover/1722088543437.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '128', '0', '2024-07-27 21:45:52.000029', 19, 0, 1, 1, 5, NULL, 3, '聚酯纤维', '20X20cm', '李宁', '1kg');
INSERT INTO `b_thing` VALUES (16, '羽毛球2222', 'cover/1722088557742.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '128', '0', '2024-07-27 21:45:52.000029', 16, 0, 1, 1, 4, NULL, 3, '聚酯纤维', '20X20cm', '乔丹', '2kg');
INSERT INTO `b_thing` VALUES (17, '测试护具2222', 'cover/1722088569404.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '128', '0', '2024-07-27 21:45:52.000029', 11, 0, 0, 0, 3, NULL, 3, '聚酯纤维', '20X20cm', '乔丹', '2kg');
INSERT INTO `b_thing` VALUES (18, '护具品牌商品', 'cover/1722088583447.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '128', '0', '2024-07-27 21:45:52.000029', 10, 0, 0, 0, 3, NULL, 3, '聚酯纤维', '20X20cm', '乔丹', '2kg');
INSERT INTO `b_thing` VALUES (19, '儿童轮滑', 'cover/1722088601262.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '128', '0', '2024-07-27 21:45:52.000029', 11, 0, 0, 0, 2, NULL, 3, '塑料', '20X20cm', '乔丹', '2kg');
INSERT INTO `b_thing` VALUES (20, '测试轮滑222', 'cover/1722088617309.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '128', '0', '2024-07-27 21:45:52.000029', 10, 0, 0, 0, 2, NULL, 3, '聚酯纤维', '20X20cm', '乔丹', '2kg');
INSERT INTO `b_thing` VALUES (21, '足球测试222', 'cover/1722088637722.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '289', '0', '2024-07-27 21:45:52.000029', 10, 0, 0, 0, 1, NULL, 3, '聚酯纤维', '20X20cm', '李宁', '3kg');
INSERT INTO `b_thing` VALUES (22, '测试羽毛球2333', 'cover/1722088663673.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '128', '0', '2024-07-27 21:45:52.000029', 10, 0, 0, 0, 5, NULL, 3, '聚酯纤维', '20X20cm', '乔丹', '2kg');
INSERT INTO `b_thing` VALUES (23, '测试足球3333', 'cover/1722088682530.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '128', '0', '2024-07-27 21:45:52.000029', 9, 0, 0, 0, 5, NULL, 3, '聚酯纤维', '20X20cm', '乔丹', '2kg');
INSERT INTO `b_thing` VALUES (24, '测试轮滑33322', 'cover/1722088694217.jpeg', '欢迎来到我们的球类商品专区！在这里，您将发现一系列优质的球类运动用品，适合各个年龄段的运动爱好者。从足球、篮球、排球到网球，我们为您提供丰富的选择，满足不同运动需求和个人喜好。\r\n\r\n我们的足球产品采用先进的材料和工艺，确保在各种场地上都能表现出色。无论是训练还是比赛，专业设计的球体能够提升控球性和射门精准度，让您在绿茵场上尽情展现风采。对于篮球爱好者，我们提供的篮球产品同样经过精心设计，兼具耐磨性和弹性，确保在每一次运球和投篮时的稳定性和舒适感。\r\n\r\n如果您热爱排球，我们的排球系列产品以轻便和耐用著称，非常适合沙滩排球和室内排球。我们的网球产品则涵盖了初学者和专业选手的需求，确保每一位网球爱好者都能找到合适的球具，无论是在俱乐部还是庭院练习时都能享受乐趣。\r\n\r\n为了满足不同用户的需求，我们的商品还配备了相应的配件，如球鞋、护具、训练器材等，帮助您提升运动表现，减少运动伤害。在安全和舒适的保障下，您可以更专注于每一场比赛、每一次训练。\r\n\r\n无论您是运动新手还是经验丰富的高手，我们的球类商品都能为您提供理想的选择，助力您在运动场上取得佳绩。让我们一起开启健康、活力的运动生活，享受球类运动带来的乐趣吧！', '128', '0', '2024-07-27 21:45:52.000029', 9, 0, 0, 0, 2, NULL, 3, '聚酯纤维', '20X20cm', '乔丹', '2kg');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (5, 15, 2);
INSERT INTO `b_thing_collect` VALUES (6, 16, 2);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (5, 15, 2);
INSERT INTO `b_thing_wish` VALUES (6, 16, 2);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'adfs3', 'avatar/1721137786035.png', NULL, NULL, NULL, '333', '2024-07-16 20:20:57.979036', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-16 21:48:37.329660', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (4, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-16 21:48:47.830467', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (5, 'test004', 'b990a1577e88882a43f26b232d85632b', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-16 21:48:57.243352', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (6, 'admin111', 'bbad8d72c1fac1d081727158807a8798', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-16 21:49:08.534407', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (7, 'bababa', '4e510be093d346512011c3f4fe36e4af', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-16 21:49:25.047775', 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-07-14 22:10:02.578234');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-07-14 22:10:03.386857');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-07-14 22:10:03.536258');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-07-14 22:10:03.553981');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-14 22:10:03.570256');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-07-14 22:10:03.709089');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-07-14 22:10:03.792020');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-07-14 22:10:03.874672');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-07-14 22:10:03.891922');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-07-14 22:10:03.974103');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-07-14 22:10:03.980599');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-14 22:10:03.994855');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-07-14 22:10:04.088923');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-14 22:10:04.189121');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-07-14 22:10:04.267163');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-07-14 22:10:04.288573');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-14 22:10:04.368463');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-07-14 22:10:06.536316');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-07-14 22:10:06.664252');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-07-14 22:10:06.979543');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-07-14 22:10:07.159525');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240714_2209', '2024-07-14 22:10:08.161315');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-07-14 22:10:08.269215');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_rename_thing_text_order_gwc', '2024-07-16 20:33:03.646242');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0007_order_amount', '2024-07-16 20:34:25.776847');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0008_auto_20240718_2128', '2024-07-27 21:26:54.117168');
INSERT INTO `django_migrations` VALUES (27, 'myapp', '0009_auto_20240727_2126', '2024-07-27 21:26:54.618043');
INSERT INTO `django_migrations` VALUES (28, 'myapp', '0010_auto_20240727_2146', '2024-07-27 21:46:49.403176');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
