/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : yiitest

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-12-18 18:04:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('超级管理员', '1', '1576662261');

-- ----------------------------
-- Table structure for `auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1576662144', '1576662144');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1576662141', '1576662141');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1576662142', '1576662142');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/debug/user/*', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/debug/user/reset-identity', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/debug/user/set-identity', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1576662144', '1576662144');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1576662143', '1576662143');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1576662144', '1576662144');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1576662144', '1576662144');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1576662144', '1576662144');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1576662144', '1576662144');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1576662144', '1576662144');
INSERT INTO `auth_item` VALUES ('超级管理员', '1', null, null, null, '1576662123', '1576662219');

-- ----------------------------
-- Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/user/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/user/reset-identity');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/user/set-identity');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/error');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/login');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/logout');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1576642148');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1576642158');
INSERT INTO `migration` VALUES ('m190124_110200_add_verification_token_column_to_user_table', '1576642159');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123', '$2y$13$AGidpIEQxUWORxmT38JmOevOycw8eAclZVHU13Dgfi.i3zVg2gyiW', '123', '1221', '10', '12', '12', '12');
