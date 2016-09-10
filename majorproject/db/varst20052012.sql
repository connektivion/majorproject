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
-- Table structure for table `varst20052012`
--

CREATE TABLE IF NOT EXISTS `varst20052012` (
  `station` tinytext,
  `SU` float DEFAULT NULL,
  `TR` float DEFAULT NULL,
  `DTR` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `varst20052012`
--

INSERT INTO `varst20052012` (`station`, `SU`, `TR`, `DTR`) VALUES
('43260', 65.3333, 65.3333, 65.3333),
('43263', 65.3333, 65.3333, 65.3333),
('43268', 0, 0, 0),
('43287', 65.3333, 56.6667, 65.3333),
('43291', 64.3333, 65.3333, 65.3333),
('43296', 65.3333, 65.3333, 65.3333);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
