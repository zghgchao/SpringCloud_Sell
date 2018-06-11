/*
Navicat MySQL Data Transfer

Source Server         : 虚拟机
Source Server Version : 50717
Source Host           : 192.168.0.113:3306
Source Database       : sell

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-07 14:13:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `detail_id` varchar(32) NOT NULL,
  `order_id` varchar(32) NOT NULL,
  `product_id` varchar(32) NOT NULL,
  `product_name` varchar(64) NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '商品价格',
  `product_quantity` int(11) NOT NULL COMMENT '商品数量',
  `product_icon` varchar(512) DEFAULT NULL COMMENT '商品小图',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`detail_id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单详情表';

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('1521380998868843047', '1521380998772199032', '12', '贝果', '20.00', '1', '65', '2018-03-18 13:50:35', '2018-03-18 13:50:35');
INSERT INTO `order_detail` VALUES ('1521381049474341280', '1521381049363146541', '12', '贝果', '20.00', '1', '65', '2018-03-18 13:51:29', '2018-03-18 13:51:29');
INSERT INTO `order_detail` VALUES ('1521381104628525647', '1521381104543439178', '12', '贝果', '20.00', '1', '65', '2018-03-18 13:52:37', '2018-03-18 13:52:37');
INSERT INTO `order_detail` VALUES ('1521381181359659014', '1521381181209695583', '12', '贝果', '20.00', '1', '65', '2018-03-18 13:53:02', '2018-03-18 13:53:02');
INSERT INTO `order_detail` VALUES ('1521381287487773446', '1521381287405368899', '12', '贝果', '20.00', '1', '65', '2018-03-18 13:54:48', '2018-03-18 13:54:48');
INSERT INTO `order_detail` VALUES ('1521381551991711537', '1521381551933777137', '12', '贝果', '20.00', '5', '65', '2018-03-18 13:59:13', '2018-03-18 13:59:13');
INSERT INTO `order_detail` VALUES ('1521381552009220049', '1521381551933777137', '123', '猪杂汤饭', '123.00', '5', 'ok', '2018-03-18 13:59:13', '2018-03-18 13:59:13');
INSERT INTO `order_detail` VALUES ('1521458078910172682', '1521458078756370319', '12', '贝果', '20.00', '5', '65', '2018-03-19 11:14:40', '2018-03-19 11:14:40');
INSERT INTO `order_detail` VALUES ('1521458078936647528', '1521458078756370319', '123', '猪杂汤饭', '123.00', '5', 'ok', '2018-03-19 11:14:40', '2018-03-19 11:14:40');
INSERT INTO `order_detail` VALUES ('1521475087578518095', '1521475087488656354', '12', '贝果', '20.00', '5', '65', '2018-03-19 15:58:09', '2018-03-19 15:58:09');
INSERT INTO `order_detail` VALUES ('1521475087607170652', '1521475087488656354', '123', '猪杂汤饭', '123.00', '5', 'ok', '2018-03-19 15:58:09', '2018-03-19 15:58:09');
INSERT INTO `order_detail` VALUES ('1521642006635126184', '1521642006597329497', '100', '腌面', '123.00', '2', '66', '2018-03-21 14:20:08', '2018-03-21 14:20:08');
INSERT INTO `order_detail` VALUES ('1521963033168757324', '1521963033091580811', '100', '腌面', '123.00', '2', '66', '2018-03-25 07:30:33', '2018-03-25 07:30:33');
INSERT INTO `order_detail` VALUES ('1521964154280195844', '1521964154244587355', '100', '腌面', '123.00', '2', '66', '2018-03-25 07:49:14', '2018-03-25 07:49:14');
INSERT INTO `order_detail` VALUES ('1523160194602480817', '1523160194389584128', '12', '贝果', '21.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:03:15', '2018-04-08 04:03:15');
INSERT INTO `order_detail` VALUES ('1523160194623296805', '1523160194389584128', '123', '猪杂汤饭', '123.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:03:15', '2018-04-08 04:03:15');
INSERT INTO `order_detail` VALUES ('1523160427800253376', '1523160427639694529', '12', '贝果', '21.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:08:30', '2018-04-08 04:08:30');
INSERT INTO `order_detail` VALUES ('1523160427885605466', '1523160427639694529', '123', '猪杂汤饭', '123.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:08:30', '2018-04-08 04:08:30');
INSERT INTO `order_detail` VALUES ('1523160580984725106', '1523160580778483861', '12', '贝果', '21.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:09:42', '2018-04-08 04:09:42');
INSERT INTO `order_detail` VALUES ('1523160581089354440', '1523160580778483861', '123', '猪杂汤饭', '123.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:09:42', '2018-04-08 04:09:42');
INSERT INTO `order_detail` VALUES ('1523160721954830976', '1523160721745991721', '12', '贝果', '21.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:12:03', '2018-04-08 04:12:03');
INSERT INTO `order_detail` VALUES ('1523160722110343044', '1523160721745991721', '123', '猪杂汤饭', '123.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:12:03', '2018-04-08 04:12:03');
INSERT INTO `order_detail` VALUES ('1523160825933244275', '1523160825761562386', '12', '贝果', '21.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:13:45', '2018-04-08 04:13:45');
INSERT INTO `order_detail` VALUES ('1523160826059967244', '1523160825761562386', '123', '猪杂汤饭', '123.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:13:45', '2018-04-08 04:13:45');
INSERT INTO `order_detail` VALUES ('1523160896167530661', '1523160896026956865', '12', '贝果', '21.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:14:56', '2018-04-08 04:14:56');
INSERT INTO `order_detail` VALUES ('1523160896264123784', '1523160896026956865', '123', '猪杂汤饭', '123.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:14:56', '2018-04-08 04:14:56');
INSERT INTO `order_detail` VALUES ('1523160942274123933', '1523160942092508246', '12', '贝果', '21.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:15:42', '2018-04-08 04:15:42');
INSERT INTO `order_detail` VALUES ('1523160942411542974', '1523160942092508246', '123', '猪杂汤饭', '123.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:15:42', '2018-04-08 04:15:42');
INSERT INTO `order_detail` VALUES ('1523161109177809904', '1523161109067160328', '12', '贝果', '21.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:18:29', '2018-04-08 04:18:29');
INSERT INTO `order_detail` VALUES ('1523161109274828294', '1523161109067160328', '123', '猪杂汤饭', '123.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:18:29', '2018-04-08 04:18:29');
INSERT INTO `order_detail` VALUES ('1523161419304447469', '1523161419201780909', '12', '贝果', '21.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:23:39', '2018-04-08 04:23:39');
INSERT INTO `order_detail` VALUES ('1523161419374790923', '1523161419201780909', '123', '猪杂汤饭', '123.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:23:39', '2018-04-08 04:23:39');
INSERT INTO `order_detail` VALUES ('1523161497233242012', '1523161497076670640', '12', '贝果', '21.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:24:57', '2018-04-08 04:24:57');
INSERT INTO `order_detail` VALUES ('1523161497311850360', '1523161497076670640', '123', '猪杂汤饭', '123.00', '5', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '2018-04-08 04:24:57', '2018-04-08 04:24:57');
INSERT INTO `order_detail` VALUES ('66', '123', '13', '吃吃33', '123.00', '66', '这是', '2018-04-06 01:50:15', '2018-04-06 01:50:15');
INSERT INTO `order_detail` VALUES ('7', '123', '13', '吃吃33', '123.00', '66', '这是', '2018-04-06 01:40:16', '2018-04-06 01:40:16');
INSERT INTO `order_detail` VALUES ('73389', '11', '12', '吃吃吃33', '123.00', '1', '这是啥', '2018-03-17 13:36:35', '2018-03-18 11:15:40');
INSERT INTO `order_detail` VALUES ('77', '123', '13', '吃吃33', '123.00', '66', '这是', '2018-04-06 01:47:05', '2018-04-06 01:47:05');
INSERT INTO `order_detail` VALUES ('778899', '123', '13', '吃吃33', '123.00', '66', '这是', '2018-04-06 02:53:38', '2018-04-06 02:53:38');
INSERT INTO `order_detail` VALUES ('789', '11', '1', '吃吃吃', '123.00', '2', '这是啥', '2018-03-17 13:19:57', '2018-03-18 11:15:44');

-- ----------------------------
-- Table structure for `order_master`
-- ----------------------------
DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master` (
  `order_id` varchar(32) NOT NULL,
  `buyer_name` varchar(32) NOT NULL COMMENT '买家名字',
  `buyer_phone` varchar(32) NOT NULL COMMENT '买家电话',
  `buyer_address` varchar(128) NOT NULL COMMENT '买家地址',
  `buyer_openid` varchar(64) NOT NULL COMMENT '买家微信openid',
  `order_amount` decimal(8,2) NOT NULL COMMENT '订单总金额',
  `order_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '订单状态，默认0新下单',
  `pay_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付状态，默认0新下单',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`order_id`),
  KEY `idx_buyer_openid` (`buyer_openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

-- ----------------------------
-- Records of order_master
-- ----------------------------
INSERT INTO `order_master` VALUES ('11', '贝贝', '211236658', '家里', '123', '123.00', '1', '0', '2018-03-17 11:46:17', '2018-03-26 07:50:40');
INSERT INTO `order_master` VALUES ('121', '爷爷', '211236658', '家里', '123', '123.00', '0', '0', '2018-03-17 11:48:44', '2018-03-17 11:48:44');
INSERT INTO `order_master` VALUES ('1521380998772199032', '学炜', '15113811528', '华工', '123', '20.00', '2', '0', '2018-03-18 13:50:35', '2018-03-26 07:32:38');
INSERT INTO `order_master` VALUES ('1521381049363146541', '学炜', '15113811528', '华工', '123', '20.00', '2', '0', '2018-03-18 13:51:29', '2018-03-26 07:39:35');
INSERT INTO `order_master` VALUES ('1521381104543439178', '学炜', '15113811528', '华工', '123', '20.00', '2', '0', '2018-03-18 13:52:37', '2018-03-26 06:48:34');
INSERT INTO `order_master` VALUES ('1521381181209695583', '学炜', '15113811528', '华工', '123', '20.00', '2', '0', '2018-03-18 13:53:02', '2018-03-26 06:50:08');
INSERT INTO `order_master` VALUES ('1521381287405368899', '学炜', '15113811528', '华工', '123', '20.00', '2', '0', '2018-03-18 13:54:48', '2018-03-26 07:03:59');
INSERT INTO `order_master` VALUES ('1521381551933777137', '学炜', '15113811528', '华工', '123', '715.00', '2', '0', '2018-03-18 13:59:13', '2018-03-26 07:34:24');
INSERT INTO `order_master` VALUES ('1521458078756370319', '学炜', '15113811528', '华工', '123', '715.00', '0', '0', '2018-03-19 11:14:40', '2018-03-26 06:46:17');
INSERT INTO `order_master` VALUES ('1521475087488656354', '学炜', '15113811528', '华工', '123', '715.00', '0', '0', '2018-03-19 15:58:09', '2018-03-26 06:46:18');
INSERT INTO `order_master` VALUES ('1521642006597329497', '张三', '15113811528', '华工', '528', '246.00', '2', '0', '2018-03-21 14:20:08', '2018-03-26 07:42:57');
INSERT INTO `order_master` VALUES ('1521963033091580811', '学炜', '15113811528', '华工', '11528', '246.00', '1', '0', '2018-03-25 07:30:33', '2018-03-26 07:49:32');
INSERT INTO `order_master` VALUES ('1521964154244587355', 'xwwxw\n', '15113811528', '华工\n', '528', '246.00', '2', '0', '2018-03-25 07:49:14', '2018-03-26 07:49:44');
INSERT INTO `order_master` VALUES ('1523160194389584128', '学炜', '15113811528', '华工', '123', '720.00', '0', '0', '2018-04-08 04:03:15', '2018-04-08 04:03:15');
INSERT INTO `order_master` VALUES ('1523160427639694529', '学炜', '15113811528', '华工', '123', '720.00', '0', '0', '2018-04-08 04:08:30', '2018-04-08 04:08:30');
INSERT INTO `order_master` VALUES ('1523160580778483861', '学炜', '15113811528', '华工', '123', '720.00', '0', '0', '2018-04-08 04:09:42', '2018-04-08 04:09:42');
INSERT INTO `order_master` VALUES ('1523160721745991721', '学炜', '15113811528', '华工', '123', '720.00', '0', '0', '2018-04-08 04:12:03', '2018-04-08 04:12:03');
INSERT INTO `order_master` VALUES ('1523160825761562386', '学炜', '15113811528', '华工', '123', '720.00', '0', '0', '2018-04-08 04:13:45', '2018-04-08 04:13:45');
INSERT INTO `order_master` VALUES ('1523160896026956865', '学炜', '15113811528', '华工', '123', '720.00', '0', '0', '2018-04-08 04:14:56', '2018-04-08 04:14:56');
INSERT INTO `order_master` VALUES ('1523160942092508246', '学炜', '15113811528', '华工', '123', '720.00', '0', '0', '2018-04-08 04:15:42', '2018-04-08 04:15:42');
INSERT INTO `order_master` VALUES ('1523161109067160328', '学炜', '15113811528', '华工', '123', '720.00', '0', '0', '2018-04-08 04:18:29', '2018-04-08 04:18:29');
INSERT INTO `order_master` VALUES ('1523161419201780909', '学炜', '15113811528', '华工', '123', '720.00', '0', '0', '2018-04-08 04:23:39', '2018-04-08 04:23:39');
INSERT INTO `order_master` VALUES ('1523161497076670640', '学炜', '15113811528', '华工', '123', '720.00', '0', '0', '2018-04-08 04:24:57', '2018-04-08 04:24:57');

-- ----------------------------
-- Table structure for `product_category`
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) NOT NULL COMMENT '类目名字',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `uqe_category_type` (`category_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='类目表';

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('3', '特价促销', '3', '2018-03-08 15:19:16', '2018-03-26 12:50:27');
INSERT INTO `product_category` VALUES ('5', '学炜最爱', '4', '2018-03-28 02:08:11', '2018-03-28 02:08:11');
INSERT INTO `product_category` VALUES ('9', '我爱的a', '88', '2018-03-28 05:12:19', '2018-03-28 05:13:34');
INSERT INTO `product_category` VALUES ('11', '学炜爱', '99', '2018-03-28 05:14:16', '2018-03-28 05:14:16');

-- ----------------------------
-- Table structure for `product_info`
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `product_id` varchar(32) NOT NULL,
  `product_name` varchar(64) NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '单价',
  `product_stock` int(11) NOT NULL COMMENT '库存',
  `product_description` varchar(64) DEFAULT NULL COMMENT '描述',
  `product_icon` varchar(512) DEFAULT NULL COMMENT '小图',
  `product_status` tinyint(3) DEFAULT '0' COMMENT '商品状态，0正常1下架',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

-- ----------------------------
-- Records of product_info
-- ----------------------------
INSERT INTO `product_info` VALUES ('100', '腌面', '155.00', '22', '四方形的面', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '0', '1', '2018-03-18 09:52:45', '2018-03-28 14:40:26');
INSERT INTO `product_info` VALUES ('12', '贝果', '21.00', '205', '下午茶走起', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '0', '1', '2018-03-12 14:51:55', '2018-04-08 04:24:57');
INSERT INTO `product_info` VALUES ('12233223', '鳗鱼饭', '1232.00', '55', '贝贝要吃火速上架', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '0', '1', '2018-03-18 09:58:38', '2018-03-28 14:41:29');
INSERT INTO `product_info` VALUES ('123', '瘦肉', '123.00', '100', 'ko', 'ok', '1', '2', '2018-04-23 12:42:52', '2018-04-23 12:42:52');
INSERT INTO `product_info` VALUES ('1233', '麦辣鸡腿堡', '1234.00', '22', '贝贝要吃火速上架', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '0', '1', '2018-03-18 09:57:09', '2018-03-28 14:41:54');
INSERT INTO `product_info` VALUES ('12333', '三文鱼', '123.00', '56', '贝贝要吃火速上架', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '0', '1', '2018-03-18 09:58:12', '2018-03-26 08:55:36');
INSERT INTO `product_info` VALUES ('1234', '苦瓜排骨汤', '123.00', '22', '妈妈的味道', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '0', '1', '2018-03-15 10:34:09', '2018-03-26 08:55:36');
INSERT INTO `product_info` VALUES ('1522066790254269021', '鹅', '111.00', '5', '11', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '0', '1', '2018-03-26 12:19:50', '2018-03-26 12:20:18');
INSERT INTO `product_info` VALUES ('1522292676902590193', '6', '6.00', '6', '6', '6', '0', '3', '2018-03-29 03:04:36', '2018-03-29 03:04:36');
INSERT INTO `product_info` VALUES ('866', '拉面', '123.00', '56', '贝贝要吃火速上架', 'http://hiphotos.baidu.com/_%D0%A1%9DH/pic/item/25be912e3331e071d52af175.jpg', '0', '1', '2018-03-18 09:58:58', '2018-03-26 08:55:37');

-- ----------------------------
-- Table structure for `seller_info`
-- ----------------------------
DROP TABLE IF EXISTS `seller_info`;
CREATE TABLE `seller_info` (
  `seller_id` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `openid` varchar(64) DEFAULT NULL COMMENT '微信openid',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='卖家信息表';

-- ----------------------------
-- Records of seller_info
-- ----------------------------
INSERT INTO `seller_info` VALUES ('1', '学炜', '123456', '', '123456', '2018-03-28 15:32:04', '2018-03-28 15:32:04');
INSERT INTO `seller_info` VALUES ('1522251970186138281', 'admin', 'admin', '', 'abc', '2018-03-28 15:46:11', '2018-03-28 15:46:11');
INSERT INTO `seller_info` VALUES ('1523162117582649529', '1234', '1234', '', '1234', '2018-04-08 04:35:17', '2018-04-08 04:35:17');
INSERT INTO `seller_info` VALUES ('1523163732504501267', '12', '12', '', null, '2018-04-08 05:02:12', '2018-04-08 05:02:12');
INSERT INTO `seller_info` VALUES ('1523165170719370152', '试验Salt', 'salt', '047d2', null, '2018-04-08 05:26:10', '2018-04-08 05:26:10');
INSERT INTO `seller_info` VALUES ('1523165286159759843', 'Salt', 'salt7c4ba', '7c4ba', null, '2018-04-08 05:28:06', '2018-04-08 05:28:06');
INSERT INTO `seller_info` VALUES ('1523165381656982737', 'Salt123', '4952D7B330CB2C6A526DB6DCB3763AE9', '54ae1', null, '2018-04-08 05:29:41', '2018-04-08 05:29:41');
INSERT INTO `seller_info` VALUES ('1523167412882722158', 'Sal', '783195C55F23958A64C79E90C62CDB44', '91a07', null, '2018-04-08 06:03:32', '2018-04-08 06:03:32');
INSERT INTO `seller_info` VALUES ('1523167908131127752', 'sssssss', '8DC0C6F6B569A5A2A72C18DD9880991F', 'ab1f4', null, '2018-04-08 06:11:48', '2018-04-08 06:11:48');
INSERT INTO `seller_info` VALUES ('1523168312856341154', '77', '14EACB5105853E5258D3B03B9BC0374C', 'c7898', null, '2018-04-08 06:18:32', '2018-04-08 06:18:32');
INSERT INTO `seller_info` VALUES ('1523168345082376366', '88', '80C742EB46FBB927C7861A6E21AA3F28', '09cce', null, '2018-04-08 06:19:04', '2018-04-08 06:19:04');
INSERT INTO `seller_info` VALUES ('1523168353326593042', '99', 'D0AE5C737E2E312ADEB1C52EC38F4B2C', '1d455', null, '2018-04-08 06:19:13', '2018-04-08 06:19:13');
INSERT INTO `seller_info` VALUES ('1523168381479457034', '999', 'EA55A75AC8552CB044A66607A103D855', '4aa07', null, '2018-04-08 06:19:41', '2018-04-08 06:19:41');
INSERT INTO `seller_info` VALUES ('1523168413899726198', 'e', 'F2C8C1564565E006CA21B40579E5EA04', 'aa57f', null, '2018-04-08 06:20:13', '2018-04-08 06:20:13');
INSERT INTO `seller_info` VALUES ('1523168435264442506', '55', '720CB212794996B7A25C3B28808EEDA5', '21999', null, '2018-04-08 06:20:35', '2018-04-08 06:20:35');
INSERT INTO `seller_info` VALUES ('1523168520785645087', 'sdg', '911E363B5FF274A0D11177AEFB2DD657', '67ac7', null, '2018-04-08 06:22:00', '2018-04-08 06:22:00');
INSERT INTO `seller_info` VALUES ('1523169042406783009', '435', '62C0173EE401C3165C8099CEA406FF4F', '9bf7d', null, '2018-04-08 06:30:42', '2018-04-08 06:30:42');
INSERT INTO `seller_info` VALUES ('1523169292966945561', '213', '7E7B216D1F9EA9177A948A296F91072C', '5dd56', null, '2018-04-08 06:34:52', '2018-04-08 06:34:52');
INSERT INTO `seller_info` VALUES ('1523169531696554873', '222', '49A6D2D1F130B7B08ABF5D833737D04B', '4d3b9', null, '2018-04-08 06:38:51', '2018-04-08 06:38:51');
INSERT INTO `seller_info` VALUES ('1523173177879664562', '123', 'ED912095B3857E6EAB8C18F93AB9CDE4', 'fe592', null, '2018-04-08 07:39:37', '2018-04-08 07:39:37');
