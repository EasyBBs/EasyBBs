/*
Navicat MySQL Data Transfer

Source Server         : lwy
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : standlwy

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-01-13 08:58:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `name` char(20) NOT NULL,
  `content` text NOT NULL,
  `time` char(40) DEFAULT NULL,
  `reply` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('苏婷', '问题是能播多久，学生狗月底才放假', null, '3', '1');
INSERT INTO `reply` VALUES ('陆小凤', '我刚开始奶顶多两千万，结果首日快三千。。。我还买早上的场都快满，晚上直接今明两天都没了？？？我这不叫低估叫瞎说了', null, '3', '2');
INSERT INTO `reply` VALUES ('lianwenyi', 'jihihib', '2019-01-12 20:13:42', '2', '3');
INSERT INTO `reply` VALUES ('suting', 'meishaa', '2019-01-12 22:21:25', '3', '4');
