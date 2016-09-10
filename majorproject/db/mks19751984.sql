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
-- Table structure for table `mks19751984`
--

CREATE TABLE IF NOT EXISTS `mks19751984` (
  `station` tinytext,
  `r75` int(11) DEFAULT NULL,
  `r125` int(11) DEFAULT NULL,
  `Rx1Day` int(11) DEFAULT NULL,
  `Rx5Day` int(11) DEFAULT NULL,
  `SD2` int(11) DEFAULT NULL,
  `PRCPTOT` int(11) DEFAULT NULL,
  `CWD` int(11) DEFAULT NULL,
  `CDD` int(11) DEFAULT NULL,
  `R95pTOT` int(11) DEFAULT NULL,
  `R99pTOT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mks19751984`
--

INSERT INTO `mks19751984` (`station`, `r75`, `r125`, `Rx1Day`, `Rx5Day`, `SD2`, `PRCPTOT`, `CWD`, `CDD`, `R95pTOT`, `R99pTOT`) VALUES
('sargur', 5, -1, 8, 4, 6, 0, 17, -17, 5, 0),
('t narasipur', -2, -8, 3, 0, 11, -3, 6, -1, -3, 0),
('nanjanagud', -16, -7, -1, 0, -2, -5, -18, 7, -14, 0),
('mysore', -1, 12, 5, 0, 12, 5, -2, -9, 6, 0),
('k r nagar', -16, -14, -7, 0, -2, -13, -2, 5, -9, 0),
('kollegal', -20, -4, 3, 0, 2, -5, 6, -4, -17, 0),
('hunsur', -11, -9, 0, 0, 14, 1, -1, 5, -10, 0),
('begur', -8, -10, -8, 0, -1, -3, 7, -7, -8, 0),
('belur', -30, -27, -12, -21, -30, -27, -9, 5, -30, 0),
('arkalgud', -11, -13, -4, -19, -2, -15, -12, 15, -5, 0),
('surlabbi', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0),
('shanthahalli', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0),
('madapura', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0),
('chamarajanagar', -2, -2, 8, -5, 5, -1, 15, -5, -11, 0),
('galibeedu', -13, -16, -24, -23, -11, -17, -9, 9, -6, 0),
('ponnampet', 9, 16, 42, 38, 25, 28, 22, -24, 16, 0),
('kushalanagaar', -16, -5, 11, 1, 0, -5, -15, 2, -5, 0),
('harangi', 20, 16, 22, 22, 21, 23, 20, -30, 28, 0),
('sukravarsanthe', -2, -6, -3, 10, 5, -5, -1, 7, 7, 0),
('hanbal', -11, -3, 15, 25, 19, 7, -17, -1, 3, 0),
('chickamagalur', -3, 6, 19, 23, 13, 3, 2, 18, -8, 0),
('hallimysore', -4, 2, 22, 14, 8, 2, 10, -15, -4, 0),
('shantigrama', -6, -17, 3, 3, 12, -13, 5, 5, -12, 0),
('nagamangala', -11, 3, -6, 1, 3, 1, -9, 5, -10, 0),
('malavally', -9, -13, 5, -23, 14, -19, -7, 8, -22, 0),
('maddur', -8, -8, -5, -2, -6, -13, 11, 1, -17, 0),
('kikkeri', -7, -5, 4, -7, -13, -10, -8, 13, 0, 0),
('turuvekere', -8, -9, -7, 2, -7, -4, -8, 7, -23, 0),
('mayasandra', 5, 5, 17, 5, 15, 9, 11, -17, 0, 0),
('tumkur', -9, -5, -4, 9, 7, -8, -14, -1, -15, 0),
('nonavinakere', -8, -10, -8, -16, -9, -14, 5, 1, -5, 0),
('chandrasekarpur', 6, 5, 4, 2, 0, 6, 2, 7, -8, 0),
('channapatana', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0),
('kanakapura', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0),
('kengeri', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0),
('ramanagaram', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
