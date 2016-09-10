-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2016 at 06:18 AM
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
-- Table structure for table `mkst19752012`
--

CREATE TABLE IF NOT EXISTS `mkst19752012` (
  `station` tinytext,
  `SU` int(11) DEFAULT NULL,
  `TR` int(11) DEFAULT NULL,
  `DTR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mkst19752012`
--

INSERT INTO `mkst19752012` (`station`, `SU`, `TR`, `DTR`) VALUES
('43260', 29, 96, 119),
('43263', -147, 42, -41),
('43268', -270, -273, -285),
('43287', -172, -244, 89),
('43291', -40, 93, 65),
('43296', -49, 206, -247);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
