-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2016 at 06:16 AM
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
-- Table structure for table `vars19851994`
--

CREATE TABLE IF NOT EXISTS `vars19851994` (
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
-- Dumping data for table `vars19851994`
--

INSERT INTO `vars19851994` (`station`, `r75`, `r125`, `Rx1Day`, `Rx5Day`, `SD2`, `PRCPTOT`, `CWD`, `CDD`, `R95pTOT`, `R99pTOT`) VALUES
('sargur', 124, 96.6667, 125, 125, 120.333, 125, 120.333, 123, 115.333, 0),
('t narasipur', 123, 123, 124, 0, 114.333, 125, 120.333, 124, 121.333, 0),
('nanjanagud', 124, 124, 124, 0, 120.333, 125, 111.667, 124, 125, 0),
('mysore', 125, 120.333, 125, 0, 117.667, 125, 120.333, 123, 120.333, 0),
('k r nagar', 124, 123, 125, 0, 116.333, 125, 111.667, 124, 79.6667, 0),
('kollegal', 123, 125, 125, 0, 125, 125, 111.667, 124, 116.667, 0),
('hunsur', 124, 120.333, 123, 0, 121.333, 125, 115.333, 124, 80.6667, 0),
('begur', 124, 123, 124, 0, 121.333, 125, 117.667, 124, 121, 0),
('belur', 122, 124, 125, 125, 119.333, 125, 122, 124, 119.333, 0),
('arkalgud', 121.333, 123, 124, 124, 122, 125, 121.333, 125, 111.667, 0),
('surlabbi', 0, 0, 0, 0, 0, 0, 0, 58.6667, 0, 0),
('shanthahalli', 0, 0, 0, 0, 0, 0, 0, 58.6667, 0, 0),
('madapura', 0, 0, 0, 0, 0, 0, 0, 58.6667, 0, 0),
('galibeedu', 124, 125, 124, 125, 122, 125, 124, 125, 120.333, 0),
('ponnampet', 123, 124, 124, 125, 123, 125, 124, 125, 124, 0),
('harangi', 120.333, 125, 125, 124, 119.333, 125, 124, 124, 115.333, 0),
('hanbal', 123, 124, 65.3333, 124, 124, 124, 124, 124, 120.333, 0),
('hallimysore', 116.333, 115.333, 125, 125, 116.667, 125, 120.333, 125, 115.667, 0),
('shantigrama', 122, 123, 65.3333, 124, 120.333, 124, 114.333, 124, 116.667, 0),
('nagamangala', 124, 125, 124, 125, 121, 125, 107.333, 125, 122, 0),
('malavally', 125, 123, 125, 125, 123, 125, 116.667, 125, 119.333, 0),
('maddur', 124, 124, 125, 125, 121, 125, 107.333, 124, 111.667, 0),
('kikkeri', 123, 124, 124, 125, 122, 125, 115.333, 124, 120.333, 0),
('turuvekere', 121.333, 123, 124, 124, 122, 125, 115.333, 125, 117.667, 0),
('mayasandra', 125, 121.333, 91, 125, 124, 125, 119.333, 124, 79.6667, 0),
('tumkur', 123, 124, 125, 124, 120.333, 125, 116.333, 124, 115.333, 0),
('nonavinakere', 124, 124, 123, 125, 119.333, 125, 115.333, 125, 120.333, 0),
('chandrasekarpur', 121.333, 120.333, 124, 125, 125, 125, 95.6667, 125, 119.333, 0),
('channapatana', 0, 0, 0, 0, 0, 0, 0, 58.6667, 0, 0),
('kanakapura', 0, 0, 0, 0, 0, 0, 0, 58.6667, 0, 0),
('kengeri', 0, 0, 0, 0, 0, 0, 0, 58.6667, 0, 0),
('ramanagaram', 0, 0, 0, 0, 0, 0, 0, 58.6667, 0, 0),
('chamarajanagar', 124, 124, 125, 125, 121.333, 125, 121, 124, 108.333, 0),
('kushalanagaar', 120.333, 125, 125, 125, 111.667, 124, 124, 125, 114.333, 0),
('sukravarsanthe', 125, 125, 125, 124, 124, 125, 125, 125, 125, 0),
('chickamagalur', 123, 124, 123, 125, 122, 125, 124, 124, 120.333, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
