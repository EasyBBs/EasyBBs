/*
Navicat MySQL Data Transfer

Source Server         : lwy
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : standlwy

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-01-13 08:58:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `age` varchar(3) DEFAULT NULL,
  `telephone` varchar(12) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '路过银河', 'asdfbassfs', '女', null, '13823848908', '13823848908@163.com');
INSERT INTO `userinfo` VALUES ('2', '陆小凤', 'ewqrwrqweqwe', '女', '23', null, 'luxiaofeng@qq.com');
INSERT INTO `userinfo` VALUES ('3', 'suting', '34544333', '男', '34', null, 'suting@gmail.com');
INSERT INTO `userinfo` VALUES ('4', 'wwwwww', '231111333', '女', null, '12332112344', 'fwefrqwee@sina.com');
INSERT INTO `userinfo` VALUES ('5', 'lianwenyi', 'lianwenyi', '女', '18', null, 'shermanlian@163.com');
INSERT INTO `userinfo` VALUES ('6', '蔺且', '1232344', '男', null, null, 'fsdfs@qq.com');
INSERT INTO `userinfo` VALUES ('7', 'weee', '123123', '女', '12', '12312312311', 'fsdghdfg@112.com');
INSERT INTO `userinfo` VALUES ('8', 'safdsdg', 'asdsfgfhg', '男', '55', null, 'sdfg@143.com');
INSERT INTO `userinfo` VALUES ('11', '山豆根地方', 'gfddh', '男', '34', null, 'rwehte@163.com');
INSERT INTO `userinfo` VALUES ('12', 'lian', '12333333', '女', '12', '19090901111', 'fwegreh@13.com');
INSERT INTO `userinfo` VALUES ('13', 'sdarhe', 'safergwe', '女', '22', '19090901111', '111111@163.com');
