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
-- Table structure for table `vars19952004`
--

CREATE TABLE IF NOT EXISTS `vars19952004` (
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
-- Dumping data for table `vars19952004`
--

INSERT INTO `vars19952004` (`station`, `r75`, `r125`, `Rx1Day`, `Rx5Day`, `SD2`, `PRCPTOT`, `CWD`, `CDD`, `R95pTOT`, `R99pTOT`) VALUES
('sargur', 121.333, 123, 125, 33, 120.333, 125, 123, 125, 114.333, 0),
('t narasipur', 123, 122, 124, 0, 120.333, 125, 111.667, 124, 116.333, 0),
('nanjanagud', 121.333, 125, 124, 0, 118.333, 125, 116.667, 124, 95.6667, 0),
('mysore', 123, 123, 91, 0, 115.333, 125, 123, 125, 123, 0),
('k r nagar', 123, 123, 63.3333, 0, 122, 124, 118.333, 123, 79.6667, 0),
('kollegal', 124, 124, 92, 0, 125, 125, 112.667, 125, 120.333, 0),
('hunsur', 125, 124, 92, 0, 119.333, 125, 120.333, 125, 119.333, 0),
('begur', 124, 123, 91, 0, 119.333, 125, 120.333, 124, 104.667, 0),
('belur', 124, 122, 123, 125, 112.667, 125, 124, 125, 120.333, 0),
('arkalgud', 124, 121.333, 115.333, 125, 116.667, 125, 121.333, 125, 103.667, 0),
('surlabbi', 0, 0, 0, 0, 0, 0, 0, 77, 0, 0),
('shanthahalli', 0, 0, 0, 0, 0, 0, 0, 77, 0, 0),
('madapura', 0, 0, 0, 0, 0, 0, 0, 77, 0, 0),
('galibeedu', 124, 122, 124, 125, 119.333, 125, 125, 124, 120.333, 0),
('ponnampet', 124, 125, 125, 125, 123, 125, 122, 125, 112.667, 0),
('harangi', 124, 123, 124, 125, 119.333, 125, 123, 124, 107.333, 0),
('hanbal', 125, 123, 91, 125, 120.333, 125, 121.333, 125, 125, 0),
('hallimysore', 125, 120.333, 125, 125, 120.333, 125, 119.333, 125, 123, 0),
('shantigrama', 124, 124, 123, 124, 122, 125, 121, 124, 111.667, 0),
('nagamangala', 123, 119.333, 125, 125, 118.333, 125, 116.667, 125, 118.333, 0),
('malavally', 123, 120.333, 125, 124, 122, 125, 111.667, 123, 117.667, 0),
('maddur', 123, 124, 124, 125, 119.333, 125, 107.333, 124, 120.333, 0),
('kikkeri', 124, 118.333, 92, 124, 121.333, 125, 114.333, 125, 116.333, 0),
('turuvekere', 120.333, 123, 91, 125, 123, 125, 107.333, 121.333, 117.667, 0),
('mayasandra', 123, 123, 92, 125, 123, 125, 116.667, 125, 59.6667, 0),
('tumkur', 123, 123, 92, 125, 123, 125, 123, 124, 112.667, 0),
('nonavinakere', 123, 122, 92, 125, 120.333, 125, 115.333, 125, 119.333, 0),
('chandrasekarpur', 124, 120.333, 124, 125, 123, 125, 119.333, 125, 99.6667, 0),
('channapatana', 59.6667, 59.6667, 1, 59.6667, 59.6667, 59.6667, 59.6667, 95.6667, 58.6667, 0),
('kanakapura', 59.6667, 59.6667, 1, 59.6667, 59.6667, 59.6667, 59.6667, 95.6667, 58.6667, 0),
('kengeri', 59.6667, 59.6667, 1, 59.6667, 59.6667, 59.6667, 59.6667, 95.6667, 33, 0),
('ramanagaram', 59.6667, 59.6667, 1, 59.6667, 58.6667, 59.6667, 59.6667, 95.6667, 59.6667, 0),
('chamarajanagar', 123, 125, 92, 125, 115.333, 125, 114.333, 125, 122, 0),
('kushalanagaar', 125, 123, 124, 125, 116.667, 124, 123, 123, 123, 0),
('sukravarsanthe', 125, 124, 91, 125, 121.333, 125, 125, 125, 125, 0),
('chickamagalur', 125, 124, 124, 125, 107.667, 125, 124, 124, 123, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
