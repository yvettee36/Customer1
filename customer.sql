/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50540
Source Host           : 127.0.0.1:3306
Source Database       : customer

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-08-03 19:27:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `gender` varchar(4) NOT NULL,
  `birthday` date DEFAULT NULL,
  `cellphone` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `preference` varchar(255) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('078735b7-d8d1-4f4f-9b22-61dc24c09733', '打火机', '女', '1983-08-17', '17869992828', 'zxc@qq.com', '跳舞,蹦极', '重点客户', '');
INSERT INTO `customer` VALUES ('0fa692ad-0c89-4cad-9ec8-003cc8a57e39', '陈旭升', '男', '1995-08-29', '17868802173', '1839298287@163.com', '蹦极,探险', '重点客户', '');
INSERT INTO `customer` VALUES ('1489e93e-1e6f-42a8-bfc6-5af9bdc5e44c', '额娃儿', '男', '2001-11-15', '17869992828', '842207739@qq.com', '跳舞,蹦极', '重点客户', '');
INSERT INTO `customer` VALUES ('304ac086-221d-4224-8720-0a1fd97655fc', '都安买菜', '女', '1984-05-22', '17869992828', '842207739@qq.com', '探险', 'vip', '');
INSERT INTO `customer` VALUES ('3151014d-4d7e-4efe-ab0c-f90f89e89ac7', '哈利路亚', '男', '2017-08-23', '17869992828', 'zxc@qq.com', '跳舞', '重点客户', '');
INSERT INTO `customer` VALUES ('32f0be00-8373-4c58-9557-1c504b9a7e2a', '陈小镜', '女', '1996-04-27', '18392982879', '842207739@qq.com', '唱歌,跳舞,蹦极,探险,篮球,足球', 'vip', '大美女+小美女');
INSERT INTO `customer` VALUES ('36cf612c-a6d2-43a6-9555-23f866f9f340', '王嵯峨之妹', '男', '1998-01-21', '', '', '跳舞,游泳', '重点客户', '你妹妹很聪明，网错愕很蠢');
INSERT INTO `customer` VALUES ('4ab12ea0-2a44-486d-8db1-42b39d9f0895', '欧化工厂', '男', '1991-07-19', '17869992828', 'zxc@qq.com', '跳舞', '重点客户', '');
INSERT INTO `customer` VALUES ('5da9d7cb-fca8-469c-aaaf-9987d01ea75d', '阿斯蒂芬', '女', '2017-08-16', '17834564312', '842207739@qq.com', '跳舞,探险', '普通客户', '');
INSERT INTO `customer` VALUES ('603feb38-ed66-4862-a9e5-b6ba62018154', '法国红酒', '男', '2000-04-24', '17869992828', 'zxc@qq.com', '跳舞,蹦极', '重点客户', '');
INSERT INTO `customer` VALUES ('680717ba-4ded-4ab8-859e-e4c5d07df499', '神经病', '男', '1983-02-09', '17869992828', 'zxc@qq.com', '探险,游泳,篮球,足球', '普通客户', '');
INSERT INTO `customer` VALUES ('7f73f53c-5a76-4edc-b724-a3734c22c9c8', '王嵯峨', '女', '1996-07-03', '17834564312', 'zxc@qq.com', '蹦极,探险', '普通客户', '智障儿童');
INSERT INTO `customer` VALUES ('92c8caf3-261b-47e9-95d0-ccaefb1d0762', '热电厂', '男', '2004-10-04', '17869992828', '842207739@qq.com', '唱歌,足球', '重点客户', '');
INSERT INTO `customer` VALUES ('adcdb0ec-aaaa-4dda-a842-ad5fb1ca55b3', 'chenjing', '女', '1998-08-18', '17869992828', 'zxc@qq.com', '跳舞', 'vip', '');
INSERT INTO `customer` VALUES ('c8f39585-91ac-46e2-89f2-05d34e879122', '何必呢', '男', '1998-12-29', '17834564312', 'zxc@qq.com', '跳舞,蹦极', '普通客户', '');
INSERT INTO `customer` VALUES ('dd5932d5-d3a3-4952-b854-5e68d3dc5ca4', '李靖飞', '男', '1996-04-30', '17869992828', '842207739@qq.com', '跳舞,探险', 'vip', '');
INSERT INTO `customer` VALUES ('eb90972d-a261-4928-b99a-40c33e651a08', '叫你妹', '男', '1996-03-10', '17834564312', '842207739@qq.com', '跳舞,篮球', 'vip', '');
INSERT INTO `customer` VALUES ('f270ccbb-bf6c-478a-af99-9c6bf7ca78ed', '尹茹茹', '女', '1998-01-13', '123456789012', 'sddgfedrgrd@163.com', '篮球', '普通客户', 'yinrurushabusha');
