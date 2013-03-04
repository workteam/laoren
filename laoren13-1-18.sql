/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : laoren

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-01-18 22:58:55
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `op_address`
-- ----------------------------
DROP TABLE IF EXISTS `op_address`;
CREATE TABLE `op_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `company` varchar(32) COLLATE utf8_bin NOT NULL,
  `company_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `tax_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `address_1` varchar(128) COLLATE utf8_bin NOT NULL,
  `address_2` varchar(128) COLLATE utf8_bin NOT NULL,
  `city` varchar(128) COLLATE utf8_bin NOT NULL,
  `postcode` varchar(10) COLLATE utf8_bin NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_address
-- ----------------------------

-- ----------------------------
-- Table structure for `op_affiliate`
-- ----------------------------
DROP TABLE IF EXISTS `op_affiliate`;
CREATE TABLE `op_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) COLLATE utf8_bin NOT NULL DEFAULT '',
  `telephone` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fax` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `salt` varchar(9) COLLATE utf8_bin NOT NULL DEFAULT '',
  `company` varchar(32) COLLATE utf8_bin NOT NULL,
  `website` varchar(255) COLLATE utf8_bin NOT NULL,
  `address_1` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_2` varchar(128) COLLATE utf8_bin NOT NULL,
  `city` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `postcode` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) COLLATE utf8_bin NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) COLLATE utf8_bin NOT NULL,
  `payment` varchar(6) COLLATE utf8_bin NOT NULL,
  `cheque` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `paypal` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bank_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bank_branch_number` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bank_swift_code` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bank_account_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bank_account_number` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_affiliate
-- ----------------------------

-- ----------------------------
-- Table structure for `op_affiliate_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `op_affiliate_transaction`;
CREATE TABLE `op_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_affiliate_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `op_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `op_attribute`;
CREATE TABLE `op_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_attribute
-- ----------------------------
INSERT INTO op_attribute VALUES ('1', '6', '1');
INSERT INTO op_attribute VALUES ('2', '6', '5');
INSERT INTO op_attribute VALUES ('3', '6', '3');
INSERT INTO op_attribute VALUES ('4', '3', '1');
INSERT INTO op_attribute VALUES ('5', '3', '2');
INSERT INTO op_attribute VALUES ('6', '3', '3');
INSERT INTO op_attribute VALUES ('7', '3', '4');
INSERT INTO op_attribute VALUES ('8', '3', '5');
INSERT INTO op_attribute VALUES ('9', '3', '6');
INSERT INTO op_attribute VALUES ('10', '3', '7');
INSERT INTO op_attribute VALUES ('11', '3', '8');

-- ----------------------------
-- Table structure for `op_attribute_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_attribute_description`;
CREATE TABLE `op_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_attribute_description
-- ----------------------------
INSERT INTO op_attribute_description VALUES ('1', '2', 'Description');
INSERT INTO op_attribute_description VALUES ('2', '2', 'No. of Cores');
INSERT INTO op_attribute_description VALUES ('4', '2', 'test 1');
INSERT INTO op_attribute_description VALUES ('5', '2', 'test 2');
INSERT INTO op_attribute_description VALUES ('6', '2', 'test 3');
INSERT INTO op_attribute_description VALUES ('7', '2', 'test 4');
INSERT INTO op_attribute_description VALUES ('8', '2', 'test 5');
INSERT INTO op_attribute_description VALUES ('9', '2', 'test 6');
INSERT INTO op_attribute_description VALUES ('10', '2', 'test 7');
INSERT INTO op_attribute_description VALUES ('11', '2', 'test 8');
INSERT INTO op_attribute_description VALUES ('3', '2', 'Clockspeed');

-- ----------------------------
-- Table structure for `op_attribute_group`
-- ----------------------------
DROP TABLE IF EXISTS `op_attribute_group`;
CREATE TABLE `op_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_attribute_group
-- ----------------------------
INSERT INTO op_attribute_group VALUES ('3', '2');
INSERT INTO op_attribute_group VALUES ('4', '1');
INSERT INTO op_attribute_group VALUES ('5', '3');
INSERT INTO op_attribute_group VALUES ('6', '4');

-- ----------------------------
-- Table structure for `op_attribute_group_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_attribute_group_description`;
CREATE TABLE `op_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_attribute_group_description
-- ----------------------------
INSERT INTO op_attribute_group_description VALUES ('3', '2', 'Memory');
INSERT INTO op_attribute_group_description VALUES ('4', '2', 'Technical');
INSERT INTO op_attribute_group_description VALUES ('5', '2', 'Motherboard');
INSERT INTO op_attribute_group_description VALUES ('6', '2', 'Processor');

-- ----------------------------
-- Table structure for `op_banner`
-- ----------------------------
DROP TABLE IF EXISTS `op_banner`;
CREATE TABLE `op_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_banner
-- ----------------------------
INSERT INTO op_banner VALUES ('6', '左侧广告', '1');
INSERT INTO op_banner VALUES ('7', '首页Bannner(左侧440*232)', '1');
INSERT INTO op_banner VALUES ('9', '首页中部广告条（宽度975高度110）', '1');
INSERT INTO op_banner VALUES ('10', '首页中部栏目间广告一', '1');
INSERT INTO op_banner VALUES ('11', '首页中部栏目间广告二', '1');
INSERT INTO op_banner VALUES ('12', '首页Bannner(右侧440*232) ', '1');

-- ----------------------------
-- Table structure for `op_banner_image`
-- ----------------------------
DROP TABLE IF EXISTS `op_banner_image`;
CREATE TABLE `op_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_banner_image
-- ----------------------------
INSERT INTO op_banner_image VALUES ('104', '7', '', 'data/bannner/4.jpg');
INSERT INTO op_banner_image VALUES ('105', '7', '', 'data/bannner/3.jpg');
INSERT INTO op_banner_image VALUES ('96', '6', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'data/solution/2logistics-process1.jpg');
INSERT INTO op_banner_image VALUES ('103', '12', 'http://www.hczm.cn', 'data/bannner/3.jpg');
INSERT INTO op_banner_image VALUES ('84', '9', 'http://www.hczm.cn', 'data/ads/ads-1.png');
INSERT INTO op_banner_image VALUES ('85', '10', 'http://www.hczm.cn', 'data/ads/ads_3.jpg');
INSERT INTO op_banner_image VALUES ('86', '11', 'http://www.hczm.cn', 'data/ads/ads_5.jpg');
INSERT INTO op_banner_image VALUES ('106', '7', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'data/bannner/2.jpg');
INSERT INTO op_banner_image VALUES ('102', '12', 'http://www.hczm.cn', 'data/bannner/2.jpg');
INSERT INTO op_banner_image VALUES ('101', '12', 'http://www.hczm.cn', 'data/bannner/1.jpg');

-- ----------------------------
-- Table structure for `op_banner_image_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_banner_image_description`;
CREATE TABLE `op_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_banner_image_description
-- ----------------------------
INSERT INTO op_banner_image_description VALUES ('102', '2', '12', '测试');
INSERT INTO op_banner_image_description VALUES ('86', '2', '11', '首页中部栏目间广告二');
INSERT INTO op_banner_image_description VALUES ('85', '2', '10', '首页中部栏目间广告一');
INSERT INTO op_banner_image_description VALUES ('84', '2', '9', '首页中部广告条');
INSERT INTO op_banner_image_description VALUES ('106', '2', '7', '测试一 ');
INSERT INTO op_banner_image_description VALUES ('96', '2', '6', '测试');
INSERT INTO op_banner_image_description VALUES ('103', '2', '12', '测试');
INSERT INTO op_banner_image_description VALUES ('105', '2', '7', '测试三');
INSERT INTO op_banner_image_description VALUES ('104', '2', '7', '测试二 ');
INSERT INTO op_banner_image_description VALUES ('101', '2', '12', '测试');

-- ----------------------------
-- Table structure for `op_category`
-- ----------------------------
DROP TABLE IF EXISTS `op_category`;
CREATE TABLE `op_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_category
-- ----------------------------
INSERT INTO op_category VALUES ('27', '', '20', '0', '0', '2', '1', '2009-01-31 01:55:34', '2013-01-11 17:52:26');
INSERT INTO op_category VALUES ('20', 'data/demo/compaq_presario.jpg', '0', '1', '1', '1', '1', '2009-01-05 21:49:43', '2013-01-11 17:49:05');
INSERT INTO op_category VALUES ('26', '', '20', '0', '0', '1', '1', '2009-01-31 01:55:14', '2013-01-11 17:52:07');
INSERT INTO op_category VALUES ('64', '', '20', '0', '1', '0', '1', '2013-01-09 21:27:23', '2013-01-11 17:51:53');
INSERT INTO op_category VALUES ('63', '', '20', '0', '1', '0', '1', '2013-01-09 21:27:09', '2013-01-11 17:51:01');
INSERT INTO op_category VALUES ('62', '', '20', '0', '1', '0', '1', '2013-01-09 21:26:54', '2013-01-11 17:50:47');
INSERT INTO op_category VALUES ('61', '', '20', '0', '1', '0', '1', '2013-01-09 21:26:41', '2013-01-11 17:51:27');
INSERT INTO op_category VALUES ('60', '', '20', '0', '1', '0', '1', '2013-01-09 21:26:23', '2013-01-11 17:51:39');
INSERT INTO op_category VALUES ('59', '', '20', '0', '1', '0', '1', '2013-01-09 21:26:03', '2013-01-11 17:49:30');
INSERT INTO op_category VALUES ('65', '', '0', '0', '1', '2', '1', '2013-01-11 17:54:07', '2013-01-11 17:58:59');
INSERT INTO op_category VALUES ('66', '', '0', '0', '1', '3', '1', '2013-01-11 17:54:18', '2013-01-11 17:59:30');
INSERT INTO op_category VALUES ('67', '', '0', '0', '1', '4', '1', '2013-01-11 17:54:25', '2013-01-11 17:59:44');
INSERT INTO op_category VALUES ('68', '', '0', '0', '1', '5', '1', '2013-01-11 17:54:31', '2013-01-11 17:59:54');
INSERT INTO op_category VALUES ('69', '', '65', '0', '1', '0', '1', '2013-01-11 17:54:51', '2013-01-11 17:54:51');
INSERT INTO op_category VALUES ('70', '', '65', '0', '1', '0', '1', '2013-01-11 17:55:04', '2013-01-11 17:55:04');
INSERT INTO op_category VALUES ('71', '', '66', '0', '1', '0', '1', '2013-01-11 17:55:27', '2013-01-11 17:55:27');
INSERT INTO op_category VALUES ('72', '', '66', '0', '1', '0', '1', '2013-01-11 17:55:44', '2013-01-11 17:55:44');
INSERT INTO op_category VALUES ('73', '', '67', '0', '1', '0', '1', '2013-01-11 17:56:01', '2013-01-11 17:56:01');
INSERT INTO op_category VALUES ('74', '', '67', '0', '1', '0', '1', '2013-01-11 17:56:13', '2013-01-11 17:56:13');
INSERT INTO op_category VALUES ('75', '', '68', '0', '1', '0', '1', '2013-01-11 17:56:48', '2013-01-11 17:56:48');
INSERT INTO op_category VALUES ('76', '', '68', '0', '1', '0', '1', '2013-01-11 17:57:02', '2013-01-11 17:57:02');

-- ----------------------------
-- Table structure for `op_category_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_category_description`;
CREATE TABLE `op_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_category_description
-- ----------------------------
INSERT INTO op_category_description VALUES ('70', '2', '外套', '', '', '');
INSERT INTO op_category_description VALUES ('59', '2', '按摩椅', '', '', '');
INSERT INTO op_category_description VALUES ('64', '2', '保健项圈/手环', '', '', '');
INSERT INTO op_category_description VALUES ('62', '2', '保健枕', '', '', '');
INSERT INTO op_category_description VALUES ('61', '2', '按摩床垫', '', '', '');
INSERT INTO op_category_description VALUES ('60', '2', '按摩披肩', '', '按摩披肩', '');
INSERT INTO op_category_description VALUES ('63', '2', '保健枕头', '', '', '');
INSERT INTO op_category_description VALUES ('27', '2', '按摩棒/锤', '', '', '');
INSERT INTO op_category_description VALUES ('26', '2', '刮痧片/板', '', '', '');
INSERT INTO op_category_description VALUES ('20', '2', '养生保健', 0x266C743B702667743B0D0A09E585BBE7949FE4BF9DE581A5266C743B2F702667743B0D0A, '养生保健', '');
INSERT INTO op_category_description VALUES ('65', '2', '衣', '', '', '');
INSERT INTO op_category_description VALUES ('66', '2', '食', '', '', '');
INSERT INTO op_category_description VALUES ('67', '2', '住', '', '', '');
INSERT INTO op_category_description VALUES ('68', '2', '行', '', '', '');
INSERT INTO op_category_description VALUES ('69', '2', '衬衫', '', '', '');
INSERT INTO op_category_description VALUES ('71', '2', '饼干', '', '', '');
INSERT INTO op_category_description VALUES ('72', '2', '水果', '', '', '');
INSERT INTO op_category_description VALUES ('73', '2', '柜子', '', '', '');
INSERT INTO op_category_description VALUES ('74', '2', '沙发', '', '', '');
INSERT INTO op_category_description VALUES ('75', '2', '拐杖', '', '', '');
INSERT INTO op_category_description VALUES ('76', '2', '轮椅', '', '', '');

-- ----------------------------
-- Table structure for `op_category_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `op_category_to_layout`;
CREATE TABLE `op_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_category_to_layout
-- ----------------------------

-- ----------------------------
-- Table structure for `op_category_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `op_category_to_store`;
CREATE TABLE `op_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_category_to_store
-- ----------------------------
INSERT INTO op_category_to_store VALUES ('20', '0');
INSERT INTO op_category_to_store VALUES ('26', '0');
INSERT INTO op_category_to_store VALUES ('27', '0');
INSERT INTO op_category_to_store VALUES ('59', '0');
INSERT INTO op_category_to_store VALUES ('60', '0');
INSERT INTO op_category_to_store VALUES ('61', '0');
INSERT INTO op_category_to_store VALUES ('62', '0');
INSERT INTO op_category_to_store VALUES ('63', '0');
INSERT INTO op_category_to_store VALUES ('64', '0');
INSERT INTO op_category_to_store VALUES ('65', '0');
INSERT INTO op_category_to_store VALUES ('66', '0');
INSERT INTO op_category_to_store VALUES ('67', '0');
INSERT INTO op_category_to_store VALUES ('68', '0');
INSERT INTO op_category_to_store VALUES ('69', '0');
INSERT INTO op_category_to_store VALUES ('70', '0');
INSERT INTO op_category_to_store VALUES ('71', '0');
INSERT INTO op_category_to_store VALUES ('72', '0');
INSERT INTO op_category_to_store VALUES ('73', '0');
INSERT INTO op_category_to_store VALUES ('74', '0');
INSERT INTO op_category_to_store VALUES ('75', '0');
INSERT INTO op_category_to_store VALUES ('76', '0');

-- ----------------------------
-- Table structure for `op_country`
-- ----------------------------
DROP TABLE IF EXISTS `op_country`;
CREATE TABLE `op_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `iso_code_2` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `iso_code_3` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_format` text COLLATE utf8_bin NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_country
-- ----------------------------
INSERT INTO op_country VALUES ('44', '中国', 'CN', 'CHN', '', '0', '1');

-- ----------------------------
-- Table structure for `op_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `op_coupon`;
CREATE TABLE `op_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `code` varchar(10) COLLATE utf8_bin NOT NULL,
  `type` char(1) COLLATE utf8_bin NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_coupon
-- ----------------------------
INSERT INTO op_coupon VALUES ('4', '-10% Discount', '2222', 'P', '10.0000', '0', '0', '0.0000', '2011-01-01', '2012-01-01', '10', '10', '1', '2009-01-27 13:55:03');
INSERT INTO op_coupon VALUES ('5', 'Free Shipping', '3333', 'P', '0.0000', '0', '1', '100.0000', '2009-03-01', '2009-08-31', '10', '10', '1', '2009-03-14 21:13:53');
INSERT INTO op_coupon VALUES ('6', '-10.00 Discount', '1111', 'F', '10.0000', '0', '0', '10.0000', '1970-11-01', '2020-11-01', '100000', '10000', '1', '2009-03-14 21:15:18');

-- ----------------------------
-- Table structure for `op_coupon_history`
-- ----------------------------
DROP TABLE IF EXISTS `op_coupon_history`;
CREATE TABLE `op_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_coupon_history
-- ----------------------------

-- ----------------------------
-- Table structure for `op_coupon_product`
-- ----------------------------
DROP TABLE IF EXISTS `op_coupon_product`;
CREATE TABLE `op_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_coupon_product
-- ----------------------------

-- ----------------------------
-- Table structure for `op_currency`
-- ----------------------------
DROP TABLE IF EXISTS `op_currency`;
CREATE TABLE `op_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT '',
  `symbol_left` varchar(12) COLLATE utf8_bin NOT NULL,
  `symbol_right` varchar(12) COLLATE utf8_bin NOT NULL,
  `decimal_place` char(1) COLLATE utf8_bin NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_currency
-- ----------------------------
INSERT INTO op_currency VALUES ('2', 'US Dollar', 'USD', '$', '', '2', '1.00000000', '1', '2013-01-11 19:34:56');

-- ----------------------------
-- Table structure for `op_customer`
-- ----------------------------
DROP TABLE IF EXISTS `op_customer`;
CREATE TABLE `op_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) COLLATE utf8_bin NOT NULL DEFAULT '',
  `telephone` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fax` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `salt` varchar(9) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cart` text COLLATE utf8_bin,
  `wishlist` text COLLATE utf8_bin,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_customer
-- ----------------------------

-- ----------------------------
-- Table structure for `op_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `op_customer_group`;
CREATE TABLE `op_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_customer_group
-- ----------------------------
INSERT INTO op_customer_group VALUES ('1', '0', '1', '0', '0', '1', '1');

-- ----------------------------
-- Table structure for `op_customer_group_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_customer_group_description`;
CREATE TABLE `op_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_customer_group_description
-- ----------------------------
INSERT INTO op_customer_group_description VALUES ('1', '2', 'Default', 0x74657374);

-- ----------------------------
-- Table structure for `op_customer_ip`
-- ----------------------------
DROP TABLE IF EXISTS `op_customer_ip`;
CREATE TABLE `op_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_customer_ip
-- ----------------------------

-- ----------------------------
-- Table structure for `op_customer_ip_blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `op_customer_ip_blacklist`;
CREATE TABLE `op_customer_ip_blacklist` (
  `customer_ip_blacklist_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`customer_ip_blacklist_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_customer_ip_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for `op_customer_online`
-- ----------------------------
DROP TABLE IF EXISTS `op_customer_online`;
CREATE TABLE `op_customer_online` (
  `ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text COLLATE utf8_bin NOT NULL,
  `referer` text COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_customer_online
-- ----------------------------

-- ----------------------------
-- Table structure for `op_customer_reward`
-- ----------------------------
DROP TABLE IF EXISTS `op_customer_reward`;
CREATE TABLE `op_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_bin NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_customer_reward
-- ----------------------------

-- ----------------------------
-- Table structure for `op_customer_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `op_customer_transaction`;
CREATE TABLE `op_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_customer_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `op_download`
-- ----------------------------
DROP TABLE IF EXISTS `op_download`;
CREATE TABLE `op_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mask` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_download
-- ----------------------------

-- ----------------------------
-- Table structure for `op_download_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_download_description`;
CREATE TABLE `op_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_download_description
-- ----------------------------

-- ----------------------------
-- Table structure for `op_extension`
-- ----------------------------
DROP TABLE IF EXISTS `op_extension`;
CREATE TABLE `op_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) COLLATE utf8_bin NOT NULL,
  `code` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=454 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_extension
-- ----------------------------
INSERT INTO op_extension VALUES ('23', 'payment', 'cod');
INSERT INTO op_extension VALUES ('22', 'total', 'shipping');
INSERT INTO op_extension VALUES ('57', 'total', 'sub_total');
INSERT INTO op_extension VALUES ('58', 'total', 'tax');
INSERT INTO op_extension VALUES ('59', 'total', 'total');
INSERT INTO op_extension VALUES ('410', 'module', 'banner');
INSERT INTO op_extension VALUES ('390', 'total', 'credit');
INSERT INTO op_extension VALUES ('387', 'shipping', 'flat');
INSERT INTO op_extension VALUES ('349', 'total', 'handling');
INSERT INTO op_extension VALUES ('350', 'total', 'low_order_fee');
INSERT INTO op_extension VALUES ('389', 'total', 'coupon');
INSERT INTO op_extension VALUES ('453', 'module', 'welcome');
INSERT INTO op_extension VALUES ('411', 'module', 'affiliate');
INSERT INTO op_extension VALUES ('408', 'module', 'account');
INSERT INTO op_extension VALUES ('393', 'total', 'reward');
INSERT INTO op_extension VALUES ('398', 'total', 'voucher');
INSERT INTO op_extension VALUES ('407', 'payment', 'free_checkout');
INSERT INTO op_extension VALUES ('431', 'module', 'category');
INSERT INTO op_extension VALUES ('419', 'module', 'slideshow');
INSERT INTO op_extension VALUES ('428', 'feed', 'google_base');
INSERT INTO op_extension VALUES ('429', 'feed', 'google_sitemap');
INSERT INTO op_extension VALUES ('452', 'module', 'homelayout');

-- ----------------------------
-- Table structure for `op_geo_zone`
-- ----------------------------
DROP TABLE IF EXISTS `op_geo_zone`;
CREATE TABLE `op_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_geo_zone
-- ----------------------------
INSERT INTO op_geo_zone VALUES ('3', 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25');
INSERT INTO op_geo_zone VALUES ('4', 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- ----------------------------
-- Table structure for `op_information`
-- ----------------------------
DROP TABLE IF EXISTS `op_information`;
CREATE TABLE `op_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_information
-- ----------------------------
INSERT INTO op_information VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for `op_information_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_information_description`;
CREATE TABLE `op_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_information_description
-- ----------------------------
INSERT INTO op_information_description VALUES ('1', '2', '公司介绍', 0x266C743B702667743B0D0A09E585ACE58FB8E4BB8BE7BB8D266C743B2F702667743B0D0A);

-- ----------------------------
-- Table structure for `op_information_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `op_information_to_layout`;
CREATE TABLE `op_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_information_to_layout
-- ----------------------------

-- ----------------------------
-- Table structure for `op_information_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `op_information_to_store`;
CREATE TABLE `op_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_information_to_store
-- ----------------------------
INSERT INTO op_information_to_store VALUES ('1', '0');

-- ----------------------------
-- Table structure for `op_language`
-- ----------------------------
DROP TABLE IF EXISTS `op_language`;
CREATE TABLE `op_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(5) COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(64) COLLATE utf8_bin NOT NULL,
  `directory` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filename` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_language
-- ----------------------------
INSERT INTO op_language VALUES ('2', 'Chinese', 'cn', 'zh,zh-hk,zh-cn,zh-cn.UTF-8,cn-gb,chinese', 'cn.png', 'chinese', 'chinese', '0', '1');

-- ----------------------------
-- Table structure for `op_layout`
-- ----------------------------
DROP TABLE IF EXISTS `op_layout`;
CREATE TABLE `op_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_layout
-- ----------------------------
INSERT INTO op_layout VALUES ('1', 'Home');
INSERT INTO op_layout VALUES ('2', 'Product');
INSERT INTO op_layout VALUES ('3', 'Category');
INSERT INTO op_layout VALUES ('4', 'Default');
INSERT INTO op_layout VALUES ('5', 'Manufacturer');
INSERT INTO op_layout VALUES ('6', 'Account');
INSERT INTO op_layout VALUES ('7', 'Checkout');
INSERT INTO op_layout VALUES ('8', 'Contact');
INSERT INTO op_layout VALUES ('9', 'Sitemap');
INSERT INTO op_layout VALUES ('10', 'Affiliate');
INSERT INTO op_layout VALUES ('11', 'Information');
INSERT INTO op_layout VALUES ('12', '老人院首页');

-- ----------------------------
-- Table structure for `op_layout_route`
-- ----------------------------
DROP TABLE IF EXISTS `op_layout_route`;
CREATE TABLE `op_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_layout_route
-- ----------------------------
INSERT INTO op_layout_route VALUES ('30', '6', '0', 'account');
INSERT INTO op_layout_route VALUES ('17', '10', '0', 'affiliate/');
INSERT INTO op_layout_route VALUES ('29', '3', '0', 'product/category');
INSERT INTO op_layout_route VALUES ('26', '1', '0', 'common/home');
INSERT INTO op_layout_route VALUES ('20', '2', '0', 'product/product');
INSERT INTO op_layout_route VALUES ('24', '11', '0', 'information/information');
INSERT INTO op_layout_route VALUES ('22', '5', '0', 'product/manufacturer');
INSERT INTO op_layout_route VALUES ('23', '7', '0', 'checkout/');
INSERT INTO op_layout_route VALUES ('31', '8', '0', 'information/contact');
INSERT INTO op_layout_route VALUES ('38', '12', '0', 'homes');

-- ----------------------------
-- Table structure for `op_length_class`
-- ----------------------------
DROP TABLE IF EXISTS `op_length_class`;
CREATE TABLE `op_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_length_class
-- ----------------------------
INSERT INTO op_length_class VALUES ('1', '1.00000000');
INSERT INTO op_length_class VALUES ('2', '10.00000000');
INSERT INTO op_length_class VALUES ('3', '0.39370000');

-- ----------------------------
-- Table structure for `op_length_class_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_length_class_description`;
CREATE TABLE `op_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_bin NOT NULL,
  `unit` varchar(4) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_length_class_description
-- ----------------------------
INSERT INTO op_length_class_description VALUES ('1', '2', 'Centimeter', 'cm');
INSERT INTO op_length_class_description VALUES ('2', '2', 'Millimeter', 'mm');
INSERT INTO op_length_class_description VALUES ('3', '2', 'Inch', 'in');

-- ----------------------------
-- Table structure for `op_manufacturer`
-- ----------------------------
DROP TABLE IF EXISTS `op_manufacturer`;
CREATE TABLE `op_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_manufacturer
-- ----------------------------
INSERT INTO op_manufacturer VALUES ('5', 'HTC', 'data/demo/htc_logo.jpg', '0');
INSERT INTO op_manufacturer VALUES ('6', 'Palm', 'data/demo/palm_logo.jpg', '0');
INSERT INTO op_manufacturer VALUES ('7', 'Hewlett-Packard', 'data/demo/hp_logo.jpg', '0');
INSERT INTO op_manufacturer VALUES ('8', 'Apple', 'data/demo/apple_logo.jpg', '0');
INSERT INTO op_manufacturer VALUES ('9', 'Canon', 'data/demo/canon_logo.jpg', '0');
INSERT INTO op_manufacturer VALUES ('10', 'Sony', 'data/demo/sony_logo.jpg', '0');

-- ----------------------------
-- Table structure for `op_manufacturer_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `op_manufacturer_to_store`;
CREATE TABLE `op_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_manufacturer_to_store
-- ----------------------------
INSERT INTO op_manufacturer_to_store VALUES ('5', '0');
INSERT INTO op_manufacturer_to_store VALUES ('6', '0');
INSERT INTO op_manufacturer_to_store VALUES ('7', '0');
INSERT INTO op_manufacturer_to_store VALUES ('8', '0');
INSERT INTO op_manufacturer_to_store VALUES ('9', '0');
INSERT INTO op_manufacturer_to_store VALUES ('10', '0');

-- ----------------------------
-- Table structure for `op_news`
-- ----------------------------
DROP TABLE IF EXISTS `op_news`;
CREATE TABLE `op_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `cat_id` int(3) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_news
-- ----------------------------
INSERT INTO op_news VALUES ('1', '0', '1', '0', '0', null, null, null, null);
INSERT INTO op_news VALUES ('9', '0', '1', '0', '0', null, null, null, null);
INSERT INTO op_news VALUES ('3', '0', '1', '2', '0', null, null, null, null);
INSERT INTO op_news VALUES ('6', '0', '1', '0', '0', null, null, null, null);
INSERT INTO op_news VALUES ('5', '0', '1', '2', '0', null, null, null, null);
INSERT INTO op_news VALUES ('10', '0', '1', '0', '0', null, null, null, null);
INSERT INTO op_news VALUES ('11', '0', '1', '2', '0', null, null, null, null);
INSERT INTO op_news VALUES ('12', '0', '1', '2', '0', null, null, null, null);
INSERT INTO op_news VALUES ('14', '0', '1', '0', '0', null, null, null, null);
INSERT INTO op_news VALUES ('17', '0', '1', '0', '0', null, null, null, null);
INSERT INTO op_news VALUES ('18', '0', '1', '0', '3', '684', '44', null, null);
INSERT INTO op_news VALUES ('19', '0', '1', '0', '3', '693', '44', null, null);
INSERT INTO op_news VALUES ('20', '0', '1', '2', '0', null, null, null, null);
INSERT INTO op_news VALUES ('21', '0', '1', '2', '0', null, null, null, null);
INSERT INTO op_news VALUES ('22', '0', '1', '1', '20', null, null, null, null);
INSERT INTO op_news VALUES ('23', '0', '1', '1', '20', null, null, null, null);
INSERT INTO op_news VALUES ('24', '0', '1', '1', '22', null, null, null, null);
INSERT INTO op_news VALUES ('25', '0', '1', '1', '0', null, null, null, null);
INSERT INTO op_news VALUES ('26', '0', '1', '1', '23', null, null, null, null);
INSERT INTO op_news VALUES ('27', '0', '1', '1', '21', null, null, null, null);
INSERT INTO op_news VALUES ('28', '0', '1', '4', '0', null, null, null, null);
INSERT INTO op_news VALUES ('29', '0', '1', '4', '0', null, null, null, null);
INSERT INTO op_news VALUES ('30', '0', '1', '4', '0', null, null, null, null);
INSERT INTO op_news VALUES ('31', '0', '1', '4', '29', null, null, null, null);
INSERT INTO op_news VALUES ('32', '0', '1', '4', '29', null, null, null, null);
INSERT INTO op_news VALUES ('33', '0', '1', '4', '29', null, null, null, null);
INSERT INTO op_news VALUES ('34', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('35', '0', '1', '5', '33', null, null, null, null);
INSERT INTO op_news VALUES ('36', '0', '1', '5', '32', null, null, null, null);
INSERT INTO op_news VALUES ('37', '0', '1', '6', '0', null, null, null, null);
INSERT INTO op_news VALUES ('38', '0', '1', '6', '0', null, null, null, null);
INSERT INTO op_news VALUES ('39', '0', '1', '6', '0', null, null, null, null);
INSERT INTO op_news VALUES ('40', '0', '1', '6', '0', null, null, null, null);
INSERT INTO op_news VALUES ('41', '0', '1', '6', '0', null, null, null, null);
INSERT INTO op_news VALUES ('42', '0', '1', '6', '37', null, null, null, null);
INSERT INTO op_news VALUES ('43', '0', '1', '6', '0', null, null, null, null);
INSERT INTO op_news VALUES ('44', '0', '1', '3', '26', null, null, null, null);
INSERT INTO op_news VALUES ('45', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('46', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('47', '0', '1', '3', '26', null, null, null, null);
INSERT INTO op_news VALUES ('48', '0', '1', '3', '25', null, null, null, null);
INSERT INTO op_news VALUES ('49', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('50', '0', '1', '3', '25', null, null, null, null);
INSERT INTO op_news VALUES ('51', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('52', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('53', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('54', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('55', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('56', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('57', '0', '1', '3', '26', null, null, null, null);
INSERT INTO op_news VALUES ('58', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('59', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('60', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('61', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('62', '0', '1', '3', '25', null, null, null, null);
INSERT INTO op_news VALUES ('63', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('64', '0', '1', '3', '0', null, null, null, null);
INSERT INTO op_news VALUES ('65', '0', '1', '7', '0', null, null, null, null);
INSERT INTO op_news VALUES ('66', '0', '1', '7', '0', null, null, null, null);
INSERT INTO op_news VALUES ('67', '0', '1', '8', '0', null, null, null, null);
INSERT INTO op_news VALUES ('68', '0', '1', '9', '0', null, null, null, null);
INSERT INTO op_news VALUES ('69', '0', '1', '10', '0', null, null, null, null);
INSERT INTO op_news VALUES ('70', '0', '1', '4', '0', null, null, null, null);
INSERT INTO op_news VALUES ('71', '0', '1', '4', '0', null, null, null, null);
INSERT INTO op_news VALUES ('72', '0', '1', '4', '0', null, null, null, null);
INSERT INTO op_news VALUES ('73', '0', '1', '4', '0', null, null, '0000-00-00', 'data/ads/004.jpg');
INSERT INTO op_news VALUES ('74', '0', '1', '4', '0', null, null, '0000-00-00', 'data/ads/003.jpg');
INSERT INTO op_news VALUES ('75', '0', '1', '4', '0', null, null, '0000-00-00', 'data/ads/004.jpg');
INSERT INTO op_news VALUES ('76', '0', '1', '4', '0', null, null, '0000-00-00', 'data/ads/001.jpg');
INSERT INTO op_news VALUES ('77', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('78', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('79', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('80', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('81', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('82', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('83', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('84', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('85', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('86', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('87', '0', '1', '5', '0', null, null, null, null);
INSERT INTO op_news VALUES ('88', '0', '1', '6', '0', null, null, null, null);
INSERT INTO op_news VALUES ('89', '0', '1', '8', '0', null, null, null, null);
INSERT INTO op_news VALUES ('90', '0', '1', '8', '0', null, null, null, null);
INSERT INTO op_news VALUES ('91', '0', '1', '8', '0', null, null, null, null);
INSERT INTO op_news VALUES ('92', '0', '1', '9', '0', null, null, null, null);
INSERT INTO op_news VALUES ('93', '0', '1', '9', '0', null, null, null, null);
INSERT INTO op_news VALUES ('94', '0', '1', '9', '0', null, null, null, null);
INSERT INTO op_news VALUES ('95', '0', '1', '7', '0', null, null, null, null);
INSERT INTO op_news VALUES ('96', '0', '1', '7', '0', null, null, null, null);
INSERT INTO op_news VALUES ('97', '0', '1', '10', '0', null, null, null, null);
INSERT INTO op_news VALUES ('98', '0', '1', '10', '0', null, null, null, null);
INSERT INTO op_news VALUES ('99', '0', '1', '10', '0', null, null, null, null);
INSERT INTO op_news VALUES ('100', '0', '1', '10', '0', null, null, null, null);
INSERT INTO op_news VALUES ('101', '0', '1', '10', '0', null, null, null, null);
INSERT INTO op_news VALUES ('102', '0', '1', '10', '0', null, null, null, null);
INSERT INTO op_news VALUES ('103', '0', '1', '10', '0', null, null, null, null);
INSERT INTO op_news VALUES ('104', '0', '1', '9', '0', null, null, null, null);
INSERT INTO op_news VALUES ('105', '0', '1', '9', '0', null, null, null, null);
INSERT INTO op_news VALUES ('106', '0', '1', '9', '0', null, null, null, null);
INSERT INTO op_news VALUES ('107', '0', '1', '9', '0', null, null, null, null);
INSERT INTO op_news VALUES ('108', '0', '1', '8', '0', null, null, null, null);
INSERT INTO op_news VALUES ('109', '0', '1', '8', '0', null, null, null, null);
INSERT INTO op_news VALUES ('110', '0', '1', '8', '0', null, null, null, null);
INSERT INTO op_news VALUES ('111', '0', '1', '8', '0', null, null, null, null);
INSERT INTO op_news VALUES ('112', '0', '1', '7', '0', null, null, null, null);
INSERT INTO op_news VALUES ('113', '0', '1', '7', '0', null, null, null, null);
INSERT INTO op_news VALUES ('114', '0', '1', '7', '0', null, null, null, null);
INSERT INTO op_news VALUES ('115', '0', '1', '7', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `op_news_category`
-- ----------------------------
DROP TABLE IF EXISTS `op_news_category`;
CREATE TABLE `op_news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `language_id` int(3) DEFAULT NULL,
  `sort_order` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of op_news_category
-- ----------------------------
INSERT INTO op_news_category VALUES ('3', 'bbb', '0', '2', '2');
INSERT INTO op_news_category VALUES ('7', '代理加盟分类一', '2', '2', '5');
INSERT INTO op_news_category VALUES ('9', '代理加盟分类五', '2', '2', '9');
INSERT INTO op_news_category VALUES ('13', '代理加盟分类二', '2', '2', '5');
INSERT INTO op_news_category VALUES ('14', '代理加盟分类三', '2', '2', '5');
INSERT INTO op_news_category VALUES ('20', '招商引资分类一', '1', '2', '0');
INSERT INTO op_news_category VALUES ('21', '招商引资分类二', '1', '2', '0');
INSERT INTO op_news_category VALUES ('22', '招商引资分类三', '1', '2', '0');
INSERT INTO op_news_category VALUES ('23', '招商引资分类五', '1', '2', '0');
INSERT INTO op_news_category VALUES ('24', '养生百科分类一', '3', '2', '0');
INSERT INTO op_news_category VALUES ('25', '养生百科分类二', '3', '2', '0');
INSERT INTO op_news_category VALUES ('26', '养生百科分类三', '3', '2', '0');
INSERT INTO op_news_category VALUES ('27', ' 老年旅游分类一 ', '4', '2', '0');
INSERT INTO op_news_category VALUES ('28', ' 老年旅游分类二', '4', '2', '0');
INSERT INTO op_news_category VALUES ('29', ' 老年旅游分类三', '4', '2', '0');
INSERT INTO op_news_category VALUES ('30', ' 老年旅游分类五', '4', '2', '0');
INSERT INTO op_news_category VALUES ('31', ' 老年娱乐分类一', '5', '2', '0');
INSERT INTO op_news_category VALUES ('32', ' 老年娱乐分类二', '5', '2', '0');
INSERT INTO op_news_category VALUES ('33', ' 老年娱乐分类三', '5', '2', '0');
INSERT INTO op_news_category VALUES ('34', ' 老年娱乐分类五', '5', '2', '0');
INSERT INTO op_news_category VALUES ('35', ' 设备采购分类一', '6', '2', '0');
INSERT INTO op_news_category VALUES ('36', ' 设备采购分类二', '6', '2', '0');
INSERT INTO op_news_category VALUES ('37', ' 设备采购分类三', '6', '2', '0');

-- ----------------------------
-- Table structure for `op_news_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_news_description`;
CREATE TABLE `op_news_description` (
  `news_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `post_date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT '',
  `title` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`news_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_news_description
-- ----------------------------
INSERT INTO op_news_description VALUES ('1', '2', '2013-01-10', '', 'test', 0x266C743B702667743B0D0A0974657374266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('1', '1', '2013-01-10', '', 'fdsaf', 0x266C743B702667743B0D0A096461736661266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('12', '2', '0000-00-00', '', '晶琳融娜以生态健发术为宗旨推行养发、生发、', 0x266C743B702667743B0D0A09E68A80E69CAFE4B880266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('3', '2', '0000-00-00', '', '晶琳融娜以生态健发术为宗旨推行养发、生发、', 0x266C743B702667743B0D0A097373737373737373737373737373737373266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('6', '2', '0000-00-00', '', 'aaaaaaaaaaa', 0x266C743B702667743B0D0A09737373737373737373737373737373737373266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('6', '1', '0000-00-00', '', 'sssssssssssssss', 0x266C743B702667743B0D0A09737373737373737373737373737373737373737373266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('9', '2', '2013-01-12', '', '新闻一', 0x266C743B702667743B0D0A09E696B0E997BBE4B880266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('9', '1', '2013-01-12', '', '新闻一', 0x266C743B702667743B0D0A09E696B0E997BBE4B880266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('10', '2', '2013-01-25', '', '新闻一', 0x266C743B702667743B0D0A09E696B0E997BBE4B880266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('10', '1', '2013-01-25', '', '新闻一', 0x266C743B702667743B0D0A09E696B0E997BBE4B880266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('11', '2', '0000-00-00', '', '晶琳融娜以生态健发术为宗旨推行养发、生发、', 0x266C743B702667743B0D0A09E68A80E69CAFE4B880266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('5', '2', '0000-00-00', '', '晶琳融娜以生态健发术为宗旨推行养发、生发、', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F7777772E666974636172652E636E2F62656E63616E64792E7068703F6669643D313626616D703B616D703B69643D34332671756F743B207374796C653D2671756F743B666F6E742D73697A653A313370783B666F6E742D7765696768743A626F6C643B2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE58AA0E6B9BFE599A8E68EA7E588B6E69DBF266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('14', '2', '2013-01-16', '', 'sssssssssss', 0x266C743B702667743B0D0A09737373737373737373737373737373266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('14', '1', '2013-01-16', '', 'sssssssssssss', 0x266C743B702667743B0D0A09737373737373737373737373737373737373266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('20', '2', '0000-00-00', '', '晶琳融娜以生态健发术为宗旨推行养发、生发、', 0x266C743B702667743B0D0A0974657374266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('21', '2', '0000-00-00', '', '晶琳融娜以生态健发术为宗旨推行养发、生发、', 0x266C743B702667743B0D0A096161266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('18', '2', '0000-00-00', '', 'aaa', 0x266C743B702667743B0D0A096F6F6F266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('19', '2', '0000-00-00', '', 'sss', 0x266C743B702667743B0D0A097373266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('17', '2', '2013-01-17', '', '7777777777777777777', 0x266C743B702667743B0D0A09373737373737373737373737373737373737266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('17', '1', '2013-01-17', '', '77777777777777', 0x266C743B702667743B0D0A093737373737373737373737373737373737266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('22', '2', '0000-00-00', '', '亚洲最大的硅砂项目需融资1亿元', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F6E6577732E3136332E636F6D2F31332F303131312F31302F384B554234414D4530303031344A42362E68746D6C2671756F743B2667743B266C743B656D20636C6173733D2671756F743B495F636C656172646F745F2671756F743B2667743BE5AE89E5808D3AE99293E9B1BCE5B29BE697A0E8B088E588A4E4BD99E59CB0266C743B2F656D2667743B266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('23', '2', '0000-00-00', '', '亚洲最大的硅砂项目需融资1亿元', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F6E6577732E3136332E636F6D2F31332F303131312F31302F384B554234414D4530303031344A42362E68746D6C2671756F743B2667743B266C743B656D20636C6173733D2671756F743B495F636C656172646F745F2671756F743B2667743BE5AE89E5808D3AE99293E9B1BCE5B29BE697A0E8B088E588A4E4BD99E59CB0266C743B2F656D2667743B266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('24', '2', '0000-00-00', '', '生产研发一体化厂库房出售，现房热销中', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F6E6577732E3136332E636F6D2F31332F303131312F31302F384B554234414D4530303031344A42362E68746D6C2671756F743B2667743B266C743B656D20636C6173733D2671756F743B495F636C656172646F745F2671756F743B2667743BE5AE89E5808D3AE99293E9B1BCE5B29BE697A0E8B088E588A4E4BD99E59CB0266C743B2F656D2667743B266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('25', '2', '0000-00-00', '', '生产研发一体化厂库房出售，现房热销中', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F6E6577732E3136332E636F6D2F31332F303131312F31302F384B554234414D4530303031344A42362E68746D6C2671756F743B2667743B266C743B656D20636C6173733D2671756F743B495F636C656172646F745F2671756F743B2667743BE5AE89E5808D3AE99293E9B1BCE5B29BE697A0E8B088E588A4E4BD99E59CB0266C743B2F656D2667743B266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('26', '2', '0000-00-00', '', '生产研发一体化厂库房出售，现房热销中', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F6E6577732E3136332E636F6D2F31332F303131312F31302F384B554234414D4530303031344A42362E68746D6C2671756F743B2667743B266C743B656D20636C6173733D2671756F743B495F636C656172646F745F2671756F743B2667743BE5AE89E5808D3AE99293E9B1BCE5B29BE697A0E8B088E588A4E4BD99E59CB0266C743B2F656D2667743B266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('27', '2', '0000-00-00', '', '生产研发一体化厂库房出售，现房热销中', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F6E6577732E3136332E636F6D2F31332F303131312F31302F384B554234414D4530303031344A42362E68746D6C2671756F743B2667743B266C743B656D20636C6173733D2671756F743B495F636C656172646F745F2671756F743B2667743BE5AE89E5808D3AE99293E9B1BCE5B29BE697A0E8B088E588A4E4BD99E59CB0266C743B2F656D2667743B266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('28', '2', '0000-00-00', '', ' 七彩蝶园（北京蝴蝶生态观赏园） ', 0x266C743B702667743B0D0A0926616D703B6E6273703BE88081E5B9B4E69785E6B8B8E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('29', '2', '0000-00-00', '', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B702667743B0D0A0926616D703B6E6273703BE88081E5B9B4E69785E6B8B8E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('30', '2', '0000-00-00', '', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B702667743B0D0A0926616D703B6E6273703BE88081E5B9B4E69785E6B8B8E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('31', '2', '0000-00-00', '', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B702667743B0D0A0926616D703B6E6273703BE88081E5B9B4E69785E6B8B8E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('32', '2', '0000-00-00', '', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B702667743B0D0A0926616D703B6E6273703BE88081E5B9B4E69785E6B8B8E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('33', '2', '0000-00-00', '', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B702667743B0D0A0926616D703B6E6273703BE88081E5B9B4E69785E6B8B8E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('34', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A0926616D703B6E6273703BE88081E5B9B4E5A8B1E4B990E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('35', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A0926616D703B6E6273703BE88081E5B9B4E5A8B1E4B990E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('36', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A0926616D703B6E6273703BE88081E5B9B4E5A8B1E4B990E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('37', '2', '0000-00-00', '', '热泵干燥技术相关介绍', 0x266C743B702667743B0D0A0926616D703B6E6273703BE8AEBEE5A487E98787E8B4ADE6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('38', '2', '0000-00-00', '', '热泵干燥技术相关介绍', 0x266C743B702667743B0D0A0926616D703B6E6273703BE8AEBEE5A487E98787E8B4ADE6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('39', '2', '0000-00-00', '', '热泵干燥技术相关介绍', 0x266C743B702667743B0D0A0926616D703B6E6273703BE8AEBEE5A487E98787E8B4ADE6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('40', '2', '0000-00-00', '', '热泵干燥技术相关介绍', 0x266C743B702667743B0D0A0926616D703B6E6273703BE8AEBEE5A487E98787E8B4ADE6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('41', '2', '0000-00-00', '', '热泵干燥技术相关介绍', 0x266C743B702667743B0D0A0926616D703B6E6273703BE8AEBEE5A487E98787E8B4ADE6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('42', '2', '0000-00-00', '', '热泵干燥技术相关介绍', 0x266C743B702667743B0D0A0926616D703B6E6273703BE8AEBEE5A487E98787E8B4ADE6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('43', '2', '0000-00-00', '', '热泵干燥技术相关介绍', 0x266C743B702667743B0D0A0926616D703B6E6273703BE8AEBEE5A487E98787E8B4ADE6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('44', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('45', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('46', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('47', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('48', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('49', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('50', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('51', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('52', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('53', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('54', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('55', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('56', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('57', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('58', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('59', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('60', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('61', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('62', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('63', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('64', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E585BBE7949FE799BEE7A791E6B58BE8AF95E695B0E68DAE266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('65', '2', '0000-00-00', '', '银行填补老年金融消费空白', 0x266C743B702667743B0D0A0926616D703B6E6273703BE88081E5B9B4E98791E89E8DE6B58BE8AF95E6B58BE8AF95E6B58BE8AF95266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('66', '2', '0000-00-00', '', '银行填补老年金融消费空白', 0x266C743B702667743B0D0A0926616D703B6E6273703BE88081E5B9B4E98791E89E8DE6B58BE8AF95E6B58BE8AF95E6B58BE8AF95266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('67', '2', '0000-00-00', '', '返老回童，快乐六一！——记深圳老年之家首届六一超龄儿童节！', 0x266C743B6831207374796C653D2671756F743B6261636B67726F756E642D696D6167653A2075726C2827766965772F696D6167652F6E6577732E706E6727293B2671756F743B2667743B0D0A09E4BAA7E4B89AE8B584E8AEAF266C743B2F68312667743B0D0A);
INSERT INTO op_news_description VALUES ('68', '2', '0000-00-00', '', '民政部：将尽快普及按月发放高龄津贴', 0x266C743B6831207374796C653D2671756F743B6261636B67726F756E642D696D6167653A2075726C2827766965772F696D6167652F6E6577732E706E6727293B2671756F743B2667743B0D0A09E694BFE7AD96E6B395E8A784266C743B2F68312667743B0D0A266C743B6831207374796C653D2671756F743B6261636B67726F756E642D696D6167653A2075726C2827766965772F696D6167652F6E6577732E706E6727293B2671756F743B2667743B0D0A09E694BFE7AD96E6B395E8A784266C743B2F68312667743B0D0A266C743B6831207374796C653D2671756F743B6261636B67726F756E642D696D6167653A2075726C2827766965772F696D6167652F6E6577732E706E6727293B2671756F743B2667743B0D0A09E694BFE7AD96E6B395E8A784266C743B2F68312667743B0D0A266C743B6831207374796C653D2671756F743B6261636B67726F756E642D696D6167653A2075726C2827766965772F696D6167652F6E6577732E706E6727293B2671756F743B2667743B0D0A09E694BFE7AD96E6B395E8A784266C743B2F68312667743B0D0A);
INSERT INTO op_news_description VALUES ('69', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B68332667743B0D0A09266C743B622667743B266C743B6120636C6173733D2671756F743B6C696E6B5F7469746C652671756F743B20687265663D2671756F743B687474703A2F2F3132372E302E302E313A3130302F6C616F72656E2F3F726F7574653D6E6577732F616C6C6E65777326616D703B616D703B6361745F69643D31302671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE68AA4E79086E59FB9E8AEAD20266C743B2F612667743B266C743B2F622667743B266C743B2F68332667743B0D0A266C743B68332667743B0D0A09266C743B622667743B266C743B6120636C6173733D2671756F743B6C696E6B5F7469746C652671756F743B20687265663D2671756F743B687474703A2F2F3132372E302E302E313A3130302F6C616F72656E2F3F726F7574653D6E6577732F616C6C6E65777326616D703B616D703B6361745F69643D31302671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE68AA4E79086E59FB9E8AEAD20266C743B2F612667743B266C743B2F622667743B266C743B2F68332667743B0D0A);
INSERT INTO op_news_description VALUES ('70', '2', '0000-00-00', '', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B68312667743B0D0A09E4B883E5BDA9E89DB6E59BADEFBC88E58C97E4BAACE89DB4E89DB6E7949FE68081E8A782E8B58FE59BADEFBC89266C743B2F68312667743B0D0A);
INSERT INTO op_news_description VALUES ('71', '2', '0000-00-00', '', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B68312667743B0D0A09E4B883E5BDA9E89DB6E59BADEFBC88E58C97E4BAACE89DB4E89DB6E7949FE68081E8A782E8B58FE59BADEFBC89266C743B2F68312667743B0D0A);
INSERT INTO op_news_description VALUES ('72', '2', '0000-00-00', '', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B68312667743B0D0A09E4B883E5BDA9E89DB6E59BADEFBC88E58C97E4BAACE89DB4E89DB6E7949FE68081E8A782E8B58FE59BADEFBC89266C743B2F68312667743B0D0A);
INSERT INTO op_news_description VALUES ('73', '2', '0000-00-00', 'data/ads/004.jpg', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B68312667743B0D0A09E4B883E5BDA9E89DB6E59BADEFBC88E58C97E4BAACE89DB4E89DB6E7949FE68081E8A782E8B58FE59BADEFBC89266C743B2F68312667743B0D0A);
INSERT INTO op_news_description VALUES ('74', '2', '0000-00-00', 'data/ads/003.jpg', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B68312667743B0D0A09E4B883E5BDA9E89DB6E59BADEFBC88E58C97E4BAACE89DB4E89DB6E7949FE68081E8A782E8B58FE59BADEFBC89266C743B2F68312667743B0D0A);
INSERT INTO op_news_description VALUES ('75', '2', '0000-00-00', 'data/ads/004.jpg', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B68312667743B0D0A09E4B883E5BDA9E89DB6E59BADEFBC88E58C97E4BAACE89DB4E89DB6E7949FE68081E8A782E8B58FE59BADEFBC89266C743B2F68312667743B0D0A);
INSERT INTO op_news_description VALUES ('76', '2', '0000-00-00', 'data/ads/001.jpg', ' 七彩蝶园（北京蝴蝶生态观赏园）', 0x266C743B68312667743B0D0A09E4B883E5BDA9E89DB6E59BADEFBC88E58C97E4BAACE89DB4E89DB6E7949FE68081E8A782E8B58FE59BADEFBC89266C743B2F68312667743B0D0A);
INSERT INTO op_news_description VALUES ('77', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A09266C743B7370616E2667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E78736A6B2E6E65742F79616E676C616F2F6C6E73682F6C6E796C2F32303133312F3330333231332E68746D6C2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8B7B3E5B9BFE59CBAE8889EE5BBBAE8AEAEE994BBE782BCE697B6E997B4E8A681E59088E79086E58886E9858D266C743B2F612667743B266C743B2F7370616E2667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('78', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A09266C743B7370616E2667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E78736A6B2E6E65742F79616E676C616F2F6C6E73682F6C6E796C2F32303133312F3330333231332E68746D6C2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8B7B3E5B9BFE59CBAE8889EE5BBBAE8AEAEE994BBE782BCE697B6E997B4E8A681E59088E79086E58886E9858D266C743B2F612667743B266C743B2F7370616E2667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('79', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A09266C743B7370616E2667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E78736A6B2E6E65742F79616E676C616F2F6C6E73682F6C6E796C2F32303133312F3330333231332E68746D6C2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8B7B3E5B9BFE59CBAE8889EE5BBBAE8AEAEE994BBE782BCE697B6E997B4E8A681E59088E79086E58886E9858D266C743B2F612667743B266C743B2F7370616E2667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('80', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A09266C743B7370616E2667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E78736A6B2E6E65742F79616E676C616F2F6C6E73682F6C6E796C2F32303133312F3330333231332E68746D6C2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8B7B3E5B9BFE59CBAE8889EE5BBBAE8AEAEE994BBE782BCE697B6E997B4E8A681E59088E79086E58886E9858D266C743B2F612667743B266C743B2F7370616E2667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('81', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A09266C743B7370616E2667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E78736A6B2E6E65742F79616E676C616F2F6C6E73682F6C6E796C2F32303133312F3330333231332E68746D6C2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8B7B3E5B9BFE59CBAE8889EE5BBBAE8AEAEE994BBE782BCE697B6E997B4E8A681E59088E79086E58886E9858D266C743B2F612667743B266C743B2F7370616E2667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('82', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A09266C743B7370616E2667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E78736A6B2E6E65742F79616E676C616F2F6C6E73682F6C6E796C2F32303133312F3330333231332E68746D6C2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8B7B3E5B9BFE59CBAE8889EE5BBBAE8AEAEE994BBE782BCE697B6E997B4E8A681E59088E79086E58886E9858D266C743B2F612667743B266C743B2F7370616E2667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('83', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A09266C743B7370616E2667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E78736A6B2E6E65742F79616E676C616F2F6C6E73682F6C6E796C2F32303133312F3330333231332E68746D6C2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8B7B3E5B9BFE59CBAE8889EE5BBBAE8AEAEE994BBE782BCE697B6E997B4E8A681E59088E79086E58886E9858D266C743B2F612667743B266C743B2F7370616E2667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('84', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A09266C743B7370616E2667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E78736A6B2E6E65742F79616E676C616F2F6C6E73682F6C6E796C2F32303133312F3330333231332E68746D6C2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8B7B3E5B9BFE59CBAE8889EE5BBBAE8AEAEE994BBE782BCE697B6E997B4E8A681E59088E79086E58886E9858D266C743B2F612667743B266C743B2F7370616E2667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('85', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A09266C743B7370616E2667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E78736A6B2E6E65742F79616E676C616F2F6C6E73682F6C6E796C2F32303133312F3330333231332E68746D6C2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8B7B3E5B9BFE59CBAE8889EE5BBBAE8AEAEE994BBE782BCE697B6E997B4E8A681E59088E79086E58886E9858D266C743B2F612667743B266C743B2F7370616E2667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('86', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A09266C743B7370616E2667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E78736A6B2E6E65742F79616E676C616F2F6C6E73682F6C6E796C2F32303133312F3330333231332E68746D6C2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8B7B3E5B9BFE59CBAE8889EE5BBBAE8AEAEE994BBE782BCE697B6E997B4E8A681E59088E79086E58886E9858D266C743B2F612667743B266C743B2F7370616E2667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('87', '2', '0000-00-00', '', '跳广场舞建议锻炼时间要合理分配', 0x266C743B702667743B0D0A09266C743B7370616E2667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E78736A6B2E6E65742F79616E676C616F2F6C6E73682F6C6E796C2F32303133312F3330333231332E68746D6C2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8B7B3E5B9BFE59CBAE8889EE5BBBAE8AEAEE994BBE782BCE697B6E997B4E8A681E59088E79086E58886E9858D266C743B2F612667743B266C743B2F7370616E2667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('88', '2', '0000-00-00', '', '热泵干燥技术相关介绍', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F7777772E6368656D6D65632E636F6D2F6E65775F766965772E6173703F69643D31372671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE783ADE6B3B5E5B9B2E787A5E68A80E69CAFE79BB8E585B3E4BB8BE7BB8D266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('89', '2', '0000-00-00', '', '返老回童，快乐六一！——记深圳老年之家首届六一超龄儿童节！', 0x266C743B702667743B0D0A09266C743B6120636C6173733D2671756F743B7869322671756F743B20687265663D2671756F743B687474703A2F2F7777772E3536376A69612E636F6D2F706F7274616C2E7068703F6D6F643D7669657726616D703B616D703B6169643D3937332671756F743B207374796C653D2671756F743B2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE8BF94E88081E59B9EE7ABA5EFBC8CE5BFABE4B990E585ADE4B880EFBC81E28094E28094E8AEB0E6B7B1E59CB3E88081E5B9B4E4B98BE5AEB6E9A696E5B18AE585ADE4B880E8B685E9BE84E584BFE7ABA5E88A82EFBC81266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('90', '2', '0000-00-00', '', '返老回童，快乐六一！——记深圳老年之家首届六一超龄儿童节！', 0x266C743B702667743B0D0A09E8BF94E88081E59B9EE7ABA5EFBC8CE5BFABE4B990E585ADE4B880EFBC81E28094E28094E8AEB0E6B7B1E59CB3E88081E5B9B4E4B98BE5AEB6E9A696E5B18AE585ADE4B880E8B685E9BE84E584BFE7ABA5E88A82EFBC81266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('91', '2', '0000-00-00', '', '返老回童，快乐六一！——记深圳老年之家首届六一超龄儿童节！', 0x266C743B702667743B0D0A09E8BF94E88081E59B9EE7ABA5EFBC8CE5BFABE4B990E585ADE4B880EFBC81E28094E28094E8AEB0E6B7B1E59CB3E88081E5B9B4E4B98BE5AEB6E9A696E5B18AE585ADE4B880E8B685E9BE84E584BFE7ABA5E88A82EFBC81266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('92', '2', '0000-00-00', '', '老人需要家的温暖 新法规提醒你常回家', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F7777772E6368656C6465722E636E2F7A7864742F31303337302E68746D6C2671756F743B2667743B266C743B7370616E207374796C653D2671756F743B464F4E542D53495A453A20313070742671756F743B2667743BE88081E4BABAE99C80E8A681E5AEB6E79A84E6B8A9E69A9626616D703B6E6273703BE696B0E6B395E8A784E68F90E98692E4BDA0E5B8B8E59B9EE5AEB6266C743B2F7370616E2667743B266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('93', '2', '0000-00-00', '', '我国保障老年人合法权益的主要法律法', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F7777772E6368656C6465722E636E2F7A7864742F32393833322E68746D6C2671756F743B2667743B266C743B7370616E207374796C653D2671756F743B464F4E542D53495A453A20313070742671756F743B2667743BE68891E59BBDE4BF9DE99A9CE88081E5B9B4E4BABAE59088E6B395E69D83E79B8AE79A84E4B8BBE8A681E6B395E5BE8BE6B395266C743B2F7370616E2667743B266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('94', '2', '0000-00-00', '', '管庄西里社区认真宣传老年法律法规', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F7777772E6368656C6465722E636E2F7A7864742F32333731392E68746D6C2671756F743B2667743B266C743B7370616E207374796C653D2671756F743B464F4E542D53495A453A20313070742671756F743B2667743BE7AEA1E5BA84E8A5BFE9878CE7A4BEE58CBAE8AEA4E79C9FE5AEA3E4BCA0E88081E5B9B4E6B395E5BE8BE6B395E8A784266C743B2F7370616E2667743B266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('95', '2', '0000-00-00', '', '银行填补老年金融消费空白', 0x266C743B702667743B0D0A09E993B6E8A18CE5A1ABE8A1A5E88081E5B9B4E98791E89E8DE6B688E8B4B9E7A9BAE799BD266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('96', '2', '0000-00-00', '', '银行填补老年金融消费空白', 0x266C743B702667743B0D0A09E993B6E8A18CE5A1ABE8A1A5E88081E5B9B4E98791E89E8DE6B688E8B4B9E7A9BAE799BD266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('97', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E588ABE8BF87E58886E4BE9DE8B596E9A5AEE9A39FE68E92E6AF9220E886B3E9A39FE7BAA4E7BBB4E9A39FE789A9E69C89E588A9E6AF92E7B4A0E68E92E587BA266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('98', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E588ABE8BF87E58886E4BE9DE8B596E9A5AEE9A39FE68E92E6AF9220E886B3E9A39FE7BAA4E7BBB4E9A39FE789A9E69C89E588A9E6AF92E7B4A0E68E92E587BA266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('99', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E588ABE8BF87E58886E4BE9DE8B596E9A5AEE9A39FE68E92E6AF9220E886B3E9A39FE7BAA4E7BBB4E9A39FE789A9E69C89E588A9E6AF92E7B4A0E68E92E587BA266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('100', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E588ABE8BF87E58886E4BE9DE8B596E9A5AEE9A39FE68E92E6AF9220E886B3E9A39FE7BAA4E7BBB4E9A39FE789A9E69C89E588A9E6AF92E7B4A0E68E92E587BA266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('101', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E588ABE8BF87E58886E4BE9DE8B596E9A5AEE9A39FE68E92E6AF9220E886B3E9A39FE7BAA4E7BBB4E9A39FE789A9E69C89E588A9E6AF92E7B4A0E68E92E587BA266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('102', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E588ABE8BF87E58886E4BE9DE8B596E9A5AEE9A39FE68E92E6AF9220E886B3E9A39FE7BAA4E7BBB4E9A39FE789A9E69C89E588A9E6AF92E7B4A0E68E92E587BA266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('103', '2', '0000-00-00', '', '别过分依赖饮食排毒 膳食纤维食物有利毒素排出', 0x266C743B702667743B0D0A09E588ABE8BF87E58886E4BE9DE8B596E9A5AEE9A39FE68E92E6AF9220E886B3E9A39FE7BAA4E7BBB4E9A39FE789A9E69C89E588A9E6AF92E7B4A0E68E92E587BA266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('104', '2', '0000-00-00', '', '民政部：将尽快普及按月发放高龄津贴', 0x266C743B702667743B0D0A09E6B091E694BFE983A8EFBC9AE5B086E5B0BDE5BFABE699AEE58F8AE68C89E69C88E58F91E694BEE9AB98E9BE84E6B4A5E8B4B4266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('105', '2', '0000-00-00', '', '民政部：将尽快普及按月发放高龄津贴', 0x266C743B702667743B0D0A09E6B091E694BFE983A8EFBC9AE5B086E5B0BDE5BFABE699AEE58F8AE68C89E69C88E58F91E694BEE9AB98E9BE84E6B4A5E8B4B4266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('106', '2', '0000-00-00', '', '民政部：将尽快普及按月发放高龄津贴', 0x266C743B702667743B0D0A09E6B091E694BFE983A8EFBC9AE5B086E5B0BDE5BFABE699AEE58F8AE68C89E69C88E58F91E694BEE9AB98E9BE84E6B4A5E8B4B4266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('107', '2', '0000-00-00', '', '民政部：将尽快普及按月发放高龄津贴', 0x266C743B702667743B0D0A09E6B091E694BFE983A8EFBC9AE5B086E5B0BDE5BFABE699AEE58F8AE68C89E69C88E58F91E694BEE9AB98E9BE84E6B4A5E8B4B4266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('108', '2', '0000-00-00', '', '返老回童，快乐六一！——记深圳老年之家首届六一超龄儿童节！', 0x266C743B702667743B0D0A09E8BF94E88081E59B9EE7ABA5EFBC8CE5BFABE4B990E585ADE4B880EFBC81E28094E28094E8AEB0E6B7B1E59CB3E88081E5B9B4E4B98BE5AEB6E9A696E5B18AE585ADE4B880E8B685E9BE84E584BFE7ABA5E88A82EFBC81266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('109', '2', '0000-00-00', '', '返老回童，快乐六一！——记深圳老年之家首届六一超龄儿童节！', 0x266C743B702667743B0D0A09E8BF94E88081E59B9EE7ABA5EFBC8CE5BFABE4B990E585ADE4B880EFBC81E28094E28094E8AEB0E6B7B1E59CB3E88081E5B9B4E4B98BE5AEB6E9A696E5B18AE585ADE4B880E8B685E9BE84E584BFE7ABA5E88A82EFBC81266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('110', '2', '0000-00-00', '', '返老回童，快乐六一！——记深圳老年之家首届六一超龄儿童节！', 0x266C743B702667743B0D0A09E8BF94E88081E59B9EE7ABA5EFBC8CE5BFABE4B990E585ADE4B880EFBC81E28094E28094E8AEB0E6B7B1E59CB3E88081E5B9B4E4B98BE5AEB6E9A696E5B18AE585ADE4B880E8B685E9BE84E584BFE7ABA5E88A82EFBC81266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('111', '2', '0000-00-00', '', '返老回童，快乐六一！——记深圳老年之家首届六一超龄儿童节！', 0x266C743B702667743B0D0A09E8BF94E88081E59B9EE7ABA5EFBC8CE5BFABE4B990E585ADE4B880EFBC81E28094E28094E8AEB0E6B7B1E59CB3E88081E5B9B4E4B98BE5AEB6E9A696E5B18AE585ADE4B880E8B685E9BE84E584BFE7ABA5E88A82EFBC81266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('112', '2', '0000-00-00', '', '银行填补老年金融消费空白 ', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F3132372E302E302E313A3130302F6C616F72656E2F3F726F7574653D6E6577732F6E65777326616D703B616D703B6E6577735F69643D36352671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE993B6E8A18CE5A1ABE8A1A5E88081E5B9B4E98791E89E8DE6B688E8B4B9E7A9BAE799BD20266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('113', '2', '0000-00-00', '', '银行填补老年金融消费空白 ', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F3132372E302E302E313A3130302F6C616F72656E2F3F726F7574653D6E6577732F6E65777326616D703B616D703B6E6577735F69643D36352671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE993B6E8A18CE5A1ABE8A1A5E88081E5B9B4E98791E89E8DE6B688E8B4B9E7A9BAE799BD20266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('114', '2', '0000-00-00', '', '银行填补老年金融消费空白 ', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F3132372E302E302E313A3130302F6C616F72656E2F3F726F7574653D6E6577732F6E65777326616D703B616D703B6E6577735F69643D36352671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE993B6E8A18CE5A1ABE8A1A5E88081E5B9B4E98791E89E8DE6B688E8B4B9E7A9BAE799BD20266C743B2F612667743B266C743B2F702667743B0D0A);
INSERT INTO op_news_description VALUES ('115', '2', '0000-00-00', '', '银行填补老年金融消费空白 ', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F3132372E302E302E313A3130302F6C616F72656E2F3F726F7574653D6E6577732F6E65777326616D703B616D703B6E6577735F69643D36352671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743BE993B6E8A18CE5A1ABE8A1A5E88081E5B9B4E98791E89E8DE6B688E8B4B9E7A9BAE799BD20266C743B2F612667743B266C743B2F702667743B0D0A);

-- ----------------------------
-- Table structure for `op_news_image`
-- ----------------------------
DROP TABLE IF EXISTS `op_news_image`;
CREATE TABLE `op_news_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `post_date` date DEFAULT NULL,
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2361 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_news_image
-- ----------------------------
INSERT INTO op_news_image VALUES ('2358', '30', 'data/demo/canon_eos_5d_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2321', '47', 'data/demo/hp_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2360', '28', 'data/demo/htc_touch_hd_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2351', '41', 'data/demo/imac_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1982', '40', 'data/demo/iphone_6.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2001', '36', 'data/demo/ipod_nano_5.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2000', '36', 'data/demo/ipod_nano_4.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1971', '43', 'data/demo/macbook_5.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1970', '43', 'data/demo/macbook_4.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1974', '44', 'data/demo/macbook_air_4.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1973', '44', 'data/demo/macbook_air_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1977', '45', 'data/demo/macbook_pro_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1976', '45', 'data/demo/macbook_pro_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1986', '31', 'data/demo/nikon_d300_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1985', '31', 'data/demo/nikon_d300_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1988', '29', 'data/demo/palm_treo_pro_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1995', '46', 'data/demo/sony_vaio_5.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1994', '46', 'data/demo/sony_vaio_4.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1991', '48', 'data/demo/ipod_classic_4.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1990', '48', 'data/demo/ipod_classic_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1981', '40', 'data/demo/iphone_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1980', '40', 'data/demo/iphone_5.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2357', '30', 'data/demo/canon_eos_5d_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2320', '47', 'data/demo/hp_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2359', '28', 'data/demo/htc_touch_hd_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2350', '41', 'data/demo/imac_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1979', '40', 'data/demo/iphone_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1978', '40', 'data/demo/iphone_4.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1989', '48', 'data/demo/ipod_classic_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1999', '36', 'data/demo/ipod_nano_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1998', '36', 'data/demo/ipod_nano_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1969', '43', 'data/demo/macbook_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1968', '43', 'data/demo/macbook_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1972', '44', 'data/demo/macbook_air_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1975', '45', 'data/demo/macbook_pro_4.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1984', '31', 'data/demo/nikon_d300_4.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1983', '31', 'data/demo/nikon_d300_5.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1987', '29', 'data/demo/palm_treo_pro_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1993', '46', 'data/demo/sony_vaio_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('1992', '46', 'data/demo/sony_vaio_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2327', '49', 'data/demo/samsung_tab_7.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2326', '49', 'data/demo/samsung_tab_6.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2325', '49', 'data/demo/samsung_tab_5.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2324', '49', 'data/demo/samsung_tab_4.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2323', '49', 'data/demo/samsung_tab_3.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2322', '49', 'data/demo/samsung_tab_2.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2355', '42', 'data/demo/canon_eos_5d_1.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2354', '42', 'data/demo/compaq_presario.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2353', '42', 'data/demo/hp_1.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2352', '42', 'data/demo/canon_logo.jpg', '0', null);
INSERT INTO op_news_image VALUES ('2356', '42', 'data/demo/canon_eos_5d_2.jpg', '0', null);

-- ----------------------------
-- Table structure for `op_news_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `op_news_to_store`;
CREATE TABLE `op_news_to_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_news_to_store
-- ----------------------------
INSERT INTO op_news_to_store VALUES ('1', '0');
INSERT INTO op_news_to_store VALUES ('3', '0');
INSERT INTO op_news_to_store VALUES ('5', '0');
INSERT INTO op_news_to_store VALUES ('6', '0');
INSERT INTO op_news_to_store VALUES ('9', '0');
INSERT INTO op_news_to_store VALUES ('10', '0');
INSERT INTO op_news_to_store VALUES ('11', '0');
INSERT INTO op_news_to_store VALUES ('12', '0');
INSERT INTO op_news_to_store VALUES ('14', '0');
INSERT INTO op_news_to_store VALUES ('17', '0');
INSERT INTO op_news_to_store VALUES ('18', '0');
INSERT INTO op_news_to_store VALUES ('19', '0');
INSERT INTO op_news_to_store VALUES ('20', '0');
INSERT INTO op_news_to_store VALUES ('21', '0');
INSERT INTO op_news_to_store VALUES ('22', '0');
INSERT INTO op_news_to_store VALUES ('23', '0');
INSERT INTO op_news_to_store VALUES ('24', '0');
INSERT INTO op_news_to_store VALUES ('25', '0');
INSERT INTO op_news_to_store VALUES ('26', '0');
INSERT INTO op_news_to_store VALUES ('27', '0');
INSERT INTO op_news_to_store VALUES ('28', '0');
INSERT INTO op_news_to_store VALUES ('29', '0');
INSERT INTO op_news_to_store VALUES ('30', '0');
INSERT INTO op_news_to_store VALUES ('31', '0');
INSERT INTO op_news_to_store VALUES ('32', '0');
INSERT INTO op_news_to_store VALUES ('33', '0');
INSERT INTO op_news_to_store VALUES ('34', '0');
INSERT INTO op_news_to_store VALUES ('35', '0');
INSERT INTO op_news_to_store VALUES ('36', '0');
INSERT INTO op_news_to_store VALUES ('37', '0');
INSERT INTO op_news_to_store VALUES ('38', '0');
INSERT INTO op_news_to_store VALUES ('39', '0');
INSERT INTO op_news_to_store VALUES ('40', '0');
INSERT INTO op_news_to_store VALUES ('41', '0');
INSERT INTO op_news_to_store VALUES ('42', '0');
INSERT INTO op_news_to_store VALUES ('43', '0');
INSERT INTO op_news_to_store VALUES ('44', '0');
INSERT INTO op_news_to_store VALUES ('45', '0');
INSERT INTO op_news_to_store VALUES ('46', '0');
INSERT INTO op_news_to_store VALUES ('47', '0');
INSERT INTO op_news_to_store VALUES ('48', '0');
INSERT INTO op_news_to_store VALUES ('49', '0');
INSERT INTO op_news_to_store VALUES ('50', '0');
INSERT INTO op_news_to_store VALUES ('51', '0');
INSERT INTO op_news_to_store VALUES ('52', '0');
INSERT INTO op_news_to_store VALUES ('53', '0');
INSERT INTO op_news_to_store VALUES ('54', '0');
INSERT INTO op_news_to_store VALUES ('55', '0');
INSERT INTO op_news_to_store VALUES ('56', '0');
INSERT INTO op_news_to_store VALUES ('57', '0');
INSERT INTO op_news_to_store VALUES ('58', '0');
INSERT INTO op_news_to_store VALUES ('59', '0');
INSERT INTO op_news_to_store VALUES ('60', '0');
INSERT INTO op_news_to_store VALUES ('61', '0');
INSERT INTO op_news_to_store VALUES ('62', '0');
INSERT INTO op_news_to_store VALUES ('63', '0');
INSERT INTO op_news_to_store VALUES ('64', '0');
INSERT INTO op_news_to_store VALUES ('65', '0');
INSERT INTO op_news_to_store VALUES ('66', '0');
INSERT INTO op_news_to_store VALUES ('67', '0');
INSERT INTO op_news_to_store VALUES ('68', '0');
INSERT INTO op_news_to_store VALUES ('69', '0');
INSERT INTO op_news_to_store VALUES ('70', '0');
INSERT INTO op_news_to_store VALUES ('71', '0');
INSERT INTO op_news_to_store VALUES ('72', '0');
INSERT INTO op_news_to_store VALUES ('73', '0');
INSERT INTO op_news_to_store VALUES ('74', '0');
INSERT INTO op_news_to_store VALUES ('75', '0');
INSERT INTO op_news_to_store VALUES ('76', '0');
INSERT INTO op_news_to_store VALUES ('77', '0');
INSERT INTO op_news_to_store VALUES ('78', '0');
INSERT INTO op_news_to_store VALUES ('79', '0');
INSERT INTO op_news_to_store VALUES ('80', '0');
INSERT INTO op_news_to_store VALUES ('81', '0');
INSERT INTO op_news_to_store VALUES ('82', '0');
INSERT INTO op_news_to_store VALUES ('83', '0');
INSERT INTO op_news_to_store VALUES ('84', '0');
INSERT INTO op_news_to_store VALUES ('85', '0');
INSERT INTO op_news_to_store VALUES ('86', '0');
INSERT INTO op_news_to_store VALUES ('87', '0');
INSERT INTO op_news_to_store VALUES ('88', '0');
INSERT INTO op_news_to_store VALUES ('89', '0');
INSERT INTO op_news_to_store VALUES ('90', '0');
INSERT INTO op_news_to_store VALUES ('91', '0');
INSERT INTO op_news_to_store VALUES ('92', '0');
INSERT INTO op_news_to_store VALUES ('93', '0');
INSERT INTO op_news_to_store VALUES ('94', '0');
INSERT INTO op_news_to_store VALUES ('95', '0');
INSERT INTO op_news_to_store VALUES ('96', '0');
INSERT INTO op_news_to_store VALUES ('97', '0');
INSERT INTO op_news_to_store VALUES ('98', '0');
INSERT INTO op_news_to_store VALUES ('99', '0');
INSERT INTO op_news_to_store VALUES ('100', '0');
INSERT INTO op_news_to_store VALUES ('101', '0');
INSERT INTO op_news_to_store VALUES ('102', '0');
INSERT INTO op_news_to_store VALUES ('103', '0');
INSERT INTO op_news_to_store VALUES ('104', '0');
INSERT INTO op_news_to_store VALUES ('105', '0');
INSERT INTO op_news_to_store VALUES ('106', '0');
INSERT INTO op_news_to_store VALUES ('107', '0');
INSERT INTO op_news_to_store VALUES ('108', '0');
INSERT INTO op_news_to_store VALUES ('109', '0');
INSERT INTO op_news_to_store VALUES ('110', '0');
INSERT INTO op_news_to_store VALUES ('111', '0');
INSERT INTO op_news_to_store VALUES ('112', '0');
INSERT INTO op_news_to_store VALUES ('113', '0');
INSERT INTO op_news_to_store VALUES ('114', '0');
INSERT INTO op_news_to_store VALUES ('115', '0');

-- ----------------------------
-- Table structure for `op_option`
-- ----------------------------
DROP TABLE IF EXISTS `op_option`;
CREATE TABLE `op_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) COLLATE utf8_bin NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_option
-- ----------------------------
INSERT INTO op_option VALUES ('1', 'radio', '2');
INSERT INTO op_option VALUES ('2', 'checkbox', '3');
INSERT INTO op_option VALUES ('4', 'text', '4');
INSERT INTO op_option VALUES ('5', 'select', '1');
INSERT INTO op_option VALUES ('6', 'textarea', '5');
INSERT INTO op_option VALUES ('7', 'file', '6');
INSERT INTO op_option VALUES ('8', 'date', '7');
INSERT INTO op_option VALUES ('9', 'time', '8');
INSERT INTO op_option VALUES ('10', 'datetime', '9');
INSERT INTO op_option VALUES ('11', 'select', '1');
INSERT INTO op_option VALUES ('12', 'date', '1');

-- ----------------------------
-- Table structure for `op_option_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_option_description`;
CREATE TABLE `op_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_option_description
-- ----------------------------
INSERT INTO op_option_description VALUES ('1', '2', 'Radio');
INSERT INTO op_option_description VALUES ('2', '2', 'Checkbox');
INSERT INTO op_option_description VALUES ('4', '2', 'Text');
INSERT INTO op_option_description VALUES ('6', '2', 'Textarea');
INSERT INTO op_option_description VALUES ('8', '2', 'Date');
INSERT INTO op_option_description VALUES ('7', '2', 'File');
INSERT INTO op_option_description VALUES ('5', '2', 'Select');
INSERT INTO op_option_description VALUES ('9', '2', 'Time');
INSERT INTO op_option_description VALUES ('10', '2', 'Date &amp; Time');
INSERT INTO op_option_description VALUES ('12', '2', 'Delivery Date');
INSERT INTO op_option_description VALUES ('11', '2', 'Size');

-- ----------------------------
-- Table structure for `op_option_value`
-- ----------------------------
DROP TABLE IF EXISTS `op_option_value`;
CREATE TABLE `op_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_option_value
-- ----------------------------
INSERT INTO op_option_value VALUES ('43', '1', '', '3');
INSERT INTO op_option_value VALUES ('32', '1', '', '1');
INSERT INTO op_option_value VALUES ('45', '2', '', '4');
INSERT INTO op_option_value VALUES ('44', '2', '', '3');
INSERT INTO op_option_value VALUES ('42', '5', '', '4');
INSERT INTO op_option_value VALUES ('41', '5', '', '3');
INSERT INTO op_option_value VALUES ('39', '5', '', '1');
INSERT INTO op_option_value VALUES ('40', '5', '', '2');
INSERT INTO op_option_value VALUES ('31', '1', '', '2');
INSERT INTO op_option_value VALUES ('23', '2', '', '1');
INSERT INTO op_option_value VALUES ('24', '2', '', '2');
INSERT INTO op_option_value VALUES ('46', '11', '', '1');
INSERT INTO op_option_value VALUES ('47', '11', '', '2');
INSERT INTO op_option_value VALUES ('48', '11', '', '3');

-- ----------------------------
-- Table structure for `op_option_value_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_option_value_description`;
CREATE TABLE `op_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_option_value_description
-- ----------------------------
INSERT INTO op_option_value_description VALUES ('43', '2', '1', 'Large');
INSERT INTO op_option_value_description VALUES ('32', '2', '1', 'Small');
INSERT INTO op_option_value_description VALUES ('45', '2', '2', 'Checkbox 4');
INSERT INTO op_option_value_description VALUES ('44', '2', '2', 'Checkbox 3');
INSERT INTO op_option_value_description VALUES ('31', '2', '1', 'Medium');
INSERT INTO op_option_value_description VALUES ('42', '2', '5', 'Yellow');
INSERT INTO op_option_value_description VALUES ('41', '2', '5', 'Green');
INSERT INTO op_option_value_description VALUES ('39', '2', '5', 'Red');
INSERT INTO op_option_value_description VALUES ('40', '2', '5', 'Blue');
INSERT INTO op_option_value_description VALUES ('23', '2', '2', 'Checkbox 1');
INSERT INTO op_option_value_description VALUES ('24', '2', '2', 'Checkbox 2');
INSERT INTO op_option_value_description VALUES ('48', '2', '11', 'Large');
INSERT INTO op_option_value_description VALUES ('47', '2', '11', 'Medium');
INSERT INTO op_option_value_description VALUES ('46', '2', '11', 'Small');

-- ----------------------------
-- Table structure for `op_order`
-- ----------------------------
DROP TABLE IF EXISTS `op_order`;
CREATE TABLE `op_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) COLLATE utf8_bin NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `store_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL,
  `email` varchar(96) COLLATE utf8_bin NOT NULL,
  `telephone` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fax` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payment_firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payment_lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payment_company` varchar(32) COLLATE utf8_bin NOT NULL,
  `payment_company_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `payment_tax_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `payment_address_1` varchar(128) COLLATE utf8_bin NOT NULL,
  `payment_address_2` varchar(128) COLLATE utf8_bin NOT NULL,
  `payment_city` varchar(128) COLLATE utf8_bin NOT NULL,
  `payment_postcode` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payment_country` varchar(128) COLLATE utf8_bin NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) COLLATE utf8_bin NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text COLLATE utf8_bin NOT NULL,
  `payment_method` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payment_code` varchar(128) COLLATE utf8_bin NOT NULL,
  `shipping_firstname` varchar(32) COLLATE utf8_bin NOT NULL,
  `shipping_lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `shipping_company` varchar(32) COLLATE utf8_bin NOT NULL,
  `shipping_address_1` varchar(128) COLLATE utf8_bin NOT NULL,
  `shipping_address_2` varchar(128) COLLATE utf8_bin NOT NULL,
  `shipping_city` varchar(128) COLLATE utf8_bin NOT NULL,
  `shipping_postcode` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `shipping_country` varchar(128) COLLATE utf8_bin NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) COLLATE utf8_bin NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text COLLATE utf8_bin NOT NULL,
  `shipping_method` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `shipping_code` varchar(128) COLLATE utf8_bin NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_bin NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `forwarded_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_bin NOT NULL,
  `accept_language` varchar(255) COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_order
-- ----------------------------

-- ----------------------------
-- Table structure for `op_order_download`
-- ----------------------------
DROP TABLE IF EXISTS `op_order_download`;
CREATE TABLE `op_order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filename` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mask` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_order_download
-- ----------------------------

-- ----------------------------
-- Table structure for `op_order_fraud`
-- ----------------------------
DROP TABLE IF EXISTS `op_order_fraud`;
CREATE TABLE `op_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) COLLATE utf8_bin NOT NULL,
  `country_code` varchar(2) COLLATE utf8_bin NOT NULL,
  `high_risk_country` varchar(3) COLLATE utf8_bin NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip_city` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip_org` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip_country_confidence` varchar(3) COLLATE utf8_bin NOT NULL,
  `ip_region_confidence` varchar(3) COLLATE utf8_bin NOT NULL,
  `ip_city_confidence` varchar(3) COLLATE utf8_bin NOT NULL,
  `ip_postal_confidence` varchar(3) COLLATE utf8_bin NOT NULL,
  `ip_postal_code` varchar(10) COLLATE utf8_bin NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip_region_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip_domain` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip_country_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip_continent_code` varchar(2) COLLATE utf8_bin NOT NULL,
  `ip_corporate_proxy` varchar(3) COLLATE utf8_bin NOT NULL,
  `anonymous_proxy` varchar(3) COLLATE utf8_bin NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) COLLATE utf8_bin NOT NULL,
  `free_mail` varchar(3) COLLATE utf8_bin NOT NULL,
  `carder_email` varchar(3) COLLATE utf8_bin NOT NULL,
  `high_risk_username` varchar(3) COLLATE utf8_bin NOT NULL,
  `high_risk_password` varchar(3) COLLATE utf8_bin NOT NULL,
  `bin_match` varchar(10) COLLATE utf8_bin NOT NULL,
  `bin_country` varchar(2) COLLATE utf8_bin NOT NULL,
  `bin_name_match` varchar(3) COLLATE utf8_bin NOT NULL,
  `bin_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `bin_phone_match` varchar(3) COLLATE utf8_bin NOT NULL,
  `bin_phone` varchar(32) COLLATE utf8_bin NOT NULL,
  `customer_phone_in_billing_location` varchar(8) COLLATE utf8_bin NOT NULL,
  `ship_forward` varchar(3) COLLATE utf8_bin NOT NULL,
  `city_postal_match` varchar(3) COLLATE utf8_bin NOT NULL,
  `ship_city_postal_match` varchar(3) COLLATE utf8_bin NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text COLLATE utf8_bin NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) COLLATE utf8_bin NOT NULL,
  `error` text COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_order_fraud
-- ----------------------------

-- ----------------------------
-- Table structure for `op_order_history`
-- ----------------------------
DROP TABLE IF EXISTS `op_order_history`;
CREATE TABLE `op_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_order_history
-- ----------------------------

-- ----------------------------
-- Table structure for `op_order_option`
-- ----------------------------
DROP TABLE IF EXISTS `op_order_option`;
CREATE TABLE `op_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_bin NOT NULL,
  `type` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_order_option
-- ----------------------------

-- ----------------------------
-- Table structure for `op_order_product`
-- ----------------------------
DROP TABLE IF EXISTS `op_order_product`;
CREATE TABLE `op_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `model` varchar(64) COLLATE utf8_bin NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_order_product
-- ----------------------------

-- ----------------------------
-- Table structure for `op_order_status`
-- ----------------------------
DROP TABLE IF EXISTS `op_order_status`;
CREATE TABLE `op_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_order_status
-- ----------------------------
INSERT INTO op_order_status VALUES ('2', '2', 'Processing');
INSERT INTO op_order_status VALUES ('3', '2', 'Shipped');
INSERT INTO op_order_status VALUES ('7', '2', 'Canceled');
INSERT INTO op_order_status VALUES ('5', '2', 'Complete');
INSERT INTO op_order_status VALUES ('8', '2', 'Denied');
INSERT INTO op_order_status VALUES ('9', '2', 'Canceled Reversal');
INSERT INTO op_order_status VALUES ('10', '2', 'Failed');
INSERT INTO op_order_status VALUES ('11', '2', 'Refunded');
INSERT INTO op_order_status VALUES ('12', '2', 'Reversed');
INSERT INTO op_order_status VALUES ('13', '2', 'Chargeback');
INSERT INTO op_order_status VALUES ('1', '2', 'Pending');
INSERT INTO op_order_status VALUES ('16', '2', 'Voided');
INSERT INTO op_order_status VALUES ('15', '2', 'Processed');
INSERT INTO op_order_status VALUES ('14', '2', 'Expired');

-- ----------------------------
-- Table structure for `op_order_total`
-- ----------------------------
DROP TABLE IF EXISTS `op_order_total`;
CREATE TABLE `op_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_order_total
-- ----------------------------

-- ----------------------------
-- Table structure for `op_order_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `op_order_voucher`;
CREATE TABLE `op_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL,
  `code` varchar(10) COLLATE utf8_bin NOT NULL,
  `from_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `from_email` varchar(96) COLLATE utf8_bin NOT NULL,
  `to_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `to_email` varchar(96) COLLATE utf8_bin NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_order_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for `op_product`
-- ----------------------------
DROP TABLE IF EXISTS `op_product`;
CREATE TABLE `op_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) COLLATE utf8_bin NOT NULL,
  `sku` varchar(64) COLLATE utf8_bin NOT NULL,
  `upc` varchar(12) COLLATE utf8_bin NOT NULL,
  `ean` varchar(14) COLLATE utf8_bin NOT NULL,
  `jan` varchar(13) COLLATE utf8_bin NOT NULL,
  `isbn` varchar(13) COLLATE utf8_bin NOT NULL,
  `mpn` varchar(64) COLLATE utf8_bin NOT NULL,
  `location` varchar(128) COLLATE utf8_bin NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product
-- ----------------------------
INSERT INTO op_product VALUES ('28', 'Product 1', '', '', '', '', '', '', '', '939', '7', 'data/demo/htc_touch_hd_1.jpg', '5', '1', '100.0000', '200', '9', '2009-02-03', '146.40000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '2009-02-03 16:06:50', '2013-01-09 22:32:49', '0');
INSERT INTO op_product VALUES ('29', 'Product 2', '', '', '', '', '', '', '', '999', '6', 'data/demo/palm_treo_pro_1.jpg', '6', '1', '279.9900', '0', '9', '2009-02-03', '133.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '2009-02-03 16:42:17', '2011-09-30 01:06:08', '0');
INSERT INTO op_product VALUES ('30', 'Product 3', '', '', '', '', '', '', '', '7', '6', 'data/demo/canon_eos_5d_1.jpg', '9', '1', '100.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '2009-02-03 16:59:00', '2013-01-09 22:32:40', '0');
INSERT INTO op_product VALUES ('31', 'Product 4', '', '', '', '', '', '', '', '1000', '6', 'data/demo/nikon_d300_1.jpg', '0', '1', '80.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '2009-02-03 17:00:10', '2011-09-30 01:06:00', '0');
INSERT INTO op_product VALUES ('33', 'Product 6', '', '', '', '', '', '', '', '1000', '6', 'data/demo/samsung_syncmaster_941bw.jpg', '0', '1', '200.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 17:08:31', '2011-09-30 01:06:29', '0');
INSERT INTO op_product VALUES ('35', 'Product 8', '', '', '', '', '', '', '', '1000', '5', '', '0', '0', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '2009-02-03 18:08:31', '2011-09-30 01:06:17', '0');
INSERT INTO op_product VALUES ('36', 'Product 9', '', '', '', '', '', '', '', '994', '6', 'data/demo/ipod_nano_1.jpg', '8', '0', '100.0000', '100', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 18:09:19', '2011-09-30 01:07:12', '0');
INSERT INTO op_product VALUES ('40', 'product 11', '', '', '', '', '', '', '', '970', '5', 'data/demo/iphone_1.jpg', '8', '1', '101.0000', '0', '9', '2009-02-03', '10.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '2009-02-03 21:07:12', '2011-09-30 01:06:53', '0');
INSERT INTO op_product VALUES ('41', 'Product 14', '', '', '', '', '', '', '', '977', '5', 'data/demo/imac_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '2009-02-03 21:07:26', '2011-09-30 01:06:44', '0');
INSERT INTO op_product VALUES ('42', 'Product 15', '', '', '', '', '', '', '', '990', '5', 'data/demo/apple_cinema_30.jpg', '8', '1', '100.0000', '400', '9', '2009-02-04', '12.50000000', '1', '1.00000000', '2.00000000', '3.00000000', '1', '1', '2', '0', '1', '2009-02-03 21:07:37', '2013-01-09 22:32:32', '22');
INSERT INTO op_product VALUES ('43', 'Product 16', '', '', '', '', '', '', '', '929', '5', 'data/demo/macbook_1.jpg', '8', '0', '500.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 21:07:49', '2011-09-30 01:05:46', '1');
INSERT INTO op_product VALUES ('44', 'Product 17', '', '', '', '', '', '', '', '1000', '5', 'data/demo/macbook_air_1.jpg', '8', '1', '1000.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 21:08:00', '2011-09-30 01:05:53', '0');
INSERT INTO op_product VALUES ('45', 'Product 18', '', '', '', '', '', '', '', '998', '5', 'data/demo/macbook_pro_1.jpg', '8', '1', '2000.0000', '0', '100', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 21:08:17', '2011-09-15 22:22:01', '0');
INSERT INTO op_product VALUES ('46', 'Product 19', '', '', '', '', '', '', '', '1000', '5', 'data/demo/sony_vaio_1.jpg', '10', '1', '1000.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 21:08:29', '2011-09-30 01:06:39', '0');
INSERT INTO op_product VALUES ('47', 'Product 21', '', '', '', '', '', '', '', '1000', '5', 'data/demo/hp_1.jpg', '7', '1', '100.0000', '400', '9', '2009-02-03', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '0', '1', '0', '1', '2009-02-03 21:08:40', '2011-09-30 01:05:28', '0');
INSERT INTO op_product VALUES ('48', 'product 20', 'test 1', '', '', '', '', '', 'test 2', '995', '5', 'data/demo/ipod_classic_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-08', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-08 17:21:51', '2011-09-30 01:07:06', '0');
INSERT INTO op_product VALUES ('49', 'SAM1', '', '', '', '', '', '', '', '0', '8', 'data/demo/samsung_tab_1.jpg', '0', '1', '199.9900', '0', '9', '2011-04-25', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '2011-04-26 08:57:34', '2011-09-30 01:06:23', '6');

-- ----------------------------
-- Table structure for `op_product_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_attribute`;
CREATE TABLE `op_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_attribute
-- ----------------------------
INSERT INTO op_product_attribute VALUES ('43', '2', '2', 0x31);
INSERT INTO op_product_attribute VALUES ('47', '4', '2', 0x31364742);
INSERT INTO op_product_attribute VALUES ('43', '4', '2', 0x386762);
INSERT INTO op_product_attribute VALUES ('42', '3', '2', 0x3130306D687A);
INSERT INTO op_product_attribute VALUES ('47', '2', '2', 0x34);

-- ----------------------------
-- Table structure for `op_product_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_description`;
CREATE TABLE `op_product_description` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  `tag` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_description
-- ----------------------------
INSERT INTO op_product_description VALUES ('35', '2', 'Product 8', 0x266C743B702667743B0D0A0950726F647563742038266C743B2F702667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('48', '2', 'iPod Classic', 0x266C743B64697620636C6173733D2671756F743B6370745F70726F647563745F6465736372697074696F6E202671756F743B2667743B0D0A09266C743B6469762667743B0D0A0909266C743B702667743B0D0A090909266C743B7374726F6E672667743B4D6F726520726F6F6D20746F206D6F76652E266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909576974682038304742206F72203136304742206F662073746F7261676520616E6420757020746F20343020686F757273206F662062617474657279206C6966652C20746865206E65772069506F6420636C6173736963206C65747320796F7520656E6A6F7920757020746F2034302C30303020736F6E6773206F7220757020746F2032303020686F757273206F6620766964656F206F7220616E7920636F6D62696E6174696F6E20776865726576657220796F7520676F2E266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909266C743B7374726F6E672667743B436F76657220466C6F772E266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A0909266C743B702667743B0D0A09090942726F777365207468726F75676820796F7572206D7573696320636F6C6C656374696F6E20627920666C697070696E67207468726F75676820616C62756D206172742E2053656C65637420616E20616C62756D20746F207475726E206974206F76657220616E64207365652074686520747261636B206C6973742E266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909266C743B7374726F6E672667743B456E68616E63656420696E746572666163652E266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909457870657269656E636520612077686F6C65206E65772077617920746F2062726F77736520616E64207669657720796F7572206D7573696320616E6420766964656F2E266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909266C743B7374726F6E672667743B536C65656B65722064657369676E2E266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A0909266C743B702667743B0D0A09090942656175746966756C2C2064757261626C652C20616E6420736C65656B6572207468616E20657665722C2069506F6420636C6173736963206E6F7720666561747572657320616E20616E6F64697A656420616C756D696E756D20616E6420706F6C697368656420737461696E6C65737320737465656C20656E636C6F73757265207769746820726F756E6465642065646765732E266C743B2F702667743B0D0A09266C743B2F6469762667743B0D0A266C743B2F6469762667743B0D0A266C743B212D2D206370745F636F6E7461696E65725F656E64202D2D2667743B, '', '', '');
INSERT INTO op_product_description VALUES ('40', '2', 'iPhone', 0x266C743B7020636C6173733D2671756F743B696E74726F2671756F743B2667743B0D0A096950686F6E652069732061207265766F6C7574696F6E617279206E6577206D6F62696C652070686F6E65207468617420616C6C6F777320796F7520746F206D616B6520612063616C6C2062792073696D706C792074617070696E672061206E616D65206F72206E756D62657220696E20796F7572206164647265737320626F6F6B2C2061206661766F7269746573206C6973742C206F7220612063616C6C206C6F672E20497420616C736F206175746F6D61746963616C6C792073796E637320616C6C20796F757220636F6E74616374732066726F6D20612050432C204D61632C206F7220496E7465726E657420736572766963652E20416E64206974206C65747320796F752073656C65637420616E64206C697374656E20746F20766F6963656D61696C206D6573736167657320696E207768617465766572206F7264657220796F752077616E74206A757374206C696B6520656D61696C2E266C743B2F702667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('28', '2', 'HTC Touch HD', 0x266C743B702667743B0D0A0948544320546F756368202D20696E204869676820446566696E6974696F6E2E205761746368206D7573696320766964656F7320616E642073747265616D696E6720636F6E74656E7420696E206177652D696E73706972696E67206869676820646566696E6974696F6E20636C617269747920666F722061206D6F62696C6520657870657269656E636520796F75206E657665722074686F7567687420706F737369626C652E205365647563746976656C7920736C65656B2C207468652048544320546F7563682048442070726F766964657320746865206E6578742067656E65726174696F6E206F66206D6F62696C652066756E6374696F6E616C6974792C20616C6C20617420612073696D706C6520746F7563682E2046756C6C7920696E746567726174656420776974682057696E646F7773204D6F62696C652050726F66657373696F6E616C20362E312C20756C7472616661737420332E35472C204750532C20354D502063616D6572612C20706C7573206C6F7473206D6F7265202D20616C6C2064656C697665726564206F6E20612062726561746874616B696E676C7920637269737020332E382671756F743B205756474120746F75636873637265656E202D20796F752063616E2074616B6520636F6E74726F6C206F6620796F7572206D6F62696C6520776F726C642077697468207468652048544320546F7563682048442E266C743B2F702667743B0D0A266C743B702667743B0D0A09266C743B7374726F6E672667743B4665617475726573266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A090950726F636573736F72205175616C636F6D6DC2AE204D534D203732303141E284A220353238204D487A266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090957696E646F7773204D6F62696C65C2AE20362E312050726F66657373696F6E616C204F7065726174696E672053797374656D266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094D656D6F72793A20353132204D4220524F4D2C20323838204D422052414D266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090944696D656E73696F6E733A20313135206D6D20782036322E38206D6D2078203132206D6D202F203134362E34206772616D73266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909332E382D696E6368205446542D4C434420666C617420746F7563682D73656E7369746976652073637265656E2077697468203438302078203830302057564741207265736F6C7574696F6E266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090948534450412F5743444D413A204575726F70652F417369613A203930302F32313030204D487A3B20557020746F2032204D6270732075702D6C696E6B20616E6420372E32204D62707320646F776E2D6C696E6B20737065656473266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909517561642D62616E642047534D2F475052532F454447453A204575726F70652F417369613A203835302F3930302F313830302F31393030204D487A202842616E64206672657175656E63792C20485355504120617661696C6162696C6974792C20616E64206461746120737065656420617265206F70657261746F7220646570656E64656E742E29266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090944657669636520436F6E74726F6C207669612048544320546F756368464C4FE284A22033442026616D703B616D703B20546F7563682D73656E7369746976652066726F6E742070616E656C20627574746F6E73266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090947505320616E6420412D475053207265616479266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909426C7565746F6F7468C2AE20322E30207769746820456E68616E6365642044617461205261746520616E64204132445020666F7220776972656C6573732073746572656F206865616473657473266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090957692D4669C2AE3A2049454545203830322E313120622F67266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090948544320457874555342E284A2202831312D70696E206D696E692D55534220322E3029266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090935206D656761706978656C20636F6C6F722063616D6572612077697468206175746F20666F637573266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090956474120434D4F5320636F6C6F722063616D657261266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094275696C742D696E20332E35206D6D20617564696F206A61636B2C206D6963726F70686F6E652C20737065616B65722C20616E6420464D20726164696F266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090952696E6720746F6E6520666F726D6174733A204141432C204141432B2C20654141432B2C20414D522D4E422C20414D522D57422C205143502C204D50332C20574D412C20574156266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909343020706F6C7970686F6E696320616E64207374616E64617264204D49444920666F726D6174203020616E6420312028534D46292F5350204D494449266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909526563686172676561626C65204C69746869756D2D696F6E206F72204C69746869756D2D696F6E20706F6C796D65722031333530206D41682062617474657279266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909457870616E73696F6E20536C6F743A206D6963726F5344E284A2206D656D6F727920636172642028534420322E3020636F6D70617469626C6529266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094143204164617074657220566F6C746167652072616E67652F6672657175656E63793A20313030207E20323430562041432C2035302F363020487A204443206F75747075743A20355620616E64203141266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09095370656369616C2046656174757265733A20464D20526164696F2C20472D53656E736F72266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('44', '2', 'MacBook Air', 0x266C743B6469762667743B0D0A094D6163426F6F6B2041697220697320756C7472617468696E2C20756C747261706F727461626C652C20616E6420756C74726120756E6C696B6520616E797468696E6720656C73652E2042757420796F7520646F6E26616D703B727371756F3B74206C6F736520696E6368657320616E6420706F756E6473206F7665726E696768742E20497426616D703B727371756F3B732074686520726573756C74206F662072657468696E6B696E6720636F6E76656E74696F6E732E204F66206D756C7469706C6520776972656C65737320696E6E6F766174696F6E732E20416E64206F6620627265616B7468726F7567682064657369676E2E2057697468204D6163426F6F6B204169722C206D6F62696C6520636F6D707574696E672073756464656E6C79206861732061206E6577207374616E646172642E266C743B2F6469762667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('45', '2', 'MacBook Pro', 0x266C743B64697620636C6173733D2671756F743B6370745F70726F647563745F6465736372697074696F6E202671756F743B2667743B0D0A09266C743B6469762667743B0D0A0909266C743B702667743B0D0A090909266C743B622667743B4C617465737420496E74656C206D6F62696C6520617263686974656374757265266C743B2F622667743B266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909506F776572656420627920746865206D6F737420616476616E636564206D6F62696C652070726F636573736F72732066726F6D20496E74656C2C20746865206E657720436F726520322044756F204D6163426F6F6B2050726F206973206F7665722035302520666173746572207468616E20746865206F726967696E616C20436F72652044756F204D6163426F6F6B2050726F20616E64206E6F7720737570706F72747320757020746F20344742206F662052414D2E266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909266C743B622667743B4C656164696E672D65646765206772617068696373266C743B2F622667743B266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909546865204E5649444941204765466F72636520383630304D2047542064656C697665727320657863657074696F6E616C2067726170686963732070726F63657373696E6720706F7765722E20466F722074686520756C74696D6174652063726561746976652063616E7661732C20796F752063616E206576656E20636F6E666967757265207468652031372D696E6368206D6F64656C2077697468206120313932302D62792D31323030207265736F6C7574696F6E20646973706C61792E266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909266C743B622667743B44657369676E656420666F72206C696665206F6E2074686520726F6164266C743B2F622667743B266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909496E6E6F766174696F6E7320737563682061732061206D61676E6574696320706F77657220636F6E6E656374696F6E20616E6420616E20696C6C756D696E61746564206B6579626F617264207769746820616D6269656E74206C696768742073656E736F722070757420746865204D6163426F6F6B2050726F20696E206120636C61737320627920697473656C662E266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909266C743B622667743B436F6E6E6563742E204372656174652E20436F6D6D756E69636174652E266C743B2F622667743B266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909517569636B6C7920736574207570206120766964656F20636F6E666572656E6365207769746820746865206275696C742D696E206953696768742063616D6572612E20436F6E74726F6C2070726573656E746174696F6E7320616E64206D656469612066726F6D20757020746F2033302066656574206177617920776974682074686520696E636C75646564204170706C652052656D6F74652E20436F6E6E65637420746F20686967682D62616E647769647468207065726970686572616C7320776974682046697265576972652038303020616E64204456492E266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909266C743B622667743B4E6578742D67656E65726174696F6E20776972656C657373266C743B2F622667743B266C743B2F702667743B0D0A0909266C743B702667743B0D0A090909466561747572696E67203830322E31316E20776972656C65737320746563686E6F6C6F67792C20746865204D6163426F6F6B2050726F2064656C697665727320757020746F20666976652074696D65732074686520706572666F726D616E636520616E6420757020746F207477696365207468652072616E6765206F662070726576696F75732D67656E65726174696F6E20746563686E6F6C6F676965732E266C743B2F702667743B0D0A09266C743B2F6469762667743B0D0A266C743B2F6469762667743B0D0A266C743B212D2D206370745F636F6E7461696E65725F656E64202D2D2667743B, '', '', '');
INSERT INTO op_product_description VALUES ('29', '2', 'Palm Treo Pro', 0x266C743B702667743B0D0A095265646566696E6520796F757220776F726B6461792077697468207468652050616C6D205472656F2050726F20736D61727470686F6E652E20506572666563746C792062616C616E6365642C20796F752063616E20726573706F6E6420746F20627573696E65737320616E6420706572736F6E616C20656D61696C2C2073746179206F6E20746F70206F66206170706F696E746D656E747320616E6420636F6E74616374732C20616E64207573652057692D4669206F7220475053207768656E20796F7526616D703B727371756F3B7265206F757420616E642061626F75742E205468656E207761746368206120766964656F206F6E20596F75547562652C2063617463682075702077697468206E65777320616E642073706F727473206F6E20746865207765622C206F72206C697374656E20746F20612066657720736F6E67732E2042616C616E636520796F757220776F726B20616E6420706C6179207468652077617920796F75206C696B652069742C2077697468207468652050616C6D205472656F2050726F2E266C743B2F702667743B0D0A266C743B702667743B0D0A09266C743B7374726F6E672667743B4665617475726573266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A090957696E646F7773204D6F62696C6526616D703B7265673B20362E312050726F66657373696F6E616C2045646974696F6E266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09095175616C636F6D6D26616D703B7265673B204D534D37323031203430304D487A2050726F636573736F72266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090933323078333230207472616E73666C65637469766520636F6C6F75722054465420746F75636873637265656E266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090948534450412F554D54532F454447452F475052532F47534D20726164696F266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09095472692D62616E6420554D54532026616D703B6D646173683B203835304D487A2C20313930304D487A2C20323130304D487A266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909517561642D62616E642047534D2026616D703B6D646173683B203835302F3930302F313830302F31393030266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09093830322E3131622F672077697468205750412C20575041322C20616E64203830312E31782061757468656E7469636174696F6E266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094275696C742D696E20475053266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909426C7565746F6F74682056657273696F6E3A20322E30202B20456E68616E63656420446174612052617465266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09093235364D422073746F7261676520283130304D42207573657220617661696C61626C65292C203132384D422052414D266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909322E30206D656761706978656C2063616D6572612C20757020746F203878206469676974616C207A6F6F6D20616E6420766964656F2063617074757265266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090952656D6F7661626C652C20726563686172676561626C6520313530306D4168206C69746869756D2D696F6E2062617474657279266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909557020746F20352E3020686F7572732074616C6B2074696D6520616E6420757020746F2032353020686F757273207374616E646279266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094D6963726F53444843206361726420657870616E73696F6E2028757020746F203332474220737570706F7274656429266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094D6963726F55534220322E3020666F722073796E6368726F6E697A6174696F6E20616E64206368617267696E67266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909332E356D6D2073746572656F2068656164736574206A61636B266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090936306D6D202857292078203131346D6D20284C2920782031332E356D6D20284429202F2031333367266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('36', '2', 'iPod Nano', 0x266C743B6469762667743B0D0A09266C743B702667743B0D0A0909266C743B7374726F6E672667743B566964656F20696E20796F757220706F636B65742E266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A09266C743B702667743B0D0A09094974732074686520736D616C6C2069506F642077697468206F6E6520766572792062696720696465613A20766964656F2E2054686520776F726C6473206D6F737420706F70756C6172206D7573696320706C61796572206E6F77206C65747320796F7520656E6A6F79206D6F766965732C2054562073686F77732C20616E64206D6F7265206F6E20612074776F2D696E636820646973706C617920746861747320363525206272696768746572207468616E206265666F72652E266C743B2F702667743B0D0A09266C743B702667743B0D0A0909266C743B7374726F6E672667743B436F76657220466C6F772E266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A09266C743B702667743B0D0A090942726F777365207468726F75676820796F7572206D7573696320636F6C6C656374696F6E20627920666C697070696E67207468726F75676820616C62756D206172742E2053656C65637420616E20616C62756D20746F207475726E206974206F76657220616E64207365652074686520747261636B206C6973742E266C743B7374726F6E672667743B26616D703B6E6273703B266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A09266C743B702667743B0D0A0909266C743B7374726F6E672667743B456E68616E63656420696E746572666163652E266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A09266C743B702667743B0D0A0909457870657269656E636520612077686F6C65206E65772077617920746F2062726F77736520616E64207669657720796F7572206D7573696320616E6420766964656F2E266C743B2F702667743B0D0A09266C743B702667743B0D0A0909266C743B7374726F6E672667743B536C65656B20616E6420636F6C6F7266756C2E266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A09266C743B702667743B0D0A09095769746820616E20616E6F64697A656420616C756D696E756D20616E6420706F6C697368656420737461696E6C65737320737465656C20656E636C6F7375726520616E6420612063686F696365206F66206669766520636F6C6F72732C2069506F64206E616E6F206973206472657373656420746F20696D70726573732E266C743B2F702667743B0D0A09266C743B702667743B0D0A0909266C743B7374726F6E672667743B6954756E65732E266C743B2F7374726F6E672667743B266C743B2F702667743B0D0A09266C743B702667743B0D0A0909417661696C61626C652061732061206672656520646F776E6C6F61642C206954756E6573206D616B6573206974206561737920746F2062726F77736520616E6420627579206D696C6C696F6E73206F6620736F6E67732C206D6F766965732C2054562073686F77732C20617564696F626F6F6B732C20616E642067616D657320616E6420646F776E6C6F6164206672656520706F64636173747320616C6C20617420746865206954756E65732053746F72652E20416E6420796F752063616E20696D706F727420796F7572206F776E206D757369632C206D616E61676520796F75722077686F6C65206D65646961206C6962726172792C20616E642073796E6320796F75722069506F64206F72206950686F6E65207769746820656173652E266C743B2F702667743B0D0A266C743B2F6469762667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('46', '2', 'Sony VAIO', 0x266C743B6469762667743B0D0A09556E707265636564656E74656420706F7765722E20546865206E6578742067656E65726174696F6E206F662070726F63657373696E6720746563686E6F6C6F67792068617320617272697665642E204275696C7420696E746F20746865206E6577657374205641494F206E6F7465626F6F6B73206C69657320496E74656C26616D703B2333393B73206C61746573742C206D6F737420706F77657266756C20696E6E6F766174696F6E207965743A20496E74656C26616D703B7265673B2043656E7472696E6F26616D703B7265673B20322070726F636573736F7220746563686E6F6C6F67792E20426F617374696E6720696E6372656469626C652073706565642C20657870616E64656420776972656C65737320636F6E6E65637469766974792C20656E68616E636564206D756C74696D6564696120737570706F727420616E64206772656174657220656E6572677920656666696369656E63792C20616C6C2074686520686967682D706572666F726D616E636520657373656E7469616C7320617265207365616D6C6573736C7920636F6D62696E656420696E746F20612073696E676C6520636869702E266C743B2F6469762667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('47', '2', 'HP LP3065', 0x266C743B702667743B0D0A0953746F7020796F757220636F2D776F726B65727320696E20746865697220747261636B73207769746820746865207374756E6E696E67206E65772033302D696E636820646961676F6E616C204850204C503330363520466C61742050616E656C204D6F6E69746F722E205468697320666C616773686970206D6F6E69746F7220666561747572657320626573742D696E2D636C61737320706572666F726D616E636520616E642070726573656E746174696F6E206665617475726573206F6E2061206875676520776964652D6173706563742073637265656E207768696C65206C657474696E6720796F7520776F726B20617320636F6D666F727461626C7920617320706F737369626C65202D20796F75206D69676874206576656E20666F7267657420796F7526616D703B2333393B726520617420746865206F6666696365266C743B2F702667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('41', '2', 'iMac', 0x266C743B6469762667743B0D0A094A757374207768656E20796F752074686F7567687420694D6163206861642065766572797468696E672C206E6F772074686572652661637574653B73206576656E206D6F72652E204D6F726520706F77657266756C20496E74656C20436F726520322044756F2070726F636573736F72732E20416E64206D6F7265206D656D6F7279207374616E646172642E20436F6D62696E6520746869732077697468204D6163204F532058204C656F7061726420616E6420694C696665202661637574653B30382C20616E642069742661637574653B73206D6F726520616C6C2D696E2D6F6E65207468616E20657665722E20694D6163207061636B7320616D617A696E6720706572666F726D616E636520696E746F2061207374756E6E696E676C7920736C696D2073706163652E266C743B2F6469762667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('33', '2', 'Samsung SyncMaster 941BW', 0x266C743B6469762667743B0D0A09496D6167696E652074686520616476616E7461676573206F6620676F696E672062696720776974686F757420736C6F77696E6720646F776E2E205468652062696720313926616D703B71756F743B203934314257206D6F6E69746F7220636F6D62696E657320776964652061737065637420726174696F2077697468206661737420706978656C20726573706F6E73652074696D652C20666F722062696767657220696D616765732C206D6F726520726F6F6D20746F20776F726B20616E64206372697370206D6F74696F6E2E20496E206164646974696F6E2C20746865206578636C7573697665204D6167696342726967687420322C204D61676963436F6C6F7220616E64204D6167696354756E6520746563686E6F6C6F676965732068656C702064656C697665722074686520696465616C20696D61676520696E20657665727920736974756174696F6E2C207768696C6520736C65656B2C206E6172726F772062657A656C7320616E642061646A75737461626C65207374616E64732064656C69766572207374796C65206A757374207468652077617920796F752077616E742069742E2057697468207468652053616D73756E67203934314257207769646573637265656E20616E616C6F672F6469676974616C204C4344206D6F6E69746F722C20697426616D703B2333393B73206E6F74206861726420746F20696D6167696E652E266C743B2F6469762667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('43', '2', 'MacBook', 0x266C743B6469762667743B0D0A09266C743B702667743B0D0A0909266C743B622667743B496E74656C20436F726520322044756F2070726F636573736F72266C743B2F622667743B266C743B2F702667743B0D0A09266C743B702667743B0D0A0909506F776572656420627920616E20496E74656C20436F726520322044756F2070726F636573736F722061742073706565647320757020746F20322E313647487A2C20746865206E6577204D6163426F6F6B20697320746865206661737465737420657665722E266C743B2F702667743B0D0A09266C743B702667743B0D0A0909266C743B622667743B314742206D656D6F72792C206C6172676572206861726420647269766573266C743B2F622667743B266C743B2F702667743B0D0A09266C743B702667743B0D0A0909546865206E6577204D6163426F6F6B206E6F7720636F6D6573207769746820314742206F66206D656D6F7279207374616E6461726420616E64206C617267657220686172642064726976657320666F722074686520656E74697265206C696E65207065726665637420666F722072756E6E696E67206D6F7265206F6620796F7572206661766F72697465206170706C69636174696F6E7320616E642073746F72696E672067726F77696E67206D6564696120636F6C6C656374696F6E732E266C743B2F702667743B0D0A09266C743B702667743B0D0A0909266C743B622667743B536C65656B2C20312E30382D696E63682D7468696E2064657369676E266C743B2F622667743B266C743B2F702667743B0D0A09266C743B702667743B0D0A09094D6163426F6F6B206D616B6573206974206561737920746F206869742074686520726F6164207468616E6B7320746F2069747320746F75676820706F6C79636172626F6E61746520636173652C206275696C742D696E20776972656C65737320746563686E6F6C6F676965732C20616E6420696E6E6F766174697665204D61675361666520506F776572204164617074657220746861742072656C6561736573206175746F6D61746963616C6C7920696620736F6D656F6E65206163636964656E74616C6C79207472697073206F6E2074686520636F72642E266C743B2F702667743B0D0A09266C743B702667743B0D0A0909266C743B622667743B4275696C742D696E206953696768742063616D657261266C743B2F622667743B266C743B2F702667743B0D0A09266C743B702667743B0D0A09095269676874206F7574206F662074686520626F782C20796F752063616E2068617665206120766964656F2063686174207769746820667269656E6473206F722066616D696C792C32207265636F7264206120766964656F20617420796F7572206465736B2C206F722074616B652066756E20706963747572657320776974682050686F746F20426F6F7468266C743B2F702667743B0D0A266C743B2F6469762667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('31', '2', 'Nikon D300', 0x266C743B64697620636C6173733D2671756F743B6370745F70726F647563745F6465736372697074696F6E202671756F743B2667743B0D0A09266C743B6469762667743B0D0A0909456E67696E656572656420776974682070726F2D6C6576656C20666561747572657320616E6420706572666F726D616E63652C207468652031322E332D6566666563746976652D6D656761706978656C204433303020636F6D62696E6573206272616E64206E657720746563686E6F6C6F67696573207769746820616476616E63656420666561747572657320696E686572697465642066726F6D204E696B6F6E26616D703B2333393B73206E65776C7920616E6E6F756E6365642044332070726F66657373696F6E616C206469676974616C20534C522063616D65726120746F206F6666657220736572696F75732070686F746F67726170686572732072656D61726B61626C6520706572666F726D616E636520636F6D62696E65642077697468206167696C6974792E266C743B6272202F2667743B0D0A0909266C743B6272202F2667743B0D0A090953696D696C617220746F207468652044332C207468652044333030206665617475726573204E696B6F6E26616D703B2333393B73206578636C75736976652045585045454420496D6167652050726F63657373696E672053797374656D20746861742069732063656E7472616C20746F2064726976696E672074686520737065656420616E642070726F63657373696E6720706F776572206E656564656420666F72206D616E79206F66207468652063616D65726126616D703B2333393B73206E65772066656174757265732E2054686520443330302066656174757265732061206E65772035312D706F696E74206175746F666F6375732073797374656D2077697468204E696B6F6E26616D703B2333393B7320334420466F63757320547261636B696E67206665617475726520616E642074776F206E6577204C697665566965772073686F6F74696E67206D6F646573207468617420616C6C6F7720757365727320746F206672616D6520612070686F746F6772617068207573696E67207468652063616D65726126616D703B2333393B7320686967682D7265736F6C7574696F6E204C4344206D6F6E69746F722E2054686520443330302073686172657320612073696D696C6172205363656E65205265636F676E6974696F6E2053797374656D20617320697320666F756E6420696E207468652044333B2069742070726F6D6973657320746F2067726561746C7920656E68616E636520746865206163637572616379206F66206175746F666F6375732C206175746F6578706F737572652C20616E64206175746F2077686974652062616C616E6365206279207265636F676E697A696E6720746865207375626A656374206F72207363656E65206265696E672070686F746F6772617068656420616E64206170706C79696E67207468697320696E666F726D6174696F6E20746F207468652063616C63756C6174696F6E7320666F72207468652074687265652066756E6374696F6E732E266C743B6272202F2667743B0D0A0909266C743B6272202F2667743B0D0A09095468652044333030207265616374732077697468206C696768746E696E672073706565642C20706F776572696E6720757020696E2061206D65726520302E3133207365636F6E647320616E642073686F6F74696E67207769746820616E20696D7065726365707469626C652034352D6D696C6C697365636F6E6420736875747465722072656C65617365206C61672074696D652E2054686520443330302069732063617061626C65206F662073686F6F74696E67206174206120726170696420736978206672616D657320706572207365636F6E6420616E642063616E20676F2061732066617374206173206569676874206672616D657320706572207365636F6E64207768656E207573696E6720746865206F7074696F6E616C204D422D443130206D756C74692D706F7765722062617474657279207061636B2E20496E20636F6E74696E756F7573206275727374732C2074686520443330302063616E2073686F6F7420757020746F203130302073686F74732061742066756C6C2031322E332D6D656761706978656C207265736F6C7574696F6E2E20284E4F524D414C2D4C4152474520696D6167652073657474696E672C207573696E6720612053616E4469736B2045787472656D652049562031474220436F6D70616374466C61736820636172642E29266C743B6272202F2667743B0D0A0909266C743B6272202F2667743B0D0A0909546865204433303020696E636F72706F726174657320612072616E6765206F6620696E6E6F76617469766520746563686E6F6C6F6769657320616E6420666561747572657320746861742077696C6C207369676E69666963616E746C7920696D70726F7665207468652061636375726163792C20636F6E74726F6C2C20616E6420706572666F726D616E63652070686F746F67726170686572732063616E206765742066726F6D2074686569722065717569706D656E742E20497473206E6577205363656E65205265636F676E6974696F6E2053797374656D20616476616E6365732074686520757365206F66204E696B6F6E26616D703B2333393B73206163636C61696D656420312C3030352D7365676D656E742073656E736F7220746F207265636F676E697A6520636F6C6F727320616E64206C69676874207061747465726E7320746861742068656C70207468652063616D6572612064657465726D696E6520746865207375626A65637420616E64207468652074797065206F66207363656E65206265696E672070686F746F67726170686564206265666F7265206120706963747572652069732074616B656E2E205468697320696E666F726D6174696F6E206973207573656420746F20696D70726F766520746865206163637572616379206F66206175746F666F6375732C206175746F6578706F737572652C20616E64206175746F2077686974652062616C616E63652066756E6374696F6E7320696E2074686520443330302E20466F72206578616D706C652C207468652063616D6572612063616E20747261636B206D6F76696E67207375626A656374732062657474657220616E64206279206964656E74696679696E67207468656D2C2069742063616E20616C736F206175746F6D61746963616C6C792073656C65637420666F63757320706F696E74732066617374657220616E64207769746820677265617465722061636375726163792E2049742063616E20616C736F20616E616C797A6520686967686C696768747320616E64206D6F72652061636375726174656C792064657465726D696E65206578706F737572652C2061732077656C6C20617320696E666572206C6967687420736F757263657320746F2064656C69766572206D6F72652061636375726174652077686974652062616C616E636520646574656374696F6E2E266C743B2F6469762667743B0D0A266C743B2F6469762667743B0D0A266C743B212D2D206370745F636F6E7461696E65725F656E64202D2D2667743B, '', '', '');
INSERT INTO op_product_description VALUES ('49', '2', 'Samsung Galaxy Tab 10.1', 0x266C743B702667743B0D0A0953616D73756E672047616C617879205461622031302E312C2069732074686520776F726C6426616D703B727371756F3B73207468696E6E657374207461626C65742C206D6561737572696E6720382E36206D6D20746869636B6E6573732C2072756E6E696E67207769746820416E64726F696420332E3020486F6E6579636F6D62204F53206F6E2061203147487A206475616C2D636F726520546567726120322070726F636573736F722C2073696D696C617220746F2069747320796F756E6765722062726F746865722053616D73756E672047616C6178792054616220382E392E266C743B2F702667743B0D0A266C743B702667743B0D0A0953616D73756E672047616C617879205461622031302E31206769766573207075726520416E64726F696420332E3020657870657269656E63652C20616464696E6720697473206E657720546F75636857697A205558206F7220546F75636857697A20342E302026616D703B6E646173683B20696E636C756465732061206C6976652070616E656C2C207768696368206C65747320796F7520746F20637573746F6D697A65207769746820646966666572656E7420636F6E74656E742C207375636820617320796F75722070696374757265732C20626F6F6B6D61726B732C20616E6420736F6369616C2066656564732C2073706F7274696E6720612031302E3120696E636865732057584741206361706163697469766520746F7563682073637265656E2077697468203132383020782038303020706978656C73206F66207265736F6C7574696F6E2C20657175697070656420776974682033206D656761706978656C20726561722063616D6572612077697468204C454420666C61736820616E6420612032206D656761706978656C2066726F6E742063616D6572612C20485350412B20636F6E6E656374697669747920757020746F2032314D6270732C203732307020484420766964656F207265636F7264696E67206361706162696C6974792C20313038307020484420706C61796261636B2C20444C4E4120737570706F72742C20426C7565746F6F746820322E312C2055534220322E302C206779726F73636F70652C2057692D4669203830322E313120612F622F672F6E2C206D6963726F2D534420736C6F742C20332E356D6D206865616470686F6E65206A61636B2C20616E642053494D20736C6F742C20696E636C7564696E67207468652053616D73756E6720537469636B2026616D703B6E646173683B206120426C7565746F6F7468206D6963726F70686F6E6520746861742063616E206265206361727269656420696E206120706F636B6574206C696B6520612070656E20616E6420736F756E6420646F636B207769746820706F776572656420737562776F6F6665722E266C743B2F702667743B0D0A266C743B702667743B0D0A0953616D73756E672047616C617879205461622031302E312077696C6C20636F6D6520696E2031364742202F2033324742202F203634474220766572697469657320616E64207072652D6C6F61646564207769746820536F6369616C204875622C2052656164657226616D703B727371756F3B73204875622C204D757369632048756220616E642053616D73756E67204D696E69204170707320547261792026616D703B6E646173683B20776869636820676976657320796F752061636365737320746F206D6F726520636F6D6D6F6E6C792075736564206170707320746F2068656C702065617365206D756C74697461736B696E6720616E642069742069732063617061626C65206F662041646F626520466C61736820506C617965722031302E322C20706F776572656420627920363836306D41682062617474657279207468617420676976657320796F75203130686F757273206F6620766964656F2D706C61796261636B2074696D652E26616D703B6E6273703B26616D703B61756D6C3B26616D703B6F756D6C3B266C743B2F702667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('42', '2', 'Apple Cinema 30&quot;', 0x266C743B702667743B0D0A09266C743B666F6E7420666163653D2671756F743B68656C7665746963612C67656E6576612C617269616C2671756F743B2073697A653D2671756F743B322671756F743B2667743B266C743B666F6E7420666163653D2671756F743B48656C7665746963612671756F743B2073697A653D2671756F743B322671756F743B2667743B5468652033302D696E6368204170706C652043696E656D6120484420446973706C61792064656C697665727320616E20616D617A696E6720323536302078203136303020706978656C207265736F6C7574696F6E2E2044657369676E6564207370656369666963616C6C7920666F72207468652063726561746976652070726F66657373696F6E616C2C207468697320646973706C61792070726F7669646573206D6F726520737061636520666F72206561736965722061636365737320746F20616C6C2074686520746F6F6C7320616E642070616C6574746573206E656564656420746F20656469742C20666F726D617420616E6420636F6D706F7369746520796F757220776F726B2E20436F6D62696E65207468697320646973706C617920776974682061204D61632050726F2C204D6163426F6F6B2050726F2C206F7220506F7765724D616320473520616E642074686572652773206E6F206C696D697420746F207768617420796F752063616E20616368696576652E20266C743B2F666F6E742667743B266C743B6272202F2667743B0D0A09266C743B6272202F2667743B0D0A09266C743B666F6E7420666163653D2671756F743B48656C7665746963612671756F743B2073697A653D2671756F743B322671756F743B2667743B5468652043696E656D6120484420666561747572657320616E206163746976652D6D6174726978206C6971756964206372797374616C20646973706C617920746861742070726F647563657320666C69636B65722D6672656520696D6167657320746861742064656C6976657220747769636520746865206272696768746E6573732C207477696365207468652073686172706E65737320616E642074776963652074686520636F6E747261737420726174696F206F662061207479706963616C2043525420646973706C61792E20556E6C696B65206F7468657220666C61742070616E656C732C20697427732064657369676E6564207769746820612070757265206469676974616C20696E7465726661636520746F2064656C6976657220646973746F7274696F6E2D6672656520696D616765732074686174206E65766572206E6565642061646A757374696E672E2057697468206F7665722034206D696C6C696F6E206469676974616C20706978656C732C2074686520646973706C617920697320756E697175656C792073756974656420666F7220736369656E746966696320616E6420746563686E6963616C206170706C69636174696F6E7320737563682061732076697375616C697A696E67206D6F6C6563756C61722073747275637475726573206F7220616E616C797A696E672067656F6C6F676963616C20646174612E20266C743B2F666F6E742667743B266C743B6272202F2667743B0D0A09266C743B6272202F2667743B0D0A09266C743B666F6E7420666163653D2671756F743B48656C7665746963612671756F743B2073697A653D2671756F743B322671756F743B2667743B4F66666572696E672061636375726174652C206272696C6C69616E7420636F6C6F7220706572666F726D616E63652C207468652043696E656D612048442064656C697665727320757020746F2031362E37206D696C6C696F6E20636F6C6F7273206163726F7373206120776964652067616D757420616C6C6F77696E6720796F7520746F2073656520737562746C65206E75616E636573206265747765656E20636F6C6F72732066726F6D20736F66742070617374656C7320746F2072696368206A6577656C20746F6E65732E204120776964652076696577696E6720616E676C6520656E737572657320756E69666F726D20636F6C6F722066726F6D206564676520746F20656467652E204170706C65277320436F6C6F7253796E6320746563686E6F6C6F677920616C6C6F777320796F7520746F2063726561746520637573746F6D2070726F66696C657320746F206D61696E7461696E20636F6E73697374656E7420636F6C6F72206F6E73637265656E20616E6420696E207072696E742E2054686520726573756C743A20596F752063616E20636F6E666964656E746C7920757365207468697320646973706C617920696E20616C6C20796F757220636F6C6F722D637269746963616C206170706C69636174696F6E732E20266C743B2F666F6E742667743B266C743B6272202F2667743B0D0A09266C743B6272202F2667743B0D0A09266C743B666F6E7420666163653D2671756F743B48656C7665746963612671756F743B2073697A653D2671756F743B322671756F743B2667743B486F7573656420696E2061206E657720616C756D696E756D2064657369676E2C2074686520646973706C61792068617320612076657279207468696E2062657A656C207468617420656E68616E6365732076697375616C2061636375726163792E204561636820646973706C61792066656174757265732074776F2046697265576972652034303020706F72747320616E642074776F2055534220322E3020706F7274732C206D616B696E67206174746163686D656E74206F66206465736B746F70207065726970686572616C732C2073756368206173206953696768742C2069506F642C206469676974616C20616E64207374696C6C2063616D657261732C2068617264206472697665732C207072696E7465727320616E64207363616E6E6572732C206576656E206D6F72652061636365737369626C6520616E6420636F6E76656E69656E742E2054616B696E6720616476616E74616765206F6620746865206D756368207468696E6E657220616E64206C69676874657220666F6F747072696E74206F6620616E204C43442C20746865206E657720646973706C61797320737570706F72742074686520564553412028566964656F20456C656374726F6E696373205374616E6461726473204173736F63696174696F6E29206D6F756E74696E6720696E74657266616365207374616E646172642E20437573746F6D657273207769746820746865206F7074696F6E616C2043696E656D6120446973706C61792056455341204D6F756E742041646170746572206B6974206761696E2074686520666C65786962696C69747920746F206D6F756E7420746865697220646973706C617920696E206C6F636174696F6E73206D6F737420617070726F70726961746520666F7220746865697220776F726B20656E7669726F6E6D656E742E20266C743B2F666F6E742667743B266C743B6272202F2667743B0D0A09266C743B6272202F2667743B0D0A09266C743B666F6E7420666163653D2671756F743B48656C7665746963612671756F743B2073697A653D2671756F743B322671756F743B2667743B5468652043696E656D6120484420666561747572657320612073696E676C65206361626C652064657369676E207769746820656C6567616E7420627265616B6F757420666F72207468652055534220322E302C2046697265576972652034303020616E6420612070757265206469676974616C20636F6E6E656374696F6E207573696E672074686520696E647573747279207374616E64617264204469676974616C20566964656F20496E7465726661636520284456492920696E746572666163652E205468652044564920636F6E6E656374696F6E20616C6C6F777320666F7220612064697265637420707572652D6469676974616C20636F6E6E656374696F6E2E266C743B2F666F6E742667743B266C743B2F666F6E742667743B266C743B2F702667743B0D0A266C743B68332667743B0D0A0946656174757265733A266C743B2F68332667743B0D0A266C743B702667743B0D0A09556E726976616C656420646973706C617920706572666F726D616E6365266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A090933302D696E636820287669657761626C6529206163746976652D6D6174726978206C6971756964206372797374616C20646973706C61792070726F76696465732062726561746874616B696E6720696D616765207175616C69747920616E642076697669642C20726963686C792073617475726174656420636F6C6F722E266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909537570706F727420666F7220323536302D62792D3136303020706978656C207265736F6C7574696F6E20666F7220646973706C6179206F66206869676820646566696E6974696F6E207374696C6C20616E6420766964656F20696D61676572792E266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909576964652D666F726D61742064657369676E20666F722073696D756C74616E656F757320646973706C6179206F662074776F2066756C6C207061676573206F66207465787420616E642067726170686963732E266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909496E647573747279207374616E646172642044564920636F6E6E6563746F7220666F7220646972656374206174746163686D656E7420746F204D61632D20616E642057696E646F77732D6261736564206465736B746F707320616E64206E6F7465626F6F6B73266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909496E6372656469626C7920776964652028313730206465677265652920686F72697A6F6E74616C20616E6420766572746963616C2076696577696E6720616E676C6520666F72206D6178696D756D207669736962696C69747920616E6420636F6C6F7220706572666F726D616E63652E266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094C696768746E696E672D6661737420706978656C20726573706F6E736520666F722066756C6C2D6D6F74696F6E206469676974616C20766964656F20706C61796261636B2E266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909537570706F727420666F722031362E37206D696C6C696F6E2073617475726174656420636F6C6F72732C20666F722075736520696E20616C6C2067726170686963732D696E74656E73697665206170706C69636174696F6E732E266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A0953696D706C6520736574757020616E64206F7065726174696F6E266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A090953696E676C65206361626C65207769746820656C6567616E7420627265616B6F757420666F7220636F6E6E656374696F6E20746F204456492C2055534220616E6420466972655769726520706F727473266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094275696C742D696E2074776F2D706F72742055534220322E302068756220666F72206561737920636F6E6E656374696F6E206F66206465736B746F70207065726970686572616C20646576696365732E266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090954776F2046697265576972652034303020706F72747320746F20737570706F72742069536967687420616E64206F74686572206465736B746F70207065726970686572616C73266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09536C65656B2C20656C6567616E742064657369676E266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A090948756765207669727475616C20776F726B73706163652C207665727920736D616C6C20666F6F747072696E742E266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094E6172726F772042657A656C2064657369676E20746F206D696E696D697A652076697375616C20696D70616374206F66207573696E67206475616C20646973706C617973266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909556E697175652068696E67652064657369676E20666F72206566666F72746C6573732061646A7573746D656E74266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909537570706F727420666F722056455341206D6F756E74696E6720736F6C7574696F6E7320284170706C652043696E656D6120446973706C61792056455341204D6F756E74204164617074657220736F6C642073657061726174656C7929266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B68332667743B0D0A09546563686E6963616C2073706563696669636174696F6E73266C743B2F68332667743B0D0A266C743B702667743B0D0A09266C743B622667743B53637265656E2073697A652028646961676F6E616C207669657761626C6520696D6167652073697A6529266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A09094170706C652043696E656D6120484420446973706C61793A20333020696E63686573202832392E372D696E6368207669657761626C6529266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B53637265656E2074797065266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A09095468696E2066696C6D207472616E736973746F72202854465429206163746976652D6D6174726978206C6971756964206372797374616C20646973706C61792028414D4C434429266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B5265736F6C7574696F6E73266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A0909323536302078203136303020706978656C7320286F7074696D756D207265736F6C7574696F6E29266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09093230343820782031323830266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09093139323020782031323030266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090931323830207820383030266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090931303234207820363430266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B446973706C617920636F6C6F727320286D6178696D756D29266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A090931362E37206D696C6C696F6E266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B56696577696E6720616E676C6520287479706963616C29266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A0909313730C2B020686F72697A6F6E74616C3B20313730C2B020766572746963616C266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B4272696768746E65737320287479706963616C29266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A090933302D696E63682043696E656D6120484420446973706C61793A203430302063642F6D32266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B436F6E747261737420726174696F20287479706963616C29266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A09093730303A31266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B526573706F6E73652074696D6520287479706963616C29266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A09093136206D73266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B506978656C207069746368266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A090933302D696E63682043696E656D6120484420446973706C61793A20302E323530206D6D266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B53637265656E2074726561746D656E74266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A0909416E7469676C6172652068617264636F6174266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B5573657220636F6E74726F6C732028686172647761726520616E6420736F66747761726529266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A0909446973706C617920506F7765722C266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090953797374656D20736C6565702C2077616B65266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094272696768746E657373266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094D6F6E69746F722074696C74266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B436F6E6E6563746F727320616E64206361626C6573266C743B2F622667743B266C743B6272202F2667743B0D0A094361626C65266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A090944564920284469676974616C2056697375616C20496E7465726661636529266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909466972655769726520343030266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090955534220322E30266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909444320706F77657220283234205629266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09436F6E6E6563746F7273266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A090954776F2D706F72742C2073656C662D706F77657265642055534220322E3020687562266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090954776F2046697265576972652034303020706F727473266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094B656E73696E67746F6E20736563757269747920706F7274266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B56455341206D6F756E742061646170746572266C743B2F622667743B266C743B6272202F2667743B0D0A095265717569726573206F7074696F6E616C2043696E656D6120446973706C61792056455341204D6F756E74204164617074657220284D39363439472F4129266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A0909436F6D70617469626C65207769746820564553412046444D4920284D49532D442C203130302C20432920636F6D706C69616E74206D6F756E74696E6720736F6C7574696F6E73266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B456C656374726963616C20726571756972656D656E7473266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A0909496E70757420766F6C746167653A203130302D323430205641432035302D3630487A266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094D6178696D756D20706F776572207768656E206F7065726174696E673A2031353057266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909456E65726779207361766572206D6F64653A203357206F72206C657373266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B456E7669726F6E6D656E74616C20726571756972656D656E7473266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A09094F7065726174696E672074656D70657261747572653A203530C2B020746F203935C2B0204620283130C2B020746F203335C2B0204329266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090953746F726167652074656D70657261747572653A202D3430C2B020746F20313136C2B0204620282D3430C2B020746F203437C2B0204329266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094F7065726174696E672068756D69646974793A2032302520746F20383025206E6F6E636F6E64656E73696E67266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094D6178696D756D206F7065726174696E6720616C7469747564653A2031302C3030302066656574266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B4167656E637920617070726F76616C73266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A0909464343205061727420313520436C6173732042266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909454E353530323220436C6173732042266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909454E3535303234266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09095643434920436C6173732042266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090941532F4E5A53203335343820436C6173732042266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909434E5320313334333820436C6173732042266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909494345532D30303320436C6173732042266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090949534F20313334303620706172742032266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094D5052204949266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909494543203630393530266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909554C203630393530266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909435341203630393530266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909454E3630393530266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909454E455247592053544152266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090954434F20273033266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B53697A6520616E6420776569676874266C743B2F622667743B266C743B6272202F2667743B0D0A0933302D696E6368204170706C652043696E656D6120484420446973706C6179266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A09094865696768743A2032312E3320696E63686573202835342E3320636D29266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090957696474683A2032372E3220696E63686573202836382E3820636D29266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090944657074683A20382E343620696E63686573202832312E3520636D29266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09095765696768743A2032372E3520706F756E6473202831322E35206B6729266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A266C743B702667743B0D0A09266C743B622667743B53797374656D20526571756972656D656E7473266C743B2F622667743B266C743B2F702667743B0D0A266C743B756C2667743B0D0A09266C743B6C692667743B0D0A09094D61632050726F2C20616C6C2067726170686963206F7074696F6E73266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A09094D6163426F6F6B2050726F266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909506F776572204D616320473520285043492D582920776974682041544920526164656F6E2039363530206F7220626574746572206F72204E5649444941204765466F72636520363830302047542044444C206F7220626574746572266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909506F776572204D616320473520285043492045787072657373292C20616C6C206772617068696373206F7074696F6E73266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A0909506F776572426F6F6B2047342077697468206475616C2D6C696E6B2044564920737570706F7274266C743B2F6C692667743B0D0A09266C743B6C692667743B0D0A090957696E646F777320504320616E642067726170686963732063617264207468617420737570706F7274732044564920706F7274732077697468206475616C2D6C696E6B206469676974616C2062616E64776964746820616E64205645534120444443207374616E6461726420666F7220706C75672D616E642D706C6179207365747570266C743B2F6C692667743B0D0A266C743B2F756C2667743B0D0A, '', '', '');
INSERT INTO op_product_description VALUES ('30', '2', 'Canon EOS 5D', 0x266C743B702667743B0D0A0943616E6F6E2773207072657373206D6174657269616C20666F722074686520454F532035442073746174657320746861742069742027646566696E657320286129206E657720442D534C522063617465676F7279272C207768696C65207765277265206E6F74207479706963616C6C7920746F6F20636F6E6365726E65642077697468206D61726B6574696E672074616C6B207468697320706172746963756C61722073746174656D656E7420697320636C6561726C79207072657474792061636375726174652E2054686520454F5320354420697320756E6C696B6520616E792070726576696F7573206469676974616C20534C5220696E207468617420697420636F6D62696E657320612066756C6C2D6672616D6520283335206D6D2073697A6564292068696768207265736F6C7574696F6E2073656E736F72202831322E38206D656761706978656C7329207769746820612072656C61746976656C7920636F6D7061637420626F64792028736C696768746C79206C6172676572207468616E2074686520454F53203230442C20616C74686F75676820696E20796F75722068616E64206974206665656C73206E6F7469636561626C7920276368756E6B69657227292E2054686520454F532035442069732061696D656420746F20736C6F7420696E206265747765656E2074686520454F532032304420616E642074686520454F532D31442070726F66657373696F6E616C206469676974616C20534C5227732C20616E20696D706F7274616E7420646966666572656E6365207768656E20636F6D706172656420746F20746865206C617474657220697320746861742074686520454F5320354420646F65736E2774206861766520616E7920656E7669726F6E6D656E74616C207365616C732E205768696C652043616E6F6E20646F6E2774207370656369666963616C6C7920726566657220746F2074686520454F532035442061732061202770726F66657373696F6E616C27206469676974616C20534C522069742077696C6C2068617665206F6276696F75732061707065616C20746F2070726F66657373696F6E616C732077686F2077616E7420612068696768207175616C697479206469676974616C20534C5220696E206120626F6479206C696768746572207468616E2074686520454F532D31442E2049742077696C6C20616C736F206E6F20646F7562742061707065616C20746F2063757272656E7420454F5320323044206F776E6572732028616C74686F756768206C65747320686F70652074686579277665206E6F7420626F7567687420746F6F206D616E792045462D53206C656E7365732E2E2E2920C3A4C3AB266C743B2F702667743B0D0A, '', '', '');

-- ----------------------------
-- Table structure for `op_product_discount`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_discount`;
CREATE TABLE `op_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=444 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_discount
-- ----------------------------
INSERT INTO op_product_discount VALUES ('443', '42', '1', '30', '1', '66.0000', '0000-00-00', '0000-00-00');
INSERT INTO op_product_discount VALUES ('442', '42', '1', '20', '1', '77.0000', '0000-00-00', '0000-00-00');
INSERT INTO op_product_discount VALUES ('441', '42', '1', '10', '1', '88.0000', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for `op_product_image`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_image`;
CREATE TABLE `op_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2361 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_image
-- ----------------------------
INSERT INTO op_product_image VALUES ('2358', '30', 'data/demo/canon_eos_5d_3.jpg', '0');
INSERT INTO op_product_image VALUES ('2321', '47', 'data/demo/hp_3.jpg', '0');
INSERT INTO op_product_image VALUES ('2360', '28', 'data/demo/htc_touch_hd_3.jpg', '0');
INSERT INTO op_product_image VALUES ('2351', '41', 'data/demo/imac_3.jpg', '0');
INSERT INTO op_product_image VALUES ('1982', '40', 'data/demo/iphone_6.jpg', '0');
INSERT INTO op_product_image VALUES ('2001', '36', 'data/demo/ipod_nano_5.jpg', '0');
INSERT INTO op_product_image VALUES ('2000', '36', 'data/demo/ipod_nano_4.jpg', '0');
INSERT INTO op_product_image VALUES ('1971', '43', 'data/demo/macbook_5.jpg', '0');
INSERT INTO op_product_image VALUES ('1970', '43', 'data/demo/macbook_4.jpg', '0');
INSERT INTO op_product_image VALUES ('1974', '44', 'data/demo/macbook_air_4.jpg', '0');
INSERT INTO op_product_image VALUES ('1973', '44', 'data/demo/macbook_air_2.jpg', '0');
INSERT INTO op_product_image VALUES ('1977', '45', 'data/demo/macbook_pro_2.jpg', '0');
INSERT INTO op_product_image VALUES ('1976', '45', 'data/demo/macbook_pro_3.jpg', '0');
INSERT INTO op_product_image VALUES ('1986', '31', 'data/demo/nikon_d300_3.jpg', '0');
INSERT INTO op_product_image VALUES ('1985', '31', 'data/demo/nikon_d300_2.jpg', '0');
INSERT INTO op_product_image VALUES ('1988', '29', 'data/demo/palm_treo_pro_3.jpg', '0');
INSERT INTO op_product_image VALUES ('1995', '46', 'data/demo/sony_vaio_5.jpg', '0');
INSERT INTO op_product_image VALUES ('1994', '46', 'data/demo/sony_vaio_4.jpg', '0');
INSERT INTO op_product_image VALUES ('1991', '48', 'data/demo/ipod_classic_4.jpg', '0');
INSERT INTO op_product_image VALUES ('1990', '48', 'data/demo/ipod_classic_3.jpg', '0');
INSERT INTO op_product_image VALUES ('1981', '40', 'data/demo/iphone_2.jpg', '0');
INSERT INTO op_product_image VALUES ('1980', '40', 'data/demo/iphone_5.jpg', '0');
INSERT INTO op_product_image VALUES ('2357', '30', 'data/demo/canon_eos_5d_2.jpg', '0');
INSERT INTO op_product_image VALUES ('2320', '47', 'data/demo/hp_2.jpg', '0');
INSERT INTO op_product_image VALUES ('2359', '28', 'data/demo/htc_touch_hd_2.jpg', '0');
INSERT INTO op_product_image VALUES ('2350', '41', 'data/demo/imac_2.jpg', '0');
INSERT INTO op_product_image VALUES ('1979', '40', 'data/demo/iphone_3.jpg', '0');
INSERT INTO op_product_image VALUES ('1978', '40', 'data/demo/iphone_4.jpg', '0');
INSERT INTO op_product_image VALUES ('1989', '48', 'data/demo/ipod_classic_2.jpg', '0');
INSERT INTO op_product_image VALUES ('1999', '36', 'data/demo/ipod_nano_2.jpg', '0');
INSERT INTO op_product_image VALUES ('1998', '36', 'data/demo/ipod_nano_3.jpg', '0');
INSERT INTO op_product_image VALUES ('1969', '43', 'data/demo/macbook_2.jpg', '0');
INSERT INTO op_product_image VALUES ('1968', '43', 'data/demo/macbook_3.jpg', '0');
INSERT INTO op_product_image VALUES ('1972', '44', 'data/demo/macbook_air_3.jpg', '0');
INSERT INTO op_product_image VALUES ('1975', '45', 'data/demo/macbook_pro_4.jpg', '0');
INSERT INTO op_product_image VALUES ('1984', '31', 'data/demo/nikon_d300_4.jpg', '0');
INSERT INTO op_product_image VALUES ('1983', '31', 'data/demo/nikon_d300_5.jpg', '0');
INSERT INTO op_product_image VALUES ('1987', '29', 'data/demo/palm_treo_pro_2.jpg', '0');
INSERT INTO op_product_image VALUES ('1993', '46', 'data/demo/sony_vaio_2.jpg', '0');
INSERT INTO op_product_image VALUES ('1992', '46', 'data/demo/sony_vaio_3.jpg', '0');
INSERT INTO op_product_image VALUES ('2327', '49', 'data/demo/samsung_tab_7.jpg', '0');
INSERT INTO op_product_image VALUES ('2326', '49', 'data/demo/samsung_tab_6.jpg', '0');
INSERT INTO op_product_image VALUES ('2325', '49', 'data/demo/samsung_tab_5.jpg', '0');
INSERT INTO op_product_image VALUES ('2324', '49', 'data/demo/samsung_tab_4.jpg', '0');
INSERT INTO op_product_image VALUES ('2323', '49', 'data/demo/samsung_tab_3.jpg', '0');
INSERT INTO op_product_image VALUES ('2322', '49', 'data/demo/samsung_tab_2.jpg', '0');
INSERT INTO op_product_image VALUES ('2355', '42', 'data/demo/canon_eos_5d_1.jpg', '0');
INSERT INTO op_product_image VALUES ('2354', '42', 'data/demo/compaq_presario.jpg', '0');
INSERT INTO op_product_image VALUES ('2353', '42', 'data/demo/hp_1.jpg', '0');
INSERT INTO op_product_image VALUES ('2352', '42', 'data/demo/canon_logo.jpg', '0');
INSERT INTO op_product_image VALUES ('2356', '42', 'data/demo/canon_eos_5d_2.jpg', '0');

-- ----------------------------
-- Table structure for `op_product_option`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_option`;
CREATE TABLE `op_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text COLLATE utf8_bin NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_option
-- ----------------------------
INSERT INTO op_product_option VALUES ('224', '35', '11', '', '1');
INSERT INTO op_product_option VALUES ('225', '47', '12', 0x323031312D30342D3232, '1');
INSERT INTO op_product_option VALUES ('219', '42', '8', 0x323031312D30322D3230, '1');
INSERT INTO op_product_option VALUES ('222', '42', '7', '', '1');
INSERT INTO op_product_option VALUES ('209', '42', '6', '', '1');
INSERT INTO op_product_option VALUES ('208', '42', '4', 0x74657374, '1');
INSERT INTO op_product_option VALUES ('223', '42', '2', '', '1');
INSERT INTO op_product_option VALUES ('218', '42', '1', '', '1');
INSERT INTO op_product_option VALUES ('217', '42', '5', '', '1');
INSERT INTO op_product_option VALUES ('226', '30', '5', '', '1');
INSERT INTO op_product_option VALUES ('221', '42', '9', 0x32323A3235, '1');
INSERT INTO op_product_option VALUES ('220', '42', '10', 0x323031312D30322D32302032323A3235, '1');

-- ----------------------------
-- Table structure for `op_product_option_value`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_option_value`;
CREATE TABLE `op_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) COLLATE utf8_bin NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) COLLATE utf8_bin NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_option_value
-- ----------------------------
INSERT INTO op_product_option_value VALUES ('9', '223', '42', '2', '24', '194', '1', '20.0000', '+', '0', '+', '20.00000000', '+');
INSERT INTO op_product_option_value VALUES ('8', '223', '42', '2', '23', '48', '1', '10.0000', '+', '0', '+', '10.00000000', '+');
INSERT INTO op_product_option_value VALUES ('7', '218', '42', '1', '43', '300', '1', '30.0000', '+', '3', '+', '30.00000000', '+');
INSERT INTO op_product_option_value VALUES ('6', '218', '42', '1', '31', '146', '1', '20.0000', '+', '2', '-', '20.00000000', '+');
INSERT INTO op_product_option_value VALUES ('5', '218', '42', '1', '32', '96', '1', '10.0000', '+', '1', '+', '10.00000000', '+');
INSERT INTO op_product_option_value VALUES ('2', '217', '42', '5', '42', '200', '1', '2.0000', '+', '0', '+', '2.00000000', '+');
INSERT INTO op_product_option_value VALUES ('1', '217', '42', '5', '41', '100', '0', '1.0000', '+', '0', '+', '1.00000000', '+');
INSERT INTO op_product_option_value VALUES ('3', '217', '42', '5', '40', '300', '0', '3.0000', '+', '0', '+', '3.00000000', '+');
INSERT INTO op_product_option_value VALUES ('4', '217', '42', '5', '39', '92', '1', '4.0000', '+', '0', '+', '4.00000000', '+');
INSERT INTO op_product_option_value VALUES ('12', '224', '35', '11', '46', '0', '1', '5.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO op_product_option_value VALUES ('13', '224', '35', '11', '47', '10', '1', '10.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO op_product_option_value VALUES ('14', '224', '35', '11', '48', '15', '1', '15.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO op_product_option_value VALUES ('16', '226', '30', '5', '40', '5', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO op_product_option_value VALUES ('15', '226', '30', '5', '39', '2', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO op_product_option_value VALUES ('10', '223', '42', '2', '44', '2696', '1', '30.0000', '+', '0', '+', '30.00000000', '+');
INSERT INTO op_product_option_value VALUES ('11', '223', '42', '2', '45', '3998', '1', '40.0000', '+', '0', '+', '40.00000000', '+');

-- ----------------------------
-- Table structure for `op_product_related`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_related`;
CREATE TABLE `op_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_related
-- ----------------------------
INSERT INTO op_product_related VALUES ('40', '42');
INSERT INTO op_product_related VALUES ('41', '42');
INSERT INTO op_product_related VALUES ('42', '40');
INSERT INTO op_product_related VALUES ('42', '41');

-- ----------------------------
-- Table structure for `op_product_reward`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_reward`;
CREATE TABLE `op_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=549 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_reward
-- ----------------------------
INSERT INTO op_product_reward VALUES ('546', '42', '1', '100');
INSERT INTO op_product_reward VALUES ('519', '47', '1', '300');
INSERT INTO op_product_reward VALUES ('548', '28', '1', '400');
INSERT INTO op_product_reward VALUES ('329', '43', '1', '600');
INSERT INTO op_product_reward VALUES ('339', '29', '1', '0');
INSERT INTO op_product_reward VALUES ('343', '48', '1', '0');
INSERT INTO op_product_reward VALUES ('335', '40', '1', '0');
INSERT INTO op_product_reward VALUES ('547', '30', '1', '200');
INSERT INTO op_product_reward VALUES ('331', '44', '1', '700');
INSERT INTO op_product_reward VALUES ('333', '45', '1', '800');
INSERT INTO op_product_reward VALUES ('337', '31', '1', '0');
INSERT INTO op_product_reward VALUES ('425', '35', '1', '0');
INSERT INTO op_product_reward VALUES ('345', '33', '1', '0');
INSERT INTO op_product_reward VALUES ('347', '46', '1', '0');
INSERT INTO op_product_reward VALUES ('545', '41', '1', '0');
INSERT INTO op_product_reward VALUES ('351', '36', '1', '0');
INSERT INTO op_product_reward VALUES ('521', '49', '1', '1000');

-- ----------------------------
-- Table structure for `op_product_special`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_special`;
CREATE TABLE `op_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=443 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_special
-- ----------------------------
INSERT INTO op_product_special VALUES ('440', '42', '1', '1', '90.0000', '0000-00-00', '0000-00-00');
INSERT INTO op_product_special VALUES ('442', '30', '1', '2', '90.0000', '0000-00-00', '0000-00-00');
INSERT INTO op_product_special VALUES ('441', '30', '1', '1', '80.0000', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for `op_product_to_category`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_to_category`;
CREATE TABLE `op_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_to_category
-- ----------------------------
INSERT INTO op_product_to_category VALUES ('28', '20');
INSERT INTO op_product_to_category VALUES ('28', '26');
INSERT INTO op_product_to_category VALUES ('28', '27');
INSERT INTO op_product_to_category VALUES ('28', '59');
INSERT INTO op_product_to_category VALUES ('28', '60');
INSERT INTO op_product_to_category VALUES ('28', '61');
INSERT INTO op_product_to_category VALUES ('28', '62');
INSERT INTO op_product_to_category VALUES ('28', '63');
INSERT INTO op_product_to_category VALUES ('28', '64');
INSERT INTO op_product_to_category VALUES ('29', '20');
INSERT INTO op_product_to_category VALUES ('30', '20');
INSERT INTO op_product_to_category VALUES ('30', '26');
INSERT INTO op_product_to_category VALUES ('30', '27');
INSERT INTO op_product_to_category VALUES ('30', '59');
INSERT INTO op_product_to_category VALUES ('30', '60');
INSERT INTO op_product_to_category VALUES ('30', '61');
INSERT INTO op_product_to_category VALUES ('30', '62');
INSERT INTO op_product_to_category VALUES ('30', '63');
INSERT INTO op_product_to_category VALUES ('30', '64');
INSERT INTO op_product_to_category VALUES ('33', '20');
INSERT INTO op_product_to_category VALUES ('35', '20');
INSERT INTO op_product_to_category VALUES ('40', '20');
INSERT INTO op_product_to_category VALUES ('41', '27');
INSERT INTO op_product_to_category VALUES ('42', '20');
INSERT INTO op_product_to_category VALUES ('42', '26');
INSERT INTO op_product_to_category VALUES ('42', '27');
INSERT INTO op_product_to_category VALUES ('42', '59');
INSERT INTO op_product_to_category VALUES ('42', '60');
INSERT INTO op_product_to_category VALUES ('42', '61');
INSERT INTO op_product_to_category VALUES ('42', '62');
INSERT INTO op_product_to_category VALUES ('42', '63');
INSERT INTO op_product_to_category VALUES ('42', '64');
INSERT INTO op_product_to_category VALUES ('43', '20');
INSERT INTO op_product_to_category VALUES ('44', '20');
INSERT INTO op_product_to_category VALUES ('46', '20');
INSERT INTO op_product_to_category VALUES ('47', '20');
INSERT INTO op_product_to_category VALUES ('48', '20');

-- ----------------------------
-- Table structure for `op_product_to_download`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_to_download`;
CREATE TABLE `op_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_to_download
-- ----------------------------

-- ----------------------------
-- Table structure for `op_product_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_to_layout`;
CREATE TABLE `op_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_to_layout
-- ----------------------------

-- ----------------------------
-- Table structure for `op_product_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `op_product_to_store`;
CREATE TABLE `op_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_product_to_store
-- ----------------------------
INSERT INTO op_product_to_store VALUES ('28', '0');
INSERT INTO op_product_to_store VALUES ('29', '0');
INSERT INTO op_product_to_store VALUES ('30', '0');
INSERT INTO op_product_to_store VALUES ('31', '0');
INSERT INTO op_product_to_store VALUES ('33', '0');
INSERT INTO op_product_to_store VALUES ('35', '0');
INSERT INTO op_product_to_store VALUES ('36', '0');
INSERT INTO op_product_to_store VALUES ('40', '0');
INSERT INTO op_product_to_store VALUES ('41', '0');
INSERT INTO op_product_to_store VALUES ('42', '0');
INSERT INTO op_product_to_store VALUES ('43', '0');
INSERT INTO op_product_to_store VALUES ('44', '0');
INSERT INTO op_product_to_store VALUES ('45', '0');
INSERT INTO op_product_to_store VALUES ('46', '0');
INSERT INTO op_product_to_store VALUES ('47', '0');
INSERT INTO op_product_to_store VALUES ('48', '0');
INSERT INTO op_product_to_store VALUES ('49', '0');

-- ----------------------------
-- Table structure for `op_return`
-- ----------------------------
DROP TABLE IF EXISTS `op_return`;
CREATE TABLE `op_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL,
  `email` varchar(96) COLLATE utf8_bin NOT NULL,
  `telephone` varchar(32) COLLATE utf8_bin NOT NULL,
  `product` varchar(255) COLLATE utf8_bin NOT NULL,
  `model` varchar(64) COLLATE utf8_bin NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_bin,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_return
-- ----------------------------

-- ----------------------------
-- Table structure for `op_return_action`
-- ----------------------------
DROP TABLE IF EXISTS `op_return_action`;
CREATE TABLE `op_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_return_action
-- ----------------------------
INSERT INTO op_return_action VALUES ('1', '2', 'Refunded');
INSERT INTO op_return_action VALUES ('2', '2', 'Credit Issued');
INSERT INTO op_return_action VALUES ('3', '2', 'Replacement Sent');

-- ----------------------------
-- Table structure for `op_return_history`
-- ----------------------------
DROP TABLE IF EXISTS `op_return_history`;
CREATE TABLE `op_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_return_history
-- ----------------------------

-- ----------------------------
-- Table structure for `op_return_reason`
-- ----------------------------
DROP TABLE IF EXISTS `op_return_reason`;
CREATE TABLE `op_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_return_reason
-- ----------------------------
INSERT INTO op_return_reason VALUES ('1', '2', 'Dead On Arrival');
INSERT INTO op_return_reason VALUES ('2', '2', 'Received Wrong Item');
INSERT INTO op_return_reason VALUES ('3', '2', 'Order Error');
INSERT INTO op_return_reason VALUES ('4', '2', 'Faulty, please supply details');
INSERT INTO op_return_reason VALUES ('5', '2', 'Other, please supply details');

-- ----------------------------
-- Table structure for `op_return_status`
-- ----------------------------
DROP TABLE IF EXISTS `op_return_status`;
CREATE TABLE `op_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_return_status
-- ----------------------------
INSERT INTO op_return_status VALUES ('1', '2', 'Pending');
INSERT INTO op_return_status VALUES ('3', '2', 'Complete');
INSERT INTO op_return_status VALUES ('2', '2', 'Awaiting Products');

-- ----------------------------
-- Table structure for `op_review`
-- ----------------------------
DROP TABLE IF EXISTS `op_review`;
CREATE TABLE `op_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` text COLLATE utf8_bin NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_review
-- ----------------------------

-- ----------------------------
-- Table structure for `op_setting`
-- ----------------------------
DROP TABLE IF EXISTS `op_setting`;
CREATE TABLE `op_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) COLLATE utf8_bin NOT NULL,
  `key` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` text COLLATE utf8_bin NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2563 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_setting
-- ----------------------------
INSERT INTO op_setting VALUES ('1', '0', 'shipping', 'shipping_sort_order', 0x33, '0');
INSERT INTO op_setting VALUES ('2', '0', 'sub_total', 'sub_total_sort_order', 0x31, '0');
INSERT INTO op_setting VALUES ('3', '0', 'sub_total', 'sub_total_status', 0x31, '0');
INSERT INTO op_setting VALUES ('4', '0', 'tax', 'tax_status', 0x31, '0');
INSERT INTO op_setting VALUES ('5', '0', 'total', 'total_sort_order', 0x39, '0');
INSERT INTO op_setting VALUES ('6', '0', 'total', 'total_status', 0x31, '0');
INSERT INTO op_setting VALUES ('7', '0', 'tax', 'tax_sort_order', 0x35, '0');
INSERT INTO op_setting VALUES ('8', '0', 'free_checkout', 'free_checkout_sort_order', 0x31, '0');
INSERT INTO op_setting VALUES ('9', '0', 'cod', 'cod_sort_order', 0x35, '0');
INSERT INTO op_setting VALUES ('10', '0', 'cod', 'cod_total', 0x302E3031, '0');
INSERT INTO op_setting VALUES ('11', '0', 'cod', 'cod_order_status_id', 0x31, '0');
INSERT INTO op_setting VALUES ('12', '0', 'cod', 'cod_geo_zone_id', 0x30, '0');
INSERT INTO op_setting VALUES ('13', '0', 'cod', 'cod_status', 0x31, '0');
INSERT INTO op_setting VALUES ('14', '0', 'shipping', 'shipping_status', 0x31, '0');
INSERT INTO op_setting VALUES ('15', '0', 'shipping', 'shipping_estimator', 0x31, '0');
INSERT INTO op_setting VALUES ('27', '0', 'coupon', 'coupon_sort_order', 0x34, '0');
INSERT INTO op_setting VALUES ('28', '0', 'coupon', 'coupon_status', 0x31, '0');
INSERT INTO op_setting VALUES ('34', '0', 'flat', 'flat_sort_order', 0x31, '0');
INSERT INTO op_setting VALUES ('35', '0', 'flat', 'flat_status', 0x31, '0');
INSERT INTO op_setting VALUES ('36', '0', 'flat', 'flat_geo_zone_id', 0x30, '0');
INSERT INTO op_setting VALUES ('37', '0', 'flat', 'flat_tax_class_id', 0x39, '0');
INSERT INTO op_setting VALUES ('502', '0', 'category', 'category_module', 0x613A323A7B693A303B613A353A7B733A393A226C61796F75745F6964223B733A313A2233223B733A383A22706F736974696F6E223B733A31313A22636F6C756D6E5F6C656674223B733A353A22636F756E74223B733A313A2231223B733A363A22737461747573223B733A313A2231223B733A31303A22736F72745F6F72646572223B733A303A22223B7D693A313B613A353A7B733A393A226C61796F75745F6964223B733A313A2232223B733A383A22706F736974696F6E223B733A31313A22636F6C756D6E5F6C656674223B733A353A22636F756E74223B733A313A2231223B733A363A22737461747573223B733A313A2231223B733A31303A22736F72745F6F72646572223B733A303A22223B7D7D, '1');
INSERT INTO op_setting VALUES ('41', '0', 'flat', 'flat_cost', 0x352E3030, '0');
INSERT INTO op_setting VALUES ('42', '0', 'credit', 'credit_sort_order', 0x37, '0');
INSERT INTO op_setting VALUES ('43', '0', 'credit', 'credit_status', 0x31, '0');
INSERT INTO op_setting VALUES ('53', '0', 'reward', 'reward_sort_order', 0x32, '0');
INSERT INTO op_setting VALUES ('54', '0', 'reward', 'reward_status', 0x31, '0');
INSERT INTO op_setting VALUES ('56', '0', 'affiliate', 'affiliate_module', 0x613A313A7B693A303B613A343A7B733A393A226C61796F75745F6964223B733A323A223130223B733A383A22706F736974696F6E223B733A31323A22636F6C756D6E5F7269676874223B733A363A22737461747573223B733A313A2231223B733A31303A22736F72745F6F72646572223B733A313A2231223B7D7D, '1');
INSERT INTO op_setting VALUES ('60', '0', 'account', 'account_module', 0x613A313A7B693A303B613A343A7B733A393A226C61796F75745F6964223B733A313A2236223B733A383A22706F736974696F6E223B733A31323A22636F6C756D6E5F7269676874223B733A363A22737461747573223B733A313A2231223B733A31303A22736F72745F6F72646572223B733A313A2231223B7D7D, '1');
INSERT INTO op_setting VALUES ('93', '0', 'voucher', 'voucher_sort_order', 0x38, '0');
INSERT INTO op_setting VALUES ('94', '0', 'voucher', 'voucher_status', 0x31, '0');
INSERT INTO op_setting VALUES ('102', '0', 'free_checkout', 'free_checkout_status', 0x31, '0');
INSERT INTO op_setting VALUES ('103', '0', 'free_checkout', 'free_checkout_order_status_id', 0x31, '0');
INSERT INTO op_setting VALUES ('2553', '0', 'config', 'config_error_display', 0x31, '0');
INSERT INTO op_setting VALUES ('107', '0', 'slideshow', 'slideshow_module', 0x613A313A7B693A303B613A373A7B733A393A2262616E6E65725F6964223B733A313A2237223B733A353A227769647468223B733A333A22393830223B733A363A22686569676874223B733A333A22323830223B733A393A226C61796F75745F6964223B733A313A2231223B733A383A22706F736974696F6E223B733A31313A22636F6E74656E745F746F70223B733A363A22737461747573223B733A313A2231223B733A31303A22736F72745F6F72646572223B733A313A2231223B7D7D, '1');
INSERT INTO op_setting VALUES ('108', '0', 'banner', 'banner_module', 0x613A313A7B693A303B613A373A7B733A393A2262616E6E65725F6964223B733A313A2236223B733A353A227769647468223B733A333A22313832223B733A363A22686569676874223B733A333A22313832223B733A393A226C61796F75745F6964223B733A313A2233223B733A383A22706F736974696F6E223B733A31313A22636F6C756D6E5F6C656674223B733A363A22737461747573223B733A313A2231223B733A31303A22736F72745F6F72646572223B733A313A2233223B7D7D, '1');
INSERT INTO op_setting VALUES ('2552', '0', 'config', 'config_compression', 0x30, '0');
INSERT INTO op_setting VALUES ('2551', '0', 'config', 'config_encryption', 0x6231343463396337386532343439643331353230393836373032616266393433, '0');
INSERT INTO op_setting VALUES ('2550', '0', 'config', 'config_maintenance', 0x30, '0');
INSERT INTO op_setting VALUES ('2549', '0', 'config', 'config_seo_url', 0x30, '0');
INSERT INTO op_setting VALUES ('2548', '0', 'config', 'config_use_ssl', 0x30, '0');
INSERT INTO op_setting VALUES ('2547', '0', 'config', 'config_fraud_status_id', 0x37, '0');
INSERT INTO op_setting VALUES ('2546', '0', 'config', 'config_fraud_score', '', '0');
INSERT INTO op_setting VALUES ('2545', '0', 'config', 'config_fraud_key', '', '0');
INSERT INTO op_setting VALUES ('2544', '0', 'config', 'config_fraud_detection', 0x30, '0');
INSERT INTO op_setting VALUES ('2543', '0', 'config', 'config_alert_emails', '', '0');
INSERT INTO op_setting VALUES ('2541', '0', 'config', 'config_alert_mail', 0x30, '0');
INSERT INTO op_setting VALUES ('2542', '0', 'config', 'config_account_mail', 0x30, '0');
INSERT INTO op_setting VALUES ('2540', '0', 'config', 'config_smtp_timeout', 0x35, '0');
INSERT INTO op_setting VALUES ('2539', '0', 'config', 'config_smtp_port', 0x3235, '0');
INSERT INTO op_setting VALUES ('2538', '0', 'config', 'config_smtp_password', '', '0');
INSERT INTO op_setting VALUES ('2536', '0', 'config', 'config_smtp_host', '', '0');
INSERT INTO op_setting VALUES ('2537', '0', 'config', 'config_smtp_username', '', '0');
INSERT INTO op_setting VALUES ('2535', '0', 'config', 'config_mail_parameter', '', '0');
INSERT INTO op_setting VALUES ('2534', '0', 'config', 'config_mail_protocol', 0x6D61696C, '0');
INSERT INTO op_setting VALUES ('2533', '0', 'config', 'config_image_cart_height', 0x3437, '0');
INSERT INTO op_setting VALUES ('2532', '0', 'config', 'config_image_cart_width', 0x3437, '0');
INSERT INTO op_setting VALUES ('2531', '0', 'config', 'config_image_wishlist_height', 0x3437, '0');
INSERT INTO op_setting VALUES ('2530', '0', 'config', 'config_image_wishlist_width', 0x3437, '0');
INSERT INTO op_setting VALUES ('2529', '0', 'config', 'config_image_compare_height', 0x3930, '0');
INSERT INTO op_setting VALUES ('2528', '0', 'config', 'config_image_compare_width', 0x3930, '0');
INSERT INTO op_setting VALUES ('2527', '0', 'config', 'config_image_related_height', 0x3830, '0');
INSERT INTO op_setting VALUES ('2526', '0', 'config', 'config_image_related_width', 0x3830, '0');
INSERT INTO op_setting VALUES ('2525', '0', 'config', 'config_image_additional_height', 0x3734, '0');
INSERT INTO op_setting VALUES ('2524', '0', 'config', 'config_image_additional_width', 0x3734, '0');
INSERT INTO op_setting VALUES ('2523', '0', 'config', 'config_image_product_height', 0x313230, '0');
INSERT INTO op_setting VALUES ('2522', '0', 'config', 'config_image_product_width', 0x313230, '0');
INSERT INTO op_setting VALUES ('2521', '0', 'config', 'config_image_popup_height', 0x353030, '0');
INSERT INTO op_setting VALUES ('2520', '0', 'config', 'config_image_popup_width', 0x353030, '0');
INSERT INTO op_setting VALUES ('2519', '0', 'config', 'config_image_thumb_height', 0x323238, '0');
INSERT INTO op_setting VALUES ('2518', '0', 'config', 'config_image_thumb_width', 0x323238, '0');
INSERT INTO op_setting VALUES ('2517', '0', 'config', 'config_image_category_height', 0x313230, '0');
INSERT INTO op_setting VALUES ('2516', '0', 'config', 'config_image_category_width', 0x313230, '0');
INSERT INTO op_setting VALUES ('2515', '0', 'config', 'config_icon', 0x646174612F636172742E706E67, '0');
INSERT INTO op_setting VALUES ('2514', '0', 'config', 'config_logo', 0x646174612F6C6F676F2F6C6F676F2E706E67, '0');
INSERT INTO op_setting VALUES ('2513', '0', 'config', 'config_return_status_id', 0x32, '0');
INSERT INTO op_setting VALUES ('2512', '0', 'config', 'config_commission', 0x35, '0');
INSERT INTO op_setting VALUES ('2511', '0', 'config', 'config_affiliate_id', 0x30, '0');
INSERT INTO op_setting VALUES ('2510', '0', 'config', 'config_stock_status_id', 0x35, '0');
INSERT INTO op_setting VALUES ('2509', '0', 'config', 'config_stock_checkout', 0x30, '0');
INSERT INTO op_setting VALUES ('2508', '0', 'config', 'config_stock_warning', 0x30, '0');
INSERT INTO op_setting VALUES ('2507', '0', 'config', 'config_stock_display', 0x30, '0');
INSERT INTO op_setting VALUES ('2506', '0', 'config', 'config_complete_status_id', 0x35, '0');
INSERT INTO op_setting VALUES ('2505', '0', 'config', 'config_order_status_id', 0x31, '0');
INSERT INTO op_setting VALUES ('2504', '0', 'config', 'config_invoice_prefix', 0x494E562D323031322D3030, '0');
INSERT INTO op_setting VALUES ('2503', '0', 'config', 'config_order_edit', 0x313030, '0');
INSERT INTO op_setting VALUES ('2502', '0', 'config', 'config_checkout_id', 0x30, '0');
INSERT INTO op_setting VALUES ('2501', '0', 'config', 'config_guest_checkout', 0x31, '0');
INSERT INTO op_setting VALUES ('2500', '0', 'config', 'config_cart_weight', 0x31, '0');
INSERT INTO op_setting VALUES ('2499', '0', 'config', 'config_account_id', 0x30, '0');
INSERT INTO op_setting VALUES ('2498', '0', 'config', 'config_customer_price', 0x30, '0');
INSERT INTO op_setting VALUES ('2497', '0', 'config', 'config_customer_group_display', 0x613A313A7B693A303B733A313A2231223B7D, '1');
INSERT INTO op_setting VALUES ('2496', '0', 'config', 'config_customer_group_id', 0x31, '0');
INSERT INTO op_setting VALUES ('2495', '0', 'config', 'config_customer_online', 0x30, '0');
INSERT INTO op_setting VALUES ('2494', '0', 'config', 'config_tax_customer', 0x7368697070696E67, '0');
INSERT INTO op_setting VALUES ('2493', '0', 'config', 'config_tax_default', 0x7368697070696E67, '0');
INSERT INTO op_setting VALUES ('1244', '0', 'homelayout', 'homelayout_module', 0x613A313A7B693A313B613A353A7B733A31313A226465736372697074696F6E223B613A323A7B693A323B733A303A22223B693A313B733A303A22223B7D733A393A226C61796F75745F6964223B733A313A2231223B733A383A22706F736974696F6E223B733A31343A22636F6E74656E745F626F74746F6D223B733A363A22737461747573223B733A313A2231223B733A31303A22736F72745F6F72646572223B733A303A22223B7D7D, '1');
INSERT INTO op_setting VALUES ('2492', '0', 'config', 'config_vat', 0x30, '0');
INSERT INTO op_setting VALUES ('2491', '0', 'config', 'config_tax', 0x31, '0');
INSERT INTO op_setting VALUES ('2490', '0', 'config', 'config_voucher_max', 0x31303030, '0');
INSERT INTO op_setting VALUES ('2489', '0', 'config', 'config_voucher_min', 0x31, '0');
INSERT INTO op_setting VALUES ('2488', '0', 'config', 'config_upload_allowed', 0x6A70672C204A50472C206A7065672C206769662C20706E672C20747874, '0');
INSERT INTO op_setting VALUES ('2487', '0', 'config', 'config_download', 0x31, '0');
INSERT INTO op_setting VALUES ('2486', '0', 'config', 'config_review_status', 0x31, '0');
INSERT INTO op_setting VALUES ('2485', '0', 'config', 'config_product_count', 0x30, '0');
INSERT INTO op_setting VALUES ('2484', '0', 'config', 'config_admin_limit', 0x3230, '0');
INSERT INTO op_setting VALUES ('2483', '0', 'config', 'config_catalog_limit', 0x3135, '0');
INSERT INTO op_setting VALUES ('2482', '0', 'config', 'config_weight_class_id', 0x31, '0');
INSERT INTO op_setting VALUES ('2481', '0', 'config', 'config_length_class_id', 0x31, '0');
INSERT INTO op_setting VALUES ('2480', '0', 'config', 'config_currency_auto', 0x31, '0');
INSERT INTO op_setting VALUES ('2479', '0', 'config', 'config_currency', 0x555344, '0');
INSERT INTO op_setting VALUES ('2477', '0', 'config', 'config_language', 0x636E, '0');
INSERT INTO op_setting VALUES ('2478', '0', 'config', 'config_admin_language', 0x636E, '0');
INSERT INTO op_setting VALUES ('2476', '0', 'config', 'config_zone_id', 0x363839, '0');
INSERT INTO op_setting VALUES ('2475', '0', 'config', 'config_country_id', 0x3434, '0');
INSERT INTO op_setting VALUES ('2474', '0', 'config', 'config_layout_id', 0x34, '0');
INSERT INTO op_setting VALUES ('2473', '0', 'config', 'config_template', 0x64656661756C74, '0');
INSERT INTO op_setting VALUES ('2472', '0', 'config', 'config_meta_description', 0xE88081E4BABAE4BAA7E4B89AE7BD91, '0');
INSERT INTO op_setting VALUES ('2471', '0', 'config', 'config_title', 0xE88081E4BABAE4BAA7E4B89AE7BD91, '0');
INSERT INTO op_setting VALUES ('2470', '0', 'config', 'config_footer', 0x266C743B70207374796C653D2671756F743B746578742D616C69676E3A2063656E7465723B2671756F743B2667743B0D0A09436F70797269676874203F20323030362D3230313020E4B8ADE59BBDE88081E5B9B4E7BD9120E4BAAC20494350E5A4873035303234363331E58FB7266C743B2F702667743B0D0A266C743B70207374796C653D2671756F743B746578742D616C69676E3A2063656E7465723B2671756F743B2667743B0D0A09266C743B696D6720616C743D2671756F743B2671756F743B207372633D2671756F743B687474703A2F2F3132372E302E302E313A3130302F6C616F72656E2F696D6167652F646174612F6164732F666F6F7465722E6A70672671756F743B207374796C653D2671756F743B77696474683A2035343770783B206865696768743A20363370783B2671756F743B202F2667743B266C743B2F702667743B0D0A266C743B70207374796C653D2671756F743B746578742D616C69676E3A2063656E7465723B2671756F743B2667743B0D0A09266C743B666F6E7420636F6C6F723D2671756F743B236666303030302671756F743B2667743BE5A3B0E6988EEFBC9AE88081E5B9B4E4BAA7E4B89AE7BD91E5B7B2E59CA8E59BBDE5AEB6E5B7A5E59586E983A8E997A8E5A487E6A188EFBC8CE8AFB7E585B6E4BB96E7BD91E7AB9920E4B88DE8A681E5868DE4BDBFE794A8E69CACE7AB99E4B8ADE69687E5908DE7A7B0EFBC8CE590A6E58899E68891E4BBACE5B086E4BBA5E6B395E5BE8BE7BBB4E69D83EFBC81266C743B2F666F6E742667743B266C743B2F702667743B0D0A, '0');
INSERT INTO op_setting VALUES ('2468', '0', 'config', 'config_fax', '', '0');
INSERT INTO op_setting VALUES ('2469', '0', 'config', 'config_links', 0x266C743B702667743B0D0A09266C743B6120687265663D2671756F743B687474703A2F2F7777772E6F6C646368696C642E6E65742F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B266C743B752667743BE88081E9A1BDE7ABA5266C743B2F752667743B266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E6C616F6E69616E6E65742E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE99995E8A5BFE88081E5B9B4E7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E65303935312E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20746578742D3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE5AE81E5A48FE783ADE7BABF266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E786978696D752E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE8A5BFE8A5BFE69CA8266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E796E65742E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE58C97E99D92E7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E68616E677A686F752E636F6D2E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE69DADE5B79EE7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E6E6F727468656173742E636F6D2E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE4B89CE58C97E7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E636170772E636F6D2E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE4B8ADE59BBDE88081E9BE84E5AEA3E4BCA0E7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E6A666461696C792E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE8A7A3E694BEE7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E35796D792E636F6D2E636E2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20746578742D3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE58C97E4BAACE58CBBE88DAFE4BFA1E681AFE7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E6C616F6C696E672E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20746578743A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE88081E9BE84E7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E636E6A6B6A7A2E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743B266C743B666F6E7420636F6C6F723D2671756F743B236666303030302671756F743B2667743BE581A5E5BAB7E8AEB2E5BAA7E7BD91266C743B2F666F6E742667743B266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E6368696E612E636F6D2F7A685F636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE4B8ADE58D8EE7BD91266C743B2F752667743B20266C743B2F612667743B266C743B752667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E62616973686974616E672E636F6D2F2671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B7C266C743B2F612667743B266C743B2F752667743B7C20266C743B6120687265663D2671756F743B687474703A2F2F7777772E62616973686974616E672E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B266C743B752667743BE799BEE4B896E5A082266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E6E666368696E613131342E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B266C743B752667743BE5889BE4B89AE9A1B9E79BAE266C743B2F752667743B20266C743B2F612667743B7C20266C743B6120687265663D2671756F743B687474703A2F2F6A7373672E6F72672F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20746578743A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B266C743B752667743BE98791E889B2E697B6E58589266C743B2F752667743B266C743B2F612667743B207C20266C743B6120687265663D2671756F743B687474703A2F2F6C7478632E6868752E6564752E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B266C743B752667743BE88081E5B9B4E4B98BE7AA97266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E667573686F7568652E6E65742F7765622F736974652F6A69616E6A69652E6173702671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE7A68FE5AFBFE88081E5B9B4E794A8E59381E7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F6D65642E636E6564752E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE58CBBE5ADA6E69599E882B2E7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E776F726C64736F7061692E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE59BBDE99985E6909CE68B8DE7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E787977712E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE5A495E998B3E6999AE68385266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F6C6C772E6C69736875692E676F762E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE4B8BDE6B0B4E88081E9BE84E7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E6F6C646167652E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20746578742D3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE88081E5B9B4E4BFA1E681AFE7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F626C6F672E6368656C6465722E636F6D2E636E2F75736572312F6C616F6E69616E7A6869796F752F696E6465782E68746D6C2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743B266C743B666F6E7420636F6C6F723D2671756F743B236666303030302671756F743B2667743BE88081E5B9B4E4B98BE58F8B266C743B2F666F6E742667743B266C743B2F752667743B20266C743B2F612667743B7C20266C743B6120687265663D2671756F743B687474703A2F2F7777772E63706972632E6F72672E636E2F696E6465782E6173702671756F743B207374796C653D2671756F743B746578742D3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B266C743B752667743BE4B8ADE59BBDE4BABAE58FA3E4BFA1E681AFE7BD91266C743B2F752667743B20266C743B2F612667743B7C20266C743B6120687265663D2671756F743B687474703A2F2F7777772E636E63612E6F72672E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B266C743B752667743BE585A8E59BBDE88081E9BE84E5A794266C743B2F752667743B20266C743B2F612667743B7C20266C743B6120687265663D2671756F743B687474703A2F2F7777772E6C616F63756875692E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B266C743B752667743BE6B2B3E58C97E88081E5B9B4E7BD91266C743B2F752667743B20266C743B2F612667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E35796D792E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333332671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B7C20266C743B752667743BE58C97E4BAACE696B0E789B9E88DAF266C743B2F752667743B266C743B2F612667743B266C743B6120687265663D2671756F743B687474703A2F2F7777772E35796D792E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E6C616F746F756C616F7461692E636F6D2E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE88081E5A4B4E88081E5A4AAE7BD91266C743B2F752667743B266C743B2F612667743B207C20266C743B6120687265663D2671756F743B687474703A2F2F7777772E78696E79616F3132302E6E65742E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B266C743B752667743BE58C97E4BAACE696B0E789B9E88DAF20266C743B2F752667743B266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E6D7975736173686F702E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE68891E79A84E7BE8EE59BBDE59586E5BA97266C743B2F752667743B266C743B2F612667743B207C266C743B6120687265663D2671756F743B687474703A2F2F6A6B622E6532332E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE5BD93E4BBA3E581A5E5BAB7E68AA520266C743B2F752667743B266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E35316D616769636A61636B2E636E2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743B4D616769634A61636BE7BD91E7BB9C266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E636E6F79772E636F6D2F2671756F743B207374796C653D2671756F743B434F4C4F523A20233333333333333B20544558542D4445434F524154494F4E3A206E6F6E652671756F743B207461726765743D2671756F743B5F626C616E6B2671756F743B2667743B20266C743B752667743BE4B8ADE58D8EE993B6E9BE84E7BD91266C743B2F752667743B20266C743B2F612667743B7C266C743B6120687265663D2671756F743B687474703A2F2F7777772E79703131342E6E65742E636E2671756F743B2667743B20266C743B752667743BE88DAFE59381E69FA5E8AFA2E7BD91266C743B2F752667743B266C743B2F612667743B266C743B2F702667743B0D0A, '0');
INSERT INTO op_setting VALUES ('2467', '0', 'config', 'config_telephone', 0x303735353237383134303535, '0');
INSERT INTO op_setting VALUES ('2465', '0', 'config', 'config_cms', 0xE88081E4BABAE999A20D0AE68B9BE59586E5BC95E8B584200D0AE4BBA3E79086E58AA0E79B9F0D0AE585BBE7949FE799BEE7A791200D0AE88081E5B9B4E69785E6B8B8200D0AE88081E5B9B4E5A8B1E4B990200D0AE8AEBEE5A487E98787E8B4AD200D0AE88081E5B9B4E98791E89E8D200D0AE4BAA7E4B89AE8B584E8AEAF200D0AE694BFE7AD96E6B395E8A784200D0AE68AA4E79086E59FB9E8AEAD20, '0');
INSERT INTO op_setting VALUES ('2466', '0', 'config', 'config_email', 0x61646D696E4061646D696E2E636F6D, '0');
INSERT INTO op_setting VALUES ('2464', '0', 'config', 'config_address', 0xE6B7B1E59CB3E5B882787878E58CBA787878E5A4A7E58EA641E5BAA7333133, '0');
INSERT INTO op_setting VALUES ('2463', '0', 'config', 'config_owner', 0x61646D696E, '0');
INSERT INTO op_setting VALUES ('2462', '0', 'config', 'config_name', 0xE88081E4BABAE4BAA7E4B89AE7BD91, '0');
INSERT INTO op_setting VALUES ('2554', '0', 'config', 'config_error_log', 0x30, '0');
INSERT INTO op_setting VALUES ('2555', '0', 'config', 'config_error_filename', 0x6572726F722E747874, '0');
INSERT INTO op_setting VALUES ('2556', '0', 'config', 'config_google_analytics', '', '0');
INSERT INTO op_setting VALUES ('2562', '0', 'welcome', 'welcome_module', 0x613A313A7B693A313B613A353A7B733A31313A226465736372697074696F6E223B613A313A7B693A323B733A33393A22266C743B702667743B0D0A09E8BF99E698AFE6B58BE8AF95E79A84266C743B2F702667743B0D0A223B7D733A393A226C61796F75745F6964223B733A323A223132223B733A383A22706F736974696F6E223B733A31313A22636F6E74656E745F746F70223B733A363A22737461747573223B733A313A2231223B733A31303A22736F72745F6F72646572223B733A303A22223B7D7D, '1');

-- ----------------------------
-- Table structure for `op_stock_status`
-- ----------------------------
DROP TABLE IF EXISTS `op_stock_status`;
CREATE TABLE `op_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_stock_status
-- ----------------------------
INSERT INTO op_stock_status VALUES ('7', '2', 'In Stock');
INSERT INTO op_stock_status VALUES ('8', '2', 'Pre-Order');
INSERT INTO op_stock_status VALUES ('5', '2', 'Out Of Stock');
INSERT INTO op_stock_status VALUES ('6', '2', '2 - 3 Days');

-- ----------------------------
-- Table structure for `op_store`
-- ----------------------------
DROP TABLE IF EXISTS `op_store`;
CREATE TABLE `op_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `ssl` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_store
-- ----------------------------

-- ----------------------------
-- Table structure for `op_tax_class`
-- ----------------------------
DROP TABLE IF EXISTS `op_tax_class`;
CREATE TABLE `op_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_tax_class
-- ----------------------------
INSERT INTO op_tax_class VALUES ('9', 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2011-09-23 14:07:50');
INSERT INTO op_tax_class VALUES ('10', 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- ----------------------------
-- Table structure for `op_tax_rate`
-- ----------------------------
DROP TABLE IF EXISTS `op_tax_rate`;
CREATE TABLE `op_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_tax_rate
-- ----------------------------
INSERT INTO op_tax_rate VALUES ('86', '3', 'VAT (17.5%)', '17.5000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29');
INSERT INTO op_tax_rate VALUES ('87', '3', 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- ----------------------------
-- Table structure for `op_tax_rate_to_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `op_tax_rate_to_customer_group`;
CREATE TABLE `op_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_tax_rate_to_customer_group
-- ----------------------------
INSERT INTO op_tax_rate_to_customer_group VALUES ('86', '1');
INSERT INTO op_tax_rate_to_customer_group VALUES ('87', '1');

-- ----------------------------
-- Table structure for `op_tax_rule`
-- ----------------------------
DROP TABLE IF EXISTS `op_tax_rule`;
CREATE TABLE `op_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) COLLATE utf8_bin NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_tax_rule
-- ----------------------------
INSERT INTO op_tax_rule VALUES ('121', '10', '86', 'payment', '1');
INSERT INTO op_tax_rule VALUES ('120', '10', '87', 'store', '0');
INSERT INTO op_tax_rule VALUES ('128', '9', '86', 'shipping', '1');
INSERT INTO op_tax_rule VALUES ('127', '9', '87', 'shipping', '2');

-- ----------------------------
-- Table structure for `op_url_alias`
-- ----------------------------
DROP TABLE IF EXISTS `op_url_alias`;
CREATE TABLE `op_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) COLLATE utf8_bin NOT NULL,
  `keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM AUTO_INCREMENT=788 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_url_alias
-- ----------------------------
INSERT INTO op_url_alias VALUES ('704', 'product_id=48', 'ipod_classic');
INSERT INTO op_url_alias VALUES ('782', 'category_id=20', 'desktops');
INSERT INTO op_url_alias VALUES ('783', 'category_id=26', 'pc');
INSERT INTO op_url_alias VALUES ('784', 'category_id=27', 'mac');
INSERT INTO op_url_alias VALUES ('730', 'manufacturer_id=8', 'apple');
INSERT INTO op_url_alias VALUES ('777', 'information_id=4', 'about_us');
INSERT INTO op_url_alias VALUES ('779', 'product_id=42', 'test');
INSERT INTO op_url_alias VALUES ('778', 'news_id=1', 'fdsafaf');
INSERT INTO op_url_alias VALUES ('786', 'news_id=3', 's');
INSERT INTO op_url_alias VALUES ('787', 'news_id=20', 'test');

-- ----------------------------
-- Table structure for `op_user`
-- ----------------------------
DROP TABLE IF EXISTS `op_user`;
CREATE TABLE `op_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `salt` varchar(9) COLLATE utf8_bin NOT NULL DEFAULT '',
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(32) COLLATE utf8_bin NOT NULL,
  `ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_user
-- ----------------------------
INSERT INTO op_user VALUES ('1', '1', 'admin', '46b917974a32276c50b0282a54cd61e7b6d5e639', '73275a2ad', '', '', 'admin@admin.com', '', '127.0.0.1', '1', '2013-01-09 21:17:01');

-- ----------------------------
-- Table structure for `op_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `op_user_group`;
CREATE TABLE `op_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `permission` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_user_group
-- ----------------------------
INSERT INTO op_user_group VALUES ('1', 'Top Administrator', 0x613A323A7B733A363A22616363657373223B613A3132353A7B693A303B733A31373A22636174616C6F672F617474726962757465223B693A313B733A32333A22636174616C6F672F6174747269627574655F67726F7570223B693A323B733A31363A22636174616C6F672F63617465676F7279223B693A333B733A31363A22636174616C6F672F646F776E6C6F6164223B693A343B733A31393A22636174616C6F672F696E666F726D6174696F6E223B693A353B733A32303A22636174616C6F672F6D616E756661637475726572223B693A363B733A31323A22636174616C6F672F6E657773223B693A373B733A31343A22636174616C6F672F6F7074696F6E223B693A383B733A31323A22636174616C6F672F706F7374223B693A393B733A31353A22636174616C6F672F70726F64756374223B693A31303B733A31343A22636174616C6F672F726576696577223B693A31313B733A31343A22636F6D6D6F6E2F646979686F6D65223B693A31323B733A31383A22636F6D6D6F6E2F66696C656D616E61676572223B693A31333B733A31333A2264657369676E2F62616E6E6572223B693A31343B733A31333A2264657369676E2F6C61796F7574223B693A31353B733A31343A22657874656E73696F6E2F66656564223B693A31363B733A31363A22657874656E73696F6E2F6D6F64756C65223B693A31373B733A31373A22657874656E73696F6E2F7061796D656E74223B693A31383B733A31383A22657874656E73696F6E2F7368697070696E67223B693A31393B733A31353A22657874656E73696F6E2F746F74616C223B693A32303B733A31363A22666565642F676F6F676C655F62617365223B693A32313B733A31393A22666565642F676F6F676C655F736974656D6170223B693A32323B733A32303A226C6F63616C69736174696F6E2F636F756E747279223B693A32333B733A32313A226C6F63616C69736174696F6E2F63757272656E6379223B693A32343B733A32313A226C6F63616C69736174696F6E2F67656F5F7A6F6E65223B693A32353B733A32313A226C6F63616C69736174696F6E2F6C616E6775616765223B693A32363B733A32353A226C6F63616C69736174696F6E2F6C656E6774685F636C617373223B693A32373B733A32353A226C6F63616C69736174696F6E2F6F726465725F737461747573223B693A32383B733A32363A226C6F63616C69736174696F6E2F72657475726E5F616374696F6E223B693A32393B733A32363A226C6F63616C69736174696F6E2F72657475726E5F726561736F6E223B693A33303B733A32363A226C6F63616C69736174696F6E2F72657475726E5F737461747573223B693A33313B733A32353A226C6F63616C69736174696F6E2F73746F636B5F737461747573223B693A33323B733A32323A226C6F63616C69736174696F6E2F7461785F636C617373223B693A33333B733A32313A226C6F63616C69736174696F6E2F7461785F72617465223B693A33343B733A32353A226C6F63616C69736174696F6E2F7765696768745F636C617373223B693A33353B733A31373A226C6F63616C69736174696F6E2F7A6F6E65223B693A33363B733A31343A226D6F64756C652F6163636F756E74223B693A33373B733A31363A226D6F64756C652F616666696C69617465223B693A33383B733A31333A226D6F64756C652F62616E6E6572223B693A33393B733A31373A226D6F64756C652F6265737473656C6C6572223B693A34303B733A31353A226D6F64756C652F6361726F7573656C223B693A34313B733A31353A226D6F64756C652F63617465676F7279223B693A34323B733A31353A226D6F64756C652F6665617475726564223B693A34333B733A31383A226D6F64756C652F676F6F676C655F74616C6B223B693A34343B733A31373A226D6F64756C652F686F6D656C61796F7574223B693A34353B733A31383A226D6F64756C652F696E666F726D6174696F6E223B693A34363B733A31333A226D6F64756C652F6C6174657374223B693A34373B733A31313A226D6F64756C652F6E657773223B693A34383B733A31363A226D6F64756C652F736C69646573686F77223B693A34393B733A31343A226D6F64756C652F7370656369616C223B693A35303B733A31323A226D6F64756C652F73746F7265223B693A35313B733A31343A226D6F64756C652F77656C636F6D65223B693A35323B733A32343A227061796D656E742F617574686F72697A656E65745F61696D223B693A35333B733A32313A227061796D656E742F62616E6B5F7472616E73666572223B693A35343B733A31343A227061796D656E742F636865717565223B693A35353B733A31313A227061796D656E742F636F64223B693A35363B733A32313A227061796D656E742F667265655F636865636B6F7574223B693A35373B733A31343A227061796D656E742F6C6971706179223B693A35383B733A32303A227061796D656E742F6D6F6E6579626F6F6B657273223B693A35393B733A31343A227061796D656E742F6E6F63686578223B693A36303B733A31353A227061796D656E742F7061796D617465223B693A36313B733A31363A227061796D656E742F706179706F696E74223B693A36323B733A31333A227061796D656E742F7061797A61223B693A36333B733A32363A227061796D656E742F70657270657475616C5F7061796D656E7473223B693A36343B733A31343A227061796D656E742F70705F70726F223B693A36353B733A31373A227061796D656E742F70705F70726F5F756B223B693A36363B733A31393A227061796D656E742F70705F7374616E64617264223B693A36373B733A31353A227061796D656E742F73616765706179223B693A36383B733A32323A227061796D656E742F736167657061795F646972656374223B693A36393B733A31383A227061796D656E742F736167657061795F7573223B693A37303B733A31393A227061796D656E742F74776F636865636B6F7574223B693A37313B733A32383A227061796D656E742F7765625F7061796D656E745F736F667477617265223B693A37323B733A31363A227061796D656E742F776F726C64706179223B693A37333B733A32373A227265706F72742F616666696C696174655F636F6D6D697373696F6E223B693A37343B733A32323A227265706F72742F637573746F6D65725F637265646974223B693A37353B733A32323A227265706F72742F637573746F6D65725F6F6E6C696E65223B693A37363B733A32313A227265706F72742F637573746F6D65725F6F72646572223B693A37373B733A32323A227265706F72742F637573746F6D65725F726577617264223B693A37383B733A32343A227265706F72742F70726F647563745F707572636861736564223B693A37393B733A32313A227265706F72742F70726F647563745F766965776564223B693A38303B733A31383A227265706F72742F73616C655F636F75706F6E223B693A38313B733A31373A227265706F72742F73616C655F6F72646572223B693A38323B733A31383A227265706F72742F73616C655F72657475726E223B693A38333B733A32303A227265706F72742F73616C655F7368697070696E67223B693A38343B733A31353A227265706F72742F73616C655F746178223B693A38353B733A31343A2273616C652F616666696C69617465223B693A38363B733A31323A2273616C652F636F6E74616374223B693A38373B733A31313A2273616C652F636F75706F6E223B693A38383B733A31333A2273616C652F637573746F6D6572223B693A38393B733A32333A2273616C652F637573746F6D65725F626C61636B6C697374223B693A39303B733A31393A2273616C652F637573746F6D65725F67726F7570223B693A39313B733A31303A2273616C652F6F72646572223B693A39323B733A31313A2273616C652F72657475726E223B693A39333B733A31323A2273616C652F766F7563686572223B693A39343B733A31383A2273616C652F766F75636865725F7468656D65223B693A39353B733A31353A2273657474696E672F73657474696E67223B693A39363B733A31333A2273657474696E672F73746F7265223B693A39373B733A31363A227368697070696E672F617573706F7374223B693A39383B733A31373A227368697070696E672F636974796C696E6B223B693A39393B733A31343A227368697070696E672F6665646578223B693A3130303B733A31333A227368697070696E672F666C6174223B693A3130313B733A31333A227368697070696E672F66726565223B693A3130323B733A31333A227368697070696E672F6974656D223B693A3130333B733A32333A227368697070696E672F70617263656C666F7263655F3438223B693A3130343B733A31353A227368697070696E672F7069636B7570223B693A3130353B733A31393A227368697070696E672F726F79616C5F6D61696C223B693A3130363B733A31323A227368697070696E672F757073223B693A3130373B733A31333A227368697070696E672F75737073223B693A3130383B733A31353A227368697070696E672F776569676874223B693A3130393B733A31313A22746F6F6C2F6261636B7570223B693A3131303B733A31343A22746F6F6C2F6572726F725F6C6F67223B693A3131313B733A31323A22746F74616C2F636F75706F6E223B693A3131323B733A31323A22746F74616C2F637265646974223B693A3131333B733A31343A22746F74616C2F68616E646C696E67223B693A3131343B733A31363A22746F74616C2F6B6C61726E615F666565223B693A3131353B733A31393A22746F74616C2F6C6F775F6F726465725F666565223B693A3131363B733A31323A22746F74616C2F726577617264223B693A3131373B733A31343A22746F74616C2F7368697070696E67223B693A3131383B733A31353A22746F74616C2F7375625F746F74616C223B693A3131393B733A393A22746F74616C2F746178223B693A3132303B733A31313A22746F74616C2F746F74616C223B693A3132313B733A31333A22746F74616C2F766F7563686572223B693A3132323B733A393A22757365722F75736572223B693A3132333B733A32303A22757365722F757365725F7065726D697373696F6E223B693A3132343B733A31343A226D6F64756C652F77656C636F6D65223B7D733A363A226D6F64696679223B613A3132353A7B693A303B733A31373A22636174616C6F672F617474726962757465223B693A313B733A32333A22636174616C6F672F6174747269627574655F67726F7570223B693A323B733A31363A22636174616C6F672F63617465676F7279223B693A333B733A31363A22636174616C6F672F646F776E6C6F6164223B693A343B733A31393A22636174616C6F672F696E666F726D6174696F6E223B693A353B733A32303A22636174616C6F672F6D616E756661637475726572223B693A363B733A31323A22636174616C6F672F6E657773223B693A373B733A31343A22636174616C6F672F6F7074696F6E223B693A383B733A31323A22636174616C6F672F706F7374223B693A393B733A31353A22636174616C6F672F70726F64756374223B693A31303B733A31343A22636174616C6F672F726576696577223B693A31313B733A31343A22636F6D6D6F6E2F646979686F6D65223B693A31323B733A31383A22636F6D6D6F6E2F66696C656D616E61676572223B693A31333B733A31333A2264657369676E2F62616E6E6572223B693A31343B733A31333A2264657369676E2F6C61796F7574223B693A31353B733A31343A22657874656E73696F6E2F66656564223B693A31363B733A31363A22657874656E73696F6E2F6D6F64756C65223B693A31373B733A31373A22657874656E73696F6E2F7061796D656E74223B693A31383B733A31383A22657874656E73696F6E2F7368697070696E67223B693A31393B733A31353A22657874656E73696F6E2F746F74616C223B693A32303B733A31363A22666565642F676F6F676C655F62617365223B693A32313B733A31393A22666565642F676F6F676C655F736974656D6170223B693A32323B733A32303A226C6F63616C69736174696F6E2F636F756E747279223B693A32333B733A32313A226C6F63616C69736174696F6E2F63757272656E6379223B693A32343B733A32313A226C6F63616C69736174696F6E2F67656F5F7A6F6E65223B693A32353B733A32313A226C6F63616C69736174696F6E2F6C616E6775616765223B693A32363B733A32353A226C6F63616C69736174696F6E2F6C656E6774685F636C617373223B693A32373B733A32353A226C6F63616C69736174696F6E2F6F726465725F737461747573223B693A32383B733A32363A226C6F63616C69736174696F6E2F72657475726E5F616374696F6E223B693A32393B733A32363A226C6F63616C69736174696F6E2F72657475726E5F726561736F6E223B693A33303B733A32363A226C6F63616C69736174696F6E2F72657475726E5F737461747573223B693A33313B733A32353A226C6F63616C69736174696F6E2F73746F636B5F737461747573223B693A33323B733A32323A226C6F63616C69736174696F6E2F7461785F636C617373223B693A33333B733A32313A226C6F63616C69736174696F6E2F7461785F72617465223B693A33343B733A32353A226C6F63616C69736174696F6E2F7765696768745F636C617373223B693A33353B733A31373A226C6F63616C69736174696F6E2F7A6F6E65223B693A33363B733A31343A226D6F64756C652F6163636F756E74223B693A33373B733A31363A226D6F64756C652F616666696C69617465223B693A33383B733A31333A226D6F64756C652F62616E6E6572223B693A33393B733A31373A226D6F64756C652F6265737473656C6C6572223B693A34303B733A31353A226D6F64756C652F6361726F7573656C223B693A34313B733A31353A226D6F64756C652F63617465676F7279223B693A34323B733A31353A226D6F64756C652F6665617475726564223B693A34333B733A31383A226D6F64756C652F676F6F676C655F74616C6B223B693A34343B733A31373A226D6F64756C652F686F6D656C61796F7574223B693A34353B733A31383A226D6F64756C652F696E666F726D6174696F6E223B693A34363B733A31333A226D6F64756C652F6C6174657374223B693A34373B733A31313A226D6F64756C652F6E657773223B693A34383B733A31363A226D6F64756C652F736C69646573686F77223B693A34393B733A31343A226D6F64756C652F7370656369616C223B693A35303B733A31323A226D6F64756C652F73746F7265223B693A35313B733A31343A226D6F64756C652F77656C636F6D65223B693A35323B733A32343A227061796D656E742F617574686F72697A656E65745F61696D223B693A35333B733A32313A227061796D656E742F62616E6B5F7472616E73666572223B693A35343B733A31343A227061796D656E742F636865717565223B693A35353B733A31313A227061796D656E742F636F64223B693A35363B733A32313A227061796D656E742F667265655F636865636B6F7574223B693A35373B733A31343A227061796D656E742F6C6971706179223B693A35383B733A32303A227061796D656E742F6D6F6E6579626F6F6B657273223B693A35393B733A31343A227061796D656E742F6E6F63686578223B693A36303B733A31353A227061796D656E742F7061796D617465223B693A36313B733A31363A227061796D656E742F706179706F696E74223B693A36323B733A31333A227061796D656E742F7061797A61223B693A36333B733A32363A227061796D656E742F70657270657475616C5F7061796D656E7473223B693A36343B733A31343A227061796D656E742F70705F70726F223B693A36353B733A31373A227061796D656E742F70705F70726F5F756B223B693A36363B733A31393A227061796D656E742F70705F7374616E64617264223B693A36373B733A31353A227061796D656E742F73616765706179223B693A36383B733A32323A227061796D656E742F736167657061795F646972656374223B693A36393B733A31383A227061796D656E742F736167657061795F7573223B693A37303B733A31393A227061796D656E742F74776F636865636B6F7574223B693A37313B733A32383A227061796D656E742F7765625F7061796D656E745F736F667477617265223B693A37323B733A31363A227061796D656E742F776F726C64706179223B693A37333B733A32373A227265706F72742F616666696C696174655F636F6D6D697373696F6E223B693A37343B733A32323A227265706F72742F637573746F6D65725F637265646974223B693A37353B733A32323A227265706F72742F637573746F6D65725F6F6E6C696E65223B693A37363B733A32313A227265706F72742F637573746F6D65725F6F72646572223B693A37373B733A32323A227265706F72742F637573746F6D65725F726577617264223B693A37383B733A32343A227265706F72742F70726F647563745F707572636861736564223B693A37393B733A32313A227265706F72742F70726F647563745F766965776564223B693A38303B733A31383A227265706F72742F73616C655F636F75706F6E223B693A38313B733A31373A227265706F72742F73616C655F6F72646572223B693A38323B733A31383A227265706F72742F73616C655F72657475726E223B693A38333B733A32303A227265706F72742F73616C655F7368697070696E67223B693A38343B733A31353A227265706F72742F73616C655F746178223B693A38353B733A31343A2273616C652F616666696C69617465223B693A38363B733A31323A2273616C652F636F6E74616374223B693A38373B733A31313A2273616C652F636F75706F6E223B693A38383B733A31333A2273616C652F637573746F6D6572223B693A38393B733A32333A2273616C652F637573746F6D65725F626C61636B6C697374223B693A39303B733A31393A2273616C652F637573746F6D65725F67726F7570223B693A39313B733A31303A2273616C652F6F72646572223B693A39323B733A31313A2273616C652F72657475726E223B693A39333B733A31323A2273616C652F766F7563686572223B693A39343B733A31383A2273616C652F766F75636865725F7468656D65223B693A39353B733A31353A2273657474696E672F73657474696E67223B693A39363B733A31333A2273657474696E672F73746F7265223B693A39373B733A31363A227368697070696E672F617573706F7374223B693A39383B733A31373A227368697070696E672F636974796C696E6B223B693A39393B733A31343A227368697070696E672F6665646578223B693A3130303B733A31333A227368697070696E672F666C6174223B693A3130313B733A31333A227368697070696E672F66726565223B693A3130323B733A31333A227368697070696E672F6974656D223B693A3130333B733A32333A227368697070696E672F70617263656C666F7263655F3438223B693A3130343B733A31353A227368697070696E672F7069636B7570223B693A3130353B733A31393A227368697070696E672F726F79616C5F6D61696C223B693A3130363B733A31323A227368697070696E672F757073223B693A3130373B733A31333A227368697070696E672F75737073223B693A3130383B733A31353A227368697070696E672F776569676874223B693A3130393B733A31313A22746F6F6C2F6261636B7570223B693A3131303B733A31343A22746F6F6C2F6572726F725F6C6F67223B693A3131313B733A31323A22746F74616C2F636F75706F6E223B693A3131323B733A31323A22746F74616C2F637265646974223B693A3131333B733A31343A22746F74616C2F68616E646C696E67223B693A3131343B733A31363A22746F74616C2F6B6C61726E615F666565223B693A3131353B733A31393A22746F74616C2F6C6F775F6F726465725F666565223B693A3131363B733A31323A22746F74616C2F726577617264223B693A3131373B733A31343A22746F74616C2F7368697070696E67223B693A3131383B733A31353A22746F74616C2F7375625F746F74616C223B693A3131393B733A393A22746F74616C2F746178223B693A3132303B733A31313A22746F74616C2F746F74616C223B693A3132313B733A31333A22746F74616C2F766F7563686572223B693A3132323B733A393A22757365722F75736572223B693A3132333B733A32303A22757365722F757365725F7065726D697373696F6E223B693A3132343B733A31343A226D6F64756C652F77656C636F6D65223B7D7D);
INSERT INTO op_user_group VALUES ('10', 'Demonstration', 0x613A323A7B733A363A22616363657373223B613A3132343A7B693A303B733A31373A22636174616C6F672F617474726962757465223B693A313B733A32333A22636174616C6F672F6174747269627574655F67726F7570223B693A323B733A31363A22636174616C6F672F63617465676F7279223B693A333B733A31363A22636174616C6F672F646F776E6C6F6164223B693A343B733A31393A22636174616C6F672F696E666F726D6174696F6E223B693A353B733A32303A22636174616C6F672F6D616E756661637475726572223B693A363B733A31323A22636174616C6F672F6E657773223B693A373B733A31343A22636174616C6F672F6F7074696F6E223B693A383B733A31323A22636174616C6F672F706F7374223B693A393B733A31353A22636174616C6F672F70726F64756374223B693A31303B733A31343A22636174616C6F672F726576696577223B693A31313B733A31343A22636F6D6D6F6E2F646979686F6D65223B693A31323B733A31383A22636F6D6D6F6E2F66696C656D616E61676572223B693A31333B733A31333A2264657369676E2F62616E6E6572223B693A31343B733A31333A2264657369676E2F6C61796F7574223B693A31353B733A31343A22657874656E73696F6E2F66656564223B693A31363B733A31363A22657874656E73696F6E2F6D6F64756C65223B693A31373B733A31373A22657874656E73696F6E2F7061796D656E74223B693A31383B733A31383A22657874656E73696F6E2F7368697070696E67223B693A31393B733A31353A22657874656E73696F6E2F746F74616C223B693A32303B733A31363A22666565642F676F6F676C655F62617365223B693A32313B733A31393A22666565642F676F6F676C655F736974656D6170223B693A32323B733A32303A226C6F63616C69736174696F6E2F636F756E747279223B693A32333B733A32313A226C6F63616C69736174696F6E2F63757272656E6379223B693A32343B733A32313A226C6F63616C69736174696F6E2F67656F5F7A6F6E65223B693A32353B733A32313A226C6F63616C69736174696F6E2F6C616E6775616765223B693A32363B733A32353A226C6F63616C69736174696F6E2F6C656E6774685F636C617373223B693A32373B733A32353A226C6F63616C69736174696F6E2F6F726465725F737461747573223B693A32383B733A32363A226C6F63616C69736174696F6E2F72657475726E5F616374696F6E223B693A32393B733A32363A226C6F63616C69736174696F6E2F72657475726E5F726561736F6E223B693A33303B733A32363A226C6F63616C69736174696F6E2F72657475726E5F737461747573223B693A33313B733A32353A226C6F63616C69736174696F6E2F73746F636B5F737461747573223B693A33323B733A32323A226C6F63616C69736174696F6E2F7461785F636C617373223B693A33333B733A32313A226C6F63616C69736174696F6E2F7461785F72617465223B693A33343B733A32353A226C6F63616C69736174696F6E2F7765696768745F636C617373223B693A33353B733A31373A226C6F63616C69736174696F6E2F7A6F6E65223B693A33363B733A31343A226D6F64756C652F6163636F756E74223B693A33373B733A31363A226D6F64756C652F616666696C69617465223B693A33383B733A31333A226D6F64756C652F62616E6E6572223B693A33393B733A31373A226D6F64756C652F6265737473656C6C6572223B693A34303B733A31353A226D6F64756C652F6361726F7573656C223B693A34313B733A31353A226D6F64756C652F63617465676F7279223B693A34323B733A31353A226D6F64756C652F6665617475726564223B693A34333B733A31383A226D6F64756C652F676F6F676C655F74616C6B223B693A34343B733A31373A226D6F64756C652F686F6D656C61796F7574223B693A34353B733A31383A226D6F64756C652F696E666F726D6174696F6E223B693A34363B733A31333A226D6F64756C652F6C6174657374223B693A34373B733A31313A226D6F64756C652F6E657773223B693A34383B733A31363A226D6F64756C652F736C69646573686F77223B693A34393B733A31343A226D6F64756C652F7370656369616C223B693A35303B733A31323A226D6F64756C652F73746F7265223B693A35313B733A31343A226D6F64756C652F77656C636F6D65223B693A35323B733A32343A227061796D656E742F617574686F72697A656E65745F61696D223B693A35333B733A32313A227061796D656E742F62616E6B5F7472616E73666572223B693A35343B733A31343A227061796D656E742F636865717565223B693A35353B733A31313A227061796D656E742F636F64223B693A35363B733A32313A227061796D656E742F667265655F636865636B6F7574223B693A35373B733A31343A227061796D656E742F6C6971706179223B693A35383B733A32303A227061796D656E742F6D6F6E6579626F6F6B657273223B693A35393B733A31343A227061796D656E742F6E6F63686578223B693A36303B733A31353A227061796D656E742F7061796D617465223B693A36313B733A31363A227061796D656E742F706179706F696E74223B693A36323B733A31333A227061796D656E742F7061797A61223B693A36333B733A32363A227061796D656E742F70657270657475616C5F7061796D656E7473223B693A36343B733A31343A227061796D656E742F70705F70726F223B693A36353B733A31373A227061796D656E742F70705F70726F5F756B223B693A36363B733A31393A227061796D656E742F70705F7374616E64617264223B693A36373B733A31353A227061796D656E742F73616765706179223B693A36383B733A32323A227061796D656E742F736167657061795F646972656374223B693A36393B733A31383A227061796D656E742F736167657061795F7573223B693A37303B733A31393A227061796D656E742F74776F636865636B6F7574223B693A37313B733A32383A227061796D656E742F7765625F7061796D656E745F736F667477617265223B693A37323B733A31363A227061796D656E742F776F726C64706179223B693A37333B733A32373A227265706F72742F616666696C696174655F636F6D6D697373696F6E223B693A37343B733A32323A227265706F72742F637573746F6D65725F637265646974223B693A37353B733A32323A227265706F72742F637573746F6D65725F6F6E6C696E65223B693A37363B733A32313A227265706F72742F637573746F6D65725F6F72646572223B693A37373B733A32323A227265706F72742F637573746F6D65725F726577617264223B693A37383B733A32343A227265706F72742F70726F647563745F707572636861736564223B693A37393B733A32313A227265706F72742F70726F647563745F766965776564223B693A38303B733A31383A227265706F72742F73616C655F636F75706F6E223B693A38313B733A31373A227265706F72742F73616C655F6F72646572223B693A38323B733A31383A227265706F72742F73616C655F72657475726E223B693A38333B733A32303A227265706F72742F73616C655F7368697070696E67223B693A38343B733A31353A227265706F72742F73616C655F746178223B693A38353B733A31343A2273616C652F616666696C69617465223B693A38363B733A31323A2273616C652F636F6E74616374223B693A38373B733A31313A2273616C652F636F75706F6E223B693A38383B733A31333A2273616C652F637573746F6D6572223B693A38393B733A32333A2273616C652F637573746F6D65725F626C61636B6C697374223B693A39303B733A31393A2273616C652F637573746F6D65725F67726F7570223B693A39313B733A31303A2273616C652F6F72646572223B693A39323B733A31313A2273616C652F72657475726E223B693A39333B733A31323A2273616C652F766F7563686572223B693A39343B733A31383A2273616C652F766F75636865725F7468656D65223B693A39353B733A31353A2273657474696E672F73657474696E67223B693A39363B733A31333A2273657474696E672F73746F7265223B693A39373B733A31363A227368697070696E672F617573706F7374223B693A39383B733A31373A227368697070696E672F636974796C696E6B223B693A39393B733A31343A227368697070696E672F6665646578223B693A3130303B733A31333A227368697070696E672F666C6174223B693A3130313B733A31333A227368697070696E672F66726565223B693A3130323B733A31333A227368697070696E672F6974656D223B693A3130333B733A32333A227368697070696E672F70617263656C666F7263655F3438223B693A3130343B733A31353A227368697070696E672F7069636B7570223B693A3130353B733A31393A227368697070696E672F726F79616C5F6D61696C223B693A3130363B733A31323A227368697070696E672F757073223B693A3130373B733A31333A227368697070696E672F75737073223B693A3130383B733A31353A227368697070696E672F776569676874223B693A3130393B733A31313A22746F6F6C2F6261636B7570223B693A3131303B733A31343A22746F6F6C2F6572726F725F6C6F67223B693A3131313B733A31323A22746F74616C2F636F75706F6E223B693A3131323B733A31323A22746F74616C2F637265646974223B693A3131333B733A31343A22746F74616C2F68616E646C696E67223B693A3131343B733A31363A22746F74616C2F6B6C61726E615F666565223B693A3131353B733A31393A22746F74616C2F6C6F775F6F726465725F666565223B693A3131363B733A31323A22746F74616C2F726577617264223B693A3131373B733A31343A22746F74616C2F7368697070696E67223B693A3131383B733A31353A22746F74616C2F7375625F746F74616C223B693A3131393B733A393A22746F74616C2F746178223B693A3132303B733A31313A22746F74616C2F746F74616C223B693A3132313B733A31333A22746F74616C2F766F7563686572223B693A3132323B733A393A22757365722F75736572223B693A3132333B733A32303A22757365722F757365725F7065726D697373696F6E223B7D733A363A226D6F64696679223B613A3132343A7B693A303B733A31373A22636174616C6F672F617474726962757465223B693A313B733A32333A22636174616C6F672F6174747269627574655F67726F7570223B693A323B733A31363A22636174616C6F672F63617465676F7279223B693A333B733A31363A22636174616C6F672F646F776E6C6F6164223B693A343B733A31393A22636174616C6F672F696E666F726D6174696F6E223B693A353B733A32303A22636174616C6F672F6D616E756661637475726572223B693A363B733A31323A22636174616C6F672F6E657773223B693A373B733A31343A22636174616C6F672F6F7074696F6E223B693A383B733A31323A22636174616C6F672F706F7374223B693A393B733A31353A22636174616C6F672F70726F64756374223B693A31303B733A31343A22636174616C6F672F726576696577223B693A31313B733A31343A22636F6D6D6F6E2F646979686F6D65223B693A31323B733A31383A22636F6D6D6F6E2F66696C656D616E61676572223B693A31333B733A31333A2264657369676E2F62616E6E6572223B693A31343B733A31333A2264657369676E2F6C61796F7574223B693A31353B733A31343A22657874656E73696F6E2F66656564223B693A31363B733A31363A22657874656E73696F6E2F6D6F64756C65223B693A31373B733A31373A22657874656E73696F6E2F7061796D656E74223B693A31383B733A31383A22657874656E73696F6E2F7368697070696E67223B693A31393B733A31353A22657874656E73696F6E2F746F74616C223B693A32303B733A31363A22666565642F676F6F676C655F62617365223B693A32313B733A31393A22666565642F676F6F676C655F736974656D6170223B693A32323B733A32303A226C6F63616C69736174696F6E2F636F756E747279223B693A32333B733A32313A226C6F63616C69736174696F6E2F63757272656E6379223B693A32343B733A32313A226C6F63616C69736174696F6E2F67656F5F7A6F6E65223B693A32353B733A32313A226C6F63616C69736174696F6E2F6C616E6775616765223B693A32363B733A32353A226C6F63616C69736174696F6E2F6C656E6774685F636C617373223B693A32373B733A32353A226C6F63616C69736174696F6E2F6F726465725F737461747573223B693A32383B733A32363A226C6F63616C69736174696F6E2F72657475726E5F616374696F6E223B693A32393B733A32363A226C6F63616C69736174696F6E2F72657475726E5F726561736F6E223B693A33303B733A32363A226C6F63616C69736174696F6E2F72657475726E5F737461747573223B693A33313B733A32353A226C6F63616C69736174696F6E2F73746F636B5F737461747573223B693A33323B733A32323A226C6F63616C69736174696F6E2F7461785F636C617373223B693A33333B733A32313A226C6F63616C69736174696F6E2F7461785F72617465223B693A33343B733A32353A226C6F63616C69736174696F6E2F7765696768745F636C617373223B693A33353B733A31373A226C6F63616C69736174696F6E2F7A6F6E65223B693A33363B733A31343A226D6F64756C652F6163636F756E74223B693A33373B733A31363A226D6F64756C652F616666696C69617465223B693A33383B733A31333A226D6F64756C652F62616E6E6572223B693A33393B733A31373A226D6F64756C652F6265737473656C6C6572223B693A34303B733A31353A226D6F64756C652F6361726F7573656C223B693A34313B733A31353A226D6F64756C652F63617465676F7279223B693A34323B733A31353A226D6F64756C652F6665617475726564223B693A34333B733A31383A226D6F64756C652F676F6F676C655F74616C6B223B693A34343B733A31373A226D6F64756C652F686F6D656C61796F7574223B693A34353B733A31383A226D6F64756C652F696E666F726D6174696F6E223B693A34363B733A31333A226D6F64756C652F6C6174657374223B693A34373B733A31313A226D6F64756C652F6E657773223B693A34383B733A31363A226D6F64756C652F736C69646573686F77223B693A34393B733A31343A226D6F64756C652F7370656369616C223B693A35303B733A31323A226D6F64756C652F73746F7265223B693A35313B733A31343A226D6F64756C652F77656C636F6D65223B693A35323B733A32343A227061796D656E742F617574686F72697A656E65745F61696D223B693A35333B733A32313A227061796D656E742F62616E6B5F7472616E73666572223B693A35343B733A31343A227061796D656E742F636865717565223B693A35353B733A31313A227061796D656E742F636F64223B693A35363B733A32313A227061796D656E742F667265655F636865636B6F7574223B693A35373B733A31343A227061796D656E742F6C6971706179223B693A35383B733A32303A227061796D656E742F6D6F6E6579626F6F6B657273223B693A35393B733A31343A227061796D656E742F6E6F63686578223B693A36303B733A31353A227061796D656E742F7061796D617465223B693A36313B733A31363A227061796D656E742F706179706F696E74223B693A36323B733A31333A227061796D656E742F7061797A61223B693A36333B733A32363A227061796D656E742F70657270657475616C5F7061796D656E7473223B693A36343B733A31343A227061796D656E742F70705F70726F223B693A36353B733A31373A227061796D656E742F70705F70726F5F756B223B693A36363B733A31393A227061796D656E742F70705F7374616E64617264223B693A36373B733A31353A227061796D656E742F73616765706179223B693A36383B733A32323A227061796D656E742F736167657061795F646972656374223B693A36393B733A31383A227061796D656E742F736167657061795F7573223B693A37303B733A31393A227061796D656E742F74776F636865636B6F7574223B693A37313B733A32383A227061796D656E742F7765625F7061796D656E745F736F667477617265223B693A37323B733A31363A227061796D656E742F776F726C64706179223B693A37333B733A32373A227265706F72742F616666696C696174655F636F6D6D697373696F6E223B693A37343B733A32323A227265706F72742F637573746F6D65725F637265646974223B693A37353B733A32323A227265706F72742F637573746F6D65725F6F6E6C696E65223B693A37363B733A32313A227265706F72742F637573746F6D65725F6F72646572223B693A37373B733A32323A227265706F72742F637573746F6D65725F726577617264223B693A37383B733A32343A227265706F72742F70726F647563745F707572636861736564223B693A37393B733A32313A227265706F72742F70726F647563745F766965776564223B693A38303B733A31383A227265706F72742F73616C655F636F75706F6E223B693A38313B733A31373A227265706F72742F73616C655F6F72646572223B693A38323B733A31383A227265706F72742F73616C655F72657475726E223B693A38333B733A32303A227265706F72742F73616C655F7368697070696E67223B693A38343B733A31353A227265706F72742F73616C655F746178223B693A38353B733A31343A2273616C652F616666696C69617465223B693A38363B733A31323A2273616C652F636F6E74616374223B693A38373B733A31313A2273616C652F636F75706F6E223B693A38383B733A31333A2273616C652F637573746F6D6572223B693A38393B733A32333A2273616C652F637573746F6D65725F626C61636B6C697374223B693A39303B733A31393A2273616C652F637573746F6D65725F67726F7570223B693A39313B733A31303A2273616C652F6F72646572223B693A39323B733A31313A2273616C652F72657475726E223B693A39333B733A31323A2273616C652F766F7563686572223B693A39343B733A31383A2273616C652F766F75636865725F7468656D65223B693A39353B733A31353A2273657474696E672F73657474696E67223B693A39363B733A31333A2273657474696E672F73746F7265223B693A39373B733A31363A227368697070696E672F617573706F7374223B693A39383B733A31373A227368697070696E672F636974796C696E6B223B693A39393B733A31343A227368697070696E672F6665646578223B693A3130303B733A31333A227368697070696E672F666C6174223B693A3130313B733A31333A227368697070696E672F66726565223B693A3130323B733A31333A227368697070696E672F6974656D223B693A3130333B733A32333A227368697070696E672F70617263656C666F7263655F3438223B693A3130343B733A31353A227368697070696E672F7069636B7570223B693A3130353B733A31393A227368697070696E672F726F79616C5F6D61696C223B693A3130363B733A31323A227368697070696E672F757073223B693A3130373B733A31333A227368697070696E672F75737073223B693A3130383B733A31353A227368697070696E672F776569676874223B693A3130393B733A31313A22746F6F6C2F6261636B7570223B693A3131303B733A31343A22746F6F6C2F6572726F725F6C6F67223B693A3131313B733A31323A22746F74616C2F636F75706F6E223B693A3131323B733A31323A22746F74616C2F637265646974223B693A3131333B733A31343A22746F74616C2F68616E646C696E67223B693A3131343B733A31363A22746F74616C2F6B6C61726E615F666565223B693A3131353B733A31393A22746F74616C2F6C6F775F6F726465725F666565223B693A3131363B733A31323A22746F74616C2F726577617264223B693A3131373B733A31343A22746F74616C2F7368697070696E67223B693A3131383B733A31353A22746F74616C2F7375625F746F74616C223B693A3131393B733A393A22746F74616C2F746178223B693A3132303B733A31313A22746F74616C2F746F74616C223B693A3132313B733A31333A22746F74616C2F766F7563686572223B693A3132323B733A393A22757365722F75736572223B693A3132333B733A32303A22757365722F757365725F7065726D697373696F6E223B7D7D);

-- ----------------------------
-- Table structure for `op_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `op_voucher`;
CREATE TABLE `op_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_bin NOT NULL,
  `from_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `from_email` varchar(96) COLLATE utf8_bin NOT NULL,
  `to_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `to_email` varchar(96) COLLATE utf8_bin NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for `op_voucher_history`
-- ----------------------------
DROP TABLE IF EXISTS `op_voucher_history`;
CREATE TABLE `op_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_voucher_history
-- ----------------------------

-- ----------------------------
-- Table structure for `op_voucher_theme`
-- ----------------------------
DROP TABLE IF EXISTS `op_voucher_theme`;
CREATE TABLE `op_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_voucher_theme
-- ----------------------------
INSERT INTO op_voucher_theme VALUES ('8', 'data/demo/canon_eos_5d_2.jpg');
INSERT INTO op_voucher_theme VALUES ('7', 'data/demo/gift-voucher-birthday.jpg');
INSERT INTO op_voucher_theme VALUES ('6', 'data/demo/apple_logo.jpg');

-- ----------------------------
-- Table structure for `op_voucher_theme_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_voucher_theme_description`;
CREATE TABLE `op_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_voucher_theme_description
-- ----------------------------
INSERT INTO op_voucher_theme_description VALUES ('6', '2', 'Christmas');
INSERT INTO op_voucher_theme_description VALUES ('7', '2', 'Birthday');
INSERT INTO op_voucher_theme_description VALUES ('8', '2', 'General');

-- ----------------------------
-- Table structure for `op_weight_class`
-- ----------------------------
DROP TABLE IF EXISTS `op_weight_class`;
CREATE TABLE `op_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_weight_class
-- ----------------------------
INSERT INTO op_weight_class VALUES ('1', '1.00000000');
INSERT INTO op_weight_class VALUES ('2', '1000.00000000');
INSERT INTO op_weight_class VALUES ('5', '2.20460000');
INSERT INTO op_weight_class VALUES ('6', '35.27400000');

-- ----------------------------
-- Table structure for `op_weight_class_description`
-- ----------------------------
DROP TABLE IF EXISTS `op_weight_class_description`;
CREATE TABLE `op_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_bin NOT NULL,
  `unit` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_weight_class_description
-- ----------------------------
INSERT INTO op_weight_class_description VALUES ('1', '2', 'Kilogram', 'kg');
INSERT INTO op_weight_class_description VALUES ('2', '2', 'Gram', 'g');
INSERT INTO op_weight_class_description VALUES ('5', '2', 'Pound ', 'lb');
INSERT INTO op_weight_class_description VALUES ('6', '2', 'Ounce', 'oz');

-- ----------------------------
-- Table structure for `op_zone`
-- ----------------------------
DROP TABLE IF EXISTS `op_zone`;
CREATE TABLE `op_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `code` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3970 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_zone
-- ----------------------------
INSERT INTO op_zone VALUES ('684', '44', '安徽', 'AN', '1');
INSERT INTO op_zone VALUES ('685', '44', '北京', 'BE', '1');
INSERT INTO op_zone VALUES ('686', '44', '重庆', 'CH', '1');
INSERT INTO op_zone VALUES ('687', '44', '福建', 'FU', '1');
INSERT INTO op_zone VALUES ('688', '44', '甘肃', 'GA', '1');
INSERT INTO op_zone VALUES ('689', '44', '广东', 'GU', '1');
INSERT INTO op_zone VALUES ('690', '44', '广西', 'GX', '1');
INSERT INTO op_zone VALUES ('691', '44', '贵州', 'GZ', '1');
INSERT INTO op_zone VALUES ('692', '44', '海南', 'HA', '1');
INSERT INTO op_zone VALUES ('693', '44', '河北', 'HB', '1');
INSERT INTO op_zone VALUES ('694', '44', '黑龙江', 'HL', '1');
INSERT INTO op_zone VALUES ('695', '44', '河南', 'HE', '1');
INSERT INTO op_zone VALUES ('696', '44', '香港', 'HK', '1');
INSERT INTO op_zone VALUES ('697', '44', '湖北', 'HU', '1');
INSERT INTO op_zone VALUES ('698', '44', '湖南', 'HN', '1');
INSERT INTO op_zone VALUES ('699', '44', '內蒙古', 'IM', '1');
INSERT INTO op_zone VALUES ('700', '44', '江苏', 'JI', '1');
INSERT INTO op_zone VALUES ('701', '44', '江西', 'JX', '1');
INSERT INTO op_zone VALUES ('702', '44', '吉林', 'JL', '1');
INSERT INTO op_zone VALUES ('703', '44', '辽宁', 'LI', '1');
INSERT INTO op_zone VALUES ('704', '44', '澳门', 'MA', '1');
INSERT INTO op_zone VALUES ('705', '44', '宁夏', 'NI', '1');
INSERT INTO op_zone VALUES ('706', '44', '山西', 'SH', '1');
INSERT INTO op_zone VALUES ('707', '44', '山东', 'SA', '1');
INSERT INTO op_zone VALUES ('708', '44', '上海', 'SG', '1');
INSERT INTO op_zone VALUES ('709', '44', '山西', 'SX', '1');
INSERT INTO op_zone VALUES ('710', '44', '四川', 'SI', '1');
INSERT INTO op_zone VALUES ('711', '44', '天津', 'TI', '1');
INSERT INTO op_zone VALUES ('712', '44', '新疆', 'XI', '1');
INSERT INTO op_zone VALUES ('713', '44', '云南', 'YU', '1');
INSERT INTO op_zone VALUES ('714', '44', '浙江', 'ZH', '1');

-- ----------------------------
-- Table structure for `op_zone_to_geo_zone`
-- ----------------------------
DROP TABLE IF EXISTS `op_zone_to_geo_zone`;
CREATE TABLE `op_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of op_zone_to_geo_zone
-- ----------------------------
INSERT INTO op_zone_to_geo_zone VALUES ('57', '222', '0', '3', '2010-02-26 22:33:24', '0000-00-00 00:00:00');
INSERT INTO op_zone_to_geo_zone VALUES ('65', '222', '0', '4', '2010-12-15 15:18:13', '0000-00-00 00:00:00');
