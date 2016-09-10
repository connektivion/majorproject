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
-- Table structure for table `mks19851994`
--

CREATE TABLE IF NOT EXISTS `mks19851994` (
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
-- Dumping data for table `mks19851994`
--

INSERT INTO `mks19851994` (`station`, `r75`, `r125`, `Rx1Day`, `Rx5Day`, `SD2`, `PRCPTOT`, `CWD`, `CDD`, `R95pTOT`, `R99pTOT`) VALUES
('sargur', 2, 2, 11, 19, 11, 19, -7, 11, 4, 0),
('t narasipur', 9, 9, 2, 0, -3, 11, 7, -4, 8, 0),
('nanjanagud', 12, 14, 6, 0, 13, 17, -1, 4, 17, 0),
('mysore', 19, 19, 5, 0, 11, 17, 11, -9, 23, 0),
('k r nagar', 0, 9, -15, 0, -9, -1, 7, 6, 5, 0),
('kollegal', -3, -3, -7, 0, -15, -1, 19, -10, 8, 0),
('hunsur', -8, -3, -3, 0, 2, -5, -8, 8, -4, 0),
('begur', -16, -9, -12, 0, -28, -3, 5, 4, 3, 0),
('belur', 14, 14, 27, 37, 32, 15, 10, 8, 0, 0),
('arkalgud', 18, 17, 8, 14, 20, 19, 10, -1, 15, 0),
('surlabbi', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0),
('shanthahalli', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0),
('madapura', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0),
('chamarajanagar', 0, -10, -9, 1, -12, -9, 13, -2, -7, 0),
('galibeedu', 2, 11, -2, 15, 6, 7, -8, -3, 5, 0),
('ponnampet', 21, 12, 10, 11, 17, 13, -4, -3, 12, 0),
('kushalanagaar', 9, 9, 21, 15, 13, 10, 2, 5, 7, 0),
('harangi', 17, 17, -9, 6, 16, 15, -2, 8, 10, 0),
('sukravarsanthe', 15, 9, -1, 14, -8, 11, 9, 5, 19, 0),
('hanbal', 5, 6, 4, 8, 10, 6, 2, 4, 5, 0),
('chickamagalur', 5, 4, 7, 25, 8, 13, -8, 6, 15, 0),
('hallimysore', -1, 0, 19, 17, -12, 5, 5, -7, 13, 0),
('shantigrama', -2, -3, -4, 0, 3, -2, -7, 8, -2, 0),
('nagamangala', -12, -11, -16, 1, -11, -11, 0, 13, -12, 0),
('malavally', -21, -17, -23, 1, -19, -15, 4, 9, -4, 0),
('maddur', -8, -6, -5, 1, 9, -3, -2, 0, -11, 0),
('kikkeri', 15, 14, -10, 7, 10, 3, -10, 12, 11, 0),
('turuvekere', -4, -3, 20, -4, 6, -1, -14, -11, -19, 0),
('mayasandra', -7, -14, 2, -1, 6, 1, -8, -10, 9, 0),
('tumkur', -9, -12, -9, -4, -13, -7, -19, 12, 4, 0),
('nonavinakere', -8, -8, 7, 7, 8, -3, -4, 3, 3, 0),
('chandrasekarpur', 6, 3, 12, 7, 21, 7, -21, 3, 12, 0),
('channapatana', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0),
('kanakapura', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0),
('kengeri', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0),
('ramanagaram', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
