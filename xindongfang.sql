/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : xindongfang

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2022-07-08 09:07:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_course`
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cprice` decimal(10,0) DEFAULT NULL,
  `cshop` int(11) DEFAULT NULL,
  `cphoto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cdetail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `csuper` int(11) DEFAULT '0',
  `ctype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cpush` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('1', '一年级数学', '200', '10', 'd6af7ac13d6f4c0c80854b6322a648d9.jpg', '小学经典数学加减乘除', '1', '小学', '1');
INSERT INTO `t_course` VALUES ('2', '二年级数学', '300', '15', '915116588b6b410cbeca781ffefd67f0.jpg', '小学经典数学2', '1', '小学', '1');
INSERT INTO `t_course` VALUES ('3', '中学语文', '500', '15', '4b05af7530334d83b228e7f366278182.jpg', '中学语文作文', '1', '中学', '0');
INSERT INTO `t_course` VALUES ('4', '大学英语', '600', '200', '6907508226ab4c0bbd0a2c473e586b83.jpg', '四级英语考试', '1', '大学', '0');
INSERT INTO `t_course` VALUES ('5', '大学计算机', '1000', '2500', 'a4a219244d874184828bca1917443095.jpg', '大学C语言编程', '1', '大学', '0');
INSERT INTO `t_course` VALUES ('6', '中学英语', '500', '100', '1b6bc322981e4189af85e137b298107d.jpg', '英语阅读理解', '1', '中学', '0');
INSERT INTO `t_course` VALUES ('7', '大学数学', '600', '100', 'c20d97a35fc14cf9afaa22207bebe9d7.jpg', '高数微积分', '1', '大学', '0');
INSERT INTO `t_course` VALUES ('8', '三年级数学', '500', '10', '059812e6425f4a90b02c842885bbd17f.jpg', '小学初级数学', '0', '小学', '0');
INSERT INTO `t_course` VALUES ('9', '四年级数学', '500', '150', '91abf60970af424d823bf87ec88e6864.jpg', '小学数学', '0', '小学', '0');
INSERT INTO `t_course` VALUES ('10', '二年级语文', '150', '25', '67562a86b3974f5caf012a9b205ca642.jpg', '语文阅读', '1', '小学', '0');
INSERT INTO `t_course` VALUES ('11', '三年级语文', '200', '20', '552606fdc5a54f05ab930fe0096cd7ee.jpg', '语文作文', '0', '小学', '0');
INSERT INTO `t_course` VALUES ('12', '四年级语文', '125', '23', '2815c6f03c194e2db89169e60d4d38b2.jpg', '语文诗词', '1', '小学', '0');
INSERT INTO `t_course` VALUES ('13', '一年级英语', '100', '10', '9d2c7cbb062141a9b0f7089cf69fc9e6.jpg', '英语单词', '0', '小学', '0');
INSERT INTO `t_course` VALUES ('14', '二年级英语', '150', '10', '2ae421b502524ad5a226348ab5cfff40.jpg', '英语课文', '1', '小学', '0');
INSERT INTO `t_course` VALUES ('15', '三年级英语', '200', '20', '2d55b188530f4231a469a9ffd39276ab.jpg', '英语阅读理解', '0', '小学', '0');
INSERT INTO `t_course` VALUES ('16', '四年级英语', '150', '15', 'e99781feb34046d8ad02de7f785873c4.jpg', '英语口语', '0', '小学', '0');
INSERT INTO `t_course` VALUES ('17', '中学数学', '230', '25', null, '数学几何', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('18', '中学数学', '260', '25', null, '数学代数', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('19', '中学语文', '320', '21', null, '语文诗词', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('20', '中学语文', '330', '360', null, '语文阅读理解', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('21', '中学语文', '360', '25', '5dfdc569575a43088abdd035af18a078.jpg', '语文作文', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('22', '中学生物', '210', '21', null, '无脊椎动物', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('23', '中学英语', '350', '20', null, '英语作文1', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('24', '中学英语', '250', '21', null, '英语作文2', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('25', '中学英语', '260', '36', null, '英语作文3', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('26', '中学数学', '360', '26', null, '数学练习课程', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('27', '大学计算机', '569', '256', 'bc4cfc37e3d14e349cab371b86b758c3.png', '大学Java语言编程', '0', '大学', '1');
INSERT INTO `t_course` VALUES ('28', '大学计算机', '580', '389', null, '大学互联网程序', '0', '大学', '0');
INSERT INTO `t_course` VALUES ('29', '大学英语', '560', '456', '968e61befa11424c837a45e85473266f.png', '大学英语六级', '0', '大学', '1');
INSERT INTO `t_course` VALUES ('30', '大学英语', '590', '560', null, '大学托福英语', '0', '大学', '0');
INSERT INTO `t_course` VALUES ('31', '大学数学', '500', '752', null, '微积分', '0', '大学 ', '0');
INSERT INTO `t_course` VALUES ('32', '大学数学', '456', '789', 'fd1b71aa430a4b1293ce1d499806c6cd.jpg', '线性代数', '1', '大学', '0');
INSERT INTO `t_course` VALUES ('33', '中学生物', '456', '700', 'b2158ebc46184eed994e5e76499e2b44.jpg', '生物技术', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('43', '中学物理', '500', '5000', 'logo.png', '力学', '1', '大学', '0');
INSERT INTO `t_course` VALUES ('44', '化学', '6000', '500', '1efe3f3ed0ed479690610a5c5d106cee.jpg', '化学', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('45', '物理', '6000', '200', '3815e7cd15da4df5b29354c3c5c2c0f0.jpg', '中学物理', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('47', '大学计算机', '3600', '525', null, 'python编程', '0', '大学', '0');
INSERT INTO `t_course` VALUES ('48', '中学生物', '500', '29', null, '单细胞生物', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('50', '中学物理', '1000', '53', null, '杠杆原理', '0', '中学', '0');
INSERT INTO `t_course` VALUES ('51', '中学政治', '500', '25', '237d3ecdbdf94646a0c1e574a047a96b.jpg', '学会选择', '1', '中学', '1');
INSERT INTO `t_course` VALUES ('53', '大学英语', '5800', '500', '1b2ee7ecef194ce787af686a66b94c94.png', '大学英语四级', '0', '大学', '0');

-- ----------------------------
-- Table structure for `t_dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `t_dingdan`;
CREATE TABLE `t_dingdan` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `paymentStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `t_course` (`cid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `t_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_dingdan
-- ----------------------------
INSERT INTO `t_dingdan` VALUES ('1', '4', '1', '1', '1');
INSERT INTO `t_dingdan` VALUES ('3', '4', '2', '2', '1');
INSERT INTO `t_dingdan` VALUES ('4', '5', '8', '1', null);
INSERT INTO `t_dingdan` VALUES ('6', '5', '11', '2', null);
INSERT INTO `t_dingdan` VALUES ('8', '5', '15', '1', null);
INSERT INTO `t_dingdan` VALUES ('10', '4', '5', '1', '1');
INSERT INTO `t_dingdan` VALUES ('13', '4', '3', '1', '1');
INSERT INTO `t_dingdan` VALUES ('17', '4', '12', '1', '1');
INSERT INTO `t_dingdan` VALUES ('18', '4', '32', '1', '1');
INSERT INTO `t_dingdan` VALUES ('21', '4', '27', '1', '1');
INSERT INTO `t_dingdan` VALUES ('22', '4', '11', '1', '1');
INSERT INTO `t_dingdan` VALUES ('26', '4', '11', '1', '1');
INSERT INTO `t_dingdan` VALUES ('29', '4', '29', '1', null);
INSERT INTO `t_dingdan` VALUES ('30', '4', '27', '1', '1');
INSERT INTO `t_dingdan` VALUES ('32', '4', '2', '1', '1');

-- ----------------------------
-- Table structure for `t_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tpassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tscript` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tprofessional` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('1', '张丽', '123', '非常好的老师', '语文');
INSERT INTO `t_teacher` VALUES ('2', '小梅', '321', '非常好的老师', '英语');
INSERT INTO `t_teacher` VALUES ('3', '张强', '456', '一般水平', '数学');
INSERT INTO `t_teacher` VALUES ('4', '王欢', '654', '中级水平', '化学');
INSERT INTO `t_teacher` VALUES ('5', '天天', '589', '高级水平', '生物');
INSERT INTO `t_teacher` VALUES ('8', '甘宁', '156', '中级水平', '英语');
INSERT INTO `t_teacher` VALUES ('9', 'aqi', '156', '一般水平\n', '英语');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uemail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `utel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `upass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usal` decimal(10,0) DEFAULT NULL,
  `umessage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('4', 'aa', '2476725597@qq.com', '123-456-7890', '456', '6500', '非常聪明');
INSERT INTO `t_user` VALUES ('5', '小明', '2476725597@qq.com', '123-456-7890', '123', '7500', '180');
INSERT INTO `t_user` VALUES ('8', '甘宁', '2476725597@qq.com', '0135456897000', '156', '500', '180');
INSERT INTO `t_user` VALUES ('17', 'aqi', '2476725597@qq.com', '0135456897000', '589', '1500', '180');
