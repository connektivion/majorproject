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
-- Table structure for table `prob`
--

CREATE TABLE IF NOT EXISTS `prob` (
  `start` int(10) DEFAULT NULL,
  `end` int(10) DEFAULT NULL,
  `interval` int(10) DEFAULT NULL,
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
-- Dumping data for table `prob`
--

INSERT INTO `prob` (`start`, `end`, `interval`, `station`, `r75`, `r125`, `Rx1Day`, `Rx5Day`, `SD2`, `PRCPTOT`, `CWD`, `CDD`, `R95pTOT`, `R99pTOT`) VALUES
(1975, 2012, 38, 'sargur', 0.197835, 0.224076, 0.346408, 0.000324064, 0.317872, 0.213311, 0.385152, 0.0581599, 0.216279, 0.398942),
(1975, 2012, 38, 't narasipur', 0.353423, 0.363801, 0.302072, 0.398942, 0.0186082, 0.396396, 0.0437949, 0.192269, 0.0417498, 0.398942),
(1975, 2012, 38, 'nanjanagud', 0.218034, 0.266749, 0.13997, 0.398942, 0.044824, 0.388857, 0.376079, 0.316764, 0.318152, 0.398942),
(1975, 2012, 38, 'mysore', 0.191674, 0.180148, 0.327725, 0.398942, 0.394191, 0.10925, 0.331857, 0.172345, 0.15865, 0.398942),
(1975, 2012, 38, 'k r nagar', 0.398942, 0.359789, 0.38576, 0.398942, 0.184912, 0.291492, 0.398129, 0.385236, 0.381598, 0.398942),
(1975, 2012, 38, 'kollegal', 0.206393, 0.337296, 0.100298, 0.398942, 0.389855, 0.216337, 0.110797, 0.15583, 0.18666, 0.398942),
(1975, 2012, 38, 'hunsur', 0.395792, 0.355569, 0.390287, 0.398942, 0.0759498, 0.342346, 0.397374, 0.379702, 0.183535, 0.398942),
(1975, 2012, 38, 'begur', 0.131745, 0.0232568, 0.390286, 0.000269032, 0.00176987, 0.339938, 0.0381919, 0.147781, 0.205448, 0.398942),
(1975, 2012, 38, 'belur', 0.373236, 0.305486, 0.364017, 0.204285, 0.231952, 0.396396, 0.382423, 0.316787, 0.239962, 0.398942),
(1975, 2012, 38, 'arkalgud', 0.396921, 0.0574508, 0.0735039, 0.342257, 0.203167, 0.3447, 0.185623, 0.147905, 0.166999, 0.398942),
(1975, 2012, 38, 'surlabbi', 0.0291977, 0.0291977, 0, 0.0250918, 0.0291977, 0.0291977, 0.0291977, 0.173284, 0.0291977, 0.398942),
(1975, 2012, 38, 'shanthahalli', 0.0291977, 0.0291977, 0, 0.0250918, 0.0291977, 0.0291977, 0.0250918, 0.173284, 0.0291977, 0.398942),
(1975, 2012, 38, 'madapura', 0.0291977, 0.0291977, 0.398942, 0.0291977, 0.0270037, 0.0291977, 0.0291977, 0.173284, 0.0291977, 0.398942),
(1975, 2012, 38, 'chamarajanagar', 0.30265, 0.376511, 0.102311, 0.16412, 0.00998894, 0.364112, 0.368981, 0.258614, 0.344603, 0.398942),
(1975, 2012, 38, 'galibeedu', 0.346914, 0.163843, 0.276444, 0.355919, 0.248353, 0.371554, 0.0250633, 0.366017, 0.395742, 0.398942),
(1975, 2012, 38, 'ponnampet', 0.225061, 0.252276, 0.386106, 0.3974, 0.386406, 0.282682, 0.110987, 0.109205, 0.128656, 0.398942),
(1975, 2012, 38, 'kushalanagaar', 0.362004, 0.391876, 0.308416, 0.216295, 0.316583, 0.398942, 0.191913, 0.324717, 0.398651, 0.398942),
(1975, 2012, 38, 'harangi', 0.112943, 0.060564, 0.126753, 0.177847, 0.0769621, 0.0438808, 0.206696, 0.0058363, 0.0551969, 0.398942),
(1975, 2012, 38, 'sukravarsanthe', 0.391889, 0.349224, 0.310355, 0.398911, 0.367712, 0.376605, 0.334869, 0.145117, 0.39364, 0.398942),
(1975, 2012, 38, 'hanbal', 0.332412, 0.297079, 0.250197, 0.279667, 0.185819, 0.353735, 0.231133, 0.397399, 0.342085, 0.398942),
(1975, 2012, 38, 'chickamagalur', 0.36193, 0.359864, 0.158243, 0.279782, 0.316655, 0.294429, 0.121595, 0.389922, 0.231992, 0.398942),
(1975, 2012, 38, 'hallimysore', 0.285288, 0.233081, 0.384397, 0.395143, 0.0661788, 0.243602, 0.223108, 0.0148342, 0.0769839, 0.398942),
(1975, 2012, 38, 'shantigrama', 0.279278, 0.224529, 0.08495, 0.369733, 0.0754084, 0.178135, 0.372809, 0.327327, 0.336722, 0.398942),
(1975, 2012, 38, 'nagamangala', 0.129384, 0.149707, 0.26465, 0.335011, 0.119818, 0.373286, 0.38711, 0.164073, 0.380761, 0.398942),
(1975, 2012, 38, 'malavally', 0.00832365, 0.00556442, 0.0394663, 0.147889, 0.044841, 0.00546232, 0.214023, 0.125275, 0.0425756, 0.398942),
(1975, 2012, 38, 'maddur', 0.383925, 0.355734, 0.216155, 0.130262, 0.091488, 0.36604, 0.398942, 0.0451409, 0.206621, 0.398942),
(1975, 2012, 38, 'kikkeri', 0.276508, 0.398815, 0.33545, 0.381179, 0.215016, 0.388854, 0.380639, 0.0567429, 0.397748, 0.398942),
(1975, 2012, 38, 'turuvekere', 0.398657, 0.351275, 0.386101, 0.210193, 0.199465, 0.389929, 0.244679, 0.294222, 0.338499, 0.398942),
(1975, 2012, 38, 'mayasandra', 0.39891, 0.386427, 0.115449, 0.397802, 0.3864, 0.392782, 0.0774019, 0.00146936, 0.398095, 0.398942),
(1975, 2012, 38, 'tumkur', 0.0424255, 0.14431, 0.381569, 0.282621, 0.394348, 0.267793, 0.338487, 0.255612, 0.344407, 0.398942),
(1975, 2012, 38, 'nonavinakere', 0.383904, 0.369575, 0.397496, 0.385266, 0.199672, 0.382599, 0.142807, 0.0924086, 0.17752, 0.398942),
(1975, 2012, 38, 'chandrasekarpur', 0.255359, 0.218439, 0.0492845, 0.267804, 0.0161247, 0.201383, 0.29301, 0.125321, 0.274171, 0.398942),
(1975, 2012, 38, 'channapatana', 0.0000307757, 0.0000331163, 0, 0.0000287372, 0.0000213092, 0.0000381221, 0.0000242346, 0.000244415, 0.0000307272, 0.398942),
(1975, 2012, 38, 'kanakapura', 0.0000139167, 0.0000119997, 0, 0.0000577851, 0.0000172085, 0.0000139167, 0.0000304158, 0.000176782, 0.0000075543, 0.398942),
(1975, 2012, 38, 'kengeri', 0.0000149407, 0.00000889317, 0, 0.0000331163, 0.000016904, 0.0000119997, 0.00000696777, 0.000271865, 0.000185899, 0.398942),
(1975, 2012, 38, 'ramanagaram', 0.0000263741, 0.0000173006, 0, 0.0000215708, 0.0000172085, 0.0000215708, 0.0000263741, 0.000755431, 0.0000132717, 0.398942),
(1995, 2004, 10, 'sargur', 0.198817, 0.106884, 0.143282, 0.151278, 0.00948009, 0.0109006, 0.344631, 0.143282, 0.257623, 0.398942),
(2005, 2012, 10, 'sargur', 0.242598, 0.301577, 0.329472, 0.398942, 0.21047, 0.214631, 0.370421, 0.386731, 0.298881, 0.398942),
(1995, 2004, 10, 't narasipur', 0.392508, 0.398942, 0.124399, 0.398942, 0.305787, 0.345439, 0.391861, 0.398942, 0.259567, 0.398942),
(1985, 1994, 10, 'sargur', 0.397337, 0.396884, 0.267419, 0.10916, 0.263302, 0.10916, 0.343515, 0.265685, 0.383676, 0.398942),
(2005, 2012, 10, 't narasipur', 0.386731, 0.329472, 0.398942, 0.398942, 0.327487, 0.372389, 0.266392, 0.352293, 0.395438, 0.398942),
(1975, 1984, 10, 'sargur', 0.373821, 0.398942, 0.274189, 0.384724, 0.360091, 0.398942, 0.140916, 0.143282, 0.373821, 0.398942),
(1995, 2004, 10, 'nanjanagud', 0.384417, 0.345439, 0.397337, 0.398942, 0.392256, 0.308838, 0.397236, 0.161025, 0.330519, 0.398942),
(1985, 1994, 10, 't narasipur', 0.307555, 0.307555, 0.397337, 0.398942, 0.392024, 0.267419, 0.343515, 0.384724, 0.325999, 0.398942),
(2005, 2012, 10, 'nanjanagud', 0.350404, 0.105068, 0.0712986, 0.398942, 0.177329, 0.109448, 0.0990832, 0.274189, 0.372389, 0.398942),
(1995, 2004, 10, 'mysore', 0.17984, 0.17984, 0.11588, 0.398942, 0.397216, 0.143282, 0.392508, 0.267419, 0.0557756, 0.398942),
(1975, 1984, 10, 't narasipur', 0.397302, 0.327417, 0.390363, 0.398942, 0.259567, 0.39261, 0.357048, 0.398942, 0.392508, 0.398942),
(1985, 1994, 10, 'nanjanagud', 0.244916, 0.201818, 0.360687, 0.398942, 0.219308, 0.143282, 0.398942, 0.384724, 0.143282, 0.398942),
(2005, 2012, 10, 'mysore', 0.386731, 0.242598, 0.242598, 0.398942, 0.0929368, 0.274189, 0.398942, 0.372389, 0.298881, 0.398942),
(1975, 1984, 10, 'nanjanagud', 0.161025, 0.343515, 0.398942, 0.398942, 0.397311, 0.37421, 0.118857, 0.345439, 0.198817, 0.398942),
(1995, 2004, 10, 'k r nagar', 0.265685, 0.373821, 0.37158, 0.398942, 0.398942, 0.397337, 0.217101, 0.398942, 0.389052, 0.398942),
(1985, 1994, 10, 'mysore', 0.10916, 0.103809, 0.37421, 0.398942, 0.260835, 0.143282, 0.263302, 0.307555, 0.0533957, 0.398942),
(2005, 2012, 10, 'k r nagar', 0.352293, 0.270961, 0.0436883, 0.398942, 0.147166, 0.398942, 0.242598, 0.274189, 0.242598, 0.398942),
(1995, 2004, 10, 'kollegal', 0.397337, 0.360687, 0.398942, 0.398942, 0.37421, 0.39261, 0.278481, 0.398942, 0.305787, 0.398942),
(1975, 1984, 10, 'mysore', 0.398942, 0.244916, 0.365717, 0.398942, 0.237519, 0.37421, 0.397311, 0.308838, 0.360091, 0.398942),
(1985, 1994, 10, 'k r nagar', 0.398942, 0.307555, 0.182147, 0.398942, 0.303003, 0.398942, 0.339551, 0.360687, 0.360827, 0.398942),
(2005, 2012, 10, 'kollegal', 0.274189, 0.301577, 0.352293, 0.398942, 0.242598, 0.372389, 0.348884, 0.395901, 0.147166, 0.398942),
(1995, 2004, 10, 'hunsur', 0.398942, 0.287782, 0.182401, 0.398942, 0.28413, 0.308838, 0.392366, 0.224262, 0.398942, 0.398942),
(1975, 1984, 10, 'k r nagar', 0.161025, 0.201818, 0.345439, 0.398942, 0.397041, 0.224262, 0.397088, 0.37421, 0.301549, 0.398942),
(1985, 1994, 10, 'kollegal', 0.392508, 0.39261, 0.345439, 0.398942, 0.182147, 0.398942, 0.0935106, 0.287782, 0.323377, 0.398942),
(2005, 2012, 10, 'hunsur', 0.372389, 0.386731, 0.214631, 0.398942, 0.368487, 0.395901, 0.398942, 0.398942, 0.394808, 0.398942),
(1975, 1984, 10, 'kollegal', 0.0930532, 0.384724, 0.39261, 0.398942, 0.397311, 0.37421, 0.349595, 0.384724, 0.140916, 0.398942),
(1995, 2004, 10, 'begur', 0.327417, 0.392508, 0.396756, 0.398942, 0.155412, 0.39261, 0.305787, 0.398942, 0.0711151, 0.398942),
(1985, 1994, 10, 'hunsur', 0.327417, 0.392366, 0.392508, 0.398942, 0.397302, 0.37421, 0.322592, 0.327417, 0.377297, 0.398942),
(2005, 2012, 10, 'begur', 0.386731, 0.21047, 0.214631, 0.130275, 0.241144, 0.214631, 0.386345, 0.372389, 0.398942, 0.398942),
(1975, 1984, 10, 'hunsur', 0.265685, 0.307555, 0.398942, 0.398942, 0.19651, 0.398942, 0.398942, 0.37421, 0.280805, 0.398942),
(1995, 2004, 10, 'belur', 0.360687, 0.326359, 0.398942, 0.080545, 0.278481, 0.345439, 0.244916, 0.267419, 0.392366, 0.398942),
(1985, 1994, 10, 'begur', 0.161025, 0.307555, 0.244916, 0.398942, 0.0197803, 0.39261, 0.37272, 0.384724, 0.392402, 0.398942),
(2005, 2012, 10, 'belur', 0.398942, 0.270961, 0.398942, 0.18339, 0.37158, 0.214631, 0.0296625, 0.214631, 0.324658, 0.398942),
(1975, 1984, 10, 'begur', 0.327417, 0.287782, 0.327417, 0.398942, 0.398942, 0.39261, 0.342353, 0.345439, 0.320974, 0.398942),
(1995, 2004, 10, 'arkalgud', 0.384724, 0.397302, 0.397216, 0.143282, 0.398942, 0.398942, 0.384417, 0.182147, 0.292989, 0.398942),
(1985, 1994, 10, 'belur', 0.199576, 0.201818, 0.0267041, 0.00223629, 0.00711545, 0.182147, 0.286245, 0.327417, 0.398942, 0.398942),
(2005, 2012, 10, 'arkalgud', 0.153477, 0.21047, 0.0814206, 0.0869645, 0.204636, 0.0712986, 0.0545533, 0.214631, 0.0511795, 0.398942),
(1975, 1984, 10, 'belur', 0.0134326, 0.0267041, 0.244916, 0.080545, 0.0134326, 0.0267041, 0.304415, 0.37421, 0.0127063, 0.398942),
(1995, 2004, 10, 'surlabbi', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.388714, 0.398942, 0.398942),
(1985, 1994, 10, 'arkalgud', 0.121253, 0.140916, 0.327417, 0.201818, 0.090859, 0.10916, 0.285724, 0.398942, 0.16587, 0.398942),
(2005, 2012, 10, 'surlabbi', 0.103282, 0.103282, 2.14637e-32, 0.0569897, 0.103282, 0.103282, 0.103282, 0.115085, 0.103282, 0.398942),
(1975, 1984, 10, 'arkalgud', 0.265685, 0.222172, 0.384724, 0.10916, 0.397216, 0.182147, 0.236098, 0.182147, 0.37421, 0.398942),
(1995, 2004, 10, 'shanthahalli', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.388714, 0.398942, 0.398942),
(1985, 1994, 10, 'surlabbi', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.395557, 0.398942, 0.398942),
(2005, 2012, 10, 'shanthahalli', 0.103282, 0.103282, 2.14637e-32, 0.0569897, 0.103282, 0.103282, 0.0569897, 0.115085, 0.103282, 0.398942),
(1975, 1984, 10, 'surlabbi', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.388714, 0.398942, 0.398942),
(1995, 2004, 10, 'madapura', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.388714, 0.398942, 0.398942),
(1985, 1994, 10, 'shanthahalli', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.395557, 0.398942, 0.398942),
(2005, 2012, 10, 'madapura', 0.103282, 0.103282, 0.398942, 0.103282, 0.0743112, 0.103282, 0.103282, 0.115085, 0.103282, 0.398942),
(1975, 1984, 10, 'shanthahalli', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.388714, 0.398942, 0.398942),
(1995, 2004, 10, 'chamarajanagar', 0.344631, 0.224262, 0.32805, 0.345439, 0.280805, 0.37421, 0.301549, 0.398942, 0.199576, 0.398942),
(1985, 1994, 10, 'madapura', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.395557, 0.398942, 0.398942),
(2005, 2012, 10, 'chamarajanagar', 0.130275, 0.109448, 0.327487, 0.0712986, 0.137163, 0.214631, 0.0828162, 0.398942, 0.368487, 0.398942),
(1975, 1984, 10, 'madapura', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.388714, 0.398942, 0.398942),
(1995, 2004, 10, 'galibeedu', 0.384724, 0.384495, 0.360687, 0.308838, 0.19651, 0.182147, 0.37421, 0.360687, 0.137703, 0.398942),
(1985, 1994, 10, 'chamarajanagar', 0.398942, 0.287782, 0.308838, 0.398942, 0.242303, 0.308838, 0.220033, 0.397337, 0.33787, 0.398942),
(2005, 2012, 10, 'galibeedu', 0.395901, 0.395901, 0.12412, 0.214631, 0.0545533, 0.0712986, 0.0675251, 0.329472, 0.140571, 0.398942),
(1975, 1984, 10, 'chamarajanagar', 0.397337, 0.397337, 0.327417, 0.37421, 0.373282, 0.398942, 0.171813, 0.37421, 0.265685, 0.398942),
(1995, 2004, 10, 'ponnampet', 0.287782, 0.308838, 0.308838, 0.37421, 0.0255554, 0.224262, 0.360091, 0.143282, 0.320974, 0.398942),
(1975, 1984, 10, 'galibeedu', 0.224262, 0.161025, 0.0472641, 0.0575593, 0.267419, 0.143282, 0.308838, 0.308838, 0.359889, 0.398942),
(2005, 2012, 10, 'ponnampet', 0.329472, 0.21047, 0.372389, 0.0436883, 0.178873, 0.109448, 0.242598, 0.214631, 0.37158, 0.398942),
(1985, 1994, 10, 'galibeedu', 0.397337, 0.267419, 0.397337, 0.182147, 0.360091, 0.345439, 0.327417, 0.39261, 0.373282, 0.398942),
(1995, 2004, 10, 'kushalanagaar', 0.345439, 0.344631, 0.398942, 0.398942, 0.397236, 0.360687, 0.140916, 0.106884, 0.373821, 0.398942),
(1975, 1984, 10, 'ponnampet', 0.305787, 0.157845, 0.00000000232953, 0.00141527, 0.0364324, 0.0197803, 0.0648129, 0.0472641, 0.157845, 0.398942),
(1985, 1994, 10, 'ponnampet', 0.0784766, 0.244916, 0.287782, 0.267419, 0.140916, 0.224262, 0.384724, 0.39261, 0.244916, 0.398942),
(2005, 2012, 10, 'kushalanagaar', 0.370421, 0.21047, 0.398942, 0.372389, 0.119356, 0.395901, 0.398942, 0.329472, 0.394865, 0.398942),
(1995, 2004, 10, 'harangi', 0.244916, 0.265685, 0.0930532, 0.224262, 0.240287, 0.308838, 0.0784766, 0.124399, 0.103808, 0.398942),
(1975, 1984, 10, 'kushalanagaar', 0.161025, 0.37421, 0.267419, 0.398942, 0.398942, 0.37421, 0.182147, 0.397337, 0.371982, 0.398942),
(1985, 1994, 10, 'kushalanagaar', 0.305787, 0.308838, 0.080545, 0.182147, 0.209357, 0.287782, 0.397337, 0.37421, 0.340829, 0.398942),
(2005, 2012, 10, 'harangi', 0.386731, 0.29795, 0.386731, 0.109448, 0.0771969, 0.274189, 0.386731, 0.329472, 0.386731, 0.398942),
(1995, 2004, 10, 'sukravarsanthe', 0.37421, 0.287782, 0.255638, 0.398942, 0.285724, 0.398942, 0.182147, 0.39261, 0.37421, 0.398942),
(1975, 1984, 10, 'harangi', 0.0834112, 0.150412, 0.000125147, 0.058966, 0.069376, 0.0498282, 0.0803788, 0.0124678, 0.0169184, 0.398942),
(1985, 1994, 10, 'harangi', 0.137703, 0.143282, 0.308838, 0.360687, 0.155412, 0.182147, 0.397337, 0.327417, 0.280805, 0.398942),
(2005, 2012, 10, 'sukravarsanthe', 0.301577, 0.386731, 0.214631, 0.109448, 0.109448, 0.274189, 0.242598, 0.395901, 0.274189, 0.398942),
(1995, 2004, 10, 'hanbal', 0.398942, 0.307555, 0.255638, 0.182147, 0.103809, 0.224262, 0.325999, 0.267419, 0.345439, 0.398942),
(1985, 1994, 10, 'sukravarsanthe', 0.182147, 0.308838, 0.398942, 0.201818, 0.327417, 0.267419, 0.308838, 0.37421, 0.10916, 0.398942),
(1975, 1984, 10, 'sukravarsanthe', 0.397302, 0.360687, 0.390363, 0.287782, 0.37243, 0.37421, 0.398942, 0.344631, 0.344631, 0.398942),
(2005, 2012, 10, 'hanbal', 0.386731, 0.274189, 0.274189, 0.0712986, 0.0545533, 0.329472, 0.37158, 0.329472, 0.29795, 0.398942),
(1995, 2004, 10, 'chickamagalur', 0.10916, 0.201818, 0.384724, 0.398942, 0.3916, 0.224262, 0.161025, 0.0930532, 0.344631, 0.398942),
(1975, 1984, 10, 'hanbal', 0.267419, 0.39261, 0.182147, 0.0398378, 0.106884, 0.345439, 0.140916, 0.398942, 0.392508, 0.398942),
(1985, 1994, 10, 'hanbal', 0.373821, 0.360687, 0.372389, 0.327417, 0.287782, 0.360687, 0.397337, 0.384724, 0.373282, 0.398942),
(2005, 2012, 10, 'chickamagalur', 0.395901, 0.395668, 0.385792, 0.214631, 0.298881, 0.398942, 0.301577, 0.109448, 0.261492, 0.398942),
(1995, 2004, 10, 'hallimysore', 0.37421, 0.305787, 0.398942, 0.080545, 0.343515, 0.39261, 0.359268, 0.345439, 0.222172, 0.398942),
(1985, 1994, 10, 'chickamagalur', 0.373821, 0.384724, 0.344631, 0.0398378, 0.326359, 0.224262, 0.327417, 0.360687, 0.176692, 0.398942),
(1975, 1984, 10, 'chickamagalur', 0.391645, 0.359889, 0.10916, 0.0575593, 0.214842, 0.39261, 0.397236, 0.124399, 0.325999, 0.398942),
(2005, 2012, 10, 'hallimysore', 0.301577, 0.329472, 0.214631, 0.242598, 0.258906, 0.329472, 0.012271, 0.301577, 0.37158, 0.398942),
(1995, 2004, 10, 'shantigrama', 0.360687, 0.360687, 0.265685, 0.287782, 0.158648, 0.224262, 0.398942, 0.161025, 0.371361, 0.398942),
(1985, 1994, 10, 'hallimysore', 0.398942, 0.398942, 0.10916, 0.143282, 0.237519, 0.37421, 0.373282, 0.345439, 0.214078, 0.398942),
(1975, 1984, 10, 'hallimysore', 0.384724, 0.397337, 0.013651, 0.201818, 0.322592, 0.397337, 0.286245, 0.182147, 0.384417, 0.398942),
(2005, 2012, 10, 'shantigrama', 0.395805, 0.352293, 0.327487, 0.398942, 0.368487, 0.274189, 0.12412, 0.352293, 0.395668, 0.398942),
(1995, 2004, 10, 'nagamangala', 0.344631, 0.28413, 0.224262, 0.39261, 0.342648, 0.308838, 0.383848, 0.345439, 0.0736019, 0.398942),
(1985, 1994, 10, 'shantigrama', 0.397311, 0.392508, 0.372389, 0.398942, 0.392366, 0.397337, 0.340829, 0.327417, 0.397236, 0.398942),
(1975, 1984, 10, 'shantigrama', 0.360091, 0.140916, 0.392508, 0.39261, 0.242964, 0.224262, 0.373419, 0.37421, 0.233186, 0.398942),
(2005, 2012, 10, 'nagamangala', 0.242598, 0.109448, 0.37158, 0.372389, 0.0869645, 0.214631, 0.22452, 0.372389, 0.237436, 0.398942),
(1995, 2004, 10, 'malavally', 0.344631, 0.305787, 0.308838, 0.360687, 0.397311, 0.37421, 0.16587, 0.373821, 0.342353, 0.398942),
(1985, 1994, 10, 'nagamangala', 0.244916, 0.267419, 0.161025, 0.398942, 0.263906, 0.267419, 0.398942, 0.224262, 0.242964, 0.398942),
(2005, 2012, 10, 'malavally', 0.242598, 0.301577, 0.37158, 0.21047, 0.270961, 0.18339, 0.398942, 0.242598, 0.308576, 0.398942),
(1975, 1984, 10, 'nagamangala', 0.265685, 0.392366, 0.360687, 0.398942, 0.392256, 0.398942, 0.30395, 0.37421, 0.278481, 0.398942),
(1995, 2004, 10, 'maddur', 0.373821, 0.397337, 0.397337, 0.267419, 0.398942, 0.345439, 0.0511346, 0.327417, 0.398942, 0.398942),
(1985, 1994, 10, 'malavally', 0.080545, 0.140916, 0.0575593, 0.398942, 0.106884, 0.182147, 0.383848, 0.308838, 0.384178, 0.398942),
(2005, 2012, 10, 'maddur', 0.0321586, 0.012271, 0.109448, 0.0436883, 0.119356, 0.00927346, 0.395805, 0.274189, 0.153477, 0.398942),
(1975, 1984, 10, 'malavally', 0.308838, 0.224262, 0.37421, 0.0575593, 0.191743, 0.10916, 0.330519, 0.327417, 0.06546, 0.398942),
(1995, 2004, 10, 'kikkeri', 0.244916, 0.372863, 0.231676, 0.384724, 0.198817, 0.37421, 0.130227, 0.345439, 0.0218317, 0.398942),
(1985, 1994, 10, 'maddur', 0.327417, 0.360687, 0.37421, 0.398942, 0.306235, 0.39261, 0.397088, 0.398942, 0.254947, 0.398942),
(2005, 2012, 10, 'kikkeri', 0.386731, 0.301577, 0.158032, 0.158032, 0.00927346, 0.329472, 0.348884, 0.386731, 0.324658, 0.398942),
(1975, 1984, 10, 'maddur', 0.327417, 0.327417, 0.37421, 0.397337, 0.359268, 0.224262, 0.26146, 0.398942, 0.137703, 0.398942),
(1995, 2004, 10, 'turuvekere', 0.373282, 0.307555, 0.34774, 0.224262, 0.392508, 0.39261, 0.355085, 0.285724, 0.260835, 0.398942),
(1985, 1994, 10, 'kikkeri', 0.17984, 0.201818, 0.287782, 0.345439, 0.286245, 0.39261, 0.280805, 0.244916, 0.263302, 0.398942),
(2005, 2012, 10, 'turuvekere', 0.352293, 0.398942, 0.274189, 0.372389, 0.0178144, 0.398942, 0.398942, 0.395901, 0.395901, 0.398942),
(1975, 1984, 10, 'kikkeri', 0.345439, 0.373821, 0.384724, 0.345439, 0.222172, 0.287782, 0.324897, 0.224262, 0.398942, 0.398942),
(1995, 2004, 10, 'mayasandra', 0.344631, 0.344631, 0.398942, 0.224262, 0.373821, 0.308838, 0.323377, 0.143282, 0.348884, 0.398942),
(1985, 1994, 10, 'turuvekere', 0.384417, 0.392508, 0.0930532, 0.384724, 0.360091, 0.398942, 0.191743, 0.267419, 0.10069, 0.398942),
(2005, 2012, 10, 'mayasandra', 0.395805, 0.398942, 0.352293, 0.274189, 0.130275, 0.398942, 0.395668, 0.386731, 0.245263, 0.398942),
(1975, 1984, 10, 'turuvekere', 0.327417, 0.307555, 0.301577, 0.397337, 0.343799, 0.384724, 0.322592, 0.345439, 0.053991, 0.398942),
(1995, 2004, 10, 'tumkur', 0.392508, 0.265685, 0.137497, 0.308838, 0.392508, 0.267419, 0.392508, 0.360687, 0.233186, 0.398942),
(1985, 1994, 10, 'mayasandra', 0.345439, 0.198817, 0.396756, 0.398942, 0.360687, 0.398942, 0.324897, 0.287782, 0.266972, 0.398942),
(2005, 2012, 10, 'tumkur', 0.329472, 0.214631, 0.274189, 0.274189, 0.270961, 0.214631, 0.370421, 0.158032, 0.119356, 0.398942),
(1975, 1984, 10, 'mayasandra', 0.37243, 0.371982, 0.0043543, 0.37243, 0.171813, 0.303003, 0.254947, 0.140916, 0.398942, 0.398942),
(1985, 1994, 10, 'tumkur', 0.307555, 0.244916, 0.308838, 0.384724, 0.219308, 0.345439, 0.0991132, 0.244916, 0.383676, 0.398942),
(1995, 2004, 10, 'nonavinakere', 0.398942, 0.384495, 0.365717, 0.37421, 0.373282, 0.345439, 0.280805, 0.345439, 0.155412, 0.398942),
(2005, 2012, 10, 'nonavinakere', 0.398942, 0.301577, 0.329472, 0.329472, 0.100595, 0.398942, 0.395518, 0.329472, 0.31997, 0.398942),
(1975, 1984, 10, 'tumkur', 0.307555, 0.373419, 0.372389, 0.307555, 0.343515, 0.327417, 0.199576, 0.398942, 0.1693, 0.398942),
(1985, 1994, 10, 'nonavinakere', 0.327417, 0.327417, 0.344631, 0.345439, 0.324897, 0.39261, 0.383676, 0.39261, 0.392366, 0.398942),
(1995, 2004, 10, 'chandrasekarpur', 0.287782, 0.137703, 0.201818, 0.143282, 0.398942, 0.182147, 0.324897, 0.308838, 0.149238, 0.398942),
(2005, 2012, 10, 'chandrasekarpur', 0.386731, 0.298881, 0.37158, 0.372389, 0.395438, 0.329472, 0.266392, 0.109448, 0.266392, 0.398942),
(1975, 1984, 10, 'nonavinakere', 0.327417, 0.286245, 0.274189, 0.161025, 0.307555, 0.201818, 0.371982, 0.398942, 0.366938, 0.398942),
(1995, 2004, 10, 'channapatana', 0.0466917, 0.0466917, 0, 0.0466917, 0.0466917, 0.0466917, 0.0771969, 0.104673, 0.0586275, 0.398942),
(1985, 1994, 10, 'chandrasekarpur', 0.359889, 0.392366, 0.244916, 0.345439, 0.080545, 0.345439, 0.0493148, 0.39261, 0.240287, 0.398942),
(2005, 2012, 10, 'channapatana', 0.274189, 0.274189, 0.372389, 0.395901, 0.386211, 0.329472, 0.324658, 0.329472, 0.398942, 0.398942),
(1975, 1984, 10, 'chandrasekarpur', 0.360687, 0.373821, 0.372389, 0.397337, 0.398942, 0.360687, 0.397216, 0.345439, 0.294447, 0.398942),
(1995, 2004, 10, 'kanakapura', 0.0466917, 0.0466917, 0, 0.0771969, 0.0466917, 0.0466917, 0.0771969, 0.104673, 0.0586275, 0.398942),
(1985, 1994, 10, 'channapatana', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.395557, 0.398942, 0.398942),
(2005, 2012, 10, 'kanakapura', 0.274189, 0.274189, 0.372389, 0.274189, 0.327487, 0.395901, 0.398942, 0.274189, 0.317399, 0.398942),
(1975, 1984, 10, 'channapatana', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.388714, 0.398942, 0.398942),
(1995, 2004, 10, 'kengeri', 0.0466917, 0.0466917, 0, 0.0466917, 0.0466917, 0.0466917, 0.0466917, 0.0733643, 0.151278, 0.398942),
(1985, 1994, 10, 'kanakapura', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.395557, 0.398942, 0.398942),
(2005, 2012, 10, 'kengeri', 0.130275, 0.274189, 0.329472, 0.0436883, 0.266392, 0.329472, 0.395668, 0.158032, 0.21047, 0.398942),
(1975, 1984, 10, 'kanakapura', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.388714, 0.398942, 0.398942),
(1985, 1994, 10, 'kengeri', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.395557, 0.398942, 0.398942),
(1995, 2004, 10, 'ramanagaram', 0.0466917, 0.0466917, 0, 0.0466917, 0.0586275, 0.0466917, 0.0466917, 0.104673, 0.0466917, 0.398942),
(2005, 2012, 10, 'ramanagaram', 0.327487, 0.372389, 0.395901, 0.395901, 0.37158, 0.395901, 0.370421, 0.013651, 0.395518, 0.398942),
(1975, 1984, 10, 'kengeri', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.388714, 0.398942, 0.398942),
(1985, 1994, 10, 'ramanagaram', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.395557, 0.398942, 0.398942),
(1975, 1984, 10, 'ramanagaram', 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.398942, 0.388714, 0.398942, 0.398942);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;