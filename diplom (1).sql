-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2015 at 01:00 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `diplom`
--

-- --------------------------------------------------------

--
-- Table structure for table `fayllar`
--

CREATE TABLE IF NOT EXISTS `fayllar` (
`id` int(11) NOT NULL,
  `fenn_id` int(11) NOT NULL,
  `tip` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `yaradan` varchar(255) NOT NULL,
  `yaradan_tip` int(11) NOT NULL,
  `yaradilma_tarix` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fayllar`
--

INSERT INTO `fayllar` (`id`, `fenn_id`, `tip`, `link`, `yaradan`, `yaradan_tip`, `yaradilma_tarix`) VALUES
(1, 1, 1, 'files/slayd.pptx', '1', 1, '2015-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `fayl_tipler`
--

CREATE TABLE IF NOT EXISTS `fayl_tipler` (
`id` int(11) NOT NULL,
  `tipi` varchar(255) NOT NULL,
  `param` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `fayl_tipler`
--

INSERT INTO `fayl_tipler` (`id`, `tipi`, `param`) VALUES
(1, 'Slayd', ''),
(2, 'Digər(zip)', ''),
(3, 'Link', '');

-- --------------------------------------------------------

--
-- Table structure for table `fenler`
--

CREATE TABLE IF NOT EXISTS `fenler` (
`id` int(11) NOT NULL,
  `id_qrup` int(11) NOT NULL,
  `id_muellim` int(11) NOT NULL,
  `ixtisas` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `ad` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `saat` int(11) NOT NULL,
  `lab_saat` int(11) NOT NULL,
  `muh_saat` int(11) NOT NULL,
  `mes_saat` int(11) NOT NULL,
  `kurs_isi` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fenler`
--

INSERT INTO `fenler` (`id`, `id_qrup`, `id_muellim`, `ixtisas`, `ad`, `saat`, `lab_saat`, `muh_saat`, `mes_saat`, `kurs_isi`) VALUES
(1, 1, 1, 'İnformasiya Texnologiyaları və Sistemləri mühəndisliyi', 'Süni İntellekt(1441a)', 90, 30, 50, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mesajlar`
--

CREATE TABLE IF NOT EXISTS `mesajlar` (
`id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `id_gond` int(11) NOT NULL,
  `id_qeb` int(11) NOT NULL,
  `tip_gond` varchar(5) NOT NULL,
  `tip_qeb` varchar(5) NOT NULL,
  `tarix` date NOT NULL,
  `mesaj` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mesajlar`
--

INSERT INTO `mesajlar` (`id`, `status`, `id_gond`, `id_qeb`, `tip_gond`, `tip_qeb`, `tarix`, `mesaj`) VALUES
(1, 0, 1, 1, '0', '1', '2014-11-12', 'Test mesaj'),
(2, 0, 1, 1, '0', '1', '2014-11-11', 'Salam, müəllim diplom işini yolladım');

-- --------------------------------------------------------

--
-- Table structure for table `muellim`
--

CREATE TABLE IF NOT EXISTS `muellim` (
`id` int(11) NOT NULL,
  `ad` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `soyad` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `ata_adi` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `elmi_der` varchar(15) NOT NULL,
  `elmi_ad` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `fakulte` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `kafedra` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `parol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `onlayn` int(255) NOT NULL,
  `son_giris` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `muellim`
--

INSERT INTO `muellim` (`id`, `ad`, `soyad`, `ata_adi`, `elmi_der`, `elmi_ad`, `fakulte`, `kafedra`, `parol`, `email`, `onlayn`, `son_giris`) VALUES
(1, 'İsmayıl', 'İsmayılov', 'İsmayıl', 'professor', 'dosent', 'Aerokosmik', 'Aerokosimik İnformasiya Texnologiyaları', 'c8837b23ff8aaa8a2dde915473ce0991', 'i.ismayil@naa.edu.az', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `netice`
--

CREATE TABLE IF NOT EXISTS `netice` (
`id` int(11) NOT NULL,
  `id_telebe` int(11) NOT NULL,
  `secim` int(255) NOT NULL,
  `tarix` datetime NOT NULL,
  `id_fenn` int(11) NOT NULL,
  `id_muellim` int(11) NOT NULL,
  `qiymet` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `netice`
--

INSERT INTO `netice` (`id`, `id_telebe`, `secim`, `tarix`, `id_fenn`, `id_muellim`, `qiymet`) VALUES
(1, 1, 2, '2015-04-23 10:05:16', 1, 1, 8),
(2, 1, 3, '2014-11-07 00:00:00', 1, 1, 9),
(3, 1, 1, '2014-11-21 00:00:00', 1, 1, 7),
(4, 3, 2, '2015-04-29 13:48:41', 1, 1, 10),
(5, 3, 3, '2015-04-29 13:48:59', 1, 1, 7),
(6, 3, 8, '2015-05-01 10:59:23', 1, 1, 10),
(7, 1, 4, '2015-04-22 15:24:11', 1, 1, 7),
(8, 3, 4, '2015-04-22 15:24:39', 1, 1, 8),
(10, 1, 11, '2015-04-30 00:04:03', 1, 1, 3),
(11, 1, 5, '2015-04-23 10:10:50', 1, 1, 10),
(12, 1, 6, '2015-04-23 10:11:27', 1, 1, 8),
(13, 1, 7, '2015-04-23 10:12:06', 1, 1, 10),
(14, 3, 5, '2015-04-23 17:52:03', 1, 1, 5),
(15, 3, 6, '2015-04-23 10:11:57', 1, 1, 8),
(16, 3, 7, '2015-04-23 10:12:16', 1, 1, 5),
(17, 1, 12, '2015-04-23 16:21:42', 1, 1, 3),
(18, 3, 11, '2015-04-23 16:21:52', 1, 1, 1),
(19, 3, 12, '2015-04-23 16:22:09', 1, 1, 3),
(20, 1, 13, '2015-04-23 16:22:39', 1, 1, 3),
(21, 3, 13, '2015-04-23 16:22:48', 1, 1, 1),
(22, 1, 11, '2015-04-30 00:04:03', 5, 1, 3),
(23, 2, 2, '2015-04-29 16:09:54', 1, 1, 8),
(24, 2, 3, '2015-04-29 16:10:02', 1, 1, 7),
(25, 2, 4, '2015-04-29 16:10:09', 1, 1, 7),
(26, 2, 5, '2015-04-29 16:10:17', 1, 1, 8),
(27, 2, 6, '2015-04-29 16:10:26', 1, 1, 9),
(28, 2, 7, '2015-04-29 16:10:34', 1, 1, 8),
(29, 2, 8, '2015-04-29 16:10:43', 1, 1, 7),
(30, 2, 9, '2015-04-29 16:10:52', 1, 1, 8),
(31, 2, 10, '2015-04-29 16:11:03', 1, 1, 5),
(32, 2, 11, '2015-04-29 16:11:11', 1, 1, 3),
(33, 2, 12, '2015-04-29 16:11:18', 1, 1, 3),
(34, 4, 2, '2015-04-30 00:02:23', 1, 1, 7),
(35, 4, 3, '2015-04-30 00:02:33', 1, 1, 7),
(36, 4, 4, '2015-04-30 00:02:45', 1, 1, 5),
(37, 4, 5, '2015-04-30 00:02:57', 1, 1, 8),
(38, 4, 6, '2015-04-30 00:03:07', 1, 1, 3),
(39, 4, 7, '2015-04-30 00:03:17', 1, 1, 7),
(40, 4, 8, '2015-04-30 00:03:27', 1, 1, 7),
(41, 4, 9, '2015-04-30 00:03:37', 1, 1, 5),
(42, 4, 10, '2015-04-30 00:03:49', 1, 1, 8),
(43, 4, 12, '2015-04-30 00:04:13', 1, 1, 2),
(44, 4, 13, '2015-04-30 00:04:24', 1, 1, 3),
(45, 4, 11, '2015-04-30 00:04:57', 1, 1, 3),
(46, 2, 13, '2015-04-30 00:05:16', 1, 1, 2),
(47, 3, 9, '2015-05-01 10:53:59', 1, 1, 8),
(48, 3, 10, '2015-05-01 10:54:10', 1, 1, 6),
(49, 1, 8, '2015-05-01 10:55:03', 1, 1, 8),
(50, 1, 9, '2015-05-01 10:58:25', 1, 1, 8),
(51, 1, 10, '2015-05-01 10:58:32', 1, 1, 6),
(52, 5, 2, '2015-05-01 11:02:57', 1, 1, 5),
(53, 5, 3, '2015-05-01 11:03:05', 1, 1, 7),
(54, 5, 4, '2015-05-01 11:03:14', 1, 1, 9),
(55, 5, 5, '2015-05-01 11:03:23', 1, 1, 8),
(56, 5, 6, '2015-05-01 11:03:32', 1, 1, 7),
(57, 5, 7, '2015-05-01 11:03:42', 1, 1, 3),
(58, 5, 8, '2015-05-01 11:03:53', 1, 1, 9),
(59, 5, 9, '2015-05-01 11:04:03', 1, 1, 5),
(60, 5, 10, '2015-05-01 11:04:11', 1, 1, 8),
(61, 5, 11, '2015-05-01 11:04:22', 1, 1, 2),
(62, 5, 12, '2015-05-01 11:04:32', 1, 1, 2),
(63, 5, 13, '2015-05-01 11:04:41', 1, 1, 3),
(64, 6, 2, '2015-05-01 11:05:26', 1, 1, 3),
(65, 6, 3, '2015-05-01 11:05:34', 1, 1, 5),
(66, 6, 4, '2015-05-01 11:14:19', 1, 1, 9),
(67, 6, 5, '2015-05-01 11:05:54', 1, 1, 5),
(68, 6, 7, '2015-05-01 11:06:02', 1, 1, 6),
(69, 6, 6, '2015-05-01 11:06:12', 1, 1, 7),
(70, 6, 8, '2015-05-01 11:06:33', 1, 1, 8),
(71, 6, 9, '2015-05-01 11:06:42', 1, 1, 6),
(72, 6, 10, '2015-05-01 11:06:50', 1, 1, 6),
(73, 6, 11, '2015-05-01 11:07:12', 1, 1, 4),
(74, 6, 12, '2015-05-01 11:07:20', 1, 1, 3),
(75, 6, 13, '2015-05-01 11:07:28', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `qrup`
--

CREATE TABLE IF NOT EXISTS `qrup` (
`id` int(11) NOT NULL,
  `ad` varchar(15) NOT NULL,
  `fakulte` varchar(50) NOT NULL,
  `ixtisas` varchar(150) NOT NULL,
  `sobe` varchar(15) NOT NULL,
  `bolme` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `qrup`
--

INSERT INTO `qrup` (`id`, `ad`, `fakulte`, `ixtisas`, `sobe`, `bolme`) VALUES
(1, '1441a', 'Aerokosmik', 'İnformasiya texnologiyaları və Sistemləri mühəndisliyi', 'əyani', 'az'),
(2, '1442a', 'Aerokosmik', 'Aerokosmik s ve tex', 'əyani', 'az'),
(3, '1451a', 'Aerokosmik', 'Aerokosmik s ve tex', 'əyani', 'ru'),
(5, '1442r', 'İnformasiya Texnologiyaları və Sistemləri Mühəndis', 'Aerokosmik', 'əyani', 'ru'),
(6, '1443a', 'Aerokosmik', 'İnformasiya Texnologiyaları', 'əyani', 'az');

-- --------------------------------------------------------

--
-- Table structure for table `secim`
--

CREATE TABLE IF NOT EXISTS `secim` (
`id` int(11) NOT NULL,
  `secim` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `secim`
--

INSERT INTO `secim` (`id`, `secim`) VALUES
(1, 'kurs'),
(2, 'lab1'),
(3, 'lab2'),
(4, 'lab3'),
(5, 'kol1'),
(6, 'kol2'),
(7, 'kol3'),
(8, 'mes1'),
(9, 'mes2'),
(10, 'mes3'),
(11, 'ser1'),
(12, 'ser2'),
(13, 'ser3');

-- --------------------------------------------------------

--
-- Table structure for table `telebe`
--

CREATE TABLE IF NOT EXISTS `telebe` (
  `id` varchar(50) NOT NULL,
  `ad` varchar(255) NOT NULL,
  `soyad` varchar(255) NOT NULL,
  `ata_adi` varchar(255) NOT NULL,
  `id_qrup` int(11) NOT NULL,
  `dogum_tarix` date NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `parol` varchar(255) NOT NULL,
  `cins` varchar(255) NOT NULL,
  `region` int(11) NOT NULL,
  `school` int(11) NOT NULL,
  `qebulK` varchar(255) NOT NULL,
  `odenisF` varchar(255) NOT NULL,
  `TQDKbal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `telebe`
--

INSERT INTO `telebe` (`id`, `ad`, `soyad`, `ata_adi`, `id_qrup`, `dogum_tarix`, `tel`, `email`, `parol`, `cins`, `region`, `school`, `qebulK`, `odenisF`, `TQDKbal`) VALUES
('2000100203223', 'VASÄ°LÄ°Y', 'BORODÄ°N', 'PETROVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 56, 56315, 'TQDK-dan qÉ™bul', 'Ã–', 148),
('2007100205178', 'NAZÄ°M', 'ÆLÄ°YEV', 'FAZÄ°L', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 11, 18094, 'TQDK-dan qÉ™bul', 'Ã–', 159),
('2009100105682', 'ÆFRAN', 'CÆFÆROV', 'RAFÆT', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 15, 15149, 'TQDK-dan qÉ™bul', 'Ã–', 180),
('2009100108788', 'TEYMUR', 'Ä°SMAYILOV', 'Ä°LQAR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 16, 19164, 'Ã–lkÉ™daxili kÃ¶Ã§Ã¼rmÉ™', 'DH', 212),
('2010100113196', 'RAMÄ°L', 'HÃœSEYNOV', 'ZÃ–HRAB', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 14, 14086, 'TQDK-dan qÉ™bul', 'Ã–', 215),
('2010100217631', 'TOFÄ°Q', 'BAÄžIROV', 'VAQÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 16, 16212, 'TQDK-dan qÉ™bul', 'Ã–', 229),
('2011100128551', 'ORXAN', 'RZAYEV', 'TOFÄ°K', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 47, 49006, 'TQDK-dan qÉ™bul', 'Ã–', 276),
('2011100128757', 'ABÄ°DÆT', 'RZAYEVA', 'RÃ–VÅžÆN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 47, 47015, 'TQDK-dan qÉ™bul', 'Ã–', 244),
('2011100129120', 'HACI', 'NOVRUZOV', 'TAHÄ°R', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 47, 47011, 'TQDK-dan qÉ™bul', 'Ã–', 243),
('2011100129598', 'FUAD', 'QASIMOV', 'QASIM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 47, 47011, 'TQDK-dan qÉ™bul', 'Ã–', 262),
('2011100130491', 'AZÆR', 'ÅžAHBAZZADÆ', 'MÃœQÆDDÆS', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 47, 47021, 'TQDK-dan qÉ™bul', 'Ã–', 282),
('2011100138351', 'AYSEL', 'XASIYEVA', 'SALEH', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 12, 12244, 'TQDK-dan qÉ™bul', 'Ã–', 242),
('2011100141821', 'AZÆR', 'MÆMMÆDOV', 'NÄ°ZAMÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 44, 44003, 'TQDK-dan qÉ™bul', 'Ã–', 357),
('2011100143353', 'CAVÄ°D', 'QASIMOV', 'RASÄ°M', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 97, 97041, 'TQDK-dan qÉ™bul', 'Ã–', 254),
('2011100144630', 'ÅžÃ–LÆ', 'MÆCÄ°DOVA', 'VAHÄ°D', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 95, 21214, 'TQDK-dan qÉ™bul', 'Ã–', 288),
('2011100145246', 'RÆNA', 'RÆHÄ°MOVA', 'RÃ–VÅžÆN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 18, 11525, 'TQDK-dan qÉ™bul', 'Ã–', 261),
('2011100145367', 'HÃœSEYN', 'ÆSKÆROV', 'HÆSÆNQULU', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 93, 11295, 'TQDK-dan qÉ™bul', 'DS', 477),
('2011100145838', 'AYNURÆ', 'BAYRAMOVA', 'Ä°MRAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 18, 18090, 'TQDK-dan qÉ™bul', 'Ã–', 292),
('2011100146495', 'Ä°SMAYIL', 'RÆHÄ°MLÄ°', 'ARÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 17, 17290, 'TQDK-dan qÉ™bul', 'DS', 532),
('2011100146575', 'ALEKSANDR', 'PROSTOMOLOTOV', 'OLEQOVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 18, 14024, 'TQDK-dan qÉ™bul', 'Ã–', 272),
('2011100146948', 'ELNARÆ', 'KÆRÄ°MLÄ°', 'ÆZÄ°ZAÄžA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 15, 14269, 'TQDK-dan qÉ™bul', 'Ã–', 263),
('2011100148617', 'ÅžAMÄ°L', 'MÆMMÆDOV', 'AÄžA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 19, 35047, 'TQDK-dan qÉ™bul', 'DS', 511),
('2011100149079', 'ASİM', 'SƏFƏROV', 'GÜLMƏMMƏD', 3, '1994-04-09', '', 'asim@mail.com', '123321', 'K', 37, 37016, 'TQDK-dan qəbul', 'DS', 542),
('2011100150022', 'QAYA', 'ABBASBƏYLİ', 'NİKBİN', 1, '1994-01-01', '', 'qaya@mail.com', '123321', 'K', 31, 31018, 'TQDK-dan qəbul', 'DS', 526),
('2011100150050', 'İSAYEV', 'SEVDİMALI', 'ZAHİD', 1, '1993-10-21', '', 'sevdimaliisayev@mail.ru', '123321', 'k', 32, 31018, 'TQDK-dan qəbul', 'Əyani', 600),
('2011100150496', 'AYDIN', 'BAÄžIROV', 'VÆLÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 32, 31018, 'TQDK-dan qÉ™bul', 'DS', 478),
('2011100157661', 'TURAL', 'QARAYEV', 'EYUB', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 74, 74033, 'TQDK-dan qÉ™bul', 'DS', 486),
('2011100159549', 'HÃœSEYN', 'BABAYEV', 'ABBAS', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 15, 59027, 'TQDK-dan qÉ™bul', 'Ã–', 292),
('2011100160164', 'MÆMMÆDHÆSÆN', 'TAÄžIYEV', 'Ä°LHAM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 18, 21145, 'TQDK-dan qÉ™bul', 'DS', 529),
('2011100160838', 'SAMÄ°R', 'HÆSÆNOV', 'ÆLÄ°Åž', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 14, 14027, 'TQDK-dan qÉ™bul', 'Ã–', 244),
('2011100165489', 'ORXAN', 'AYDINLI', 'SAQÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 19, 19042, 'TQDK-dan qÉ™bul', 'Ã–', 157),
('2011100166796', 'KUBRA', 'NURÄ°YEVA', 'XUDAVERDÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 82, 82004, 'TQDK-dan qÉ™bul', 'Ã–', 273),
('2011100172122', 'NOVRUZ', 'MÆDÆTOV', 'NÄ°ZAMÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 41, 21010, 'TQDK-dan qÉ™bul', 'Ã–', 315),
('2011100172587', 'NÄ°SÆ', 'CABAROVA', 'FÄ°KRÆT', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 14, 15149, 'TQDK-dan qÉ™bul', 'Ã–', 298),
('2011100172722', 'SERGEY', 'ÆLÄ°YEV', 'SERGEYEVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 18, 18310, 'TQDK-dan qÉ™bul', 'Ã–', 396),
('2011100173027', 'AYSEL', 'KÆRÄ°MOVA', 'RÃœSTÆM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 16, 14138, 'TQDK-dan qÉ™bul', 'Ã–', 280),
('2011100173036', 'Ä°RÄ°NA', 'OKANÃ‡UK', 'Ä°QOREVNA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 14, 14171, 'TQDK-dan qÉ™bul', 'Ã–', 221),
('2011100173067', 'ZAHÄ°D', 'MANAFOV', 'ZAKÄ°R', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 14, 14095, 'TQDK-dan qÉ™bul', 'DS', 457),
('2011100173318', 'NURÆDDÄ°N', 'MÆCÄ°DLÄ°', 'ADÄ°L', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 17, 17141, 'TQDK-dan qÉ™bul', 'Ã–', 267),
('2011100174827', 'ÆLÄ°AÄžA', 'QASIMOV', 'ÆSÆD', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 21300, 'TQDK-dan qÉ™bul', 'Ã–', 295),
('2011100176068', 'AÄ°ÅžAT', 'BAQAUTDÄ°NOVA', 'BAQAUTDÄ°N', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 17, 17154, 'TQDK-dan qÉ™bul', 'Ã–', 240),
('2011100176328', 'NÄ°GAR', 'MÄ°RÆLÆMLÄ°', 'MÄ°RHÆÅžÄ°M', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 78, 15230, 'TQDK-dan qÉ™bul', 'Ã–', 279),
('2011100176420', 'NÄ°GAR', 'ZAQÄ°RBÆYOVA', 'ALÄ°KOVNA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 15, 15149, 'TQDK-dan qÉ™bul', 'Ã–', 242),
('2011100177422', 'SAMÄ°R', 'ALLAHVERDÄ°YEV', 'VAQÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 15, 15186, 'TQDK-dan qÉ™bul', 'Ã–', 238),
('2011100177505', 'FÆRÄ°D', 'NEMÆTZADÆ', 'YUSÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 65, 80016, 'TQDK-dan qÉ™bul', 'Ã–', 355),
('2011100178189', 'VÄ°KTORÄ°YA', 'ÅžVETSOVA', 'VÄ°KTOROVNA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 17, 17154, 'TQDK-dan qÉ™bul', 'Ã–', 282),
('2011100178546', 'ARZU', 'HEYDÆROVA', 'FAZÄ°L', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 15, 15181, 'TQDK-dan qÉ™bul', 'Ã–', 238),
('2011100178774', 'Ä°SLAM', 'BABAYEV', 'Ä°LHAM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 15, 15149, 'TQDK-dan qÉ™bul', 'Ã–', 280),
('2011100182776', 'NAMÄ°Q', 'NÆZÄ°RLÄ°', 'BABÆK', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 86, 86004, 'TQDK-dan qÉ™bul', 'DS', 483),
('2011100190648', 'RÆHÄ°M', 'SÆFÆROV', 'AÄžA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 16, 13219, 'TQDK-dan qÉ™bul', 'Ã–', 163),
('2011100191511', 'RENATO', 'RAKOVÄ°Ã‡', 'ANATOLYEVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 16, 19001, 'TQDK-dan qÉ™bul', 'Ã–', 222),
('2011100192015', 'NATÄ°Q', 'MÆMMÆDZADÆ', 'RÆHMAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 14, 14056, 'TQDK-dan qÉ™bul', 'Ã–', 365),
('2011100193431', 'MÆRYÆM', 'HEYBÆTOVA', 'ÆBÃœLFÆZ', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 21, 14147, 'TQDK-dan qÉ™bul', 'DS', 482),
('2011100194223', 'KÆNAN', 'MÆMMÆDRZAYEV', 'RÃ–VÅžÆN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 19, 16258, 'TQDK-dan qÉ™bul', 'DS', 544),
('2011100194285', 'FÄ°DAN', 'QÆDÄ°RLÄ°', 'RAFÄ°Q', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 12, 12143, 'TQDK-dan qÉ™bul', 'Ã–', 264),
('2011100196165', 'GÃœLLÃœ', 'SOFÄ°YEVA', 'VÃœSAL', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 17, 66036, 'TQDK-dan qÉ™bul', 'DS', 477),
('2011100198149', 'ELNUR', 'ÆLÄ°YEV', 'ÅžÃœKÃœR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 12, 16093, 'TQDK-dan qÉ™bul', 'Ã–', 275),
('2011100198646', 'ARZU', 'ÆFÆNDÄ°YEVA', 'RAFÄ°Q', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 19, 11601, 'TQDK-dan qÉ™bul', 'Ã–', 248),
('2011100200131', 'NURAN', 'FÆRZÆLÄ°', 'RÃ–VÅžÆN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 31, 31001, 'TQDK-dan qÉ™bul', 'DS', 517),
('2011100205091', 'MÃœRÅžÃœD', 'MÃœRÅžÃœDLÃœ', 'Ä°LHAM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 36, 30001, 'TQDK-dan qÉ™bul', 'Ã–', 288),
('2011100206280', 'YEVGENÄ°YA', 'FROLOVA', 'ALEKSANDROVNA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 18, 21210, 'TQDK-dan qÉ™bul', 'Ã–', 298),
('2011100301564', 'NÄ°CAT', 'QURBANÄ°', 'BÆYLÆR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 21300, 'TQDK-dan qÉ™bul', 'DS', 522),
('2011100301746', 'ELÃ‡Ä°N', 'RÆFÄ°YEV', 'VAQÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 21214, 'TQDK-dan qÉ™bul', 'DS', 556),
('2011100302031', 'ARÄ°F', 'QULÄ°YEV', 'ARÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 21214, 'TQDK-dan qÉ™bul', 'Ã–', 245),
('2011100302074', 'LÆÅžKÆR', 'QAFARLI', 'MÃœBARÄ°Z', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 97, 97041, 'TQDK-dan qÉ™bul', 'Ã–', 245),
('2011100302162', 'ÃœLVÄ°YÆ', 'ÆFÆNDÄ°YEVA', 'VEYSÆL', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 11, 19303, 'TQDK-dan qÉ™bul', 'Ã–', 237),
('2011100304341', 'Ä°BAD', 'Ä°ZANOV', 'ÆRÅžAD', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 82, 82010, 'TQDK-dan qÉ™bul', 'Ã–', 272),
('2012100103107', 'RÆÅžAD', 'AMANOV', 'ÅžAHLAR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 14055, 'TQDK-dan qÉ™bul', 'Ã–', 326),
('2012100112115', 'AYSU', 'Ä°SGÆNDÆRLÄ°', 'Ä°SGÆNDÆR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 33, 33008, 'TQDK-dan qÉ™bul', 'DS', 492),
('2012100119716', 'NURLAN', 'HÆSÆNLÄ°', 'ELMAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 89, 89075, 'TQDK-dan qÉ™bul', 'Ã–', 340),
('2012100120596', 'SÃœRAYYÆ', 'XÆLÄ°LOVA', 'MAÄ°S', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 15, 15117, 'TQDK-dan qÉ™bul', 'DS', 506),
('2012100125554', 'SÆBUHÄ°', 'CAVADLI', 'ÆZÄ°Z', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 20, 11295, 'TQDK-dan qÉ™bul', 'Ã–', 291),
('2012100126001', 'ÆLÄ°AÄžA', 'ÆLÄ°YEV', 'SAMÄ°D', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 87, 87004, 'TQDK-dan qÉ™bul', 'Ã–', 278),
('2012100128670', 'SÆFURÆ', 'RÃœSTÆMZADÆ', 'AZAD', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 14, 14056, 'TQDK-dan qÉ™bul', 'DS', 529),
('2012100132454', 'ANTON', 'DURNEV', 'SERGEYEVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 15, 15026, 'TQDK-dan qÉ™bul', 'Ã–', 336),
('2012100133281', 'ÆLÄ°', 'HÃœSEYN', 'HÃœSEYNBABA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 91, 15136, 'TQDK-dan qÉ™bul', 'Ã–', 274),
('2012100133539', 'NÃœBAR', 'HEYDÆROVA', 'AZAD', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 13, 13049, 'TQDK-dan qÉ™bul', 'DS', 445),
('2012100133985', 'ANNA', 'VOYTKO', 'ALEKSANDROVNA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 16, 12102, 'TQDK-dan qÉ™bul', 'Ã–', 366),
('2012100136835', 'BÆYLÆR', 'HÆÅžÄ°MLÄ°', 'ARZU', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 11, 65049, 'TQDK-dan qÉ™bul', 'Ã–', 294),
('2012100137058', 'ADÄ°L', 'Ä°BRAHÄ°MLÄ°', 'AYDIN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 11, 19302, 'TQDK-dan qÉ™bul', 'DS', 531),
('2012100138526', 'ZAUR', 'HÃœSEYNOV', 'ROMAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 47, 47011, 'TQDK-dan qÉ™bul', 'Ã–', 318),
('2012100139946', 'YUSÄ°F', 'ÆMÄ°ROV', 'Ä°LHAM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 72, 72003, 'TQDK-dan qÉ™bul', 'DS', 505),
('2012100144779', 'VALEH', 'ABÄ°YEV', 'VÃœQAR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 50, 50009, 'TQDK-dan qÉ™bul', 'DS', 511),
('2012100242577', 'ÅžAMXAL', 'CAVANÅžÄ°ROV', 'NAZÄ°M', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 17, 17104, 'TQDK-dan qÉ™bul', 'DS', 457),
('2012100243404', 'XALÄ°S', 'KÆRÄ°MOV', 'ÅžAMURAT', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 95, 95071, 'TQDK-dan qÉ™bul', 'DS', 452),
('2012100244580', 'BABÆK', 'MÆMMÆDOV', 'QALÄ°B', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 86, 86003, 'TQDK-dan qÉ™bul', 'DS', 504),
('2012100301685', 'TOFÄ°Q', 'BABAYEV', 'SÃœLEYMAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 14, 14287, 'TQDK-dan qÉ™bul', 'DS', 450),
('2012100301736', 'ÃœLVÄ°YYÆ', 'ÆMÄ°RZADÆ', 'ELÅžAD', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 17, 17154, 'TQDK-dan qÉ™bul', 'Ã–', 438),
('2012100303015', 'NAÄ°LÆ', 'KÆRÄ°MOVA', 'Ä°MAMÆLÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 12, 11601, 'TQDK-dan qÉ™bul', 'DS', 507),
('2012100303068', 'MEHMAN', 'ORUCOV', 'SÆRXAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 66, 66158, 'TQDK-dan qÉ™bul', 'Ã–', 330),
('2012100333523', 'SÆNAN', 'YÃœZBAÅžÄ°YEV', 'SADIQ', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 21210, 'TQDK-dan qÉ™bul', 'DS', 557),
('2012100335283', 'HEYDÆR', 'HEYDÆROV', 'AZAD', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 18, 18094, 'TQDK-dan qÉ™bul', 'Ã–', 273),
('2012100337578', 'FÆXRÄ°YYÆ', 'HÃœSEYNLÄ°', 'ELMAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 19, 18107, 'TQDK-dan qÉ™bul', 'DS', 489),
('2012100338806', 'ÅžÃœCAÆT', 'ORUCOV', 'Ä°SMÄ°ÆLÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 94, 94018, 'TQDK-dan qÉ™bul', 'DS', 485),
('2012100339809', 'MURAD', 'SÆMÆDOV', 'ZAHÄ°R', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 19, 11304, 'TQDK-dan qÉ™bul', 'DS', 456),
('2012100345544', 'SEVÄ°NDÄ°K', 'ÆLÄ°ZADÆ', 'ZAHÄ°D', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 16, 13236, 'TQDK-dan qÉ™bul', 'Ã–', 286),
('2012100345960', 'HÄ°KMÆT', 'Ä°SMAYILOV', 'NÄ°ZAMÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 58, 58045, 'TQDK-dan qÉ™bul', 'Ã–', 278),
('2012100347253', 'VÃœSAL', 'RZAYEV', 'Ä°SLAM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 16, 11295, 'TQDK-dan qÉ™bul', 'DS', 478),
('2012100352723', 'NÄ°CAT', 'DADAÅžOV', 'RÃ–VÅžÆN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 18, 21238, 'TQDK-dan qÉ™bul', 'Ã–', 322),
('2012100353004', 'NAÄ°L', 'RÃœSTÆMZADÆ', 'YUSÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 14088, 'TQDK-dan qÉ™bul', 'Ã–', 271),
('2012100354276', 'XANMURAD', 'BABAXANLI', 'MEHMAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 73, 73027, 'TQDK-dan qÉ™bul', 'DS', 510),
('2012100356590', 'ELZA', 'ZAHÄ°ROVA', 'FAÄ°Q', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 47, 47033, 'TQDK-dan qÉ™bul', 'DS', 456),
('2012100357867', 'SAMÄ°R', 'KARDAÅžOV', 'FELÄ°KSOVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 18, 16047, 'TQDK-dan qÉ™bul', 'Ã–', 293),
('2012100358099', 'RÃœFÆT', 'TAÄžIYEV', 'NAMÄ°Q', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 14001, 'TQDK-dan qÉ™bul', 'DS', 453),
('2012100359547', 'ELMAN', 'ÆHMÆDOV', 'MEHMAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 83, 83004, 'TQDK-dan qÉ™bul', 'DS', 533),
('2012100365835', 'HEYDÆR', 'ALLAHVERDÄ°', 'ELXAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 47, 47044, 'TQDK-dan qÉ™bul', 'DS', 530),
('2012100365900', 'NURLAN', 'CÆFÆROV', 'FÆHMÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 47, 47044, 'TQDK-dan qÉ™bul', 'Ã–', 368),
('2012100368298', 'GÃœLBACI', 'SÆLÄ°MOVA', 'ÅžÄ°RBÆY', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 15, 15136, 'TQDK-dan qÉ™bul', 'Ã–', 290),
('2012100371417', 'HÃœSEYN', 'HÃœSEYNLÄ°', 'AFÆT', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 88, 88002, 'TQDK-dan qÉ™bul', 'Ã–', 374),
('2012301002267', 'CEYHUN', 'DADAÅžOV', 'ÆSKÆRÆLÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 15, 11504, 'Xarici tÉ™hsil mÃ¼É™ssisÉ™sindÉ™n kÃ¶Ã§Ã¼rmÉ™', 'Ã–', 0),
('2012301002656', 'ELÅžÆN', 'ÆLÄ°YEV', 'ÆHÆD', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 15, 11286, 'Xarici tÉ™hsil mÃ¼É™ssisÉ™sindÉ™n kÃ¶Ã§Ã¼rmÉ™', 'Ã–', 0),
('2012301002684', 'NÄ°CAT', 'MÆMMÆDZADÆ', 'TOFÄ°Q', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 20, 20139, 'Xarici tÉ™hsil mÃ¼É™ssisÉ™sindÉ™n kÃ¶Ã§Ã¼rmÉ™', 'Ã–', 0),
('2012501001034', 'AYTÆN', 'BÆDÆLOVA', 'ALÄ°M', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 17, 11711, '2-ci ixtisas almaq Ã¼Ã§Ã¼n qÉ™bul', 'Ã–', 0),
('2012501001035', 'AYTÆN', 'CAVADZADÆ', 'VAHÄ°D', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 50, 11725, '2-ci ixtisas almaq Ã¼Ã§Ã¼n qÉ™bul', 'Ã–', 0),
('2012501001036', 'ANAR', 'ÆLÄ°XANOV', 'RÃœFÆT', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 19, 11702, '2-ci ixtisas almaq Ã¼Ã§Ã¼n qÉ™bul', 'Ã–', 0),
('2013100116507', 'SÆYYAD', 'SEYÄ°DLÄ°', 'OKTAY', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 17, 34001, 'TQDK-dan qÉ™bul', 'Ã–', 391),
('2013100116973', 'NÄ°GAR', 'BÆÅžÄ°RLÄ°', 'MAHUR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 16, 15136, 'TQDK-dan qÉ™bul', 'Ã–', 494),
('2013100117070', 'SAMÄ°R', 'ZEYNALLI', 'MÃœBARÄ°Z', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 12, 33029, 'TQDK-dan qÉ™bul', 'DS', 510),
('2013100117277', 'NÆRMÄ°N', 'BÆÅžÄ°RLÄ°', 'MAHUR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 16, 15136, 'TQDK-dan qÉ™bul', 'Ã–', 476),
('2013100118017', 'ALEKSANDR', 'NÄ°KÄ°TÄ°N', 'ROMANOVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 14, 14264, 'TQDK-dan qÉ™bul', 'DS', 594),
('2013100124134', 'HÆMÄ°D', 'QÆDÄ°ROV', 'AKÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 19, 13160, 'TQDK-dan qÉ™bul', 'DS', 595),
('2013100124270', 'SÆMA', 'AXUNDOVA', 'RZA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 15, 15125, 'TQDK-dan qÉ™bul', 'DS', 563),
('2013100124342', 'FAZÄ°L', 'ZEYNALOV', 'MAARÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 48, 48016, 'TQDK-dan qÉ™bul', 'DS', 506),
('2013100125384', 'MÆHÆBBÆT', 'RÆSULZADÆ', 'MÃœÅžFÄ°Q', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 95, 64026, 'TQDK-dan qÉ™bul', 'DS', 494),
('2013100126492', 'RÆÅžAD', 'VÆLÄ°ZADÆ', 'ELDAR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 14056, 'TQDK-dan qÉ™bul', 'Ã–', 331),
('2013100128201', 'NÄ°GAR', 'MÆMMÆDOVA', 'AZÆR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 12, 16077, 'TQDK-dan qÉ™bul', 'DS', 505),
('2013100128966', 'ÅžAHÄ°N', 'MURADLI', 'YADÄ°GAR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 89, 89007, 'TQDK-dan qÉ™bul', 'Ã–', 342),
('2013100129278', 'FÆRÄ°D', 'CÆFÆROV', 'YAÅžAR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 78, 12276, 'TQDK-dan qÉ™bul', 'Ã–', 422),
('2013100131196', 'Ä°LQAR', 'QULUZADÆ', 'Ä°BRAHÄ°M', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 14, 14287, 'TQDK-dan qÉ™bul', 'DS', 559),
('2013100131894', 'KAMÄ°L', 'ZEYNALOV', 'NADÄ°R', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 66, 66158, 'TQDK-dan qÉ™bul', 'Ã–', 362),
('2013100134336', 'EMÄ°N', 'ÆLÆKBÆRLÄ°', 'FÄ°KRÆT', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 31, 31018, 'TQDK-dan qÉ™bul', 'DS', 589),
('2013100134363', 'ÃœLKÆR', 'BÆKÄ°ROVA', 'FUAD', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 14, 80028, 'TQDK-dan qÉ™bul', 'DS', 538),
('2013100136716', 'AYÅžÆN', 'NÆBÄ°ZADÆ', 'ZÆKÆRÄ°YYÆ', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 11, 11286, 'TQDK-dan qÉ™bul', 'DS', 558),
('2013100138710', 'ELÃ‡Ä°N', 'QÆNBÆROV', 'Ä°LHAM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 31, 31031, 'TQDK-dan qÉ™bul', 'DS', 506),
('2013100146429', 'XÆYAL', 'ÆSGÆRLÄ°', 'ABASÆT', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 33, 31018, 'TQDK-dan qÉ™bul', 'DS', 541),
('2013100149550', 'ELMÄ°R', 'ABDULLAYEV', 'NUÅžÄ°RÆVAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 75, 75025, 'TQDK-dan qÉ™bul', 'DS', 551),
('2013100151494', 'GÃœLDÆSTÆ', 'RÆSULZADÆ', 'YAQUB', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 85, 85004, 'TQDK-dan qÉ™bul', 'DS', 504),
('2013100151935', 'HÃœSEYN', 'ÆZÄ°ZOV', 'RAHÄ°M', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 19, 13189, 'TQDK-dan qÉ™bul', 'DS', 500),
('2013100154578', 'DÄ°LQÆM', 'CÆFÆROV', 'RAUF', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 36, 14257, 'TQDK-dan qÉ™bul', 'Ã–', 333),
('2013100157543', 'RÆÅžAD', 'MÆMMÆDOV', 'OQTAY', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 66, 66002, 'TQDK-dan qÉ™bul', 'Ã–', 477),
('2013100251532', 'SÆBÄ°NÆ', 'AÄžAZADÆ', 'NADÄ°R', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 14, 14261, 'TQDK-dan qÉ™bul', 'DS', 509),
('2013100253147', 'MÆHÆMMÆD', 'Ä°SMAYILZADÆ', 'HÆSÆN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 68, 68013, 'TQDK-dan qÉ™bul', 'DS', 508),
('2013100254534', 'TURAL', 'ÆLÄ°ZADÆ', 'ARÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 31, 31001, 'TQDK-dan qÉ™bul', 'DS', 522),
('2013100254536', 'QOÅžQAR', 'NÆBÄ°YEV', 'AÄžAYAR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 31, 31001, 'TQDK-dan qÉ™bul', 'DS', 535),
('2013100254927', 'FÆRÄ°D', 'HÆMÄ°DLÄ°', 'FEYRUZ', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 16, 16066, 'TQDK-dan qÉ™bul', 'DS', 535),
('2013100255062', 'CEYHUN', 'BABAYEV', 'MÆMMÆD', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 35, 35026, 'TQDK-dan qÉ™bul', 'DS', 497),
('2013100256526', 'ELÃ‡Ä°N', 'XÆLÄ°LOV', 'YASÄ°N', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 36, 36067, 'TQDK-dan qÉ™bul', 'DS', 510),
('2013100280212', 'GÃœLNAR', 'MÆMMÆDOVA', 'ZÃœLFÃœQAR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 18, 18072, 'TQDK-dan qÉ™bul', 'DS', 550),
('2013100282166', 'CAHÄ°D', 'ABDULLAYEV', 'MÆSÄ°M', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 57, 57065, 'TQDK-dan qÉ™bul', 'DS', 517),
('2013100301033', 'ASÄ°MAN', 'YUSÄ°BOV', 'SADÄ°Q', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 56, 56030, 'TQDK-dan qÉ™bul', 'DS', 494),
('2013100323033', 'ÆBÃœLFÆZ', 'FÆTULLAYEV', 'MÆMMÆDAÄžA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 91, 7999, 'TQDK-dan qÉ™bul', 'DS', 497),
('2013100323426', 'MÃœRSÆL', 'MUSAYEV', 'RASÄ°M', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 73, 73006, 'TQDK-dan qÉ™bul', 'Ã–', 349),
('2013100325207', 'ZALÆDDÄ°N', 'ÆLÆKBÆROV', 'ÆDALÆT', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 14, 14024, 'TQDK-dan qÉ™bul', 'DS', 427),
('2013100325333', 'NÄ°GAR', 'ÆLÄ°YEVA', 'ÆBDÃœLAÄžA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 15, 15241, 'TQDK-dan qÉ™bul', 'DS', 545),
('2013100326811', 'AMÄ°L', 'ABDULLAYEV', 'VAQÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 31, 31001, 'TQDK-dan qÉ™bul', 'Ã–', 391),
('2013100327355', 'ÃœRFAN', 'ABÄ°DOV', 'ELMAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 95, 95046, 'TQDK-dan qÉ™bul', 'DS', 514),
('2013100385900', 'ÃœLVÄ°', 'CABBARLI', 'AZÆR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 80, 80031, 'TQDK-dan qÉ™bul', 'DS', 583),
('2013100386488', 'Ä°SMAYIL', 'TÆHMÆZOV', 'SÆFÆR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 14, 14261, 'TQDK-dan qÉ™bul', 'DS', 558),
('2013100387103', 'GÃœLTÆKÄ°N', 'QÆDÄ°MLÄ°', 'FÆZAÄ°L', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 40, 40055, 'TQDK-dan qÉ™bul', 'DS', 533),
('2013100389825', 'ORXAN', 'ÅžÆRÄ°FOV', 'ZÆFÆR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 14, 14257, 'TQDK-dan qÉ™bul', 'DS', 477),
('2013100391396', 'SÆNAN', 'HÆSÆNLÄ°', 'ZAKÄ°R', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 67, 67003, 'TQDK-dan qÉ™bul', 'Ã–', 348),
('2013100393262', 'SEVÄ°NC', 'NÆBÄ°YEVA', 'MÆSÄ°M', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 44, 44017, 'TQDK-dan qÉ™bul', 'DS', 564),
('2013100393722', 'MÆHÆMMÆD', 'ABDULLAYEV', 'SAVALAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 57, 57043, 'TQDK-dan qÉ™bul', 'DS', 503),
('2013100397068', 'NÄ°GAR', 'MÆMMÆDOVA', 'ÅžAHÄ°N', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 21, 21229, 'TQDK-dan qÉ™bul', 'DS', 515),
('2013100401625', 'NÄ°ÅžANÆ', 'XÆLÄ°LOVA', 'HABÄ°L', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 86, 21220, 'TQDK-dan qÉ™bul', 'DS', 527),
('2013501000406', 'Ä°QOR', 'BUQRÄ°YEV', 'PAVLOVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 13, 11707, '2-ci ixtisas almaq Ã¼Ã§Ã¼n qÉ™bul', 'Ã–', 0),
('2013501000407', 'TEYMUR', 'SÆFÆRÆLÄ°YEV', 'VAQÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 17, 11718, '2-ci ixtisas almaq Ã¼Ã§Ã¼n qÉ™bul', 'Ã–', 0),
('2014100115911', 'SAMUR', 'ÆHMÆDOV', 'ASÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 11, 13189, 'TQDK-dan qÉ™bul', 'DS', 502),
('2014100116034', 'EMÄ°N', 'RÆHMANOV', 'CAVANÅžÄ°R', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 19, 15183, 'TQDK-dan qÉ™bul', 'Ã–', 244),
('2014100116936', 'NÆRMÄ°N', 'NAÄžIZADÆ', 'MÃœBARÄ°Z', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 17, 37017, 'TQDK-dan qÉ™bul', 'DS', 552),
('2014100117656', 'NATÄ°Q', 'Ä°BÄ°ÅžOV', 'VAHÄ°D', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 21238, 'TQDK-dan qÉ™bul', 'DS', 542),
('2014100117928', 'YULYA', 'KURKÄ°NA', 'Ä°QORYEVNA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 17, 17087, 'TQDK-dan qÉ™bul', 'DS', 519),
('2014100121615', 'SÆADÆT', 'RÃœSTÆMOVA', 'Ä°MRAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 57, 12083, 'TQDK-dan qÉ™bul', 'Ã–', 329),
('2014100122107', 'EMÄ°L', 'DÆMÄ°ROV', 'TAHÄ°R', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 21242, 'TQDK-dan qÉ™bul', 'Ã–', 243),
('2014100122775', 'RÆSUL', 'CÆFÆROV', 'ÅžAHÄ°N', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 94, 94002, 'TQDK-dan qÉ™bul', 'DS', 528),
('2014100123544', 'QÄ°SMÆT', 'MÆMMÆDOV', 'ABÄ°T', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 72, 72021, 'TQDK-dan qÉ™bul', 'DS', 539),
('2014100124357', 'FAZÄ°L', 'ÆSÆDULLAYEV', 'FAYÄ°Q', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 11, 11020, 'TQDK-dan qÉ™bul', 'DS', 472),
('2014100124827', 'ADÄ°L', 'MEHTÄ°YEV', 'ARÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 56, 56002, 'TQDK-dan qÉ™bul', 'DS', 518),
('2014100125253', 'NÆZRÄ°N', 'MEHMANOVA', 'CEYHUN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 38, 41001, 'TQDK-dan qÉ™bul', 'Ã–', 215),
('2014100125675', 'SAHÄ°B', 'FÆRMANLI', 'MÆTLÆB', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 32, 31031, 'TQDK-dan qÉ™bul', 'DS', 608),
('2014100126381', 'MUSTAFA', 'MUSTAFAYEV', 'CEYHUN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 72, 72044, 'TQDK-dan qÉ™bul', 'DS', 560),
('2014100128512', 'LUMUXANIM', 'MÄ°RMÆMMÆDOVA', 'MÄ°RÅžAHÄ°N', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 87, 87008, 'TQDK-dan qÉ™bul', 'DS', 571),
('2014100128789', 'MÄ°KAYIL', 'HAQVERDÄ°YEV', 'ÆLÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 19, 16047, 'TQDK-dan qÉ™bul', 'Ã–', 315),
('2014100129020', 'SÆRXAN', 'BÆKÄ°RLÄ°', 'Ä°SMÆT', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 18, 12102, 'TQDK-dan qÉ™bul', 'DS', 501),
('2014100129222', 'MURAD', 'MÄ°RZÆYEV', 'ÆLÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 71, 71001, 'TQDK-dan qÉ™bul', 'DS', 526),
('2014100133054', 'ÅžAHMURAD', 'MURADLI', 'QORXMAZ', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 60, 60042, 'TQDK-dan qÉ™bul', 'DS', 533),
('2014100133096', 'GÃœLTÆN', 'ABDULLAYEVA', 'ASÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 14, 17318, 'TQDK-dan qÉ™bul', 'DS', 550),
('2014100139606', 'TÄ°MUR', 'HÆMÄ°DOV', 'OKTAYEVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 21145, 'TQDK-dan qÉ™bul', 'Ã–', 284),
('2014100141081', 'ÆKBÆR', 'KAZIMOV', 'ELSEVÆR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 40, 31018, 'TQDK-dan qÉ™bul', 'DS', 537),
('2014100141733', 'RÃœFÆT', 'QÆDÄ°ROV', 'RÃ–VÅžÆN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 19, 21145, 'TQDK-dan qÉ™bul', 'DS', 537),
('2014100148975', 'SADÄ°Q', 'ÆHÆDOV', 'ÅžAÄ°Q', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 86, 86001, 'TQDK-dan qÉ™bul', 'Ã–', 259),
('2014100149604', 'NAHÄ°D', 'RÃœSTÆMOV', 'SÄ°MRAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 91, 15218, 'TQDK-dan qÉ™bul', 'DS', 517),
('2014100152389', 'ELVÄ°N', 'ÆLÄ°YEV', 'ELÃ‡Ä°N', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 15, 15117, 'TQDK-dan qÉ™bul', 'DS', 528),
('2014100159407', 'VÃœSAL', 'RZAYEV', 'SAHÄ°B', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 17, 17280, 'TQDK-dan qÉ™bul', 'DS', 525),
('2014100252615', 'RÆHMAN', 'BALOÄžLANLI', 'RÃ–VÅžÆN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 17, 17270, 'TQDK-dan qÉ™bul', 'DS', 527),
('2014100253574', 'FÆRÄ°D', 'NÆCÆFOV', 'TÆMLEYXA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 35, 35013, 'TQDK-dan qÉ™bul', 'DS', 523),
('2014100253620', 'ÆFSANÆ', 'Ä°SLAMLI', 'Ä°LHAM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 57, 57013, 'TQDK-dan qÉ™bul', 'DS', 544),
('2014100254153', 'NURLAN', 'BÆÅžÄ°ROV', 'XÆTAÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 60, 60016, 'TQDK-dan qÉ™bul', 'DS', 517),
('2014100281088', 'ELNUR', 'HÃœSEYNLÄ°', 'ELXAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 78, 21210, 'TQDK-dan qÉ™bul', 'Ã–', 397),
('2014100281241', 'NÄ°KÄ°TA', 'KNYAZEV', 'ALEKSANDROVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 17, 21145, 'TQDK-dan qÉ™bul', 'Ã–', 391),
('2014100281687', 'MÄ°RABDULLA', 'YUSÄ°FLÄ°', 'MÄ°RDAMÆT', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 18, 14001, 'TQDK-dan qÉ™bul', 'DS', 539),
('2014100322406', 'Ä°NARÆ', 'QÆDÄ°ROVA', 'VAHÄ°D', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 17, 15181, 'TQDK-dan qÉ™bul', 'Ã–', 210),
('2014100322408', 'AYTAC', 'NÆCÄ°YEVA', 'ELSEVÆR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 85, 85042, 'TQDK-dan qÉ™bul', 'DS', 540),
('2014100388419', 'TEYMUR', 'AÄžAZADÆ', 'TALEH', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 92, 15322, 'TQDK-dan qÉ™bul', 'DS', 541),
('2014100388899', 'RAUF', 'MÆMMÆDOV', 'FAZÄ°L', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 12, 12102, 'TQDK-dan qÉ™bul', 'Ã–', 273),
('2014100389623', 'FÄ°RÆNGÄ°Z', 'QASIMOVA', 'MÆZAHÄ°R', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 14, 14264, 'TQDK-dan qÉ™bul', 'Ã–', 329),
('2014100390217', 'NÄ°CAT', 'Ä°SMAYILOV', 'TEYMUR', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 14, 14264, 'TQDK-dan qÉ™bul', 'DS', 547),
('2014100390837', 'ÅžAÄ°Q', 'CÆFÆROV', 'VÆFA', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 12, 81026, 'TQDK-dan qÉ™bul', 'DS', 561),
('2014100391507', 'Ä°LKÄ°N', 'XÆLÄ°LOV', 'NÆRÄ°MAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 17, 15033, 'TQDK-dan qÉ™bul', 'DS', 547),
('2014100391773', 'NÆZRÄ°N', 'MANSUROVA', 'AYAZ', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 45, 17275, 'TQDK-dan qÉ™bul', 'DS', 543),
('2014100392673', 'TEYMUR', 'Ä°SMAYILOV', 'ALEKSANDROVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 15, 11631, 'TQDK-dan qÉ™bul', 'Ã–', 229),
('2014100393688', 'Ä°NTÄ°ZAM', 'ÆLÄ°YAROV', 'NÄ°ZAMÄ°', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 60, 60001, 'TQDK-dan qÉ™bul', 'DS', 537),
('2014100394602', 'XALÄ°S', 'QAZIYEV', 'NADÄ°R', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 61, 61002, 'TQDK-dan qÉ™bul', 'DS', 550),
('2014100394835', 'NAÄ°L', 'GÃ–ZÆLOV', 'RÃœSTÆM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 11, 11018, 'TQDK-dan qÉ™bul', 'Ã–', 203),
('2014100397176', 'DANÄ°Ä°L', 'FROLOV', 'YEVGENYEVÄ°Ã‡', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 12, 12157, 'TQDK-dan qÉ™bul', 'Ã–', 207),
('2014100398161', 'Ä°LKÄ°N', 'SÆMÆDOV', 'CAMO', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 47, 47022, 'TQDK-dan qÉ™bul', 'DS', 524),
('2014100400579', 'RÆÅžÄ°D', 'FÆSADOV', 'RÆHÄ°M', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 47, 47001, 'TQDK-dan qÉ™bul', 'DS', 534),
('2014100402853', 'FÆRMÄ°N', 'RÃœSTÆMOV', 'YUNUS', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 96, 95060, 'TQDK-dan qÉ™bul', 'DS', 518),
('2014100407324', 'AMÄ°D', 'RÆHÄ°MOV', 'ASÄ°F', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 89, 21251, 'TQDK-dan qÉ™bul', 'Ã–', 205),
('2014100408054', 'KÆNAN', 'MUXTAROV', '', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 3, 13002, 'TQDK-dan qÉ™bul', 'Ã–', 375),
('2014100413669', 'RÆHMAN', 'ÆHMÆDOV', 'Ä°SLAM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 17, 17290, 'TQDK-dan qÉ™bul', 'DS', 540),
('2014301000012', 'ANAR', 'RÆFÄ°BÆYLÄ°', 'RAUF', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 21, 13219, 'Xarici tÉ™hsil mÃ¼É™ssisÉ™sindÉ™n kÃ¶Ã§Ã¼rmÉ™', 'Ã–', 0),
('2014301000014', 'FÄ°DAN', 'ABDULLAYEVA', 'ELXAN', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 14, 14064, 'Xarici tÉ™hsil mÃ¼É™ssisÉ™sindÉ™n kÃ¶Ã§Ã¼rmÉ™', 'Ã–', 0),
('2014301000015', 'SEVÄ°NC', 'ÆLÄ°YEVA', 'Ä°LHAM', 1, '0000-00-00', '', 'email@domain.com', '123321', 'Q', 15, 15149, 'Xarici tÉ™hsil mÃ¼É™ssisÉ™sindÉ™n kÃ¶Ã§Ã¼rmÉ™', 'Ã–', 0),
('2014301000047', 'ZEYNAL', 'SÆLÄ°MXANLI', 'ARAZ', 1, '0000-00-00', '', 'email@domain.com', '123321', 'K', 19, 21010, 'Xarici tÉ™hsil mÃ¼É™ssisÉ™sindÉ™n kÃ¶Ã§Ã¼rmÉ™', 'Ã–', 0);

-- --------------------------------------------------------

--
-- Table structure for table `telebeler`
--

CREATE TABLE IF NOT EXISTS `telebeler` (
`id` int(11) NOT NULL,
  `id_qrup` int(11) NOT NULL,
  `ad` varchar(20) NOT NULL,
  `soyad` varchar(20) NOT NULL,
  `ata_ad` varchar(20) NOT NULL,
  `fakulte` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `parol` varchar(255) NOT NULL,
  `onlayn` int(255) NOT NULL,
  `son_giris` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `telebeler`
--

INSERT INTO `telebeler` (`id`, `id_qrup`, `ad`, `soyad`, `ata_ad`, `fakulte`, `tel`, `email`, `parol`, `onlayn`, `son_giris`) VALUES
(1, 1, 'Sevdimalı', 'İsayev', 'Zahid', 'Aerokosmik', '+994518090', 'admin@naa.az', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(2, 1, 'Kənan', 'Məmmədrzayev', 'Rövşən', 'Aerokosmikk', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(3, 1, 'İsmayil', 'Rəhimli', 'Arif', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(4, 1, 'Məmmədhəsən', 'Tağıyev', 'İlham', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(5, 1, 'Qaya', 'Abbasbəyli', 'Nikbin', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(6, 1, 'Nicat', 'Qurbani', 'Bəylər', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(7, 1, 'Nuran', 'Fərzəli', 'Rövşən', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(8, 1, 'Şamil', 'Məmmədov', 'Ağa', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(9, 1, 'Tural', 'Qarayev', 'Eyub', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(10, 1, 'Namiq', 'Nəzirli', 'Babək', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(11, 1, 'Məryəm', 'Heybətova', 'Əbülfəz', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(12, 1, 'Aydın', 'Bağırov', 'Vəli', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(13, 1, 'Hüseyn', 'Əskərov', 'Həsənqulu', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(14, 1, 'Güllü', 'Sofiyeva', 'Vüsal', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00'),
(15, 1, 'Zahid', 'Manafov', 'Zakir', 'Aerokosmik', '+9446465656', 'mail@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `yazilar`
--

CREATE TABLE IF NOT EXISTS `yazilar` (
`id` int(11) NOT NULL,
  `id_yazar` int(11) NOT NULL,
  `tip_yazar` varchar(2) NOT NULL,
  `tarix` datetime NOT NULL,
  `qrup` varchar(255) NOT NULL,
  `yazi` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `yazilar`
--

INSERT INTO `yazilar` (`id`, `id_yazar`, `tip_yazar`, `tarix`, `qrup`, `yazi`) VALUES
(1, 1, 't', '2014-11-16 00:00:00', '1441a', 'Lorem ipsum dolor sit amet, consectetur adipisicing eÅŸÅŸÅŸÅŸÅŸÅŸÅŸÅŸÅŸÉ™É™É™É™É™É™É™lit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(4, 1, 'm', '2015-04-11 14:05:25', '1441a', 'Kurs işləri üçün son 15 gün'),
(5, 1, 'm', '2015-04-11 14:06:21', '1442a', 'Hamınızı 3-cü korpusda konfransa dəvət edirik.'),
(6, 1, 'm', '2015-04-11 14:57:49', '1441a', 'Yenilik Paylaş'),
(7, 1, 'm', '2015-04-14 22:47:45', '1451a', 'Bu yalniz 1451 ucundur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fayllar`
--
ALTER TABLE `fayllar`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fayl_tipler`
--
ALTER TABLE `fayl_tipler`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fenler`
--
ALTER TABLE `fenler`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mesajlar`
--
ALTER TABLE `mesajlar`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `muellim`
--
ALTER TABLE `muellim`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netice`
--
ALTER TABLE `netice`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `qrup`
--
ALTER TABLE `qrup`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secim`
--
ALTER TABLE `secim`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telebe`
--
ALTER TABLE `telebe`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telebeler`
--
ALTER TABLE `telebeler`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yazilar`
--
ALTER TABLE `yazilar`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fayllar`
--
ALTER TABLE `fayllar`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fayl_tipler`
--
ALTER TABLE `fayl_tipler`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fenler`
--
ALTER TABLE `fenler`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mesajlar`
--
ALTER TABLE `mesajlar`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `muellim`
--
ALTER TABLE `muellim`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `netice`
--
ALTER TABLE `netice`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `qrup`
--
ALTER TABLE `qrup`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `secim`
--
ALTER TABLE `secim`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `telebeler`
--
ALTER TABLE `telebeler`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `yazilar`
--
ALTER TABLE `yazilar`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
