-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2016 at 06:17 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `major`
--

-- --------------------------------------------------------

--
-- Table structure for table `varst19752012`
--

CREATE TABLE IF NOT EXISTS `varst19752012` (
  `station` tinytext,
  `SU` float DEFAULT NULL,
  `TR` float DEFAULT NULL,
  `DTR` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `varst19752012`
--

INSERT INTO `varst19752012` (`station`, `SU`, `TR`, `DTR`) VALUES
('43260', 6312.33, 6319.33, 6327),
('43263', 6325, 6300, 6327),
('43268', 119.333, 125, 125),
('43287', 6324, 6071.33, 6327),
('43291', 6266.67, 6325, 6327),
('43296', 6303, 6322, 6327);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
