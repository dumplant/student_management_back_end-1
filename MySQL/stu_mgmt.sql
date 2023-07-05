/*
 Navicat MySQL Data Transfer

 Source Server         : abc
 Source Server Type    : MySQL
 Source Server Version : 50740 (5.7.40-log)
 Source Host           : 39.101.65.178:3306
 Source Schema         : stu_mgmt

 Target Server Type    : MySQL
 Target Server Version : 50740 (5.7.40-log)
 File Encoding         : 65001

 Date: 04/07/2023 23:37:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Practice
-- ----------------------------
DROP TABLE IF EXISTS `Practice`;
CREATE TABLE `Practice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stuId` bigint(20) NOT NULL,
  `stuNum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stuName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `director` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `constitution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Practice
-- ----------------------------
INSERT INTO `Practice` VALUES (1, 1, '2200022001', '张三', '社会实践标题', '社会实践指导老师', '社会实践机构', '社会实践内容', '10', '社会实践结果', 0, '2023-05-30 13:15:02', 0, '2023-05-30 13:15:02', 0);
INSERT INTO `Practice` VALUES (9, 1, '2200022001', '张三', '65', '65', '65', '65', '65', '65', 1, '2023-06-05 23:27:41', 1, '2023-06-05 23:27:41', 0);
INSERT INTO `Practice` VALUES (10, 1, '2200022001', '张三', 'test', 'test', 'test', 'test', '3', 'test', 1, '2023-06-05 23:56:27', 1, '2023-06-05 23:56:27', 0);
INSERT INTO `Practice` VALUES (13, 1, '2200022001', '张三', '11', '11', '11', '11', '2023.07-2024.07', '11', 1, '2023-06-06 14:26:44', 1, '2023-06-06 14:26:44', 0);
INSERT INTO `Practice` VALUES (14, 1, '2200022001', '张三', 'test', 'test', 'test', 'test', '2023.07-2024.10', 'test', 1, '2023-06-06 15:03:00', 1, '2023-06-06 15:03:00', 1);
INSERT INTO `Practice` VALUES (15, 1673506708899409921, '2200022100', '黎明', 'test', 'test', 'test', 'test', '2023.05-2023.07', 'test', 1673506708899409921, '2023-07-02 23:59:51', 1673506708899409921, '2023-07-02 23:59:51', 0);
INSERT INTO `Practice` VALUES (16, 1673531459210518529, '2200022102', '张柏芝', 'test', 'test', 'test', 'test', '2023.05-2023.06', 'test', 1673531459210518529, '2023-07-03 00:07:02', 1673531459210518529, '2023-07-03 00:07:02', 0);
INSERT INTO `Practice` VALUES (17, 1676068614340829186, '2200022101', '周润发', '1', '1', '1', '1', '2024.06-2024.06', '1', 1676068614340829186, '2023-07-04 14:05:17', 1676068614340829186, '2023-07-04 14:05:17', 0);
INSERT INTO `Practice` VALUES (18, 1, '2200022001', '张三', '1', '1', '1', '1', '2024.07-2024.07', '1', 1, '2023-07-04 16:29:03', 1, '2023-07-04 16:29:03', 0);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '求知一苑', 0, '2023-05-30 13:10:39', 0, '2023-05-30 13:10:39', 0);
INSERT INTO `class` VALUES (2, '求知二苑', 0, '2023-05-30 13:10:39', 0, '2023-05-30 13:10:39', 0);
INSERT INTO `class` VALUES (3, '求知三苑', 0, '2023-05-30 13:10:39', 0, '2023-05-30 13:10:39', 0);

-- ----------------------------
-- Table structure for effectiveyear
-- ----------------------------
DROP TABLE IF EXISTS `effectiveyear`;
CREATE TABLE `effectiveyear`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of effectiveyear
-- ----------------------------
INSERT INTO `effectiveyear` VALUES (1, '2021', 0, '2023-05-30 13:11:43', 0, '2023-05-30 13:11:43', 0);
INSERT INTO `effectiveyear` VALUES (2, '2022', 0, '2023-05-30 13:11:43', 0, '2023-05-30 13:11:43', 0);
INSERT INTO `effectiveyear` VALUES (3, '2020', 0, '2023-05-30 13:11:43', 0, '2023-05-30 13:11:43', 0);

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stuId` bigint(20) NOT NULL,
  `stuNum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stuName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gpa` float NOT NULL,
  `createUserId` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES (1, 1, '2200022001', '张三', 3.9, 0, '2023-05-30 13:02:11', 11000001, '2023-07-03 07:15:22', 0);
INSERT INTO `grade` VALUES (2, 2, '2200022002', '李四', 3.8, 0, '2023-06-05 16:03:23', 11000001, '2023-07-04 09:51:04', 0);
INSERT INTO `grade` VALUES (3, 1676063237126221825, '2200000001', '妙蛙种子', 3.8, 11000001, '2023-07-04 11:54:50', 11000001, '2023-07-04 15:20:28', 0);
INSERT INTO `grade` VALUES (35, 1676068612809908225, '2200022100', '黎明', 4, 11000001, '2023-07-04 17:03:09', 11000001, '2023-07-04 17:03:09', 0);
INSERT INTO `grade` VALUES (36, 1676068614340829186, '2200022101', '周润发', 3.9, 11000001, '2023-07-04 17:03:09', 11000001, '2023-07-04 17:03:09', 0);

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, '软件工程', 0, '2023-05-30 13:12:41', 0, '2023-05-30 13:12:41', 0);
INSERT INTO `major` VALUES (2, '大数据分析', 0, '2023-05-30 13:12:41', 0, '2023-05-30 13:12:41', 0);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int(10) NOT NULL DEFAULT 0,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '查看个人信息', '/user/profile/get', '', 0, 1, '2023-05-31 18:10:47', 1, '2023-05-31 18:10:47', 0);
INSERT INTO `permission` VALUES (2, '根据状态挑选学生', '/api/summary/selectList', '', 0, 0, '2023-05-30 13:13:18', 0, '2023-05-30 13:13:18', 0);
INSERT INTO `permission` VALUES (3, '上传学生成绩', '/api/summary/import', '', 0, 0, '2023-05-30 13:13:18', 0, '2023-05-30 13:13:18', 0);
INSERT INTO `permission` VALUES (4, 'home', '/home', 'Home', 1, 0, '2023-06-01 22:49:46', 0, '2023-06-01 22:49:46', 0);
INSERT INTO `permission` VALUES (5, 'JudgeResearch', '/judge/research', 'judges/JudgeResearch', 1, 0, '2023-06-01 22:50:32', 0, '2023-06-01 22:50:32', 0);
INSERT INTO `permission` VALUES (6, '获得summary所有数据', '/api/summary/selectAllList', NULL, 0, 0, '2023-06-01 22:54:14', 0, '2023-06-01 22:54:14', 0);
INSERT INTO `permission` VALUES (7, '获得science表所有数据', '/api/science/getAllList', NULL, 0, 0, '2023-06-01 22:55:24', 0, '2023-06-01 22:55:24', 0);
INSERT INTO `permission` VALUES (8, 'JudgePersonalSummary', '/judge/personal-summary', 'judges/JudgePersonalSummary', 1, 0, '2023-06-01 22:56:48', 0, '2023-06-01 22:56:48', 0);
INSERT INTO `permission` VALUES (9, '获得personal表所有数据', '/api/personal/getAllList', NULL, 0, 0, '2023-06-01 22:57:29', 0, '2023-06-01 22:57:29', 0);
INSERT INTO `permission` VALUES (10, 'StudentResearch', '/student/research', 'students/StudentResearch', 1, 0, '2023-06-01 22:58:14', 0, '2023-06-01 22:58:14', 0);
INSERT INTO `permission` VALUES (11, 'StudentPersonalSummary', '/student/personal-summary', 'students/StudentPersonalSummary', 1, 0, '2023-06-01 22:58:43', 0, '2023-06-01 22:58:43', 0);
INSERT INTO `permission` VALUES (12, '上传科研表', '/api/science/import', NULL, 0, 0, '2023-06-01 22:59:38', 0, '2023-06-01 22:59:38', 0);
INSERT INTO `permission` VALUES (13, '上传个人学年表', '/api/personal/import', NULL, 0, 0, '2023-06-01 23:00:02', 0, '2023-06-01 23:00:02', 0);
INSERT INTO `permission` VALUES (14, 'JudgeGPA', '/judge/GPA', 'judges/JudgeGPA', 1, 0, '2023-06-03 13:51:37', 0, '2023-06-03 13:51:37', 0);
INSERT INTO `permission` VALUES (15, '上传GPA表', '/api/grade/import', NULL, 0, 0, '2023-06-03 14:06:37', 0, '2023-06-03 14:06:37', 0);
INSERT INTO `permission` VALUES (16, '上传GPA打分', '/api/grade/update-score', NULL, 0, 0, '2023-06-03 14:06:37', 0, '2023-06-03 14:06:37', 0);
INSERT INTO `permission` VALUES (17, '获得grade表所有数据', '/api/grade/selectListAll', NULL, 0, 0, '2023-06-03 13:53:14', 0, '2023-06-03 13:53:14', 0);
INSERT INTO `permission` VALUES (18, 'JudgeVolunteerService', '/judge/volunteer-service', 'judges/JudgeVolunteerService', 1, 0, '2023-06-03 14:00:54', 0, '2023-06-03 14:00:54', 0);
INSERT INTO `permission` VALUES (19, '上传志愿服务表', '/api/volunteer/import', NULL, 0, 0, '2023-06-03 14:12:12', 0, '2023-06-03 14:12:12', 0);
INSERT INTO `permission` VALUES (20, '上传志愿服务打分', '/api/volunteer/update-score', NULL, 0, 0, '2023-06-03 14:12:12', 0, '2023-06-03 14:12:12', 0);
INSERT INTO `permission` VALUES (21, 'StudentGPA', '/student/GPA', 'students/StudentGPA', 1, 0, '2023-06-03 14:18:44', 0, '2023-06-03 14:18:44', 0);
INSERT INTO `permission` VALUES (22, 'StudentVolunteerService', '/student/volunteer-service', 'students/StudentVolunteerService', 1, 0, '2023-06-03 14:18:44', 0, '2023-06-03 14:18:44', 0);
INSERT INTO `permission` VALUES (23, '查看个人学习成绩', '/api/grade/get-grade-info', '', 0, 0, '2023-06-03 14:25:03', 0, '2023-06-03 14:25:03', 0);
INSERT INTO `permission` VALUES (24, '查看个人志愿时长', '/api/volunteer/get-volunteer-info', NULL, 0, 0, '2023-06-03 14:25:03', 0, '2023-06-03 14:25:03', 0);
INSERT INTO `permission` VALUES (25, 'ServiceWorks', '/judge/service', 'judges/ServiceWorks', 1, 0, '2023-06-03 21:29:15', 0, '2023-06-03 21:29:15', 0);
INSERT INTO `permission` VALUES (26, '获取service表所有数据', '/api/service/getAllList', NULL, 0, 0, '2023-06-03 21:31:27', 0, '2023-06-03 21:31:27', 0);
INSERT INTO `permission` VALUES (27, 'SocialExperence', '/judge/practice', 'judges/SocialExperience', 1, 0, '2023-06-03 21:34:51', 0, '2023-06-03 21:34:51', 0);
INSERT INTO `permission` VALUES (28, '获取Social所有数据', '/api/practice/getAllList', NULL, 0, 0, '2023-06-03 21:35:45', 0, '2023-06-03 21:35:45', 0);
INSERT INTO `permission` VALUES (29, '上传骨干服务表', '/api/service/import', NULL, 0, 0, '2023-06-03 21:40:35', 0, '2023-06-03 21:40:35', 0);
INSERT INTO `permission` VALUES (30, '上传社会实践表', '/api/practice/import', NULL, 0, 0, '2023-06-03 21:41:07', 0, '2023-06-03 21:41:07', 0);
INSERT INTO `permission` VALUES (31, 'StuManagerExImport', '/stumanager/eximport', 'stumanager/StuManagerExImport', 1, 0, '2023-06-05 15:56:15', 0, '2023-06-05 15:56:15', 0);
INSERT INTO `permission` VALUES (32, 'StuManagerGradeNonSum', '/stumanager/gradenonsum', 'stumanager/stumanagergrade/StuManagerGradeNonSum', 1, 0, '2023-06-05 15:57:38', 0, '2023-06-05 15:57:38', 0);
INSERT INTO `permission` VALUES (33, 'StuManagerGradeSum', '/stumanager/gradesum', 'stumanager/stumanagergrade/StuManagerGradeSum', 1, 0, '2023-06-05 15:59:53', 0, '2023-06-05 15:59:53', 0);
INSERT INTO `permission` VALUES (34, '获取所有学生信息', '/api/stu/selectall', NULL, 0, 0, '2023-06-05 16:00:30', 0, '2023-06-05 16:00:30', 0);
INSERT INTO `permission` VALUES (35, '获取菜单', '/api/menu', NULL, 0, 0, '2023-06-05 18:41:53', 0, '2023-06-05 18:41:53', 0);
INSERT INTO `permission` VALUES (36, '导入学生信息', '/api/stu/import', NULL, 0, 0, '2023-06-05 19:12:47', 0, '2023-06-05 19:12:47', 0);
INSERT INTO `permission` VALUES (37, 'ServiceUpload', '/student/service', 'students/ServiceUpload', 1, 0, '2023-06-05 21:02:22', 0, '2023-06-05 21:02:22', 0);
INSERT INTO `permission` VALUES (38, 'SocialUpload', '/student/practice', 'students/SocialUpload', 1, 0, '2023-06-05 21:03:18', 0, '2023-06-05 21:03:18', 0);
INSERT INTO `permission` VALUES (39, '获得volunteer表所有数据', '/api/volunteer/selectListAll', NULL, 0, 0, '2023-06-05 23:13:33', 0, '2023-06-05 23:13:33', 0);
INSERT INTO `permission` VALUES (40, '上传文件', '/api/pdf/import', NULL, 0, 0, '2023-06-27 17:29:00', 0, '2023-06-27 17:29:10', 0);
INSERT INTO `permission` VALUES (41, '学生预览文件', '/api/pdf/student/preview', NULL, 0, 0, '2023-06-28 11:20:06', 0, '2023-06-28 11:20:06', 0);
INSERT INTO `permission` VALUES (42, '老师预览文件', '/api/pdf/teacher/preview', NULL, 0, 0, '2023-06-28 11:32:39', 0, '2023-06-28 11:32:39', 0);
INSERT INTO `permission` VALUES (43, '重设密码', '/user/profile/reset-password', NULL, 0, 0, '2023-06-29 10:38:56', 0, '2023-06-29 10:38:56', 0);
INSERT INTO `permission` VALUES (44, '修改密码', '/user/profile/change-password', NULL, 0, 0, '2023-06-29 10:44:26', 0, '2023-06-29 10:44:26', 0);
INSERT INTO `permission` VALUES (45, '删除学生信息', '/api/stu/deleteInfo', NULL, 0, 0, '2023-06-30 15:22:32', 0, '2023-06-30 15:22:32', 0);
INSERT INTO `permission` VALUES (46, '删除学生成绩', '/api/summary/deleteSummary', NULL, 0, 0, '2023-06-30 16:21:50', 0, '2023-06-30 16:21:50', 0);
INSERT INTO `permission` VALUES (47, '删除学生GPA', '/api/grade/deleteGrade', NULL, 0, 0, '2023-07-03 05:44:47', 0, '2023-07-03 05:44:47', 0);
INSERT INTO `permission` VALUES (48, '学生查看个人已提交的科研信息记录', '/api/science/getMyList', NULL, 0, 0, '2023-07-03 13:46:52', 0, '2023-07-03 13:46:52', 0);
INSERT INTO `permission` VALUES (49, '学生查看个人已提交的个人学年总结信息', '/api/personal/getMyList', NULL, 0, 0, '2023-07-03 14:33:26', 0, '2023-07-03 14:33:26', 0);
INSERT INTO `permission` VALUES (50, '学生查看个人已提交的社会实践表单', '/api/practice/getMyList', NULL, 0, 0, '2023-07-03 22:47:16', 0, '2023-07-03 22:47:16', 0);
INSERT INTO `permission` VALUES (51, '学生查看个人已提交的骨干服务表单', '/api/service/getMyList', NULL, 0, 0, '2023-07-03 22:47:53', 0, '2023-07-03 22:47:53', 0);
INSERT INTO `permission` VALUES (52, '删除学生志愿服务时长', '/api/volunteer/deleteVolunteer', NULL, 0, 0, '2023-07-04 15:48:52', 0, '2023-07-04 15:48:52', 0);

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permissionId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (1, 1, 8, 0, '2023-05-30 13:13:48', 0, '2023-05-30 13:13:48', 0);
INSERT INTO `permission_role` VALUES (2, 2, 8, 0, '2023-05-30 13:13:48', 0, '2023-05-30 13:13:48', 0);
INSERT INTO `permission_role` VALUES (4, 1, 1, 1, '2023-05-31 18:14:57', 1, '2023-05-31 18:14:57', 0);
INSERT INTO `permission_role` VALUES (6, 1, 2, 1, '2023-05-31 18:16:38', 1, '2023-05-31 18:16:38', 0);
INSERT INTO `permission_role` VALUES (7, 1, 3, 1, '2023-05-31 18:16:38', 1, '2023-05-31 18:16:38', 0);
INSERT INTO `permission_role` VALUES (8, 1, 4, 1, '2023-05-31 18:16:38', 1, '2023-05-31 18:16:38', 0);
INSERT INTO `permission_role` VALUES (9, 1, 5, 1, '2023-05-31 18:16:38', 1, '2023-05-31 18:16:38', 0);
INSERT INTO `permission_role` VALUES (10, 1, 6, 1, '2023-05-31 18:16:38', 1, '2023-05-31 18:16:38', 0);
INSERT INTO `permission_role` VALUES (11, 1, 7, 1, '2023-05-31 18:16:38', 1, '2023-05-31 18:16:38', 0);
INSERT INTO `permission_role` VALUES (14, 3, 4, 0, '2023-06-01 23:12:01', 0, '2023-06-01 23:12:01', 0);
INSERT INTO `permission_role` VALUES (15, 4, 4, 0, '2023-06-01 23:12:59', 0, '2023-06-01 23:12:59', 0);
INSERT INTO `permission_role` VALUES (16, 5, 4, 0, '2023-06-01 23:12:59', 0, '2023-06-01 23:12:59', 0);
INSERT INTO `permission_role` VALUES (17, 6, 4, 0, '2023-06-01 23:12:59', 0, '2023-06-01 23:12:59', 0);
INSERT INTO `permission_role` VALUES (18, 7, 4, 0, '2023-06-01 23:12:59', 0, '2023-06-01 23:12:59', 0);
INSERT INTO `permission_role` VALUES (19, 3, 7, 0, '2023-06-01 23:13:44', 0, '2023-06-01 23:13:44', 0);
INSERT INTO `permission_role` VALUES (20, 4, 7, 0, '2023-06-01 23:14:27', 0, '2023-06-01 23:14:27', 0);
INSERT INTO `permission_role` VALUES (21, 6, 7, 0, '2023-06-01 23:14:27', 0, '2023-06-01 23:14:27', 0);
INSERT INTO `permission_role` VALUES (22, 8, 7, 0, '2023-06-01 23:14:27', 0, '2023-06-01 23:14:27', 0);
INSERT INTO `permission_role` VALUES (23, 9, 7, 0, '2023-06-01 23:14:27', 0, '2023-06-01 23:14:27', 0);
INSERT INTO `permission_role` VALUES (24, 4, 1, 0, '2023-06-01 23:16:08', 0, '2023-06-01 23:16:08', 0);
INSERT INTO `permission_role` VALUES (25, 10, 1, 0, '2023-06-01 23:16:08', 0, '2023-06-01 23:16:08', 0);
INSERT INTO `permission_role` VALUES (26, 11, 1, 0, '2023-06-01 23:16:08', 0, '2023-06-01 23:16:08', 0);
INSERT INTO `permission_role` VALUES (27, 12, 1, 0, '2023-06-01 23:16:08', 0, '2023-06-01 23:16:08', 0);
INSERT INTO `permission_role` VALUES (28, 13, 1, 0, '2023-06-01 23:16:08', 0, '2023-06-01 23:16:08', 0);
INSERT INTO `permission_role` VALUES (29, 21, 1, 0, '2023-06-03 16:14:24', 0, '2023-06-03 16:14:24', 0);
INSERT INTO `permission_role` VALUES (30, 22, 1, 0, '2023-06-03 16:14:24', 0, '2023-06-03 16:14:24', 0);
INSERT INTO `permission_role` VALUES (31, 23, 1, 0, '2023-06-03 16:15:07', 0, '2023-06-03 16:15:07', 0);
INSERT INTO `permission_role` VALUES (32, 24, 1, 0, '2023-06-03 16:15:07', 0, '2023-06-03 16:15:07', 0);
INSERT INTO `permission_role` VALUES (33, 1, 5, 1, '2023-06-03 21:52:50', 1, '2023-06-03 21:52:50', 0);
INSERT INTO `permission_role` VALUES (34, 3, 5, 0, '2023-06-03 21:52:50', 0, '2023-06-03 21:52:50', 0);
INSERT INTO `permission_role` VALUES (35, 4, 5, 0, '2023-06-03 21:52:50', 0, '2023-06-03 21:52:50', 0);
INSERT INTO `permission_role` VALUES (36, 6, 5, 0, '2023-06-03 21:52:50', 0, '2023-06-03 21:52:50', 0);
INSERT INTO `permission_role` VALUES (37, 27, 5, 0, '2023-06-03 21:52:50', 0, '2023-06-03 21:52:50', 0);
INSERT INTO `permission_role` VALUES (38, 28, 5, 0, '2023-06-03 21:52:50', 0, '2023-06-03 21:52:50', 0);
INSERT INTO `permission_role` VALUES (39, 1, 6, 1, '2023-06-03 21:55:27', 1, '2023-06-03 21:55:27', 0);
INSERT INTO `permission_role` VALUES (40, 3, 6, 0, '2023-06-03 21:55:27', 0, '2023-06-03 21:55:27', 0);
INSERT INTO `permission_role` VALUES (41, 4, 6, 0, '2023-06-03 21:55:27', 0, '2023-06-03 21:55:27', 0);
INSERT INTO `permission_role` VALUES (42, 6, 6, 0, '2023-06-03 21:55:27', 0, '2023-06-03 21:55:27', 0);
INSERT INTO `permission_role` VALUES (43, 25, 6, 0, '2023-06-03 21:55:27', 0, '2023-06-03 21:55:27', 0);
INSERT INTO `permission_role` VALUES (44, 26, 6, 0, '2023-06-03 21:55:27', 0, '2023-06-03 21:55:27', 0);
INSERT INTO `permission_role` VALUES (45, 29, 1, 0, '2023-06-03 21:57:44', 0, '2023-06-03 21:57:44', 0);
INSERT INTO `permission_role` VALUES (46, 30, 1, 0, '2023-06-03 21:57:44', 0, '2023-06-03 21:57:44', 0);
INSERT INTO `permission_role` VALUES (47, 4, 2, 0, '2023-06-04 00:00:50', 0, '2023-06-04 00:00:50', 0);
INSERT INTO `permission_role` VALUES (48, 14, 2, 0, '2023-06-04 00:07:13', 0, '2023-06-04 00:07:13', 0);
INSERT INTO `permission_role` VALUES (49, 15, 2, 0, '2023-06-04 00:01:57', 0, '2023-06-04 00:01:57', 0);
INSERT INTO `permission_role` VALUES (50, 16, 2, 0, '2023-06-04 00:01:57', 0, '2023-06-04 00:01:57', 0);
INSERT INTO `permission_role` VALUES (51, 17, 2, 0, '2023-06-04 00:02:58', 0, '2023-06-04 00:02:58', 0);
INSERT INTO `permission_role` VALUES (52, 4, 3, 0, '2023-06-04 00:09:08', 0, '2023-06-04 00:09:08', 0);
INSERT INTO `permission_role` VALUES (53, 18, 3, 0, '2023-06-04 00:09:08', 0, '2023-06-04 00:09:08', 0);
INSERT INTO `permission_role` VALUES (54, 19, 3, 0, '2023-06-04 00:10:22', 0, '2023-06-04 00:10:22', 0);
INSERT INTO `permission_role` VALUES (55, 20, 3, 0, '2023-06-04 00:10:22', 0, '2023-06-04 00:10:22', 0);
INSERT INTO `permission_role` VALUES (56, 39, 3, 0, '2023-06-04 00:10:22', 0, '2023-06-04 00:10:22', 0);
INSERT INTO `permission_role` VALUES (57, 4, 8, 0, '2023-06-05 19:15:00', 0, '2023-06-05 19:15:00', 0);
INSERT INTO `permission_role` VALUES (58, 31, 8, 0, '2023-06-05 19:15:12', 0, '2023-06-05 19:15:12', 0);
INSERT INTO `permission_role` VALUES (59, 32, 8, 0, '2023-06-05 19:15:52', 0, '2023-06-05 19:15:52', 0);
INSERT INTO `permission_role` VALUES (60, 33, 8, 0, '2023-06-05 19:15:52', 0, '2023-06-05 19:15:52', 0);
INSERT INTO `permission_role` VALUES (61, 34, 8, 0, '2023-06-05 19:15:52', 0, '2023-06-05 19:15:52', 0);
INSERT INTO `permission_role` VALUES (62, 35, 8, 0, '2023-06-05 19:15:52', 0, '2023-06-05 19:15:52', 0);
INSERT INTO `permission_role` VALUES (63, 36, 8, 0, '2023-06-05 19:15:52', 0, '2023-06-05 19:15:52', 0);
INSERT INTO `permission_role` VALUES (64, 37, 1, 0, '2023-06-05 21:05:05', 0, '2023-06-05 21:05:05', 0);
INSERT INTO `permission_role` VALUES (65, 38, 1, 0, '2023-06-05 21:05:05', 0, '2023-06-05 21:05:05', 0);
INSERT INTO `permission_role` VALUES (66, 35, 1, 0, '2023-06-05 21:15:52', 0, '2023-06-05 21:15:52', 0);
INSERT INTO `permission_role` VALUES (67, 35, 2, 0, '2023-06-05 21:20:34', 0, '2023-06-05 21:20:34', 0);
INSERT INTO `permission_role` VALUES (68, 35, 3, 0, '2023-06-05 21:20:45', 0, '2023-06-05 21:20:45', 0);
INSERT INTO `permission_role` VALUES (69, 35, 4, 0, '2023-06-05 21:20:50', 0, '2023-06-05 21:20:50', 0);
INSERT INTO `permission_role` VALUES (70, 35, 5, 0, '2023-06-05 21:20:54', 0, '2023-06-05 21:20:54', 0);
INSERT INTO `permission_role` VALUES (71, 35, 6, 0, '2023-06-05 21:21:01', 0, '2023-06-05 21:21:01', 0);
INSERT INTO `permission_role` VALUES (72, 35, 7, 0, '2023-06-05 21:21:06', 0, '2023-06-05 21:21:06', 0);
INSERT INTO `permission_role` VALUES (73, 40, 1, 0, '2023-06-27 17:38:39', 0, '2023-06-27 17:38:39', 0);
INSERT INTO `permission_role` VALUES (74, 41, 1, 0, '2023-06-27 17:38:39', 0, '2023-06-27 17:38:39', 0);
INSERT INTO `permission_role` VALUES (76, 42, 4, 0, '2023-06-27 17:38:40', 0, '2023-06-27 17:38:40', 0);
INSERT INTO `permission_role` VALUES (78, 42, 6, 0, '2023-06-27 17:38:40', 0, '2023-06-27 17:38:40', 0);
INSERT INTO `permission_role` VALUES (80, 42, 5, 0, '2023-06-27 17:38:41', 0, '2023-06-27 17:38:41', 0);
INSERT INTO `permission_role` VALUES (82, 43, 8, 0, '2023-06-29 10:40:00', 0, '2023-06-29 10:40:00', 0);
INSERT INTO `permission_role` VALUES (83, 44, 1, 0, '2023-06-29 10:45:06', 0, '2023-06-29 10:45:06', 0);
INSERT INTO `permission_role` VALUES (84, 44, 2, 0, '2023-06-29 10:45:06', 0, '2023-06-29 10:45:06', 0);
INSERT INTO `permission_role` VALUES (85, 44, 3, 0, '2023-06-29 10:45:56', 0, '2023-06-29 10:45:56', 0);
INSERT INTO `permission_role` VALUES (86, 44, 4, 0, '2023-06-29 10:45:56', 0, '2023-06-29 10:45:56', 0);
INSERT INTO `permission_role` VALUES (87, 44, 5, 0, '2023-06-29 10:45:56', 0, '2023-06-29 10:45:56', 0);
INSERT INTO `permission_role` VALUES (88, 44, 6, 0, '2023-06-29 10:45:56', 0, '2023-06-29 10:45:56', 0);
INSERT INTO `permission_role` VALUES (89, 44, 7, 0, '2023-06-29 10:45:56', 0, '2023-06-29 10:45:56', 0);
INSERT INTO `permission_role` VALUES (90, 44, 8, 0, '2023-06-29 10:45:56', 0, '2023-06-29 10:45:56', 0);
INSERT INTO `permission_role` VALUES (91, 45, 8, 0, '2023-06-30 15:23:17', 0, '2023-06-30 15:23:17', 0);
INSERT INTO `permission_role` VALUES (92, 46, 8, 0, '2023-06-30 16:23:12', 0, '2023-06-30 16:23:12', 0);
INSERT INTO `permission_role` VALUES (93, 47, 2, 0, '2023-07-03 05:45:22', 0, '2023-07-03 05:45:22', 0);
INSERT INTO `permission_role` VALUES (94, 48, 1, 0, '2023-07-03 13:47:50', 0, '2023-07-03 13:47:50', 0);
INSERT INTO `permission_role` VALUES (95, 49, 1, 0, '2023-07-03 14:34:16', 0, '2023-07-03 14:34:16', 0);
INSERT INTO `permission_role` VALUES (96, 50, 1, 0, '2023-07-03 22:48:14', 0, '2023-07-03 22:48:14', 0);
INSERT INTO `permission_role` VALUES (97, 51, 1, 0, '2023-07-03 22:48:27', 0, '2023-07-03 22:48:27', 0);
INSERT INTO `permission_role` VALUES (98, 52, 3, 0, '2023-07-04 15:50:09', 0, '2023-07-04 15:50:09', 0);

-- ----------------------------
-- Table structure for personal
-- ----------------------------
DROP TABLE IF EXISTS `personal`;
CREATE TABLE `personal`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stuId` bigint(20) NOT NULL,
  `stuNum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stuName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `school` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `society` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `self` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal
-- ----------------------------
INSERT INTO `personal` VALUES (1, 1, '2200022001', '张三', '1\n', '1\n', '1', 0, '2023-05-30 13:14:29', 0, '2023-05-30 13:14:29', 0);
INSERT INTO `personal` VALUES (2, 2, '2200022002', '李四', 'test2', 'test2', 'test2', 0, '2023-06-01 21:55:02', 0, '2023-06-01 21:55:02', 0);
INSERT INTO `personal` VALUES (4, 1676068614340829186, '2200022101', '周润发', '11', '11', '11', 0, '2023-07-04 16:41:48', 0, '2023-07-04 16:41:48', 0);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '学生', 0, '2023-05-30 13:15:40', 0, '2023-05-30 13:15:40', 0);
INSERT INTO `role` VALUES (2, '学习成绩评委', 0, '2023-05-30 13:15:40', 0, '2023-05-30 13:15:40', 0);
INSERT INTO `role` VALUES (3, '志愿服务评委', 0, '2023-05-30 13:15:40', 0, '2023-05-30 13:15:40', 0);
INSERT INTO `role` VALUES (4, '科研情况评委', 0, '2023-05-30 13:15:40', 0, '2023-05-30 13:15:40', 0);
INSERT INTO `role` VALUES (5, '社会实践评委', 0, '2023-05-30 13:15:40', 0, '2023-05-30 13:15:40', 0);
INSERT INTO `role` VALUES (6, '学生骨干服务评委', 0, '2023-05-30 13:15:40', 0, '2023-05-30 13:15:40', 0);
INSERT INTO `role` VALUES (7, '个人学年总结评委', 0, '2023-05-30 13:15:40', 0, '2023-05-30 13:15:40', 0);
INSERT INTO `role` VALUES (8, '学工老师', 0, '2023-05-30 13:15:40', 0, '2023-05-30 13:15:40', 0);

-- ----------------------------
-- Table structure for science
-- ----------------------------
DROP TABLE IF EXISTS `science`;
CREATE TABLE `science`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stuId` bigint(20) NOT NULL,
  `stuNum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stuName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `director` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `constitution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level` int(11) NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of science
-- ----------------------------
INSERT INTO `science` VALUES (1, 1, '2200022001', '张三', '科研标题', '科研指导老师', '科研机构', 1, '10', '科研结果', 0, '2023-05-30 13:16:12', 0, '2023-05-30 13:16:12', 1);
INSERT INTO `science` VALUES (2, 2, '2200022002', '李四', '科研标题2', '科研指导老师2', '科研机构2', 2, '20', '科研结果2', 0, '2023-06-01 18:51:14', 0, '2023-06-01 18:51:14', 0);
INSERT INTO `science` VALUES (3, 2, '2200022002', '李四', '科研标题2-1', '科研指导老师2-1', '科研机构2-1 ', 1, '30', '科研结果2-1', 0, '2023-06-01 21:57:19', 0, '2023-06-01 21:57:19', 0);
INSERT INTO `science` VALUES (31, 1, '2200022001', '张三', 'a', 'a', 'a', 3, '2023.03 ~ 2024.07', 'a', 0, '2023-06-04 19:10:48', 0, '2023-06-04 19:10:48', 1);
INSERT INTO `science` VALUES (32, 1, '2200022001', '张三', 'a', 'a', 'a', 3, '2023.03 ~ 2024.07', 'a', 0, '2023-06-04 19:10:48', 0, '2023-06-04 19:10:48', 1);
INSERT INTO `science` VALUES (33, 1, '2200022001', '张三', 'a', 'a', 'a', 3, '2023.03 ~ 2024.07', 'a', 0, '2023-06-04 19:14:38', 0, '2023-06-04 19:14:38', 1);
INSERT INTO `science` VALUES (34, 1, '2200022001', '张三', 'q', 'q', 'q', 0, '2023.03-2024.07', 'q', 2200022001, '2023-06-04 19:31:46', 2200022001, '2023-06-04 19:31:46', 1);
INSERT INTO `science` VALUES (35, 1, '2200022001', '张三', 'w', 'w', 'w', 2, '2023.07-2024.07', 'w', 2200022001, '2023-06-04 19:35:08', 2200022001, '2023-06-04 19:35:08', 1);
INSERT INTO `science` VALUES (36, 1, '2200022001', '张三', '1', '1', '1', 0, '2024.09-2024.10', '1', 1, '2023-06-04 19:49:44', 1, '2023-06-04 19:49:44', 1);
INSERT INTO `science` VALUES (38, 1, '2200022001', '张三', 'qw', 'qw', 'qw', 0, '2023.08-2024.07', 'qw', 1, '2023-06-05 19:28:57', 1, '2023-06-05 19:28:57', 1);
INSERT INTO `science` VALUES (39, 1, '2200022001', '张三', '65', '65', '65', 3, '2023.09-2024.11', '65', 1, '2023-06-05 23:27:24', 1, '2023-06-05 23:27:24', 1);
INSERT INTO `science` VALUES (40, 1, '2200022001', '张三', 'test', 'test', 'test', 3, '2023.08-2024.07', 'test', 1, '2023-06-05 23:58:30', 1, '2023-06-05 23:58:30', 0);
INSERT INTO `science` VALUES (41, 1, '2200022001', '张三', '0703test', '0703test', '0703test', 1, '2024.07-2024.08', '0703test', 1, '2023-07-03 14:31:29', 1, '2023-07-03 14:31:29', 0);
INSERT INTO `science` VALUES (42, 1676068614340829186, '2200022101', '周润发', '1', '1', '1', 3, '2024.05-2024.05', '1', 1676068614340829186, '2023-07-04 14:05:38', 1676068614340829186, '2023-07-04 14:05:38', 0);
INSERT INTO `science` VALUES (43, 1, '2200022001', '张三', '0704test', '0704test', '0704test', 3, '2023.01-2023.10', '0704test', 1, '2023-07-04 19:20:58', 1, '2023-07-04 19:20:58', 0);
INSERT INTO `science` VALUES (44, 1676068614340829186, '2200022101', '周润发', '11', '11', '11', 3, '2024.06-2024.07', '1111111', 1676068614340829186, '2023-07-04 20:47:41', 1676068614340829186, '2023-07-04 20:47:41', 0);

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stuId` bigint(20) NOT NULL,
  `stuNum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stuName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'default_value',
  `constitution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'default_value',
  `director` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'default_value',
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 1, '2200022001', '张三', '学工服务标题', '学工服务内容', '10', '学工服务内容', '学工机构', '学工老师', 0, '2023-05-30 13:17:09', 0, '2023-05-30 13:17:09', 0);
INSERT INTO `service` VALUES (7, 1, '2200022001', '张三', '65', '65', '65', '65', '65', '65', 1, '2023-06-05 23:27:52', 1, '2023-06-05 23:27:52', 0);
INSERT INTO `service` VALUES (8, 1, '2200022001', '张三', 'test', 'test', '2', 'test', 'test', 'test', 1, '2023-06-05 23:56:10', 1, '2023-06-05 23:56:10', 0);
INSERT INTO `service` VALUES (9, 1, '2200022001', '张三', '11', '11', '2023.10-2024.10', '11', '11', '11', 1, '2023-06-06 14:29:31', 1, '2023-06-06 14:29:31', 0);
INSERT INTO `service` VALUES (10, 1, '2200022001', '张三', '测试test', 'test', '2022.01-2023.01', 'test', 'test', 'test', 1, '2023-06-30 21:30:29', 1, '2023-06-30 21:30:29', 0);
INSERT INTO `service` VALUES (12, 1, '2200022001', '张三', 'haha', '11', '2023.05-2023.06', '11', '11', '11', 1, '2023-07-03 00:57:37', 1, '2023-07-03 00:57:37', 0);
INSERT INTO `service` VALUES (13, 1676068614340829186, '2200022101', '周润发', '1', '1', '2024.07-2024.07', '1', '1', '1', 1676068614340829186, '2023-07-04 13:46:32', 1676068614340829186, '2023-07-04 13:46:32', 0);
INSERT INTO `service` VALUES (14, 1676068614340829186, '2200022101', '周润发', '2', '2', '2024.05-2024.05', '2', '2', '2', 1676068614340829186, '2023-07-04 13:47:45', 1676068614340829186, '2023-07-04 13:47:45', 0);
INSERT INTO `service` VALUES (15, 1676068614340829186, '2200022101', '周润发', '2', '2', '2024.05-2024.05', '2', '2', '2', 1676068614340829186, '2023-07-04 13:50:10', 1676068614340829186, '2023-07-04 13:50:10', 0);
INSERT INTO `service` VALUES (16, 1676068612809908225, '2200022100', '黎明', '1', '1', '2024.06-2024.06', '1', '1', '1', 1676068612809908225, '2023-07-04 17:13:06', 1676068612809908225, '2023-07-04 17:13:06', 0);

-- ----------------------------
-- Table structure for staff_info
-- ----------------------------
DROP TABLE IF EXISTS `staff_info`;
CREATE TABLE `staff_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `passwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `initial` tinyint(1) NOT NULL DEFAULT 1,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11000008 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff_info
-- ----------------------------
INSERT INTO `staff_info` VALUES (11000001, '1100022001', '王五', 1, '123@yahoo.com', '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky', 1, 0, '2023-05-30 13:17:43', 0, '2023-06-30 20:39:01', 0);
INSERT INTO `staff_info` VALUES (11000002, '1100022002', '赵六', 0, '123@yahoo.com', '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky', 1, 0, '2023-05-30 13:17:43', 0, '2023-05-30 13:17:43', 0);
INSERT INTO `staff_info` VALUES (11000003, '1100022003', '孙琪', 0, '123@yahoo.com', '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky', 1, 0, '2023-05-30 13:17:43', 0, '2023-05-30 13:17:43', 0);
INSERT INTO `staff_info` VALUES (11000004, '1100022004', '赵丽丽', 0, '123@yahoo.com', '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky', 1, 0, '2023-05-30 13:17:43', 0, '2023-05-30 13:17:43', 0);
INSERT INTO `staff_info` VALUES (11000005, '1100022005', '王刚', 1, '123@yahoo.com', '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky', 1, 0, '2023-05-30 13:17:43', 0, '2023-05-30 13:17:43', 0);
INSERT INTO `staff_info` VALUES (11000006, '1100022006', '魏强', 1, '123@yahoo.com', '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky', 1, 0, '2023-05-30 13:17:43', 0, '2023-05-30 13:17:43', 0);
INSERT INTO `staff_info` VALUES (11000007, '1100022007', '吉娜', 0, '123@yahoo.com', '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky', 1, 0, '2023-05-30 13:17:43', 0, '2023-05-30 13:17:43', 0);

-- ----------------------------
-- Table structure for stu_info
-- ----------------------------
DROP TABLE IF EXISTS `stu_info`;
CREATE TABLE `stu_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sex` tinyint(1) NULL DEFAULT NULL,
  `yearId` int(20) NULL DEFAULT NULL,
  `majorId` bigint(20) NULL DEFAULT NULL,
  `classId` bigint(20) NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `passwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky',
  `initial` tinyint(1) NOT NULL DEFAULT 1,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676068615670423554 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stu_info
-- ----------------------------
INSERT INTO `stu_info` VALUES (1, '2200022001', '张三', 1, 1, 1, 1, '123@qq.com', '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky', 0, 0, '2023-05-30 13:18:01', 2200022001, '2023-06-30 14:29:36', 0);
INSERT INTO `stu_info` VALUES (2, '2200022002', '李四', NULL, NULL, NULL, NULL, NULL, '$2a$10$EuH1eo0jtC12kjicm1/sN.w5ogg6ONpFrZZ', 0, 0, '2023-06-05 20:33:49', 0, '2023-07-04 23:17:59', 0);
INSERT INTO `stu_info` VALUES (1676063237126221825, '2200000001', '妙蛙种子', 1, NULL, NULL, NULL, NULL, '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky', 0, 11000007, '2023-07-04 10:59:51', 11000007, '2023-07-04 11:18:37', 0);
INSERT INTO `stu_info` VALUES (1676068612809908225, '2200022100', '黎明', 1, 1, 1, 1, '123@qq.com', '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky', 0, 11000007, '2023-07-04 11:21:08', 11000007, '2023-07-04 16:58:29', 0);
INSERT INTO `stu_info` VALUES (1676068614340829186, '2200022101', '周润发', 1, 1, 1, 1, '123@qq.com', '$2a$10$H8ehVGsZx89lSVHwBVI37OkxWm8LXei4T1o5of82Hwc1rD0Yauhky', 0, 11000007, '2023-07-04 11:21:08', 11000007, '2023-07-04 16:58:29', 0);

-- ----------------------------
-- Table structure for summary
-- ----------------------------
DROP TABLE IF EXISTS `summary`;
CREATE TABLE `summary`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stuId` bigint(20) NOT NULL,
  `stuNum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stuName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gpa` int(11) NULL DEFAULT NULL,
  `vol` int(11) NULL DEFAULT NULL,
  `sci` int(11) NULL DEFAULT NULL,
  `pra` int(11) NULL DEFAULT NULL,
  `ser` int(11) NULL DEFAULT NULL,
  `per` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676153496941285379 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of summary
-- ----------------------------
INSERT INTO `summary` VALUES (1, 1, '2200022001', '张三', 10, 6, 9, 0, 5, 10, 1, 0, '2023-05-30 13:20:15', 11000002, '2023-07-04 19:30:13', 0);
INSERT INTO `summary` VALUES (2, 2, '2200022002', '李四', 9, 9, 5, NULL, NULL, 5, 0, 0, '2023-06-01 16:50:59', 11000002, '2023-07-04 11:07:35', 0);
INSERT INTO `summary` VALUES (1676063237851836418, 1676063237126221825, '2200000001', '妙蛙种子', 9, 10, NULL, NULL, NULL, NULL, 0, 0, '2023-07-04 10:59:51', 11000002, '2023-07-04 19:29:57', 0);
INSERT INTO `summary` VALUES (1676068613405499393, 1676068612809908225, '2200022100', '黎明', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2023-07-04 11:21:08', 0, '2023-07-04 11:21:08', 0);
INSERT INTO `summary` VALUES (1676068614873505794, 1676068614340829200, '2200022101', '周润发', NULL, NULL, 9, 8, 8, 8, 0, 0, '2023-07-04 11:21:08', 0, '2023-07-04 11:21:08', 0);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1, 0, '2023-05-30 13:19:03', 0, '2023-05-30 13:19:03', 0);
INSERT INTO `user_role` VALUES (2, 11000001, 2, 0, '2023-05-30 13:19:03', 0, '2023-05-30 13:19:03', 0);
INSERT INTO `user_role` VALUES (3, 11000002, 3, 0, '2023-05-30 13:19:03', 0, '2023-05-30 13:19:03', 0);
INSERT INTO `user_role` VALUES (4, 11000003, 4, 0, '2023-05-30 13:19:03', 0, '2023-05-30 13:19:03', 0);
INSERT INTO `user_role` VALUES (5, 11000004, 5, 0, '2023-05-30 13:19:03', 0, '2023-05-30 13:19:03', 0);
INSERT INTO `user_role` VALUES (6, 11000005, 6, 0, '2023-05-30 13:19:03', 0, '2023-05-30 13:19:03', 0);
INSERT INTO `user_role` VALUES (7, 11000006, 7, 0, '2023-05-30 13:19:03', 0, '2023-05-30 13:19:03', 0);
INSERT INTO `user_role` VALUES (8, 11000007, 8, 0, '2023-05-30 13:19:03', 0, '2023-05-30 13:19:03', 0);
INSERT INTO `user_role` VALUES (9, 2, 1, 0, '2023-06-28 11:44:30', 0, '2023-06-28 11:44:30', 0);
INSERT INTO `user_role` VALUES (10, 1673506708899409921, 1, 0, '2023-06-28 17:26:38', 0, '2023-06-28 17:26:38', 0);
INSERT INTO `user_role` VALUES (11, 1673509876723085314, 1, 0, '2023-06-28 17:26:38', 0, '2023-06-28 17:26:38', 0);
INSERT INTO `user_role` VALUES (12, 1673531459210518529, 1, 0, '2023-06-28 17:26:39', 0, '2023-06-28 17:26:39', 0);
INSERT INTO `user_role` VALUES (13, 1673506708899409921, 1, 0, '2023-06-30 16:47:41', 0, '2023-06-30 16:47:41', 0);
INSERT INTO `user_role` VALUES (14, 1673509876723085314, 1, 0, '2023-06-30 16:47:42', 0, '2023-06-30 16:47:42', 0);
INSERT INTO `user_role` VALUES (15, 1673531459210518529, 1, 0, '2023-06-30 16:47:43', 0, '2023-06-30 16:47:43', 0);
INSERT INTO `user_role` VALUES (16, 1674788775106945025, 1, 0, '2023-06-30 22:35:34', 0, '2023-06-30 22:35:34', 0);
INSERT INTO `user_role` VALUES (17, 1675890848624013314, 1, 0, '2023-07-03 23:34:49', 0, '2023-07-03 23:34:49', 0);
INSERT INTO `user_role` VALUES (18, 1673506708899409921, 1, 0, '2023-07-04 08:58:13', 0, '2023-07-04 08:58:13', 0);
INSERT INTO `user_role` VALUES (19, 1673509876723085314, 1, 0, '2023-07-04 08:58:13', 0, '2023-07-04 08:58:13', 0);
INSERT INTO `user_role` VALUES (20, 1673531459210518529, 1, 0, '2023-07-04 08:58:14', 0, '2023-07-04 08:58:14', 0);
INSERT INTO `user_role` VALUES (21, 1676063237126221825, 1, 0, '2023-07-04 10:59:51', 0, '2023-07-04 10:59:51', 0);
INSERT INTO `user_role` VALUES (22, 1676068612809908225, 1, 0, '2023-07-04 11:21:08', 0, '2023-07-04 11:21:08', 0);
INSERT INTO `user_role` VALUES (23, 1676068614340829186, 1, 0, '2023-07-04 11:21:08', 0, '2023-07-04 11:21:08', 0);
INSERT INTO `user_role` VALUES (24, 1676068615670423553, 1, 0, '2023-07-04 11:21:08', 0, '2023-07-04 11:21:08', 0);
INSERT INTO `user_role` VALUES (25, 1676068612809908225, 1, 0, '2023-07-04 16:58:25', 0, '2023-07-04 16:58:25', 0);
INSERT INTO `user_role` VALUES (26, 1676068614340829186, 1, 0, '2023-07-04 16:58:25', 0, '2023-07-04 16:58:25', 0);
INSERT INTO `user_role` VALUES (27, 1676068615670423553, 1, 0, '2023-07-04 16:58:25', 0, '2023-07-04 16:58:25', 0);

-- ----------------------------
-- Table structure for volunteer
-- ----------------------------
DROP TABLE IF EXISTS `volunteer`;
CREATE TABLE `volunteer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stuId` bigint(20) NOT NULL,
  `stuNum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stuName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` int(11) NOT NULL,
  `createUserId` bigint(20) NOT NULL DEFAULT 0,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUserId` bigint(20) NOT NULL DEFAULT 0,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of volunteer
-- ----------------------------
INSERT INTO `volunteer` VALUES (1, 1, '2200022001', '张三', 10, 0, '2023-05-30 13:19:42', 11000002, '2023-07-04 19:30:13', 0);
INSERT INTO `volunteer` VALUES (2, 2, '2200022002', '李四', 20, 0, '2023-06-05 20:19:25', 11000002, '2023-07-04 11:07:35', 0);
INSERT INTO `volunteer` VALUES (15, 1676063237126221825, '2200000001', '妙蛙种子', 30, 0, '2023-07-04 19:28:01', 11000002, '2023-07-04 19:29:57', 0);

SET FOREIGN_KEY_CHECKS = 1;
