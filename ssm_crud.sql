/*
Navicat MySQL Data Transfer

Source Server         : JavaEE
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : ssm_crud

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2020-04-26 11:40:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES ('1', '开发部');
INSERT INTO `tbl_dept` VALUES ('2', '测试部');

-- ----------------------------
-- Table structure for tbl_emp
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_emp_dept` (`d_id`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`d_id`) REFERENCES `tbl_dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('10', 'b25b98', 'M', 'qqqqqq@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('11', '9f4e79', 'M', '9f4e79@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('12', '86bcf10', 'M', '86bcf10@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('13', 'b298311', 'M', 'b298311@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('14', '4f08c12', 'F', '4f08c12@qq.com', '2');
INSERT INTO `tbl_emp` VALUES ('15', 'fbbb213', 'M', 'qweqwe3@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('16', 'd7cae14', 'M', 'd7cae14@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('17', '686e815', 'M', '686e815@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('18', 'eb56916', 'M', 'eb56916@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('19', '7343817', 'M', '7343817@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('20', 'bb0e818', 'M', 'bb0e818@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('21', 'e567219', 'M', 'e567219@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('22', 'f390220', 'M', 'f390220@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('23', '8b96221', 'M', '8b96221@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('24', 'ee61122', 'M', 'ee61122@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('25', 'efb3b23', 'M', 'efb3b23@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('26', '220de24', 'M', '220de24@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('27', 'b09af25', 'M', 'b09af25@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('28', 'ca2c826', 'M', 'ca2c826@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('29', 'ff52427', 'M', 'ff52427@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('30', '0175528', 'M', '0175528@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('31', '3217429', 'M', '3217429@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('32', '52efa30', 'M', '52efa30@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('33', '3d23c31', 'M', '3d23c31@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('34', '607e632', 'M', '607e632@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('35', '6d3e133', 'M', '6d3e133@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('36', 'e462a34', 'M', 'e462a34@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('37', '9a6d835', 'M', '9a6d835@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('38', 'a0d1736', 'M', 'a0d1736@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('39', 'ebf0737', 'M', 'ebf0737@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('40', '3ae0c38', 'M', '3ae0c38@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('41', '3be8439', 'M', '3be8439@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('42', '34aa040', 'M', '34aa040@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('43', 'e005741', 'M', 'e005741@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('44', '8533242', 'M', '8533242@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('45', '5d13443', 'M', '5d13443@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('46', '2362144', 'M', '2362144@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('47', 'f02c745', 'M', 'f02c745@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('48', '2512a46', 'M', '2512a46@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('49', 'f9fad47', 'M', 'f9fad47@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('50', '8eb5948', 'M', '8eb5948@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('51', 'b11a949', 'M', 'b11a949@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('52', '28a0e50', 'M', '28a0e50@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('53', '3690b51', 'M', '3690b51@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('54', '335f752', 'M', '335f752@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('55', '595b053', 'M', '595b053@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('56', 'f1d5054', 'M', 'f1d5054@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('57', '9029255', 'M', '9029255@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('58', '708fe56', 'M', '708fe56@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('59', 'a6e3057', 'M', 'a6e3057@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('60', '7fede58', 'M', '7fede58@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('61', 'd09ce59', 'M', 'd09ce59@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('62', '7490960', 'M', '7490960@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('63', '1e76961', 'M', '1e76961@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('64', '0dfd762', 'M', '0dfd762@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('65', '4969d63', 'M', '4969d63@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('66', 'd057564', 'M', 'd057564@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('67', 'f8f5965', 'M', 'f8f5965@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('68', '53aad66', 'M', '53aad66@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('69', '57bd667', 'M', '57bd667@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('70', '6ab1d68', 'M', '6ab1d68@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('71', 'ddd4469', 'M', 'ddd4469@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('72', '6597f70', 'M', '6597f70@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('73', '5e2e571', 'M', '5e2e571@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('74', '90bed72', 'M', '90bed72@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('75', '499cc73', 'M', '499cc73@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('76', '4442e74', 'M', '4442e74@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('77', 'cf4e475', 'M', 'cf4e475@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('78', 'c4e3f76', 'M', 'c4e3f76@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('79', '0fd1177', 'M', '0fd1177@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('80', 'bf35678', 'M', 'bf35678@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('81', 'd395579', 'M', 'd395579@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('82', '1227f80', 'M', '1227f80@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('83', '4e89181', 'M', '4e89181@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('84', '74d9782', 'M', '74d9782@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('85', '9f3a683', 'M', '9f3a683@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('86', 'e2c7384', 'M', 'e2c7384@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('87', '5bb9085', 'M', '5bb9085@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('88', '4b93886', 'M', '4b93886@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('89', 'aed7f87', 'M', 'aed7f87@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('90', 'eb2bb88', 'M', 'eb2bb88@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('91', '3cfae89', 'M', '3cfae89@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('92', '24d0c90', 'M', '24d0c90@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('93', '6b10191', 'M', '6b10191@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('94', 'b057092', 'M', 'b057092@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('95', '4566293', 'M', '4566293@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('96', '9a08694', 'M', '9a08694@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('97', '8c27d95', 'M', '8c27d95@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('98', 'a0f5e96', 'M', 'a0f5e96@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('99', 'a380297', 'M', 'a380297@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('100', '1c83f98', 'M', '1c83f98@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('101', 'd8c3b99', 'M', 'd8c3b99@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('102', 'ad3a70', 'M', 'ad3a70@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('103', '0b6c91', 'M', '0b6c91@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('104', 'fcd872', 'M', 'fcd872@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('105', '348fd3', 'M', '348fd3@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('106', 'e8eb14', 'M', 'e8eb14@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('107', 'c471d5', 'M', 'c471d5@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('108', '378ea6', 'M', '378ea6@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('109', 'd19e77', 'M', 'd19e77@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('110', '7bea48', 'M', '7bea48@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('111', 'ebb2e9', 'M', 'ebb2e9@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('112', 'f92ad10', 'M', 'f92ad10@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('113', 'fa9a111', 'M', 'fa9a111@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('114', 'd396d12', 'M', 'd396d12@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('115', '159db13', 'M', '159db13@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('116', '6811a14', 'M', '6811a14@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('117', '6af2015', 'M', '6af2015@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('118', '4d01816', 'M', '4d01816@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('119', 'f8ddd17', 'M', 'f8ddd17@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('120', '6e0d718', 'M', '6e0d718@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('121', '196df19', 'M', '196df19@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('122', '376ba20', 'M', '376ba20@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('123', '0067e21', 'M', '0067e21@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('124', 'd470e22', 'M', 'd470e22@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('125', 'ab0cb23', 'M', 'ab0cb23@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('126', '66cd224', 'M', '66cd224@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('127', 'e692825', 'M', 'e692825@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('128', '226bd26', 'M', '226bd26@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('129', '087de27', 'M', '087de27@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('130', '3568828', 'M', '3568828@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('131', '0e0f929', 'M', '0e0f929@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('132', 'eb89830', 'M', 'eb89830@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('133', '15a8231', 'M', '15a8231@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('134', '112d732', 'M', '112d732@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('135', '0884233', 'M', '0884233@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('136', '91c0434', 'M', '91c0434@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('137', 'b186035', 'M', 'b186035@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('138', '098c436', 'M', '098c436@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('139', 'f9f1337', 'M', 'f9f1337@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('140', 'd742138', 'M', 'd742138@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('141', 'a68a539', 'M', 'a68a539@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('142', '2f1cb40', 'M', '2f1cb40@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('143', '64d6041', 'M', '64d6041@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('144', '75c5b42', 'M', '75c5b42@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('145', '9521243', 'M', '9521243@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('146', 'e74b644', 'M', 'e74b644@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('147', '62a5445', 'M', '62a5445@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('148', 'b74e046', 'M', 'b74e046@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('149', 'e212447', 'M', 'e212447@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('150', '6a0a948', 'M', '6a0a948@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('151', '85fbd49', 'M', '85fbd49@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('152', '9155850', 'M', '9155850@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('153', '1b38a51', 'M', '1b38a51@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('154', '5d86452', 'M', '5d86452@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('155', '0247353', 'M', '0247353@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('156', '5869954', 'M', '5869954@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('157', '692b155', 'M', '692b155@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('158', '0201156', 'M', '0201156@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('159', '6b84157', 'M', '6b84157@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('160', '3be8558', 'M', '3be8558@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('161', '5af9d59', 'M', '5af9d59@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('162', 'a351d60', 'M', 'a351d60@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('163', '1027961', 'M', '1027961@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('164', '674f162', 'M', '674f162@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('165', '629aa63', 'M', '629aa63@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('166', '8631c64', 'M', '8631c64@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('167', '4864165', 'M', '4864165@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('168', '8b74b66', 'M', '8b74b66@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('169', '54da967', 'M', '54da967@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('170', '7d7a368', 'M', '7d7a368@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('171', '005d869', 'M', '005d869@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('172', '4d6a070', 'M', '4d6a070@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('173', '2bb9471', 'M', '2bb9471@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('174', '9d07d72', 'M', '9d07d72@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('175', '8e82e73', 'M', '8e82e73@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('176', '5404b74', 'M', '5404b74@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('177', '46c1d75', 'M', '46c1d75@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('178', 'fcb2076', 'M', 'fcb2076@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('179', '8ea1f77', 'M', '8ea1f77@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('180', '805de78', 'M', '805de78@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('181', '5010879', 'M', '5010879@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('182', '0a92680', 'M', '0a92680@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('183', 'c190e81', 'M', 'c190e81@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('184', '8009d82', 'M', '8009d82@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('185', 'c7b7283', 'M', 'c7b7283@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('186', 'b2a5984', 'M', 'b2a5984@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('187', '0bec785', 'M', '0bec785@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('188', 'db1aa86', 'M', 'db1aa86@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('189', '3f50387', 'M', '3f50387@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('190', '7724688', 'M', '7724688@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('191', '1b98189', 'M', '1b98189@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('192', 'a817d90', 'M', 'a817d90@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('193', '8ad0091', 'M', '8ad0091@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('194', '8540692', 'M', '8540692@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('195', '4c35493', 'M', '4c35493@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('196', '6eb8594', 'M', '6eb8594@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('197', 'a094a95', 'M', 'a094a95@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('198', '00c7b96', 'M', '00c7b96@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('199', 'b51dd97', 'M', 'b51dd97@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('200', 'f7d3098', 'M', 'f7d3098@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('201', 'eab3f99', 'M', 'eab3f99@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('202', 'sherlock', 'M', 'Jerry111@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('203', 'sherlock221', 'M', 'qweqrt@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('204', 'sherlock221cc', 'F', 'qweqrt@qq.com', '2');
INSERT INTO `tbl_emp` VALUES ('205', 'cccccc', 'F', 'qweqe@qq.com', '2');
INSERT INTO `tbl_emp` VALUES ('206', 'ccchahahah', 'M', 'qwrq@q.com', '1');
INSERT INTO `tbl_emp` VALUES ('207', 'qweeee', 'M', 'qe@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('208', 'qwcccw', 'M', 'qe@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('209', 'qwcccw', 'M', 'qe@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('210', 'cccdddd', 'M', '496763798@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('211', '啦啦啦啦', 'M', '496763798@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('222', 'ccqwert', 'M', '496763798@qq.com', '1');
INSERT INTO `tbl_emp` VALUES ('223', '茉莉花茶', 'F', '1357715449@qq.com', '2');
INSERT INTO `tbl_emp` VALUES ('224', 'ccccccccc', 'F', '496763798@qq.com', '2');
INSERT INTO `tbl_emp` VALUES ('225', '吃吃喝喝', 'F', 'cchh@126.com', '2');
