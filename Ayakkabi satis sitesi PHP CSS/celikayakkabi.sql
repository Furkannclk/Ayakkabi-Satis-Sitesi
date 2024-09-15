-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Haz 2021, 00:08:45
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `celikayakkabi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa`
--

CREATE TABLE `anasayfa` (
  `id` int(11) NOT NULL,
  `foto` char(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` int(11) NOT NULL,
  `ustBaslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `foto` char(100) COLLATE utf8_turkish_ci NOT NULL,
  `altyazi` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `adsoyad` varchar(30) NOT NULL,
  `telefon` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `konu` varchar(35) NOT NULL,
  `mesaj` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `kadi` char(50) NOT NULL,
  `parola` char(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kadi`, `parola`) VALUES
(1, 'admin', '105a9a2d46f64e147097c986076d2164'),
(15, 'furkan', '105a9a2d46f64e147097c986076d2164');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(11) NOT NULL,
  `isim` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `resim` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` double(10,2) NOT NULL,
  `aktif` tinyint(4) NOT NULL,
  `sira` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `isim`, `resim`, `fiyat`, `aktif`, `sira`) VALUES
(4, 'İnci BONDU Vizon Kadın Çizme', 'cizme2.jpg', 359.40, 0, 0),
(5, 'Harley Davidson Siyah Kadın Çizme', 'cizme1.jpg', 489.30, 0, 0),
(6, 'Forester Siyah Erkek Postal', 'bot3.jpg', 110.00, 0, 0),
(7, 'Dockers Haki Erkek Bot', 'bot2.jpg', 200.00, 0, 0),
(8, 'U.S. Polo Assn. Kahverengi Erkek Bot', 'bot1.jpg', 125.00, 0, 0),
(9, 'Polaris Lacivert Erkek Casual Ayakkabı', 'gunluk5.jpg', 70.00, 0, 0),
(10, 'U.S. Polo Assn. Lacivert Erkek Sneaker', 'gunluk4.jpg', 135.00, 0, 0),
(11, 'Dockers Lacivert Erkek Comfort Ayakkabı', 'gunluk3.jpg', 139.90, 0, 0),
(12, 'Polaris Siyah Erkek Casual Ayakkabı', 'gunluk2.jpg', 59.99, 0, 0),
(13, 'Kinetix THEHA Lacivert Erkek Sneaker', 'gunluk1.jpg', 90.99, 0, 0),
(14, 'Kinetix EPRAL M Siyah Erkek Sneaker', 'spor5.jpg', 88.00, 0, 0),
(15, 'Lumberjack CAMEL Lime Erkek Ayakkabı', 'spor4.jpg', 155.99, 0, 0),
(16, 'Khayt Resistant Memory Erkek Ayakkabı', 'spor3.jpg', 109.90, 0, 0),
(17, 'U.S. Polo Assn. Beyaz Kadın Sneaker', 'spor2.jpg', 179.99, 0, 0),
(18, 'Kinetix Siyah Kadın Comfort Ayakkabı', 'spor1.jpg', 119.99, 0, 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
