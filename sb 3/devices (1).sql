-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2015 at 04:54 PM
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
  `user_total` int(255) NOT NULL,
  `total_all` varchar(255) NOT NULL,
  `time_start` int(255) NOT NULL,
  `time_end` int(255) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_name`, `MAC_address`, `Block`, `user_total`, `total_all`, `time_start`, `time_end`, `ip`) VALUES
(1, 'moes iphone', '00:0a:95:9d:68:16', 0, 250, '25 GB', 10, 12, '127.0.0.1'),
(2, 'Marc''s Mac', '00:0a:95:9d:68:15', 1, 100, '10 GB', 4, 6, '127.0.0.2'),
(3, 'Jacquie Mac', '0123.4567.89ab', 1, 600, '5 GB', 6, 9, '168.1.2.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
