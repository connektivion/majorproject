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
-- Table structure for table `mks19952004`
--

CREATE TABLE IF NOT EXISTS `mks19952004` (
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
-- Dumping data for table `mks19952004`
--

INSERT INTO `mks19952004` (`station`, `r75`, `r125`, `Rx1Day`, `Rx5Day`, `SD2`, `PRCPTOT`, `CWD`, `CDD`, `R95pTOT`, `R99pTOT`) VALUES
('sargur', -14, -19, -17, -9, -31, -31, -7, -17, -11, 0),
('t narasipur', -3, 0, -18, 0, -9, -7, -3, 0, -11, 0),
('nanjanagud', -4, 7, -2, 0, -3, 9, 2, -16, -7, 0),
('mysore', -15, -15, -16, 0, -2, -17, -3, -11, -23, 0),
('k r nagar', -11, -5, -4, 0, 0, 2, 13, 1, -3, 0),
('kollegal', 2, 6, 1, 0, -5, 3, 10, -1, 9, 0),
('hunsur', -1, -10, -13, 0, -10, -9, -3, -13, 0, 0),
('begur', -8, -3, 2, 0, 16, -3, -9, 0, -20, 0),
('belur', -6, -8, -1, 21, -10, -7, -12, -11, -3, 0),
('arkalgud', 4, -2, -2, 17, 0, -1, -4, -15, 9, 0),
('surlabbi', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0),
('shanthahalli', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0),
('madapura', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0),
('chamarajanagar', -7, -13, -7, -7, -10, -5, -9, -1, -14, 0),
('galibeedu', -4, -4, -6, -9, -14, -15, 5, 6, -17, 0),
('ponnampet', -10, -9, -9, -5, -27, -13, 6, -17, 8, 0),
('kushalanagaar', -7, -7, 0, -1, -2, -6, -17, -19, -5, 0),
('harangi', -12, -11, -20, -13, -12, -9, -21, -18, -18, 0),
('sukravarsanthe', -5, -10, 10, -1, -10, 1, 15, -3, -5, 0),
('hanbal', 1, -9, -10, -15, -19, -13, -8, 11, -7, 0),
('chickamagalur', -19, -14, 4, -1, -3, -13, -16, 20, -7, 0),
('hallimysore', 5, 9, 1, 21, 7, 3, -6, -7, 13, 0),
('shantigrama', -6, -6, -11, -10, -16, -13, -1, -16, -5, 0),
('nagamangala', -7, -10, 13, -3, 7, -9, -4, -7, -21, 0),
('malavally', -7, -9, -9, -6, -2, -5, -15, -5, -7, 0),
('maddur', 5, 2, -2, 11, 0, 7, 22, -8, -1, 0),
('kikkeri', -12, -5, 11, 4, 14, -5, -17, -7, -27, 0),
('turuvekere', 5, 9, 6, 13, 3, 3, -6, -10, 11, 0),
('mayasandra', 7, 7, -1, 13, -5, 9, 8, -17, 5, 0),
('tumkur', -3, -11, -15, -9, 3, -11, -3, -6, -12, 0),
('nonavinakere', -1, -4, 5, 5, 5, -7, 10, -7, -16, 0),
('chandrasekarpur', 10, 17, 14, 17, -1, 15, 8, -9, 15, 0),
('channapatana', 17, 17, 17, 17, 17, 17, 15, -17, 16, 0),
('kanakapura', 17, 17, 17, 15, 17, 17, 15, -17, 16, 0),
('kengeri', 17, 17, 17, 17, 17, 17, 17, -19, 9, 0),
('ramanagaram', 17, 17, 17, 17, 16, 17, 17, -17, 17, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
