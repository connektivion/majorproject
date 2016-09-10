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
-- Table structure for table `mks20052012`
--

CREATE TABLE IF NOT EXISTS `mks20052012` (
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
-- Dumping data for table `mks20052012`
--

INSERT INTO `mks20052012` (`station`, `r75`, `r125`, `Rx1Day`, `Rx5Day`, `SD2`, `PRCPTOT`, `CWD`, `CDD`, `R95pTOT`, `R99pTOT`) VALUES
('sargur', 9, 7, 6, 0, 10, 10, -4, 3, 7, 0),
('t narasipur', -3, -6, 0, 0, 6, -4, -8, 5, -2, 0),
('nanjanagud', -5, -14, -16, 0, -11, -14, -14, 8, -4, 0),
('mysore', -3, -9, -9, 0, -14, -8, 0, 4, -7, 0),
('k r nagar', -5, -8, -18, 0, -12, 0, -9, 8, 9, 0),
('kollegal', -8, -7, 5, 0, 9, -4, 5, 2, -12, 0),
('hunsur', -4, -3, 10, 0, -4, 2, 0, 0, -2, 0),
('begur', -3, -10, 10, 13, -8, -10, -3, 4, 0, 0),
('belur', -1, -8, 1, -11, -4, -10, -19, 10, -6, 0),
('arkalgud', -12, -10, -15, -15, -10, -16, -17, 10, -17, 0),
('surlabbi', 11, 11, 13, 13, 11, 11, 11, -12, 11, 0),
('shanthahalli', 11, 11, 13, 13, 11, 11, 13, -12, 11, 0),
('madapura', 11, 11, 12, 11, 12, 11, 11, -12, 11, 0),
('chamarajanagar', -13, -14, -6, -16, -12, -10, -15, 0, -4, 0),
('galibeedu', -2, -2, -13, -10, -17, -16, -16, -6, 12, 0),
('ponnampet', -6, -10, -4, -18, -11, -14, -9, 10, 4, 0),
('kushalanagaar', -4, -10, 1, 4, -13, -2, 0, 6, 2, 0),
('harangi', -3, -7, -3, -14, -15, -8, -3, 6, 3, 0),
('sukravarsanthe', 7, 3, -10, -14, -14, -8, -9, 2, -8, 0),
('hanbal', -3, -8, -8, -16, -17, -6, -4, 6, 7, 0),
('chickamagalur', -2, -2, -3, -10, -7, 0, -7, 14, 8, 0),
('hallimysore', -7, -6, 10, -9, -8, -6, -22, 7, -4, 0),
('shantigrama', -2, 5, -6, 0, 4, -8, -13, 5, -2, 0),
('nagamangala', -9, -14, -4, -4, -15, -10, -9, 4, -9, 0),
('malavally', -9, -7, -4, -10, -8, -11, -1, 9, -6, 0),
('maddur', -19, -22, -14, -18, -13, -23, -2, 8, -12, 0),
('kikkeri', -3, -7, -12, -12, -23, -6, 5, 3, 6, 0),
('turuvekere', 5, 1, -8, -4, -21, 0, 0, -2, 2, 0),
('mayasandra', 2, -1, 5, -8, -13, 0, 2, 3, 7, 0),
('tumkur', -6, -10, -8, -8, -8, -10, 4, 12, -13, 0),
('nonavinakere', -1, -7, -6, -6, -14, 0, 2, 6, 6, 0),
('chandrasekarpur', -3, -7, 4, -4, -2, -6, -8, 14, -8, 0),
('channapatana', -8, -8, 4, -2, 3, -6, -6, 6, -1, 0),
('kanakapura', -8, -8, 4, -8, -6, -2, -1, 8, 6, 0),
('kengeri', -13, -8, -6, -18, -8, -6, -2, 12, -10, 0),
('ramanagaram', -6, -4, -2, -2, 4, -2, -4, 22, -2, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
