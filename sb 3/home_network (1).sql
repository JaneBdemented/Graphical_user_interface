-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2015 at 08:56 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `home_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE IF NOT EXISTS `devices` (
`id` int(11) NOT NULL,
  `device_name` varchar(11) NOT NULL,
  `MAC_address` varchar(255) NOT NULL,
  `Block` tinyint(1) NOT NULL,
  `data_cap` int(11) NOT NULL,
  `user_total` int(255) NOT NULL,
  `total_all` varchar(255) NOT NULL,
  `time_start` int(255) NOT NULL,
  `time_end` int(255) NOT NULL,
  `Bandwidth_limit` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_name`, `MAC_address`, `Block`, `data_cap`, `user_total`, `total_all`, `time_start`, `time_end`, `Bandwidth_limit`, `ip`) VALUES
(1, 'moes iphone', '00:0a:95:9d:68:16', 0, 500, 250, '25 GB', 10, 12, 1000, '127.0.0.1'),
(2, 'Marc''s Mac', '00:0a:95:9d:68:15', 1, 250, 100, '10 GB', 4, 6, 300, '127.0.0.2'),
(3, 'Jacquie Mac', '0123.4567.89ab', 1, 400, 600, '5 GB', 6, 9, 500, '168.1.2.0');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `macRulesTable`
--

CREATE TABLE IF NOT EXISTS `macRulesTable` (
`Index` int(11) NOT NULL,
  `mac` bigint(228) NOT NULL,
  `block` tinyint(1) DEFAULT '0',
  `user_total` bigint(9) DEFAULT '20',
  `total_all` bigint(9) DEFAULT '60',
  `start_time` time DEFAULT '12:00:00',
  `stop_time` time DEFAULT '12:00:00',
  `bw_limit` bigint(10) DEFAULT '4294967294',
  `current_user_usage` bigint(10) DEFAULT '15',
  `current_total_usage` bigint(10) DEFAULT '20',
  `terminal_name` varchar(17) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `macRulesTable`
--

INSERT INTO `macRulesTable` (`Index`, `mac`, `block`, `user_total`, `total_all`, `start_time`, `stop_time`, `bw_limit`, `current_user_usage`, `current_total_usage`, `terminal_name`) VALUES
(1, 0, 0, 60, 180, '12:00:00', '12:00:00', 1000, 15, 20, NULL),
(2, 0, 0, 60, 180, '12:00:00', '12:00:00', 1000, 15, 20, NULL),
(3, 0, 1, 60, 180, '12:00:00', '12:00:00', 1000, 15, 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Stats`
--

CREATE TABLE IF NOT EXISTS `Stats` (
`ID` int(11) NOT NULL,
  `Index` int(11) NOT NULL,
  `Node` varchar(25) NOT NULL,
  `Usage` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Stats`
--

INSERT INTO `Stats` (`ID`, `Index`, `Node`, `Usage`) VALUES
(1, 1, '1', 350);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `name`, `joined`, `group`) VALUES
(135, 'Bakroun', '431c126a20ed41ad201e0e1fc5951a10aaf0b7d196c54037422e65bb6885631d', '5¦v)Ì–ŒþŽ­''Çƒ£³8‘Ìú6sïý×†', 'Moe', '2014-11-28 00:37:01', 1),
(136, 'Marc', '69d5d008a142a9827b73da24448a99996598f7ada5b0a757fbaaa6ec280ac975', 'ê’ö€¯Ñ‹`½†3ºõùnÔŒ†©±Ò˜oÚÇ$”haò', 'moe', '2015-01-05 08:47:04', 1),
(137, 'Jacquie', '889fbb48d2db0ef28236d39ebd966a7d76c7881c6869148e371f60663fb0c26a', '&\Z›wÌ\\z¸hfnþA—Û¾—qDõeádª\\Çiv', 'moe', '2015-01-10 20:04:31', 1),
(138, 'malik', 'e6968681ca7ff2d24fd5b52e43f8c4e572a263e167aa0fb2efc98c4b90b6aa55', '£Z¬`§½ H®¯DÝ''Ú;€ë¯;J0Á®6„âÊµ', 'malik', '2015-01-11 16:42:51', 1),
(139, 'moe', '5a981a563ebbb65da2b79c230ec1f8f7161908574b5c7dd4452d67efec37900c', '\0êõwü‚ÔŸ8›	Öò]ÁÅŠ•''}ÌÚ¶vsˆI‚¸ä', '123', '2015-03-03 19:29:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE IF NOT EXISTS `users_session` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `macRulesTable`
--
ALTER TABLE `macRulesTable`
 ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `Stats`
--
ALTER TABLE `Stats`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `macRulesTable`
--
ALTER TABLE `macRulesTable`
MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Stats`
--
ALTER TABLE `Stats`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
