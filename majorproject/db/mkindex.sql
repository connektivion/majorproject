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
-- Table structure for table `mkindex`
--

CREATE TABLE IF NOT EXISTS `mkindex` (
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
-- Dumping data for table `mkindex`
--

INSERT INTO `mkindex` (`station`, `r75`, `r125`, `Rx1Day`, `Rx5Day`, `SD2`, `PRCPTOT`, `CWD`, `CDD`, `R95pTOT`, `R99pTOT`) VALUES
('sargur', 95, 86, 40, -281, 54, 90, 22, -157, 88, 0),
('sargur', 95, 86, 40, -281, 54, 90, 22, -157, 88, 0),
('t narasipur', 40, 35, -58, 0, -196, 10, 165, -97, 168, 0),
('t narasipur', 40, 35, -58, 0, -196, 10, 165, -97, 168, 0),
('nanjanagud', -88, -72, 116, 0, -165, 19, 28, -55, 54, 0),
('nanjanagud', -88, -72, 116, 0, -165, 19, 28, -55, 54, 0),
('mysore', 97, 101, 47, 0, 13, 129, 49, -104, 108, 0),
('k r nagar', 0, -37, -20, 0, -99, 64, 6, 22, 24, 0),
('kollegal', -92, -47, -128, 0, -18, -89, -125, 110, -98, 0),
('kollegal', -92, -47, -128, 0, -18, -89, -125, 110, -98, 0),
('hunsur', 11, -39, 17, 0, -144, -45, -8, -26, 97, 0),
('begur', -119, -190, -17, 193, -260, -46, 170, -113, 90, 0),
('belur', -30, 59, 35, 93, -83, -10, 24, -55, -80, 0),
('belur', -30, 59, 35, 93, -83, -10, 24, -55, -80, 0),
('arkalgud', 9, -157, 147, 45, -92, 44, 99, -113, 104, 0),
('surlabbi', 71, 71, 73, 73, 71, 71, 71, -82, 71, 0),
('shanthahalli', 71, 71, 73, 73, 71, 71, 73, -82, 71, 0),
('madapura', 71, 71, 72, 71, 72, 71, 71, -82, 71, 0),
('chamarajanagar', -60, -28, -127, -107, -214, -35, -32, -75, -43, 0),
('galibeedu', 43, 107, -69, -39, 78, 31, -188, -34, 11, 0),
('ponnampet', 86, 77, 19, 8, -21, 67, 128, -129, 120, 0),
('ponnampet', 86, 77, 19, 8, -21, 67, 128, -129, 120, 0),
('kushalanagaar', -36, 16, 58, 89, 54, -1, -97, -52, 4, 0),
('kushalanagaar', -36, 16, 58, 89, 54, -1, -97, -52, 4, 0),
('harangi', 127, 155, 103, 102, 143, 168, 92, -232, 156, 0),
('harangi', 127, 155, 103, 102, 143, 168, 92, -232, 156, 0),
('sukravarsanthe', 16, -42, 53, 2, -33, -28, -48, -114, -14, 0),
('sukravarsanthe', 16, -42, 53, 2, -33, -28, -48, -114, -14, 0),
('hanbal', -49, -62, -69, -68, -99, -40, -84, -8, -45, 0),
('chickamagalur', 36, 37, 109, 68, -54, 63, 123, 18, 83, 0),
('chickamagalur', 36, 37, 109, 68, -54, 63, 123, 18, 83, 0),
('hallimysore', 66, 83, -21, 12, -151, 80, 86, -205, 144, 0),
('hallimysore', 66, 83, -21, 12, -151, 80, 86, -205, 144, 0),
('shantigrama', -68, -86, -130, -32, -145, -102, 30, -51, 46, 0),
('shantigrama', -68, -86, -130, -32, -145, -102, 30, -51, 46, 0),
('nagamangala', -120, -112, 73, 48, -123, -30, 20, -107, 25, 0),
('malavally', -222, -233, -172, -113, -166, -234, -87, 122, -167, 0),
('malavally', -222, -233, -172, -113, -166, -234, -87, 122, -167, 0),
('maddur', 23, 39, -89, 120, 136, -34, 1, 167, -91, 0),
('maddur', 23, 39, -89, 120, 136, -34, 1, 167, -91, 0),
('kikkeri', -69, -3, -46, -25, -89, -19, -25, -158, 7, 0),
('kikkeri', -69, -3, -46, -25, -89, -19, -25, -158, 7, 0),
('turuvekere', -4, 41, 19, 91, 94, 18, -78, -63, 46, 0),
('mayasandra', 2, -21, 98, 7, 21, 15, 142, -267, -5, 0),
('mayasandra', 2, -21, 98, 7, 21, 15, 142, -267, -5, 0),
('tumkur', 169, 114, -22, 67, 13, 72, 46, -76, 43, 0),
('tumkur', 169, 114, -22, 67, 13, 72, 46, -76, 43, 0),
('nonavinakere', 23, 32, 7, 22, -94, 24, 112, -137, 100, 0),
('chandrasekarpur', -76, -88, -151, -72, -202, -94, 62, -122, 67, 0),
('chandrasekarpur', -76, -88, -151, -72, -202, -94, 62, -122, 67, 0),
('channapatana', 268, 267, 283, 269, 273, 265, 271, -278, 257, 0),
('channapatana', 268, 267, 283, 269, 273, 265, 271, -278, 257, 0),
('kanakapura', 279, 281, 275, 259, 276, 279, 268, -284, 286, 0),
('kanakapura', 279, 281, 275, 259, 276, 279, 268, -284, 286, 0),
('kengeri', 278, 285, 277, 267, 276, 281, 288, -276, 222, 0),
('kengeri', 278, 285, 277, 267, 276, 281, 288, -276, 222, 0),
('ramanagaram', 270, 276, 285, 273, 276, 273, 270, -256, 279, 0),
('ramanagaram', 270, 276, 285, 273, 276, 273, 270, -256, 279, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
