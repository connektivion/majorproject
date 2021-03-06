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
-- Table structure for table `vars20052012`
--

CREATE TABLE IF NOT EXISTS `vars20052012` (
  `station` tinytext,
  `r75` float DEFAULT NULL,
  `r125` float DEFAULT NULL,
  `Rx1Day` float DEFAULT NULL,
  `Rx5Day` float DEFAULT NULL,
  `SD2` float DEFAULT NULL,
  `PRCPTOT` float DEFAULT NULL,
  `CWD` float DEFAULT NULL,
  `CDD` float DEFAULT NULL,
  `R95pTOT` float DEFAULT NULL,
  `R99pTOT` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vars20052012`
--

INSERT INTO `vars20052012` (`station`, `r75`, `r125`, `Rx1Day`, `Rx5Day`, `SD2`, `PRCPTOT`, `CWD`, `CDD`, `R95pTOT`, `R99pTOT`) VALUES
('sargur', 64.3333, 64.3333, 65.3333, 0, 63.3333, 65.3333, 60.6667, 64.3333, 62.3333, 0),
('t narasipur', 64.3333, 65.3333, 65.3333, 0, 63.3333, 65.3333, 60.6667, 64.3333, 56.6667, 0),
('nanjanagud', 61.6667, 63.3333, 65.3333, 0, 61.6667, 65.3333, 60.6667, 65.3333, 65.3333, 0),
('mysore', 64.3333, 64.3333, 64.3333, 0, 58, 65.3333, 63.3333, 65.3333, 62.3333, 0),
('k r nagar', 64.3333, 63.3333, 65.3333, 0, 60.6667, 65.3333, 64.3333, 65.3333, 64.3333, 0),
('kollegal', 65.3333, 64.3333, 64.3333, 0, 64.3333, 65.3333, 59.6667, 65.3333, 60.6667, 0),
('hunsur', 65.3333, 64.3333, 65.3333, 0, 56.6667, 65.3333, 63.3333, 65.3333, 48, 0),
('begur', 64.3333, 63.3333, 65.3333, 64.3333, 48.6667, 65.3333, 62.3333, 65.3333, 58, 0),
('belur', 64.3333, 63.3333, 64.3333, 64.3333, 63.3333, 65.3333, 62.3333, 65.3333, 60.6667, 0),
('arkalgud', 63.3333, 63.3333, 61.6667, 64.3333, 60.6667, 65.3333, 64.3333, 65.3333, 62.3333, 0),
('surlabbi', 37, 37, 1, 37, 37, 37, 37, 48.6667, 37, 0),
('shanthahalli', 37, 37, 1, 37, 37, 37, 37, 48.6667, 37, 0),
('madapura', 37, 37, 0, 37, 36, 37, 37, 48.6667, 37, 0),
('galibeedu', 65.3333, 65.3333, 61.6667, 65.3333, 64.3333, 65.3333, 63.3333, 65.3333, 58, 0),
('ponnampet', 65.3333, 63.3333, 65.3333, 65.3333, 62.3333, 65.3333, 64.3333, 65.3333, 63.3333, 0),
('harangi', 64.3333, 61.6667, 64.3333, 65.3333, 59.6667, 65.3333, 64.3333, 65.3333, 64.3333, 0),
('hanbal', 64.3333, 65.3333, 65.3333, 65.3333, 64.3333, 65.3333, 63.3333, 65.3333, 61.6667, 0),
('hallimysore', 64.3333, 65.3333, 65.3333, 64.3333, 56.6667, 65.3333, 63.3333, 64.3333, 63.3333, 0),
('shantigrama', 63.3333, 64.3333, 63.3333, 65.3333, 56.6667, 65.3333, 61.6667, 64.3333, 60.6667, 0),
('nagamangala', 64.3333, 65.3333, 63.3333, 65.3333, 64.3333, 65.3333, 55.6667, 65.3333, 61.6667, 0),
('malavally', 64.3333, 64.3333, 63.3333, 63.3333, 63.3333, 64.3333, 59.6667, 64.3333, 48.6667, 0),
('maddur', 64.3333, 63.3333, 65.3333, 65.3333, 59.6667, 64.3333, 63.3333, 65.3333, 63.3333, 0),
('kikkeri', 64.3333, 64.3333, 65.3333, 65.3333, 64.3333, 65.3333, 59.6667, 64.3333, 60.6667, 0),
('turuvekere', 64.3333, 64.3333, 65.3333, 65.3333, 64.3333, 65.3333, 63.3333, 65.3333, 65.3333, 0),
('mayasandra', 63.3333, 64.3333, 64.3333, 65.3333, 64.3333, 65.3333, 60.6667, 64.3333, 37, 0),
('tumkur', 65.3333, 65.3333, 65.3333, 65.3333, 63.3333, 65.3333, 60.6667, 65.3333, 59.6667, 0),
('nonavinakere', 64.3333, 64.3333, 65.3333, 65.3333, 61.3333, 65.3333, 58, 65.3333, 56.6667, 0),
('chandrasekarpur', 64.3333, 62.3333, 63.3333, 65.3333, 56.6667, 65.3333, 60.6667, 65.3333, 60.6667, 0),
('channapatana', 65.3333, 65.3333, 65.3333, 65.3333, 61.6667, 65.3333, 60.6667, 65.3333, 53, 0),
('kanakapura', 65.3333, 65.3333, 65.3333, 65.3333, 63.3333, 65.3333, 62.3333, 65.3333, 54.6667, 0),
('kengeri', 64.3333, 65.3333, 65.3333, 65.3333, 60.6667, 65.3333, 60.6667, 65.3333, 63.3333, 0),
('ramanagaram', 63.3333, 65.3333, 65.3333, 65.3333, 63.3333, 65.3333, 60.6667, 65.3333, 58, 0),
('chamarajanagar', 64.3333, 65.3333, 63.3333, 65.3333, 56.6667, 65.3333, 62.3333, 65.3333, 56.6667, 0),
('kushalanagaar', 60.6667, 63.3333, 64.3333, 65.3333, 59.6667, 65.3333, 63.3333, 65.3333, 48.6667, 0),
('sukravarsanthe', 64.3333, 64.3333, 65.3333, 65.3333, 65.3333, 65.3333, 64.3333, 65.3333, 65.3333, 0),
('chickamagalur', 65.3333, 60.6667, 59.6667, 65.3333, 62.3333, 65.3333, 64.3333, 65.3333, 58, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
