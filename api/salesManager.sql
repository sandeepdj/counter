-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 09, 2018 at 09:46 PM
-- Server version: 5.7.20-0ubuntu0.17.10.1
-- PHP Version: 7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesManager`
--

-- --------------------------------------------------------

--
-- Table structure for table `finyear`
--

CREATE TABLE `finyear` (
  `fyid` int(11) NOT NULL,
  `fynm` varchar(15) NOT NULL,
  `fycd` int(11) NOT NULL,
  `frdt` date NOT NULL,
  `todt` date NOT NULL,
  `bseries` bigint(20) NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finyear`
--

INSERT INTO `finyear` (`fyid`, `fynm`, `fycd`, `frdt`, `todt`, `bseries`, `active`) VALUES
(1, '2017--2018', 1718, '2017-04-04', '2018-03-31', 17180001, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `gmstate`
--

CREATE TABLE `gmstate` (
  `stid` int(11) NOT NULL,
  `stnm` varchar(256) NOT NULL,
  `cuid` int(11) NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `crby` int(11) NOT NULL,
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdby` int(11) NOT NULL,
  `mdon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gmstate`
--

INSERT INTO `gmstate` (`stid`, `stnm`, `cuid`, `active`, `crby`, `cron`, `mdby`, `mdon`) VALUES
(1, 'Andaman and Nicobar Island', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(2, 'Andhra Pradesh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(3, 'Arunachal Pradesh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(4, 'Assam', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(5, 'Bihar', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(6, 'Chandigarh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(7, 'Chhattisgarh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(8, 'Dadra and Nagar Haveli', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(9, 'Daman and Diu', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(10, 'Delhi', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(11, 'Goa', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(12, 'Gujarat', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(13, 'Haryana', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(14, 'Himachal Pradesh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(15, 'Jammu and Kashmir', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(16, 'Jharkhand', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(17, 'Karnataka', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(18, 'Kerala', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(19, 'Lakshadweep', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(20, 'Madhya Pradesh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(21, 'Maharashtra', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(22, 'Manipur', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(23, 'Meghalaya', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(24, 'Mizoram', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(25, 'Nagaland', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(26, 'Odisha', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(27, 'Puducherry', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(28, 'Punjab', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(29, 'Rajasthan', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(30, 'Sikkim', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(31, 'Tamil Nadu', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(32, 'Telangana', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(33, 'Tripura', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(34, 'Uttar Pradesh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(35, 'Uttarakhand', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(36, 'West Bengal', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `gstslab`
--

CREATE TABLE `gstslab` (
  `slabid` int(11) NOT NULL,
  `slabnm` varchar(15) NOT NULL,
  `cgst` float NOT NULL,
  `sgst` float NOT NULL,
  `igst` float NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `crby` int(11) NOT NULL DEFAULT '0',
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdby` int(11) NOT NULL DEFAULT '0',
  `mdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gstslab`
--

INSERT INTO `gstslab` (`slabid`, `slabnm`, `cgst`, `sgst`, `igst`, `active`, `crby`, `cron`, `mdby`, `mdon`) VALUES
(1, 'Nil1', 0, 0, 0, 'Yes', 1, '2017-07-25 13:03:17', 0, '2017-09-10 12:40:12'),
(2, '5%', 2.5, 2.5, 5, 'Yes', 1, '2017-07-25 13:03:17', 0, '0000-00-00 00:00:00'),
(3, '12%', 6, 6, 12, 'Yes', 1, '2017-07-25 13:04:30', 0, '0000-00-00 00:00:00'),
(4, '18%', 9, 9, 18, 'Yes', 1, '2017-07-25 13:04:30', 0, '0000-00-00 00:00:00'),
(5, '28%', 14, 14, 28, 'Yes', 1, '2017-07-25 13:05:28', 0, '0000-00-00 00:00:00'),
(6, '20%', 10, 10, 20, 'No', 0, '2017-09-01 22:35:16', 0, '2017-09-01 22:35:16'),
(8, '40%', 20, 20, 40, 'No', 0, '2017-09-01 22:35:32', 0, '2017-09-01 22:35:32'),
(9, '60%', 30, 30, 60, 'No', 0, '2017-09-07 20:33:36', 0, '2017-09-07 20:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `mcompany`
--

CREATE TABLE `mcompany` (
  `comid` int(11) NOT NULL,
  `comnm` varchar(200) NOT NULL,
  `addr1` tinytext NOT NULL,
  `addr2` tinytext NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `statecode` int(11) NOT NULL,
  `stid` int(11) NOT NULL,
  `gstno` varchar(20) NOT NULL,
  `pan` varchar(20) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `telephone1` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcompany`
--

INSERT INTO `mcompany` (`comid`, `comnm`, `addr1`, `addr2`, `city`, `state`, `zip`, `statecode`, `stid`, `gstno`, `pan`, `telephone`, `telephone1`, `mobile`, `email`, `logo`, `active`) VALUES
(1, 'SHIV DURGA ENTERPRISES', 'Unit No.12 Plot No.29/30,  Dewaan & Sons Industrial Area', 'Mahim Tq. Dist.Palghar', 'Mumbai', 'Maharashtra', '560094', 27, 21, '27AMSPJ2064K1ZM', 'AMSPJ2064K', '022-45123566', '022-45123566', '7899551677', 'shivdurga78@gmail.com', 'public/img/logo.png', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `mid` int(11) NOT NULL,
  `mnm` varchar(80) NOT NULL,
  `pid` int(11) NOT NULL,
  `url` varchar(80) NOT NULL,
  `icon` varchar(15) NOT NULL,
  `sort` int(11) NOT NULL,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`mid`, `mnm`, `pid`, `url`, `icon`, `sort`, `active`) VALUES
(1, 'Dashboard', 0, '', 'dashboard', 1, 'Yes'),
(2, 'Dashboard V1', 1, 'Dashboard', 'dashboard', 1, 'Yes'),
(3, 'Home', 1, 'Home', 'Home', 2, 'Yes'),
(4, 'Master Settings', 0, '', 'files-o', 2, 'Yes'),
(5, 'Company Details', 4, 'Company', '', 1, 'Yes'),
(6, 'Financial Year', 4, 'FYear', '', 2, 'Yes'),
(7, 'State', 4, 'States', '', 3, 'Yes'),
(8, 'Store Master', 0, '', 'pie-chart', 3, 'Yes'),
(9, 'Item Units', 8, 'ChartsJs', '', 1, 'Yes'),
(10, 'Item Master', 8, 'Morris', '', 2, 'Yes'),
(11, 'GST Master', 4, 'GSTMaster', '', 4, 'Yes'),
(12, 'Sales Master', 0, '', 'pie-chart', 5, 'Yes'),
(13, 'New Sale', 12, 'Sales', '', 1, 'Yes'),
(14, 'Reports', 0, '', 'pie-chart', 6, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `mitem`
--

CREATE TABLE `mitem` (
  `id` int(11) NOT NULL,
  `inm` varchar(200) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `hsn` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `slabid` int(11) NOT NULL,
  `crby` int(11) NOT NULL DEFAULT '1',
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdby` int(11) NOT NULL DEFAULT '1',
  `mdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` enum('Yes','No') NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mitem`
--

INSERT INTO `mitem` (`id`, `inm`, `unit`, `hsn`, `price`, `slabid`, `crby`, `cron`, `mdby`, `mdon`, `active`) VALUES
(1, 'CHEMLOK -205 (1 LTR )', 'tin', '35069190', 545, 4, 1, '2017-09-02 11:30:08', 1, '2017-09-02 11:30:08', 'Yes'),
(2, 'CHEMLOK -220 (1 LTR )', 'in', '35069190', 937, 4, 1, '2017-09-02 11:32:57', 1, '2017-09-02 11:32:57', 'Yes'),
(6, 'Packaging And FOrwarding', '-', '-', 125, 4, 1, '2017-09-03 14:23:39', 1, '2017-09-03 14:23:39', 'Yes'),
(7, 'Parl G', 'Pack', 'HSN14526', 200, 4, 1, '2017-09-10 19:26:53', 1, '2017-09-10 19:26:53', 'Yes'),
(8, 'Marie Gold', 'Pack', '201712015', 250, 4, 1, '2017-09-10 19:27:18', 1, '2017-09-10 19:27:18', 'Yes'),
(9, 'Crack Jack', 'Pack', '14525', 350, 4, 1, '2017-09-10 19:27:39', 1, '2017-09-10 19:27:39', 'Yes'),
(10, 'Cadbury Celebration', 'Pack', '1230145', 650, 4, 1, '2017-09-10 19:28:40', 1, '2017-09-10 19:28:40', 'Yes'),
(11, 'Family Pack Chocolate', 'Pack', '452147852', 1000, 4, 1, '2017-09-10 19:29:20', 1, '2017-09-10 19:29:20', 'Yes'),
(12, 'Hide & Seek Fab', 'Pack', '1452789', 850, 4, 1, '2017-09-10 19:31:09', 1, '2017-09-10 19:31:09', 'Yes'),
(13, 'Coconut Cookies', 'Pack', '452152', 650, 4, 1, '2017-09-10 19:31:29', 1, '2017-09-10 19:31:29', 'Yes'),
(14, 'Monaco-Salted Craker', 'Pack', '4512586', 1250, 4, 1, '2017-09-10 19:32:03', 1, '2017-09-10 19:32:03', 'Yes'),
(15, 'Britannia Cookies', 'Pack', '451245', 1550, 4, 1, '2017-09-10 19:32:57', 1, '2017-09-10 19:32:57', 'Yes'),
(16, 'Butterfinger', 'pack', '1452789', 650, 4, 1, '2017-09-10 19:45:00', 1, '2017-09-10 19:45:00', 'Yes'),
(17, 'Cadbury Tempo', 'Pack', '452645', 620, 4, 1, '2017-09-10 19:45:33', 1, '2017-09-10 19:45:33', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `salesd`
--

CREATE TABLE `salesd` (
  `saledid` int(11) NOT NULL,
  `shid` bigint(20) NOT NULL,
  `icd` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `saqty` float NOT NULL,
  `disc` float NOT NULL,
  `cgst` float NOT NULL,
  `sgst` float NOT NULL,
  `igst` float NOT NULL,
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesd`
--

INSERT INTO `salesd` (`saledid`, `shid`, `icd`, `unit`, `price`, `saqty`, `disc`, `cgst`, `sgst`, `igst`, `cron`) VALUES
(1, 1, 1, 'tin', 545, 4, 0, 9, 9, 0, '2017-09-05 19:39:41'),
(2, 1, 2, 'in', 937, 4, 0, 9, 9, 0, '2017-09-05 19:39:41'),
(3, 1, 6, '0', 125, 1, 0, 9, 9, 0, '2017-09-05 19:39:41'),
(4, 2, 1, 'tin', 545, 4, 0, 0, 0, 18, '2017-09-05 19:40:17'),
(5, 2, 2, 'in', 937, 4, 0, 0, 0, 18, '2017-09-05 19:40:17'),
(6, 2, 6, '0', 125, 1, 0, 0, 0, 18, '2017-09-05 19:40:18'),
(7, 3, 7, 'Pack', 200, 10, 0, 9, 9, 0, '2017-09-10 19:36:29'),
(8, 3, 8, 'Pack', 250, 12, 0, 9, 9, 0, '2017-09-10 19:36:29'),
(9, 3, 9, 'Pack', 350, 5, 0, 9, 9, 0, '2017-09-10 19:36:29'),
(10, 3, 10, 'Pack', 650, 6, 0, 9, 9, 0, '2017-09-10 19:36:29'),
(11, 3, 12, 'Pack', 850, 6, 0, 9, 9, 0, '2017-09-10 19:36:29'),
(12, 3, 13, 'Pack', 650, 10, 0, 9, 9, 0, '2017-09-10 19:36:29'),
(13, 3, 15, 'Pack', 1550, 15, 0, 9, 9, 0, '2017-09-10 19:36:29'),
(14, 3, 13, 'Pack', 650, 10, 0, 9, 9, 0, '2017-09-10 19:36:29'),
(15, 4, 7, 'Pack', 200, 5, 0, 9, 9, 0, '2017-09-13 10:49:47'),
(16, 4, 8, 'Pack', 250, 4, 0, 9, 9, 0, '2017-09-13 10:49:47'),
(17, 4, 9, 'Pack', 350, 5, 0, 9, 9, 0, '2017-09-13 10:49:47'),
(18, 4, 12, 'Pack', 850, 3, 0, 9, 9, 0, '2017-09-13 10:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `salesh`
--

CREATE TABLE `salesh` (
  `rid` int(11) NOT NULL,
  `shid` bigint(20) NOT NULL,
  `supid` int(11) NOT NULL,
  `saledt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` enum('yes','No') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesh`
--

INSERT INTO `salesh` (`rid`, `shid`, `supid`, `saledt`, `active`) VALUES
(1, 17180001, 1, '2017-09-05 19:39:41', 'yes'),
(2, 17180002, 2, '2017-09-05 19:40:17', 'yes'),
(3, 17180003, 1, '2017-09-10 19:36:28', 'yes'),
(4, 17180004, 1, '2017-09-13 10:49:47', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supid` int(11) NOT NULL,
  `supnm` varchar(200) NOT NULL,
  `contactp` varchar(200) NOT NULL,
  `contctno` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gstno` varchar(50) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `supaddr` tinytext NOT NULL,
  `supcity` varchar(80) NOT NULL,
  `stid` int(11) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `active` enum('Yes','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supid`, `supnm`, `contactp`, `contctno`, `email`, `gstno`, `zip`, `supaddr`, `supcity`, `stid`, `telephone`, `active`) VALUES
(1, 'Ostrcih networking Pvt Ltd', 'Sandeep Jadhav', '7899551677', 'sandeep@gmail.com', '29012AOKPL120', '560094', '7201, york Avenue S Apt 1012\nMinneapolis', 'Bangalore', 21, '080412535', 'Yes'),
(2, 'Infrastructure Managed Services', 'Jyoti Jalkote', '7899551677', 'jyotijalkote10@gmail.com', '29AOKPJ0447L0123', '554355', '7201, york Avenue S Apt 1012\nMinneapolis â€“MN, USA', 'Bangalore', 17, '0801425623', 'Yes'),
(3, 'sdsafdsdsada', 'dsadasdsa', '7899551677', '', '1248852', '', '', '', 17, '', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `password`, `email`, `phone`, `created`) VALUES
(1, 'Sandeep Jadhav', 'admin', 'admin', '7899551677', '2017-09-04 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `finyear`
--
ALTER TABLE `finyear`
  ADD PRIMARY KEY (`fyid`);

--
-- Indexes for table `gmstate`
--
ALTER TABLE `gmstate`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `gstslab`
--
ALTER TABLE `gstslab`
  ADD PRIMARY KEY (`slabid`);

--
-- Indexes for table `mcompany`
--
ALTER TABLE `mcompany`
  ADD PRIMARY KEY (`comid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `mitem`
--
ALTER TABLE `mitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesd`
--
ALTER TABLE `salesd`
  ADD PRIMARY KEY (`saledid`);

--
-- Indexes for table `salesh`
--
ALTER TABLE `salesh`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `finyear`
--
ALTER TABLE `finyear`
  MODIFY `fyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gmstate`
--
ALTER TABLE `gmstate`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `gstslab`
--
ALTER TABLE `gstslab`
  MODIFY `slabid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mcompany`
--
ALTER TABLE `mcompany`
  MODIFY `comid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `mitem`
--
ALTER TABLE `mitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `salesd`
--
ALTER TABLE `salesd`
  MODIFY `saledid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `salesh`
--
ALTER TABLE `salesh`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
