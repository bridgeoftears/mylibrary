create database mylibrary;
use mylibrary;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` int(12) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `admin` VALUES (1, '101', 123456);


DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ISBN` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `language` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `pubdate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(10) NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1007 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `book_info` VALUES (1007, '三体', '刘慈欣', '中国教育出版社', '123456789', '中国第一科幻小说', '中文', 105.00, '2022-01-05', 18, 22);
INSERT INTO `book_info` VALUES (1008, '斗破苍穹', '天蚕土豆', '北京教育出版社', '321654987', '中国第一玄幻小说', '中文', 26.00, '2022-01-04', 22, 98);
INSERT INTO `book_info` VALUES (1009, '修罗武帝', '梦入神机', '山西教育出版社', '147852369', '朱雀化身，力破万敌', '中文', 203.00, '2022-01-03', 22, 232);
INSERT INTO `book_info` VALUES (1010, '百年孤独', '加西亚·马尔克斯', '美国文学出版社', '258413697', '布恩迪亚家族七代人的传奇故事以及加勒比海沿岸小镇马孔多的百年兴衰', '英语', 12.00, '2022-01-01', 19, 9);
INSERT INTO `book_info` VALUES (1011, '龙族', '江南', '岭南出版社', '125478963', '我们都是小怪兽，都会被正义的奥特曼杀死', '中文', 263.00, '2022-01-06', 18, 24);
INSERT INTO `book_info` VALUES (1012, '天之炽', '江南', '岭南出版社', '325641789', '机甲王朝，大夏龙雀', '中文', 123.00, '2022-01-07', 18, 56);


DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `class_info` VALUES (18, '科幻');
INSERT INTO `class_info` VALUES (19, '文学\n');
INSERT INTO `class_info` VALUES (20, '哲学');
INSERT INTO `class_info` VALUES (21, '经济学');
INSERT INTO `class_info` VALUES (22, '玄幻');
INSERT INTO `class_info` VALUES (23, '神话');
INSERT INTO `class_info` VALUES (24, '科学\n');


DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reader_id` int(12) NULL DEFAULT NULL,
  `book_id` int(12) NULL DEFAULT NULL,
  `lend_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `back_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fine` double(10, 2) NULL DEFAULT NULL,
  `state` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `lend_list` VALUES (19, 10001, 1007, '2022-01-10', '2022-02-07', 0.00, '2');
INSERT INTO `lend_list` VALUES (20, 10001, 1008, '2022-01-10', '2022-02-07', 0.00, '2');
INSERT INTO `lend_list` VALUES (21, 10001, 1009, '2022-01-10', '2022-02-07', 0.00, '2');
INSERT INTO `lend_list` VALUES (22, 10001, 1010, '2022-01-10', '2022-02-07', 0.00, '2');
INSERT INTO `lend_list` VALUES (23, 10002, 1007, '2022-01-10', '2022-02-07', 0.00, '2');


DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reader_id` int(11) NOT NULL,
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` int(12) NOT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_state` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `reader_info` VALUES (1, 10001, '李文杰', 123, '男', '2000-12-4', '陕西省西安市', '123456789', 4);
INSERT INTO `reader_info` VALUES (6, 10002, '李飞', 123456, '男', '2022-01-06', '山东省青岛市', '14785236911', 1);
INSERT INTO `reader_info` VALUES (12, 10003, '宋雨晴', 123, '女', '2022-01-01', '北京市海淀区', '14523698725', NULL);

SET FOREIGN_KEY_CHECKS = 1;
