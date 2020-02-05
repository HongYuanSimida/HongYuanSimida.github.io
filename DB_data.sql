/*
 Navicat Premium Data Transfer

 Source Server         : loic
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : java

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 28/01/2020 16:38:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
CREATE DATABASE newsweb;
USE newsweb;
-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1988 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES (4, '2019“东信杯”校赛宣传持续进行中，反响热烈', '2019-11-24', '新闻', 'site/view_id=62.html');
INSERT INTO `article` VALUES (5, '中国东信杯”第二届广西大学程设竞赛赛前培训成功举办', '2019-11-23', '通知', 'site/view_id=61.html');
INSERT INTO `article` VALUES (6, '紧急通知: 由于考试冲突等原因，11月24日晚讲座取消', '2019-11-23', '通知', 'site/view_id=60.html');
INSERT INTO `article` VALUES (7, '计协技术论坛“课程答疑”版块上线，任课教师在线答疑', '2019-11-19', '新闻', 'site/view_id=49.html');
INSERT INTO `article` VALUES (8, '技术讲座通知：11月16日(周六）晚 Python\"网络', '2019-11-16', '通知', 'site/view_id=48.html');
INSERT INTO `article` VALUES (9, '11月24日晚讲座通知： “萌新也能理解的Linux运维', '2019-11-15', '通知', 'site/view_id=47.html');
INSERT INTO `article` VALUES (10, '第二届“中国东信杯”程序设计竞赛赛前适应性培训预告！', '2019-11-14', '通知', 'site/view_id=46.html');
INSERT INTO `article` VALUES (11, '2019年“中国东信杯”广西大学第二届程序设计竞赛的通知', '2019-11-13', '新闻', 'site/view_id=45.html');
INSERT INTO `article` VALUES (12, '我校代表队参加第44届ICPC与第5届CCPC喜获佳绩!', '2019-10-22', '新闻', 'site/view_id=44.html');
INSERT INTO `article` VALUES (13, '我校学子在第二届广西大学生程序设计大赛中荣获佳绩', '2019-06-04', '新闻', 'site/view_id=42.html');
INSERT INTO `article` VALUES (14, '大学生去企业”系列活动之广西睿博行', '2019-09-22', '新闻', 'site/view_id=40.html');
INSERT INTO `article` VALUES (15, '青春战场，汗水飞扬——我校ACM竞赛队暑期集训小记', '2019-08-15', '新闻', 'site/view_id=39.html');
INSERT INTO `article` VALUES (16, '我校代表队在广东省大学生程序设计竞赛中取得突破', '2019-05-13', '新闻', 'site/view_id=35.html');
INSERT INTO `article` VALUES (17, '计协会员参加“南宁IT圈”线下技术交流活动', '2018-12-23', '新闻', 'site/view_id=33.html');
INSERT INTO `article` VALUES (18, '广西大学程序设计竞赛协会招新', '2018-12-02', '通知', 'site/view_id=32.html');
INSERT INTO `article` VALUES (19, '大学生去企业”系列活动之中国东信行', '2018-12-01', '新闻', 'site/view_id=31.html');
INSERT INTO `article` VALUES (20, '紧急通知:原定于12月2日东信交流参观活动时间有变', '2018-11-30', '通知', 'site/view_id=30.html');
INSERT INTO `article` VALUES (21, '2018\"中国东信杯\"广西大学第一届程序设计竞赛圆满结束', '2018-11-28', '公告', 'site/view_id=29.html');
INSERT INTO `article` VALUES (22, '比赛又要来了！“GDG开源技术社区团队邀请赛”的意向调查', '2018-11-28', '公告', 'site/view_id=28.html');
INSERT INTO `article` VALUES (23, '中国东信企业交流活动（12月1日周六）报名通知', '2018-11-28', '通知', 'site/view_id=27.html');
INSERT INTO `article` VALUES (24, '前端开发工程师：同学，在吗？', '2018-11-11', '新闻', 'site/view_id=25.html');
INSERT INTO `article` VALUES (25, '通知：“工程师走进校园”系列活动之前端程序媛技术分享会', '2018-11-07', '通知', 'site/view_id=24.html');
INSERT INTO `article` VALUES (26, '“中国东信杯”广西大学第一届程序设计竞赛的通知', '2018-10-31', '公告', 'site/view_id=23.html');
INSERT INTO `article` VALUES (27, '10月30日计协大课培训时间调整', '2018-10-29', '通知', 'site/view_id=22.html');
INSERT INTO `article` VALUES (28, '10月30日计协大课培训--ACM竞赛规则', '2018-10-27', '通知', 'site/view_id=21.html');
INSERT INTO `article` VALUES (29, '“工程师走进校园”系列讲座第二期顺利举办！', '2018-10-23', '活动', 'site/view_id=20.html');
INSERT INTO `article` VALUES (30, '第二次大课回顾！《前端与后端》', '2018-10-18', '新闻', 'site/view_id=19.html');
INSERT INTO `article` VALUES (31, '“工程师走进校园”系列活动之“程序猿漫谈择业心得”讲座', '2018-10-18', '通知', 'site/view_id=18.html');
INSERT INTO `article` VALUES (32, '10月16号晚计协第二次集体培训', '2018-10-15', '通知', 'site/view_id=17.html');
INSERT INTO `article` VALUES (33, '2017关于2017年天梯赛第一次网络选拔赛的通知', '2018-10-13', '通知', 'site/view_id=15.html');
INSERT INTO `article` VALUES (34, '2017广西大学Online Judge平台招募志愿者', '2018-10-13', '公告', 'site/view_id=14.html');
INSERT INTO `article` VALUES (35, '2017广西大学ACM竞赛协会招新了！', '2018-10-13', '公告', 'site/view_id=13.html');
INSERT INTO `article` VALUES (36, '2017广西大学程序设计竞赛协会招新武林贴', '2018-10-13', '公告', 'site/view_id=12.html');
INSERT INTO `article` VALUES (37, '计算机协会2018第一次集体培训！', '2018-10-12', '活动', 'site/view_id=11.html');
INSERT INTO `article` VALUES (38, '10月13日对技术指导员的培训', '2018-10-11', '通知', 'site/view_id=9.html');
INSERT INTO `article` VALUES (39, '“工程师走进校园”系列活动之东信工程师交流分享会', '2018-10-10', '活动', 'site/view_id=8.html');
INSERT INTO `article` VALUES (40, '2017ACM-ICPC中国广西邀请赛圆满举办', '2017-08-29', '新闻', 'site/view_id=7.html');
INSERT INTO `article` VALUES (41, '5·9网络安全技术沙龙——与“大佬”的见面座谈会', '2017-05-10', '活动', 'site/view_id=6.html');
INSERT INTO `article` VALUES (42, '新闻', NULL, NULL, 'site/news.html');
INSERT INTO `article` VALUES (43, '通知', NULL, NULL, 'site/inform.html');
INSERT INTO `article` VALUES (44, '公告', NULL, NULL, 'site/public.html');
INSERT INTO `article` VALUES (45, '活动', NULL, NULL, 'site/active.html');
INSERT INTO `article` VALUES (46, '更多动态', NULL, NULL, 'site/list.html');
INSERT INTO `article` VALUES (47, 'list1', NULL, NULL, 'site/list_page=1&per-page=28.html');
INSERT INTO `article` VALUES (48, 'list2', NULL, NULL, 'site/list_page=2&per-page=28.html');
INSERT INTO `article` VALUES (50, 'introduct', NULL, NULL, 'site/introduct.html');
INSERT INTO `article` VALUES (51, 'about', NULL, NULL, 'site/about.html');
INSERT INTO `article` VALUES (52, 'index', NULL, NULL, 'site/index.html');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
