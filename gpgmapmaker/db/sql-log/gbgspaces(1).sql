-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14-Fev-2023 às 12:53
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gbgspaces`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id_cfg` int(11) NOT NULL AUTO_INCREMENT,
  `scene` varchar(255) NOT NULL,
  `total_px` int(11) NOT NULL,
  `total_tiles` int(11) NOT NULL,
  UNIQUE KEY `id_cfg` (`id_cfg`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id_cfg`, `scene`, `total_px`, `total_tiles`) VALUES
(1, 'Pavilhao_9', 180, 40),
(2, 'tancredo neves km 6', 180, 40),
(3, 'trainArk', 100, 200),
(4, 'x', 100, 200);

-- --------------------------------------------------------

--
-- Estrutura da tabela `initiale`
--

DROP TABLE IF EXISTS `initiale`;
CREATE TABLE IF NOT EXISTS `initiale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `init` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ended` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scene` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `initiale`
--

INSERT INTO `initiale` (`id`, `init`, `ended`, `scene`) VALUES
(1, '0', '0', ''),
(2, '0', '0', ''),
(3, '0', '0', ''),
(4, '0', '0', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pear`
--

DROP TABLE IF EXISTS `pear`;
CREATE TABLE IF NOT EXISTS `pear` (
  `id_pe` int(11) NOT NULL AUTO_INCREMENT,
  `link1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `llink4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `scene` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `coin_pe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `drop_pe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `greytile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blacktile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pe`)
) ENGINE=MyISAM AUTO_INCREMENT=318 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `pear`
--

INSERT INTO `pear` (`id_pe`, `link1`, `link2`, `link3`, `llink4`, `x`, `y`, `scene`, `linkc`, `coin_pe`, `drop_pe`, `greytile`, `blacktile`) VALUES
(1, 'andar23', 'andar30', 'andar33', 'andar45', 2, 3, '', '', NULL, '', '', ''),
(2, 'andar22', 'andar23', 'andar34', 'andar8', NULL, NULL, '', '', NULL, '', '', ''),
(3, 'andar_23', 'andar-3', 'andar_40', 'andar_3', 2, 3, 'mapa_da_ruas_de_sigdu', 'andar floor', NULL, '', '', ''),
(4, NULL, 'norte', NULL, 'sul', 3, 2, 'Pavilhao_9', '../maps/keypoint_2001.php', NULL, '', 'grey', ''),
(5, NULL, 'leste', NULL, 'oeste', 3, 2, 'Pavilhao_9', '../maps/keypoint_2002.php', NULL, '', '', ''),
(6, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2003.php', NULL, '', '', ''),
(7, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2004.php', NULL, '', '', ''),
(8, NULL, 'leste', NULL, 'oeste', 3, 2, 'Pavilhao_9', '../maps/keypoint_2004.php', NULL, '', 'grey', ''),
(9, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2005.php', NULL, '../static/03.png', '', ''),
(10, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2006.php', NULL, '', 'grey', ''),
(11, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2007.php', NULL, '', 'grey', ''),
(12, 'norte', 'leste', 'sul', 'oeste', 31, 1, 'Pavilhao_9', '../maps/keypoint_2008.php', NULL, '', '', ''),
(13, 'norte', 'leste', 'sul', 'oeste', 31, 2, 'Pavilhao_9', '../maps/keypoint_2009.php', NULL, '', '', ''),
(14, 'norte', 'leste', 'sul', 'oeste', 31, 3, 'Pavilhao_9', '../maps/keypoint_2010.php', NULL, '', '', ''),
(15, 'norte', 'leste', 'sul', 'oeste', 31, 4, 'Pavilhao_9', '../maps/keypoint_2011.php', NULL, '', '', ''),
(16, 'norte', 'leste', 'sul', 'oeste', 31, 5, 'Pavilhao_9', '../maps/keypoint_2012.php', NULL, '', '', ''),
(17, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2013.php', NULL, '', 'grey', ''),
(18, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2014.php', NULL, '', 'grey', ''),
(19, 'norte', 'leste', 'sul', 'oeste', 32, 1, 'Pavilhao_9', '../maps/keypoint_2015.php', NULL, '', '', ''),
(20, 'norte', 'leste', 'sul', 'oeste', 32, 2, 'Pavilhao_9', '../maps/keypoint_2016.php', NULL, '', '', ''),
(21, 'norte', 'leste', 'sul', 'oeste', 32, 3, 'Pavilhao_9', '../maps/keypoint_2017.php', NULL, '', '', ''),
(22, 'norte', 'leste', 'sul', 'oeste', 32, 4, 'Pavilhao_9', '../maps/keypoint_2018.php', NULL, '', '', ''),
(23, 'norte', 'leste', 'sul', 'oeste', 32, 5, 'Pavilhao_9', '../maps/keypoint_2019.php', NULL, '', '', ''),
(24, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2020.php', NULL, '', 'grey', ''),
(25, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2021.php', NULL, '', 'grey', ''),
(26, 'norte', 'leste', 'sul', 'oeste', 33, 1, 'Pavilhao_9', '../maps/keypoint_2022.php', NULL, '', '', ''),
(27, 'norte', 'leste', 'sul', 'oeste', 33, 2, 'Pavilhao_9', '../maps/keypoint_2023.php', NULL, '', 'grey', ''),
(28, 'norte', 'leste', 'sul', 'oeste', 33, 3, 'Pavilhao_9', '../maps/keypoint_2024.php', NULL, '', '', ''),
(29, 'norte', 'leste', 'sul', 'oeste', 33, 4, 'Pavilhao_9', '../maps/keypoint_2025.php', NULL, '', '', ''),
(30, 'norte', 'leste', 'sul', 'oeste', 33, 5, 'Pavilhao_9', '../maps/keypoint_2026.php', NULL, '', '', ''),
(31, 'norte', 'leste', 'sul', 'oeste', 33, 6, 'Pavilhao_9', '../maps/keypoint_2027.php', NULL, '', 'grey', ''),
(33, 'norte', 'leste', 'sul', 'oeste', 33, 7, 'Pavilhao_9', '../maps/keypoint_2028.php', NULL, '', '', ''),
(34, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(37, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(38, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(39, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(40, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(44, NULL, 'norte', NULL, 'sul', 3, 2, 'Pavilhao_9', '../maps/keypoint_2001.php', NULL, '', '', ''),
(45, NULL, 'leste', NULL, 'oeste', 3, 2, 'Pavilhao_9', '../maps/keypoint_2002.php', NULL, '', '', ''),
(46, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2003.php', '../static/bitmap.png', 'null', '', ''),
(47, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2004.php', NULL, '../static/03.png', '', ''),
(48, NULL, 'leste', NULL, 'oeste', 3, 2, 'Pavilhao_9', '../maps/keypoint_2004.php', NULL, '', '', ''),
(49, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2005.php', NULL, '../static/03.png', '', ''),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(53, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(54, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(55, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(56, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(57, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(58, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(59, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(60, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(61, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(62, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(63, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(64, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(65, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(66, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(67, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(68, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(69, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(70, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(71, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(72, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(73, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(74, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(75, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(76, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(77, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(78, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(79, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(80, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(81, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(82, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(83, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(90, 'norte', 'leste', 'sul', 'oeste', 20, 35, 'cruzamento VI', '../maps/keypoint_2035.html', NULL, '', '', ''),
(89, 'norte', 'leste', 'sul', 'oeste', 20, 34, 'cruzamento VI', '../maps/keypoint_2034.html', NULL, '', '', ''),
(88, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2033.html', NULL, '', 'grey', ''),
(87, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2032.html', NULL, '', 'grey', ''),
(86, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2031.html', NULL, '', 'grey', ''),
(85, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2030.html', NULL, '', 'grey', ''),
(84, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2029.html', NULL, '', 'grey', ''),
(91, 'norte', 'leste', 'sul', 'oeste', 20, 36, 'cruzamento VI', '../maps/keypoint_2036.html', NULL, '', '', ''),
(92, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2037.html', NULL, '', 'grey', ''),
(93, 'norte', 'leste', 'sul', 'oeste', 20, 38, 'cruzamento VI', '../maps/keypoint_2038.html', NULL, '', '', ''),
(94, 'norte', 'leste', 'sul', 'oeste', 20, 39, 'cruzamento VI', '../maps/keypoint_2039.html', NULL, '', '', ''),
(95, 'norte', 'leste', 'sul', 'oeste', 20, 40, 'cruzamento VI', '../maps/keypoint_2040.html', NULL, '', '', ''),
(96, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2041.html', NULL, '', 'grey', ''),
(97, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2042.html', NULL, '', 'grey', ''),
(98, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2043.html', NULL, '', 'grey', ''),
(99, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2044.html', NULL, '', 'grey', ''),
(100, NULL, NULL, NULL, NULL, NULL, NULL, 'rua_tancredo_neves', '../maps/keypoint_2045.html', NULL, '', 'grey', ''),
(101, NULL, NULL, NULL, NULL, NULL, NULL, 'rua_tancredo_neves', '../maps/keypoint_2046.html', NULL, '', 'grey', ''),
(102, NULL, NULL, NULL, NULL, NULL, NULL, 'rua_tancredo_neves', '../maps/keypoint_2047.html', NULL, '', 'grey', ''),
(103, NULL, NULL, NULL, NULL, NULL, NULL, 'rua_tancredo_neves', '../maps/keypoint_2048.html', NULL, '', 'grey', ''),
(104, 'norte', 'leste', 'sul', 'oeste', 20, 49, 'rua_tancredo_neves', '../maps/keypoint_2049.html', NULL, '', '', ''),
(105, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2050.html', NULL, '', '', ''),
(106, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2051.html', NULL, '', '', ''),
(107, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2052.html', NULL, '', '', ''),
(108, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2053.html', NULL, '', '', ''),
(109, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2054.html', NULL, '', '', ''),
(110, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2055.html', NULL, '', '', ''),
(111, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2056.html', NULL, '', '', ''),
(112, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2057.html', NULL, '', '', ''),
(113, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2058.html', NULL, '', '', ''),
(114, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2059.html', NULL, '', '', ''),
(115, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2060.html', NULL, '', '', ''),
(116, '', '', '', '', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2061.html', NULL, '', 'grey', ''),
(117, '', '', '', '', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2062.html', NULL, '', 'grey', ''),
(118, '', '', '', '', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2063.html', NULL, '', 'grey', ''),
(119, '', '', '', '', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2064.html', NULL, '', 'grey', ''),
(120, NULL, NULL, NULL, NULL, 20, 65, 'tancredo neves km 6', '../maps/keypoint_2065.htm', NULL, '', 'grey', ''),
(121, NULL, NULL, NULL, NULL, 20, 66, 'tancredo neves km 6', '../maps/keypoint_2066.htm', NULL, '', 'grey', ''),
(122, NULL, NULL, NULL, NULL, 20, 67, 'tancredo neves km 6', '../maps/keypoint_2067.htm', NULL, '', 'grey', ''),
(123, NULL, NULL, NULL, NULL, 20, 68, 'tancredo neves km 6', '../maps/keypoint_2068.htm', NULL, '', 'grey', ''),
(124, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(125, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(126, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(127, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(128, NULL, NULL, NULL, NULL, 9, 1, 'trainArk', '', NULL, '', '', ''),
(129, NULL, NULL, NULL, NULL, 8, 1, 'trainArk', '', NULL, '', '', ''),
(130, NULL, NULL, NULL, NULL, 7, 1, 'trainArk', '', NULL, '', '', ''),
(131, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(132, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(133, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(134, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(170, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(169, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(165, NULL, NULL, NULL, NULL, 6, 2, 'trainArk', '', NULL, '', '', ''),
(168, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(167, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(166, NULL, NULL, NULL, NULL, 5, 2, 'trainArk', '', NULL, '', '', ''),
(164, NULL, NULL, NULL, NULL, 7, 2, 'trainArk', '', NULL, '', '', ''),
(163, NULL, NULL, NULL, NULL, 8, 2, 'trainArk', '', NULL, '', '', ''),
(160, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(159, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(157, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(156, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(158, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(162, NULL, NULL, NULL, NULL, 9, 2, 'trainArk', '', NULL, '', '', ''),
(161, NULL, NULL, NULL, NULL, 10, 2, 'trainArk', '', NULL, '', '', ''),
(171, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(172, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(173, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(174, NULL, NULL, NULL, NULL, 10, 2, 'trainArk', '', NULL, '', '', ''),
(175, NULL, NULL, NULL, NULL, 9, 2, 'trainArk', '', NULL, '', '', ''),
(176, NULL, NULL, NULL, NULL, 8, 2, 'trainArk', '', NULL, '', '', ''),
(177, NULL, NULL, NULL, NULL, 7, 2, 'trainArk', '', NULL, '', '', ''),
(178, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(179, NULL, NULL, NULL, NULL, 5, 3, 'trainArk', '', NULL, '', '', ''),
(180, NULL, NULL, NULL, NULL, 4, 3, 'trainArk', '', NULL, '', '', ''),
(181, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(182, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(183, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(184, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(185, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(186, NULL, NULL, NULL, NULL, 11, 4, 'trainArk', '', NULL, '', '', ''),
(187, NULL, NULL, NULL, NULL, 10, 4, 'trainArk', '', NULL, '', '', ''),
(188, NULL, NULL, NULL, NULL, 9, 4, 'trainArk', '', NULL, '', '', ''),
(189, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(190, NULL, NULL, NULL, NULL, 7, 4, 'trainArk', '', NULL, '', '', ''),
(191, NULL, NULL, NULL, NULL, 6, 4, 'trainArk', '', NULL, '', '', ''),
(192, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(193, NULL, NULL, NULL, NULL, 5, 4, 'trainArk', '', NULL, '', '', ''),
(194, NULL, NULL, NULL, NULL, 4, 4, 'trainArk', '', NULL, '', '', ''),
(195, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(196, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(197, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(198, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(217, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(216, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(215, NULL, NULL, NULL, NULL, 4, 5, 'trainArk', '', NULL, '', '', ''),
(214, NULL, NULL, NULL, NULL, 5, 5, 'trainArk', '', NULL, '', '', ''),
(211, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(210, NULL, NULL, NULL, NULL, 10, 5, 'trainArk', '', NULL, '', '', ''),
(213, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(212, NULL, NULL, NULL, NULL, 8, 5, 'trainArk', '', NULL, '', '', ''),
(218, NULL, NULL, NULL, NULL, 3, 5, 'trainArk', '', NULL, '', '', ''),
(219, NULL, NULL, NULL, NULL, 2, 5, 'trainArk', '', NULL, '', '', ''),
(220, NULL, NULL, NULL, NULL, 1, 5, 'trainArk', '', NULL, '', '', ''),
(221, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(222, NULL, NULL, NULL, NULL, 12, 6, 'trainArk', '', NULL, '', '', ''),
(223, NULL, NULL, NULL, NULL, 11, 6, 'trainArk', '', NULL, '', '', ''),
(224, NULL, NULL, NULL, NULL, 10, 6, 'trainArk', '', NULL, '', '', ''),
(225, NULL, NULL, NULL, NULL, 9, 6, 'trainArk', '', NULL, '', '', ''),
(226, NULL, NULL, NULL, NULL, 8, 6, 'trainArk', '', NULL, '', '', ''),
(227, NULL, NULL, NULL, NULL, 7, 6, 'trainArk', '', NULL, '', '', ''),
(228, NULL, NULL, NULL, NULL, 6, 6, 'trainArk', '', NULL, '', '', ''),
(229, NULL, NULL, NULL, NULL, 5, 6, 'trainArk', '', NULL, '', '', ''),
(230, NULL, NULL, NULL, NULL, 4, 6, 'trainArk', '', NULL, '', '', ''),
(231, NULL, NULL, NULL, NULL, 3, 6, 'trainArk', '', NULL, '', '', ''),
(232, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(233, NULL, NULL, NULL, NULL, 1, 6, '', '', NULL, '', '', ''),
(234, NULL, NULL, NULL, NULL, 1, 6, 'trainArk', '', NULL, '', '', ''),
(235, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(236, NULL, NULL, NULL, NULL, 3, 7, 'trainArk', '', NULL, '', '', ''),
(237, NULL, NULL, NULL, NULL, 4, 7, 'trainArk', '', NULL, '', '', ''),
(238, NULL, NULL, NULL, NULL, 5, 7, 'trainArk', '', NULL, '', '', ''),
(239, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(240, NULL, NULL, NULL, NULL, 6, 7, 'trainArk', '', NULL, '', '', ''),
(241, NULL, NULL, NULL, NULL, 7, 7, 'trainArk', '', NULL, '', '', ''),
(242, NULL, NULL, NULL, NULL, 8, 7, 'trainArk', '', NULL, '', '', ''),
(243, NULL, NULL, NULL, NULL, 9, 7, 'trainArk', '', NULL, '', '', ''),
(244, NULL, NULL, NULL, NULL, 10, 7, 'trainArk', '', NULL, '', '', ''),
(245, NULL, NULL, NULL, NULL, 11, 7, 'trainArk', '', NULL, '', '', ''),
(246, NULL, NULL, NULL, NULL, 12, 7, 'trainArk', '', NULL, '', '', ''),
(247, NULL, NULL, NULL, NULL, 13, 7, 'trainArk', '', NULL, '', '', ''),
(248, NULL, NULL, NULL, NULL, 1, 8, 'trainArk', '', NULL, '', '', ''),
(249, NULL, NULL, NULL, NULL, 2, 8, 'trainArk', '', NULL, '', '', ''),
(250, NULL, NULL, NULL, NULL, 3, 8, 'trainArk', '', NULL, '', '', ''),
(251, NULL, NULL, NULL, NULL, 4, 8, 'trainArk', '', NULL, '', '', ''),
(252, NULL, NULL, NULL, NULL, 5, 8, 'trainArk', '', NULL, '', '', ''),
(253, NULL, NULL, NULL, NULL, 6, 8, 'trainArk', '', NULL, '', '', ''),
(254, NULL, NULL, NULL, NULL, 7, 8, 'trainArk', '', NULL, '', '', ''),
(255, NULL, NULL, NULL, NULL, 8, 8, 'trainArk', '', NULL, '', '', ''),
(256, NULL, NULL, NULL, NULL, 9, 8, 'trainArk', '', NULL, '', '', ''),
(257, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(258, NULL, NULL, NULL, NULL, 1, 8, 'trainArk', '', NULL, '', '', ''),
(259, NULL, NULL, NULL, NULL, 2, 8, 'trainArk', '', NULL, '', '', ''),
(260, NULL, NULL, NULL, NULL, 3, 8, 'trainArk', '', NULL, '', '', ''),
(261, NULL, NULL, NULL, NULL, 1, 8, 'trainArk', '', NULL, '', '', ''),
(262, NULL, NULL, NULL, NULL, 2, 8, 'trainArk', '', NULL, '', '', ''),
(263, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(264, NULL, NULL, NULL, NULL, 10, 9, '', '', NULL, '', '', ''),
(265, NULL, NULL, NULL, NULL, 9, 9, '', '', NULL, '', '', ''),
(266, NULL, NULL, NULL, NULL, 10, 9, 'trainArk', '', NULL, '', '', ''),
(267, NULL, NULL, NULL, NULL, 9, 9, 'trainArk', '', NULL, '', '', ''),
(268, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(269, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(270, NULL, NULL, NULL, NULL, 6, 9, 'trainArk', '', NULL, '', '', ''),
(271, NULL, NULL, NULL, NULL, 5, 9, 'trainArk', '', NULL, '', '', ''),
(272, NULL, NULL, NULL, NULL, 4, 9, 'trainArk', '', NULL, '', '', ''),
(273, NULL, NULL, NULL, NULL, 3, 9, 'trainArk', '', NULL, '', '', ''),
(274, NULL, NULL, NULL, NULL, 2, 9, 'trainArk', '', NULL, '', '', ''),
(275, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(276, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(277, NULL, NULL, NULL, NULL, 12, 10, 'trainArk', '', NULL, '', '', ''),
(278, NULL, NULL, NULL, NULL, 11, 10, 'trainArk', '', NULL, '', '', ''),
(279, NULL, NULL, NULL, NULL, 10, 10, 'trainArk', '', NULL, '', '', ''),
(280, NULL, NULL, NULL, NULL, 9, 10, 'trainArk', '', NULL, '', '', ''),
(281, NULL, NULL, NULL, NULL, 8, 10, 'trainArk', '', NULL, '', '', ''),
(282, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '../maps/trainArk0001.html', NULL, '', '', ''),
(284, NULL, NULL, NULL, NULL, 6, 10, 'trainArk', '', NULL, '', '', ''),
(285, NULL, NULL, NULL, NULL, 5, 10, 'trainArk', '', NULL, '', '', ''),
(286, NULL, NULL, NULL, NULL, 4, 10, 'trainArk', '', NULL, '', '', ''),
(287, NULL, NULL, NULL, NULL, 3, 10, 'trainArk', '', NULL, '', '', ''),
(288, NULL, NULL, NULL, NULL, 2, 10, 'trainArk', '', NULL, '', '', ''),
(291, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(290, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(292, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(293, NULL, NULL, NULL, NULL, 11, 11, 'trainArk', '', NULL, '', '', ''),
(294, NULL, NULL, NULL, NULL, 10, 11, 'trainArk', '', NULL, '', '', ''),
(295, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(296, NULL, NULL, NULL, NULL, 8, 11, 'trainArk', '', NULL, '', '', ''),
(297, NULL, NULL, NULL, NULL, 7, 11, 'trainArk', '', NULL, '', '', ''),
(298, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(299, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(300, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(301, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(302, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(303, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(304, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(305, NULL, NULL, NULL, NULL, 0, 0, 'trainArk', '', NULL, '', '', ''),
(306, NULL, NULL, NULL, NULL, 0, 0, 'trainArk', '', NULL, '', '', ''),
(307, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', ''),
(308, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, '', '', ''),
(309, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, '', '', ''),
(310, NULL, NULL, NULL, NULL, 0, 0, 'trainArk', '', NULL, '', '', ''),
(311, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', NULL, '', '', 'dark'),
(312, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'coin', '', '', ''),
(313, NULL, NULL, NULL, NULL, NULL, NULL, 'trainArk', '', 'coin', '', '', ''),
(314, NULL, NULL, NULL, NULL, NULL, NULL, 'scene', '', NULL, '', '', ''),
(315, NULL, NULL, NULL, NULL, NULL, NULL, 'x', '', NULL, '', '', ''),
(316, NULL, NULL, NULL, NULL, 0, 0, 'x', '', NULL, '', '', ''),
(317, NULL, NULL, NULL, NULL, 0, 0, 'x', '', NULL, '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
