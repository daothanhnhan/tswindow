-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 29 Novembre 2018 à 04:02
-- Version du serveur :  5.5.31
-- Version de PHP :  5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tkwgbvn_tswindow`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$5xn9Ri83pYZIOwglCNPE1O77nvaCUPJJFUifoHtxyWgqM1EU34Yku', '', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `admin_role`
--

CREATE TABLE IF NOT EXISTS `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Structure de la table `bang_gia_1`
--

CREATE TABLE IF NOT EXISTS `bang_gia_1` (
  `id` int(11) NOT NULL,
  `khoahoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvien` int(11) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `bang_gia_1`
--

INSERT INTO `bang_gia_1` (`id`, `khoahoc`, `chinhanh`, `hocvien`, `namsinh`, `email`, `phone`, `name`, `notes`) VALUES
(43, 'Smart Reading Skills', 'AMERICAN SKILLS LONG BIÊN-HÀ NỘI', 0, 1995, 'viethung95cute@gmail.com', '1672523165', 'Nguyễn Việt Hưng', ''),
(44, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', ''),
(45, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', '');

-- --------------------------------------------------------

--
-- Structure de la table `bang_gia_2`
--

CREATE TABLE IF NOT EXISTS `bang_gia_2` (
  `id` int(11) NOT NULL,
  `name_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_student` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) NOT NULL,
  `hoan_thien_so_sach` varchar(300) NOT NULL,
  `quyet_toan_thue` varchar(300) NOT NULL,
  `tong_dich_vu` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `bang_gia_2`
--

INSERT INTO `bang_gia_2` (`id`, `name_parent`, `phone_parent`, `name_student`, `birthday`, `adress`, `email`, `hoan_thien_so_sach`, `quyet_toan_thue`, `tong_dich_vu`, `time`) VALUES
(34, 'Việt Hưng', '01672523165', 'ABC', '2018-03-30', 'ĐH Mỏ - Địa chất', 'viethung95cute@gmail.com', '', '', '', '2018-03-28 04:54:52'),
(35, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:26'),
(36, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:33'),
(37, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:13'),
(38, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:19'),
(39, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:13:51'),
(40, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:20:52'),
(41, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:19'),
(42, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:22'),
(43, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:52'),
(44, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:55'),
(45, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:23:34'),
(46, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:46'),
(47, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:50');

-- --------------------------------------------------------

--
-- Structure de la table `cad_file`
--

CREATE TABLE IF NOT EXISTS `cad_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cad_file`
--

INSERT INTO `cad_file` (`id`, `name`) VALUES
(2, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `calculators_file`
--

CREATE TABLE IF NOT EXISTS `calculators_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `calculators_file`
--

INSERT INTO `calculators_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(1, NULL, 'sdgdfgdbcvbcvbxcv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgdf', 'sdf@gmail.com', '5646', 'sdf@gmail.com', 'sdf@gmail.com'),
(3, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'drtert', 'sdf@gmail.com', '3454', 'sdf@gmail.com', 'sdf@gmail.com'),
(4, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdfasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sfgdfg'),
(5, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(6, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'df', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'ag'),
(7, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', '.'),
(8, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdfg'),
(9, NULL, '507hpkui803q8chnerqdtf3vl2', 1520000, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', '', 'sdfg'),
(10, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'dfgfdhgvjm'),
(11, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'd'),
(12, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zscf'),
(13, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sds', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xfc'),
(14, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ádasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cv'),
(15, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxd'),
(16, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xf'),
(17, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'f', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(18, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'g'),
(19, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(20, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sè', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cvb'),
(21, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgd', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxcv'),
(22, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfjas@gmail.com', 'tung92.ns@gmail.com', '12342', 'fg', 'xc'),
(23, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', 'dfg', 'dfg', 'gh'),
(24, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dgfdg', 'tung92.ns@gmail.com', '1234567', 'xfvd', 'sx'),
(25, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ạgdfh', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cfgvb'),
(26, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xcv'),
(27, NULL, '507hpkui803q8chnerqdtf3vl2', 3040000, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', '', 'xcv'),
(28, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 0, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', 'fghfgh', 'zdfgdfg'),
(29, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 1845000, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', '', 'zdfgdfg'),
(30, NULL, '334n6joa344tmhngo3r5aqpve3', 1845000, NULL, '0000-00-00', NULL, NULL, 'HANGWF', 'HGJFGH@GMAIL.COM', '45657', 'qUAN NHAN', 'DTAN'),
(31, NULL, 'uicgfl7gr3e7ahodo04vpssns6', 3930000, NULL, '0000-00-00', NULL, NULL, 'dfHFGH', 'XFGHFG@GMAIL.COM', '3456789', 'ARFG', 'WRWER'),
(32, NULL, '9h180s77g41hqt5d8g95mudic6', 205000, NULL, '0000-00-00', NULL, NULL, 'vcxgf', 'gfgfdg@gmail.com', 'fgfdgdfg', 'fgfdgdf', 'gfdgdf'),
(33, NULL, 'jom8ufm7f64s09i4gk10fp1ma2', 2255000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '12184', 'Fqgq', 'Vsbs'),
(34, NULL, '20ks5j7ju4vpq91d9699nvile3', 1455000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '86633889', 'Fgujbvg', ''),
(35, NULL, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, NULL, '0000-00-00', NULL, NULL, 'Ngọc thế', 'ngocthe505@gmail.com', '0943218532', 'Số 19 ngõ 4 văn la hà đông hn', ''),
(36, NULL, '0m0i103i9mk3s0t8mi1g6gnqd5', 2250000, NULL, '0000-00-00', 4, '', 'Lìu tìu phìu', 'admin@deptrai.com', '096969969', 'Hà Nội', ''),
(37, NULL, 'meesi1d3laemnvqfgu7m1lm9p4', 2050000, NULL, '0000-00-00', 4, 'gfdgfd', 'Lìu tìu phìu', 'admin@deptrai.com', '0969068969', 'Hà Nội', ''),
(38, NULL, 'r3ktn90f3cn3fv82lob0qfv7l2', 0, NULL, '0000-00-00', NULL, NULL, 'hfgh', 'gfhg@gmail.com', '5345345435', 'gbfdgfdg', 'gdfg'),
(39, NULL, '3j87stb5hl70hfftn49fg9uve2', 615000, NULL, '0000-00-00', 1, '', 'Tâm', 'ngockhanh@gmail.com', '0974698975', 'thanh xuân', ''),
(40, NULL, 'vjnoaabl9tui5463ttpol3a745', 3040000, NULL, '0000-00-00', 1, '', 'hằng pt', 'ngockhanh@gmail.com', '123123435', 'dfghdfgh', 'dfghdfgh'),
(41, NULL, '36v2v63fsce7tth1ep3mp51uh3', 760000, NULL, '0000-00-00', NULL, NULL, 'ádfasdf', 'ngockhanh@gmail.com', 'dfgadfg', 'ádfgsdf', ''),
(42, NULL, '9ed4v2g4sm1v3og223ckgdh650', 4560000, NULL, '0000-00-00', NULL, NULL, 'sxdfsdf', 'ng@gmail.com', '345345', 'étdgvdf', ''),
(43, NULL, 's7kfj9rca2ic102k5sgpe4it67', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '30012018', 'Ha Noi', '1'),
(44, NULL, 'uh6mafdedbdh4sqodcd4amspa5', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(45, NULL, '1phakdlrnq7gn5ln72umgujq63', 238620, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '13-7');

-- --------------------------------------------------------

--
-- Structure de la table `cartdetail`
--

CREATE TABLE IF NOT EXISTS `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(4, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 27, 'fg4g7m0pb0vnv4dnvp88f7lds7', 760000, 3, 2280000, NULL, 2, 1, 'Cam', 'S', 1),
(8, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 2, 1520000, NULL, 2, 1, 'Cam', 'S', 25),
(9, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 4, 3040000, NULL, 2, 1, 'Cam', 'S', 26),
(10, 42, 'k75ivhcmgk5u9bbi4ajsqeqon7', 205000, 9, 1845000, NULL, 0, 0, '', '', 28),
(11, 42, '334n6joa344tmhngo3r5aqpve3', 205000, 9, 1845000, NULL, 0, 0, '', '', 30),
(12, 42, 'uicgfl7gr3e7ahodo04vpssns6', 205000, 6, 1230000, NULL, 0, 0, '', '', 31),
(13, 43, 'uicgfl7gr3e7ahodo04vpssns6', 450000, 6, 2700000, NULL, 0, 0, '', '', 31),
(14, 42, '9h180s77g41hqt5d8g95mudic6', 205000, 1, 205000, NULL, 0, 0, '', '', 32),
(15, 42, 'jom8ufm7f64s09i4gk10fp1ma2', 205000, 11, 2255000, NULL, 0, 0, '', '', 33),
(16, 43, '20ks5j7ju4vpq91d9699nvile3', 225000, 1, 225000, NULL, 0, 0, '', '', 34),
(17, 42, '20ks5j7ju4vpq91d9699nvile3', 205000, 6, 1230000, NULL, 0, 0, '', '', 34),
(18, 42, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, 1, 205000, NULL, 0, 0, '', '', 35),
(19, 43, '0m0i103i9mk3s0t8mi1g6gnqd5', 225000, 10, 2250000, NULL, 0, 0, '', '', 36),
(20, 42, 'meesi1d3laemnvqfgu7m1lm9p4', 205000, 10, 2050000, NULL, 0, 0, '', '', 37),
(21, 42, 'r3ktn90f3cn3fv82lob0qfv7l2', 205000, 0, 0, NULL, 0, 0, '', '', 38),
(22, 42, '3j87stb5hl70hfftn49fg9uve2', 205000, 3, 615000, NULL, 0, 0, '', '', 39),
(23, 27, 'vjnoaabl9tui5463ttpol3a745', 760000, 3, 2280000, NULL, 0, 0, '', '', 40),
(24, 28, 'vjnoaabl9tui5463ttpol3a745', 760000, 1, 760000, NULL, 0, 0, '', '', 40),
(25, 27, '36v2v63fsce7tth1ep3mp51uh3', 760000, 1, 760000, NULL, 0, 0, '', '', 41),
(26, 27, '9ed4v2g4sm1v3og223ckgdh650', 760000, 6, 4560000, NULL, 0, 0, '', '', 42),
(27, 55, 's7kfj9rca2ic102k5sgpe4it67', 0, 2, 0, NULL, 0, 0, '', '60x90 cm', 43),
(28, 48, 'uh6mafdedbdh4sqodcd4amspa5', 0, 1, 0, NULL, 0, 0, '', '', 44),
(29, 55, '1phakdlrnq7gn5ln72umgujq63', 119310, 2, 238620, NULL, 0, 0, '', '', 45);

-- --------------------------------------------------------

--
-- Structure de la table `color`
--

CREATE TABLE IF NOT EXISTS `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `link1` text COLLATE utf8_unicode_ci NOT NULL,
  `link2` text COLLATE utf8_unicode_ci NOT NULL,
  `link3` text COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner3` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `slideshow_home`, `link1`, `link2`, `link3`, `banner2`, `banner1`, `banner3`, `icon_web`) VALUES
(1, 'Thai Son Aluminium', '', 'Với 15 năm kinh nghiệm Thái Sơn Window đã trở thành đơn vị đi đầu trong lĩnh vực cung cấp các hệ cửa đi, cửa sổ, vách ngăn...Với tầm nhìn trở thành nhà cung cấp giải pháp về cửa hàng đầu Việt Nam và vươn ra quốc tế, Thái Sơn Window luôn không ngừng nỗ lực duy trì sự phát triển bền vững , không ngừng đổi mới, nâng cao chất lượng sản phẩm ', 'hệ cửa đi, hệ cửa sổ, hệ cửa lùa, hệ vách ngăn, hệ lam chớp, hệ lan can hàng rào', 'logo.png', '', '', '', 'KCN Phú Thị - Gia Lâm - Hà Nội', 'info@tswindow.vn', 'Tel/Fax: 024 3678 0066', 'https://tswindow.vn', '', '085 361 6666', '<ul>\r\n                                        <li><a href="/gioi-thieu">Giới thiệu</a></li>\r\n                                        <li><a href="/tin-tuc">Tin tức</a></li>\r\n                                        <li><a href="/cong-trinh-noi-bat">Công trình</a></li>\r\n                                        <li><a href="/muc-tuyen-dung">Tuyển dụng</a></li>\r\n                                    </ul>', '', '1231', 'Công ty TNHH Sản Xuất Thương Mại Thái Sơn', '["{\\"image\\":\\"slide1.png\\"}","{\\"image\\":\\"slide2.png\\"}","{\\"image\\":\\"slide3.png\\"}"]', 'avits-smart-readingbrphat-trien-ngon-ngu-tieng-viet-4-10-tuoi', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan', 'banner2.jpg', 'banner1.jpg', 'banner3.jpg', 'logo.png');

-- --------------------------------------------------------

--
-- Structure de la table `config_languages`
--

CREATE TABLE IF NOT EXISTS `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) DEFAULT '0',
  `lang_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `edit_state`, `lang_link1`, `lang_link2`, `lang_link3`) VALUES
(1, 1, 'vn', 'Thai Son Aluminium', '', 'Với 15 năm kinh nghiệm Thái Sơn Window đã trở thành đơn vị đi đầu trong lĩnh vực cung cấp các hệ cửa đi, cửa sổ, vách ngăn...Với tầm nhìn trở thành nhà cung cấp giải pháp về cửa hàng đầu Việt Nam và vươn ra quốc tế, Thái Sơn Window luôn không ngừng nỗ lực duy trì sự phát triển bền vững , không ngừng đổi mới, nâng cao chất lượng sản phẩm ', 'hệ cửa đi, hệ cửa sổ, hệ cửa lùa, hệ vách ngăn, hệ lam chớp, hệ lan can hàng rào', '', '', '', 'KCN Phú Thị - Gia Lâm - Hà Nội', 'info@tswindow.vn', 'Tel/Fax: 024 3678 0066', 'https://tswindow.vn', '', '085 361 6666', '<ul>\r\n                                        <li><a href="/gioi-thieu">Giới thiệu</a></li>\r\n                                        <li><a href="/tin-tuc">Tin tức</a></li>\r\n                                        <li><a href="/cong-trinh-noi-bat">Công trình</a></li>\r\n                                        <li><a href="/muc-tuyen-dung">Tuyển dụng</a></li>\r\n                                    </ul>', '', '1231', 'Công ty TNHH Sản Xuất Thương Mại Thái Sơn', 1, '0', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan'),
(2, 1, 'en', '', '', '', '', '', '', '', 'WHY CHOOSE US?', 'With the operating experiences of plywood factory from 2012, we have supply Good quality Plywood for Packing and Furniture Industry as well as Construction. We are deserved to become your partner to help you have good materials for your production and your trading in plywood industry all over the world. \r\nWe have our team to control all processes of plywood Production very professionally such as Q&C, R&D, Technical team .Moreover, our market is widespread in many foreign countries like Thailand, Korea, Japan, Malaysia, Indonesia, Myamar, Taiwan and others.\r\nComing to us, you wil have many Priorities in Price, Early Delivery as well as in Quality: Strong Density, No Gap, straight side, smooth face....\r\n', '', 'HISTORY', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', 1, '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `datasheets_file`
--

CREATE TABLE IF NOT EXISTS `datasheets_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `datasheets_file`
--

INSERT INTO `datasheets_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `dat_mua`
--

CREATE TABLE IF NOT EXISTS `dat_mua` (
  `id` int(11) NOT NULL,
  `name_investors` varchar(200) CHARACTER SET utf8 NOT NULL,
  `professional_field` varchar(225) NOT NULL,
  `work_unit` varchar(225) NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `aspiration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `dat_mua`
--

INSERT INTO `dat_mua` (`id`, `name_investors`, `professional_field`, `work_unit`, `phone`, `email`, `address`, `district`, `city`, `chanel`, `aspiration`) VALUES
(2, 'Rèm vải 01', '760', '1', 'tuấn', 'tuan@gmail.com', '0123', 'Hà Nội', '', '', ''),
(3, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng'),
(4, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng');

-- --------------------------------------------------------

--
-- Structure de la table `declaration_file`
--

CREATE TABLE IF NOT EXISTS `declaration_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `declaration_file`
--

INSERT INTO `declaration_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `image`
--

INSERT INTO `image` (`id`, `name`, `product_id`) VALUES
(92, 'Cua lua TS 95.jpg', 66),
(103, 'TS-55B1_2.jpg', 60),
(104, 'TS 55B1.jpg', 60),
(106, 'TS 4400_1.jpg', 62),
(107, 'TS-450_1.jpg', 63),
(110, 'Cua-lua-TS-48.jpg', 67),
(111, 'TS 55B.jpg', 68),
(112, 'Cua-so-TS4400.jpg', 69),
(113, 'CS-TS2600.jpg', 70),
(114, 'CS-TS44.jpg', 71),
(115, 'CS-TS2000.jpg', 72),
(117, 'VN-TS4400.jpg', 73),
(118, 'TS 55_1_2.jpg', 61),
(119, 'cửa-nhôm-lùa-trượt-1024x682.jpg', 64),
(120, 'Cua-lua-TS-93.jpg', 65),
(121, 'VN-TS-1100.jpg', 74),
(122, 'TS-MD.jpg', 75),
(123, 'lam-chan-nang-nhom-2.jpg', 76),
(124, 'Lam-chan-nang-la-lieu-Kim-Sen.jpg', 76);

-- --------------------------------------------------------

--
-- Structure de la table `installation_file`
--

CREATE TABLE IF NOT EXISTS `installation_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `installation_file`
--

INSERT INTO `installation_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Structure de la table `lien_he`
--

CREATE TABLE IF NOT EXISTS `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(1, 'tuấn', 'tuan@gmail.com', '0245', 'Hà Nội', 'ok', '2017-11-29 12:51:52'),
(2, 'Hang Pham Thuy', 'ngockhanh260614@gmail.com', '973378669', 'Thanh Xuân, Thanh Xuân', 'xfghfghfgh', '2017-12-03 04:06:32'),
(3, 'ewrerwer', 'viethung95cute@gmail.com', '01672545654', 'hà nội', '', '2018-04-05 06:24:46'),
(4, 'tuấn', 'tuan@gmail.com', '0123', '', '13-7', '2018-07-13 11:24:19'),
(5, 'tuấn', 'tuan@gmail.com', '0123', 'Hà Nội', '06-09', '2018-09-06 01:46:33');

-- --------------------------------------------------------

--
-- Structure de la table `listings_certifications_file`
--

CREATE TABLE IF NOT EXISTS `listings_certifications_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `listings_certifications_file`
--

INSERT INTO `listings_certifications_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'Trang chủ', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(147, 'Sản phẩm', 3, 3, '', 115, 0, 0, 0, 0, 1, 147, 0, 0, NULL),
(151, 'Tin tức', 4, 6, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(152, 'Tuyển dụng', 6, 8, 'muc-tuyen-dung', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(153, 'Liên hệ', 6, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(155, 'Giới thiệu', 2, 13, '', 0, 0, 0, 35, 0, 1, 0, 0, 0, NULL),
(164, 'Công trình', 5, 8, 'cong-trinh-noi-bat', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(195, 'Sản phẩm', 3, 2, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `menu_languages`
--

CREATE TABLE IF NOT EXISTS `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Trang chủ', 1, '', 114),
(206, 'en', 'Trang chủ - vn', 1, '', 114),
(271, 'vn', 'Sản phẩm', 0, '', 147),
(272, 'en', 'Sản phẩm', 0, '', 147),
(279, 'vn', 'Tin tức', 0, '', 151),
(280, 'en', 'Lịch khám', 0, 'lich-kham', 151),
(281, 'vn', 'Tuyển dụng', 0, 'muc-tuyen-dung', 152),
(282, 'en', 'Tuyển dụng', 0, '', 152),
(283, 'vn', 'Liên hệ', 0, '', 153),
(284, 'en', 'Liên hệ', 0, '', 153),
(287, 'vn', 'Giới thiệu', 0, '', 155),
(288, 'en', 'Giới thiệu', 0, '', 155),
(305, 'vn', 'Công trình', 0, 'cong-trinh-noi-bat', 164),
(306, 'en', 'Blog', 0, '', 164),
(367, 'vn', 'Sản phẩm', 0, '', 195),
(368, 'en', 'Sản phẩm', 0, '', 195);

-- --------------------------------------------------------

--
-- Structure de la table `menu_type`
--

CREATE TABLE IF NOT EXISTS `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `menu_type_languages`
--

CREATE TABLE IF NOT EXISTS `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(97, 'New Horizon ', 'Tọa lạc tại vị trí đắc địa (87 Lĩnh Nam). Đây là nơi giao thoa giữa 3 tuyến đường huyết mạch thuộc quận Hoàng Mai là: Minh Khai, Tam Trinh, Lĩnh Nam.', '<p>T<span style="font-size:16px"><strong>ọa lạc tại vị tr&iacute; đắc địa (87 Lĩnh Nam). Đ&acirc;y l&agrave; nơi giao thoa giữa 3 tuyến đường huyết mạch thuộc quận Ho&agrave;ng Mai l&agrave;: Minh Khai, Tam Trinh, Lĩnh Nam. Dự &aacute;n New Horizon được đầu tư bởi C&ocirc;ng ty cổ phần x&acirc;y dựng v&agrave; kĩ thuật Việt Nam (Vinaenco)</strong></span></p>\r\n', 'New Horizon.jpg', 0, 75, '', '2018-03-27 22:03:21', '2018-09-20 09:09:59', 1, '', '', '', '', '', 'New Horizon ', '', 'new-horizon', '', 1),
(102, 'Germek Premium', 'Germek Premium là tổ hợp gồm 2 tòa nhà cao 34 tầng. Chung cư có vị trí nằm ở khu đô thị mới Hoài Đức, Hà Nội.', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:16px"><strong>Germek Premium l&agrave; tổ hợp gồm 2 t&ograve;a nh&agrave; cao 34 tầng. Chung cư c&oacute; vị tr&iacute; nằm ở khu đ&ocirc; thị mới Ho&agrave;i Đức, H&agrave; Nội. Chung cư c&oacute; đầy đủ c&aacute;c cơ sở hạ tầng như: Khu sinh hoạt c&ocirc;ng cộng, nh&agrave; trẻ mầm non, si&ecirc;u thị.&nbsp;</strong></span></p>\r\n', 'Germek Premium.jpg', 0, 75, '', '2018-03-30 10:03:00', '2018-09-20 09:09:47', 1, '', '', '', '', '', 'Germek Premium', '', 'germek-premium', '', 1),
(106, 'Park view Tam Trinh', 'Tòa nhà ParkView Tower tọa lạc tại Phường Vĩnh Hưng, Quận Hoàng Mai, Hà Nội, do Công ty Cổ phần Đầu tư Đồng Phát đầu tư', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:16px"><strong><span style="background-color:white"><span style="color:black">T&ograve;a nh&agrave; ParkView Tower tọa lạc tại Phường Vĩnh Hưng, Quận Ho&agrave;ng Mai, H&agrave; Nội, do C&ocirc;ng ty Cổ phần Đầu tư Đồng Ph&aacute;t đầu tư. Đ&acirc;y l&agrave; khu chung cư kiểu mẫu đ&aacute;ng sống nhất khu trung t&acirc;m Quận Ho&agrave;ng Mai. &nbsp;T&ograve;a nh&agrave; cao 30 tầng, c&oacute; 02 tầng hầm, diện t&iacute;ch sử dụng đất theo quy hoạch l&agrave; tr&ecirc;n 6.000 m2, mật độ x&acirc;y dựng l&agrave; 45%. Từ tầng 3- tầng 30 sử dụng l&agrave;m căn hộ với tổng diện t&iacute;ch s&agrave;n căn hộ l&agrave; tr&ecirc;n 63.800 m2, 672 căn hộ.&nbsp;</span></span></strong></span></p>\r\n', 'Parkview.png', 0, 75, '', '2018-04-02 13:04:52', '2018-09-20 09:09:59', 1, '', '', '', '', '', 'Park view Tam Trinh', '', 'park-view-tam-trinh', '', 1),
(107, 'Sapa Wings Hotel', 'Nằm ở trung tâm thành phố, Sapa Wings Hotel cung cấp phòng nghỉ hiện đại với tầm nhìn ra quang cảnh Núi Fansipan cũng như Nhà thờ đá Sa Pa.', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:16px"><strong>Nằm ở trung t&acirc;m th&agrave;nh phố, Sapa Wings Hotel cung cấp ph&ograve;ng nghỉ hiện đại với tầm nh&igrave;n ra quang cảnh N&uacute;i Fansipan cũng như Nh&agrave; thờ đ&aacute; Sa Pa. &nbsp;Kh&aacute;ch sạn được thiết kế theo phong c&aacute;ch t&acirc;n cổ điển với &ocirc; cửa k&iacute;nh dạng v&ograve;m tạo cảm gi&aacute;c ấm &aacute;p chi du kh&aacute;ch khi đến đ&acirc;y</strong></span></p>\r\n', '96065865.jpg', 0, 75, '', '2018-04-02 13:04:07', '2018-09-20 09:09:27', 1, '', '', '', '', '', 'Sapa Wings Hotel', '', 'sapa-wings-hotel', '', 1),
(108, 'Khách sạn sapa village:', 'Tọa lạc tại số 520 Điện Biên Phủ,  Khách sạn Sapa Village được thiết kế theo phong cách truyền thống , gần gũi với thiên nhiên', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:16px"><strong>Tọa lạc tại số 520 Điện Bi&ecirc;n Phủ, &nbsp;Kh&aacute;ch sạn Sapa Village được thiết kế theo phong c&aacute;ch truyền thống , gần gũi với thi&ecirc;n nhi&ecirc;n. Kh&aacute;ch sạn gồm 7 tầng được thiết kế m&ocirc; phỏng ruộng bậc thang. Từ b&ecirc;n trong c&aacute;c ph&ograve;ng kh&aacute;ch sạn, du kh&aacute;ch c&oacute; thể mở tầm nh&igrave;n kh&ocirc;ng giới hạn ra xung quanh qua c&aacute;c &ocirc; cửa k&iacute;nh rộng. Kh&aacute;ch sạn L&agrave;ng Sa Pa c&oacute; tổng số 51 ph&ograve;ng, trong đ&oacute; c&oacute; 3 ph&ograve;ng Family , 41 ph&ograve;ng Deluxe v&agrave; 7 ph&ograve;ng Superior. C&aacute;c ph&ograve;ng đều c&oacute; đầy đủ trang thiết bị đạt ti&ecirc;u chuẩn kh&aacute;ch sạn 3 sao.</strong></span><br />\r\n&nbsp;</p>\r\n', 'sapa-village-hotel-c (1).JPG', 0, 75, '', '2018-04-02 13:04:18', '2018-09-20 09:09:16', 1, '', '', '', '', '', 'Khách sạn sapa village:', '', 'khach-san-sapa-village', '', 1),
(119, 'Cửa đi mở trượt - giải pháp cho không gian trật hẹp', 'Cửa đi nhôm kính mở trượt đang là một trong những loại cửa được ưa chuộng bởi những ưu điểm vượt trội. Đặc biệt là các công trình chung cư, nhà phố, những nơi dân cư đông đúc, chật hẹp.', '<p dir="ltr" style="text-align:justify"><em>Cửa đi nh&ocirc;m k&iacute;nh mở trượt đang l&agrave; một trong những loại cửa được ưa chuộng bởi những ưu điểm vượt trội. Đặc biệt l&agrave; c&aacute;c c&ocirc;ng tr&igrave;nh chung cư, nh&agrave; phố, những nơi d&acirc;n cư đ&ocirc;ng đ&uacute;c, chật hẹp.</em></p>\r\n\r\n<p dir="ltr" style="text-align:justify">Cửa đi nh&ocirc;m k&iacute;nh mở trượt l&agrave; loại cửa được mở bằng c&aacute;ch trượt c&aacute;c c&aacute;nh tr&ecirc;n thanh ray. Với c&aacute;ch lắp gh&eacute;p kh&aacute; đơn giản nhưng vẫn đảm bảo độ bền, an to&agrave;n v&agrave; hiện đại cho kh&ocirc;ng gian, n&ecirc;n sản phẩm cửa đi mở trượt đang rất được ưa chuộng v&agrave; sử dụng kh&aacute; phổ biến ở Việt Nam. Dưới đ&acirc;y l&agrave; những thế mạnh của cửa mở trượt khi sử dụng trong kh&ocirc;ng gian chật hẹp như chung cư, nh&agrave; phố..</p>\r\n\r\n<p style="text-align:center"><img alt="" height="403" src="/image/images/204-Ben_House_GP_(WCS)_-07_07.jpg" width="600" /></p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Cửa đi nh&ocirc;m k&iacute;nh mở trượt tiết kiệm diện t&iacute;ch.</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Thay v&igrave; phải tốn th&ecirc;m diện t&iacute;ch c&aacute;nh cửa khi mở ra mở v&agrave;o th&igrave; với cửa đi mở trượt, c&aacute;c c&aacute;nh cửa sẽ mở trượt theo phương ngang m&agrave; kh&ocirc;ng bị tốn diện t&iacute;ch cho c&aacute;nh cửa như mở quay.. Đ&acirc;y l&agrave; một đặc điểm rất ph&ugrave; hợp cho những khu c&oacute; mật độ d&acirc;n số cao, diện t&iacute;ch kh&ocirc;ng gian sống hạn hẹp như khu chung cư, nh&agrave; phố&hellip;</p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Lấy &aacute;nh s&aacute;ng tối đa, tăng vẻ hiện đại cho căn nh&agrave;.</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Khi những căn nh&agrave; san s&aacute;t nhau th&igrave; việc lấy được &aacute;nh nắng tự nhi&ecirc;n l&agrave; điều v&ocirc; c&ugrave;ng cần thiết. &Aacute;nh s&aacute;ng tự nhi&ecirc;n gi&uacute;p kh&ocirc;ng gian b&ecirc;n trong được tho&aacute;ng đ&atilde;ng hơn.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Những thiết kế cửa đi nh&ocirc;m k&iacute;nh mở trượt của c&ocirc;ng ty Th&aacute;i Sơn được thiết kế sang trọng với khung nh&ocirc;m thanh định h&igrave;nh chắc chắn. Phần k&iacute;nh cao cấp gi&uacute;p mở rộng tầm nh&igrave;n kh&ocirc;ng giới hạn ra b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Giảm trọng lượng cho c&ocirc;ng tr&igrave;nh:</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">So với gỗ hay c&aacute;c loại nguy&ecirc;n liệu kh&aacute;c th&igrave; hợp kim nh&ocirc;m c&oacute; trọng lượng nhẹ hơn nhiều. Điều n&agrave;y sẽ gi&uacute;p giảm tải trọng cho m&oacute;ng c&ocirc;ng tr&igrave;nh.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Giảm thiểu rủi ro khi c&oacute; hỏa hoạn.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Chắc bạn cũng đ&atilde; nghe nhiều đến những vụ hỏa hoạn thường xuy&ecirc;n xảy ra tại c&aacute;c khu chung cư thời gian gần đ&acirc;y. Vậy l&agrave;m sao để giảm thiểu rủi ro khi c&oacute; hỏa hoạn xảy ra tại c&aacute;c chung cư cao tầng? Nếu bạn để &yacute; th&igrave; thời gian gần đ&acirc;y, tất cả c&aacute;c khu chung cư từ cao cấp đến b&igrave;nh d&acirc;n đều sử dụng của bằng nh&ocirc;m k&iacute;nh. L&yacute; do ch&iacute;nh l&agrave; v&igrave; nhiệt độ n&oacute;ng chảy của nh&ocirc;m k&iacute;nh rất cao v&agrave; hầu như kh&ocirc;ng bắt lửa n&ecirc;n lửa sẽ kh&ocirc;ng bị l&acirc;y lan.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Với 15 năm kinh nghiệm trong thi c&ocirc;ng v&agrave; lắp đặt cửa k&iacute;nh, Th&aacute;i Sơn Window lu&ocirc;n đi đầu trong việc lắm bắt xu hướng x&acirc;y dựng để cho ra c&aacute;c sản phẩm kh&ocirc;ng chỉ đẹp mẫu m&atilde; m&agrave; c&ograve;n đảm bảo chất lượng. &Aacute;p dụng c&ocirc;ng nghệ tiến tiến trong d&acirc;y chuyền sản xuất gi&uacute;p giảm thiểu thời gian cũng như gi&aacute; th&agrave;nh sản phẩm. Từ đ&oacute;, sản phẩm Th&aacute;i Sơn Window lu&ocirc;n c&oacute; mức gi&aacute; cạnh tranh tr&ecirc;n thị trường</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n', 'cua-truot-4-canh-nhom-xingfa-dragon-sea.jpg', 0, 74, '', '2018-09-20 14:09:20', '2018-09-20 15:09:17', 1, '', '', '', '', '', 'Cửa đi mở trượt - giải pháp cho không gian trật hẹp', '', 'cua-di-mo-truot-giai-phap-cho-khong-gian-trat-hep', '', 1),
(120, 'Tìm hiểu cửa nhôm xingfa Thái Sơn Window', 'Cửa nhôm Xingfa Thái Sơn sử dụng hệ nhôm Grando Xingfa với Thanh profile nhôm gồm các khoang trống và 2 đường gân gia cường trợ lực có khả năng chịu lực va đập hay vặn xoắn.', '<p>Mang những đặc điểm của d&ograve;ng nh&ocirc;m Xingfa, c&aacute;c hệ cửa xingfa của TS Window c&oacute; những ưu điểm sau:&nbsp;<br />\r\n- Sử dụng c&ocirc;ng nghệ &eacute;p g&oacute;c để kết nối c&aacute;c thanh nh&ocirc;m mang lại độ khỏe khoắn v&agrave; chắc cho c&aacute;nh cửa.<br />\r\n<em>-</em>&nbsp;Kh&ocirc;ng bị cong v&ecirc;nh, co ng&oacute;t, oxi h&oacute;a v&agrave; han gỉ theo thời gian như một số sản phẩm cửa nhựa cốt th&eacute;p th&ocirc;ng thường trong điều kiện kh&iacute; hậu khắc nghiệt hoặc kh&iacute; hậu v&ugrave;ng biển mặt.&nbsp;Kh&ocirc;ng bị mối mọt như c&aacute;c sản phẩm cửa gỗ tự nhi&ecirc;n hay gỗ c&ocirc;ng nghiệp.<br />\r\n- Với c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c l&agrave; chung cư, nh&agrave; cao tầng, kh&aacute;ch sạn, nh&agrave; h&agrave;ng rất cần thiết sử dụng cửa nh&ocirc;m để tăng t&iacute;nh chịu lực cao gấp nhiều lần so với c&aacute;c d&ograve;ng cửa kh&aacute;c.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="331" src="/image/images/cua-xingfa-3-ray1.jpg" width="500" /></p>\r\n\r\n<p><br />\r\n- Gia nhiệt cửa nh&ocirc;m mang lại khả năng chịu nhiệt v&agrave; c&oacute; t&iacute;nh chống ch&aacute;y rất tốt, gặp hỏa hoạn, dưới 1000 độ C cửa kh&ocirc;ng bị biến dạng, hạn chế sự lan rộng của lửa ra c&aacute;c khu vực kh&aacute;c.<br />\r\n- Hệ gioăng EPDM k&iacute;n kh&iacute;t v&agrave;&nbsp;lu&ocirc;n c&aacute;ch &acirc;m c&aacute;ch nhiệt, đem đến kh&ocirc;ng gian y&ecirc;n tĩnh.<br />\r\n- K&iacute;nh an to&agrave;n, k&iacute;nh cường lực, k&iacute;nh hộp&hellip; mang lại độ an to&agrave;n cao, kh&ocirc;ng g&acirc;y s&aacute;t thương khi vỡ, đặc biệt rất hiếm khi vỡ, k&iacute;nh nghệ thuật mang lại vẻ đẹp cho kh&ocirc;ng gian nh&agrave; bạn,<br />\r\n- Bề mặt sơn tĩnh điện với c&ocirc;ng nghệ hiện đại của Nhật Bản gi&uacute;p lớp sơn lu&ocirc;n s&aacute;ng b&oacute;ng, dễ d&agrave;ng vệ sinh khi bụi bẩn, chống tia UV mặt trời.<br />\r\n- C&oacute; rất nhiều thiết kế cửa nh&ocirc;m Xingfa &nbsp;cho bạn lựa chọn: Mở quay, trượt, hất, xếp trượt&hellip;<br />\r\n- M&agrave;u sắc đa dạng: Trắng sứ, n&acirc;u sần, v&acirc;n gỗ, cafe, ghi, đen&hellip;<br />\r\nTr&ecirc;n đ&acirc;y l&agrave; những th&ocirc;ng tin li&ecirc;n quan đến chất lượng của TS Window. Mọi thắc mắc xin vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>C&ocirc;ng ty&nbsp;TNHH Sản Xuất V&agrave; Thương Mại Dịch Vụ Th&aacute;i Sơn</strong></p>\r\n\r\n<p>KCN Ph&uacute; Thị - Gia L&acirc;m - H&agrave; Nội</p>\r\n\r\n<p>Tel/fax: 024 3 678 0066</p>\r\n\r\n<p><strong><em>Hotline: 085 361 6666</em></strong></p>\r\n\r\n<p><strong><em>Website: http://tswindow.vn</em></strong></p>\r\n', 'Cửa sổ mở trượt nhôm xingfa hệ 55.jpg', 0, 74, '', '2018-09-21 10:09:47', '2018-10-04 11:10:38', 1, '', '', '', '', '', 'Tìm hiểu cửa nhôm xingfa Thái Sơn Window', '', 'tim-hieu-cua-nhom-xingfa-thai-son-window', '', 1),
(121, 'Kinh nghiệm chọn cửa kính cho gia đình', 'Với những ưu thế riêng phù hợp với thời đại, cửa nhôm kính đang là loại cửa được ưa chuộng từ các công trình dân dụng đến các khu chung cư nhà cao tầng...', '<p style="text-align:justify"><em>Với những ưu thế ri&ecirc;ng ph&ugrave; hợp với thời đại, cửa nh&ocirc;m k&iacute;nh đang l&agrave; loại cửa được ưa chuộng từ c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n dụng đến c&aacute;c khu chung cư nh&agrave; cao tầng&hellip;</em></p>\r\n\r\n<p dir="ltr" style="text-align:justify">Với những ưu thế ri&ecirc;ng ph&ugrave; hợp với thời đại, cửa nh&ocirc;m k&iacute;nh đang l&agrave; loại cửa được ưa chuộng từ c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n dụng đến c&aacute;c khu chung cư nh&agrave; cao tầng...Trong b&agrave;i h&ocirc;m nay, ch&uacute;ng t&ocirc;i xin giới thiệu những kinh nghiệm chọn cửa k&iacute;nh ph&ugrave; hợp với gia đ&igrave;nh m&igrave;nh.</p>\r\n\r\n<p style="text-align:center"><img alt="Kinh nghiệm chọn cửa kính cho gia đình" height="401" src="/image/images/thai-son-5.jpg" width="600" /></p>\r\n\r\n<p dir="ltr" style="text-align:center"><em>Kinh nghiệm chọn cửa k&iacute;nh cho gia đ&igrave;nh</em></p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Chọn lựa ph&ugrave; hợp với nhu cầu sử dụng</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Mỗi loại cửa được thiết kế c&oacute; t&iacute;nh năng mục đ&iacute;ch sử dụng. V&igrave; thế, trước khi quyết định lắp đặt cần c&acirc;n nhắc nhu cầu sử dụng. Từ đ&oacute; x&aacute;c định kiểu d&aacute;ng v&agrave; những t&iacute;nh năng cần c&oacute; để chọn được loại cửa ph&ugrave; hợp nhất. V&iacute; dụ, đối với bộ cửa được lắp đặt tại những vị tr&iacute; chịu t&aacute;c động trực tiếp của mưa b&atilde;o, kh&ocirc;ng n&ecirc;n chọn cửa mở trượt m&agrave; n&ecirc;n sử dụng cửa mở quay, kết hợp c&ugrave;ng kho&aacute; đa điểm, &eacute;p c&aacute;nh gi&uacute;p bịt k&iacute;n mọi khe hở giữa c&aacute;nh v&agrave; khung cửa, hạn chế tối đa tiếng ồn b&ecirc;n ngo&agrave;i v&agrave; ngăn nước mưa x&acirc;m nhập v&agrave;o nh&agrave;.</p>\r\n\r\n<p style="text-align:center"><img alt="Kinh nghiệm chọn cửa kính cho gia đình" height="488" src="/image/images/thai-son-3.jpg" width="600" /></p>\r\n\r\n<p dir="ltr" style="text-align:center"><em>Kinh nghiệm chọn cửa k&iacute;nh cho gia đ&igrave;nh</em></p>\r\n\r\n<p dir="ltr" style="text-align:justify">Hay với c&aacute;c biệt thự, nh&agrave; ở c&oacute; kh&ocirc;ng gian xung quanh rộng r&atilde;i, chủ nh&acirc;n c&oacute; thể t&ugrave;y theo sở th&iacute;ch d&ugrave;ng cửa sổ mở quay. C&ograve;n đối với c&aacute;c nh&agrave; mặt phố, nh&agrave; liền kề, cửa mở trượt v&agrave; cửa mở hất sẽ ph&ugrave; hợp hơn bởi thiết kế đ&aacute;p gi&uacute;p tiết kiệm diện t&iacute;ch cửa mở m&agrave; vẫn đảm bảo lưu th&ocirc;ng kh&ocirc;ng kh&iacute; cho căn ph&ograve;ng v&agrave; t&iacute;nh ri&ecirc;ng tư, k&iacute;n đ&aacute;o.</p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Lựa chọn ph&ugrave; hợp với phong c&aacute;ch kiến tr&uacute;c căn nh&agrave;.</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Để đảm bảo t&iacute;nh thẩm mỹ, bạn cần lựa chọn cửa nh&ocirc;m ph&ugrave; hợp với phong c&aacute;ch kiến tr&uacute;c của c&ocirc;ng tr&igrave;nh. Hiện nay, c&aacute;c c&ocirc;ng tr&igrave;nh mang xu hướng kiến tr&uacute;c hiện đại ưa chuộng thiết kế trơn, thanh mảnh, &iacute;t nh&ocirc;m nhiều k&iacute;nh, gi&uacute;p mở rộng tầm nh&igrave;n, giảm bớt sự nặng nề của kết cấu chung. C&aacute;c phụ kiện đi k&egrave;m cũng n&ecirc;n chọn c&ugrave;ng phong c&aacute;ch gọn g&agrave;ng, nhẹ nh&agrave;ng v&agrave; hiện đại. Để c&oacute; được điều đ&oacute;, cửa nh&ocirc;m cần được thiết kế đồng bộ cả từ phụ kiện đến cửa, mang lại vẻ đẹp tinh tế cho căn nh&agrave; của bạn.</p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Đồng bộ</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Đ&acirc;y l&agrave; yếu tố kh&ocirc;ng được xem nhẹ khi lựa chọn cửa nh&ocirc;m. Chỉ khi thanh nh&ocirc;m, hệ phụ kiện v&agrave; gioăng được thiết kế một c&aacute;ch đồng bộ mới c&oacute; thể đảm bảo c&aacute;c bộ phận cửa được lắp gh&eacute;p vừa vặn, k&iacute;n kh&iacute;t v&agrave; phối hợp vận h&agrave;nh nhịp nh&agrave;ng, bền bỉ v&agrave; vận h&agrave;nh nhịp nh&agrave;ng.</p>\r\n\r\n<p style="text-align:center"><img alt="Kinh nghiệm chọn cửa kính cho gia đình" height="426" src="/image/images/thai-son-4.jpg" width="600" /></p>\r\n\r\n<p dir="ltr" style="text-align:center"><em>Kinh nghiệm chọn cửa k&iacute;nh cho gia đ&igrave;nh</em></p>\r\n\r\n<p dir="ltr" style="text-align:justify">Để giảm gi&aacute; th&agrave;nh cạnh tranh, một số đơn vị sản xuất cửa nh&ocirc;m &ldquo;chắp v&aacute;&rdquo; c&aacute;c bộ phận cửa từ nhiều nguồn kh&aacute;c nhau, trong đ&oacute; c&oacute; cả c&aacute;c phụ kiện từ những xưởng tự gia c&ocirc;ng với chất lượng k&eacute;m g&acirc;y ra nhiều hư hỏng, phiền h&agrave; trong qu&aacute; tr&igrave;nh sử dụng. V&igrave; vậy, Đồng bộ l&agrave; yếu tố kh&aacute;ch h&agrave;ng kh&ocirc;ng n&ecirc;n bỏ qua khi chọn mua cửa.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Tr&ecirc;n đ&acirc;y l&agrave; những kinh nghiệm ch&uacute;ng t&ocirc;i muốn chia sẻ với qu&yacute; kh&aacute;ch để qu&yacute; vị c&oacute; thể lựa chọn được cửa sao cho kh&ocirc;ng những&nbsp;ph&ugrave; hợp với c&ocirc;ng năng m&agrave; c&ograve;n đảm bảo t&iacute;nh thẩm mỹ. Mọi th&ocirc;ng tin xin li&ecirc;n hệ với TS Window theo số hotline:&nbsp;&nbsp;024 3678 0066</p>\r\n', 'thai-son-1.jpg', 0, 74, '', '2018-10-01 15:10:22', '2018-10-02 09:10:53', 1, '', '', '', '', '', 'Kinh nghiệm chọn cửa kính cho gia đình', '', 'kinh-nghiem-chon-cua-kinh-cho-gia-dinh', '', NULL),
(122, 'Cửa nhôm kính trở thành xu hướng trong xây dựng', 'Nếu trước đây cửa nhôm kính được đánh giá là kết cấu yếu, không kín khít, thường bị rò rỉ nước mưa. Chỉ sau một thời gian ngắn sử dụng, cửa nhanh chóng bị xuống cấp, khiến cho công năng của sản phẩm không đảm bảo, làm mất thẩm mỹ của ngôi nhà. ', '<p><em>Nếu trước đ&acirc;y cửa nh&ocirc;m k&iacute;nh được đ&aacute;nh gi&aacute; l&agrave; kết cấu yếu, kh&ocirc;ng k&iacute;n kh&iacute;t, thường bị r&ograve; rỉ nước mưa. Chỉ sau một thời gian ngắn sử dụng, cửa nhanh ch&oacute;ng bị xuống cấp, khiến cho c&ocirc;ng năng của sản phẩm kh&ocirc;ng đảm bảo, l&agrave;m mất thẩm mỹ của ng&ocirc;i nh&agrave;. Tuy nhi&ecirc;n, hiện nay của nh&ocirc;m k&iacute;nh đang trở th&agrave;nh xu hướng trong x&acirc;y dựng hiện nay &nbsp;bởi tất cả những nhược điểm trước đ&acirc;y đều được khắc phục.</em></p>\r\n\r\n<p>Hiện tại, C&aacute;c sản phẩm&nbsp;cửa&nbsp;nh&ocirc;m k&iacute;nh đ&atilde; phổ biến những năm gần đ&acirc;y&nbsp;v&agrave; trở n&ecirc;n quen thuộc trong ng&agrave;nh&nbsp;vật liệu x&acirc;y dựng ở nước ta. Cửa nh&ocirc;m k&iacute;nh l&agrave; loại vật liệu c&oacute; thể sử dụng cho cả c&aacute;c c&ocirc;ng tr&igrave;nh từ chung cư cao tầng cho đến nh&agrave; d&acirc;n. Điển h&igrave;nh như d&ograve;ng sản phẩm nh&ocirc;m k&iacute;nh cao cấp của <strong>Th&aacute;i Sơn Window</strong></p>\r\n\r\n<p style="text-align:center"><img alt="" height="450" src="/image/images/thai-son-6.JPG" width="600" /></p>\r\n\r\n<p style="text-align:center"><em>Cửa nh&ocirc;m k&iacute;nh trở th&agrave;nh xu hướng trong x&acirc;y dựng</em></p>\r\n\r\n<p><strong>Khả năng chống lại thời tiết&nbsp;</strong></p>\r\n\r\n<p>Kh&iacute; hậu Việt Nam c&oacute; độ ẩm cao v&agrave; nắng n&oacute;ng gay gắt n&ecirc;n việc sử dụng cửa nh&ocirc;m k&iacute;nh được coi l&agrave; giải ph&aacute;p tối ưu nhất hiện nay. Tại Th&aacute;i Sơn Window, cửa được l&agrave;m từ c&aacute;c hệ nh&ocirc;m như Grando Xingfa, Grando Việt Ph&aacute;p, Việt H&agrave;n...Kết cấu của loại cửa n&agrave;y gồm hệ thống r&atilde;nh tho&aacute;t nước mưa k&egrave;m theo gioăng&nbsp;cao su (d&ugrave;ng để l&agrave;m k&iacute;n, chống ồn, chống thấm) kh&iacute;t k&iacute;n với khu&ocirc;n cửa c&oacute; t&aacute;c dụng l&agrave;m cho nước mưa kh&ocirc;ng đọng lại.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="402" src="/image/images/thai-son-7.jpg" width="600" /></p>\r\n\r\n<p style="text-align:center"><em>Cửa nh&ocirc;m k&iacute;nh trở th&agrave;nh xu hướng trong x&acirc;y dựng</em></p>\r\n\r\n<p><strong>Gi&aacute; cả ph&ugrave; hợp.</strong></p>\r\n\r\n<p>So với cửa gỗ th&igrave; cửa nh&ocirc;m k&iacute;nh c&oacute; gi&aacute; th&agrave;nh rẻ hơn kh&aacute; nhiều m&agrave; vẫn đảm bảo về chất lượng cũng như thẩm mỹ. Cửa nh&ocirc;m c&oacute; rất nhiều loại từ b&igrave;nh d&acirc;n đến cao cấp. Ch&iacute;nh v&igrave; vậy, kh&aacute;ch h&agrave;ng sẽ c&oacute; nhiều sự lựa chọn ph&ugrave; hợp với điều kiện kinh tế cũng như mục đ&iacute;ch sử dụng.&nbsp;</p>\r\n\r\n<p style="text-align:center"><img alt="" height="713" src="/image/images/thai-son-8.jpeg" width="600" /></p>\r\n\r\n<p style="text-align:center"><em>Cửa nh&ocirc;m k&iacute;nh trở th&agrave;nh xu hướng trong x&acirc;y dựng</em></p>\r\n\r\n<p><strong>An to&agrave;n trong sử dụng.</strong></p>\r\n\r\n<p>Được biết t&igrave;nh trạng ch&aacute;y nổ ở Việt Nam ng&agrave;y c&agrave;ng diễn biến phức tạp n&ecirc;n lựa chọn h&agrave;ng đầu khi đặt mua c&aacute;c loại cửa ch&iacute;nh l&agrave; vật liệu chống ch&aacute;y kh&oacute; bị ph&acirc;n hủy hoặc ch&aacute;y.</p>\r\n\r\n<p>Đ&aacute;p ứng đầy đủ mục ti&ecirc;u đ&oacute; m&agrave; cửa nh&ocirc;m k&iacute;nh được ưa chuộng. Cả phần khung v&agrave; k&iacute;nh đều c&oacute; thể chịu ở nhiệt độ rất cao m&agrave; kh&ocirc;ng bị n&oacute;ng chảy. L&agrave;m giảm tối đa sự lan chuyền cửa ngọn lửa khi c&oacute; biến cố xảy ra.</p>\r\n\r\n<p>Với nhiệt độ gần 1000<sup>o</sup>C, thanh nh&ocirc;m chỉ biến dạng m&agrave; kh&ocirc;ng b&eacute;n ch&aacute;y, k&iacute;nh kh&ocirc;ng bị t&aacute;c động bởi nhiệt độ n&agrave;y loại bỏ hẳn qu&aacute; tr&igrave;nh ph&aacute;t t&aacute;n ngọn lửa qua cửa.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="450" src="/image/images/thai-son-9.jpg" width="600" /></p>\r\n\r\n<p style="text-align:center"><em>Cửa nh&ocirc;m k&iacute;nh trở th&agrave;nh xu hướng trong x&acirc;y dựng</em></p>\r\n\r\n<p>Ngo&agrave;i ra với t&iacute;nh chất chống oxi h&oacute;a tr&aacute;nh c&aacute;c t&aacute;c động từ b&ecirc;n ngo&agrave;i cửa nh&ocirc;m k&iacute;nh rất an to&agrave;n khi sử dụng.</p>\r\n\r\n<p>Với những thế mạnh c&ugrave;ng những đặc điểm hợp với xu hướng x&acirc;y dựng hiện nay n&ecirc;n cửa k&iacute;nh đang l&agrave; một trong những vật liệu xanh được khuyến kh&iacute;ch sử dụng.</p>\r\n', 'thai-son-9.jpg', 0, 74, '', '2018-10-02 10:10:51', '2018-10-02 13:10:36', 1, '', '', '', '', '', 'Cửa nhôm kính trở thành xu hướng trong xây dựng', '', 'cua-nhom-kinh-tro-thanh-xu-huong-trong-xay-dung', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `newscat`
--

CREATE TABLE IF NOT EXISTS `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(72, 'Tin chuyên ngành', '', '', 0, 0, '2018-09-05 17:09:14', NULL, 1, NULL, '', '', '', '', '', 'Tin chuyên ngành', '', 'tin-chuyen-nganh', '', 1),
(73, 'Tin công ty', '', '', 0, 0, '2018-09-05 17:09:01', NULL, 1, NULL, '', '', '', '', '', 'Tin công ty', '', 'tin-cong-ty', '', 1),
(74, 'Tin tức chung', '', '', 0, 0, '2018-09-05 17:09:45', NULL, 1, NULL, '', '', '', '', '', 'Tin tức chung', '', 'tin-tuc-chung', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `newscat_languages`
--

CREATE TABLE IF NOT EXISTS `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(139, 72, 'vn', 'Tin chuyên ngành', '', NULL, '', '', '', '', '', 0, 'tin-chuyen-nganh', '', 'Tin chuyên ngành', ''),
(140, 72, 'en', 'Khóa học Home', '', '', '', '', '', '', '', 0, 'khoa-hoc-home', '', 'Khóa học Home', ''),
(141, 73, 'vn', 'Tin công ty', '', NULL, '', '', '', '', '', 0, 'tin-cong-ty', '', 'Tin công ty', ''),
(142, 73, 'en', 'Video Clip', '', '', '', '', '', '', '', 0, 'video-clip', '', 'Video Clip', ''),
(143, 74, 'vn', 'Tin tức chung', '', NULL, '', '', '', '', '', 0, 'tin-tuc-chung', '', 'Tin tức chung', ''),
(144, 74, 'en', ' Học viên', '', '', '', '', '', '', '', 0, 'hoc-vien', '', ' Học viên', '');

-- --------------------------------------------------------

--
-- Structure de la table `news_languages`
--

CREATE TABLE IF NOT EXISTS `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(193, 97, 'vn', 'New Horizon ', 'Tọa lạc tại vị trí đắc địa (87 Lĩnh Nam). Đây là nơi giao thoa giữa 3 tuyến đường huyết mạch thuộc quận Hoàng Mai là: Minh Khai, Tam Trinh, Lĩnh Nam.', '<p>T<span style="font-size:16px"><strong>ọa lạc tại vị tr&iacute; đắc địa (87 Lĩnh Nam). Đ&acirc;y l&agrave; nơi giao thoa giữa 3 tuyến đường huyết mạch thuộc quận Ho&agrave;ng Mai l&agrave;: Minh Khai, Tam Trinh, Lĩnh Nam. Dự &aacute;n New Horizon được đầu tư bởi C&ocirc;ng ty cổ phần x&acirc;y dựng v&agrave; kĩ thuật Việt Nam (Vinaenco)</strong></span></p>\r\n', '', '', '', '', '', 0, 'new-horizon', 'New Horizon ', '', ''),
(194, 97, 'en', ' Khóa học 1', '', '', '', '', '', '', '', 0, 'khoa-hoc-1', ' Khóa học 1', '', ''),
(203, 102, 'vn', 'Germek Premium', 'Germek Premium là tổ hợp gồm 2 tòa nhà cao 34 tầng. Chung cư có vị trí nằm ở khu đô thị mới Hoài Đức, Hà Nội.', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:16px"><strong>Germek Premium l&agrave; tổ hợp gồm 2 t&ograve;a nh&agrave; cao 34 tầng. Chung cư c&oacute; vị tr&iacute; nằm ở khu đ&ocirc; thị mới Ho&agrave;i Đức, H&agrave; Nội. Chung cư c&oacute; đầy đủ c&aacute;c cơ sở hạ tầng như: Khu sinh hoạt c&ocirc;ng cộng, nh&agrave; trẻ mầm non, si&ecirc;u thị.&nbsp;</strong></span></p>\r\n', '', '', '', '', '', 0, 'germek-premium', 'Germek Premium', '', '');
INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(204, 102, 'en', 'Avits Math (IXL)', 'TOÁN TƯ DUY MỸ (IXL) – GIÚP TRẺ EM PHÁT TRIỂN TƯ DUY VÀ HỌC GIỎI TOÁN', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:#1579bd">Avits Math (IXL) </span></span></strong><span style="font-size:11.0pt"><span style="color:#333333">được xem l&agrave;&nbsp;</span></span><strong><span style="font-size:11.0pt"><span style="color:blue">phương ph&aacute;p ph&aacute;t triển tư duy To&aacute;n học ti&ecirc;n tiến của Mỹ d&agrave;nh cho học sinh Mầm non, Tiểu học v&agrave; THCS.</span></span></strong>&nbsp;<strong><span style="font-size:11.0pt"><span style="color:#1579bd">Avits Math (IXL) </span></span></strong><span style="font-size:11.0pt"><span style="color:#333333">hướng đến việc ph&aacute;t triển kỹ năng tư duy To&aacute;n học cho trẻ em ngay từ nhỏ với phương ph&aacute;p c&aacute; thể h&oacute;a nhằm tối đa ho&aacute; hiệu quả v&agrave; ph&aacute;t huy được điểm mạnh đồng thời khắc phục điểm yếu của từng học sinh.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><br />\r\n<span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Nghi&ecirc;n cứu của Trường Đại Học Harvard- Mỹ năm 2006 cho thấy, trẻ em được tiếp cận với kỹ năng tư duy To&aacute;n ngay từ tuổi Mầm non sẽ c&oacute; khả năng tiếp cận với tất cả c&aacute;c m&ocirc;n học tại trường Tiểu học tốt hơn c&aacute;c bạn c&ugrave;ng trang lứa chưa được tiếp cận với kỹ năng n&agrave;y. Nghi&ecirc;n cứu cũng chỉ ra rằng, trẻ em được tiếp cận với kỹ năng tư duy To&aacute;n trước 6 tuổi sẽ c&oacute; khả năng tập trung, khả năng quan s&aacute;t, ph&acirc;n t&iacute;ch vấn đề v&agrave; tư duy logic tốt hơn so với c&aacute;c trẻ em kh&aacute;c.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><br />\r\n<span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Theo kết quả khảo s&aacute;t của&nbsp;</span></span><strong><span style="font-size:11.0pt"><span style="color:blue">Bộ Gi&aacute;o dục Mỹ</span></span></strong><span style="font-size:11.0pt"><span style="color:#333333">&nbsp;cũng cho thấy:</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><br />\r\n<span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">- Học sinh học giỏi To&aacute;n cũng c&oacute; khả năng học giỏi c&aacute;c m&ocirc;n học kh&aacute;c. Tỷ lệ n&agrave;y l&agrave; 38%.<br />\r\n- Học sinh c&oacute; khả năng tư duy To&aacute;n tốt c&oacute; khả năng đỗ v&agrave;o c&aacute;c Trường Đại học cao hơn c&aacute;c học sinh kh&aacute;c đồng thời những sinh vi&ecirc;n n&agrave;y ra trường c&oacute; tỷ lệ t&igrave;m được c&ocirc;ng việc tốt với mức lương cao hơn c&aacute;c sinh vi&ecirc;n kh&aacute;c kh&ocirc;ng giỏi To&aacute;n. Tỷ lệ n&agrave;y l&agrave; 42%.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><br />\r\n<span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Thực tế cho thấy trẻ em Việt Nam c&oacute; tố chất học giỏi m&ocirc;n To&aacute;n. Tuy nhi&ecirc;n, phương ph&aacute;p gi&aacute;o dục hiện tại mới chỉ dừng lại ở việc học nhớ, học vẹt v&agrave; l&agrave;m nhiều th&agrave;nh quen m&agrave; kh&ocirc;ng vận dụng kỹ năng tư duy logic, quan s&aacute;t, ph&acirc;n t&iacute;ch vấn đề. American Skills x&acirc;y dựng chương tr&igrave;nh </span></span><strong><span style="font-size:11.0pt"><span style="color:#1579bd">Avits Math (IXL) </span></span></strong><span style="font-size:11.0pt"><span style="color:#333333">với mong muốn mang đến cho trẻ em Việt Nam kiến thức nền tảng về To&aacute;n học &ndash; th&ocirc;ng qua việc hiểu bản chất vấn đề, đồng thời luyện tập khả năng tư duy logic v&agrave; ph&acirc;n t&iacute;ch vấn đề m&agrave; kh&ocirc;ng cần học nhớ, học vẹt.</span></span></span></span></span></p>\r\n\r\n<h2 style="margin-left:0cm; margin-right:0cm"><span style="font-size:18pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:blue">PHƯƠNG PH&Aacute;P Đ&Agrave;O TẠO</span></span></strong></span></span></span></h2>\r\n\r\n<ul style="list-style-type:circle">\r\n	<li><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">Đ&agrave;o tạo theo&nbsp;</span></span><strong><span style="color:blue">phương ph&aacute;p c&aacute; thể ho&aacute;</span></strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">&nbsp;&ndash; mỗi học sinh sẽ được học theo một kế hoạch học tập ri&ecirc;ng.</span></span></span></span></span></li>\r\n	<li><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">Vận dụng c&aacute;c&nbsp;</span></span><strong><span style="color:blue">kỹ thuật giảng dạy đa chiều</span></strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">&nbsp;gồm: quan s&aacute;t h&igrave;nh ảnh gi&aacute;o cụ trực quan -&gt; diễn đạt bằng ng&ocirc;n từ -&gt; suy luận tư duy logic-&gt; to&aacute;n viết -&gt; ứng dụng.Gi&uacute;p học sinh hiểu nhanh bản chất của vấn đề, ph&aacute;t triển khả năng quan s&aacute;t, ph&aacute;n đo&aacute;n, tư duy đồng thời biết ứng dụng to&aacute;n v&agrave;o thực tế.</span></span></span></span></span></li>\r\n</ul>\r\n\r\n<ul style="list-style-type:circle">\r\n	<li><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">Vận dụng c&aacute;ch tiếp cận vấn đề đi từ bản chất, từ c&aacute;i cơ bản đến tổng thể v&agrave; n&acirc;ng cao với 3 bộ b&agrave;i tập: r&egrave;n luyện kỹ năng t&iacute;nh to&aacute;n, To&aacute;n c&oacute; lời giải, To&aacute;n tư duy tổng hợp. Gi&uacute;p trẻ thấu hiểu to&aacute;n, y&ecirc;u th&iacute;ch học to&aacute;n v&agrave; ph&aacute;t triển tư duy.</span></span></span></span></span></li>\r\n	<li><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">Qu&aacute; tr&igrave;nh học tập với quy tr&igrave;nh kh&eacute;p k&iacute;n:&nbsp;</span></span><strong><span style="color:blue">Kiểm tra đầu v&agrave;o- Đ&agrave;o tạo- Kiểm tra cuối kho&aacute;</span></strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">. Gi&uacute;p đ&aacute;nh gi&aacute; sự tiến bộ của học sinh trong từng kho&aacute; học.</span></span></span></span></span></li>\r\n	<li><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><strong><span style="color:blue">Gi&aacute;o tr&igrave;nh</span></strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">&nbsp;do c&aacute;c chuy&ecirc;n gia To&aacute;n học của American Skills x&acirc;y dựng c&oacute; sự điều chỉnh cho&nbsp;</span></span><em>ph&ugrave; hợp với chương tr&igrave;nh To&aacute;n của Việt Nam</em><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:blue">.</span></span></span></span></span></li>\r\n	<li><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">Phương ph&aacute;p giảng dạy trực quan, sinh động lấy học sinh l&agrave;m chủ thể.</span></span></span></span></span></li>\r\n</ul>\r\n\r\n<h2 style="margin-left:0cm; margin-right:0cm"><span style="font-size:18pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:black">LƠI &Iacute;CH SAU KH&Oacute;A HỌC</span></span></strong></span></span></span></h2>\r\n\r\n<ul>\r\n	<li><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">&nbsp; &nbsp; Gi&uacute;p học sinh hiểu bản chất vấn đề v&agrave; biết ứng dụng To&aacute;n v&agrave;o thực tế.</span></span></span></span></span></li>\r\n	<li><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">&nbsp;&nbsp;&nbsp; Gi&uacute;p trẻ em y&ecirc;u th&iacute;ch học to&aacute;n, c&oacute; &yacute; thức tự gi&aacute;c trong học tập.</span></span></span></span></span></li>\r\n	<li><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">&nbsp;&nbsp;&nbsp; Gi&uacute;p c&aacute;c em học tốt M&ocirc;n To&aacute;n v&agrave; c&aacute;c m&ocirc;n học kh&aacute;c tr&ecirc;n trường.</span></span></span></span></span></li>\r\n	<li><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">&nbsp;&nbsp;&nbsp; Gi&uacute;p trẻ em ph&aacute;t triển tư duy to&agrave;n diện.</span></span></span></span></span></li>\r\n	<li><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#333333">&nbsp;&nbsp;&nbsp; Gi&uacute;p c&aacute;c em ho&agrave;n thiện bản th&acirc;n v&agrave; l&agrave;m chủ cuộc sống.</span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<h2 style="margin-left:0cm; margin-right:0cm">&nbsp;</h2>\r\n\r\n<h2 style="margin-left:0cm; margin-right:0cm"><span style="font-size:18pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:black">CHƯƠNG TR&Igrave;NH TIỀN TIỂU HỌC : (D&agrave;nh cho trẻ từ 4-6 tuổi)</span></span></strong></span></span></span></h2>\r\n\r\n<h2 style="margin-left:0cm; margin-right:0cm"><span style="font-size:18pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:black">avits MATH FOR PRE- SCHOOL: </span></span><span style="font-size:11.0pt"><span style="background-color:white"><span style="color:black">trang bị cho trẻ những kiến thức nền tảng của tư duy to&aacute;n học, tiếp cận v&agrave; ph&aacute;t triển tư duy số, khơi dậy niềm hứng th&uacute; với m&ocirc;n To&aacute;n tr&ecirc;n cơ sở thấu hiểu bản chất của c&aacute;c kh&aacute;i niệm to&aacute;n v&agrave; sự ứng dụng của to&aacute;n để giải quyết vấn đề thế giới thực.</span></span></span><br />\r\n<span style="font-size:11.0pt"><span style="color:#333333">Với 3 cấp độ: Starter =&gt; K =&gt; SC</span></span></strong></span></span></span></h2>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">GỒM C&Aacute;C CHỦ ĐỀ:</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Color - M&agrave;u sắc</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Ngo&agrave;i &nbsp;việc &nbsp;nhận &nbsp;biết, &nbsp;ph&acirc;n &nbsp;biệt &nbsp;v&agrave; &nbsp;đọc &nbsp;t&ecirc;n &nbsp;m&agrave;u sắc c&aacute;c em c&ograve;n biết th&ocirc;ng qua m&agrave;u sắc ph&acirc;n biệt sự giống nhau v&agrave; kh&aacute;c nhau của sự vật, hiện tượng. T&igrave;m ra quy luật của sự vận động m&agrave;u sắc trong tự nhi&ecirc;n.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Material - Chất liệu</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Chất liệu l&agrave; một thuộc t&iacute;nh quan trọng gi&uacute;p trẻ cảm nhận được c&aacute;c đồ vật, ph&acirc;n biệt đặc t&iacute;nh của c&aacute;c đồ &nbsp;vật. &nbsp;R&egrave;n &nbsp;luyện &nbsp;kỹ &nbsp;năng tư &nbsp;duy &nbsp;của &nbsp;trẻ &nbsp;về &nbsp;sự giống v&agrave; kh&aacute;c nhau của c&aacute;c đồ vật th&ocirc;ng qua chất liệu. Qua đ&oacute; gi&uacute;p c&aacute;c em thấy được sự đa dạng của cuộc sống.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Size - K&iacute;ch thước</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Trẻ bước đầu được l&agrave;m quen với k&iacute;ch cỡ to/ nhỏ, ngắn/d&agrave;i. &nbsp;Biết &nbsp;so &nbsp;s&aacute;nh &nbsp;hơn/nhất. &nbsp;Ban &nbsp;đầu &nbsp;h&igrave;nh th&agrave;nh tư duy ước lượng v&agrave; tỷ lệ.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Shape - H&igrave;nh dạng</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">H&igrave;nh &nbsp;dạng &nbsp;l&agrave; &nbsp;kh&aacute;i &nbsp;niệm &nbsp;ban &nbsp;đầu &nbsp;của &nbsp;tư &nbsp;duy &nbsp;về h&igrave;nh học. Qua chủ để n&agrave;y c&aacute;c em kh&ocirc;ng chỉ dừng lại ở việc nhận biết h&igrave;nh dạng m&agrave; c&ograve;n biết được đặc điểm của c&aacute;c dạng h&igrave;nh, so s&aacute;nh sự giống v&agrave; kh&aacute;c nhau của h&igrave;nh. Gi&uacute;p c&aacute;c em ph&aacute;t triển khả năng quan s&aacute;t, ph&acirc;n t&iacute;ch v&agrave; tư duy về h&igrave;nh.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Classify - Ph&acirc;n loại</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Ph&acirc;n loại l&agrave; chủ đề tư duy tổng hợp của c&aacute;c chủ đề tr&ecirc;n. Qua chủ đề n&agrave;y học sinh được ứng dụng c&aacute;c kiến thức đ&atilde; học v&agrave;o c&aacute;c dạng b&agrave;i tập ph&acirc;n t&iacute;ch v&agrave; tư duy tổng hợp. Gi&uacute;p học sinh r&egrave;n luyện khả năng tư duy về h&igrave;nh v&agrave; ph&aacute;t triển khả năng qua s&aacute;t nhạy b&eacute;n.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Positions - Vị tr&iacute;</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Qua chủ đề n&agrave;y học sinh c&oacute; được những kh&aacute;i niệm ban &nbsp;đầu &nbsp;về &nbsp;kh&ocirc;ng &nbsp;gian &nbsp;v&agrave; &nbsp;l&agrave; &nbsp;tiền &nbsp;đề &nbsp;cho &nbsp;h&igrave;nh &nbsp;học kh&ocirc;ng gian sau n&agrave;y. Tư duy về vị tr&iacute; trong kh&ocirc;ng gian gi&uacute;p &nbsp;trẻ &nbsp;ph&aacute;t &nbsp;triển &nbsp;khả &nbsp;năng &nbsp;tưởng &nbsp;tượng &nbsp;v&agrave; &nbsp;định hướng trong kh&ocirc;ng gian tốt.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Patterns - Quy luật</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">L&agrave; chủ đề điển h&igrave;nh của kỹ năng tư duy của bộ n&atilde;o. Chủ đề n&agrave;y gi&uacute;p r&egrave;n luyện chỉ số IQ của trẻ, gi&uacute;p trẻ ph&aacute;t triển khả năng quan s&aacute;t, ph&acirc;n t&iacute;ch, ph&aacute;n đo&aacute;n, suy luận logic.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Numbers and counting - Tư duy số</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Tư duy số l&agrave; chủ đề kh&ocirc;ng thể thiếu gi&uacute;p trẻ học giỏi To&aacute;n. Ngo&agrave;i việc gi&uacute;p trẻ nhận diện v&agrave; viết số, th&ocirc;ng qua &nbsp;c&aacute;c &nbsp;b&agrave;i &nbsp;tập &nbsp;ứng dụng &nbsp;sẽ &nbsp;gi&uacute;p &nbsp;c&aacute;c &nbsp;em &nbsp;hiểu &nbsp;bản chất của số, vị tr&iacute; của số tr&ecirc;n trục số, khoảng c&aacute;ch của c&aacute;c số. Học đếm sẽ gi&uacute;p trẻ tăng khả năng tập trung, ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; h&igrave;nh th&agrave;nh nếp nhăn của n&atilde;o bộ.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Sorting, ordering, and classifying - Sắp xếp, thứ tự, ph&acirc;n nh&oacute;m</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Khi đ&atilde; hiểu bản chất của c&aacute;c số c&aacute;c em sẽ được r&egrave;n luyện sắp xếp thứ tự c&aacute;c số theo y&ecirc;u cầu. L&agrave;m quen với việc ph&acirc;n nh&oacute;m theo số lượng v&agrave; hiểu được bản chất của nh&oacute;m. Tư duy về nh&oacute;m l&agrave; một dạng tư duy ho&agrave;n to&agrave;n mới m&agrave; từ trước đến nay c&aacute;c học sinh &iacute;t được tiếp cận. Tư duy nh&oacute;m gi&uacute;p c&aacute;c em giải quyết được rất nhiều dạng b&agrave;i tập sau n&agrave;y v&agrave; thậm ch&iacute; cả c&aacute;c b&agrave;i to&aacute;n k&iacute;nh tế, x&atilde; hội cũng như tiếp cận c&aacute;c m&ocirc;n học kh&aacute;c dễ d&agrave;ng hơn.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Fractions - Ph&acirc;n số</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">L&agrave; một chủ đề ho&agrave;n to&agrave;n mới với c&aacute;c em học sinh ở tuổi Mầm mon. Nhưng với c&aacute;ch tiếp cận thực tế v&agrave; trực quan th&ocirc;ng qua việc chia đồ vật, chia h&igrave;nh chương tr&igrave;nh gi&uacute;p c&aacute;c em hiểu bản chất của ph&acirc;n số v&agrave; t&igrave;m được gi&aacute; trị của ph&acirc;n số một c&aacute;ch dễ d&agrave;ng.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Measurement - Đo lường</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Gi&uacute;p c&aacute;c em c&oacute; kh&aacute;i niệm ban đầu về k&iacute;ch thước bằng c&aacute;ch so s&aacute;nh với c&aacute;c vật kh&aacute;c. Gi&uacute;p c&aacute;c em ph&aacute;t triển tư duy về tỷ lệ v&agrave; khả năng ước lượng. Ngo&agrave;i ra, c&aacute;c em c&ograve;n biết so s&aacute;nh c&aacute;c nh&oacute;m vật với nhau như: d&agrave;i hơn/ d&agrave;i nhất, ngắn hơn/ ngắn nhất, thấp hơn/ thấp nhất,&hellip;</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Time - Tư duy thời gian</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Thời gian l&agrave; nh&acirc;n tố v&ocirc; c&ugrave;ng quan trọng với cuộc sống của mỗi người. Biết tư duy về thời gian sẽ gi&uacute;p trẻ biết sắp xếp kế hoạch học tập v&agrave; vui chơi ph&ugrave; hợp. Hiểu về sự vận động của thời gian sẽ gi&uacute;p c&aacute;c em c&oacute; &yacute; thức v&agrave; biết c&aacute;ch sử dụng thời gian tốt hơn v&agrave; hiệu quả hơn.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Comparing - So s&aacute;nh</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Qua chủ đề n&agrave;y gi&uacute;p c&aacute;c em hiểu được mối tương quan giữa c&aacute;c sự vật v&agrave; hiện tượng qua đ&oacute; c&aacute;c em thấy được quy luật của To&aacute;n học. Đ&acirc;y l&agrave; một chủ đề tư duy tổng hợp của phần tư duy số. Để giải quyết được c&aacute;c dạng b&agrave;i tập trong chủ đề n&agrave;y c&aacute;c em phải c&oacute; tư duy tốt về lượng, nh&oacute;m, về tương quan tỷ lệ.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Addition - Ph&eacute;p cộng</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Ph&eacute;p cộng l&agrave; chủ đề kh&ocirc;ng thể thiếu trong To&aacute;n học. Math Skills kh&ocirc;ng ch&uacute; trọng đến kết quả của ph&eacute;p t&iacute;nh m&agrave; quan t&acirc;m đến phương ph&aacute;p để đi đến kết quả đ&oacute;. Với phương ph&aacute;p tư duy số kh&ocirc;ng chỉ gi&uacute;p c&aacute;c em t&iacute;nh nhẩm nhanh, nhẩm đ&uacute;ng m&agrave; c&ograve;n gi&uacute;p ph&aacute;t triển tư duy v&agrave; tr&iacute; n&atilde;o.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Subtraction - Ph&eacute;p trừ</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Ph&eacute;p trừ l&agrave; dạng ngược lại của ph&eacute;p cộng. &nbsp;Tư duy ngược đ&ocirc;i khi kh&oacute; hơn tư duy xu&ocirc;i. Với phương ph&aacute;p tư duy Math Skills gi&uacute;p tr&iacute; n&atilde;o của c&aacute;c em hoạt động đa chiều v&agrave; linh hoạt.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:fuchsia">Proportional thinking - Tư duy tỷ lệ</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Đ&acirc;y l&agrave; đỉnh cao của tư duy số. B&agrave;i tập tư duy tỷ lệ gi&uacute;p r&egrave;n luyện khả năng tư duy tổng hợp, khả năng định lượng v&agrave; tư duy nh&oacute;m.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">1. Cấp độ Starter : </span></span></strong><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">sẽ bắt đầu được tiếp cận dần với c&aacute;c nội dung To&aacute;n căn bản. Bắt đầu với c&aacute;c nội dung nền tảng: ph&acirc;n biệt h&igrave;nh dạng, m&agrave;u sắc, chất liệu, con số để dần dần y&ecirc;u th&iacute;ch việc tương t&aacute;c với con số. Từ đ&oacute; c&aacute;c b&eacute; sẽ y&ecirc;u th&iacute;ch dần m&ocirc;n To&aacute;n học tưởng chừng như rất kh&ocirc; khan.</span></span></span><br />\r\n<span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black"><span style="background-color:white">Khi đ&atilde; y&ecirc;u th&iacute;ch m&ocirc;n học, trẻ sẽ tiếp tục được kh&aacute;m ph&aacute; c&aacute;c kiến thức To&aacute;n n&acirc;ng cao hơn: Đếm &ndash; viết, sắp xếp thứ tự c&aacute;c con số. Dần dần từ đ&oacute; mới tiếp cận đến c&aacute;c ph&eacute;p t&iacute;nh cộng v&agrave; trừ. &nbsp;Đ&acirc;y cũng ch&iacute;nh l&agrave; nền tảng để ph&aacute;t triển tư duy v&agrave;o lứa tuổi n&agrave;y cho trẻ.</span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">2. Cấp độ Kindergarten&nbsp;(K) : </span></span></strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">được x&acirc;y dựng đặc th&ugrave; d&agrave;nh cho trẻ từ 5 đến 6 tuổi.<br />\r\n&nbsp;<br />\r\nTrẻ được l&agrave;m quen, kh&aacute;m ph&aacute; c&aacute;c con số th&ocirc;ng qua c&aacute;c nội dung: số liền trước - số liền sau, đếm xu&ocirc;i - đếm ngược, đơn vị&hellip; để hiểu được thứ tự v&agrave; bản chất c&aacute;c con số. Trẻ được t&igrave;m hiểu th&ecirc;m về c&aacute;c h&igrave;nh học: h&igrave;nh oval, h&igrave;nh thoi, h&igrave;nh 5 cạnh đồng thời biết chia h&igrave;nh, gh&eacute;p h&igrave;nh, s&aacute;ng tạo h&igrave;nh để tạo ra c&aacute;c h&igrave;nh mới. Thay v&igrave; trẻ học c&aacute;ch cộng, trừ &ldquo;một c&aacute;ch m&aacute;y m&oacute;c&rdquo; bằng việc nhớ ph&eacute;p t&iacute;nh, trẻ tại IXL được học bản chất của c&aacute;c ph&eacute;p t&iacute;nh qua nhiều c&aacute;ch tiếp cận kh&aacute;c nhau. VD: C&oacute; 2 nh&oacute;m số lượng kh&aacute;c nhau, cần th&ecirc;m v&agrave;o bao nhi&ecirc;u h&igrave;nh để 2 nh&oacute;m bằng nhau. Đ&acirc;y l&agrave; nền tảng gi&uacute;p trẻ biết c&aacute;ch tư duy đ&uacute;ng về To&aacute;n học. V&agrave; khi đ&atilde; hiểu điều nay, trẻ sẽ rất th&iacute;ch học m&ocirc;n To&aacute;n.<br />\r\n&nbsp;<br />\r\n<strong>3. Cấp độ Starter School (SC) : </strong>được x&acirc;y dựng đặc th&ugrave; d&agrave;nh cho trẻ&nbsp;<strong>đang chuẩn bị v&agrave;o lớp 1.</strong><br />\r\nThời điểm n&agrave;y rất quan trọng đối với trẻ v&igrave; đ&acirc;y l&agrave; giai đoạn chuyển tiếp m&ocirc;i trường học tập từ mầm non l&ecirc;n tiểu học.<br />\r\n&nbsp;<br />\r\nTrẻ sẽ được tiếp cận với c&aacute;c kiến thức to&aacute;n một c&aacute;ch logic hơn. Thay v&igrave; học ngay c&aacute;c ph&eacute;p cộng, ph&eacute;p trừ, trẻ vẫn sẽ được tiếp cận c&aacute;c nội dung nền tảng từ quy luật, h&igrave;nh học... V&agrave; dần dần l&agrave;m quen với c&aacute;c kh&aacute;i niệm to&aacute;n học: trục số, đếm c&aacute;ch, t&igrave;m khoảng c&aacute;ch giữa c&aacute;c số.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">&nbsp;<br />\r\n<em>Với chương tr&igrave;nh Tư duy To&aacute;n&nbsp;Mỹ - Avits Math (IXL) - </em></span></span><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">FOR PRE- SCHOOL</span></span><em><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">, trẻ kh&ocirc;ng chỉ thực hiện đ&uacute;ng theo y&ecirc;u cầu, trẻ cần phải giải th&iacute;ch được qu&aacute; tr&igrave;nh đi đến kết quả quả, v&igrave; sao lại l&agrave;m được như vậy để thực h&agrave;nh c&aacute;ch diễn đạt suy nghĩ của m&igrave;nh. C&aacute;c hoạt động thực h&agrave;nh v&agrave; l&agrave;m quen kiến thức được đan xen với nhau trong qu&aacute; tr&igrave;nh học gi&uacute;p trẻ hứng th&uacute; với m&ocirc;n học, tự tin hơn với những b&agrave;i To&aacute;n ở trường. Quan trọng hơn, trẻ được cung cấp c&aacute;c kiến thức rất nền tảng một c&aacute;ch hệ thống v&agrave; hiểu s&acirc;u về bản chất, gi&uacute;p trẻ tư duy v&agrave; ứng dụng v&agrave;o những kiến thức học ở cấp cao hơn.</span></span></em><br />\r\n<span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">&nbsp;<br />\r\n<em>Điều đặc biệt của Chương tr&igrave;nh Avits Math (IXL)</em></span></span><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black"> FOR PRE- SCHOOL</span></span><em><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black"> l&agrave; lu&ocirc;n c&oacute; hoạt động s&aacute;ng tạo mang t&iacute;nh ứng dụng của nội dung vừa học v&agrave;o thực tế. Khi trẻ biết c&aacute;ch vận dụng những điều m&igrave;nh vừa học v&agrave;o cuộc sống, trẻ hiểu bản chất kiến thức v&agrave; sẽ nhớ rất l&acirc;u nội dung học đ&oacute;. Từ đ&oacute; l&agrave;m nền tảng để ph&aacute;t triển tư duy, tr&iacute; th&ocirc;ng minh v&agrave; t&iacute;nh s&aacute;ng tạo của trẻ lứa tuổi n&agrave;y.</span></span></em></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<h2 style="margin-left:0cm; margin-right:0cm"><span style="font-size:18pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:black">CHƯƠNG TR&Igrave;NH TIỂU HỌC </span></span></strong></span></span></span></h2>\r\n\r\n<h2 style="margin-left:0cm; margin-right:0cm"><span style="font-size:18pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:black">avits math (IXL) - FOR PRIMARY SCHOOL :</span></span></strong></span></span></span></h2>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">D&agrave;nh cho học sinh tiểu học (6-10 tuổi)&nbsp;được thiết kế nội dung song song với kiến thức to&aacute;n tr&ecirc;n trường của học sinh gi&uacute;p bổ trợ c&aacute;c kiến thức cần thiết cho học sinh. Ngo&agrave;i ra Avits Math c&ograve;n bổ sung một số dạng to&aacute;n quốc tế mang t&iacute;nh ứng dụng cao gi&uacute;p c&aacute;c em ph&aacute;t triển khả năng tư duy, biết ứng dụng to&aacute;n v&agrave;o thực tế.</span></span><br />\r\n<br />\r\n<span style="font-size:11.0pt"><span style="color:#333333">Với phương ph&aacute;p tiệp cận vấn đề To&aacute;n ho&agrave;n to&agrave;n mới v&agrave; khoa học, đi từ dễ đến kh&oacute;, đi từ cơ bản đến phức tạp. Avits Math </span></span><span style="font-size:11.0pt"><span style="color:black">(IXL) </span></span><span style="font-size:11.0pt"><span style="color:#333333">gi&uacute;p học sinh hiểu bản chất vấn đề, c&oacute; kiến thức To&aacute;n vững chắc v&agrave; kh&ocirc;ng c&ograve;n cảm thấy &aacute;p lực với m&ocirc;n To&aacute;n.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><br />\r\n<span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Nội dung Chương tr&igrave;nh được thiết kế với 5 cấp độ:</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Level 1 &ndash; Level 2 &ndash; Level 3 &ndash; Level 4 &ndash; Level 5</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">1. Tư duy số v&agrave; c&aacute;c ph&eacute;p to&aacute;n (<em>Number sense &amp; operations</em>)</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">Hiểu r&otilde; c&aacute;c kh&aacute;i niệm, bản chất về số tự nhi&ecirc;n, cấu tạo số l&agrave;m tiền đề để r&egrave;n luyện kỹ năng t&iacute;nh to&aacute;n v&agrave; ph&aacute;t triển khả năng t&iacute;nh nhẩm, t&iacute;nh nhanh v&agrave; tư duy logic cho trẻ. Hiểu r&otilde; bản chất của c&aacute;c ph&eacute;p to&aacute;n cộng, trừ, nh&acirc;n, chia để đưa ra phương ph&aacute;p t&iacute;nh&nbsp; to&aacute;n ph&ugrave; hợp v&agrave; cho kết quả nhanh, ch&iacute;nh x&aacute;c nhất.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif">&nbsp;</span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">2.Ph&acirc;n số (<em>Fractions</em>)</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">Giới thiệu về ph&acirc;n số cho học sinh hiểu r&otilde; kh&aacute;i niệm &ldquo;ph&acirc;n số l&agrave; g&igrave;?&rdquo; từ những h&igrave;nh ảnh trực quan. Khi nắm chắc được kh&aacute;i niệm, hiểu được bản chất của ph&acirc;n số học sinh sẽ thực hiện ph&eacute;p t&iacute;nh li&ecirc;n quan đến ph&acirc;n số một c&aacute;ch dễ d&agrave;ng v&agrave; ứng dụng th&agrave;nh thạo trong c&aacute;c b&agrave;i to&aacute;n đố li&ecirc;n quan.<br />\r\n&nbsp;</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">3. Đo lường &ndash; Thời gian (<em>Measurement - Time</em>)</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">Trẻ nắm vững c&aacute;c đơn vị đo lường </span></span><span style="background-color:#f9f9f9"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#3b3b3b">- thời gian, độ d&agrave;i, diện t&iacute;ch, thể t&iacute;ch, khối lượng, dung t&iacute;ch v&agrave; tiền tệ.</span></span></span><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">, biết &aacute;p dụng v&agrave;o c&aacute;c b&agrave;i to&aacute;n thực tế.<br />\r\n&nbsp;</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">4. H&igrave;nh học (<em>Geometry</em>)</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">Gi&uacute;p trẻ &nbsp;nhận biết kh&aacute;i niệm, thuộc t&iacute;nh, h&igrave;nh th&agrave;nh của mỗi loại h&igrave;nh kh&aacute;c nhau; mối tương quan giữa c&aacute;c h&igrave;nh. Từ đ&oacute;, trẻ &aacute;p dụng t&iacute;nh diện t&iacute;ch, chu vi hay thể t&iacute;ch của c&aacute;c h&igrave;nh kh&aacute;c nhau.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif">&nbsp;</span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><strong><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">5. Tư duy tổng hợp (<em>Mathematical Thinking</em>) </span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">Gi&uacute;p trẻ r&egrave;n luyện nhiều kỹ năng tư duy to&aacute;n tổng hợp th&ocirc;ng qua c&aacute;c dạng to&aacute;n đa dạng như c&acirc;n thăng bằng, to&aacute;n quy luật, tư duy nh&oacute;m, tư duy tỷ lệ, to&aacute;n đố, tư duy l&ocirc;gic, lập v&agrave; đọc biểu đồ, to&aacute;n x&aacute;c suất, l&agrave;m tr&ograve;n, ước lượng &hellip; Trẻ được r&egrave;n luyện nhiều kỹ năng như: đọc đề, ph&acirc;n t&iacute;ch đề b&agrave;i, &nbsp;chia nhỏ c&aacute;c vấn đề trong b&agrave;i to&aacute;n, vận dụng khả năng tư duy logic để việc giải to&aacute;n trở n&ecirc;n đơn giản, hiệu quả v&agrave; ch&iacute;nh x&aacute;c.</span></span></span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">&nbsp;6. </span></span><strong><span style="background-color:#f9f9f9"><span style="color:black">Giải to&aacute;n c&oacute; lời văn (<em>Problem solving )</em></span></span></strong><br />\r\n<span style="background-color:#f9f9f9"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#3b3b3b">R&egrave;n luyện c&aacute;c bước gồm: Chia vấn đề th&agrave;nh những phần nhỏ, đơn giản hơn, rồi ph&acirc;n t&iacute;ch, giải to&aacute;n, kiểm tra v&agrave; đ&aacute;nh gi&aacute;.</span></span></span><br />\r\n<span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:black">&nbsp;</span></span></span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<h2 style="margin-left:0cm; margin-right:0cm"><span style="font-size:18pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:black">CHƯƠNG TR&Igrave;NH thcs </span></span></strong></span></span></span></h2>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:11.0pt"><span style="color:black">avits math (IXL) - junior high school</span></span></strong></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#3b3b3b">Kết hợp v&agrave; n&acirc;ng cao giữa l&yacute; thuyết v&agrave; c&aacute;c b&agrave;i to&aacute;n ứng dụng, ph&aacute;t triển cho học sinh kỹ năng tư duy, sự hiểu biết v&agrave; th&aacute;i độ tự tin. Nắm chắc kiến thức từ cơ bản đến n&acirc;ng cao.</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:10.5pt"><span style="background-color:white"><span style="color:#333333">-&nbsp;T&iacute;ch cực ho&aacute; hoạt động học tập của học sinh, r&egrave;n luyện khả năng tự học, ph&aacute;t hiện v&agrave; giải quyết vấn đề của HS nhằm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển ở HS tư duy t&iacute;ch cực, độc lập v&agrave; s&aacute;ng tạo.</span></span></span><br />\r\n<span style="font-size:10.5pt"><span style="color:#333333"><span style="background-color:white">&minus; Chọn lựa sử dụng những phương ph&aacute;p ph&aacute;t huy t&iacute;nh t&iacute;ch cực chủ động của Học Sinh trong học tập v&agrave; ph&aacute;t huy khả năng tự học. Hoạt động ho&aacute; việc học tập của HS bằng những dẫn dắt cho HS tự th&acirc;n trải nghiệm chiếm lĩnh tri thức, chống lối học thụ động.</span><br />\r\n<span style="background-color:white">&minus; Tận dụng ưu thế của từng phương ph&aacute;p dạy học, ch&uacute; trọng sử dụng phương ph&aacute;p dạy học ph&aacute;t hiện v&agrave; giải quyết vấn đề.</span><br />\r\n<span style="background-color:white">&minus; Coi trọng cung cấp kiến thức, r&egrave;n luyện kĩ năng vận dụng kiến thức v&agrave;o thực tiễn.</span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Nội dung Chương tr&igrave;nh được thiết kế với 4 cấp độ:</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#333333">Level 6 &ndash; Level 7 &ndash; Level 8 &ndash; Level 9</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style="list-style-type:none">\r\n	<ol>\r\n		<li style="list-style-type:none">\r\n		<ol>\r\n			<li><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#3b3b3b">Số học : T&iacute;nh chia hết, số nguy&ecirc;n tố, số ch&iacute;nh phương, bội v&agrave; ước c&aacute;c số .</span></span></span></span></span></li>\r\n			<li><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#3b3b3b">Đại số : Gi&uacute;p học sinh thực hiện th&agrave;nh thạo tất cả c&aacute;c dạng to&aacute;n đại số nền tảng như tỷ lệ thức, biểu thức, ph&acirc;n thức đến c&aacute;c kh&aacute;i niệm n&acirc;ng cao như biến số, h&agrave;m số hay giải c&aacute;c dạng to&aacute;n đại số đặc trưng như phương tr&igrave;nh, bất phương tr&igrave;nh, hệ phương tr&igrave;nh, căn thức. </span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p style="margin-left:13.5pt; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#3b3b3b">Ngo&agrave;i ra, học sinh được tiếp cận với dạng ph&acirc;n t&iacute;ch dữ liệu từ những thao t&aacute;c đơn giản như đọc dữ liệu, so s&aacute;nh v&agrave; sắp xếp dữ liệu. B&ecirc;n cạnh đ&oacute;, học sinh c&ograve;n biết c&aacute;ch biểu diễn c&aacute;c dữ liệu bằng đồ thị từ đ&oacute; suy luận t&igrave;m ra đ&aacute;p &aacute;n cũng như x&acirc;y dựng c&aacute;c qui luật logic</span></span></span></span></span></p>\r\n\r\n<p style="margin-left:13.5pt; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:11.0pt"><span style="color:#4f4f4f">Cũng cố v&agrave; bổ sung c&aacute;c kiến thức về chương tr&igrave;nh đại số của BGD&amp;ĐT từ lớp 6 đến lớp 9.</span></span></em></span></span></span></p>\r\n\r\n<ol>\r\n	<li style="list-style-type:none">\r\n	<ol>\r\n		<li style="list-style-type:none">\r\n		<ol start="3">\r\n			<li><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#3b3b3b">H&igrave;nh học : Gi&uacute;p học sinh được l&agrave;m quen về tất cả c&aacute;c h&igrave;nh phẳng trong chương tr&igrave;nh phổ th&ocirc;ng v&agrave; c&aacute;c b&agrave;i to&aacute;n li&ecirc;n quan đến h&igrave;nh phẳng như chu vi, diện t&iacute;ch. C&aacute;c h&igrave;nh kh&ocirc;ng gian cũng được đưa v&agrave;o bằng c&aacute;c m&ocirc; h&igrave;nh trực quan th&uacute; vị nhằm gi&uacute;p học sinh ph&acirc;n biệt c&aacute;c h&igrave;nh phẳng, h&igrave;nh khối. Đồng thời c&aacute;c em c&oacute; kh&aacute;i niệm về thể t&iacute;ch, diện t&iacute;ch xung quanh, diện t&iacute;ch to&agrave;n phần. Đ&acirc;y l&agrave; nền tảng để c&aacute;c em học tốt chương tr&igrave;nh phổ th&ocirc;ng v&agrave; &aacute;p dụng kiễn thức v&agrave;o thực tiễn.</span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p style="margin-left:13.5pt; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:#3b3b3b">C&aacute;c chủ đề c&aacute;c em đều được l&agrave;m quen với dạng b&agrave;i to&aacute;n giải quyết vấn đề ở những mức độ kh&aacute;c nhau. Từ những b&agrave;i to&aacute;n c&oacute; lời văn đơn giản đến c&aacute;c b&agrave;i to&aacute;n nhiều bước, lập sơ đồ giải to&aacute;n. Giải quyết vấn đề gi&uacute;p ph&aacute;t triển tư duy logic v&agrave; s&aacute;ng tạo để giải quyết c&aacute;c vấn đề trong cuộc sống. </span></span></span></span></span></p>\r\n\r\n<p style="margin-left:13.5pt; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:11.0pt"><span style="color:#4f4f4f">Cũng cố v&agrave; bổ sung c&aacute;c kiến thức về chương tr&igrave;nh h&igrave;nh học của BGD&amp;ĐT từ lớp 6 đến lớp 9.</span></span></em></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:11.0pt"><span style="color:black">4. Luyện thi theo y&ecirc;u cầu : </span></span></span></span></span></p>\r\n\r\n<h4 style="margin-left:0cm; margin-right:0cm"><span style="font-size:11pt"><span style="background-color:whitesmoke"><span style="font-family:Cambria,serif"><span style="color:#4f81bd"><strong><em><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#4f4f4f">Luyện c&aacute;c loại đề thi của BGD&amp;ĐT, c&aacute;c chương tr&igrave;nh thi v&agrave;o c&aacute;c trường chuy&ecirc;n&hellip;..</span></span></em></strong></span></span></span></span></h4>\r\n\r\n<h4 style="margin-left:0cm; margin-right:0cm"><span style="font-size:11pt"><span style="background-color:whitesmoke"><span style="font-family:Cambria,serif"><span style="color:#4f81bd"><strong><em><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="color:#4f4f4f">Luy&ecirc;n chương tr&igrave;nh của c&aacute;c trường Quốc tế..</span></span></em></strong></span></span></span></span></h4>\r\n', '', '', '', '', '', 0, 'avits-math-ixl', 'Avits Math (IXL)', '', '');
INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(211, 106, 'vn', 'Park view Tam Trinh', 'Tòa nhà ParkView Tower tọa lạc tại Phường Vĩnh Hưng, Quận Hoàng Mai, Hà Nội, do Công ty Cổ phần Đầu tư Đồng Phát đầu tư', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:16px"><strong><span style="background-color:white"><span style="color:black">T&ograve;a nh&agrave; ParkView Tower tọa lạc tại Phường Vĩnh Hưng, Quận Ho&agrave;ng Mai, H&agrave; Nội, do C&ocirc;ng ty Cổ phần Đầu tư Đồng Ph&aacute;t đầu tư. Đ&acirc;y l&agrave; khu chung cư kiểu mẫu đ&aacute;ng sống nhất khu trung t&acirc;m Quận Ho&agrave;ng Mai. &nbsp;T&ograve;a nh&agrave; cao 30 tầng, c&oacute; 02 tầng hầm, diện t&iacute;ch sử dụng đất theo quy hoạch l&agrave; tr&ecirc;n 6.000 m2, mật độ x&acirc;y dựng l&agrave; 45%. Từ tầng 3- tầng 30 sử dụng l&agrave;m căn hộ với tổng diện t&iacute;ch s&agrave;n căn hộ l&agrave; tr&ecirc;n 63.800 m2, 672 căn hộ.&nbsp;</span></span></strong></span></p>\r\n', '', '', '', '', '', 0, 'park-view-tam-trinh', 'Park view Tam Trinh', '', ''),
(212, 106, 'en', 'Toán mầm non', '', '', '', '', '', '', '', 0, 'toan-mam-non', 'Toán mầm non', '', ''),
(213, 107, 'vn', 'Sapa Wings Hotel', 'Nằm ở trung tâm thành phố, Sapa Wings Hotel cung cấp phòng nghỉ hiện đại với tầm nhìn ra quang cảnh Núi Fansipan cũng như Nhà thờ đá Sa Pa.', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:16px"><strong>Nằm ở trung t&acirc;m th&agrave;nh phố, Sapa Wings Hotel cung cấp ph&ograve;ng nghỉ hiện đại với tầm nh&igrave;n ra quang cảnh N&uacute;i Fansipan cũng như Nh&agrave; thờ đ&aacute; Sa Pa. &nbsp;Kh&aacute;ch sạn được thiết kế theo phong c&aacute;ch t&acirc;n cổ điển với &ocirc; cửa k&iacute;nh dạng v&ograve;m tạo cảm gi&aacute;c ấm &aacute;p chi du kh&aacute;ch khi đến đ&acirc;y</strong></span></p>\r\n', '', '', '', '', '', 0, 'sapa-wings-hotel', 'Sapa Wings Hotel', '', ''),
(214, 107, 'en', 'Toán tiểu học', '', '', '', '', '', '', '', 0, 'toan-tieu-hoc', 'Toán tiểu học', '', ''),
(215, 108, 'vn', 'Khách sạn sapa village:', 'Tọa lạc tại số 520 Điện Biên Phủ,  Khách sạn Sapa Village được thiết kế theo phong cách truyền thống , gần gũi với thiên nhiên', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:16px"><strong>Tọa lạc tại số 520 Điện Bi&ecirc;n Phủ, &nbsp;Kh&aacute;ch sạn Sapa Village được thiết kế theo phong c&aacute;ch truyền thống , gần gũi với thi&ecirc;n nhi&ecirc;n. Kh&aacute;ch sạn gồm 7 tầng được thiết kế m&ocirc; phỏng ruộng bậc thang. Từ b&ecirc;n trong c&aacute;c ph&ograve;ng kh&aacute;ch sạn, du kh&aacute;ch c&oacute; thể mở tầm nh&igrave;n kh&ocirc;ng giới hạn ra xung quanh qua c&aacute;c &ocirc; cửa k&iacute;nh rộng. Kh&aacute;ch sạn L&agrave;ng Sa Pa c&oacute; tổng số 51 ph&ograve;ng, trong đ&oacute; c&oacute; 3 ph&ograve;ng Family , 41 ph&ograve;ng Deluxe v&agrave; 7 ph&ograve;ng Superior. C&aacute;c ph&ograve;ng đều c&oacute; đầy đủ trang thiết bị đạt ti&ecirc;u chuẩn kh&aacute;ch sạn 3 sao.</strong></span><br />\r\n&nbsp;</p>\r\n', '', '', '', '', '', 0, 'khach-san-sapa-village', 'Khách sạn sapa village:', '', ''),
(216, 108, 'en', 'Toán THCS', '', '', '', '', '', '', '', 0, 'toan-thcs', 'Toán THCS', '', ''),
(237, 119, 'vn', 'Cửa đi mở trượt - giải pháp cho không gian trật hẹp', 'Cửa đi nhôm kính mở trượt đang là một trong những loại cửa được ưa chuộng bởi những ưu điểm vượt trội. Đặc biệt là các công trình chung cư, nhà phố, những nơi dân cư đông đúc, chật hẹp.', '<p dir="ltr" style="text-align:justify"><em>Cửa đi nh&ocirc;m k&iacute;nh mở trượt đang l&agrave; một trong những loại cửa được ưa chuộng bởi những ưu điểm vượt trội. Đặc biệt l&agrave; c&aacute;c c&ocirc;ng tr&igrave;nh chung cư, nh&agrave; phố, những nơi d&acirc;n cư đ&ocirc;ng đ&uacute;c, chật hẹp.</em></p>\r\n\r\n<p dir="ltr" style="text-align:justify">Cửa đi nh&ocirc;m k&iacute;nh mở trượt l&agrave; loại cửa được mở bằng c&aacute;ch trượt c&aacute;c c&aacute;nh tr&ecirc;n thanh ray. Với c&aacute;ch lắp gh&eacute;p kh&aacute; đơn giản nhưng vẫn đảm bảo độ bền, an to&agrave;n v&agrave; hiện đại cho kh&ocirc;ng gian, n&ecirc;n sản phẩm cửa đi mở trượt đang rất được ưa chuộng v&agrave; sử dụng kh&aacute; phổ biến ở Việt Nam. Dưới đ&acirc;y l&agrave; những thế mạnh của cửa mở trượt khi sử dụng trong kh&ocirc;ng gian chật hẹp như chung cư, nh&agrave; phố..</p>\r\n\r\n<p style="text-align:center"><img alt="" height="403" src="/image/images/204-Ben_House_GP_(WCS)_-07_07.jpg" width="600" /></p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Cửa đi nh&ocirc;m k&iacute;nh mở trượt tiết kiệm diện t&iacute;ch.</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Thay v&igrave; phải tốn th&ecirc;m diện t&iacute;ch c&aacute;nh cửa khi mở ra mở v&agrave;o th&igrave; với cửa đi mở trượt, c&aacute;c c&aacute;nh cửa sẽ mở trượt theo phương ngang m&agrave; kh&ocirc;ng bị tốn diện t&iacute;ch cho c&aacute;nh cửa như mở quay.. Đ&acirc;y l&agrave; một đặc điểm rất ph&ugrave; hợp cho những khu c&oacute; mật độ d&acirc;n số cao, diện t&iacute;ch kh&ocirc;ng gian sống hạn hẹp như khu chung cư, nh&agrave; phố&hellip;</p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Lấy &aacute;nh s&aacute;ng tối đa, tăng vẻ hiện đại cho căn nh&agrave;.</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Khi những căn nh&agrave; san s&aacute;t nhau th&igrave; việc lấy được &aacute;nh nắng tự nhi&ecirc;n l&agrave; điều v&ocirc; c&ugrave;ng cần thiết. &Aacute;nh s&aacute;ng tự nhi&ecirc;n gi&uacute;p kh&ocirc;ng gian b&ecirc;n trong được tho&aacute;ng đ&atilde;ng hơn.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Những thiết kế cửa đi nh&ocirc;m k&iacute;nh mở trượt của c&ocirc;ng ty Th&aacute;i Sơn được thiết kế sang trọng với khung nh&ocirc;m thanh định h&igrave;nh chắc chắn. Phần k&iacute;nh cao cấp gi&uacute;p mở rộng tầm nh&igrave;n kh&ocirc;ng giới hạn ra b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Giảm trọng lượng cho c&ocirc;ng tr&igrave;nh:</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">So với gỗ hay c&aacute;c loại nguy&ecirc;n liệu kh&aacute;c th&igrave; hợp kim nh&ocirc;m c&oacute; trọng lượng nhẹ hơn nhiều. Điều n&agrave;y sẽ gi&uacute;p giảm tải trọng cho m&oacute;ng c&ocirc;ng tr&igrave;nh.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Giảm thiểu rủi ro khi c&oacute; hỏa hoạn.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Chắc bạn cũng đ&atilde; nghe nhiều đến những vụ hỏa hoạn thường xuy&ecirc;n xảy ra tại c&aacute;c khu chung cư thời gian gần đ&acirc;y. Vậy l&agrave;m sao để giảm thiểu rủi ro khi c&oacute; hỏa hoạn xảy ra tại c&aacute;c chung cư cao tầng? Nếu bạn để &yacute; th&igrave; thời gian gần đ&acirc;y, tất cả c&aacute;c khu chung cư từ cao cấp đến b&igrave;nh d&acirc;n đều sử dụng của bằng nh&ocirc;m k&iacute;nh. L&yacute; do ch&iacute;nh l&agrave; v&igrave; nhiệt độ n&oacute;ng chảy của nh&ocirc;m k&iacute;nh rất cao v&agrave; hầu như kh&ocirc;ng bắt lửa n&ecirc;n lửa sẽ kh&ocirc;ng bị l&acirc;y lan.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Với 15 năm kinh nghiệm trong thi c&ocirc;ng v&agrave; lắp đặt cửa k&iacute;nh, Th&aacute;i Sơn Window lu&ocirc;n đi đầu trong việc lắm bắt xu hướng x&acirc;y dựng để cho ra c&aacute;c sản phẩm kh&ocirc;ng chỉ đẹp mẫu m&atilde; m&agrave; c&ograve;n đảm bảo chất lượng. &Aacute;p dụng c&ocirc;ng nghệ tiến tiến trong d&acirc;y chuyền sản xuất gi&uacute;p giảm thiểu thời gian cũng như gi&aacute; th&agrave;nh sản phẩm. Từ đ&oacute;, sản phẩm Th&aacute;i Sơn Window lu&ocirc;n c&oacute; mức gi&aacute; cạnh tranh tr&ecirc;n thị trường</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n', '', '', '', '', '', 0, 'cua-di-mo-truot-giai-phap-cho-khong-gian-trat-hep', 'Cửa đi mở trượt - giải pháp cho không gian trật hẹp', '', ''),
(238, 119, 'en', 'english version Cửa đi mở trượt - giải pháp cho không gian trật hẹp', 'english version Cửa đi nhôm kính mở trượt đang là một trong những loại cửa được ưa chuộng bởi những ưu điểm vượt trội. Đặc biệt là các công trình chung cư, nhà phố, những nơi dân cư đông đúc, chật hẹp.', 'english version <p dir="ltr" style="text-align:justify"><em>Cửa đi nh&ocirc;m k&iacute;nh mở trượt đang l&agrave; một trong những loại cửa được ưa chuộng bởi những ưu điểm vượt trội. Đặc biệt l&agrave; c&aacute;c c&ocirc;ng tr&igrave;nh chung cư, nh&agrave; phố, những nơi d&acirc;n cư đ&ocirc;ng đ&uacute;c, chật hẹp.</em></p>\r\n\r\n<p dir="ltr" style="text-align:justify">Cửa đi nh&ocirc;m k&iacute;nh mở trượt l&agrave; loại cửa được mở bằng c&aacute;ch trượt c&aacute;c c&aacute;nh tr&ecirc;n thanh ray. Với c&aacute;ch lắp gh&eacute;p kh&aacute; đơn giản nhưng vẫn đảm bảo độ bền, an to&agrave;n v&agrave; hiện đại cho kh&ocirc;ng gian, n&ecirc;n sản phẩm cửa đi mở trượt đang rất được ưa chuộng v&agrave; sử dụng kh&aacute; phổ biến ở Việt Nam. Dưới đ&acirc;y l&agrave; những thế mạnh của cửa mở trượt khi sử dụng trong kh&ocirc;ng gian chật hẹp như chung cư, nh&agrave; phố..</p>\r\n\r\n<p style="text-align:center"><img alt="" height="403" src="/image/images/204-Ben_House_GP_(WCS)_-07_07.jpg" width="600" /></p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Cửa đi nh&ocirc;m k&iacute;nh mở trượt tiết kiệm diện t&iacute;ch.</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Thay v&igrave; phải tốn th&ecirc;m diện t&iacute;ch c&aacute;nh cửa khi mở ra mở v&agrave;o th&igrave; với cửa đi mở trượt, c&aacute;c c&aacute;nh cửa sẽ mở trượt theo phương ngang m&agrave; kh&ocirc;ng bị tốn diện t&iacute;ch cho c&aacute;nh cửa như mở quay.. Đ&acirc;y l&agrave; một đặc điểm rất ph&ugrave; hợp cho những khu c&oacute; mật độ d&acirc;n số cao, diện t&iacute;ch kh&ocirc;ng gian sống hạn hẹp như khu chung cư, nh&agrave; phố&hellip;</p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Lấy &aacute;nh s&aacute;ng tối đa, tăng vẻ hiện đại cho căn nh&agrave;.</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Khi những căn nh&agrave; san s&aacute;t nhau th&igrave; việc lấy được &aacute;nh nắng tự nhi&ecirc;n l&agrave; điều v&ocirc; c&ugrave;ng cần thiết. &Aacute;nh s&aacute;ng tự nhi&ecirc;n gi&uacute;p kh&ocirc;ng gian b&ecirc;n trong được tho&aacute;ng đ&atilde;ng hơn.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Những thiết kế cửa đi nh&ocirc;m k&iacute;nh mở trượt của c&ocirc;ng ty Th&aacute;i Sơn được thiết kế sang trọng với khung nh&ocirc;m thanh định h&igrave;nh chắc chắn. Phần k&iacute;nh cao cấp gi&uacute;p mở rộng tầm nh&igrave;n kh&ocirc;ng giới hạn ra b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Giảm trọng lượng cho c&ocirc;ng tr&igrave;nh:</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">So với gỗ hay c&aacute;c loại nguy&ecirc;n liệu kh&aacute;c th&igrave; hợp kim nh&ocirc;m c&oacute; trọng lượng nhẹ hơn nhiều. Điều n&agrave;y sẽ gi&uacute;p giảm tải trọng cho m&oacute;ng c&ocirc;ng tr&igrave;nh.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Giảm thiểu rủi ro khi c&oacute; hỏa hoạn.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Chắc bạn cũng đ&atilde; nghe nhiều đến những vụ hỏa hoạn thường xuy&ecirc;n xảy ra tại c&aacute;c khu chung cư thời gian gần đ&acirc;y. Vậy l&agrave;m sao để giảm thiểu rủi ro khi c&oacute; hỏa hoạn xảy ra tại c&aacute;c chung cư cao tầng? Nếu bạn để &yacute; th&igrave; thời gian gần đ&acirc;y, tất cả c&aacute;c khu chung cư từ cao cấp đến b&igrave;nh d&acirc;n đều sử dụng của bằng nh&ocirc;m k&iacute;nh. L&yacute; do ch&iacute;nh l&agrave; v&igrave; nhiệt độ n&oacute;ng chảy của nh&ocirc;m k&iacute;nh rất cao v&agrave; hầu như kh&ocirc;ng bắt lửa n&ecirc;n lửa sẽ kh&ocirc;ng bị l&acirc;y lan.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Với 15 năm kinh nghiệm trong thi c&ocirc;ng v&agrave; lắp đặt cửa k&iacute;nh, Th&aacute;i Sơn Window lu&ocirc;n đi đầu trong việc lắm bắt xu hướng x&acirc;y dựng để cho ra c&aacute;c sản phẩm kh&ocirc;ng chỉ đẹp mẫu m&atilde; m&agrave; c&ograve;n đảm bảo chất lượng. &Aacute;p dụng c&ocirc;ng nghệ tiến tiến trong d&acirc;y chuyền sản xuất gi&uacute;p giảm thiểu thời gian cũng như gi&aacute; th&agrave;nh sản phẩm. Từ đ&oacute;, sản phẩm Th&aacute;i Sơn Window lu&ocirc;n c&oacute; mức gi&aacute; cạnh tranh tr&ecirc;n thị trường</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-cua-di-mo-truot-giai-phap-cho-khong-gian-trat-hep', 'Cửa đi mở trượt - giải pháp cho không gian trật hẹp', '', ''),
(239, 120, 'vn', 'Tìm hiểu cửa nhôm xingfa Thái Sơn Window', 'Cửa nhôm Xingfa Thái Sơn sử dụng hệ nhôm Grando Xingfa với Thanh profile nhôm gồm các khoang trống và 2 đường gân gia cường trợ lực có khả năng chịu lực va đập hay vặn xoắn.', '<p>Mang những đặc điểm của d&ograve;ng nh&ocirc;m Xingfa, c&aacute;c hệ cửa xingfa của TS Window c&oacute; những ưu điểm sau:&nbsp;<br />\r\n- Sử dụng c&ocirc;ng nghệ &eacute;p g&oacute;c để kết nối c&aacute;c thanh nh&ocirc;m mang lại độ khỏe khoắn v&agrave; chắc cho c&aacute;nh cửa.<br />\r\n<em>-</em>&nbsp;Kh&ocirc;ng bị cong v&ecirc;nh, co ng&oacute;t, oxi h&oacute;a v&agrave; han gỉ theo thời gian như một số sản phẩm cửa nhựa cốt th&eacute;p th&ocirc;ng thường trong điều kiện kh&iacute; hậu khắc nghiệt hoặc kh&iacute; hậu v&ugrave;ng biển mặt.&nbsp;Kh&ocirc;ng bị mối mọt như c&aacute;c sản phẩm cửa gỗ tự nhi&ecirc;n hay gỗ c&ocirc;ng nghiệp.<br />\r\n- Với c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c l&agrave; chung cư, nh&agrave; cao tầng, kh&aacute;ch sạn, nh&agrave; h&agrave;ng rất cần thiết sử dụng cửa nh&ocirc;m để tăng t&iacute;nh chịu lực cao gấp nhiều lần so với c&aacute;c d&ograve;ng cửa kh&aacute;c.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="331" src="/image/images/cua-xingfa-3-ray1.jpg" width="500" /></p>\r\n\r\n<p><br />\r\n- Gia nhiệt cửa nh&ocirc;m mang lại khả năng chịu nhiệt v&agrave; c&oacute; t&iacute;nh chống ch&aacute;y rất tốt, gặp hỏa hoạn, dưới 1000 độ C cửa kh&ocirc;ng bị biến dạng, hạn chế sự lan rộng của lửa ra c&aacute;c khu vực kh&aacute;c.<br />\r\n- Hệ gioăng EPDM k&iacute;n kh&iacute;t v&agrave;&nbsp;lu&ocirc;n c&aacute;ch &acirc;m c&aacute;ch nhiệt, đem đến kh&ocirc;ng gian y&ecirc;n tĩnh.<br />\r\n- K&iacute;nh an to&agrave;n, k&iacute;nh cường lực, k&iacute;nh hộp&hellip; mang lại độ an to&agrave;n cao, kh&ocirc;ng g&acirc;y s&aacute;t thương khi vỡ, đặc biệt rất hiếm khi vỡ, k&iacute;nh nghệ thuật mang lại vẻ đẹp cho kh&ocirc;ng gian nh&agrave; bạn,<br />\r\n- Bề mặt sơn tĩnh điện với c&ocirc;ng nghệ hiện đại của Nhật Bản gi&uacute;p lớp sơn lu&ocirc;n s&aacute;ng b&oacute;ng, dễ d&agrave;ng vệ sinh khi bụi bẩn, chống tia UV mặt trời.<br />\r\n- C&oacute; rất nhiều thiết kế cửa nh&ocirc;m Xingfa &nbsp;cho bạn lựa chọn: Mở quay, trượt, hất, xếp trượt&hellip;<br />\r\n- M&agrave;u sắc đa dạng: Trắng sứ, n&acirc;u sần, v&acirc;n gỗ, cafe, ghi, đen&hellip;<br />\r\nTr&ecirc;n đ&acirc;y l&agrave; những th&ocirc;ng tin li&ecirc;n quan đến chất lượng của TS Window. Mọi thắc mắc xin vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>C&ocirc;ng ty&nbsp;TNHH Sản Xuất V&agrave; Thương Mại Dịch Vụ Th&aacute;i Sơn</strong></p>\r\n\r\n<p>KCN Ph&uacute; Thị - Gia L&acirc;m - H&agrave; Nội</p>\r\n\r\n<p>Tel/fax: 024 3 678 0066</p>\r\n\r\n<p><strong><em>Hotline: 085 361 6666</em></strong></p>\r\n\r\n<p><strong><em>Website: http://tswindow.vn</em></strong></p>\r\n', '', '', '', '', '', 0, 'tim-hieu-cua-nhom-xingfa-thai-son-window', 'Tìm hiểu cửa nhôm xingfa Thái Sơn Window', '', ''),
(240, 120, 'en', 'english version Tìm hiểu cửa nhôm xingfa Thái Sơn Window', 'english version Thanh profile nhôm gồm các khoang trống và 2 đường gân gia cường trợ lực có khả năng chịu lực va đập hay vặn xoắn.', 'english version <p>Thanh profile nh&ocirc;m gồm c&aacute;c khoang trống v&agrave; 2 đường g&acirc;n gia cường trợ lực c&oacute; khả năng chịu lực va đập hay vặn xoắn.<br />\r\n- Sử dụng c&ocirc;ng nghệ &eacute;p g&oacute;c để kết nối c&aacute;c thanh nh&ocirc;m mang lại độ khỏe khoắn v&agrave; chắc cho c&aacute;nh cửa.<br />\r\n<em>-</em>&nbsp;Kh&ocirc;ng bị cong v&ecirc;nh, co ng&oacute;t, oxi h&oacute;a v&agrave; han gỉ theo thời gian như một số sản phẩm cửa nhựa cốt th&eacute;p th&ocirc;ng thường trong điều kiện kh&iacute; hậu khắc nghiệt hoặc kh&iacute; hậu v&ugrave;ng biển mặt.&nbsp;Kh&ocirc;ng bị mối mọt như c&aacute;c sản phẩm cửa gỗ tự nhi&ecirc;n hay gỗ c&ocirc;ng nghiệp.<br />\r\n- Với c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c l&agrave; chung cư, nh&agrave; cao tầng, kh&aacute;ch sạn, nh&agrave; h&agrave;ng rất cần thiết sử dụng cửa nh&ocirc;m để tăng t&iacute;nh chịu lực cao gấp nhiều lần so với c&aacute;c d&ograve;ng cửa kh&aacute;c.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="331" src="/image/images/cua-xingfa-3-ray1.jpg" width="500" /></p>\r\n\r\n<p><br />\r\n- Gia nhiệt cửa nh&ocirc;m mang lại khả năng chịu nhiệt v&agrave; c&oacute; t&iacute;nh chống ch&aacute;y rất tốt, gặp hỏa hoạn, dưới 1000 độ C cửa kh&ocirc;ng bị biến dạng, hạn chế sự lan rộng của lửa ra c&aacute;c khu vực kh&aacute;c.<br />\r\n- Hệ gioăng EPDM k&iacute;n kh&iacute;t v&agrave;&nbsp;lu&ocirc;n c&aacute;ch &acirc;m c&aacute;ch nhiệt, đem đến kh&ocirc;ng gian y&ecirc;n tĩnh.<br />\r\n- K&iacute;nh an to&agrave;n, k&iacute;nh cường lực, k&iacute;nh hộp&hellip; mang lại độ an to&agrave;n cao, kh&ocirc;ng g&acirc;y s&aacute;t thương khi vỡ, đặc biệt rất hiếm khi vỡ, k&iacute;nh nghệ thuật mang lại vẻ đẹp cho kh&ocirc;ng gian nh&agrave; bạn,<br />\r\n- Bề mặt sơn tĩnh điện với c&ocirc;ng nghệ hiện đại của Nhật Bản gi&uacute;p lớp sơn lu&ocirc;n s&aacute;ng b&oacute;ng, dễ d&agrave;ng vệ sinh khi bụi bẩn, chống tia UV mặt trời.<br />\r\n- C&oacute; rất nhiều thiết kế cửa nh&ocirc;m Xingfa &nbsp;cho bạn lựa chọn: Mở quay, trượt, hất, xếp trượt&hellip;<br />\r\n- M&agrave;u sắc đa dạng: Trắng sứ, n&acirc;u sần, v&acirc;n gỗ, cafe, ghi, đen&hellip;<br />\r\n&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-tim-hieu-cua-nhom-xingfa-thai-son-window', 'Tìm hiểu cửa nhôm xingfa Thái Sơn Window', '', ''),
(241, 121, 'vn', 'Kinh nghiệm chọn cửa kính cho gia đình', 'Với những ưu thế riêng phù hợp với thời đại, cửa nhôm kính đang là loại cửa được ưa chuộng từ các công trình dân dụng đến các khu chung cư nhà cao tầng...', '<p style="text-align:justify"><em>Với những ưu thế ri&ecirc;ng ph&ugrave; hợp với thời đại, cửa nh&ocirc;m k&iacute;nh đang l&agrave; loại cửa được ưa chuộng từ c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n dụng đến c&aacute;c khu chung cư nh&agrave; cao tầng&hellip;</em></p>\r\n\r\n<p dir="ltr" style="text-align:justify">Với những ưu thế ri&ecirc;ng ph&ugrave; hợp với thời đại, cửa nh&ocirc;m k&iacute;nh đang l&agrave; loại cửa được ưa chuộng từ c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n dụng đến c&aacute;c khu chung cư nh&agrave; cao tầng...Trong b&agrave;i h&ocirc;m nay, ch&uacute;ng t&ocirc;i xin giới thiệu những kinh nghiệm chọn cửa k&iacute;nh ph&ugrave; hợp với gia đ&igrave;nh m&igrave;nh.</p>\r\n\r\n<p style="text-align:center"><img alt="Kinh nghiệm chọn cửa kính cho gia đình" height="401" src="/image/images/thai-son-5.jpg" width="600" /></p>\r\n\r\n<p dir="ltr" style="text-align:center"><em>Kinh nghiệm chọn cửa k&iacute;nh cho gia đ&igrave;nh</em></p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Chọn lựa ph&ugrave; hợp với nhu cầu sử dụng</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Mỗi loại cửa được thiết kế c&oacute; t&iacute;nh năng mục đ&iacute;ch sử dụng. V&igrave; thế, trước khi quyết định lắp đặt cần c&acirc;n nhắc nhu cầu sử dụng. Từ đ&oacute; x&aacute;c định kiểu d&aacute;ng v&agrave; những t&iacute;nh năng cần c&oacute; để chọn được loại cửa ph&ugrave; hợp nhất. V&iacute; dụ, đối với bộ cửa được lắp đặt tại những vị tr&iacute; chịu t&aacute;c động trực tiếp của mưa b&atilde;o, kh&ocirc;ng n&ecirc;n chọn cửa mở trượt m&agrave; n&ecirc;n sử dụng cửa mở quay, kết hợp c&ugrave;ng kho&aacute; đa điểm, &eacute;p c&aacute;nh gi&uacute;p bịt k&iacute;n mọi khe hở giữa c&aacute;nh v&agrave; khung cửa, hạn chế tối đa tiếng ồn b&ecirc;n ngo&agrave;i v&agrave; ngăn nước mưa x&acirc;m nhập v&agrave;o nh&agrave;.</p>\r\n\r\n<p style="text-align:center"><img alt="Kinh nghiệm chọn cửa kính cho gia đình" height="488" src="/image/images/thai-son-3.jpg" width="600" /></p>\r\n\r\n<p dir="ltr" style="text-align:center"><em>Kinh nghiệm chọn cửa k&iacute;nh cho gia đ&igrave;nh</em></p>\r\n\r\n<p dir="ltr" style="text-align:justify">Hay với c&aacute;c biệt thự, nh&agrave; ở c&oacute; kh&ocirc;ng gian xung quanh rộng r&atilde;i, chủ nh&acirc;n c&oacute; thể t&ugrave;y theo sở th&iacute;ch d&ugrave;ng cửa sổ mở quay. C&ograve;n đối với c&aacute;c nh&agrave; mặt phố, nh&agrave; liền kề, cửa mở trượt v&agrave; cửa mở hất sẽ ph&ugrave; hợp hơn bởi thiết kế đ&aacute;p gi&uacute;p tiết kiệm diện t&iacute;ch cửa mở m&agrave; vẫn đảm bảo lưu th&ocirc;ng kh&ocirc;ng kh&iacute; cho căn ph&ograve;ng v&agrave; t&iacute;nh ri&ecirc;ng tư, k&iacute;n đ&aacute;o.</p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Lựa chọn ph&ugrave; hợp với phong c&aacute;ch kiến tr&uacute;c căn nh&agrave;.</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Để đảm bảo t&iacute;nh thẩm mỹ, bạn cần lựa chọn cửa nh&ocirc;m ph&ugrave; hợp với phong c&aacute;ch kiến tr&uacute;c của c&ocirc;ng tr&igrave;nh. Hiện nay, c&aacute;c c&ocirc;ng tr&igrave;nh mang xu hướng kiến tr&uacute;c hiện đại ưa chuộng thiết kế trơn, thanh mảnh, &iacute;t nh&ocirc;m nhiều k&iacute;nh, gi&uacute;p mở rộng tầm nh&igrave;n, giảm bớt sự nặng nề của kết cấu chung. C&aacute;c phụ kiện đi k&egrave;m cũng n&ecirc;n chọn c&ugrave;ng phong c&aacute;ch gọn g&agrave;ng, nhẹ nh&agrave;ng v&agrave; hiện đại. Để c&oacute; được điều đ&oacute;, cửa nh&ocirc;m cần được thiết kế đồng bộ cả từ phụ kiện đến cửa, mang lại vẻ đẹp tinh tế cho căn nh&agrave; của bạn.</p>\r\n\r\n<h2 dir="ltr" style="text-align:justify">Đồng bộ</h2>\r\n\r\n<p dir="ltr" style="text-align:justify">Đ&acirc;y l&agrave; yếu tố kh&ocirc;ng được xem nhẹ khi lựa chọn cửa nh&ocirc;m. Chỉ khi thanh nh&ocirc;m, hệ phụ kiện v&agrave; gioăng được thiết kế một c&aacute;ch đồng bộ mới c&oacute; thể đảm bảo c&aacute;c bộ phận cửa được lắp gh&eacute;p vừa vặn, k&iacute;n kh&iacute;t v&agrave; phối hợp vận h&agrave;nh nhịp nh&agrave;ng, bền bỉ v&agrave; vận h&agrave;nh nhịp nh&agrave;ng.</p>\r\n\r\n<p style="text-align:center"><img alt="Kinh nghiệm chọn cửa kính cho gia đình" height="426" src="/image/images/thai-son-4.jpg" width="600" /></p>\r\n\r\n<p dir="ltr" style="text-align:center"><em>Kinh nghiệm chọn cửa k&iacute;nh cho gia đ&igrave;nh</em></p>\r\n\r\n<p dir="ltr" style="text-align:justify">Để giảm gi&aacute; th&agrave;nh cạnh tranh, một số đơn vị sản xuất cửa nh&ocirc;m &ldquo;chắp v&aacute;&rdquo; c&aacute;c bộ phận cửa từ nhiều nguồn kh&aacute;c nhau, trong đ&oacute; c&oacute; cả c&aacute;c phụ kiện từ những xưởng tự gia c&ocirc;ng với chất lượng k&eacute;m g&acirc;y ra nhiều hư hỏng, phiền h&agrave; trong qu&aacute; tr&igrave;nh sử dụng. V&igrave; vậy, Đồng bộ l&agrave; yếu tố kh&aacute;ch h&agrave;ng kh&ocirc;ng n&ecirc;n bỏ qua khi chọn mua cửa.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Tr&ecirc;n đ&acirc;y l&agrave; những kinh nghiệm ch&uacute;ng t&ocirc;i muốn chia sẻ với qu&yacute; kh&aacute;ch để qu&yacute; vị c&oacute; thể lựa chọn được cửa sao cho kh&ocirc;ng những&nbsp;ph&ugrave; hợp với c&ocirc;ng năng m&agrave; c&ograve;n đảm bảo t&iacute;nh thẩm mỹ. Mọi th&ocirc;ng tin xin li&ecirc;n hệ với TS Window theo số hotline:&nbsp;&nbsp;024 3678 0066</p>\r\n', '', '', '', '', '', 0, 'kinh-nghiem-chon-cua-kinh-cho-gia-dinh', 'Kinh nghiệm chọn cửa kính cho gia đình', '', ''),
(242, 121, 'en', 'english version Kinh nghiệm chọn cửa kính cho gia đình', 'english version Với những ưu thế riêng phù hợp với thời đại, cửa nhôm kính đang là loại cửa được ưa chuộng từ các công trình dân dụng đến các khu chung cư nhà cao tầng...', 'english version <p><em>Với những ưu thế ri&ecirc;ng ph&ugrave; hợp với thời đại, cửa nh&ocirc;m k&iacute;nh đang l&agrave; loại cửa được ưa chuộng từ c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n dụng đến c&aacute;c khu chung cư nh&agrave; cao tầng&hellip;</em></p>\r\n\r\n<p dir="ltr">Với những ưu thế ri&ecirc;ng ph&ugrave; hợp với thời đại, cửa nh&ocirc;m k&iacute;nh đang l&agrave; loại cửa được ưa chuộng từ c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n dụng đến c&aacute;c khu chung cư nh&agrave; cao tầng...Trong b&agrave;i h&ocirc;m nay, ch&uacute;ng t&ocirc;i xin giới thiệu những kinh nghiệm chọn cửa k&iacute;nh ph&ugrave; hợp với gia đ&igrave;nh m&igrave;nh.</p>\r\n\r\n<h2 dir="ltr">Chọn lựa ph&ugrave; hợp với nhu cầu sử dụng</h2>\r\n\r\n<p dir="ltr">Mỗi loại cửa được thiết kế c&oacute; t&iacute;nh năng mục đ&iacute;ch sử dụng. V&igrave; thế, trước khi quyết định lắp đặt cần c&acirc;n nhắc nhu cầu sử dụng. Từ đ&oacute; x&aacute;c định kiểu d&aacute;ng v&agrave; những t&iacute;nh năng cần c&oacute; để chọn được loại cửa ph&ugrave; hợp nhất. V&iacute; dụ, đối với bộ cửa được lắp đặt tại những vị tr&iacute; chịu t&aacute;c động trực tiếp của mưa b&atilde;o, kh&ocirc;ng n&ecirc;n chọn cửa mở trượt m&agrave; n&ecirc;n sử dụng cửa mở quay, kết hợp c&ugrave;ng kho&aacute; đa điểm, &eacute;p c&aacute;nh gi&uacute;p bịt k&iacute;n mọi khe hở giữa c&aacute;nh v&agrave; khung cửa, hạn chế tối đa tiếng ồn b&ecirc;n ngo&agrave;i v&agrave; ngăn nước mưa x&acirc;m nhập v&agrave;o nh&agrave;.</p>\r\n\r\n<p dir="ltr">Hay với c&aacute;c biệt thự, nh&agrave; ở c&oacute; kh&ocirc;ng gian xung quanh rộng r&atilde;i, chủ nh&acirc;n c&oacute; thể t&ugrave;y theo sở th&iacute;ch d&ugrave;ng cửa sổ mở quay. C&ograve;n đối với c&aacute;c nh&agrave; mặt phố, nh&agrave; liền kề, cửa mở trượt v&agrave; cửa mở hất sẽ ph&ugrave; hợp hơn bởi thiết kế đ&aacute;p gi&uacute;p tiết kiệm diện t&iacute;ch cửa mở m&agrave; vẫn đảm bảo lưu th&ocirc;ng kh&ocirc;ng kh&iacute; cho căn ph&ograve;ng v&agrave; t&iacute;nh ri&ecirc;ng tư, k&iacute;n đ&aacute;o.</p>\r\n\r\n<h2 dir="ltr">Lựa chọn ph&ugrave; hợp với phong c&aacute;ch kiến tr&uacute;c căn nh&agrave;.</h2>\r\n\r\n<p dir="ltr">Để đảm bảo t&iacute;nh thẩm mỹ, bạn cần lựa chọn cửa nh&ocirc;m ph&ugrave; hợp với phong c&aacute;ch kiến tr&uacute;c của c&ocirc;ng tr&igrave;nh. Hiện nay, c&aacute;c c&ocirc;ng tr&igrave;nh mang xu hướng kiến tr&uacute;c hiện đại ưa chuộng thiết kế trơn, thanh mảnh, &iacute;t nh&ocirc;m nhiều k&iacute;nh, gi&uacute;p mở rộng tầm nh&igrave;n, giảm bớt sự nặng nề của kết cấu chung. C&aacute;c phụ kiện đi k&egrave;m cũng n&ecirc;n chọn c&ugrave;ng phong c&aacute;ch gọn g&agrave;ng, nhẹ nh&agrave;ng v&agrave; hiện đại. Để c&oacute; được điều đ&oacute;, cửa nh&ocirc;m cần được thiết kế đồng bộ cả từ phụ kiện đến cửa, mang lại vẻ đẹp tinh tế cho căn nh&agrave; của bạn.</p>\r\n\r\n<h2 dir="ltr">Đồng bộ</h2>\r\n\r\n<p dir="ltr">Đ&acirc;y l&agrave; yếu tố kh&ocirc;ng được xem nhẹ khi lựa chọn cửa nh&ocirc;m. Chỉ khi thanh nh&ocirc;m, hệ phụ kiện v&agrave; gioăng được thiết kế một c&aacute;ch đồng bộ mới c&oacute; thể đảm bảo c&aacute;c bộ phận cửa được lắp gh&eacute;p vừa vặn, k&iacute;n kh&iacute;t v&agrave; phối hợp vận h&agrave;nh nhịp nh&agrave;ng, bền bỉ v&agrave; vận h&agrave;nh nhịp nh&agrave;ng</p>\r\n\r\n<p dir="ltr">Để giảm gi&aacute; th&agrave;nh cạnh tranh, một số đơn vị sản xuất cửa nh&ocirc;m &ldquo;chắp v&aacute;&rdquo; c&aacute;c bộ phận cửa từ nhiều nguồn kh&aacute;c nhau, trong đ&oacute; c&oacute; cả c&aacute;c phụ kiện từ những xưởng tự gia c&ocirc;ng với chất lượng k&eacute;m g&acirc;y ra nhiều hư hỏng, phiền h&agrave; trong qu&aacute; tr&igrave;nh sử dụng. V&igrave; vậy, Đồng bộ l&agrave; yếu tố kh&aacute;ch h&agrave;ng kh&ocirc;ng n&ecirc;n bỏ qua khi chọn mua cửa.</p>\r\n\r\n<p dir="ltr">Tr&ecirc;n đ&acirc;y l&agrave; những kinh nghiệm ch&uacute;ng t&ocirc;i muốn chia sẻ với qu&yacute; kh&aacute;ch để qu&yacute; vị c&oacute; thể lựa chọn được cửa sao cho kh&ocirc;ng những&nbsp;ph&ugrave; hợp với c&ocirc;ng năng m&agrave; c&ograve;n đảm bảo t&iacute;nh thẩm mỹ. Mọi th&ocirc;ng tin xin li&ecirc;n hệ với TS Window theo số hotline:&nbsp;&nbsp;024 3678 0066</p>\r\n', '', '', '', '', '', 0, 'en-kinh-nghiem-chon-cua-kinh-cho-gia-dinh', 'Kinh nghiệm chọn cửa kính cho gia đình', '', ''),
(243, 122, 'vn', 'Cửa nhôm kính trở thành xu hướng trong xây dựng', 'Nếu trước đây cửa nhôm kính được đánh giá là kết cấu yếu, không kín khít, thường bị rò rỉ nước mưa. Chỉ sau một thời gian ngắn sử dụng, cửa nhanh chóng bị xuống cấp, khiến cho công năng của sản phẩm không đảm bảo, làm mất thẩm mỹ của ngôi nhà. ', '<p><em>Nếu trước đ&acirc;y cửa nh&ocirc;m k&iacute;nh được đ&aacute;nh gi&aacute; l&agrave; kết cấu yếu, kh&ocirc;ng k&iacute;n kh&iacute;t, thường bị r&ograve; rỉ nước mưa. Chỉ sau một thời gian ngắn sử dụng, cửa nhanh ch&oacute;ng bị xuống cấp, khiến cho c&ocirc;ng năng của sản phẩm kh&ocirc;ng đảm bảo, l&agrave;m mất thẩm mỹ của ng&ocirc;i nh&agrave;. Tuy nhi&ecirc;n, hiện nay của nh&ocirc;m k&iacute;nh đang trở th&agrave;nh xu hướng trong x&acirc;y dựng hiện nay &nbsp;bởi tất cả những nhược điểm trước đ&acirc;y đều được khắc phục.</em></p>\r\n\r\n<p>Hiện tại, C&aacute;c sản phẩm&nbsp;cửa&nbsp;nh&ocirc;m k&iacute;nh đ&atilde; phổ biến những năm gần đ&acirc;y&nbsp;v&agrave; trở n&ecirc;n quen thuộc trong ng&agrave;nh&nbsp;vật liệu x&acirc;y dựng ở nước ta. Cửa nh&ocirc;m k&iacute;nh l&agrave; loại vật liệu c&oacute; thể sử dụng cho cả c&aacute;c c&ocirc;ng tr&igrave;nh từ chung cư cao tầng cho đến nh&agrave; d&acirc;n. Điển h&igrave;nh như d&ograve;ng sản phẩm nh&ocirc;m k&iacute;nh cao cấp của <strong>Th&aacute;i Sơn Window</strong></p>\r\n\r\n<p style="text-align:center"><img alt="" height="450" src="/image/images/thai-son-6.JPG" width="600" /></p>\r\n\r\n<p style="text-align:center"><em>Cửa nh&ocirc;m k&iacute;nh trở th&agrave;nh xu hướng trong x&acirc;y dựng</em></p>\r\n\r\n<p><strong>Khả năng chống lại thời tiết&nbsp;</strong></p>\r\n\r\n<p>Kh&iacute; hậu Việt Nam c&oacute; độ ẩm cao v&agrave; nắng n&oacute;ng gay gắt n&ecirc;n việc sử dụng cửa nh&ocirc;m k&iacute;nh được coi l&agrave; giải ph&aacute;p tối ưu nhất hiện nay. Tại Th&aacute;i Sơn Window, cửa được l&agrave;m từ c&aacute;c hệ nh&ocirc;m như Grando Xingfa, Grando Việt Ph&aacute;p, Việt H&agrave;n...Kết cấu của loại cửa n&agrave;y gồm hệ thống r&atilde;nh tho&aacute;t nước mưa k&egrave;m theo gioăng&nbsp;cao su (d&ugrave;ng để l&agrave;m k&iacute;n, chống ồn, chống thấm) kh&iacute;t k&iacute;n với khu&ocirc;n cửa c&oacute; t&aacute;c dụng l&agrave;m cho nước mưa kh&ocirc;ng đọng lại.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="402" src="/image/images/thai-son-7.jpg" width="600" /></p>\r\n\r\n<p style="text-align:center"><em>Cửa nh&ocirc;m k&iacute;nh trở th&agrave;nh xu hướng trong x&acirc;y dựng</em></p>\r\n\r\n<p><strong>Gi&aacute; cả ph&ugrave; hợp.</strong></p>\r\n\r\n<p>So với cửa gỗ th&igrave; cửa nh&ocirc;m k&iacute;nh c&oacute; gi&aacute; th&agrave;nh rẻ hơn kh&aacute; nhiều m&agrave; vẫn đảm bảo về chất lượng cũng như thẩm mỹ. Cửa nh&ocirc;m c&oacute; rất nhiều loại từ b&igrave;nh d&acirc;n đến cao cấp. Ch&iacute;nh v&igrave; vậy, kh&aacute;ch h&agrave;ng sẽ c&oacute; nhiều sự lựa chọn ph&ugrave; hợp với điều kiện kinh tế cũng như mục đ&iacute;ch sử dụng.&nbsp;</p>\r\n\r\n<p style="text-align:center"><img alt="" height="713" src="/image/images/thai-son-8.jpeg" width="600" /></p>\r\n\r\n<p style="text-align:center"><em>Cửa nh&ocirc;m k&iacute;nh trở th&agrave;nh xu hướng trong x&acirc;y dựng</em></p>\r\n\r\n<p><strong>An to&agrave;n trong sử dụng.</strong></p>\r\n\r\n<p>Được biết t&igrave;nh trạng ch&aacute;y nổ ở Việt Nam ng&agrave;y c&agrave;ng diễn biến phức tạp n&ecirc;n lựa chọn h&agrave;ng đầu khi đặt mua c&aacute;c loại cửa ch&iacute;nh l&agrave; vật liệu chống ch&aacute;y kh&oacute; bị ph&acirc;n hủy hoặc ch&aacute;y.</p>\r\n\r\n<p>Đ&aacute;p ứng đầy đủ mục ti&ecirc;u đ&oacute; m&agrave; cửa nh&ocirc;m k&iacute;nh được ưa chuộng. Cả phần khung v&agrave; k&iacute;nh đều c&oacute; thể chịu ở nhiệt độ rất cao m&agrave; kh&ocirc;ng bị n&oacute;ng chảy. L&agrave;m giảm tối đa sự lan chuyền cửa ngọn lửa khi c&oacute; biến cố xảy ra.</p>\r\n\r\n<p>Với nhiệt độ gần 1000<sup>o</sup>C, thanh nh&ocirc;m chỉ biến dạng m&agrave; kh&ocirc;ng b&eacute;n ch&aacute;y, k&iacute;nh kh&ocirc;ng bị t&aacute;c động bởi nhiệt độ n&agrave;y loại bỏ hẳn qu&aacute; tr&igrave;nh ph&aacute;t t&aacute;n ngọn lửa qua cửa.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="450" src="/image/images/thai-son-9.jpg" width="600" /></p>\r\n\r\n<p style="text-align:center"><em>Cửa nh&ocirc;m k&iacute;nh trở th&agrave;nh xu hướng trong x&acirc;y dựng</em></p>\r\n\r\n<p>Ngo&agrave;i ra với t&iacute;nh chất chống oxi h&oacute;a tr&aacute;nh c&aacute;c t&aacute;c động từ b&ecirc;n ngo&agrave;i cửa nh&ocirc;m k&iacute;nh rất an to&agrave;n khi sử dụng.</p>\r\n\r\n<p>Với những thế mạnh c&ugrave;ng những đặc điểm hợp với xu hướng x&acirc;y dựng hiện nay n&ecirc;n cửa k&iacute;nh đang l&agrave; một trong những vật liệu xanh được khuyến kh&iacute;ch sử dụng.</p>\r\n', '', '', '', '', '', 0, 'cua-nhom-kinh-tro-thanh-xu-huong-trong-xay-dung', 'Cửa nhôm kính trở thành xu hướng trong xây dựng', '', ''),
(244, 122, 'en', 'english version Cửa nhôm kính trở thành xu hướng trong xây dựng', 'english version Nếu trước đây cửa nhôm kính được đánh giá là kết cấu yếu, không kín khít, thường bị rò rỉ nước mưa. Chỉ sau một thời gian ngắn sử dụng, cửa nhanh chóng bị xuống cấp, khiến cho công năng của sản phẩm không đảm bảo, làm mất thẩm mỹ của ngôi nhà. Tuy nhiên, hiện nay của nhôm kính đang trở thành xu hướng trong xây dựng hiện nay  bởi tất cả những nhược điểm trước đây đều được khắc phục.', 'english version <p>Hiện tại, C&aacute;c sản phẩm&nbsp;cửa&nbsp;nh&ocirc;m k&iacute;nh đ&atilde; phổ biến những năm gần đ&acirc;y&nbsp;v&agrave; trở n&ecirc;n quen thuộc trong ng&agrave;nh&nbsp;vật liệu x&acirc;y dựng ở nước ta. Cửa nh&ocirc;m k&iacute;nh l&agrave; loại vật liệu c&oacute; thể sử dụng cho cả c&aacute;c c&ocirc;ng tr&igrave;nh từ chung cư cao tầng cho đến nh&agrave; d&acirc;n. Điển h&igrave;nh như d&ograve;ng sản phẩm nh&ocirc;m k&iacute;nh cao cấp của <strong>Th&aacute;i Sơn Window</strong>&nbsp;.</p>\r\n\r\n<p><strong>Khả năng chống lại thời tiết&nbsp;</strong></p>\r\n\r\n<p>Kh&iacute; hậu Việt Nam c&oacute; độ ẩm cao v&agrave; nắng n&oacute;ng gay gắt n&ecirc;n việc sử dụng cửa nh&ocirc;m k&iacute;nh được coi l&agrave; giải ph&aacute;p tối ưu nhất hiện nay. Tại Th&aacute;i Sơn Window, cửa được l&agrave;m từ c&aacute;c hệ nh&ocirc;m như Grando Xingfa, Grando Việt Ph&aacute;p, Việt H&agrave;n...Kết cấu của loại cửa n&agrave;y gồm hệ thống r&atilde;nh tho&aacute;t nước mưa k&egrave;m theo gioăng&nbsp;cao su (d&ugrave;ng để l&agrave;m k&iacute;n, chống ồn, chống thấm) kh&iacute;t k&iacute;n với khu&ocirc;n cửa c&oacute; t&aacute;c dụng l&agrave;m cho nước mưa kh&ocirc;ng đọng lại.</p>\r\n\r\n<p><strong>Gi&aacute; cả ph&ugrave; hợp.</strong></p>\r\n\r\n<p>So với cửa gỗ th&igrave; cửa nh&ocirc;m k&iacute;nh c&oacute; gi&aacute; th&agrave;nh rẻ hơn kh&aacute; nhiều m&agrave; vẫn đảm bảo về chất lượng cũng như thẩm mỹ. Cửa nh&ocirc;m c&oacute; rất nhiều loại từ b&igrave;nh d&acirc;n đến cao cấp. Ch&iacute;nh v&igrave; vậy, kh&aacute;ch h&agrave;ng sẽ c&oacute; nhiều sự lựa chọn ph&ugrave; hợp với điều kiện kinh tế cũng như mục đ&iacute;ch sử dụng.&nbsp;</p>\r\n\r\n<p><strong>An to&agrave;n trong sử dụng.</strong></p>\r\n\r\n<p>Được biết t&igrave;nh trạng ch&aacute;y nổ ở Việt Nam ng&agrave;y c&agrave;ng diễn biến phức tạp n&ecirc;n lựa chọn h&agrave;ng đầu khi đặt mua c&aacute;c loại cửa ch&iacute;nh l&agrave; vật liệu chống ch&aacute;y kh&oacute; bị ph&acirc;n hủy hoặc ch&aacute;y.</p>\r\n\r\n<p>Đ&aacute;p ứng đầy đủ mục ti&ecirc;u đ&oacute; m&agrave; cửa nh&ocirc;m k&iacute;nh được ưa chuộng. Cả phần khung v&agrave; k&iacute;nh đều c&oacute; thể chịu ở nhiệt độ rất cao m&agrave; kh&ocirc;ng bị n&oacute;ng chảy. L&agrave;m giảm tối đa sự lan chuyền cửa ngọn lửa khi c&oacute; biến cố xảy ra.</p>\r\n\r\n<p>Với nhiệt độ gần 1000<sup>o</sup>C, thanh nh&ocirc;m chỉ biến dạng m&agrave; kh&ocirc;ng b&eacute;n ch&aacute;y, k&iacute;nh kh&ocirc;ng bị t&aacute;c động bởi nhiệt độ n&agrave;y loại bỏ hẳn qu&aacute; tr&igrave;nh ph&aacute;t t&aacute;n ngọn lửa qua cửa.</p>\r\n\r\n<p>Ngo&agrave;i ra với t&iacute;nh chất chống oxi h&oacute;a tr&aacute;nh c&aacute;c t&aacute;c động từ b&ecirc;n ngo&agrave;i cửa nh&ocirc;m k&iacute;nh rất an to&agrave;n khi sử dụng.</p>\r\n\r\n<p>Với những thế mạnh c&ugrave;ng những đặc điểm hợp với xu hướng x&acirc;y dựng hiện nay n&ecirc;n cửa k&iacute;nh đang l&agrave; một trong những vật liệu xanh được khuyến kh&iacute;ch sử dụng.</p>\r\n', '', '', '', '', '', 0, 'en-cua-nhom-kinh-tro-thanh-xu-huong-trong-xay-dung', 'Cửa nhôm kính trở thành xu hướng trong xây dựng', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `nhan_ban_tin`
--

CREATE TABLE IF NOT EXISTS `nhan_ban_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `nhan_ban_tin`
--

INSERT INTO `nhan_ban_tin` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 13:54:44'),
(2, 'donguyenthinh30031989@gmail.com', '2017-12-23 01:12:33'),
(3, 'truongquangtuan3110@gmail.com', '2018-01-03 12:04:35'),
(4, 'truongquangtuan3110@gmail.com', '2018-01-03 12:12:05'),
(5, 'donguyenthinh30031989@gmail.com', '2018-01-04 07:40:46'),
(6, 'truongquangtuan3110@gmail.com', '2018-01-04 09:02:07'),
(7, 'donguyenthinh30031989@gmail.com', '2018-01-04 09:31:40'),
(8, 'donguyenthinh30031989@gmail.com', '2018-01-04 10:17:09'),
(9, 'viethung95cute@gmail.com', '2018-03-27 07:55:42'),
(10, 'viethung95cute@gmail.com', '2018-03-28 05:08:41'),
(11, 'viethung95cute@gmail.com', '2018-03-28 05:12:29'),
(12, 'viethung95cute@gmail.com', '2018-03-28 05:13:40'),
(13, 'viethung95cute@gmail.com', '2018-03-28 05:45:42'),
(14, 'viethung95cute@gmail.com', '2018-03-28 05:48:44'),
(15, 'hung71483@gmail.com', '2018-03-28 05:51:51'),
(16, 'hung71483@gmail.com', '2018-03-28 05:54:44'),
(17, 'hung71483@gmail.com', '2018-03-28 06:01:14'),
(18, 'hung71483@gmail.com', '2018-03-28 06:03:03');

-- --------------------------------------------------------

--
-- Structure de la table `nhan_tai_lieu`
--

CREATE TABLE IF NOT EXISTS `nhan_tai_lieu` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `nhan_tai_lieu`
--

INSERT INTO `nhan_tai_lieu` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 12:33:22'),
(2, 'manh@gmail.com', '2017-12-02 11:58:58'),
(3, 'ngockhanh260614@gmail.com', '2017-12-03 04:05:33');

-- --------------------------------------------------------

--
-- Structure de la table `obsolete_products_file`
--

CREATE TABLE IF NOT EXISTS `obsolete_products_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `obsolete_products_file`
--

INSERT INTO `obsolete_products_file` (`id`, `name`) VALUES
(3, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `operating_file`
--

CREATE TABLE IF NOT EXISTS `operating_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `operating_file`
--

INSERT INTO `operating_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `optionsQ1`
--

CREATE TABLE IF NOT EXISTS `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Structure de la table `optionsQ2`
--

CREATE TABLE IF NOT EXISTS `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Structure de la table `optionsQ3`
--

CREATE TABLE IF NOT EXISTS `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Structure de la table `optionsQ4`
--

CREATE TABLE IF NOT EXISTS `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Structure de la table `optionsQ5`
--

CREATE TABLE IF NOT EXISTS `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Structure de la table `optionsQ6`
--

CREATE TABLE IF NOT EXISTS `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Structure de la table `optionsQ7`
--

CREATE TABLE IF NOT EXISTS `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Structure de la table `optionsQ8`
--

CREATE TABLE IF NOT EXISTS `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Structure de la table `optionsQ9`
--

CREATE TABLE IF NOT EXISTS `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order_state`
--

CREATE TABLE IF NOT EXISTS `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'GIỚI THIỆU CHUNG', 'Công ty TNHH Sản Xuất Và Thương Mại Dịch Vụ Thái Sơn chính thức đi vào hoạt động từ ngày 13/10/2003. Trải qua 15 năm hình thành và phát triển, Thái Sơn trở thành đơn vị hàng đầu trên thị trường trong việc cung cấp các loại cửa nhôm và hệ vách nhôm kính.', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Times New Roman,Times,serif"><span style="font-size:11pt"><strong><span style="font-size:14.0pt">C&ocirc;ng ty TNHH Sản Xuất V&agrave; Thương Mại Dịch Vụ Th&aacute;i Sơn </span></strong><span style="font-size:14.0pt">ch&iacute;nh thức đi v&agrave;o hoạt động từ ng&agrave;y 13/10/2003. Trải qua 15 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, Th&aacute;i Sơn trở th&agrave;nh đơn vị h&agrave;ng đầu tr&ecirc;n thị trường trong việc cung cấp c&aacute;c loại cửa nh&ocirc;m v&agrave; hệ v&aacute;ch nh&ocirc;m k&iacute;nh.</span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Times New Roman,Times,serif"><span style="font-size:11pt"><span style="font-size:14.0pt">Ngay từ ng&agrave;y đầu th&agrave;nh lập, Th&aacute;i Sơn đ&atilde; lấy chất lượng sản phẩm l&agrave; gi&aacute; trị cốt l&otilde;i để cạnh tranh. Để thực hiện đ&uacute;ng như đường lối đ&oacute;, C&ocirc;ng ty thường xuy&ecirc;n kiểm so&aacute;t chặt chẽ chất lượng nguồn nguy&ecirc;n liệu đầu v&agrave;o cũng như n&acirc;ng cao chất lượng hệ thống từ m&aacute;y m&oacute;c, đến con người. </span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Times New Roman,Times,serif"><span style="font-size:11pt"><span style="font-size:14.0pt">Ngo&agrave;i vấn đề chất lượng sản phẩm, lợi nhuận doanh nghiệp, C&ocirc;ng ty c&ograve;n x&acirc;y dựng niềm tin cho kh&aacute;ch h&agrave;ng bằng những cam kết về tr&aacute;ch nhiệm x&atilde; hội v&agrave; m&ocirc;i trường. Ch&iacute;nh v&igrave; vậy, Th&aacute;i Sơn kh&ocirc;ng ngừng nghi&ecirc;n cứu v&agrave; ứng dụng những c&ocirc;ng nghệ tiến tiến v&agrave;o sản xuất nhằm mang đến một sản phẩm th&acirc;n thiện với m&ocirc;i trường m&agrave; vẫn đảm bảo mang lại một kh&ocirc;ng gian sống chất lượng cho người ti&ecirc;u d&ugrave;ng.</span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Times New Roman,Times,serif"><span style="font-size:11pt"><span style="font-size:14.0pt">Thương hiệu TS Window được ph&aacute;t triển bởi c&ocirc;ng ty <strong>TNHH Sản Xuất V&agrave; Thương Mại Dịch Vụ Th&aacute;i Sơn </strong>l&agrave; d&ograve;ng sản phẩm cao cấp đạt ti&ecirc;u chuẩn quốc tế. Để đ&aacute;p ứng nhu cầu thay đổi diện mạo của c&aacute;c c&ocirc;ng tr&igrave;nh v&agrave; ph&ugrave; hợp xu hướng ph&aacute;t triển của Thế Giới, Th&aacute;i Sơn Window li&ecirc;n tục đưa ra những mẫu m&atilde; mới với thiết kế hiện đại, đổi mới trang thiết bị m&aacute;y m&oacute;c v&agrave; n&acirc;ng cao kỹ năng tay nghề cho c&ocirc;ng nh&acirc;n.</span></span></span></p>\r\n', '17761076_1333587866719468_3529098457172812176_o.jpg', '2017-05-11 16:05:22', '2018-09-19 15:09:32', 1, '', '', '', '', '', 'Goldbridge Việt Nam', 'Giới thiệu chung', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', 'gioi-thieu', 1),
(42, 'DANH HIỆU GIẢI THƯỞNG ', '', '', NULL, '2017-07-10 22:07:22', '2018-09-19 15:09:39', 1, '', '', '', '', '', '', 'DANH HIỆU GIẢI THƯỞNG ', '', 'danh-hieu-va-giai-thuong', 1),
(46, 'TẦM NHÌN SỨ MỆNH', '', '<h2 dir="ltr" style="text-align:center"><img alt="" height="413" src="/image/images/vision-exercise-1(1).jpg" width="700" /></h2>\r\n\r\n<h2 dir="ltr"><span style="font-size:20px"><em><strong>Tầm Nh&igrave;n.</strong></em></span></h2>\r\n\r\n<p dir="ltr">Với tầm nh&igrave;n trở th&agrave;nh nh&agrave; cung cấp giải ph&aacute;p tổng thể về cửa số 1 Việt Nam v&agrave; từng bước vươn ra tầm quốc tế, Th&aacute;i Sơn tiếp tục duy tr&igrave; sự ph&aacute;t triển bền vững v&agrave; kh&ocirc;ng ngừng học hỏi, s&aacute;ng tạo nhằm đổi mới v&agrave; n&acirc;ng cao chất lượng, đa dạng sản phẩm, hiện đại h&oacute;a d&acirc;y chuyền sản xuất, ch&uacute; trọng ph&aacute;t triển c&aacute;c sản phẩm xanh, th&acirc;n thiện với m&ocirc;i trường.</p>\r\n\r\n<h2 dir="ltr"><span style="font-size:20px"><em><strong>Sứ mệnh.</strong></em></span></h2>\r\n\r\n<p dir="ltr"><em><strong>Đối với kh&aacute;ch h&agrave;ng: </strong></em>Lu&ocirc;n l&agrave; đơn vị ti&ecirc;n phong mang đến c&aacute;c sản phẩm mới g&oacute;p phần n&acirc;ng cao chất lượng đời sống người Việt.</p>\r\n\r\n<p dir="ltr"><em><strong>Với đối t&aacute;c, nh&agrave; cung cấp:</strong></em> Đề cao tinh thần hợp t&aacute;c c&ugrave;ng ph&aacute;t triển, cam kết trở th&agrave;nh &ldquo;người đồng h&agrave;nh tin cậy&rdquo; cho mọi đối t&aacute;c.</p>\r\n\r\n<p dir="ltr"><em><strong>Với cổ đ&ocirc;ng, người lao động:</strong></em> Cam kết vận h&agrave;nh hiệu quả, ph&aacute;t triển bền vững nhằm gia tăng gi&aacute; trị d&agrave;i hạn cho cổ đ&ocirc;ng v&agrave; tạo thu nhập ổn định, n&acirc;ng cao chất lượng cuộc sống cho người lao động.</p>\r\n\r\n<p dir="ltr"><em><strong>Với x&atilde; hội:</strong></em> Đề cao tr&aacute;ch nhiệm x&atilde; hội, gắn lợi &iacute;ch doanh nghiệp với lợi &iacute;ch chung của x&atilde; hội v&agrave; g&oacute;p phần bảo vệ m&ocirc;i trường.</p>\r\n', 'vision-exercise-1.jpg', '2018-09-19 15:09:59', '2018-09-20 11:09:16', 1, '', '', '', '', '', '', 'TẦM NHÌN SỨ MỆNH', '', 'tam-nhin-su-menh', 1);

-- --------------------------------------------------------

--
-- Structure de la table `page_languages`
--

CREATE TABLE IF NOT EXISTS `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'GIỚI THIỆU CHUNG', 'Công ty TNHH Sản Xuất Và Thương Mại Dịch Vụ Thái Sơn chính thức đi vào hoạt động từ ngày 13/10/2003. Trải qua 15 năm hình thành và phát triển, Thái Sơn trở thành đơn vị hàng đầu trên thị trường trong việc cung cấp các loại cửa nhôm và hệ vách nhôm kính.', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Times New Roman,Times,serif"><span style="font-size:11pt"><strong><span style="font-size:14.0pt">C&ocirc;ng ty TNHH Sản Xuất V&agrave; Thương Mại Dịch Vụ Th&aacute;i Sơn </span></strong><span style="font-size:14.0pt">ch&iacute;nh thức đi v&agrave;o hoạt động từ ng&agrave;y 13/10/2003. Trải qua 15 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, Th&aacute;i Sơn trở th&agrave;nh đơn vị h&agrave;ng đầu tr&ecirc;n thị trường trong việc cung cấp c&aacute;c loại cửa nh&ocirc;m v&agrave; hệ v&aacute;ch nh&ocirc;m k&iacute;nh.</span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Times New Roman,Times,serif"><span style="font-size:11pt"><span style="font-size:14.0pt">Ngay từ ng&agrave;y đầu th&agrave;nh lập, Th&aacute;i Sơn đ&atilde; lấy chất lượng sản phẩm l&agrave; gi&aacute; trị cốt l&otilde;i để cạnh tranh. Để thực hiện đ&uacute;ng như đường lối đ&oacute;, C&ocirc;ng ty thường xuy&ecirc;n kiểm so&aacute;t chặt chẽ chất lượng nguồn nguy&ecirc;n liệu đầu v&agrave;o cũng như n&acirc;ng cao chất lượng hệ thống từ m&aacute;y m&oacute;c, đến con người. </span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Times New Roman,Times,serif"><span style="font-size:11pt"><span style="font-size:14.0pt">Ngo&agrave;i vấn đề chất lượng sản phẩm, lợi nhuận doanh nghiệp, C&ocirc;ng ty c&ograve;n x&acirc;y dựng niềm tin cho kh&aacute;ch h&agrave;ng bằng những cam kết về tr&aacute;ch nhiệm x&atilde; hội v&agrave; m&ocirc;i trường. Ch&iacute;nh v&igrave; vậy, Th&aacute;i Sơn kh&ocirc;ng ngừng nghi&ecirc;n cứu v&agrave; ứng dụng những c&ocirc;ng nghệ tiến tiến v&agrave;o sản xuất nhằm mang đến một sản phẩm th&acirc;n thiện với m&ocirc;i trường m&agrave; vẫn đảm bảo mang lại một kh&ocirc;ng gian sống chất lượng cho người ti&ecirc;u d&ugrave;ng.</span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Times New Roman,Times,serif"><span style="font-size:11pt"><span style="font-size:14.0pt">Thương hiệu TS Window được ph&aacute;t triển bởi c&ocirc;ng ty <strong>TNHH Sản Xuất V&agrave; Thương Mại Dịch Vụ Th&aacute;i Sơn </strong>l&agrave; d&ograve;ng sản phẩm cao cấp đạt ti&ecirc;u chuẩn quốc tế. Để đ&aacute;p ứng nhu cầu thay đổi diện mạo của c&aacute;c c&ocirc;ng tr&igrave;nh v&agrave; ph&ugrave; hợp xu hướng ph&aacute;t triển của Thế Giới, Th&aacute;i Sơn Window li&ecirc;n tục đưa ra những mẫu m&atilde; mới với thiết kế hiện đại, đổi mới trang thiết bị m&aacute;y m&oacute;c v&agrave; n&acirc;ng cao kỹ năng tay nghề cho c&ocirc;ng nh&acirc;n.</span></span></span></p>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giới thiệu chung', 'Goldbridge Việt Nam', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..'),
(36, 35, 'en', 'Giới thiệu', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt="" src="/image/images/670px-conceptualmapfloss(1).png" style="float:right; height:564px; width:670px" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(49, 42, 'vn', 'DANH HIỆU GIẢI THƯỞNG ', '', '', '', '', '', '', '', 0, 'danh-hieu-va-giai-thuong', 'DANH HIỆU GIẢI THƯỞNG ', '', ''),
(50, 42, 'en', 'Hệ thống nhà thuốc', '', '<p>Nội dung&nbsp;Hệ thống nh&agrave; thuốc</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(57, 46, 'vn', 'TẦM NHÌN SỨ MỆNH', '', '<h2 dir="ltr" style="text-align:center"><img alt="" height="413" src="/image/images/vision-exercise-1(1).jpg" width="700" /></h2>\r\n\r\n<h2 dir="ltr"><span style="font-size:20px"><em><strong>Tầm Nh&igrave;n.</strong></em></span></h2>\r\n\r\n<p dir="ltr">Với tầm nh&igrave;n trở th&agrave;nh nh&agrave; cung cấp giải ph&aacute;p tổng thể về cửa số 1 Việt Nam v&agrave; từng bước vươn ra tầm quốc tế, Th&aacute;i Sơn tiếp tục duy tr&igrave; sự ph&aacute;t triển bền vững v&agrave; kh&ocirc;ng ngừng học hỏi, s&aacute;ng tạo nhằm đổi mới v&agrave; n&acirc;ng cao chất lượng, đa dạng sản phẩm, hiện đại h&oacute;a d&acirc;y chuyền sản xuất, ch&uacute; trọng ph&aacute;t triển c&aacute;c sản phẩm xanh, th&acirc;n thiện với m&ocirc;i trường.</p>\r\n\r\n<h2 dir="ltr"><span style="font-size:20px"><em><strong>Sứ mệnh.</strong></em></span></h2>\r\n\r\n<p dir="ltr"><em><strong>Đối với kh&aacute;ch h&agrave;ng: </strong></em>Lu&ocirc;n l&agrave; đơn vị ti&ecirc;n phong mang đến c&aacute;c sản phẩm mới g&oacute;p phần n&acirc;ng cao chất lượng đời sống người Việt.</p>\r\n\r\n<p dir="ltr"><em><strong>Với đối t&aacute;c, nh&agrave; cung cấp:</strong></em> Đề cao tinh thần hợp t&aacute;c c&ugrave;ng ph&aacute;t triển, cam kết trở th&agrave;nh &ldquo;người đồng h&agrave;nh tin cậy&rdquo; cho mọi đối t&aacute;c.</p>\r\n\r\n<p dir="ltr"><em><strong>Với cổ đ&ocirc;ng, người lao động:</strong></em> Cam kết vận h&agrave;nh hiệu quả, ph&aacute;t triển bền vững nhằm gia tăng gi&aacute; trị d&agrave;i hạn cho cổ đ&ocirc;ng v&agrave; tạo thu nhập ổn định, n&acirc;ng cao chất lượng cuộc sống cho người lao động.</p>\r\n\r\n<p dir="ltr"><em><strong>Với x&atilde; hội:</strong></em> Đề cao tr&aacute;ch nhiệm x&atilde; hội, gắn lợi &iacute;ch doanh nghiệp với lợi &iacute;ch chung của x&atilde; hội v&agrave; g&oacute;p phần bảo vệ m&ocirc;i trường.</p>\r\n', '', '', '', '', '', 0, 'tam-nhin-su-menh', 'TẦM NHÌN SỨ MỆNH', '', ''),
(58, 46, 'en', 'english version TẦM NHÌN SỨ MỆNH', 'english version ', 'english version <p dir="ltr"><em><strong>Tầm Nh&igrave;n.</strong></em></p>\r\n\r\n<p dir="ltr">Với tầm nh&igrave;n trở th&agrave;nh nh&agrave; cung cấp giải ph&aacute;p tổng thể về cửa số 1 Việt Nam v&agrave; từng bước vươn ra tầm quốc tế, Th&aacute;i Sơn tiếp tục duy tr&igrave; sự ph&aacute;t triển bền vững v&agrave; kh&ocirc;ng ngừng học hỏi, s&aacute;ng tạo nhằm đổi mới v&agrave; n&acirc;ng cao chất lượng, đa dạng sản phẩm, hiện đại h&oacute;a d&acirc;y chuyền sản xuất, ch&uacute; trọng ph&aacute;t triển c&aacute;c sản phẩm xanh, th&acirc;n thiện với m&ocirc;i trường.</p>\r\n\r\n<p dir="ltr"><em><strong>Sứ mệnh.</strong></em></p>\r\n\r\n<p dir="ltr">Đối với kh&aacute;ch h&agrave;ng: Lu&ocirc;n l&agrave; đơn vị ti&ecirc;n phong mang đến c&aacute;c sản phẩm mới g&oacute;p phần n&acirc;ng cao chất lượng đời sống người Việt.</p>\r\n\r\n<p dir="ltr">Với đối t&aacute;c, nh&agrave; cung cấp: Đề cao tinh thần hợp t&aacute;c c&ugrave;ng ph&aacute;t triển, cam kết trở th&agrave;nh &ldquo;người đồng h&agrave;nh tin cậy&rdquo; cho mọi đối t&aacute;c.</p>\r\n\r\n<p dir="ltr">Với cổ đ&ocirc;ng, người lao động: Cam kết vận h&agrave;nh hiệu quả, ph&aacute;t triển bền vững nhằm gia tăng gi&aacute; trị d&agrave;i hạn cho cổ đ&ocirc;ng v&agrave; tạo thu nhập ổn định, n&acirc;ng cao chất lượng cuộc sống cho người lao động.</p>\r\n\r\n<p dir="ltr">Với x&atilde; hội: Đề cao tr&aacute;ch nhiệm x&atilde; hội, gắn lợi &iacute;ch doanh nghiệp với lợi &iacute;ch chung của x&atilde; hội v&agrave; g&oacute;p phần bảo vệ m&ocirc;i trường.</p>\r\n', '', '', '', '', '', 0, 'en-tam-nhin-su-menh', 'TẦM NHÌN SỨ MỆNH', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_favorite` int(11) NOT NULL,
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_favorite`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`) VALUES
(60, 'Cửa đi TS 55B', '<p>Được tạo th&agrave;nh bởi c&aacute;c thanh Profile, nh&ocirc;m Xingfa hệ 55 với độ d&agrave;y 2.0 mm c&ugrave;ng thiết kế khoang trống c&ugrave;ng 2 đường g&acirc;n gia cường nhằm tăng khả năng chịu lực. Đ&acirc;y l&agrave; d&ograve;ng sản phẩm cao cấp với độ tinh xảo cũng như khả năng c&aacute;ch &acirc;m c&aacute;ch nhiệt cao mang đến vẻ sang trọng trường tồn với thời gian.</p>\r\n', '', '', '<p><span style="font-size:16px">Được tạo th&agrave;nh bởi c&aacute;c thanh Profile, nh&ocirc;m Xingfa hệ 55 với độ d&agrave;y 2.0 mm c&ugrave;ng thiết kế khoang trống c&ugrave;ng 2 đường g&acirc;n gia cường nhằm tăng khả năng chịu lực. Đ&acirc;y l&agrave; d&ograve;ng sản phẩm cao cấp với độ tinh xảo cũng như khả năng c&aacute;ch &acirc;m c&aacute;ch nhiệt cao mang đến vẻ sang trọng trường tồn với thời gian.</span></p>\r\n\r\n<p><span style="font-size:20px"><strong><span style="color:#27ae60">SƠ ĐỒ LẮP GH&Eacute;P</span></strong></span></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px">Cửa đi 1 c&aacute;nh</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px"><img alt="" height="600" src="/image/images/TS%2055_SDLG1.jpg" width="422" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px">Cửa đi 2&nbsp;c&aacute;nh</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px"><img alt="" height="600" src="/image/images/TS%2055_SDLG2.jpg" width="486" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px">Cửa đi 1&nbsp;c&aacute;nh liền sập</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px"><img alt="" height="600" src="/image/images/TS%2055_SDLG3.jpg" width="425" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', 0, 0, 0, 'TS-55B1_2.jpg', '["{\\"image\\":\\"TS 55B1.jpg\\"}"]', '2018-09-12 11:09:40', '2018-09-20 13:09:14', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa đi TS 55B', '', 'cua-di-ts-55b', '', 1, '', '', '', NULL, NULL, '140,140'),
(61, 'Cửa đi TS 55', '', '', '', '<p><span style="font-size:16px">Được tạo th&agrave;nh bởi c&aacute;c thanh Profile, c&ugrave;ng thiết kế khoang trống c&ugrave;ng 2 đường g&acirc;n gia cường nhằm tăng khả năng chịu lực. Đ&acirc;y l&agrave; d&ograve;ng sản phẩm cao cấp với độ tinh xảo cũng như khả năng c&aacute;ch &acirc;m c&aacute;ch nhiệt cao mang đến vẻ sang trọng trường tồn với thời gian.</span></p>\r\n\r\n<p><strong><span style="font-size:20px"><span style="color:#27ae60">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9">Cửa đi 1 c&aacute;nh</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9"><img alt="" height="500" src="/image/images/TS%2055_SDLG1.jpg" width="437" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9">Cửa đi 2&nbsp;c&aacute;nh</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9"><img alt="" height="500" src="/image/images/TS%2055_SDLG2.jpg" width="447" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9">Cửa đi 2&nbsp;c&aacute;nh c&oacute; đố</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9"><img alt="" height="500" src="/image/images/TS%2055_SDLG3.jpg" width="440" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', 0, 0, 0, 'TS 55_1_2.jpg', '[]', '2018-09-12 11:09:23', '2018-09-20 14:09:50', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa đi TS 55', '', 'cua-di-ts-55', '', 1, '', '', '', NULL, NULL, '140,140'),
(62, 'Cửa đi TS 4400', '', '', '', '<p><span style="font-size:16px">Cửa được tạo th&agrave;nh bởi hệ profile nh&ocirc;m định h&igrave;nh thiết kế c&aacute;c g&acirc;n gia cường tăng khả năng chịu lực. Bộ phụ kiện cao cấp đồng bộ với hệ profile gi&uacute;p cửa hoạt động nhẹ nh&agrave;ng, độ k&iacute;n kh&iacute;t cao gi&uacute;p tăng khả năng c&aacute;ch &acirc;m c&aacute;ch nhiệt. L&agrave; hệ cửa đi mở quay đ&aacute;p ứng tối đa y&ecirc;u cầu về kh&ocirc;ng gian th&ocirc;ng tho&aacute;ng v&agrave; lấy được &aacute;nh s&aacute;ng tối đa</span></p>\r\n\r\n<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong>Cửa đi 1 c&aacute;nh</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong><img alt="" height="500" src="/image/images/TS%204400_SDLG1.jpg" width="433" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong>Cửa đi 2&nbsp;c&aacute;nh</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong><img alt="" height="550" src="/image/images/TS%204400_SDLG2.jpg" width="412" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong>Cửa đi liền v&aacute;ch</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong><img alt="" height="600" src="/image/images/TS%204400_SDLG3.jpg" width="334" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', 0, 0, 0, 'TS 4400_1.jpg', '[]', '2018-09-12 11:09:14', '2018-09-20 13:09:02', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa đi TS 4400', '', 'cua-di-ts-4400', '', 1, '', '', '', NULL, NULL, '140,140'),
(63, 'Cửa đi TS 450', '', '', '', '<p><span style="font-size:16px">Được tạo n&ecirc;n bởi hệ nh&ocirc;m Việt Ph&aacute;p 450 n&ecirc;n cửa n&agrave;y c&oacute; đầy đủ những ưu điểm của hệ cửa Việt Ph&aacute;p chịu lực, chịu va chạm tốt. Cửa sử dụng chốt đa điểm, bản lề 3D gioăng k&eacute;p, hộp&nbsp;k&iacute;nh v&agrave; ngưỡng nh&ocirc;m l&ecirc;n đạt độ k&iacute;n kh&iacute;t cao, tăng khả năng c&aacute;ch &acirc;m, c&aacute;ch nhiệt. Sản phẩm&nbsp;được thiết kế linh hoạt c&oacute; thể mở quay v&agrave;o hoặc quay ra, mở 2 c&aacute;nh hoặc 4 c&aacute;nh t&ugrave;y theo&nbsp;kh&ocirc;ng gian c&ocirc;ng &nbsp;tr&igrave;nh.</span></p>\r\n\r\n<p><strong><span style="color:#27ae60"><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong>Cửa đi 1&nbsp;c&aacute;nh</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong><img alt="" height="600" src="/image/images/TS%20450_SDLG1.jpg" width="439" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong>Cửa đi 2&nbsp;c&aacute;nh</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong><img alt="" height="500" src="/image/images/TS%20450_SDLG2.jpg" width="453" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', 0, 0, 0, 'TS-450_1.jpg', '[]', '2018-09-12 11:09:53', '2018-09-20 13:09:19', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa đi TS 450', '', 'cua-di-ts-450', '', 1, '', '', '', NULL, NULL, '140,140'),
(64, 'Cửa lùa TS 44', '', '', '', '<p><strong><span style="color:#27ae60"><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#27ae60"><span style="font-size:20px"><img alt="" height="742" src="/image/images/Cua%20lua%20TS44_SDLG.jpg" width="600" /></span></span></strong></p>\r\n', '', '', 0, 0, 0, 'cửa-nhôm-lùa-trượt-1024x682.jpg', '[]', '2018-09-12 11:09:29', '2018-09-20 15:09:35', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa lùa TS 44', '', 'cua-lua-ts-44', '', 1, '', '', '', NULL, NULL, '124,124'),
(65, 'Cửa lùa TS 93', '', '', '', '<p><strong><span style="color:#27ae60"><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><img alt="" height="525" src="/image/images/Cua%20lua%20TS%2093_SDLG.jpg" width="600" /></span></span></p>\r\n', '', '', 0, 0, 0, 'Cua-lua-TS-93.jpg', '[]', '2018-09-12 11:09:52', '2018-09-20 15:09:35', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa lùa TS 93', '', 'cua-lua-ts-93', '', 1, '', '', '', NULL, NULL, '124,124'),
(66, 'Cửa lùa TS 95', '', '', '', '<p><strong><span style="font-size:20px"><span style="color:#27ae60">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:20px"><span style="color:#27ae60"><img alt="" height="797" src="/image/images/Cua%20lua%20TS%2095_SDLG.jpg" width="600" /></span></span></strong></p>\r\n', '', '', 0, 0, 0, 'Cua lua TS 95.jpg', '[]', '2018-09-12 11:09:17', '2018-09-13 15:09:14', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa lùa TS 95', '', 'cua-lua-ts-95', '', 1, '', '', '', NULL, NULL, '124,124'),
(67, 'Cửa lùa TS 48', '', '', '', '<p><strong><span style="color:#27ae60"><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><img alt="" height="600" src="/image/images/Cua%20lua%20TS%2044_SDLG.jpg" width="516" /></span></span></p>\r\n', '', '', 0, 0, 0, 'Cua-lua-TS-48.jpg', '[]', '2018-09-12 11:09:42', '2018-09-20 13:09:14', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa lùa TS 48', '', 'cua-lua-ts-48', '', 1, '', '', '', NULL, NULL, '124,124'),
(68, 'Cửa sổ TS 55B', '', '', '', '<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="700" src="/image/images/SDLG%20CSTS55B(1).jpg" width="500" /></strong></span></span></p>\r\n', '', '', 0, 0, 0, 'TS 55B.jpg', '[]', '2018-09-12 11:09:49', '2018-09-20 14:09:35', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa sổ TS 55B', '', 'cua-so-ts-55b', '', 1, '', '', '', NULL, NULL, '139,139'),
(69, 'Cửa sổ TS 4400', '', '', '', '<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="713" src="/image/images/SDLG%20CSTS4400.jpg" width="500" /></strong></span></span></p>\r\n', '', '', 0, 0, 0, 'Cua-so-TS4400.jpg', '[]', '2018-09-12 11:09:10', '2018-09-20 14:09:39', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa sổ TS 4400', '', 'cua-so-ts-4400', '', 1, '', '', '', NULL, NULL, '139,139'),
(70, 'Cửa sổ TS 2600', '<p><span style="font-size:16px">Cửa sổ TS 2600 sử dụng nh&ocirc;m Việt Ph&aacute;p hệ 2600 cực kỳ chắc chắn, vững ch&atilde;i v&agrave; an to&agrave;n. Kh&ocirc;ng bị co ng&oacute;t, cong v&ecirc;nh, sỉn m&agrave;u theo thời gian sử dụng. Hệ nh&ocirc;m n&agrave;y th&iacute;ch hợp với c&aacute;c c&ocirc;ng tr&igrave;nh dạng biệt thự, chung cư, t&ograve;a nh&agrave; bởi vẻ sang trọng, lịch sự m&agrave; n&oacute; đem lại. &nbsp; &nbsp; &nbsp;</span></p>\r\n', '', '', '<p><span style="font-size:16px">Cửa sổ TS 2600 sử dụng nh&ocirc;m Việt Ph&aacute;p hệ 2600 cực kỳ chắc chắn, vững ch&atilde;i v&agrave; an to&agrave;n. Kh&ocirc;ng bị co ng&oacute;t, cong v&ecirc;nh, sỉn m&agrave;u theo thời gian sử dụng. Hệ nh&ocirc;m n&agrave;y th&iacute;ch hợp với c&aacute;c c&ocirc;ng tr&igrave;nh dạng biệt thự, chung cư, t&ograve;a nh&agrave; bởi vẻ sang trọng, lịch sự m&agrave; n&oacute; đem lại.</span></p>\r\n\r\n<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong><span style="color:#2980b9">Cử sổ l&ugrave;a TS 2600</span></strong></span></p>\r\n\r\n<p style="text-align:center"><img alt="" height="558" src="/image/images/SDLG%20CSTS26001.jpg" width="500" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong><span style="color:#2980b9">Cử sổ l&ugrave;a TS 2600</span></strong></span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong><span style="color:#2980b9"><img alt="" height="665" src="/image/images/SDLG%20CSTS26002.jpg" width="500" /></span></strong></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong><span style="color:#2980b9">Cử sổ kết hợp v&aacute;ch&nbsp;TS 2600</span></strong></span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong><span style="color:#2980b9"><img alt="" height="569" src="/image/images/SDLG%20CSTS26003.jpg" width="500" /></span></strong></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', 0, 0, 0, 'CS-TS2600.jpg', '[]', '2018-09-12 11:09:45', '2018-09-20 14:09:07', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa sổ TS 2600', '', 'cua-so-ts-2600', '', 1, '', '', '', NULL, NULL, '139,139'),
(71, 'Cử sổ TS 44', '<p><span style="font-size:16px">Hệ thống cửa sổ TS 44 được tạo n&ecirc;n bởi c&aacute;c đường g&acirc;n gia cường tăng khả năng chịu lực. Sử dụng chốt đa điểm c&ugrave;ng hệ thống gioăng k&eacute;p. Khi đ&oacute;ng cửa hệ thống kết hợp thanh chốt đa điểm sẽ &eacute;p chặt khung c&aacute;nh v&agrave; khung bao tạo độ kh&iacute;t, c&aacute;ch &acirc;m, c&aacute;ch nhiệt hiệu quả</span></p>\r\n', '', '', '<p><span style="font-size:16px">Hệ thống cửa sổ TS 44 được tạo n&ecirc;n bởi c&aacute;c đường g&acirc;n gia cường tăng khả năng chịu lực. Sử dụng chốt đa điểm c&ugrave;ng hệ thống gioăng k&eacute;p. Khi đ&oacute;ng cửa hệ thống kết hợp thanh chốt đa điểm sẽ &eacute;p chặt khung c&aacute;nh v&agrave; khung bao tạo độ kh&iacute;t, c&aacute;ch &acirc;m, c&aacute;ch nhiệt hiệu quả</span></p>\r\n\r\n<p><strong><span style="color:#27ae60"><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#27ae60"><span style="font-size:20px"><img alt="" height="581" src="/image/images/SDLG%20CSTS44(1).jpg" width="550" /></span></span></strong></p>\r\n', '', '', 0, 0, 0, 'CS-TS44.jpg', '[]', '2018-09-12 11:09:00', '2018-09-20 14:09:16', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cử sổ TS 44', '', 'cu-so-ts-44', '', 1, '', '', '', NULL, NULL, '139,139'),
(72, 'Cửa sổ TS 2000', '<p><span style="font-size:16px">Mẫu cửa TS hệ 2000 đ&ograve;i hỏi t&iacute;nh tỉ mỉ v&agrave; mất thời gian sản xuất hơn những thiết kế th&ocirc;ng thường. Thiết kế n&agrave;y ph&ugrave; hợp với cửa nh&agrave; vệ sinh, ph&ograve;ng tắm, cửa đi ban c&ocirc;ng&hellip; những nơi ẩm ướt, cần nhiều kh&ocirc;ng kh&iacute; v&agrave; gi&oacute; tự nhi&ecirc;n gi&uacute;p căn ph&ograve;ng lu&ocirc;n kh&ocirc; r&aacute;o.</span></p>\r\n', '', '', '<p><span style="font-size:16px">Mẫu cửa TS hệ 2000 đ&ograve;i hỏi t&iacute;nh tỉ mỉ v&agrave; mất thời gian sản xuất hơn những thiết kế th&ocirc;ng thường. Thiết kế n&agrave;y ph&ugrave; hợp với cửa nh&agrave; vệ sinh, ph&ograve;ng tắm, cửa đi ban c&ocirc;ng&hellip; những nơi ẩm ướt, cần nhiều kh&ocirc;ng kh&iacute; v&agrave; gi&oacute; tự nhi&ecirc;n gi&uacute;p căn ph&ograve;ng lu&ocirc;n kh&ocirc; r&aacute;o.</span></p>\r\n\r\n<p><span style="color:#27ae60"><strong><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></strong></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:20px"><img alt="" height="825" src="/image/images/SDLG%20CSTS20001.jpg" width="500" /></span></strong></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:20px"><img alt="" height="769" src="/image/images/SDLG%20CSTS20002.jpg" width="500" /></span></strong></span></p>\r\n', '', '', 0, 0, 0, 'CS-TS2000.jpg', '[]', '2018-09-12 11:09:19', '2018-09-20 14:09:40', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cửa sổ TS 2000', '', 'cua-so-ts-2000', '', 1, '', '', '', NULL, NULL, '139,139'),
(73, 'Vách ngăn TS 4400', '<p><span style="font-size:16px">Hệ v&aacute;ch ngăn TS 4400 được tạo ta từ khung nh&ocirc;m Việt Ph&aacute;p hệ 4400 c&ugrave;ng v&aacute;ch k&iacute;nh chịu lực gi&uacute;p c&aacute;ch &acirc;m v&agrave; ổn định nhiệt độ ph&ograve;ng. Diện t&iacute;ch mặt k&iacute;nh lớn gi&uacute;p lấy &aacute;nh s&aacute;ng tự nhi&ecirc;n. Sử dụng v&aacute;ch ngăn c&ograve;n gi&uacute;p tiết kiệm chi ph&iacute;, thi c&ocirc;ng dễ d&agrave;ng v&agrave; giảm trọng lực cho c&ocirc;ng tr&igrave;nh</span></p>\r\n', '', '', '<p><span style="font-size:16px">Hệ v&aacute;ch ngăn TS 4400 được tạo ta từ khung nh&ocirc;m Việt Ph&aacute;p hệ 4400 c&ugrave;ng v&aacute;ch k&iacute;nh chịu lực gi&uacute;p c&aacute;ch &acirc;m v&agrave; ổn định nhiệt độ ph&ograve;ng. Diện t&iacute;ch mặt k&iacute;nh lớn gi&uacute;p lấy &aacute;nh s&aacute;ng tự nhi&ecirc;n. Sử dụng v&aacute;ch ngăn c&ograve;n gi&uacute;p tiết kiệm chi ph&iacute;, thi c&ocirc;ng dễ d&agrave;ng v&agrave; giảm trọng lực cho c&ocirc;ng tr&igrave;nh</span></p>\r\n\r\n<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="578" src="/image/images/SDLG%20vnTS44001.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="485" src="/image/images/SDLG%20vnTS44002.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="442" src="/image/images/SDLG%20vnTS44003.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 0, 0, 0, 'VN-TS4400.jpg', '[]', '2018-09-12 11:09:52', '2018-09-20 14:09:22', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Vách ngăn TS 4400', '', 'vach-ngan-ts-4400', '', 1, '', '', '', NULL, NULL, '119,119'),
(74, 'Vách ngăn TS 1100', '<p><span style="font-size:16px">V&aacute;ch ngăn TS 1.100 được sử dụng l&agrave;m v&aacute;ch ngăn chia ph&ograve;ng. V&aacute;ch c&oacute; độ k&iacute;n kh&iacute;t gần như tuyệt đối, tất cả c&aacute;c điểm tiếp x&uacute;c giữa c&aacute;c thanh profile đều được gh&eacute;p th&ecirc;m c&aacute;c gioăng đệm bằng cao su đảm bảo kh&ocirc;ng c&oacute; một khe hở n&agrave;o để nước c&oacute; thể x&acirc;m nhập v&agrave;o b&ecirc;n trong. Phụ kiện đồng bộ được sản xuất từ c&aacute;c hợp kim kh&ocirc;ng gỉ, gi&aacute; trị thẩm mỹ, tiện &iacute;ch cao. Nh&ocirc;m Việt Ph&aacute;p được chế tạo tỉ mỉ tới từng chi tiết n&ecirc;n rất an to&agrave;n cho người sử dụng</span></p>\r\n', '', '', '<p><span style="font-size:16px">V&aacute;ch ngăn TS 1.100 được sử dụng l&agrave;m v&aacute;ch ngăn chia ph&ograve;ng. V&aacute;ch c&oacute; độ k&iacute;n kh&iacute;t gần như tuyệt đối, tất cả c&aacute;c điểm tiếp x&uacute;c giữa c&aacute;c thanh profile đều được gh&eacute;p th&ecirc;m c&aacute;c gioăng đệm bằng cao su đảm bảo kh&ocirc;ng c&oacute; một khe hở n&agrave;o để nước c&oacute; thể x&acirc;m nhập v&agrave;o b&ecirc;n trong. Phụ kiện đồng bộ được sản xuất từ c&aacute;c hợp kim kh&ocirc;ng gỉ, gi&aacute; trị thẩm mỹ, tiện &iacute;ch cao. Nh&ocirc;m Việt Ph&aacute;p được chế tạo tỉ mỉ tới từng chi tiết n&ecirc;n rất an to&agrave;n cho người sử dụng</span></p>\r\n\r\n<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="690" src="/image/images/SDLG%20vnTS11001.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="598" src="/image/images/SDLG%20vnTS11002.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 0, 0, 0, 'VN-TS-1100.jpg', '[]', '2018-09-12 11:09:15', '2018-09-20 15:09:31', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Vách ngăn TS 1100', '', 'vach-ngan-ts-1100', '', 1, '', '', '', NULL, NULL, '119,119'),
(75, 'Vách ngăn TS MD', '<p><span style="font-size:16px">Hệ v&aacute;ch ngăn TS MD &nbsp;được tạo ra bởi khung nh&ocirc;m định h&igrave;nh với c&aacute;c m&agrave;u sơn tĩnh điện kh&aacute;c nhau, trắng sữa, v&acirc;n gỗ, đen,...K&iacute;nh trong, k&iacute;nh mờ, hoặc d&aacute;n đề can mờ, c&aacute;c loại. V&aacute;ch k&iacute;nh c&oacute; t&aacute;c dụng c&aacute;ch &acirc;m, c&aacute;ch nhiệt, chống ồn &agrave;o bụi bẩn, lắp đặt dễ d&agrave;ng, kh&ocirc;ng chiếm nhiều diện t&iacute;ch trong kh&ocirc;ng gian ph&ograve;ng</span></p>\r\n', '', '', '<p><span style="font-size:16px">Hệ v&aacute;ch ngăn TS MD &nbsp;được tạo ra bởi khung nh&ocirc;m định h&igrave;nh với c&aacute;c m&agrave;u sơn tĩnh điện kh&aacute;c nhau, trắng sữa, v&acirc;n gỗ, đen,...K&iacute;nh trong, k&iacute;nh mờ, hoặc d&aacute;n đề can mờ, c&aacute;c loại. V&aacute;ch k&iacute;nh c&oacute; t&aacute;c dụng c&aacute;ch &acirc;m, c&aacute;ch nhiệt, chống ồn &agrave;o bụi bẩn, lắp đặt dễ d&agrave;ng, kh&ocirc;ng chiếm nhiều diện t&iacute;ch trong kh&ocirc;ng gian ph&ograve;ng</span></p>\r\n\r\n<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="526" src="/image/images/SDLG%20vnTSMD.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', 0, 0, 0, 'TS-MD.jpg', '[]', '2018-09-12 11:09:51', '2018-10-01 13:10:24', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Vách ngăn TS MD', '', 'vach-ngan-ts-md', '', 1, '', '', '', NULL, NULL, '119,119'),
(76, 'Lam chớp', '', '', '', '<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="649" src="/image/images/lc_sdlg.jpg" width="300" /></strong></span></span></p>\r\n', '', '', 0, 0, 0, 'lam-chan-nang-nhom-2.jpg', '["{\\"image\\":\\"Lam-chan-nang-la-lieu-Kim-Sen.jpg\\"}"]', '2018-10-01 14:10:44', NULL, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Lam chớp', '', 'lam-chop', '', 1, '', '', '', NULL, NULL, '116,116');

-- --------------------------------------------------------

--
-- Structure de la table `productcat`
--

CREATE TABLE IF NOT EXISTS `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(116, 'Hệ lam chớp', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', 0, 5, 'lam-chan-nang-nhom-2.jpg', '2018-10-01 13:10:03', NULL, '', '', '', '', '', 1, 'Hệ lam chớp', 'Sunbrella là một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella – Mỹ. Vải Sunberlla được sản xuất trên dây truyền tiên tiến nhất,dưới đôi bàn tay của các kỹ sư lâu năm kinh nghiệm trong ngành sản xuất vải của Mỹ.Vải Sunbrella được làm từ 100% chất liệu acrylic, màu sắc của vải được nhuộm ngay từ công đoạn đầu tiên trong quy trình sản xuất ngay cả trước khi các sợi vải được hình thành lên.Chính vì vậy màu sắc của vải Sunbrella chịu được ánh sáng mặt trời và các điều kiện khắc nghiệt của thời tiết. ', 'he-lam-chop', 'Vải Sunbrella', NULL),
(119, 'Hệ vách ngăn', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', 0, 3, 'VN-TS4400.jpg', '2018-10-01 13:10:23', NULL, '', '', '', '', '', 1, 'Hệ vách ngăn', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.', 'he-vach-ngan', 'Vải Bỉ', NULL),
(124, 'Hệ cửa lùa', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', 0, 2, 'Cua-lua-TS-48.jpg', '2018-10-01 10:10:29', NULL, '', '', '', '', '', 1, 'Hệ cửa lùa', ' So sánh tuổi thọ của sơn thì giấy dán tường có độ bền không bằng nhưng giấy dán tường hàn quốc lại giúp bạn dễ dàng tạo được một không gian nhiều màu sắc, hình khối như mong muốn, thi công nhanh chóng.', 'he-cua-lua', 'Giấy Dán Tường', NULL),
(139, 'Hệ cửa sổ', '', '', 0, 1, 'CS-TS2600.jpg', '2018-10-01 13:10:40', NULL, '', '', '', '', '', 1, 'Hệ cửa sổ', '', 'he-cua-so', '', 1),
(140, 'Hệ cửa đi', '', '', 0, 0, 'TS-55B1_2.jpg', '2018-10-01 13:10:02', NULL, '', '', '', '', '', 1, 'Hệ cửa đi', '', 'he-cua-di', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `productcat_languages`
--

CREATE TABLE IF NOT EXISTS `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(217, 116, 'Hệ lam chớp', 'vn', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', '', '', '', '', '', 0, 'he-lam-chop', 'Vải Sunbrella', 'Hệ lam chớp', 'Sunbrella là một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella – Mỹ. Vải Sunberlla được sản xuất trên dây truyền tiên tiến nhất,dưới đôi bàn tay của các kỹ sư lâu năm kinh nghiệm trong ngành sản xuất vải của Mỹ.Vải Sunbrella được làm từ 100% chất liệu acrylic, màu sắc của vải được nhuộm ngay từ công đoạn đầu tiên trong quy trình sản xuất ngay cả trước khi các sợi vải được hình thành lên.Chính vì vậy màu sắc của vải Sunbrella chịu được ánh sáng mặt trời và các điều kiện khắc nghiệt của thời tiết. '),
(218, 116, 'Vải Sunbrella', 'en', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', '', '', '', '', '', 0, 'vai-sunbrella', 'Vải Sunbrella', 'Vải Sunbrella', 'Sunbrella là một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella – Mỹ. Vải Sunberlla được sản xuất trên dây truyền tiên tiến nhất,dưới đôi bàn tay của các kỹ sư lâu năm kinh nghiệm trong ngành sản xuất vải của Mỹ.Vải Sunbrella được làm từ 100% chất liệu acrylic, màu sắc của vải được nhuộm ngay từ công đoạn đầu tiên trong quy trình sản xuất ngay cả trước khi các sợi vải được hình thành lên.Chính vì vậy màu sắc của vải Sunbrella chịu được ánh sáng mặt trời và các điều kiện khắc nghiệt của thời tiết. '),
(223, 119, 'Hệ vách ngăn', 'vn', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '', '', '', '', '', 0, 'he-vach-ngan', 'Vải Bỉ', 'Hệ vách ngăn', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.'),
(224, 119, 'Vải Bỉ', 'en', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '', '', '', '', '', 0, 'vai-bi', 'Vải Bỉ', 'Vải Bỉ', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.'),
(233, 124, 'Hệ cửa lùa', 'vn', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '', '', '', '', '', 0, 'he-cua-lua', 'Giấy Dán Tường', 'Hệ cửa lùa', ' So sánh tuổi thọ của sơn thì giấy dán tường có độ bền không bằng nhưng giấy dán tường hàn quốc lại giúp bạn dễ dàng tạo được một không gian nhiều màu sắc, hình khối như mong muốn, thi công nhanh chóng.'),
(234, 124, 'Giấy Dán Tường', 'en', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '', '', '', '', '', 0, 'giay-dan-tuong', 'Giấy Dán Tường', 'Giấy Dán Tường', ' So sánh tuổi thọ của sơn thì giấy dán tường có độ bền không bằng nhưng giấy dán tường hàn quốc lại giúp bạn dễ dàng tạo được một không gian nhiều màu sắc, hình khối như mong muốn, thi công nhanh chóng.'),
(263, 139, 'Hệ cửa sổ', 'vn', '', '', '', '', '', '', '', 0, 'he-cua-so', '', 'Hệ cửa sổ', ''),
(264, 139, ' Tại sao chọn American Skills', 'en', '', '', '', '', '', '', '', 0, 'tai-sao-chon-american-skills', '', ' Tại sao chọn American Skills', ''),
(265, 140, 'Hệ cửa đi', 'vn', '', '', '', '', '', '', '', 0, 'he-cua-di', '', 'Hệ cửa đi', ''),
(266, 140, 'Kết quả học tập của bé', 'en', '', '', '', '', '', '', '', 0, 'ket-qua-hoc-tap-cua-be', '', 'Kết quả học tập của bé', '');

-- --------------------------------------------------------

--
-- Structure de la table `product_catalogs_file`
--

CREATE TABLE IF NOT EXISTS `product_catalogs_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `product_catalogs_file`
--

INSERT INTO `product_catalogs_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `product_color`
--

CREATE TABLE IF NOT EXISTS `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_languages`
--

CREATE TABLE IF NOT EXISTS `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(107, 60, 'vn', 'Cửa đi TS 55B', '<p>Được tạo th&agrave;nh bởi c&aacute;c thanh Profile, nh&ocirc;m Xingfa hệ 55 với độ d&agrave;y 2.0 mm c&ugrave;ng thiết kế khoang trống c&ugrave;ng 2 đường g&acirc;n gia cường nhằm tăng khả năng chịu lực. Đ&acirc;y l&agrave; d&ograve;ng sản phẩm cao cấp với độ tinh xảo cũng như khả năng c&aacute;ch &acirc;m c&aacute;ch nhiệt cao mang đến vẻ sang trọng trường tồn với thời gian.</p>\r\n', '', '', '<p><span style="font-size:16px">Được tạo th&agrave;nh bởi c&aacute;c thanh Profile, nh&ocirc;m Xingfa hệ 55 với độ d&agrave;y 2.0 mm c&ugrave;ng thiết kế khoang trống c&ugrave;ng 2 đường g&acirc;n gia cường nhằm tăng khả năng chịu lực. Đ&acirc;y l&agrave; d&ograve;ng sản phẩm cao cấp với độ tinh xảo cũng như khả năng c&aacute;ch &acirc;m c&aacute;ch nhiệt cao mang đến vẻ sang trọng trường tồn với thời gian.</span></p>\r\n\r\n<p><span style="font-size:20px"><strong><span style="color:#27ae60">SƠ ĐỒ LẮP GH&Eacute;P</span></strong></span></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px">Cửa đi 1 c&aacute;nh</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px"><img alt="" height="600" src="/image/images/TS%2055_SDLG1.jpg" width="422" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px">Cửa đi 2&nbsp;c&aacute;nh</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px"><img alt="" height="600" src="/image/images/TS%2055_SDLG2.jpg" width="486" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px">Cửa đi 1&nbsp;c&aacute;nh liền sập</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#2980b9"><span style="font-size:16px"><img alt="" height="600" src="/image/images/TS%2055_SDLG3.jpg" width="425" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-di-ts-55b', 'Cửa đi TS 55B', '', ''),
(108, 60, 'en', 'english version Cửa đi TS55', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-di-ts55', 'Cửa đi TS55', '', ''),
(109, 61, 'vn', 'Cửa đi TS 55', '', '', '', '<p><span style="font-size:16px">Được tạo th&agrave;nh bởi c&aacute;c thanh Profile, c&ugrave;ng thiết kế khoang trống c&ugrave;ng 2 đường g&acirc;n gia cường nhằm tăng khả năng chịu lực. Đ&acirc;y l&agrave; d&ograve;ng sản phẩm cao cấp với độ tinh xảo cũng như khả năng c&aacute;ch &acirc;m c&aacute;ch nhiệt cao mang đến vẻ sang trọng trường tồn với thời gian.</span></p>\r\n\r\n<p><strong><span style="font-size:20px"><span style="color:#27ae60">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9">Cửa đi 1 c&aacute;nh</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9"><img alt="" height="500" src="/image/images/TS%2055_SDLG1.jpg" width="437" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9">Cửa đi 2&nbsp;c&aacute;nh</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9"><img alt="" height="500" src="/image/images/TS%2055_SDLG2.jpg" width="447" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9">Cửa đi 2&nbsp;c&aacute;nh c&oacute; đố</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:16px"><span style="color:#2980b9"><img alt="" height="500" src="/image/images/TS%2055_SDLG3.jpg" width="440" /></span></span></strong></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-di-ts-55', 'Cửa đi TS 55', '', ''),
(110, 61, 'en', 'english version Cửa đi TS55B', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-di-ts55b', 'Cửa đi TS55B', '', ''),
(111, 62, 'vn', 'Cửa đi TS 4400', '', '', '', '<p><span style="font-size:16px">Cửa được tạo th&agrave;nh bởi hệ profile nh&ocirc;m định h&igrave;nh thiết kế c&aacute;c g&acirc;n gia cường tăng khả năng chịu lực. Bộ phụ kiện cao cấp đồng bộ với hệ profile gi&uacute;p cửa hoạt động nhẹ nh&agrave;ng, độ k&iacute;n kh&iacute;t cao gi&uacute;p tăng khả năng c&aacute;ch &acirc;m c&aacute;ch nhiệt. L&agrave; hệ cửa đi mở quay đ&aacute;p ứng tối đa y&ecirc;u cầu về kh&ocirc;ng gian th&ocirc;ng tho&aacute;ng v&agrave; lấy được &aacute;nh s&aacute;ng tối đa</span></p>\r\n\r\n<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong>Cửa đi 1 c&aacute;nh</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong><img alt="" height="500" src="/image/images/TS%204400_SDLG1.jpg" width="433" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong>Cửa đi 2&nbsp;c&aacute;nh</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong><img alt="" height="550" src="/image/images/TS%204400_SDLG2.jpg" width="412" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong>Cửa đi liền v&aacute;ch</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong><img alt="" height="600" src="/image/images/TS%204400_SDLG3.jpg" width="334" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-di-ts-4400', 'Cửa đi TS 4400', '', ''),
(112, 62, 'en', 'english version Cửa đi TS 4400', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-di-ts-4400', 'Cửa đi TS 4400', '', ''),
(113, 63, 'vn', 'Cửa đi TS 450', '', '', '', '<p><span style="font-size:16px">Được tạo n&ecirc;n bởi hệ nh&ocirc;m Việt Ph&aacute;p 450 n&ecirc;n cửa n&agrave;y c&oacute; đầy đủ những ưu điểm của hệ cửa Việt Ph&aacute;p chịu lực, chịu va chạm tốt. Cửa sử dụng chốt đa điểm, bản lề 3D gioăng k&eacute;p, hộp&nbsp;k&iacute;nh v&agrave; ngưỡng nh&ocirc;m l&ecirc;n đạt độ k&iacute;n kh&iacute;t cao, tăng khả năng c&aacute;ch &acirc;m, c&aacute;ch nhiệt. Sản phẩm&nbsp;được thiết kế linh hoạt c&oacute; thể mở quay v&agrave;o hoặc quay ra, mở 2 c&aacute;nh hoặc 4 c&aacute;nh t&ugrave;y theo&nbsp;kh&ocirc;ng gian c&ocirc;ng &nbsp;tr&igrave;nh.</span></p>\r\n\r\n<p><strong><span style="color:#27ae60"><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong>Cửa đi 1&nbsp;c&aacute;nh</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong><img alt="" height="600" src="/image/images/TS%20450_SDLG1.jpg" width="439" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong>Cửa đi 2&nbsp;c&aacute;nh</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#2980b9"><span style="font-size:16px"><strong><img alt="" height="500" src="/image/images/TS%20450_SDLG2.jpg" width="453" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-di-ts-450', 'Cửa đi TS 450', '', ''),
(114, 63, 'en', 'english version Cửa đi TS 450', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-di-ts-450', 'Cửa đi TS 450', '', ''),
(115, 64, 'vn', 'Cửa lùa TS 44', '', '', '', '<p><strong><span style="color:#27ae60"><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#27ae60"><span style="font-size:20px"><img alt="" height="742" src="/image/images/Cua%20lua%20TS44_SDLG.jpg" width="600" /></span></span></strong></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-lua-ts-44', 'Cửa lùa TS 44', '', ''),
(116, 64, 'en', 'english version Cửa lùa TS 48', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-lua-ts-48', 'Cửa lùa TS 48', '', ''),
(117, 65, 'vn', 'Cửa lùa TS 93', '', '', '', '<p><strong><span style="color:#27ae60"><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><img alt="" height="525" src="/image/images/Cua%20lua%20TS%2093_SDLG.jpg" width="600" /></span></span></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-lua-ts-93', 'Cửa lùa TS 93', '', ''),
(118, 65, 'en', 'english version Cửa lùa TS 93', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-lua-ts-93', 'Cửa lùa TS 93', '', ''),
(119, 66, 'vn', 'Cửa lùa TS 95', '', '', '', '<p><strong><span style="font-size:20px"><span style="color:#27ae60">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="font-size:20px"><span style="color:#27ae60"><img alt="" height="797" src="/image/images/Cua%20lua%20TS%2095_SDLG.jpg" width="600" /></span></span></strong></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-lua-ts-95', 'Cửa lùa TS 95', '', ''),
(120, 66, 'en', 'english version Cửa lùa TS 95', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-lua-ts-95', 'Cửa lùa TS 95', '', ''),
(121, 67, 'vn', 'Cửa lùa TS 48', '', '', '', '<p><strong><span style="color:#27ae60"><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><img alt="" height="600" src="/image/images/Cua%20lua%20TS%2044_SDLG.jpg" width="516" /></span></span></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-lua-ts-48', 'Cửa lùa TS 48', '', ''),
(122, 67, 'en', 'english version Cửa lùa TS 44', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-lua-ts-44', 'Cửa lùa TS 44', '', ''),
(123, 68, 'vn', 'Cửa sổ TS 55B', '', '', '', '<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="700" src="/image/images/SDLG%20CSTS55B(1).jpg" width="500" /></strong></span></span></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-so-ts-55b', 'Cửa sổ TS 55B', '', ''),
(124, 68, 'en', 'english version Cửa sổ TS 55B', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-so-ts-55b', 'Cửa sổ TS 55B', '', ''),
(125, 69, 'vn', 'Cửa sổ TS 4400', '', '', '', '<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="713" src="/image/images/SDLG%20CSTS4400.jpg" width="500" /></strong></span></span></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-so-ts-4400', 'Cửa sổ TS 4400', '', ''),
(126, 69, 'en', 'english version Cửa sổ TS 4400', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-so-ts-4400', 'Cửa sổ TS 4400', '', ''),
(127, 70, 'vn', 'Cửa sổ TS 2600', '<p><span style="font-size:16px">Cửa sổ TS 2600 sử dụng nh&ocirc;m Việt Ph&aacute;p hệ 2600 cực kỳ chắc chắn, vững ch&atilde;i v&agrave; an to&agrave;n. Kh&ocirc;ng bị co ng&oacute;t, cong v&ecirc;nh, sỉn m&agrave;u theo thời gian sử dụng. Hệ nh&ocirc;m n&agrave;y th&iacute;ch hợp với c&aacute;c c&ocirc;ng tr&igrave;nh dạng biệt thự, chung cư, t&ograve;a nh&agrave; bởi vẻ sang trọng, lịch sự m&agrave; n&oacute; đem lại. &nbsp; &nbsp; &nbsp;</span></p>\r\n', '', '', '<p><span style="font-size:16px">Cửa sổ TS 2600 sử dụng nh&ocirc;m Việt Ph&aacute;p hệ 2600 cực kỳ chắc chắn, vững ch&atilde;i v&agrave; an to&agrave;n. Kh&ocirc;ng bị co ng&oacute;t, cong v&ecirc;nh, sỉn m&agrave;u theo thời gian sử dụng. Hệ nh&ocirc;m n&agrave;y th&iacute;ch hợp với c&aacute;c c&ocirc;ng tr&igrave;nh dạng biệt thự, chung cư, t&ograve;a nh&agrave; bởi vẻ sang trọng, lịch sự m&agrave; n&oacute; đem lại.</span></p>\r\n\r\n<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong><span style="color:#2980b9">Cử sổ l&ugrave;a TS 2600</span></strong></span></p>\r\n\r\n<p style="text-align:center"><img alt="" height="558" src="/image/images/SDLG%20CSTS26001.jpg" width="500" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong><span style="color:#2980b9">Cử sổ l&ugrave;a TS 2600</span></strong></span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong><span style="color:#2980b9"><img alt="" height="665" src="/image/images/SDLG%20CSTS26002.jpg" width="500" /></span></strong></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong><span style="color:#2980b9">Cử sổ kết hợp v&aacute;ch&nbsp;TS 2600</span></strong></span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:16px"><strong><span style="color:#2980b9"><img alt="" height="569" src="/image/images/SDLG%20CSTS26003.jpg" width="500" /></span></strong></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-so-ts-2600', 'Cửa sổ TS 2600', '', ''),
(128, 70, 'en', 'english version Cửa sổ TS 2600', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-so-ts-2600', 'Cửa sổ TS 2600', '', ''),
(129, 71, 'vn', 'Cử sổ TS 44', '<p><span style="font-size:16px">Hệ thống cửa sổ TS 44 được tạo n&ecirc;n bởi c&aacute;c đường g&acirc;n gia cường tăng khả năng chịu lực. Sử dụng chốt đa điểm c&ugrave;ng hệ thống gioăng k&eacute;p. Khi đ&oacute;ng cửa hệ thống kết hợp thanh chốt đa điểm sẽ &eacute;p chặt khung c&aacute;nh v&agrave; khung bao tạo độ kh&iacute;t, c&aacute;ch &acirc;m, c&aacute;ch nhiệt hiệu quả</span></p>\r\n', '', '', '<p><span style="font-size:16px">Hệ thống cửa sổ TS 44 được tạo n&ecirc;n bởi c&aacute;c đường g&acirc;n gia cường tăng khả năng chịu lực. Sử dụng chốt đa điểm c&ugrave;ng hệ thống gioăng k&eacute;p. Khi đ&oacute;ng cửa hệ thống kết hợp thanh chốt đa điểm sẽ &eacute;p chặt khung c&aacute;nh v&agrave; khung bao tạo độ kh&iacute;t, c&aacute;ch &acirc;m, c&aacute;ch nhiệt hiệu quả</span></p>\r\n\r\n<p><strong><span style="color:#27ae60"><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></span></strong></p>\r\n\r\n<p style="text-align:center"><strong><span style="color:#27ae60"><span style="font-size:20px"><img alt="" height="581" src="/image/images/SDLG%20CSTS44(1).jpg" width="550" /></span></span></strong></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cu-so-ts-44', 'Cử sổ TS 44', '', ''),
(130, 71, 'en', 'english version Cử sổ TS 44', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cu-so-ts-44', 'Cử sổ TS 44', '', ''),
(131, 72, 'vn', 'Cửa sổ TS 2000', '<p><span style="font-size:16px">Mẫu cửa TS hệ 2000 đ&ograve;i hỏi t&iacute;nh tỉ mỉ v&agrave; mất thời gian sản xuất hơn những thiết kế th&ocirc;ng thường. Thiết kế n&agrave;y ph&ugrave; hợp với cửa nh&agrave; vệ sinh, ph&ograve;ng tắm, cửa đi ban c&ocirc;ng&hellip; những nơi ẩm ướt, cần nhiều kh&ocirc;ng kh&iacute; v&agrave; gi&oacute; tự nhi&ecirc;n gi&uacute;p căn ph&ograve;ng lu&ocirc;n kh&ocirc; r&aacute;o.</span></p>\r\n', '', '', '<p><span style="font-size:16px">Mẫu cửa TS hệ 2000 đ&ograve;i hỏi t&iacute;nh tỉ mỉ v&agrave; mất thời gian sản xuất hơn những thiết kế th&ocirc;ng thường. Thiết kế n&agrave;y ph&ugrave; hợp với cửa nh&agrave; vệ sinh, ph&ograve;ng tắm, cửa đi ban c&ocirc;ng&hellip; những nơi ẩm ướt, cần nhiều kh&ocirc;ng kh&iacute; v&agrave; gi&oacute; tự nhi&ecirc;n gi&uacute;p căn ph&ograve;ng lu&ocirc;n kh&ocirc; r&aacute;o.</span></p>\r\n\r\n<p><span style="color:#27ae60"><strong><span style="font-size:20px">SƠ ĐỒ LẮP GH&Eacute;P</span></strong></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:20px"><img alt="" height="825" src="/image/images/SDLG%20CSTS20001.jpg" width="500" /></span></strong></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:20px"><img alt="" height="769" src="/image/images/SDLG%20CSTS20002.jpg" width="500" /></span></strong></span></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-so-ts-2000', 'Cửa sổ TS 2000', '', ''),
(132, 72, 'en', 'english version Cửa sổ TS 2000', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cua-so-ts-2000', 'Cửa sổ TS 2000', '', ''),
(133, 73, 'vn', 'Vách ngăn TS 4400', '<p><span style="font-size:16px">Hệ v&aacute;ch ngăn TS 4400 được tạo ta từ khung nh&ocirc;m Việt Ph&aacute;p hệ 4400 c&ugrave;ng v&aacute;ch k&iacute;nh chịu lực gi&uacute;p c&aacute;ch &acirc;m v&agrave; ổn định nhiệt độ ph&ograve;ng. Diện t&iacute;ch mặt k&iacute;nh lớn gi&uacute;p lấy &aacute;nh s&aacute;ng tự nhi&ecirc;n. Sử dụng v&aacute;ch ngăn c&ograve;n gi&uacute;p tiết kiệm chi ph&iacute;, thi c&ocirc;ng dễ d&agrave;ng v&agrave; giảm trọng lực cho c&ocirc;ng tr&igrave;nh</span></p>\r\n', '', '', '<p><span style="font-size:16px">Hệ v&aacute;ch ngăn TS 4400 được tạo ta từ khung nh&ocirc;m Việt Ph&aacute;p hệ 4400 c&ugrave;ng v&aacute;ch k&iacute;nh chịu lực gi&uacute;p c&aacute;ch &acirc;m v&agrave; ổn định nhiệt độ ph&ograve;ng. Diện t&iacute;ch mặt k&iacute;nh lớn gi&uacute;p lấy &aacute;nh s&aacute;ng tự nhi&ecirc;n. Sử dụng v&aacute;ch ngăn c&ograve;n gi&uacute;p tiết kiệm chi ph&iacute;, thi c&ocirc;ng dễ d&agrave;ng v&agrave; giảm trọng lực cho c&ocirc;ng tr&igrave;nh</span></p>\r\n\r\n<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="578" src="/image/images/SDLG%20vnTS44001.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="485" src="/image/images/SDLG%20vnTS44002.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="442" src="/image/images/SDLG%20vnTS44003.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'vach-ngan-ts-4400', 'Vách ngăn TS 4400', '', ''),
(134, 73, 'en', 'english version Vách ngăn TS 4400', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-vach-ngan-ts-4400', 'Vách ngăn TS 4400', '', ''),
(135, 74, 'vn', 'Vách ngăn TS 1100', '<p><span style="font-size:16px">V&aacute;ch ngăn TS 1.100 được sử dụng l&agrave;m v&aacute;ch ngăn chia ph&ograve;ng. V&aacute;ch c&oacute; độ k&iacute;n kh&iacute;t gần như tuyệt đối, tất cả c&aacute;c điểm tiếp x&uacute;c giữa c&aacute;c thanh profile đều được gh&eacute;p th&ecirc;m c&aacute;c gioăng đệm bằng cao su đảm bảo kh&ocirc;ng c&oacute; một khe hở n&agrave;o để nước c&oacute; thể x&acirc;m nhập v&agrave;o b&ecirc;n trong. Phụ kiện đồng bộ được sản xuất từ c&aacute;c hợp kim kh&ocirc;ng gỉ, gi&aacute; trị thẩm mỹ, tiện &iacute;ch cao. Nh&ocirc;m Việt Ph&aacute;p được chế tạo tỉ mỉ tới từng chi tiết n&ecirc;n rất an to&agrave;n cho người sử dụng</span></p>\r\n', '', '', '<p><span style="font-size:16px">V&aacute;ch ngăn TS 1.100 được sử dụng l&agrave;m v&aacute;ch ngăn chia ph&ograve;ng. V&aacute;ch c&oacute; độ k&iacute;n kh&iacute;t gần như tuyệt đối, tất cả c&aacute;c điểm tiếp x&uacute;c giữa c&aacute;c thanh profile đều được gh&eacute;p th&ecirc;m c&aacute;c gioăng đệm bằng cao su đảm bảo kh&ocirc;ng c&oacute; một khe hở n&agrave;o để nước c&oacute; thể x&acirc;m nhập v&agrave;o b&ecirc;n trong. Phụ kiện đồng bộ được sản xuất từ c&aacute;c hợp kim kh&ocirc;ng gỉ, gi&aacute; trị thẩm mỹ, tiện &iacute;ch cao. Nh&ocirc;m Việt Ph&aacute;p được chế tạo tỉ mỉ tới từng chi tiết n&ecirc;n rất an to&agrave;n cho người sử dụng</span></p>\r\n\r\n<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="690" src="/image/images/SDLG%20vnTS11001.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="598" src="/image/images/SDLG%20vnTS11002.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'vach-ngan-ts-1100', 'Vách ngăn TS 1100', '', ''),
(136, 74, 'en', 'english version Vách ngăn TS 1100', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-vach-ngan-ts-1100', 'Vách ngăn TS 1100', '', ''),
(137, 75, 'vn', 'Vách ngăn TS MD', '<p><span style="font-size:16px">Hệ v&aacute;ch ngăn TS MD &nbsp;được tạo ra bởi khung nh&ocirc;m định h&igrave;nh với c&aacute;c m&agrave;u sơn tĩnh điện kh&aacute;c nhau, trắng sữa, v&acirc;n gỗ, đen,...K&iacute;nh trong, k&iacute;nh mờ, hoặc d&aacute;n đề can mờ, c&aacute;c loại. V&aacute;ch k&iacute;nh c&oacute; t&aacute;c dụng c&aacute;ch &acirc;m, c&aacute;ch nhiệt, chống ồn &agrave;o bụi bẩn, lắp đặt dễ d&agrave;ng, kh&ocirc;ng chiếm nhiều diện t&iacute;ch trong kh&ocirc;ng gian ph&ograve;ng</span></p>\r\n', '', '', '<p><span style="font-size:16px">Hệ v&aacute;ch ngăn TS MD &nbsp;được tạo ra bởi khung nh&ocirc;m định h&igrave;nh với c&aacute;c m&agrave;u sơn tĩnh điện kh&aacute;c nhau, trắng sữa, v&acirc;n gỗ, đen,...K&iacute;nh trong, k&iacute;nh mờ, hoặc d&aacute;n đề can mờ, c&aacute;c loại. V&aacute;ch k&iacute;nh c&oacute; t&aacute;c dụng c&aacute;ch &acirc;m, c&aacute;ch nhiệt, chống ồn &agrave;o bụi bẩn, lắp đặt dễ d&agrave;ng, kh&ocirc;ng chiếm nhiều diện t&iacute;ch trong kh&ocirc;ng gian ph&ograve;ng</span></p>\r\n\r\n<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="526" src="/image/images/SDLG%20vnTSMD.jpg" width="500" /></strong></span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'vach-ngan-ts-md', 'Vách ngăn TS MD', '', ''),
(138, 75, 'en', 'english version Vách ngăn TS MD', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-vach-ngan-ts-md', 'Vách ngăn TS MD', '', ''),
(139, 76, 'vn', 'Lam chớp', '', '', '', '<p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="649" src="/image/images/lc_sdlg.jpg" width="300" /></strong></span></span></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'lam-chop', 'Lam chớp', '', ''),
(140, 76, 'en', 'english version Lam chớp', 'english version ', '', '', 'english version <p><span style="color:#27ae60"><span style="font-size:20px"><strong>SƠ ĐỒ LẮP GH&Eacute;P</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:20px"><strong><img alt="" height="649" src="/image/images/lc_sdlg.jpg" width="300" /></strong></span></span></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-lam-chop', 'Lam chớp', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `product_producer`
--

CREATE TABLE IF NOT EXISTS `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product_producer_languages`
--

CREATE TABLE IF NOT EXISTS `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Structure de la table `pro_color`
--

CREATE TABLE IF NOT EXISTS `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `regInfor`
--

CREATE TABLE IF NOT EXISTS `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Structure de la table `regMember`
--

CREATE TABLE IF NOT EXISTS `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Structure de la table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(1, 'TUYỂN DỤNG THÁNG 10', 'Công ty TNHH Sản xuất Thương Mại Dịch vụ Thái Sơn cần tuyển 4 thợ nhôm kính', '<p>C&Ocirc;NG TY TNHH SẢN XUẤT THƯƠNG MẠI DỊCH VỤ TH&Aacute;I SƠN CẦN TUYỂN:<br />\r\n04 THỢ NH&Ocirc;M K&Iacute;NH.<br />\r\n1.C&ocirc;ng việc ch&iacute;nh<br />\r\nĐo đạc k&iacute;ch thước cửa tại c&ocirc;ng tr&igrave;nh.<br />\r\nĐứng máy cắt nh&ocirc;m và lắp đặt cửa nh&ocirc;m kính.<br />\r\nGia c&ocirc;ng, lắp đặt cửa nh&ocirc;m k&iacute;nh.<br />\r\n2.Quyền lợi được hưởng:<br />\r\nL&agrave;m việc v&agrave; ở tại c&ocirc;ng ty.<br />\r\nNgo&agrave;i mức lương căn bản, c&oacute; thưởng theo c&aacute;c dịp lễ, Tết, c&ocirc;ng trình<br />\r\nSau 2 tháng được ký hợp đ&ocirc;̀ng và có bảo hi&ecirc;̉m lao đ&ocirc;̣ng<br />\r\n3.Thời gian l&agrave;m việc: To&agrave;n thời gian cố định và tăng ca.<br />\r\n4.Mức lương: 6.000.000 đ&ecirc;́n 10.000.000. + Thưởng theo c&ocirc;ng trình.<br />\r\n5.Y&ecirc;u cầu c&ocirc;ng việc:<br />\r\n- Kinh nghiệm l&agrave;m việc trong nghề từ 2 năm trở l&ecirc;n.<br />\r\n- Biết tự lập lắp đặt cửa nh&ocirc;m, cửa k&iacute;nh.<br />\r\n- Nhiệt t&igrave;nh, th&acirc;̣t thà, chịu trách nhi&ecirc;̣m với c&ocirc;ng vi&ecirc;̣c.<br />\r\n6.Y&ecirc;u cầu kh&aacute;c:<br />\r\n-Tuổi: Từ 20 tới 35 tuổi.<br />\r\n-Nhanh nhẹn, hoạt b&aacute;t, biết sắp xếp c&ocirc;ng việc ph&ugrave; hợp.<br />\r\n7.Hồ sơ xin việc:<br />\r\n-Đơn xin việc.<br />\r\n-Sơ yếu l&iacute; lịch.<br />\r\n-Chứng minh nh&acirc;n d&acirc;n.</p>\r\n', '185_xuanvu_banner_tuyendung.jpg', '0', 5, '', '2018-10-01', '2018-10-04', 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG THÁNG 10', '', 'tuyen-dung-thang-10', '', 1),
(3, 'Khu đô thị Đặng Xá', 'Được đầu tư bởi Viglacera với diện tích 69,6 ha. Khu đô thị Đặng Xá nằm trên đường Nguyễn Đức Thuận và quốc lộ 1B nên giao thông từ dự án đến các khu vực lân cận cực kỳ thuận lợi.', '<p><strong><span style="font-size:16px">Được đầu tư bởi Viglacera với diện t&iacute;ch 69,6 ha. Khu đ&ocirc; thị Đặng X&aacute; nằm tr&ecirc;n&nbsp;đường Nguyễn Đức Thuận v&agrave; quốc lộ 1B n&ecirc;n giao th&ocirc;ng từ dự &aacute;n đến c&aacute;c khu&nbsp;vực l&acirc;n cận cực kỳ thuận lợi.</span></strong></p>\r\n', 'Dang Xa.png', '0', 4, '', '2018-10-01', '2018-10-01', 1, NULL, NULL, NULL, NULL, NULL, 'Khu đô thị Đặng Xá', '', 'khu-do-thi-dang-xa', '', 1),
(4, 'Đại học xây dựng Hà Nội', 'Trường Đại học Xây dựng là một trong những trường đại học công lập đứng đầu về đào tạo nhóm ngành xây dựng tại miền Bắc Việt Nam. Nằm trong kế hoạch cải tạo cũng như mở rộng trường, đầu năm 2018 Trường đại học xây dựng đã chọn và sự dụng cửa, vách nhôm của thương hiệu TS Window. ', '<p><span style="font-size:16px"><strong>Trường Đại học X&acirc;y dựng l&agrave; một trong những trường đại học c&ocirc;ng lập đứng đầu về đ&agrave;o tạo nh&oacute;m ng&agrave;nh x&acirc;y dựng tại miền Bắc Việt Nam. Nằm trong kế hoạch cải tạo&nbsp;cũng như mở rộng trường, đầu năm 2018 Trường đại học x&acirc;y dựng đ&atilde; chọn v&agrave; sự&nbsp;dụng cửa, v&aacute;ch nh&ocirc;m của thương hiệu TS Window.&nbsp;</strong></span></p>\r\n', 'DHXD.png', '0', 4, '', '2018-10-01', '2018-10-01', 1, NULL, NULL, NULL, NULL, NULL, 'Đại học xây dựng Hà Nội', '', 'dai-hoc-xay-dung-ha-noi', '', 1),
(5, 'Thăng Long Victory', 'Tọa lạc tại lô HH1 khu đô thị Nam An Khánh.Dự án Thăng Long Victory được đầutư bởi Công ty đầu tư kinh doanh và phát triển hạ tầng KCN Phúc Hà. Dự án gồm 5 tòanhà cao tầng với chức năng hỗn hợp nhà ở và thương mại dịch vụ. ', '<p><span style="font-size:16px"><strong>Tọa lạc tại l&ocirc; HH1 khu đ&ocirc; thị Nam An Kh&aacute;nh.Dự &aacute;n Thăng Long Victory được đầutư bởi C&ocirc;ng ty đầu tư kinh doanh v&agrave; ph&aacute;t triển hạ tầng KCN Ph&uacute;c H&agrave;. Dự &aacute;n gồm&nbsp;5 t&ograve;anh&agrave; cao tầng với chức năng hỗn hợp nh&agrave; ở v&agrave; thương mại dịch vụ.</strong></span></p>\r\n', 'Thang-Long.png', '0', 4, '', '2018-10-01', '2018-10-01', 1, NULL, NULL, NULL, NULL, NULL, 'Thăng Long Victory', '', 'thang-long-victory', '', 1),
(6, 'Thống Nhất Complex', 'Chủ đầu tư: Cty TNHH Thống Nhất - Bắc Việt\r\nChung cư Thống Nhất Complex – 82 Nguyễn Tuân sở hữu vị trí đắc địa nằm trên trục đường Nguyễn Tuân – điểm kết nối của các con đường lớn khu vực quận Thanh Xuân – dự án sở hữu hệ thống giaothông đồng bộ xuyên suốt, tạo nên sự tiện lợi của riêng dân cư nơi đây.', '<p><span style="font-size:16px"><strong>Chủ đầu tư: Cty TNHH Thống Nhất - Bắc Việt<br />\r\nChung cư Thống Nhất Complex &ndash; 82 Nguyễn Tu&acirc;n sở hữu vị tr&iacute; đắc địa nằm tr&ecirc;n trục đường Nguyễn Tu&acirc;n &ndash; điểm kết nối của c&aacute;c con đường lớn khu vực quận Thanh Xu&acirc;n &ndash; dự &aacute;n sở hữu hệ thống giaoth&ocirc;ng đồng bộ xuy&ecirc;n suốt, tạo n&ecirc;n sự tiện lợi của ri&ecirc;ng d&acirc;n cư nơi đ&acirc;y.</strong></span></p>\r\n', 'Thongnhat.jpg', '0', 4, '', '2018-10-01', '2018-10-01', 1, NULL, NULL, NULL, NULL, NULL, 'Thống Nhất Complex', '', 'thong-nhat-complex', '', 1),
(7, 'Biệt thự liên kề Mỗ Lao', 'Đượcthiết kế nằm gọn trong KĐT Mỗ Lao, dự án có vị trí vô cùng đắc địa với hệ thống hạ tầng đô thị đồng bộ và rất nhiều tiện ích. Dự án bao gồm 2 dãy liền kề với mật độ xây dựng rất thấp so với các khu liền kề khác, hứa hẹn sẽ mang lại một môi trường sống vô cùng thoáng đãng, trong lành và thân thiện.', '<p><span style="font-size:16px"><strong>Đượcthiết kế nằm gọn trong KĐT Mỗ Lao, dự &aacute;n c&oacute; vị tr&iacute; v&ocirc; c&ugrave;ng đắc địa với hệ thống hạ tầng đ&ocirc; thị đồng bộ v&agrave; rất nhiều tiện &iacute;ch. Dự &aacute;n bao gồm 2 d&atilde;y liền kề với mật độ x&acirc;y dựng rất thấp so với c&aacute;c&nbsp;khu liền kề kh&aacute;c, hứa hẹn sẽ mang lại một m&ocirc;i trường sống v&ocirc; c&ugrave;ng tho&aacute;ng đ&atilde;ng, trong l&agrave;nh v&agrave; th&acirc;n thiện.</strong></span></p>\r\n', 'Mo-Lao.png', '0', 4, '', '2018-10-01', '2018-10-01', 1, NULL, NULL, NULL, NULL, NULL, 'Biệt thự liên kề Mỗ Lao', '', 'biet-thu-lien-ke-mo-lao', '', 1),
(8, 'Virgo Nha Trang', 'Không chỉ tọa lạc tại trung tâm khu phố tây với mặt tiền chính trên trục đường du lịch giải trí sôi động. Virgo Nha Trang với những tiện ích hàng đầu như: spa, bể bơi, nhà hàng, quầy bar... hứa hẹn là nơi nghĩ dưỡng tuyệt vời trong chuyến du lịch của bạn.  ', '<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:16px"><strong>Kh&ocirc;ng chỉ tọa lạc tại trung t&acirc;m khu phố t&acirc;y với mặt tiền ch&iacute;nh tr&ecirc;n trục đường du lịch giải tr&iacute; s&ocirc;i động. Virgo Nha Trang với những tiện &iacute;ch h&agrave;ng đầu như: spa, bể bơi, nh&agrave; h&agrave;ng, quầy bar... hứa hẹn l&agrave; nơi nghĩ dưỡng tuyệt vời trong chuyến du lịch của bạn. &nbsp;</strong></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Virgo-Nha-Trang.png', '0', 4, '', '2018-10-01', '2018-10-01', 1, NULL, NULL, NULL, NULL, NULL, 'Virgo Nha Trang', '', 'virgo-nha-trang', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `servicecat`
--

CREATE TABLE IF NOT EXISTS `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(4, 'Công trình', '', '', 0, 0, '2018-10-01', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Công trình', '', 'cong-trinh', '', 1),
(5, 'Tuyển dụng', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `servicecat_languages`
--

CREATE TABLE IF NOT EXISTS `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(7, 'Công trình', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Công trình', '', 'cong-trinh', '', NULL, 'vn', 4),
(8, 'Smart Reading Skills', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', NULL, 'en', 4),
(9, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'vn', 5),
(10, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'en', 5);

-- --------------------------------------------------------

--
-- Structure de la table `service_languages`
--

CREATE TABLE IF NOT EXISTS `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(1, 'vn', 'TUYỂN DỤNG THÁNG 10', 'Công ty TNHH Sản xuất Thương Mại Dịch vụ Thái Sơn cần tuyển 4 thợ nhôm kính', '<p>C&Ocirc;NG TY TNHH SẢN XUẤT THƯƠNG MẠI DỊCH VỤ TH&Aacute;I SƠN CẦN TUYỂN:<br />\r\n04 THỢ NH&Ocirc;M K&Iacute;NH.<br />\r\n1.C&ocirc;ng việc ch&iacute;nh<br />\r\nĐo đạc k&iacute;ch thước cửa tại c&ocirc;ng tr&igrave;nh.<br />\r\nĐứng máy cắt nh&ocirc;m và lắp đặt cửa nh&ocirc;m kính.<br />\r\nGia c&ocirc;ng, lắp đặt cửa nh&ocirc;m k&iacute;nh.<br />\r\n2.Quyền lợi được hưởng:<br />\r\nL&agrave;m việc v&agrave; ở tại c&ocirc;ng ty.<br />\r\nNgo&agrave;i mức lương căn bản, c&oacute; thưởng theo c&aacute;c dịp lễ, Tết, c&ocirc;ng trình<br />\r\nSau 2 tháng được ký hợp đ&ocirc;̀ng và có bảo hi&ecirc;̉m lao đ&ocirc;̣ng<br />\r\n3.Thời gian l&agrave;m việc: To&agrave;n thời gian cố định và tăng ca.<br />\r\n4.Mức lương: 6.000.000 đ&ecirc;́n 10.000.000. + Thưởng theo c&ocirc;ng trình.<br />\r\n5.Y&ecirc;u cầu c&ocirc;ng việc:<br />\r\n- Kinh nghiệm l&agrave;m việc trong nghề từ 2 năm trở l&ecirc;n.<br />\r\n- Biết tự lập lắp đặt cửa nh&ocirc;m, cửa k&iacute;nh.<br />\r\n- Nhiệt t&igrave;nh, th&acirc;̣t thà, chịu trách nhi&ecirc;̣m với c&ocirc;ng vi&ecirc;̣c.<br />\r\n6.Y&ecirc;u cầu kh&aacute;c:<br />\r\n-Tuổi: Từ 20 tới 35 tuổi.<br />\r\n-Nhanh nhẹn, hoạt b&aacute;t, biết sắp xếp c&ocirc;ng việc ph&ugrave; hợp.<br />\r\n7.Hồ sơ xin việc:<br />\r\n-Đơn xin việc.<br />\r\n-Sơ yếu l&iacute; lịch.<br />\r\n-Chứng minh nh&acirc;n d&acirc;n.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG THÁNG 10', '', 'tuyen-dung-thang-10', '', NULL, 1),
(2, 'en', 'english version Tuyển dụng 01', 'english version Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 'english version <p>t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng 01', '', 'en-tuyen-dung-01', '', NULL, 1),
(5, 'vn', 'Khu đô thị Đặng Xá', 'Được đầu tư bởi Viglacera với diện tích 69,6 ha. Khu đô thị Đặng Xá nằm trên đường Nguyễn Đức Thuận và quốc lộ 1B nên giao thông từ dự án đến các khu vực lân cận cực kỳ thuận lợi.', '<p><strong><span style="font-size:16px">Được đầu tư bởi Viglacera với diện t&iacute;ch 69,6 ha. Khu đ&ocirc; thị Đặng X&aacute; nằm tr&ecirc;n&nbsp;đường Nguyễn Đức Thuận v&agrave; quốc lộ 1B n&ecirc;n giao th&ocirc;ng từ dự &aacute;n đến c&aacute;c khu&nbsp;vực l&acirc;n cận cực kỳ thuận lợi.</span></strong></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Khu đô thị Đặng Xá', '', 'khu-do-thi-dang-xa', '', NULL, 3),
(6, 'en', 'english version Công trình 01', 'english version Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 'english version <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Công trình 01', '', 'en-cong-trinh-01', '', NULL, 3),
(7, 'vn', 'Đại học xây dựng Hà Nội', 'Trường Đại học Xây dựng là một trong những trường đại học công lập đứng đầu về đào tạo nhóm ngành xây dựng tại miền Bắc Việt Nam. Nằm trong kế hoạch cải tạo cũng như mở rộng trường, đầu năm 2018 Trường đại học xây dựng đã chọn và sự dụng cửa, vách nhôm của thương hiệu TS Window. ', '<p><span style="font-size:16px"><strong>Trường Đại học X&acirc;y dựng l&agrave; một trong những trường đại học c&ocirc;ng lập đứng đầu về đ&agrave;o tạo nh&oacute;m ng&agrave;nh x&acirc;y dựng tại miền Bắc Việt Nam. Nằm trong kế hoạch cải tạo&nbsp;cũng như mở rộng trường, đầu năm 2018 Trường đại học x&acirc;y dựng đ&atilde; chọn v&agrave; sự&nbsp;dụng cửa, v&aacute;ch nh&ocirc;m của thương hiệu TS Window.&nbsp;</strong></span></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Đại học xây dựng Hà Nội', '', 'dai-hoc-xay-dung-ha-noi', '', NULL, 4),
(8, 'en', 'english version Công trình 02', 'english version Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 'english version <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Công trình 02', '', 'en-cong-trinh-02', '', NULL, 4),
(9, 'vn', 'Thăng Long Victory', 'Tọa lạc tại lô HH1 khu đô thị Nam An Khánh.Dự án Thăng Long Victory được đầutư bởi Công ty đầu tư kinh doanh và phát triển hạ tầng KCN Phúc Hà. Dự án gồm 5 tòanhà cao tầng với chức năng hỗn hợp nhà ở và thương mại dịch vụ. ', '<p><span style="font-size:16px"><strong>Tọa lạc tại l&ocirc; HH1 khu đ&ocirc; thị Nam An Kh&aacute;nh.Dự &aacute;n Thăng Long Victory được đầutư bởi C&ocirc;ng ty đầu tư kinh doanh v&agrave; ph&aacute;t triển hạ tầng KCN Ph&uacute;c H&agrave;. Dự &aacute;n gồm&nbsp;5 t&ograve;anh&agrave; cao tầng với chức năng hỗn hợp nh&agrave; ở v&agrave; thương mại dịch vụ.</strong></span></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thăng Long Victory', '', 'thang-long-victory', '', NULL, 5),
(10, 'en', 'english version Thăng Long Victory', 'english version ', 'english version <p>&lt;p&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;Tọa lạc tại l&amp;ocirc; HH1 khu đ&amp;ocirc; thị Nam An Kh&amp;aacute;nh.Dự &amp;aacute;n Thăng Long Victory được đầutư bởi C&amp;ocirc;ng ty đầu tư kinh doanh v&amp;agrave; ph&amp;aacute;t triển hạ tầng KCN Ph&amp;uacute;c H&amp;agrave;. Dự &amp;aacute;n gồm&amp;nbsp;5 t&amp;ograve;anh&amp;agrave; cao tầng với chức năng hỗn hợp nh&amp;agrave; ở v&amp;agrave; thương mại dịch vụ.&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;<br />\r\n&nbsp;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thăng Long Victory', '', 'en-thang-long-victory', '', NULL, 5),
(11, 'vn', 'Thống Nhất Complex', 'Chủ đầu tư: Cty TNHH Thống Nhất - Bắc Việt\r\nChung cư Thống Nhất Complex – 82 Nguyễn Tuân sở hữu vị trí đắc địa nằm trên trục đường Nguyễn Tuân – điểm kết nối của các con đường lớn khu vực quận Thanh Xuân – dự án sở hữu hệ thống giaothông đồng bộ xuyên suốt, tạo nên sự tiện lợi của riêng dân cư nơi đây.', '<p><span style="font-size:16px"><strong>Chủ đầu tư: Cty TNHH Thống Nhất - Bắc Việt<br />\r\nChung cư Thống Nhất Complex &ndash; 82 Nguyễn Tu&acirc;n sở hữu vị tr&iacute; đắc địa nằm tr&ecirc;n trục đường Nguyễn Tu&acirc;n &ndash; điểm kết nối của c&aacute;c con đường lớn khu vực quận Thanh Xu&acirc;n &ndash; dự &aacute;n sở hữu hệ thống giaoth&ocirc;ng đồng bộ xuy&ecirc;n suốt, tạo n&ecirc;n sự tiện lợi của ri&ecirc;ng d&acirc;n cư nơi đ&acirc;y.</strong></span></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thống Nhất Complex', '', 'thong-nhat-complex', '', NULL, 6),
(12, 'en', 'english version Thống Nhất Complex', 'english version ', 'english version <p>Chung cư Thống Nhất Complex &amp;ndash; 82 Nguyễn Tu&amp;acirc;n sở hữu vị tr&amp;iacute; đắc địa nằm tr&amp;ecirc;n trục đường Nguyễn Tu&amp;acirc;n &amp;ndash; điểm kết nối của c&amp;aacute;c con đường lớn khu vực quận Thanh Xu&amp;acirc;n &amp;ndash; dự &amp;aacute;n sở hữu hệ thống giaoth&amp;ocirc;ng đồng bộ xuy&amp;ecirc;n suốt, tạo n&amp;ecirc;n sự tiện lợi của ri&amp;ecirc;ng d&amp;acirc;n cư nơi đ&amp;acirc;y.&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;<br />\r\n&nbsp;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thống Nhất Complex', '', 'en-thong-nhat-complex', '', NULL, 6),
(13, 'vn', 'Biệt thự liên kề Mỗ Lao', 'Đượcthiết kế nằm gọn trong KĐT Mỗ Lao, dự án có vị trí vô cùng đắc địa với hệ thống hạ tầng đô thị đồng bộ và rất nhiều tiện ích. Dự án bao gồm 2 dãy liền kề với mật độ xây dựng rất thấp so với các khu liền kề khác, hứa hẹn sẽ mang lại một môi trường sống vô cùng thoáng đãng, trong lành và thân thiện.', '<p><span style="font-size:16px"><strong>Đượcthiết kế nằm gọn trong KĐT Mỗ Lao, dự &aacute;n c&oacute; vị tr&iacute; v&ocirc; c&ugrave;ng đắc địa với hệ thống hạ tầng đ&ocirc; thị đồng bộ v&agrave; rất nhiều tiện &iacute;ch. Dự &aacute;n bao gồm 2 d&atilde;y liền kề với mật độ x&acirc;y dựng rất thấp so với c&aacute;c&nbsp;khu liền kề kh&aacute;c, hứa hẹn sẽ mang lại một m&ocirc;i trường sống v&ocirc; c&ugrave;ng tho&aacute;ng đ&atilde;ng, trong l&agrave;nh v&agrave; th&acirc;n thiện.</strong></span></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Biệt thự liên kề Mỗ Lao', '', 'biet-thu-lien-ke-mo-lao', '', NULL, 7),
(14, 'en', 'english version Biệt thự liên kề Mỗ Lao1', 'english version ', 'english version <p>&lt;p&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;Đượcthiết kế nằm gọn trong KĐT Mỗ Lao, dự &amp;aacute;n c&amp;oacute; vị tr&amp;iacute; v&amp;ocirc; c&amp;ugrave;ng đắc địa với hệ thống hạ tầng đ&amp;ocirc; thị đồng bộ v&amp;agrave; rất nhiều tiện &amp;iacute;ch. Dự &amp;aacute;n bao gồm 2 d&amp;atilde;y liền kề với mật độ x&amp;acirc;y dựng rất thấp so với c&amp;aacute;c&amp;nbsp;khu liền kề kh&amp;aacute;c, hứa hẹn sẽ mang lại một m&amp;ocirc;i trường sống v&amp;ocirc; c&amp;ugrave;ng tho&amp;aacute;ng đ&amp;atilde;ng, trong l&amp;agrave;nh v&amp;agrave; th&amp;acirc;n thiện.&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Biệt thự liên kề Mỗ Lao1', '', 'en-biet-thu-lien-ke-mo-lao1', '', NULL, 7),
(15, 'vn', 'Virgo Nha Trang', 'Không chỉ tọa lạc tại trung tâm khu phố tây với mặt tiền chính trên trục đường du lịch giải trí sôi động. Virgo Nha Trang với những tiện ích hàng đầu như: spa, bể bơi, nhà hàng, quầy bar... hứa hẹn là nơi nghĩ dưỡng tuyệt vời trong chuyến du lịch của bạn.  ', '<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:16px"><strong>Kh&ocirc;ng chỉ tọa lạc tại trung t&acirc;m khu phố t&acirc;y với mặt tiền ch&iacute;nh tr&ecirc;n trục đường du lịch giải tr&iacute; s&ocirc;i động. Virgo Nha Trang với những tiện &iacute;ch h&agrave;ng đầu như: spa, bể bơi, nh&agrave; h&agrave;ng, quầy bar... hứa hẹn l&agrave; nơi nghĩ dưỡng tuyệt vời trong chuyến du lịch của bạn. &nbsp;</strong></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Virgo Nha Trang', '', 'virgo-nha-trang', '', NULL, 8),
(16, 'en', 'english version Virgo Nha Trang1', 'english version ', 'english version <p>&lt;p&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;Kh&amp;ocirc;ng chỉ tọa lạc tại trung t&amp;acirc;m khu phố t&amp;acirc;y với mặt tiền ch&amp;iacute;nh tr&amp;ecirc;n trục đường du lịch giải tr&amp;iacute; s&amp;ocirc;i động. Virgo Nha Trang với những tiện &amp;iacute;ch h&amp;agrave;ng đầu như: spa, bể bơi, nh&amp;agrave; h&amp;agrave;ng, quầy bar... hứa hẹn l&amp;agrave; nơi nghĩ dưỡng tuyệt vời trong chuyến du lịch của bạn. &amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;<br />\r\n&nbsp;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Virgo Nha Trang1', '', 'en-virgo-nha-trang1', '', NULL, 8);

-- --------------------------------------------------------

--
-- Structure de la table `size`
--

CREATE TABLE IF NOT EXISTS `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `technical_bulletin_file`
--

CREATE TABLE IF NOT EXISTS `technical_bulletin_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `technical_bulletin_file`
--

INSERT INTO `technical_bulletin_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `trademark`
--

CREATE TABLE IF NOT EXISTS `trademark` (
  `id` int(11) NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `trademark`
--

INSERT INTO `trademark` (`id`, `name`, `image`, `note`) VALUES
(102, 'grando.vn', 'Grando.jpg', ''),
(108, 'Virgo Nha Trang', 'Virgo NhaTrang.png', ''),
(109, 'Thong Nhat Complex', 'logo-thong-nhat-complex.jpg', ''),
(110, 'Dong phat', 'logodongphat.png', ''),
(111, 'Phuc Ha', 'phuc-ha.jpg', ''),
(112, 'Vinaenco', 'Vinaenco.jpg', ''),
(113, 'Geleximco', 'logo-geleximco.png', '');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`) VALUES
(1, 'mystery078', 'tung92.ns@gmail.com', '01658824321', '', '$2y$10$zjlyFYq6vJ6TXeQVsOh/1esNuHFTf23SE62fvXVvyUAYvzxyCNzv6', '2017-03-12 02:03:39', 1),
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_online`
--

CREATE TABLE IF NOT EXISTS `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Index pour la table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Index pour la table `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cad_file`
--
ALTER TABLE `cad_file`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `calculators_file`
--
ALTER TABLE `calculators_file`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Index pour la table `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Index pour la table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Index pour la table `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Index pour la table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Index pour la table `datasheets_file`
--
ALTER TABLE `datasheets_file`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `declaration_file`
--
ALTER TABLE `declaration_file`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `installation_file`
--
ALTER TABLE `installation_file`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Index pour la table `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Index pour la table `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Index pour la table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Index pour la table `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Index pour la table `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Index pour la table `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Index pour la table `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Index pour la table `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `operating_file`
--
ALTER TABLE `operating_file`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Index pour la table `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Index pour la table `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Index pour la table `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Index pour la table `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Index pour la table `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Index pour la table `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Index pour la table `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Index pour la table `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Index pour la table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Index pour la table `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Index pour la table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Index pour la table `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Index pour la table `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Index pour la table `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Index pour la table `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Index pour la table `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Index pour la table `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Index pour la table `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Index pour la table `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Index pour la table `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Index pour la table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Index pour la table `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Index pour la table `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Index pour la table `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Index pour la table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trademark`
--
ALTER TABLE `trademark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Index pour la table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT pour la table `cad_file`
--
ALTER TABLE `cad_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `calculators_file`
--
ALTER TABLE `calculators_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `datasheets_file`
--
ALTER TABLE `datasheets_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `declaration_file`
--
ALTER TABLE `declaration_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT pour la table `installation_file`
--
ALTER TABLE `installation_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT pour la table `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=369;
--
-- AUTO_INCREMENT pour la table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT pour la table `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT pour la table `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT pour la table `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT pour la table `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `operating_file`
--
ALTER TABLE `operating_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT pour la table `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT pour la table `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=267;
--
-- AUTO_INCREMENT pour la table `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT pour la table `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `trademark`
--
ALTER TABLE `trademark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Contraintes pour la table `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
