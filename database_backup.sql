-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 Haz 2017, 23:51:06
-- Sunucu sürümü: 10.1.21-MariaDB
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bm_reg`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fayllar`
--

CREATE TABLE `fayllar` (
  `id` int(11) NOT NULL,
  `fenn_id` int(11) NOT NULL,
  `tip` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `yaradan` varchar(255) NOT NULL,
  `yaradan_tip` int(11) NOT NULL,
  `yaradilma_tarix` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `fayllar`
--

INSERT INTO `fayllar` (`id`, `fenn_id`, `tip`, `link`, `yaradan`, `yaradan_tip`, `yaradilma_tarix`) VALUES
(1, 1, 1, 'files/slayd.pptx', '1', 1, '2015-01-24');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fayl_tipler`
--

CREATE TABLE `fayl_tipler` (
  `id` int(11) NOT NULL,
  `tipi` varchar(255) NOT NULL,
  `param` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `fayl_tipler`
--

INSERT INTO `fayl_tipler` (`id`, `tipi`, `param`) VALUES
(1, 'Slayd', ''),
(2, 'Digər(zip)', ''),
(3, 'Link', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fenler`
--

CREATE TABLE `fenler` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `fenler`
--

INSERT INTO `fenler` (`id`, `id_qrup`, `id_muellim`, `ixtisas`, `ad`, `saat`, `lab_saat`, `muh_saat`, `mes_saat`, `kurs_isi`) VALUES
(1, 1, 1, 'İnformasiya Texnologiyaları və Sistemləri mühəndisliyi', 'Süni İntellekt(1441a)', 90, 30, 50, 10, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `id_gond` int(11) NOT NULL,
  `id_qeb` int(11) NOT NULL,
  `tip_gond` varchar(5) NOT NULL,
  `tip_qeb` varchar(5) NOT NULL,
  `tarix` date NOT NULL,
  `mesaj` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`id`, `status`, `id_gond`, `id_qeb`, `tip_gond`, `tip_qeb`, `tarix`, `mesaj`) VALUES
(1, 0, 1, 1, '0', '1', '2014-11-12', 'Test mesaj'),
(2, 0, 1, 1, '0', '1', '2014-11-11', 'Salam, müəllim diplom işini yolladım');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `muellim`
--

CREATE TABLE `muellim` (
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
  `son_giris` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `muellim`
--

INSERT INTO `muellim` (`id`, `ad`, `soyad`, `ata_adi`, `elmi_der`, `elmi_ad`, `fakulte`, `kafedra`, `parol`, `email`, `onlayn`, `son_giris`, `status`) VALUES
(1, 'İsmayıl', 'İsmayılov', 'İsmayıl', 'professor', 'dosent', 'Aerokosmik', 'Aerokosimik İnformasiya Texnologiyaları', 'c8837b23ff8aaa8a2dde915473ce0991', 'i.ismayil@naa.edu.az', 1, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `netice`
--

CREATE TABLE `netice` (
  `id` int(11) NOT NULL,
  `id_telebe` int(11) NOT NULL,
  `secim` int(255) NOT NULL,
  `tarix` datetime NOT NULL,
  `id_fenn` int(11) NOT NULL,
  `id_muellim` int(11) NOT NULL,
  `qiymet` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `netice`
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
-- Tablo için tablo yapısı `qrup`
--

CREATE TABLE `qrup` (
  `id` int(11) NOT NULL,
  `ad` varchar(15) NOT NULL,
  `fakulte` varchar(50) NOT NULL,
  `ixtisas` varchar(150) NOT NULL,
  `sobe` varchar(15) NOT NULL,
  `bolme` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `qrup`
--

INSERT INTO `qrup` (`id`, `ad`, `fakulte`, `ixtisas`, `sobe`, `bolme`) VALUES
(1, '1441a', 'Aerokosmik', 'İnformasiya texnologiyaları və Sistemləri mühəndisliyi', 'əyani', 'az'),
(2, '1442a', 'Aerokosmik', 'Aerokosmik s ve tex', 'əyani', 'az'),
(3, '1451a', 'Aerokosmik', 'Aerokosmik s ve tex', 'əyani', 'ru'),
(5, '1442r', 'İnformasiya Texnologiyaları və Sistemləri Mühəndis', 'Aerokosmik', 'əyani', 'ru'),
(6, '1443a', 'Aerokosmik', 'İnformasiya Texnologiyaları', 'əyani', 'az');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `secim`
--

CREATE TABLE `secim` (
  `id` int(11) NOT NULL,
  `secim` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `secim`
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
-- Tablo için tablo yapısı `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `status`
--

INSERT INTO `status` (`id`, `description`) VALUES
(1, 'admin'),
(2, 'moderator');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `telebeler`
--

CREATE TABLE `telebeler` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `telebeler`
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
-- Tablo için tablo yapısı `yazilar`
--

CREATE TABLE `yazilar` (
  `id` int(11) NOT NULL,
  `id_yazar` int(11) NOT NULL,
  `tip_yazar` varchar(2) NOT NULL,
  `tarix` datetime NOT NULL,
  `qrup` varchar(255) NOT NULL,
  `yazi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yazilar`
--

INSERT INTO `yazilar` (`id`, `id_yazar`, `tip_yazar`, `tarix`, `qrup`, `yazi`) VALUES
(1, 1, 't', '2014-11-16 00:00:00', '1441a', 'Lorem ipsum dolor sit amet, consectetur adipisicing eÅŸÅŸÅŸÅŸÅŸÅŸÅŸÅŸÅŸÉ™É™É™É™É™É™É™lit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(4, 1, 'm', '2015-04-11 14:05:25', '1441a', 'Kurs işləri üçün son 15 gün'),
(5, 1, 'm', '2015-04-11 14:06:21', '1442a', 'Hamınızı 3-cü korpusda konfransa dəvət edirik.'),
(6, 1, 'm', '2015-04-11 14:57:49', '1441a', 'Yenilik Paylaş'),
(7, 1, 'm', '2015-04-14 22:47:45', '1451a', 'Bu yalniz 1451 ucundur');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `fayllar`
--
ALTER TABLE `fayllar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `fayl_tipler`
--
ALTER TABLE `fayl_tipler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `fenler`
--
ALTER TABLE `fenler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `muellim`
--
ALTER TABLE `muellim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `netice`
--
ALTER TABLE `netice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Tablo için indeksler `qrup`
--
ALTER TABLE `qrup`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `secim`
--
ALTER TABLE `secim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `telebeler`
--
ALTER TABLE `telebeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yazilar`
--
ALTER TABLE `yazilar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `fayllar`
--
ALTER TABLE `fayllar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `fayl_tipler`
--
ALTER TABLE `fayl_tipler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `fenler`
--
ALTER TABLE `fenler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `muellim`
--
ALTER TABLE `muellim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `netice`
--
ALTER TABLE `netice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- Tablo için AUTO_INCREMENT değeri `qrup`
--
ALTER TABLE `qrup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `secim`
--
ALTER TABLE `secim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Tablo için AUTO_INCREMENT değeri `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `telebeler`
--
ALTER TABLE `telebeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Tablo için AUTO_INCREMENT değeri `yazilar`
--
ALTER TABLE `yazilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
