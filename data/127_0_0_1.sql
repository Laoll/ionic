-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-03-14 11:04:38
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wechat`
--
CREATE DATABASE IF NOT EXISTS `wechat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wechat`;

-- --------------------------------------------------------

--
-- 表的结构 `contactlist`
--

CREATE TABLE `contactlist` (
  `cId` int(11) NOT NULL,
  `oId` int(11) DEFAULT NULL,
  `fId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `contactlist`
--

INSERT INTO `contactlist` (`cId`, `oId`, `fId`) VALUES
(1, 1, 3),
(2, 1, 2),
(3, 1, 4),
(4, 2, 3),
(5, 4, 3),
(6, 4, 2);

-- --------------------------------------------------------

--
-- 表的结构 `persons`
--

CREATE TABLE `persons` (
  `uId` int(11) NOT NULL,
  `uname` varchar(60) DEFAULT NULL,
  `pwd` varchar(12) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `persons`
--

INSERT INTO `persons` (`uId`, `uname`, `pwd`, `gender`, `address`, `mobile`) VALUES
(1, 'Xuanwumen', '123456', 'female', 'Beijing', '18675881240'),
(2, 'Zhuanwu', '123456', 'female', 'Shanghai', '18675881241'),
(3, 'Juan', '123456', 'male', 'Shandong', '18675881242'),
(4, 'Li', '123456', 'male', 'Shandong', '18675881242');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactlist`
--
ALTER TABLE `contactlist`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`uId`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `contactlist`
--
ALTER TABLE `contactlist`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `persons`
--
ALTER TABLE `persons`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
