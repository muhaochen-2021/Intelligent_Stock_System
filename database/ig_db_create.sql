/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : reggie

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2021-07-23 10:41:41
*/


-- ----------------------------
-- Table structure for StockHistory
-- ----------------------------
DROP TABLE IF EXISTS `StockHistory`;
CREATE TABLE `StockHistory` (
  `StockCode` varchar(10) NOT NULL COMMENT '股票代码',
  `HistDate` varchar(20) NOT NULL COMMENT '股票日期',
  `StockPriceClose` float(10,4) NOT NULL COMMENT '收盘价',
  `StockPriceOpen` float(10,4) NOT NULL COMMENT '开盘价',
  `StockPriceTop` float(10,4) NOT NULL COMMENT '最高价',
  `StockPriceDown` float(10,4) NOT NULL COMMENT '最低价',
  `StockPriceMoney` float(30,5) NOT NULL COMMENT '成交额',
  `StockPriceVolume` float(25,5) NOT NULL COMMENT '成交量',
  `HistDateStockCode` varchar(30) NOT NULL COMMENT '日期+股票代码唯一识别',
  PRIMARY KEY (`StockCode`,`HistDate`) USING BTREE,
  UNIQUE KEY `StockHistory_HistDateStockCode_UK` (`HistDateStockCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='股票历史数据表';
