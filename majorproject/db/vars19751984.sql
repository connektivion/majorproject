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
-- Table structure for table `vars19751984`
--

CREATE TABLE IF NOT EXISTS `vars19751984` (
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
-- Dumping data for table `vars19751984`
--

INSERT INTO `vars19751984` (`station`, `r75`, `r125`, `Rx1Day`, `Rx5Day`, `SD2`, `PRCPTOT`, `CWD`, `CDD`, `R95pTOT`, `R99pTOT`) VALUES
('sargur', 123, 123, 65.3333, 124, 122, 124, 123, 125, 123, 0),
('t narasipur', 121.333, 124, 92, 0, 116.333, 125, 112.667, 125, 123, 0),
('nanjanagud', 124, 120.333, 125, 0, 122, 125, 119.333, 125, 121.333, 0),
('mysore', 123, 124, 92, 0, 116.667, 125, 122, 125, 122, 0),
('k r nagar', 124, 124, 125, 0, 104.667, 125, 107.333, 125, 114.333, 0),
('kollegal', 124, 124, 125, 0, 122, 125, 94.6667, 124, 123, 0),
('hunsur', 123, 123, 124, 0, 119.333, 125, 123, 125, 115.333, 0),
('begur', 124, 124, 124, 0, 123, 125, 117.667, 125, 112.667, 0),
('belur', 124, 125, 124, 125, 124, 125, 118.333, 125, 122, 0),
('arkalgud', 123, 123, 124, 125, 115.333, 125, 115.333, 125, 125, 0),
('surlabbi', 0, 0, 0, 0, 0, 0, 0, 77, 0, 0),
('shanthahalli', 0, 0, 0, 0, 0, 0, 0, 77, 0, 0),
('madapura', 0, 0, 0, 0, 0, 0, 0, 77, 0, 0),
('galibeedu', 125, 124, 124, 125, 125, 125, 125, 125, 121.333, 0),
('ponnampet', 120.333, 121.333, 44.3333, 121.333, 120.333, 121.333, 121.333, 124, 121.333, 0),
('harangi', 115.333, 115.333, 27.3333, 115.333, 114.333, 116.333, 112.667, 121.333, 115.333, 0),
('hanbal', 125, 125, 125, 125, 123, 125, 123, 123, 123, 0),
('hallimysore', 124, 124, 65.3333, 124, 115.333, 124, 122, 125, 121.333, 0),
('shantigrama', 122, 123, 123, 125, 122, 125, 121, 125, 112.667, 0),
('nagamangala', 123, 120.333, 124, 125, 118.333, 125, 117.667, 125, 112.667, 0),
('malavally', 125, 125, 125, 125, 115.333, 125, 95.6667, 124, 122, 0),
('maddur', 124, 124, 125, 124, 119.333, 125, 118.333, 125, 120.333, 0),
('kikkeri', 125, 123, 124, 125, 123, 124, 119.333, 125, 106.667, 0),
('turuvekere', 124, 123, 64.3333, 124, 121, 124, 115.333, 125, 121, 0),
('mayasandra', 116.333, 114.333, 28.3333, 116.333, 116.333, 116.333, 111.667, 123, 80.6667, 0),
('tumkur', 123, 121, 65.3333, 123, 120.333, 124, 122, 125, 114.333, 0),
('nonavinakere', 124, 122, 65.3333, 124, 123, 124, 114.333, 125, 95.6667, 0),
('chandrasekarpur', 124, 123, 65.3333, 124, 122, 124, 115.333, 125, 80.6667, 0),
('channapatana', 0, 0, 0, 0, 0, 0, 0, 77, 0, 0),
('kanakapura', 0, 0, 0, 0, 0, 0, 0, 77, 0, 0),
('kengeri', 0, 0, 0, 0, 0, 0, 0, 77, 0, 0),
('ramanagaram', 0, 0, 0, 0, 0, 0, 0, 77, 0, 0),
('chamarajanagar', 124, 124, 124, 125, 120.333, 125, 116.333, 125, 123, 0),
('kushalanagaar', 124, 125, 125, 125, 119.333, 125, 125, 124, 114.333, 0),
('sukravarsanthe', 121.333, 124, 92, 124, 116.333, 125, 123, 123, 123, 0),
('chickamagalur', 108.333, 121.333, 125, 125, 116.333, 125, 116.667, 124, 121.333, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
