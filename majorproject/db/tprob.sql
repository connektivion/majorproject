-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2016 at 06:15 AM
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
-- Table structure for table `tprob`
--

CREATE TABLE IF NOT EXISTS `tprob` (
  `start` int(10) DEFAULT NULL,
  `end` int(10) DEFAULT NULL,
  `interval` int(10) DEFAULT NULL,
  `station` tinytext,
  `SU` float DEFAULT NULL,
  `TR` float DEFAULT NULL,
  `DTR` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tprob`
--

INSERT INTO `tprob` (`start`, `end`, `interval`, `station`, `SU`, `TR`, `DTR`) VALUES
(1975, 2012, 38, '43260', 0.374921, 0.195339, 0.132748),
(1975, 2012, 38, '43263', 0.0739772, 0.349116, 0.351558),
(1975, 2012, 38, '43268', 0, 0, 0),
(1975, 2012, 38, '43287', 0.0395241, 0.00308292, 0.216337),
(1975, 2012, 38, '43291', 0.35335, 0.204328, 0.288624),
(1975, 2012, 38, '43296', 0.332303, 0.0143695, 0.00334162),
(1995, 2004, 10, '43260', 0.327417, 0.398942, 0.0173365),
(2005, 2012, 10, '43260', 0.158032, 0.372389, 0.109448),
(1975, 1984, 10, '43260', 0.182147, 0.397337, 0.143282),
(1985, 1994, 10, '43260', 0.0320936, 0.244916, 0.080545),
(1995, 2004, 10, '43263', 0.0109006, 0.39261, 0.00663804),
(2005, 2012, 10, '43263', 0.158032, 0.158032, 0.329472),
(1985, 1994, 10, '43263', 0.0173365, 0.327417, 0.37421),
(1975, 1984, 10, '43263', 0.345439, 0.171813, 0.10916),
(1995, 2004, 10, '43268', 0.398942, 0.398942, 0.398942),
(2005, 2012, 10, '43268', 0.398942, 0.398942, 0.398942),
(1985, 1994, 10, '43268', 0.398942, 0.398942, 0.398942),
(1975, 1984, 10, '43268', 0.28413, 0.345439, 0.37421),
(1995, 2004, 10, '43287', 0.360687, 0.254947, 0.39261),
(2005, 2012, 10, '43287', 0.158032, 0.31997, 0.329472),
(1985, 1994, 10, '43287', 0.398942, 0.398942, 0.182147),
(1975, 1984, 10, '43287', 0.39261, 0.242303, 0.398942),
(1995, 2004, 10, '43291', 0.398942, 0.0575593, 0.0575593),
(1985, 1994, 10, '43291', 0.392508, 0.182147, 0.267419),
(2005, 2012, 10, '43291', 0.352293, 0.274189, 0.372389),
(1975, 1984, 10, '43291', 0.398942, 0.398942, 0.37421),
(1995, 2004, 10, '43296', 0.325999, 0.201818, 0.37421),
(1985, 1994, 10, '43296', 0.344631, 0.224262, 0.267419),
(2005, 2012, 10, '43296', 0.372389, 0.395901, 0.274189),
(1975, 1984, 10, '43296', 0.397337, 0.0575593, 0.0173365);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
