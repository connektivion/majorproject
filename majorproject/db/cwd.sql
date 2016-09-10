-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2016 at 06:12 AM
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
-- Table structure for table `cwd`
--

CREATE TABLE IF NOT EXISTS `cwd` (
  `station` tinytext,
  `mks197510` float DEFAULT NULL,
  `prob197510` float DEFAULT NULL,
  `mks198510` float DEFAULT NULL,
  `prob198510` float DEFAULT NULL,
  `mks199510` float DEFAULT NULL,
  `prob199510` float DEFAULT NULL,
  `mks200510` float DEFAULT NULL,
  `prob200510` float DEFAULT NULL,
  `mks197538` float DEFAULT NULL,
  `prob197538` float DEFAULT NULL,
  `sen197510` float DEFAULT NULL,
  `sen198510` float DEFAULT NULL,
  `sen199510` float DEFAULT NULL,
  `sen200510` float DEFAULT NULL,
  `sen197538` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cwd`
--

INSERT INTO `cwd` (`station`, `mks197510`, `prob197510`, `mks198510`, `prob198510`, `mks199510`, `prob199510`, `mks200510`, `prob200510`, `mks197538`, `prob197538`, `sen197510`, `sen198510`, `sen199510`, `sen200510`, `sen197538`) VALUES
('sargur', 1.44267, 0.140916, -0.546964, 0.343515, -0.541002, 0.344631, -0.385164, 0.370421, 0.26525, 0.385152, 1.29167, -0.2, -0.291667, 0, 0),
('t narasipur', 0.471055, 0.357048, 0.546964, 0.343515, -0.189264, 0.391861, -0.898717, 0.266392, 2.10205, 0.0437949, 0, 0.183333, 0, -0.5, 0.0714286),
('nanjanagud', -1.55621, 0.118857, 0, 0.398942, 0.0925819, 0.397236, -1.66905, 0.0990832, 0.343566, 0.376079, -0.472222, 0, 0, -0.5, 0),
('mysore', -0.0905357, 0.397311, 0.911607, 0.263302, -0.180334, 0.392508, 0, 0.398942, 0.606818, 0.331857, 0, 0.414286, -0.166667, 0, 0.0377493),
('k r nagar', -0.0965236, 0.397088, 0.567791, 0.339551, 1.10313, 0.217101, -0.997406, 0.242598, 0.0638651, 0.398129, 0, 0, 0.225, -0.4, 0),
('kollegal', 0.513891, 0.349595, 1.70337, 0.0935106, 0.847899, 0.278481, 0.517838, 0.348884, -1.6007, 0.110797, 0, 0.25, 0.145833, 0.142857, 0),
('hunsur', 0, 0.398942, -0.65181, 0.322592, -0.182321, 0.392366, 0, 0.398942, -0.0887476, 0.397374, 0, -0.0625, 0, 0, 0),
('begur', 0.553126, 0.342353, 0.368751, 0.37272, -0.729286, 0.305787, -0.25332, 0.386345, 2.16619, 0.0381919, 0.171429, 0.0555556, -0.154762, 0, 0.0588235),
('belur', -0.735423, 0.304415, 0.814822, 0.286245, -0.987829, 0.244916, -2.27988, 0.0296625, 0.290821, 0.382423, -0.183333, 0.5625, -0.690476, -1, 0),
('arkalgud', -1.02427, 0.236098, 0.817058, 0.285724, -0.272353, 0.384417, -1.99481, 0.0545533, 1.23701, 0.185623, -0.145833, 1.1, -0.142857, -3, 0.111111),
('surlabbi', 0, 0.398942, 0, 0.398942, 0, 0.398942, 1.64399, 0.103282, 2.2868, 0.0291977, 0, 0, 0, 0, 0),
('shanthahalli', 0, 0.398942, 0, 0.398942, 0, 0.398942, 1.97279, 0.0569897, 2.35214, 0.0250918, 0, 0, 0, 0, 0),
('madapura', 0, 0.398942, 0, 0.398942, 0, 0.398942, 1.64399, 0.103282, 2.2868, 0.0291977, 0, 0, 0, 0, 0),
('galibeedu', -0.715542, 0.308838, -0.628619, 0.327417, 0.357771, 0.37421, -1.88484, 0.0675251, -2.35262, 0.0250633, -2.5, -2.1, 1.75, -3.75, -0.650452),
('ponnampet', 1.90647, 0.0648129, -0.269408, 0.384724, 0.452679, 0.360091, -0.997406, 0.242598, 1.59963, 0.110987, 3.38095, -0.183333, 0.5, -1, 0.259259),
('harangi', 1.79001, 0.0803788, -0.0898027, 0.397337, -1.80334, 0.0784766, -0.249352, 0.386731, 1.1468, 0.206696, 2.38095, -0.3125, -0.816667, -0.166667, 0.213959),
('hanbal', -1.44267, 0.140916, 0.0898027, 0.397337, -0.63549, 0.325999, -0.376969, 0.37158, -1.04482, 0.231133, -0.733333, 0.821429, -0.625, -0.6, -0.180195),
('hallimysore', 0.814822, 0.286245, 0.364643, 0.373282, -0.457709, 0.359268, -2.63878, 0.012271, 1.07811, 0.223108, 0.716667, 0.266667, -0.0625, -1, 0.0557276),
('shantigrama', 0.363636, 0.373419, -0.561133, 0.340829, 0, 0.398942, -1.52811, 0.12412, 0.368102, 0.372809, 0.225, 0, 0, -0.6, 0),
('nagamangala', -0.737501, 0.30395, 0, 0.398942, -0.277746, 0.383848, -1.07224, 0.22452, 0.245384, 0.38711, -0.142857, 0, 0, -0.2, 0),
('malavally', -0.613438, 0.330519, 0.277746, 0.383848, -1.32485, 0.16587, 0, 0.398942, -1.11601, 0.214023, 0, 0, -0.142857, 0, 0),
('maddur', 0.919278, 0.26146, -0.0965236, 0.397088, 2.02699, 0.0511346, -0.125656, 0.395805, 0, 0.398942, 0.211111, 0, 0.309524, 0, 0),
('kikkeri', -0.640793, 0.324897, -0.838042, 0.280805, -1.49635, 0.130227, 0.517838, 0.348884, -0.306477, 0.380639, -0.133929, -0.171429, -0.25, 0.25, 0),
('turuvekere', -0.65181, 0.322592, -1.2105, 0.191743, -0.482618, 0.355085, 0, 0.398942, -0.988806, 0.244679, -0.111111, -0.183333, 0, 0, 0),
('mayasandra', 0.946319, 0.254947, -0.640793, 0.324897, 0.648073, 0.323377, 0.128388, 0.395668, 1.81097, 0.0774019, 0.333333, -0.133929, 0.133929, 0, 0.0588235),
('tumkur', -1.17696, 0.199576, -1.66886, 0.0991132, -0.180334, 0.392508, 0.385164, 0.370421, 0.573291, 0.338487, -0.464286, -0.409722, -0.166667, 0.2, 0),
('nonavinakere', 0.374088, 0.371982, -0.279347, 0.383676, 0.838042, 0.280805, 0.131306, 0.395518, 1.4334, 0.142807, 0, 0, 0.145833, 0, 0),
('chandrasekarpur', 0.0931158, 0.397216, -2.04479, 0.0493148, 0.640793, 0.324897, -0.898717, 0.266392, 0.785632, 0.29301, 0, -0.166667, 0.1875, -0.166667, 0),
('channapatana', 0, 0.398942, 0, 0.398942, 1.81243, 0.0771969, -0.641941, 0.324658, 4.40654, 0.0000242346, 0, 0, 0, -0.2, 0),
('kanakapura', 0, 0.398942, 0, 0.398942, 1.81243, 0.0771969, 0, 0.398942, 4.35468, 0.0000304158, 0, 0, 0, 0, 0),
('kengeri', 0, 0.398942, 0, 0.398942, 2.07135, 0.0466917, -0.128388, 0.395668, 4.68087, 0.00000696777, 0, 0, 0, 0, 0),
('ramanagaram', 0, 0.398942, 0, 0.398942, 2.07135, 0.0466917, -0.385164, 0.370421, 4.3873, 0.0000263741, 0, 0, 0, 0, 0),
('chamarajanagar', 1.29801, 0.171813, 1.09091, 0.220033, -0.748177, 0.301549, -1.77324, 0.0828162, -0.395148, 0.368981, 0.3875, 0.5, -0.0625, -0.571429, 0),
('kushalanagaar', -1.2522, 0.182147, 0.0898027, 0.397337, -1.44267, 0.140916, 0, 0.398942, -1.20977, 0.191913, -1.26786, 0.392857, -0.875, 0, -0.100111),
('sukravarsanthe', 0, 0.398942, 0.715542, 0.308838, 1.2522, 0.182147, -0.997406, 0.242598, -0.591737, 0.334869, 0, 3.8, 1.92857, -0.6, -0.0923295),
('chickamagalur', 0.0925819, 0.397236, -0.628619, 0.327417, -1.34704, 0.161025, -0.748055, 0.301577, 1.54151, 0.121595, 0, -0.25, -0.583333, -0.4, 0.1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
