-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Nov 15, 2014, 05:05 AM
-- 伺服器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 資料庫: `longpollingroom`
-- 

-- --------------------------------------------------------

-- 
-- 資料表格式： `msg`
-- 

CREATE TABLE `msg` (
  `id` int(11) NOT NULL auto_increment,
  `content` varchar(500) default NULL,
  `send` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

-- 
-- 列出以下資料庫的數據： `msg`
-- 

INSERT INTO `msg` VALUES (6, '你好', 'sol', '2014-07-27 09:51:53');
INSERT INTO `msg` VALUES (5, '1000', 'sol', '2014-07-27 09:50:21');
INSERT INTO `msg` VALUES (7, '600', 'sol', '2014-07-27 09:54:20');
INSERT INTO `msg` VALUES (8, '300', 'zap', '2014-07-27 09:59:39');
INSERT INTO `msg` VALUES (9, '30', 'd', '2014-07-27 10:04:57');
INSERT INTO `msg` VALUES (10, '66', 'd', '2014-07-27 10:06:46');
INSERT INTO `msg` VALUES (11, '6146', 'd', '2014-07-27 10:07:41');
INSERT INTO `msg` VALUES (12, '26', 'd', '2014-07-27 10:08:40');
INSERT INTO `msg` VALUES (13, 'ewfwef', 'd', '2014-07-27 10:08:57');
INSERT INTO `msg` VALUES (14, 'rert', 'd', '2014-07-27 10:10:11');
INSERT INTO `msg` VALUES (15, 'wewv', 'd', '2014-07-27 10:11:49');
INSERT INTO `msg` VALUES (16, 'wwwww', 'd', '2014-07-27 10:11:52');
INSERT INTO `msg` VALUES (17, 'cecececececec', 'd', '2014-07-27 10:12:00');
INSERT INTO `msg` VALUES (18, 'wveeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'd', '2014-07-27 10:12:08');
INSERT INTO `msg` VALUES (19, 'wefwefwe', 'd', '2014-07-27 10:13:04');
INSERT INTO `msg` VALUES (20, 'wefwefwefwef', 'd', '2014-07-27 10:13:07');
INSERT INTO `msg` VALUES (21, 'ggwp', 'Sai', '2014-07-27 10:14:07');
INSERT INTO `msg` VALUES (22, 'HI 各位', 'zap', '2014-07-27 10:14:09');
INSERT INTO `msg` VALUES (23, 'hi', 'Sai', '2014-07-27 10:14:22');
INSERT INTO `msg` VALUES (24, '你們好', 'zap', '2014-07-27 10:14:24');
INSERT INTO `msg` VALUES (25, '彥龍', 'zap', '2014-07-27 10:14:34');
INSERT INTO `msg` VALUES (26, 'Hello！你好', 'Chen Yan-Long', '2014-07-27 10:14:39');
INSERT INTO `msg` VALUES (27, '你好', 'zap', '2014-07-27 10:14:39');
INSERT INTO `msg` VALUES (28, '真假太神拉', 'Sai', '2014-07-27 10:14:56');
INSERT INTO `msg` VALUES (29, '酷', 'Chen Yan-Long', '2014-07-27 10:15:07');
INSERT INTO `msg` VALUES (30, 'Long polling', 'zap', '2014-07-27 10:15:18');
INSERT INTO `msg` VALUES (31, '下禮拜就教這個', 'Chen Yan-Long', '2014-07-27 10:15:31');
INSERT INTO `msg` VALUES (32, 'Hi', 'Chen Yan-Long', '2014-07-27 10:16:18');
INSERT INTO `msg` VALUES (33, 'efhwuefwef', 'zap', '2014-07-27 10:17:42');
INSERT INTO `msg` VALUES (34, 'wwefwefewf', 'zap', '2014-07-27 10:17:44');
INSERT INTO `msg` VALUES (35, 'wewefewfwefwefwef', 'zap', '2014-07-27 10:17:48');
INSERT INTO `msg` VALUES (36, 'kewergjregjioerg', 'zap', '2014-07-27 10:17:53');
INSERT INTO `msg` VALUES (37, 'ergoerjgerjogeroig', 'zap', '2014-07-27 10:17:55');
INSERT INTO `msg` VALUES (38, 'HIHIHIH', 'KK', '2014-07-27 10:25:56');
INSERT INTO `msg` VALUES (39, '0.0', 'zap', '2014-07-28 00:59:53');
INSERT INTO `msg` VALUES (40, 'OK', 'zap', '2014-07-28 00:59:56');
INSERT INTO `msg` VALUES (41, '0.5S', 'zap', '2014-07-28 01:00:00');
INSERT INTO `msg` VALUES (42, 'TEST', 'zap', '2014-07-28 01:00:09');
INSERT INTO `msg` VALUES (43, '0.5S TEST', 'zap', '2014-07-28 01:00:14');
INSERT INTO `msg` VALUES (44, 'DONE', 'zap', '2014-07-28 01:00:21');
INSERT INTO `msg` VALUES (45, '1', 'zap', '2014-07-28 01:00:23');
INSERT INTO `msg` VALUES (46, '2', 'zap', '2014-07-28 01:00:24');
INSERT INTO `msg` VALUES (47, '3', 'zap', '2014-07-28 01:00:24');
INSERT INTO `msg` VALUES (48, '2', 'zap', '2014-07-28 01:00:26');
INSERT INTO `msg` VALUES (49, '3', 'zap', '2014-07-28 01:00:27');
INSERT INTO `msg` VALUES (50, '4', 'zap', '2014-07-28 01:00:30');
INSERT INTO `msg` VALUES (51, '3', 'zap', '2014-07-28 01:00:32');
INSERT INTO `msg` VALUES (52, '2', 'zap', '2014-07-28 01:00:34');
INSERT INTO `msg` VALUES (53, '3', 'zap', '2014-07-28 01:00:35');
INSERT INTO `msg` VALUES (54, '1', 'zap', '2014-07-28 01:00:36');
INSERT INTO `msg` VALUES (55, '2', 'zap', '2014-07-28 01:00:38');
INSERT INTO `msg` VALUES (56, '3', 'zap', '2014-07-28 01:00:39');
INSERT INTO `msg` VALUES (57, '4', 'zap', '2014-07-28 01:00:41');
INSERT INTO `msg` VALUES (58, '3', 'zap', '2014-07-28 01:00:42');
INSERT INTO `msg` VALUES (59, '21', 'zap', '2014-07-28 01:00:44');
INSERT INTO `msg` VALUES (60, '1', 'zap', '2014-07-28 01:00:45');
INSERT INTO `msg` VALUES (61, '0', 'zap', '2014-07-28 01:00:46');
INSERT INTO `msg` VALUES (62, 'fwefewfwefwef', 'zap', '2014-07-28 01:12:45');
INSERT INTO `msg` VALUES (63, '-.-', 'zap', '2014-07-28 01:49:42');
INSERT INTO `msg` VALUES (64, 'OK', 'GOD', '2014-07-28 01:51:11');
INSERT INTO `msg` VALUES (65, 'asd', 'TEst', '2014-10-14 13:22:15');
INSERT INTO `msg` VALUES (66, 'hola', 'Simpli', '2014-10-14 13:22:51');
INSERT INTO `msg` VALUES (67, 'Weeeena po xoro enzo', 'Simpli', '2014-10-14 13:24:05');
INSERT INTO `msg` VALUES (68, 'wena po, xolo simpli', 'CHino', '2014-10-14 13:24:13');
INSERT INTO `msg` VALUES (69, 'quienes son uds?', 'TEst', '2014-10-14 13:24:23');
INSERT INTO `msg` VALUES (70, '真假太神拉', 'CHino', '2014-10-14 13:25:09');
INSERT INTO `msg` VALUES (71, 'kkkkk', 'fff', '2014-10-14 14:23:24');
INSERT INTO `msg` VALUES (72, 'lllll', 'fff', '2014-10-14 14:23:29');

-- --------------------------------------------------------

-- 
-- 資料表格式： `notify`
-- 

CREATE TABLE `notify` (
  `name` varchar(50) NOT NULL,
  `isnews` tinyint(4) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 列出以下資料庫的數據： `notify`
-- 

INSERT INTO `notify` VALUES ('zap', 1, '2014-07-28 01:49:42');
INSERT INTO `notify` VALUES ('sol', 1, '2014-07-27 09:54:20');
INSERT INTO `notify` VALUES ('d', 1, '2014-07-27 10:13:08');
INSERT INTO `notify` VALUES ('Sai', 1, '2014-07-27 10:23:21');
INSERT INTO `notify` VALUES ('Chen Yan-Long', 1, '2014-07-27 10:25:56');
INSERT INTO `notify` VALUES ('h', 1, '2014-07-27 10:23:29');
INSERT INTO `notify` VALUES ('KK', 1, '2014-07-27 10:25:57');
INSERT INTO `notify` VALUES ('-.-', 1, '2014-07-28 00:55:11');
INSERT INTO `notify` VALUES ('GOD', 1, '2014-07-28 01:51:11');
INSERT INTO `notify` VALUES ('123', 1, '2014-07-28 01:58:35');
INSERT INTO `notify` VALUES ('TEst', 1, '2014-10-14 13:24:24');
INSERT INTO `notify` VALUES ('Simpli', 1, '2014-10-14 13:24:23');
INSERT INTO `notify` VALUES ('CHino', 1, '2014-10-14 13:25:22');
INSERT INTO `notify` VALUES ('fff', 0, '2014-10-14 14:23:29');

-- --------------------------------------------------------

-- 
-- 資料表格式： `user`
-- 

CREATE TABLE `user` (
  `uid` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- 列出以下資料庫的數據： `user`
-- 

INSERT INTO `user` VALUES (1, 'zap');
INSERT INTO `user` VALUES (2, 'sol');
INSERT INTO `user` VALUES (3, 'd');
INSERT INTO `user` VALUES (4, 'Sai');
INSERT INTO `user` VALUES (5, 'Chen Yan-Long');
INSERT INTO `user` VALUES (6, 'h');
INSERT INTO `user` VALUES (7, 'KK');
INSERT INTO `user` VALUES (8, '-.-');
INSERT INTO `user` VALUES (9, 'GOD');
INSERT INTO `user` VALUES (10, '123');
INSERT INTO `user` VALUES (11, 'TEst');
INSERT INTO `user` VALUES (12, 'Simpli');
INSERT INTO `user` VALUES (13, 'CHino');
INSERT INTO `user` VALUES (14, 'fff');
