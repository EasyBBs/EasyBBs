/*
Navicat MySQL Data Transfer

Source Server         : lwy
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : standlwy

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-01-13 08:57:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss` (
  `name` char(20) NOT NULL,
  `email` char(40) NOT NULL,
  `subject` char(60) NOT NULL,
  `content` text NOT NULL,
  `time` char(40) DEFAULT NULL,
  `username` char(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discuss
-- ----------------------------
INSERT INTO `discuss` VALUES ('连雯怡', '', '这是第一个帖子', '这是第一篇帖子呀呀呀呀呀', '2019-1-12', 'lianwenyi', '1');
INSERT INTO `discuss` VALUES ('苏婷', '', '苏婷是个铁憨憨', '对对对大家说的对', '', '', '2');
INSERT INTO `discuss` VALUES ('陆小凤陆小凤', '', '\r\n明天准备买票了……', '排了那么多场，票房不高肯定亏死了\r\n排了那么多场，票房不高肯定亏死了\r\n排了那么多场，票房不高肯定亏死了\r\n排了那么多场，票房不高肯定亏死了\r\n水水水水大恶骨科大夫沙发代数基本了hi哦啊', null, '陆小凤', '3');
INSERT INTO `discuss` VALUES ('test', 'test', 'test', 'test', '2019-01-12 15:35:44', 'lianwenyi', '4');
INSERT INTO `discuss` VALUES ('cbajdfgdwih', 'cbajdfgdwih', 'cbajdfgdwih', 'cbajdfgdwih', '2019-01-12 22:19:28', 'suting', '5');
INSERT INTO `discuss` VALUES ('sutingmeiyoujiji', 'sutingmeiyoujiji', 'sutingmeiyoujiji', 'sutingmeiyoujijisutingmeiyoujijisutingmeiyoujiji', '2019-01-12 22:20:14', 'suting', '6');
