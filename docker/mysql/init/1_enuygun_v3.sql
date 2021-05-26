-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Mar 24, 2020 at 09:20 AM
-- Server version: 5.6.40
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enuygun_v3`
--
CREATE DATABASE IF NOT EXISTS `enuygun_v3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `enuygun_v3`;

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `id` int(11) NOT NULL,
  `moduleCredit` tinyint(1) DEFAULT NULL,
  `partnerId` int(11) DEFAULT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apiKey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ips` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useApi` tinyint(1) NOT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci,
  `isActive` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `category` int(11) DEFAULT NULL,
  `visitor` int(11) DEFAULT NULL,
  `visitorModel` int(11) DEFAULT NULL,
  `invoice` tinyint(1) NOT NULL,
  `accountInfo` longtext COLLATE utf8_unicode_ci,
  `followType` int(11) DEFAULT NULL,
  `requests` longtext COLLATE utf8_unicode_ci,
  `moduleCreditPersonal` tinyint(1) DEFAULT NULL,
  `moduleCreditHome` tinyint(1) DEFAULT NULL,
  `moduleCreditCar` tinyint(1) DEFAULT NULL,
  `moduleDask` int(11) DEFAULT NULL,
  `moduleFlight` tinyint(1) DEFAULT NULL,
  `platform` smallint(6) DEFAULT NULL COMMENT '1=ios; 2=android',
  `flightRequestCost` double NOT NULL,
  `commission_type` int(11) DEFAULT NULL,
  `commission_rate` double DEFAULT NULL,
  `daily_report` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `affiliates`
--

INSERT INTO `affiliates` (`id`, `moduleCredit`, `partnerId`, `username`, `password`, `salt`, `email`, `title`, `apiKey`, `ips`, `useApi`, `permissions`, `isActive`, `isDeleted`, `lastLogin`, `createdAt`, `updatedAt`, `category`, `visitor`, `visitorModel`, `invoice`, `accountInfo`, `followType`, `requests`, `moduleCreditPersonal`, `moduleCreditHome`, `moduleCreditCar`, `moduleDask`, `moduleFlight`, `platform`, `flightRequestCost`, `commission_type`, `commission_rate`, `daily_report`) VALUES
(5335, NULL, NULL, 'Direct', '1+b8CBNY1o36l8XBNNFwByMJ5/LajqfikuU50yOtZaBl+O+gc9nY6HhoD5lDppACd5DfvofUwRExy6hPPRgoQg==', 'm28xmo38na8kgs0o0ogw84oo448kggg', 'ozge.besirli@enuygun.com', 'Direct', 'PxzzNbMIkfsrUR6HJNoACPF4feoM7Jft', NULL, 0, NULL, 1, 0, NULL, '2017-05-08 15:58:49', '2017-05-11 11:57:41', NULL, NULL, NULL, 0, '{\"address\":null,\"iban\":null,\"responsible\":null,\"phone\":null,\"website\":null}', NULL, '{\"car_request_num\":null,\"car_request_cost\":null,\"personal_request_num\":null,\"personal_request_cost\":null,\"home_request_num\":null,\"home_request_cost\":null,\"adsl_request_num\":null,\"adsl_request_cost\":null,\"health_request_num\":null,\"health_request_cost\":null,\"homein_request_num\":null,\"homein_request_cost\":null}', 0, 0, 0, NULL, 1, NULL, 0, NULL, NULL, NULL),
(5455, NULL, NULL, 'EnuygunIOSv5', 'VF3jN8BGctaRFCxnOHkwJWBbCqBl7dCEGMGUgIxs5WH+IX52fY9eysz2q5x+yz2fdNZZj2pmNeukNZtaSgXugw==', 'd280q750l6gw08400sgk08ckoggkgog', 'tech@enuygun.com', 'Enuygun Seyahat iOS Uygulama v5', '1UjPPwI0w0MIXRedI7WXxiJP01Hots6c', NULL, 1, NULL, 1, 0, NULL, '2018-07-13 14:08:53', '2018-07-13 14:08:53', NULL, NULL, NULL, 0, '{\"address\":null,\"iban\":null,\"responsible\":null,\"phone\":null,\"website\":null}', NULL, '{\"car_request_num\":null,\"car_request_cost\":null,\"personal_request_num\":null,\"personal_request_cost\":null,\"home_request_num\":null,\"home_request_cost\":null,\"adsl_request_num\":null,\"adsl_request_cost\":null,\"health_request_num\":null,\"health_request_cost\":null,\"homein_request_num\":null,\"homein_request_cost\":null}', 0, 0, 0, NULL, 0, 1, 0.5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `affiliates_payments`
--

CREATE TABLE `affiliates_payments` (
  `id` int(11) NOT NULL,
  `paymentType` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `fromDate` datetime NOT NULL,
  `toDate` datetime NOT NULL,
  `paymentMade` tinyint(1) NOT NULL,
  `invoiceDate` datetime DEFAULT NULL,
  `invoiceNum` int(11) DEFAULT NULL,
  `totalPaid` double DEFAULT NULL,
  `countApp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forModules` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stopajLess` double DEFAULT NULL,
  `affiliateId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agent_history`
--

CREATE TABLE `agent_history` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backend` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `extra` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agent_reminder`
--

CREATE TABLE `agent_reminder` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `status` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `remind_time` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `airport_hotel_match`
--

CREATE TABLE `airport_hotel_match` (
  `id` int(11) NOT NULL,
  `flight_counts` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `airport_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `airport` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(83) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `airline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fileName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_history`
--

CREATE TABLE `announcement_history` (
  `id` int(11) NOT NULL,
  `announcement` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newContent` longtext COLLATE utf8_unicode_ci,
  `newAirline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newDeletedAt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `oldTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oldContent` longtext COLLATE utf8_unicode_ci,
  `oldAirline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oldType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oldDeletedAt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_types`
--

CREATE TABLE `announcement_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `announcement_types`
--

INSERT INTO `announcement_types` (`id`, `name`) VALUES
(1, 'Havayolu'),
(2, 'Ofis'),
(3, 'Yönetim'),
(4, 'Döküman'),
(5, 'Diğer');

-- --------------------------------------------------------

--
-- Table structure for table `bad_words`
--

CREATE TABLE `bad_words` (
  `word` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `environment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `placement` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_template_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_alt_tag` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `click_through_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_party_tracking_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `trafficCode` tinyint(1) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `index` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `trafficCode`, `title`, `slug`, `isActive`, `index`) VALUES
(1, 1, 'ADANA', 'adana', 1, 0),
(2, 33, 'MERSİN', 'mersin', 1, 0),
(3, 80, 'OSMANİYE', 'osmaniye', 1, 0),
(4, 6, 'ANKARA', 'ankara', 1, 2),
(5, 14, 'BOLU', 'bolu', 1, 0),
(6, 18, 'ÇANKIRI', 'cankiri', 1, 0),
(7, 81, 'DÜZCE', 'duzce', 1, 0),
(8, 71, 'KIRIKKALE', 'kirikkale', 1, 0),
(9, 7, 'ANTALYA', 'antalya', 1, 0),
(10, 15, 'BURDUR', 'burdur', 1, 0),
(11, 32, 'ISPARTA', 'isparta', 1, 0),
(12, 9, 'AYDIN', 'aydin', 1, 0),
(13, 20, 'DENİZLİ', 'denizli', 1, 0),
(14, 48, 'MUĞLA', 'mugla', 1, 0),
(15, 10, 'BALIKESİR', 'balikesir', 1, 0),
(16, 17, 'ÇANAKKALE', 'canakkale', 1, 0),
(17, 13, 'BİTLİS', 'bitlis', 1, 0),
(18, 30, 'HAKKARİ', 'hakkari', 1, 0),
(19, 49, 'MUŞ', 'mus', 1, 0),
(20, 56, 'SİİRT', 'siirt', 1, 0),
(21, 73, 'ŞIRNAK', 'sirnak', 1, 0),
(22, 65, 'VAN', 'van', 1, 0),
(23, 11, 'BİLECİK', 'bilecik', 1, 0),
(24, 16, 'BURSA', 'bursa', 1, 0),
(25, 41, 'KOCAELİ', 'kocaeli', 1, 0),
(26, 54, 'SAKARYA', 'sakarya', 1, 0),
(27, 77, 'YALOVA', 'yalova', 1, 0),
(28, 34, 'İSTANBUL', 'istanbul', 1, 3),
(29, 59, 'TEKİRDAĞ', 'tekirdag', 1, 0),
(30, 35, 'İZMİR', 'izmir', 1, 1),
(31, 45, 'MANİSA', 'manisa', 1, 0),
(32, 72, 'BATMAN', 'batman', 1, 0),
(33, 12, 'BİNGÖL', 'bingol', 1, 0),
(34, 21, 'DİYARBAKIR', 'diyarbakir', 1, 0),
(35, 47, 'MARDİN', 'mardin', 1, 0),
(36, 22, 'EDİRNE', 'edirne', 1, 0),
(37, 39, 'KIRKLARELİ', 'kirklareli', 1, 0),
(38, 4, 'AĞRI', 'agri', 1, 0),
(39, 75, 'ARDAHAN', 'ardahan', 1, 0),
(40, 69, 'BAYBURT', 'bayburt', 1, 0),
(41, 24, 'ERZİNCAN', 'erzincan', 1, 0),
(42, 25, 'ERZURUM', 'erzurum', 1, 0),
(43, 76, 'IĞDIR', 'igdir', 1, 0),
(44, 36, 'KARS', 'kars', 1, 0),
(45, 27, 'GAZİANTEP', 'gaziantep', 1, 0),
(46, 79, 'KİLİS', 'kilis', 1, 0),
(47, 31, 'HATAY', 'hatay', 1, 0),
(48, 46, 'KAHRAMANMARAŞ', 'kahramanmaras', 1, 0),
(49, 74, 'BARTIN', 'bartin', 1, 0),
(50, 78, 'KARABÜK', 'karabuk', 1, 0),
(51, 37, 'KASTAMONU', 'kastamonu', 1, 0),
(52, 67, 'ZONGULDAK', 'zonguldak', 1, 0),
(53, 38, 'KAYSERİ', 'kayseri', 1, 0),
(54, 40, 'KIRŞEHİR', 'kirsehir', 1, 0),
(55, 50, 'NEVŞEHİR', 'nevsehir', 1, 0),
(56, 51, 'NİĞDE', 'nigde', 1, 0),
(57, 68, 'AKSARAY', 'aksaray', 1, 0),
(58, 70, 'KARAMAN', 'karaman', 1, 0),
(59, 42, 'KONYA', 'konya', 1, 0),
(60, 3, 'AFYON', 'afyon', 1, 0),
(61, 26, 'ESKİŞEHİR', 'eskisehir', 1, 0),
(62, 43, 'KÜTAHYA', 'kutahya', 1, 0),
(63, 64, 'UŞAK', 'usak', 1, 0),
(64, 23, 'ELAZIĞ', 'elazig', 1, 0),
(65, 44, 'MALATYA', 'malatya', 1, 0),
(66, 62, 'TUNCELİ', 'tunceli', 1, 0),
(67, 52, 'ORDU', 'ordu', 1, 0),
(68, 55, 'SAMSUN', 'samsun', 1, 0),
(69, 57, 'SİNOP', 'sinop', 1, 0),
(70, 58, 'SİVAS', 'sivas', 1, 0),
(71, 66, 'YOZGAT', 'yozgat', 1, 0),
(72, 2, 'ADIYAMAN', 'adiyaman', 1, 0),
(73, 63, 'ŞANLIURFA', 'sanliurfa', 1, 0),
(74, 5, 'AMASYA', 'amasya', 1, 0),
(75, 19, 'ÇORUM', 'corum', 1, 0),
(76, 60, 'TOKAT', 'tokat', 1, 0),
(77, 8, 'ARTVİN', 'artvin', 1, 0),
(78, 28, 'GİRESUN', 'giresun', 1, 0),
(79, 29, 'GÜMÜŞHANE', 'gumushane', 1, 0),
(80, 53, 'RİZE', 'rize', 1, 0),
(81, 61, 'TRABZON', 'trabzon', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `country_guides`
--

CREATE TABLE `country_guides` (
  `id` int(11) NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_guide_contents`
--

CREATE TABLE `country_guide_contents` (
  `id` int(11) NOT NULL,
  `country_guide_id` int(11) DEFAULT NULL,
  `info_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_guide_contents_trans`
--

CREATE TABLE `country_guide_contents_trans` (
  `id` int(11) NOT NULL,
  `country_guide_content_id` int(11) DEFAULT NULL,
  `info_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_report`
--

CREATE TABLE `custom_report` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `expireAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dfp_settings`
--

CREATE TABLE `dfp_settings` (
  `id` int(11) NOT NULL,
  `modul` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sub_modul` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dfp_settings`
--

INSERT INTO `dfp_settings` (`id`, `modul`, `sub_modul`, `settings`) VALUES
(1, 'otobus', NULL, '{\"EnuygunCom_Mobile_320x50\":true,\"EnuygunCom_Footer_728x90\":true,\"EnuygunCom_300x100_scrolldown\":true,\"EnuygunCom_Header_728x90\":true}'),
(2, 'anasayfa', NULL, '{\"EnuygunCom_300x100_scrolldown\":true}'),
(3, 'ucak', NULL, '{\"EnuygunCom_300x100_scrolldown\":true}');

-- --------------------------------------------------------

--
-- Table structure for table `email_typos`
--

CREATE TABLE `email_typos` (
  `id` int(11) NOT NULL,
  `email_typo_domain_id` int(11) DEFAULT NULL,
  `typo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_typo_domains`
--

CREATE TABLE `email_typo_domains` (
  `id` int(11) NOT NULL,
  `typo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_airline_check_in_list`
--

CREATE TABLE `flight_airline_check_in_list` (
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_in_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_in_form` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flight_airline_check_in_list`
--

INSERT INTO `flight_airline_check_in_list` (`code`, `name`, `check_in_url`, `check_in_form`) VALUES
('08', 'Air Southwest', 'http://www.southwest.com/flight/retrieveCheckinDoc.html?forceNewSession=yes', NULL),
('0B', 'Blue Air', 'http://m.blueairweb.com/Booking/SearchWebcheckin.aspx', NULL),
('2A', 'Deutsche Bahn', 'https://www.bahn.com/i/view/GBR/en/prices/onlineticket/onlineticket.shtml', NULL),
('2F', 'Frontier Flying Service', 'https://www.flyfrontier.com/manage-travel/online-check-in/?mobile=true', NULL),
('2I', 'Star Peru', 'http://m.starperu.com/en/check-in.html', NULL),
('2K', 'Aerolineas Galapagos', 'http://checkin.avianca.com/default.aspx?AL=AV&lan=EN&pais=EC', NULL),
('2L', 'Helvetic Airways', 'https://webcheckin.helvetic.com/app/ck.fly', NULL),
('2M', 'Moldavian Airlines', 'https://checkin.airmoldova.md/app/ck.fly?l=en', NULL),
('2N', 'Nextjet', 'https://checkin.si.amadeus.net/1ASIHSSCWEB2N/sscw2n/checkin?width=800&height=600&type=W&Redirected=true', NULL),
('2P', 'Air Philippines', 'https://www.philippineairlines.com/en', NULL),
('2U', 'Sun D\'Or Intl Airlines', 'https://www.elal.com/checkin/home/identification/c?language=eng&isup=false', NULL),
('3H', 'Air Inuit', 'https://icheck.sita.aero/iCheckWeb3H/', NULL),
('3K', 'Jetstar Asia', 'http://www.jetstar.com/au/en/help/articles/can-i-check-in-online', NULL),
('3L', 'Intersky Luftfahrt', 'https://www.cleartrip.com/flight-booking/intersky-luftfahrt-airlines-web-check-in.html', NULL),
('3O', 'Air Arabia Maroc', 'http://webcheckin.airarabia.com/sitawebapp/#/', NULL),
('3S', 'Air Antilles Express', 'http://fo-latam.ttinteractive.com/Zenith/FrontOffice/(S(fzwbnwjlnze45dxxhtg0d323))/AirAntilles/en-GB/Home/FindBooking?mode=WebCheckin', NULL),
('4B', 'Boutique Air', 'https://www.boutiqueair.com/reservation_authorization/new', NULL),
('4G', 'Gazpromavia', 'http://www.cleartrip.com/flight-booking/gazpromavia-web-check-in.html', NULL),
('4M', 'Lanargentina', 'https://www.latam.com/es_ar/check-in-y-otros-servicios/', NULL),
('4R', 'Hamburg International', 'https://www.hamburg-airport.de/de/check-in.php', NULL),
('4U', 'Germanwings', 'https://www.germanwings.com/skysales/WebCheckIn.aspx', NULL),
('4Z', 'South African Airlink', 'https://checkin.si.amadeus.net/1ASIHSSCWEBSA/sscwsa/checkin?LANGUAGE=EN', NULL),
('5D', 'Aeromexico Connect', 'https://aeromexico.com/en-eu/check-in', NULL),
('5J', 'Cebu Air', 'https://beta.cebupacificair.com/CheckIn/Retrieve', NULL),
('5N', 'Jsc Nordavia', 'http://booking.nordavia.ru/is2009/web-checkin/reg-data.jsf', NULL),
('5T', 'Canadian North', 'http://www.canadiannorth.com/web-checkin', NULL),
('7I', 'Insel Air International', 'https://fastcheck.sita.aero/cce-presentation-web-7i/entryUpdate.do', NULL),
('7R', 'Rusline', 'http://www.rusline.aero/', NULL),
('8Q', 'Onur Air', 'https://book.onurair.com/web/ICIPNRSearch.xhtml', '{\"action\":\"https://book.onurair.com/web/ICIPNRSearch.xhtml\",\"method\":\"get\",\"fields\":{\"name\":\"{firstName}\",\"surname\":\"{lastName}\",\"PNRNo\":\"{pnr}\",\"LANGUAGE\":\"TR\",\"PNRSearch\":\"\"}}'),
('8R', 'Sol Lineas Aereas', 'https://www.cleartrip.com/flight-booking/sol-lineas-aereas-airlines-web-check-in.html', NULL),
('9B', 'Accesrail', 'https://check-in.accesrail.com/#/step1', NULL),
('9C', 'Spring Airlines', 'http://en.ch.com/', NULL),
('9N', 'Satena', 'http://www.satena.com/', NULL),
('9U', 'Air Moldova', 'https://checkin.airmoldova.md/ck.fly#ck_retrieve', NULL),
('9W', 'Jet Airways', 'http://www.jetairways.com/EN/IN/PlanYourTravel/WebCheck-in.aspx', NULL),
('A3', 'Aegean Airlines', 'https://checkin.si.amadeus.net/1ASIHSSCWEBA3/sscwa3/checkin', NULL),
('AA', 'American Airlines', 'https://www.aa.com/homePage.do', NULL),
('AB', 'Air Berlin', 'https://m.airberlin.com/en/webcheckin/index/bookingno', NULL),
('AC', 'Air Canada', 'https://www.aircanada.com/ca/en/aco/home.html', NULL),
('AD', 'Azul Linhas Aereas Brasileiras', 'https://m.voeazul.com.br/MobileSite/Checkin/RetrieveBooking', NULL),
('AE', 'Mandarin Airlines', 'https://www.cleartrip.com/flight-booking/mandarin-airlines-web-check-in.html', NULL),
('AF', 'Air France', 'https://mobile.airfrance.com/TR/en/local/ici/iciFrame.do', NULL),
('AH', 'Air Algerie', 'http://www.airalgerie.dz/index.jsp?lang=en#tabs-3', NULL),
('AI', 'Nacil Air India', 'https://fastcheck.sita.aero/cce-presentation-web-ai/entryUpdate.do', NULL),
('AJ', 'AnadoluJet', 'https://online.anadolujet.com/checkin?lang=tr-TR', '{\"action\":\"https://online.anadolujet.com/checkin?lang=tr-TR\",\"method\":\"post\",\"fields\":{\"FirstName\":\"{firstName}\",\"LastName\":\"{lastName}\",\"PnrOrETicketNo\":\"{pnr}\"}}'),
('AJ0', 'Anadolu Jet', 'http://www4.thy.com/onlinecheckin/start.tk?lang=tr&airline=anadolujet', NULL),
('AK', 'Airasia', 'https://mobile.airasia.com/index.php?m=checkIn', NULL),
('AM', 'Aeromexico', 'https://aeromexico.com/en/travel-with-aeromexico/check-in/web-check-in/?site=eu', NULL),
('AP', 'Air One', 'https://flyairone.com/en-eu/fly-with-us/checkin-baggage/on-line-checkin.aspx', NULL),
('AR', 'Aerolineas Argentinas', 'https://movil.aerolineas.com.ar/SSW2010/ARM0/checkin/#checkin/e1s1?lang=en_US', NULL),
('AS', 'Alaska Airlines', 'https://m.alaskaair.com/checkin', NULL),
('AT', 'Royal Air Maroc', 'http://www.royalairmaroc.com/us-en/E-Services/Online-Check-in', NULL),
('AU', 'Austral Lineas Aereas', 'http://www.air-austral.com/en/prepare-your-flight/check-in-online.html', NULL),
('AV', 'Avianca', 'http://checkin.avianca.com/Default.aspx?AL=AV&lan=en&pais=CO', NULL),
('AY', 'Finnair', 'http://www.finnair.com/INT/GB/information-services/check-in/online-mobile-check-in', NULL),
('AZ', 'Alitalia', 'https://www.alitalia.com/en_it/check-in.html', NULL),
('B2', 'Belavia', 'https://en.belavia.by/home/', NULL),
('B6', 'JetBlue', 'https://book.jetblue.com/B6.myb/checkIn.html#/', NULL),
('B7', 'UNI Airways', 'http://www.evaair.com/en-us/check-in-baggage-and-airports/check-in/at-check-in-counters/', NULL),
('BA', 'British Airways', 'http://www.britishairways.com/travel/olcilandingpageauthreq/public/en_gb', NULL),
('BE', 'Flybe', 'https://m.flybe.com/', NULL),
('BI', 'Royal Brunei', 'https://www.flyroyalbrunei.com/en/australia/manage/', NULL),
('BJ', 'Borajet', 'https://borajet.crane.aero/web/ICIPNRSearch.xhtml?LANGUAGE=TR', NULL),
('BL', 'Jetstar Pacific Airlines', 'https://book.jetstar.com/retrievebooking.aspx?action=showcheckin&culture=en-ca', NULL),
('BM', 'Air Bee Spa', 'http://www.etihad.com/tr-tr/before-you-fly/check-in-online/', NULL),
('BR', 'Eva Air', 'https://beta.aircanada.com/ca/en/aco/home/fly/customer-support/contact-us.html?acid=beta|redirect|aircanada.com|DispBar', NULL),
('BT', 'Air Baltic', 'http://www.airbaltic.com/en/index', NULL),
('BU', 'SAS Norway', 'https://www.sas.no/checkin', NULL),
('BV', 'Blue Panorama Airlines', 'https://www.blue-panorama.com/main', NULL),
('BV1', 'Blu Express', 'https://www.blue-panorama.com/main', NULL),
('BW', 'Caribbean Airlines', 'https://checkin.si.amadeus.net/1ASIHSSCWEBBW/sscwbw/checkin', NULL),
('BX', 'Air Busan', 'https://m.airbusan.com/m/individual/reserve/pnr', NULL),
('C3', 'Contact Air', 'http://www.corendon.com/en-EN/online-inchecken', NULL),
('CA', 'Air China', 'https://www.airchina.us/US/GB/Home', NULL),
('CD', 'Alliance Air', 'http://apps.allianceairlines.com.au/AllianceWebCheckIn/WebCheckIn.aspx', NULL),
('CI', 'China Airlines', 'https://calec.china-airlines.com/echeckin_t/echeckin_e.asp?country=us&locale=en', NULL),
('CJ', 'BA Cityflyer', 'http://www.britishairways.com/travel/olcilandingpageauthreq/public/en_gb?eid=104511', NULL),
('CL', 'Lufthansa Cityline', 'https://www.lufthansa.com/tr/en/Online-Check-in', NULL),
('CM', 'Copa Airlines', 'https://checkin.copaair.com/web/check-in?execution=e1s1', NULL),
('CX', 'Cathay Pacific', 'http://www.cathaypacific.com/cx/en_HK/manage-booking/check-in/check-in-now.html', NULL),
('CZ', 'China Southern Airlines', 'http://www.csair.com/en/online/check_in/index.shtml', NULL),
('D2', 'Severstal Aircompany', 'https://www.alternativeairlines.com/online-check-in', NULL),
('D4', 'Alidaunia S.R.L.', 'http://www.alidaunia.it/', NULL),
('D9', 'Jsc Donavia', 'http://www.aeroflot-don.ru/services.aspx?no=592&language=en', NULL),
('DC', 'Golden Air', 'https://checkin.si.amadeus.net/1ASIHSSCWEBDC/sscwdc/checkin?ln=en', NULL),
('DD', 'Nok Air', 'http://www.nokair.com/', NULL),
('DE', 'Condor', 'https://www.condor.com/eu/flight-preparation/check-in/online-check-in.jsp', NULL),
('DJ', 'Virgin Australia', 'https://www.virginaustralia.com/au/en/', NULL),
('DL', 'Delta Air Lines', 'https://www.delta.com/PCCOciWeb/findBy.action', NULL),
('DT', 'Taag', 'https://fastcheck.sita.aero/cce-presentation-web-dt/entryUpdate.do', NULL),
('DV', 'Jsc Aircompany Scat', 'http://www.scat.kz/en/online-check-in.html', NULL),
('DX', 'Danish Air Transport', 'https://dat.dk/check-in', NULL),
('DY', 'Norwegian Air Shuttle', 'http://www.norwegian.com/uk/travel-info/check-in-and-boarding/online-check-in/', NULL),
('EC', 'Openskies', 'http://www.flyopenskies.com/en/information/check-in.html', NULL),
('EE', 'Aero Airlines', 'http://www.flyaero.com/', NULL),
('EI', 'Aer Lingus', 'https://webcheckin.aerlingus.com/html/checkIn/checkin.html?_ga=1.174996708.7938240.1481123568', NULL),
('EK', 'Emirates', 'https://mobile.emirates.com/tr/turkish/CKIN/OLCI/flightInfo.xhtml', NULL),
('EL', 'Air Nippon', 'https://www.ana.co.jp/wws/us/e/asw_common/prepare/checkin/online-checkin/', NULL),
('EN', 'Air Dolomiti', 'http://www.airdolomiti.eu/web-checkin.html', NULL),
('EQ', 'Tame', 'https://icheck.sita.aero/iCheckWebEQ/Home', NULL),
('ET', 'Ethiopian Airlines', 'https://www.ethiopianairlines.com/AA/EN/information/check-in/online-check-in', NULL),
('EW', 'Eurowings', 'https://mobile.eurowings.com/booking/BookingList.aspx?context=checkin&input=checkin&back=home', NULL),
('EY', 'Etihad Airways', 'http://www.etihad.com/tr-tr/before-you-fly/check-in-online/', NULL),
('EZ', 'Sun Air of Scandinavia', 'http://www.britishairways.com/travel/olcilandingpageauthreq/public/en_gb?link=main_nav', NULL),
('F7', 'Darwin Airlines Sa', 'https://selfservice.sita.aero/internetSWP/identificationEdit.do?locale=en&al=carrier_F7', NULL),
('F70', 'Flybaboo', 'https://www.etihadregional.com/en/web_check-in.html', NULL),
('F9', 'Frontier Airlines', 'https://www.flyfrontier.com/manage-travel/online-check-in/?mobile=true', NULL),
('FA', 'Airlink Airways Limited', 'https://checkin.si.amadeus.net/1ASIHSSCWEBSA/sscwsa/checkin?LANGUAGE=EN', NULL),
('FB', 'Bulgaria Air', 'https://www.air.bg/en#online-tab', NULL),
('FD', 'Thai Airasia', 'https://mobile.airasia.com/index.php?m=checkIn', NULL),
('FI', 'Icelandair', 'http://www.icelandair.us/information/before-you-go/online-checkin/', NULL),
('FL', 'Airtran Airways', 'https://www.seatguru.com/airlines/AirTran_Airways/checkin.php', NULL),
('FR', 'Ryanair', 'https://www.bookryanair.com/SkySales/Booking.aspx?culture=en-gb&lc=en-gb#Security', NULL),
('FY', 'FireFly', 'https://m.fireflyz.com.my/MobileCheckIn', NULL),
('FZ', 'Flydubai', 'https://www.flydubai.com/en/', NULL),
('G3', 'Vrg Linhas Aereas', 'https://www.voegol.com.br/en/information/travel-worry-free/how-to-check-in', NULL),
('G31', 'Gol', 'http://checkininternet.voegol.com.br/', NULL),
('G4', 'Allegiant Air', 'https://www.allegiantair.com/online-checkin#3d0c6b20954f993a5fe52932e2df817c', NULL),
('G8', 'Go Airlines', 'https://www.goair.in/', NULL),
('G9', 'Air Arabia', 'https://fastcheck.sita.aero/cce-presentation-web-g9/entryUpdate.do', NULL),
('GA', 'Garuda Indonesia', 'https://www.garuda-indonesia.com/id/en/garuda-indonesia-experience/on-ground/check-in/index.page', NULL),
('GE', 'Transasia Airways', 'https://calec.tna.com.tw/geeck/echeckin_e.asp', NULL),
('GF', 'Gulf Air', 'http://www.gulfair.com/English/info/Checkin/Pages/WebCheck-in.aspx', NULL),
('GQ', 'Sky Express', 'http://www.skyexpress.gr/en-us/usefulinformation/checkin.aspx', NULL),
('GR', 'Aurigny Air Services', 'http://www.aurigny.com/webcheckin/default.aspx', NULL),
('H1', 'Hahn Air', 'http://hnair.travelsky.com/huet/bc10/cuss/cussinput.jsp', NULL),
('H2', 'Sky Airline', 'https://www.skyairline.cl/(S(0cn1ov55v2md0r55ubabam55))/en/index.aspx#', NULL),
('H9', 'Pegasus Airlines', 'https://www.flypgs.com/check-in', NULL),
('HA', 'Hawaiian Airlines', 'https://apps.hawaiianairlines.com/checkin/', NULL),
('HE', 'LGW Luftfahrtges Walter', 'http://www.airlines-inform.com/world_airlines/LGW.html', NULL),
('HF', 'Hapagfly', 'https://www.tuifly.com/de/webcheckin/login', NULL),
('HG', 'Niki', 'http://www.flyniki.com/en/webcheckin', NULL),
('HO', 'Juneyao Airlines', 'http://www.juneyaoair.com/pages/WebCheck/cusscheckin.aspx', NULL),
('HP', 'America West Airlines', 'http://www.usairways.com/default.aspx?redir=https://www.google.com.tr/', NULL),
('HR', 'Hahn Air', 'https://www.hahnair.com/en/ticketing/home', NULL),
('HU', 'Hainan Airlines', 'https://www.hainanairlines.com/US/US/Check-in', NULL),
('HV', 'Transavia Airlines', 'https://www.transavia.com/en-EU/my-transavia/check-in/login/', NULL),
('HX', 'Hong Kong Airlines', 'https://m.hongkongairlines.com/html_en/checkin/checkin_index.html', NULL),
('HY', 'Uzbekistan Airways', 'https://m.uzairways.com/', NULL),
('I2', 'Munich Airlines', 'https://www.munich-airport.com/check-in-261005', NULL),
('I9', 'Air Italy', 'https://www.alitalia.com/en_it/fly-alitalia/check-in/online-check-in.html', NULL),
('IB', 'Iberia', 'http://m.iberia.com/gb/online-checkin/', NULL),
('IG', 'Meridiana', 'https://m.meridiana.it/index.html#splashscreen', NULL),
('IS', 'Island Airlines', 'https://webres.islandair.com/VIBE/CheckIn/', NULL),
('IT', 'Kingfisher Airlines', 'https://bh.cleartrip.com/flight-booking/kingfisher-airlines-web-check-in.html', NULL),
('J2', 'Azerbaijan Airlines', 'http://www.azal.az/', NULL),
('J9', 'Jazeera Airways', 'http://m.jazeeraairways.com/Pages/WebCheckIn.aspx', NULL),
('JC', 'Jal Express', 'https://www121.jal.co.jp/JmbWeb/JR/Dispatcher_ja.do', NULL),
('JE0', 'Mango', 'http://www.flymango.com/wf/checkin.aspx', NULL),
('JJ', 'Tam Linhas Aereas', 'https://checkin.si.amadeus.net/1ASIHSSCWEBJJ/sscwjj/checkin', NULL),
('JL', 'Japan Airlines', 'https://www.5931.jal.co.jp/rsvInter/MemberCertForWebCkin.do', NULL),
('JM', 'Air Jamaica', '', NULL),
('JO', 'Jalways', 'https://www.5931.jal.co.jp/rsvInter/LoginPageDisp.do', NULL),
('JP', 'Adria Airways', 'https://www.web-check-in.com/', NULL),
('JQ', 'Jetstar', 'https://m.jetstar.com/#/check-in?culture=en-AU', NULL),
('JU', 'Air Serbia', 'https://www.airserbia.com/en/web-check-in', NULL),
('K2', 'Eurolot', 'http://www.lot.com/lv/en/web-check-in', NULL),
('KA', 'Dragonair', 'http://www.dragonair.com/ka/en_HK/manage-booking/check-in/check-in-now.html', NULL),
('KC', 'Air Astana', 'http://airastana.com/global/My-Booking/Online-Check-In', NULL),
('KF', 'Blue1', 'https://www.flysas.com/en/uk/Generic/Services/Checkin/', NULL),
('KK', 'AtlasGlobal', 'https://online.atlasglb.com/AtlasOnline/online-check-in/', '{\"action\":\"https://online.atlasglb.com/AtlasOnline/onlineCheckIn/passengerList.kk\",\"method\":\"post\",\"fields\":{\"lastName\":\"{lastName}\",\"pnrNo\":\"{pnr}\",\"lang\":\"TR\",\"pagecode\":\"ONLINECHECKIN\"}}'),
('KL', 'KLM Royal Dutch Airlines', 'https://www.klm.com/travel/tr_tr/prepare_for_travel/checkin_options/internet_checkin/ici_jffp_app.htm', NULL),
('KM', 'Air Malta', 'https://reservations.airmalta.com/maltamobile/reservation-search', NULL),
('KP', 'Asky', 'http://www.flyasky.com/asky/en/Services/Ground-services/Check-in-57.aspx', NULL),
('KQ', 'Kenya Airways', 'https://m.kenya-airways.com/checkin.html', NULL),
('KR', 'Air Bishkek', 'https://www.hahnair.com/en/agents/airline/kr', NULL),
('KS', 'Penair', 'https://wci-prod.sabresonicweb.com/SSW2010/KSC0/checkin.html?execution=e1s1', NULL),
('KU', 'Kuwait Airways', 'https://m.kuwaitairways.com/en-mobile/Pages/olci.aspx', NULL),
('KX', 'Cayman Airways', 'https://m.caymanairways.com/SSW2010/KXM0/checkin/#checkin/e2s1', NULL),
('L6', 'Tam Air', 'https://checkin.si.amadeus.net/1ASIHSSCWEBJJ/sscwjj/checkin', NULL),
('LA', 'Lan Airlines', 'http://www.lan.com/cgi-bin/checkin/paso1.cgi', NULL),
('LG', 'Luxair', 'https://www.luxair.lu/en/flight/checkin?lastName=&pnr=&identifierType=bookingref', NULL),
('LH', 'Lufthansa', 'https://www.lufthansa.com/online/portal/lh/tr/informationservice/checkin/web_checkin?l=en&cid=1000379', NULL),
('LO', 'LOT Polish Airlines', 'http://m.lot.com/tr/en/check-your-reservation', NULL),
('LP', 'Lanperu', 'http://www.lan.com/cgi-bin/checkin/paso1.cgi', NULL),
('LR', 'Lacsa', 'https://www.avianca.com/otr/en/electronic-services/web-check-in', NULL),
('LS', 'Jet2.Com', 'https://reservations.jet2.com/Mobile/Manage#contentmmb', NULL),
('LT', 'LTU Intl Airways', 'http://www.lan.com/cgi-bin/checkin/paso1.cgi', NULL),
('LU', 'Lan Express', 'https://www.latam.com/en_ue/apps/personas/checkinunified#booking-search-page', NULL),
('LX', 'Swiss International Airlines', 'https://www.swiss.com/gb/EN/prepare/check-in/web-check-in', NULL),
('LY', 'El Al Israel Airlines', 'https://www4.elal.co.il/checkInWeb/initCheckIn.do?LANG=EN', NULL),
('M9', 'Motor-Sich JSC', 'http://flymotorsich.com/en/webcheck-in/', NULL),
('ME', 'Middle East Airlines', 'https://www.mea.com.lb/english/planbook/pages/onlinecheckin.aspx', NULL),
('MF', 'Xiamen Airlines', 'http://www.xiamenair.com/cn/en/', NULL),
('MH', 'Malaysia Airlines', 'http://fastcheck.inf.br/', NULL),
('MI', 'Silkair', 'http://www.silkair.com/checkIN-flow.form?execution=e1s1', NULL),
('MJ', 'Mihin Lanka', 'http://www.srilankan.com/en_uk/qa#olci', NULL),
('MK', 'Air Mauritius', 'http://www.airmauritius.com/index_oc.htm', NULL),
('MN', 'Comair', 'http://www.comair.co.za/media-room/media-statements-list/check-in-online-from-anywhere', NULL),
('MN0', 'Kulula.Com', 'http://www.kulula.com/manage-my-booking/flights/check-in', NULL),
('MS', 'Egyptair', 'https://checkin.si.amadeus.net/1ASIHSSCWEBMS/sscwms/checkin', NULL),
('MT', 'Thomas Cook Airlines', 'https://www.thomascookairlines.com/RetrieveBooking.aspx', NULL),
('MX', 'Mexicana', 'https://checkin.si.amadeus.net/1ASIHSSCWEBMX/sscwmx/checkin', NULL),
('N3', 'Aerolineas Mas', 'http://www.aerolineas.com.ar/reservasservicios/webcheckin', NULL),
('ND', 'Airlink', 'https://checkin.si.amadeus.net/1ASIHSSCWEBSA/sscwsa/checkin?LANGUAGE=EN', NULL),
('NF', 'Air Vanuatu', 'https://checkin.si.amadeus.net/1ASIHSSCWEBNF/sscwnf/checkin', NULL),
('NG', 'Lauda Air', '', NULL),
('NH', 'All Nippon Airways', 'https://www.ana.co.jp/asw/index.jsp?type=ie', NULL),
('NI', 'Portugalia', 'http://www.flytap.com/Portugal/en/PlanBook/PrepareforTravel/Checkin/CheckinOnline', NULL),
('NK', 'Spirit Airlines', 'https://www.spirit.com/Default.aspx#check-in', NULL),
('NO', 'Neos Spa', 'http://www.neosair.it/it/prenotazioni/webcheck-in', NULL),
('NT', 'Binter Canarias', 'https://www.bintercanarias.com/eng/services/online-check-in', NULL),
('NX', 'Air Macau', 'http://www.airmacau.com.mo/eng/', NULL),
('NY', 'Air Iceland', 'https://checkin.si.amadeus.net/1ASIHSSCWEBFI/sscwfi/checkin?IIdentificationBookingRef=&ln=en', NULL),
('NZ', 'Air New Zealand', 'https://flightbookings.airnewzealand.com/vmanage/actions/retrieve/webcheck', NULL),
('O2', 'Jet Air', 'http://www.jetairways.com/EN/IN/PlanYourTravel/WebCheck-in.aspx', NULL),
('O6', 'Oceanair Linhas Aereas', 'https://www.avianca.com.br/web-check-in1', NULL),
('OA', 'OLYMPIC AIR', 'https://www.olympicair.com/en', NULL),
('OB', 'Boliviana De Aviacion', 'https://portal.iberia.es/webcki_handling/busquedaLoader.do?aerolinea=OB', NULL),
('OF', 'Air Finland', 'http://www.finnair.com/CH/GB/home-all-booking-options?SERVICECARD=3', NULL),
('OK', 'Czech Airlines', 'https://checkin.si.amadeus.net/1ASIHSSCWEB09/sscw09/checkin?ghAirline=LO&ln=en', NULL),
('OP', 'Olympic Airlines', 'https://www.olympicair.com/en', NULL),
('OS', 'Austrian Airlines', 'https://www.austrian.com/?sc_layer=checkIn', NULL),
('OU', 'Croatia Airlines', 'http://www.croatiaairlines.com/Plan-Book/check-in/Web-check-in/', NULL),
('OV', 'Estonian Air', 'https://www.cleartrip.com/flight-booking/estonian-air-airlines-web-check-in.html', NULL),
('OZ', 'Asiana Airlines', 'https://mcheckin.flyasiana.com/DCS/I/EN/DefaultReservation.do?initApp=', NULL),
('P3', 'Passaredo', 'https://www.voepassaredo.com.br/checkinweb/login.asp', NULL),
('P5', 'Aerorepublica', 'https://checkin.copaair.com/web/check-in?execution=e1s1', NULL),
('P9', 'Peruvian Air Lines', 'http://www.peruvian.pe/es', NULL),
('PB', 'Provincial Airlines', 'https://book.palairlines.ca/SearchResCheckin.aspx?lang=en', NULL),
('PC', 'Pegasus', 'http://www.flypgs.com/pegasus-ile-ucus/online-islemler/internet-check-in.aspx', '{\"action\":\"https://mobile.flypgs.com/#/checkin/flights\",\"method\":\"get\",\"fields\":{\"NAME\":\"{firstName}\",\"SURNAME\":\"{lastName}\",\"PNR\":\"{pnr}\",\"IS_MAIN\":\"true\"}}'),
('PD', 'Porter Airlines', 'https://www.flyporter.com/Flight/Web-Check-In?culture=en-US', NULL),
('PG', 'Bangkok Airways', 'https://m.bangkokair.com/SSW2010/PGM0/checkin/#checkin/e1s1', NULL),
('PR', 'Philippine Airlines', 'https://www.philippineairlines.com/en', NULL),
('PS', 'Ukraine International Airlines', 'https://ocki.flyuia.com/checkin/#/login', NULL),
('PW', 'Precision Air', 'https://www.precisionairtz.com/index.php?id=17', NULL),
('PX', 'Air Niugini', 'http://airniugini.com.pg/mobile/check-in/', NULL),
('PY', 'Surinam Airways', 'https://wn.dsolution.eu/slm/dsuite/ici/search.aspx?lan=EN', NULL),
('PZ', 'Tam Mercosur', 'https://checkin.si.amadeus.net/1ASIHSSCWEBJJ/sscwjj/checkin', NULL),
('Q9', 'Arik Niger', 'https://fly.arikair.com/CKIN/OLCI/FlightInfo.aspx', NULL),
('QA', 'Click Grupo Mexicana', 'https://aeromexico.com/en/travel-with-aeromexico/check-in/web-check-in/?site=us', NULL),
('QF', 'Qantas Airways', 'http://www.qantas.com.au/travel/airlines/checkin/global/en#online-check-in', NULL),
('QK', 'Air Canada Jazz', 'https://res.aircanada.com/oci/start?_flowExecutionKey=_cDAD34D66-B9B1-062E-ECA1-D10EA37D9E8E_kF5D778FF-39DD-882A-0460-5EE2379D9700', NULL),
('QQ', 'Alliance Airlines', 'http://apps.allianceairlines.com.au/AllianceWebCheckIn/WebCheckIn.aspx', NULL),
('QR', 'Qatar Airways', 'https://cki.qatarairways.com/cki-web/pages/search.xhtml', NULL),
('QS', 'Smart Wings', 'http://www.smartwings.com/en/travel-info/check/', NULL),
('R3', 'Yakutia Air Company', 'http://www.yakutia.aero/en/information/veb-registratsiya-na-reis', NULL),
('RC', 'Atlantic Airways', 'https://checkin.si.amadeus.net/1ASIHSSCWEBRC/sscwrc/checkin?ln=en', NULL),
('RD', 'Ryan International', 'https://www.bookryanair.com/SkySales/Booking.aspx?culture=en-gb&amp;lc=en-gb#Security', NULL),
('RE', 'Aer Arann', 'https://www.aerlingus.com/travel-information/check-in-options/online/', NULL),
('RG', 'VRG Linhas Aereas Sa', 'http://checkininternet.voegol.com.br/', NULL),
('RH', 'Robin Hood Aviation', 'https://m.tigerair.com/booking/manage', NULL),
('RJ', 'Royal Jordanian', 'https://www.rj.com/en/info-and-tips/check-in-options/web-check-in', NULL),
('RO', 'Tarom', 'https://mc.tarom.ro/itravel/ocip.xhtml', NULL),
('S2', 'Jet Lite', 'https://www.jetairways.com/EN/FR/planyourtravel/web-check-in.aspx', NULL),
('S3', 'Santa Barbara Airlines', 'http://www.sata.pt/en/travel-with-us/web-check', NULL),
('S4', 'SATA International', 'https://www.sata.pt/en/travel-with-us/airport-check', NULL),
('S7', 'S7 Airlines', 'https://webcheckin.s7.ru/login.action', NULL),
('SA', 'South African Airways', 'https://www.flysaa.com/ae/en/manageMyTrip/onlineCheckin/onlineCheckIn.html', NULL),
('SB', 'Aircalin', 'https://checkin.si.amadeus.net/1ASIHSSCWEBSB/sscwsb/checkin?ln=en&width=800&height=600&type=W&Redirected=true', NULL),
('SC', 'Shandong Airlines', '', NULL),
('SG', 'Spicejet', 'https://book.spicejet.com/SearchWebCheckin.aspx', NULL),
('SI', 'Blue Islands', 'https://bh.cleartrip.com/flight-booking/blue-islands-airlines-web-check-in.html', NULL),
('SK', 'Scandinavian Airlines', '', NULL),
('SN', 'Brussels Airlines', 'https://checkin.brusselsairlines.com/CI/WebForms/PaxByQuery.aspx', NULL),
('SP', 'SATA Air Acores', 'http://www.sata.pt/en/travel-with-us/web-check', NULL),
('SQ', 'Singapore Airlines', 'http://www.singaporeair.com/checkIN-flow.form?execution=e2s1', NULL),
('SS', 'Corsair', 'https://checkin.si.amadeus.net/1ASIHSSCWEBSS/sscwss/checkin?ln=en', NULL),
('ST', 'Germania', 'https://www.flygermania.com/de-de/', NULL),
('SU', 'Aeroflot', 'http://www.aeroflot.ru/ru-en/information/checkin/web_checkin', NULL),
('SV', 'Saudi Arabian Airlines', 'http://www.saudia.com/portal/site/saudia/menuitem.187f088fe29f6bfa0524f9105d6981ca/?vgnextoid=8f9cca3b551e2410VgnVCM100000d59618acRCRD', NULL),
('SW', 'Air Namibia', 'https://icheck.sita.aero/iCheckWebMH/', NULL),
('SY', 'Sun Country', 'https://www.suncountry.com/Fly/Travel-Information/Check-In-Options.html', NULL),
('T0', 'Taca Peru', 'https://checkin.si.amadeus.net/static/PRD/JJ/#/checkin?appRedirected=true', NULL),
('TB', 'Jetairfly', 'https://iport.travelport.com/ici/(S(jodvgkoqxvrojxnrd1io1mqi))/Home.mvc?theme=jaf&lang=en', NULL),
('TF', 'Malmo Aviation', 'http://www.malmoaviation.se/en/business-travel/online-check-in', NULL),
('TG', 'Thai Airways Intl', 'https://www.thaiairways.com/en/index.page?', NULL),
('TH', 'BA Connect', 'http://www.britishairways.com/travel/olcilandingpageauthreq/public/en_gb', NULL),
('TK', 'Türk Hava Yolları', 'https://www.turkishairlines.com/tr-tr/ucak-bileti/rezervasyonu-yonet/', NULL),
('TM', 'Lam Mozambique', 'https://gaijinpot.scdn2.secure.raxcdn.com/wp-content/uploads/sites/4/2014/04/dotonburi.jpg', NULL),
('TO', 'Transavia France', 'https://www2.transavia.com/nl-NL/mijn-transavia/inchecken/inloggen/', NULL),
('TP', 'TAP Portugal', 'http://www.flytap.com/Portugal/en/PlanBook/PrepareforTravel/Checkin/CheckinOnline', NULL),
('TR', 'Tiger Airways', 'https://m.tigerair.com/booking/manage', NULL),
('TS', 'Air Transat', 'http://www.airtransat.ca/en/Air-Transat-Online-Check-In?ID=WEBCHECKIN&type=gamme&tmpl=GEN', NULL),
('TT', 'Tiger Airways Australia', 'https://m.tigerair.com/booking/manage', NULL),
('TU', 'Tunisair', 'http://www.tunisair.com/site/publish/content/default.asp?lang=en', NULL),
('TX', 'Air Caraibes', 'https://m.aircaraibes.com/', NULL),
('TY', 'Air Caledonie', 'http://eu.aircalin.com/en/flights-bookings/online-check-in', NULL),
('TZ0', 'ATA Airlines', 'http://www.airtran.com/Home.aspx', NULL),
('U2', 'easyJet', 'http://www.easyjet.com/en/flying/check-in-online', NULL),
('U6', 'Ural Airlines', 'http://www.uralairlines.ru/en/your-flight/register/online/', NULL),
('U7', 'Air Uganda', 'https://www.alternativeairlines.com/online-check-in', NULL),
('UA', 'United Airlines', 'https://mobile.united.com/CheckIn', NULL),
('UE', 'Nasair', 'https://booking.flynas.com/#/wci/search', NULL),
('UL', 'Srilankan Airlines', 'http://www.srilankan.com/en_uk/qa#olci', NULL),
('UN', 'Transaero Airlines', 'http://www.aeroflot.ru/ru-en/information/checkin/web_checkin', NULL),
('UO', 'Hong Kong Express Airways', 'https://m.hongkongairlines.com/html_en/checkin/checkin_index.html', NULL),
('US', 'US Airways', 'https://www.aa.com/reservation/flightCheckInViewReservationsAccess.do', NULL),
('UT', 'Utair Aviation', 'https://booking.utair.ru/is2009.new/web-checkin/conditions.jsf', NULL),
('UU', 'Air Austral', 'http://www.air-austral.com/en/prepare-your-flight/check-in-online.html', NULL),
('UX', 'AirEuropa', 'https://www.aireuropa.com/es/vuelos/checkin', NULL),
('V2', 'Vision Airlines', '', NULL),
('V3', 'Carpatair', '', NULL),
('VA', 'V Australia', 'https://checkin.virginaustralia.com/VAWebCheckIn/#', NULL),
('VD', 'Hennan Airlines', 'https://www.hainanairlines.com/US/US/Check-in', NULL),
('VJ', 'Africa Airways', 'https://checkin.si.amadeus.net/1ASIHSSCWEBSA/sscwsa/checkin?LANGUAGE=EN', NULL),
('VK', 'Virgin Nigeria', 'https://www.virgin-atlantic.com/en/gb/manageyourflights/diycheckin/index.jsp', NULL),
('VN', 'Vietnam Airlines', 'https://www.vietnamairlines.com/vn/en/travel-information/check-in', NULL),
('VO', 'Tyrolean Airways', 'https://tyrolean-airways-austrian.com/#onlinecheckin', NULL),
('VS', 'Virgin Atlantic', 'https://www.virgin-atlantic.com/en/gb/manageyourflights/diycheckin/index.jsp', NULL),
('VT', 'Air Tahiti', 'http://checkin.airtahiti.com/', NULL),
('VX', 'Virgin America', 'https://www.virginamerica.com/flight-check-in', NULL),
('VY', 'Vueling Airlines', 'http://www.vueling.com/en/vueling-services/check-in-online', NULL),
('W3', 'Arik Air', 'http://www.arikair.com/check-and-boarding', NULL),
('WA', 'KLM Cityhopper', 'https://www.klm.com/travel/tr_tr/prepare_for_travel/checkin_options/internet_checkin/ici_jffp_app.htm', NULL),
('WF', 'Wideroe', 'http://www.sas.no/en/misc/service_links_container/Checkin/?interm=true&nssexc=true&Neutral=True&BP=True', NULL),
('WK', 'Edelweiss Air', 'https://checkin.flyedelweiss.com/ck.fly#ck_retrieve', NULL),
('WN', 'Southwest Airlines Texas', 'http://www.southwest.com/flight/retrieveCheckinDoc.html?forceNewSession=yes', NULL),
('WP', 'Island Air', 'https://webres.islandair.com/VIBE/CheckIn/', NULL),
('WS', 'Westjet', 'https://www.westjet.com/en-ca/my-trips/check-in', NULL),
('WU', 'Wizz Air Ukraine Llc', 'https://wizzair.com/en-gb/information-and-services/booking-information/check-in-and-boarding#/', NULL),
('WX', 'Cityjet', 'http://www.cityjet.com/check-in-online/index.shtml', NULL),
('WY', 'Oman Air', 'http://www.omanair.com/en/my-bookings/online-check-in', NULL),
('X3', 'TUIfly', 'https://www.tuifly.com/Webcheckin.aspx?culture=en-GB', NULL),
('XC', 'Corendon Airlines', '', NULL),
('XK', 'CCM Airlines', 'http://www.aircorsica.com/enregistrement-en-ligne/?language=en', NULL),
('XM', 'Alitalia Express', 'https://www.alitalia.com/en_it/fly-alitalia/check-in/online-check-in.html', NULL),
('XQ', 'SunExpress', 'https://sun.sunexpress.com.tr/Common/SunICIFlightList.jsp?IS_MAIN=true&activeLanguage=TR&_ga=1.240582467.1536455133.1476195192', '{\r\n  \"action\": \"https:\\/\\/www.sunexpress.com\\/WebCheckIn\\/web\\/checkin\",\r\n  \"method\": \"get\",\r\n  \"fields\": {\r\n    \"mode\": \"webCheckIn\",\r\n    \"locale\": \"tr\",\r\n    \"firstName\": \"{firstName}\",\r\n    \"pnrNumber\": \"{pnr}\",\r\n    \"lastName\": \"{lastName}\"\r\n  }\r\n}'),
('XS', 'SITA', 'https://icheck.sita.aero/iCheckWebRO/', NULL),
('XU', 'African Express Airways', 'https://checkin.si.amadeus.net/1ASIHSSCWEBSA/sscwsa/checkin?LANGUAGE=EN', NULL),
('XW', 'Sky Express', 'http://www.skyexpress.gr/en-us/usefulinformation/checkin.aspx', NULL),
('XY', 'Nasair', 'https://booking.flynas.com/#/wci/search', NULL),
('XZ', 'South African Express', 'https://checkin.si.amadeus.net/1ASIHSSCWEBSA/sscwsa/checkin?LANGUAGE=EN', NULL),
('Y4', 'Volaris', 'https://reservaciones.volaris.com/Landing/ManageYourBooking?sr=wci&culture=en-US', NULL),
('YB', 'Borajet', NULL, '{\"action\":\"https://borajet.crane.aero/web/ICIPNRSearch.xhtml\",\"method\":\"get\",\"fields\":{\"name\":\"{firstName}\",\"surname\":\"{lastName}\",\"PNRNo\":\"{pnr}\",\"LANGUAGE\":\"TR\",\"PNRSearch\":\"\"}}'),
('YG', 'South Airlines', 'http://www.southwest.com/flight/retrieveCheckinDoc.html?int=GSUBNAV-AIR-CHECKIN&forceNewSession=yes', NULL),
('YM', 'Montenegro Airlines', 'http://www.montenegroairlines.com/en/home/gornja_navigacija/informacije_i_servis/checkin.html', NULL),
('YS', 'Regional', 'http://www.rex.com.au/Booking/WebCheckin.aspx', NULL),
('Z8', 'Amaszonas', 'https://apps.kiusys.com/webcheckin/Z8/index.php?lang=EN', NULL),
('Z9', 'Delta Connection', 'https://m.delta.com/?p=pnrSearchForm', NULL),
('ZB', 'Monarch Airlines', 'http://www.monarch.co.uk/faq/flights/online-check-in-scheduled-flights-only', NULL),
('ZI', 'Aigle Azur', 'https://checkin.si.amadeus.net/1ASIHSSCWEBZI/sscwzi/checkin?ln=fr', NULL),
('ZL', 'Regional Express', 'http://www.rex.com.au/Booking/WebCheckin.aspx', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flight_airport_codes`
--

CREATE TABLE `flight_airport_codes` (
  `id` int(11) NOT NULL,
  `AirportCode` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `AirportName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `KnownAs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AirportSlug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACKeywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Priority` smallint(6) DEFAULT NULL,
  `IsActive` smallint(6) NOT NULL,
  `Latitude` decimal(10,6) DEFAULT NULL,
  `Longitude` decimal(10,6) DEFAULT NULL,
  `CountryCode` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CityCode` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_booking`
--

CREATE TABLE `flight_booking` (
  `id` int(11) NOT NULL,
  `productId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pnr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceStatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `baseFare` decimal(10,2) NOT NULL,
  `serviceFee` decimal(10,2) NOT NULL,
  `taxFee` decimal(10,2) NOT NULL,
  `totalFare` decimal(10,2) NOT NULL,
  `reservationDate` datetime NOT NULL,
  `reservationExpiresAt` datetime NOT NULL,
  `operatingAirline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `shoppingFile_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_city_codes`
--

CREATE TABLE `flight_city_codes` (
  `id` int(11) NOT NULL,
  `CityCode` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `CityName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `KnownAs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CitySlug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `StateCode` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CityNameTurkish` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Latitude` decimal(10,6) DEFAULT NULL,
  `Longitude` decimal(10,6) DEFAULT NULL,
  `CountryCode` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_country_codes`
--

CREATE TABLE `flight_country_codes` (
  `CountryName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Continent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CountryNameTurkish` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CountryCode` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_insurance`
--

CREATE TABLE `flight_insurance` (
  `id` int(11) NOT NULL,
  `policyNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policySerialNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `isPromotional` tinyint(1) DEFAULT NULL,
  `passengers` longtext COLLATE utf8_unicode_ci,
  `insurancedFullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `netPrim` decimal(10,2) DEFAULT NULL,
  `netPrimEuro` decimal(10,2) DEFAULT NULL,
  `issueDate` datetime DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `HDIReferenceNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clauses` longtext COLLATE utf8_unicode_ci,
  `createdAt` datetime NOT NULL,
  `hasError` tinyint(1) DEFAULT NULL,
  `serviceError` longtext COLLATE utf8_unicode_ci,
  `shoppingFile_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_landing_cities_system`
--

CREATE TABLE `flight_landing_cities_system` (
  `id` int(11) NOT NULL,
  `pType` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rType` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cityCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_passenger`
--

CREATE TABLE `flight_passenger` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publicId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noPublicId` tinyint(1) NOT NULL,
  `birthdate` datetime NOT NULL,
  `sex` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `passengerType` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cellphone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `referenceId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isContact` tinyint(1) NOT NULL,
  `shoppingFile_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_payment`
--

CREATE TABLE `flight_payment` (
  `id` int(11) NOT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `paymentId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `errorMessage` longtext COLLATE utf8_unicode_ci,
  `cardHolder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cardNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `threeDGate` longtext COLLATE utf8_unicode_ci,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cardType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installment` tinyint(1) NOT NULL,
  `installmentBank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installmentCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installmentTotal` decimal(10,2) DEFAULT NULL,
  `installmentProgram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installmentCurrency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shoppingFile_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_promotion_codes`
--

CREATE TABLE `flight_promotion_codes` (
  `id` int(11) NOT NULL,
  `promotionCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isUsed` tinyint(1) NOT NULL,
  `dateUsed` datetime DEFAULT NULL,
  `shoppingFile_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_shoppings`
--

CREATE TABLE `flight_shoppings` (
  `id` int(11) NOT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `fileId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasError` tinyint(1) DEFAULT NULL,
  `serviceError` longtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `ifFinalized` tinyint(1) DEFAULT NULL,
  `isPriceChanged` tinyint(1) DEFAULT NULL,
  `isReservationCancelled` tinyint(1) DEFAULT NULL,
  `lastTransactionId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `contactFirstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactLastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactPhone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactMobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactPublicId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isDomestic` tinyint(1) NOT NULL,
  `grandTotal` decimal(10,2) NOT NULL,
  `currency` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `insuranceWanted` tinyint(1) DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originIsCity` tinyint(1) NOT NULL,
  `destinationIsCity` tinyint(1) NOT NULL,
  `departureDate` datetime NOT NULL,
  `returnDate` datetime DEFAULT NULL,
  `fareInfoMessages` longtext COLLATE utf8_unicode_ci,
  `isRefundable` tinyint(1) DEFAULT NULL,
  `invoiceLink` longtext COLLATE utf8_unicode_ci,
  `invoiceSent` tinyint(1) DEFAULT NULL,
  `unsubscribe` tinyint(1) DEFAULT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `promotionCode_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fos_group`
--

CREATE TABLE `fos_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fos_group`
--

INSERT INTO `fos_group` (`id`, `name`, `roles`) VALUES
(1, 'Credit View Limited', 'a:1:{i:0;s:24:\"ROLE_CREDIT_VIEW_LIMITED\";}'),
(2, 'Credit View All', 'a:2:{i:0;s:24:\"ROLE_CREDIT_VIEW_LIMITED\";i:1;s:20:\"ROLE_CREDIT_VIEW_ALL\";}'),
(3, 'Credit Edit Limited', 'a:2:{i:0;s:24:\"ROLE_CREDIT_VIEW_LIMITED\";i:1;s:24:\"ROLE_CREDIT_EDIT_LIMITED\";}'),
(4, 'Credit Edit All', 'a:4:{i:0;s:24:\"ROLE_CREDIT_VIEW_LIMITED\";i:1;s:20:\"ROLE_CREDIT_VIEW_ALL\";i:2;s:24:\"ROLE_CREDIT_EDIT_LIMITED\";i:3;s:20:\"ROLE_CREDIT_EDIT_ALL\";}'),
(5, 'Admin', 'a:5:{i:0;s:24:\"ROLE_CREDIT_VIEW_LIMITED\";i:1;s:20:\"ROLE_CREDIT_VIEW_ALL\";i:2;s:24:\"ROLE_CREDIT_EDIT_LIMITED\";i:3;s:20:\"ROLE_CREDIT_EDIT_ALL\";i:4;s:10:\"ROLE_ADMIN\";}'),
(8, 'SuperAdmin', 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}'),
(11, 'FlightAdmin', 'a:1:{i:0;s:17:\"ROLE_ADMIN_FLIGHT\";}'),
(14, 'AffiliateAdmin', 'a:1:{i:0;s:20:\"ROLE_ADMIN_AFFILIATE\";}'),
(15, 'FlightReports', 'a:1:{i:0;s:25:\"ROLE_ADMIN_FLIGHT_REPORTS\";}'),
(16, 'ContentAdmin', 'a:1:{i:0;s:18:\"ROLE_ADMIN_CONTENT\";}'),
(17, 'ROLE_ADMIN_ACCOUNTANT', 'a:1:{i:0;s:21:\"ROLE_ADMIN_ACCOUNTANT\";}'),
(20, 'ROLE_ADMIN_AGENT', 'a:1:{i:0;s:16:\"ROLE_ADMIN_AGENT\";}'),
(23, 'ROLE_ADMIN_FLIGHT_SETTINGS', 'a:1:{i:0;s:26:\"ROLE_ADMIN_FLIGHT_SETTINGS\";}'),
(29, 'ROLE_AGENT_REPORTS', 'a:1:{i:0;s:18:\"ROLE_AGENT_REPORTS\";}'),
(31, 'ROLE_USER_MANAGEMENT_LIMITED', 'a:1:{i:0;s:28:\"ROLE_USER_MANAGEMENT_LIMITED\";}');

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_user_group`
--

CREATE TABLE `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fos_user_user_group`
--

INSERT INTO `fos_user_user_group` (`user_id`, `group_id`) VALUES
(5, 5),
(5, 8),
(5, 11),
(5, 14),
(414, 1),
(414, 2),
(414, 3),
(414, 4),
(843, 5),
(843, 8),
(843, 11),
(843, 14),
(1013, 16),
(1179, 5),
(1179, 8),
(1179, 11),
(1179, 14),
(1179, 17),
(1179, 20),
(1181, 11),
(1181, 20),
(1205, 5),
(1205, 8),
(1205, 11),
(1205, 14),
(1312, 5),
(1381, 2),
(1381, 3),
(1381, 5),
(1807, 4),
(1807, 5),
(2246, 1),
(2246, 8),
(2979, 1),
(2979, 2),
(2979, 3),
(2979, 4),
(2979, 5),
(2979, 11),
(2979, 14),
(2979, 15),
(2979, 20),
(3314, 1),
(3314, 2),
(3314, 3),
(3314, 4),
(3314, 5),
(3314, 11),
(3314, 14),
(3314, 15),
(3314, 20),
(3378, 8),
(3409, 11),
(3409, 16),
(4358, 16),
(4844, 11),
(4844, 20),
(6364, 11),
(6364, 20),
(6364, 31),
(6418, 11),
(6844, 11),
(6844, 20),
(7051, 11),
(7051, 20),
(7051, 31),
(7279, 11),
(7279, 20),
(7355, 11),
(7355, 17),
(7355, 20),
(7355, 23),
(7355, 29),
(7448, 11),
(7448, 20),
(7802, 11),
(7802, 20),
(7802, 29),
(8461, 11),
(8461, 20),
(11342, 11),
(11342, 20),
(11360, 16),
(11483, 20),
(11924, 20),
(12062, 20),
(12224, 20),
(12377, 20),
(12380, 20),
(12383, 20),
(12386, 20),
(12811, 17),
(12811, 20),
(13211, 2),
(13537, 1),
(13861, 11),
(13861, 20),
(13867, 11),
(13867, 20),
(14077, 5),
(14077, 17),
(14317, 20),
(14398, 20),
(14479, 20),
(16075, 17),
(16075, 20),
(16111, 17),
(16111, 20),
(16153, 11),
(16153, 20),
(16330, 11),
(16330, 20),
(16525, 16),
(16555, 5),
(16561, 5),
(16588, 11),
(16588, 20),
(17752, 15),
(17752, 20),
(17752, 23),
(17752, 31),
(17929, 11),
(17929, 20),
(17935, 11),
(17935, 20),
(18043, 2),
(18043, 4),
(18043, 5),
(18043, 17),
(18043, 20),
(18091, 11),
(18091, 20),
(19669, 11),
(19669, 20),
(20353, 11),
(20353, 20),
(20965, 11),
(20965, 20),
(21190, 11),
(21190, 20),
(21196, 11),
(21196, 20),
(21421, 11),
(21421, 20),
(21505, 11),
(21505, 20),
(21511, 11),
(21511, 20),
(21829, 11),
(21829, 20),
(21835, 11),
(21835, 20),
(22582, 11),
(22582, 20),
(22699, 11),
(22699, 20),
(23311, 11),
(23311, 20),
(23824, 20),
(28297, 23),
(28297, 31),
(28483, 5),
(28483, 11),
(28483, 15),
(28483, 17),
(29029, 17),
(29029, 20),
(29076, 1),
(29076, 8),
(29076, 11),
(29076, 20);

-- --------------------------------------------------------

--
-- Table structure for table `loss_records`
--

CREATE TABLE `loss_records` (
  `id` int(11) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `provider_reference` varchar(255) DEFAULT NULL,
  `reference` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `cellphone` varchar(255) NOT NULL DEFAULT '',
  `amount` varchar(255) NOT NULL DEFAULT '',
  `loss_type_id` int(11) NOT NULL,
  `loss_source` varchar(255) NOT NULL DEFAULT '',
  `pay_type` varchar(255) NOT NULL DEFAULT '',
  `pay_method` varchar(255) NOT NULL DEFAULT '',
  `note` text,
  `issued_by` varchar(255) NOT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `pay_date` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loss_record_pay_types`
--

CREATE TABLE `loss_record_pay_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loss_record_pay_types`
--

INSERT INTO `loss_record_pay_types` (`id`, `domain`, `title`) VALUES
(1, 'flight', 'Gift Card'),
(2, 'flight', 'İade Edildi'),
(3, 'flight', 'Yeni Biletleme Yapıldı'),
(4, 'flight', 'Değişiklik Yapıldı'),
(5, 'flight', 'Encüzdan');

-- --------------------------------------------------------

--
-- Table structure for table `loss_record_types`
--

CREATE TABLE `loss_record_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loss_record_types`
--

INSERT INTO `loss_record_types` (`id`, `domain`, `title`) VALUES
(1, 'flight', 'Akıllı Aktarma'),
(2, 'flight', 'Multi Pnr'),
(3, 'flight', 'Akıllı Biletleme'),
(4, 'flight', 'Finalizasyon Zararları'),
(5, 'flight', 'Veritabanı Hatası'),
(6, 'flight', 'Sms Gitmemesi'),
(7, 'flight', 'Mail Gitmemesi'),
(8, 'flight', 'Uçak Noshow Debit'),
(9, 'flight', 'ADM'),
(10, 'flight', 'Bagaj Hatası'),
(11, 'flight', 'Memnuniyet'),
(12, 'flight', 'Test Pnr'),
(13, 'flight', '2 PR'),
(14, 'flight', 'THH / SAVCILIK'),
(15, 'flight', 'Diğer');

-- --------------------------------------------------------

--
-- Table structure for table `meta_rules`
--

CREATE TABLE `meta_rules` (
  `id` int(11) NOT NULL,
  `meta_id` int(11) NOT NULL,
  `domain` longtext COLLATE utf8_unicode_ci,
  `origin_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20180214061704'),
('20180214081701'),
('20180215084819'),
('20180216081331'),
('20180327055146'),
('20180706081105'),
('20181024141118'),
('20181025111849'),
('20181025131651'),
('20181126121657'),
('20190102081304'),
('20190103085738'),
('20190104120159'),
('20190116113636'),
('20190226103929'),
('20190227063017'),
('20190227125636'),
('20190305074813'),
('20190318075247'),
('20190520123332'),
('20190521082707'),
('20190617063644'),
('20190722120749'),
('20190725132708'),
('20190731104307'),
('20190731104308'),
('20190822071612'),
('20190903193756'),
('20190918120529'),
('20191016144549'),
('20191018072733'),
('20200128222540'),
('20200129063452');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_domestic` tinyint(1) NOT NULL,
  `is_international` tinyint(1) NOT NULL,
  `is_airport` tinyint(1) NOT NULL,
  `airport_code` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provider_schedulete`
--

CREATE TABLE `provider_schedulete` (
  `id` int(11) NOT NULL,
  `service` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `routes` smallint(6) NOT NULL,
  `startAt` datetime NOT NULL,
  `endAt` datetime DEFAULT NULL,
  `action` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `isRepeat` tinyint(1) NOT NULL,
  `isExecuted` tinyint(1) NOT NULL,
  `user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `processType` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_request`
--

CREATE TABLE `refund_request` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `status` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `booking_id` int(11) NOT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_logs`
--

CREATE TABLE `report_logs` (
  `id` int(11) NOT NULL,
  `log` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`name`, `value`) VALUES
('ads_dfp.anasayfa', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":true,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true}}}'),
('ads_dfp.bilgi', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":true,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":false,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":true,\"width\":320,\"height\":50}}}'),
('ads_dfp.galeri', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":false,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":true,\"width\":320,\"height\":50}}}'),
('ads_dfp.gsm', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":false,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":true,\"width\":320,\"height\":50}}}'),
('ads_dfp.internet', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":true,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":false,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":false,\"width\":320,\"height\":50}}}'),
('ads_dfp.kredi', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":true,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":false,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":true,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":true,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":true,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Focus_720x90_2\":{\"id\":21,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_460x35_2\":{\"id\":19,\"active\":true,\"width\":460,\"height\":35},\"EnuygunCom_460x35_3\":{\"id\":20,\"active\":true,\"width\":460,\"height\":35},\r\n    \"EnuygunCom_Mobile_320x50\": {\r\n      \"id\": 20,\r\n      \"active\": true,\r\n      \"width\": 320,\r\n      \"height\": 50\r\n    }}}'),
('ads_dfp.kredi-karti', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":true,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":true,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":false,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\r\n    \"EnuygunCom_Mobile_320x50\": {\r\n      \"id\": 19,\r\n      \"active\": true,\r\n      \"width\": 320,\r\n      \"height\": 50\r\n    }}}'),
('ads_dfp.mevduat', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":true,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":true,\"width\":320,\"height\":50}}}'),
('ads_dfp.mevduat_old', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":true,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":false,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":true,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":true,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true}}}'),
('ads_dfp.otel', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":false,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":true,\"width\":320,\"height\":50}}}'),
('ads_dfp.otel_country', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":false,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":true,\"width\":320,\"height\":50}}}'),
('ads_dfp.otel_detay', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":false,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":true,\"width\":320,\"height\":50}}}'),
('ads_dfp.otel_sehir', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":false,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":true,\"width\":320,\"height\":50}}}'),
('ads_dfp.otel_seo_page', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":false,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":false,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":true,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":true,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":true,\"width\":320,\"height\":50}}}'),
('ads_dfp.sigorta', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":true,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":false,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":true,\"width\":320,\"height\":50}}}'),
('ads_dfp.ucak', '{\"dfp_key\":\"4519939\",\"ads\":{\"EnuygunCom_Backgroun_1200x600\":{\"id\":1,\"active\":false,\"width\":1200,\"height\":600},\"EnuygunCom_Background_1200x600_2\":{\"id\":2,\"active\":false,\"width\":1200,\"height\":600},\"ENUYGUN_250x50\":{\"id\":3,\"active\":true,\"width\":250,\"height\":50},\"EnuygunCom_SideBar_250x250\":{\"id\":4,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_SideBar_250x250_2\":{\"id\":5,\"active\":true,\"width\":250,\"height\":250},\"EnuygunCom_120x600\":{\"id\":6,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-left\":{\"id\":7,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_120x600_fixed-right\":{\"id\":8,\"active\":false,\"width\":120,\"height\":600},\"EnuygunCom_300x600\":{\"id\":9,\"active\":true,\"width\":300,\"height\":600},\"EnuygunCom_400x35\":{\"id\":10,\"active\":false,\"width\":400,\"height\":35},\"EnuygunCom_460x35\":{\"id\":11,\"active\":false,\"width\":460,\"height\":35},\"EnuygunCom_990x90\":{\"id\":12,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Footer_990x90\":{\"id\":13,\"active\":false,\"width\":990,\"height\":90},\"EnuygunCom_Focus_720x90\":{\"id\":14,\"active\":false,\"width\":720,\"height\":90},\"EnuygunCom_Header_728x90\":{\"id\":15,\"active\":true,\"width\":728,\"height\":90},\"EnuygunCom_Footer_728x90\":{\"id\":16,\"active\":false,\"width\":728,\"height\":90},\"LinkReklam\":{\"id\":17,\"active\":false,\"width\":125,\"height\":125},\"EnuygunCom_300x100_scrolldown\":{\"id\":18,\"active\":true,\"width\":300,\"height\":100,\"showPartialAd\":true},\"EnuygunCom_300x250\":{\"id\":19,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_300x250_2\":{\"id\":20,\"active\":true,\"width\":300,\"height\":250},\"EnuygunCom_Mobile_320x50\":{\"id\":21,\"active\":false,\"width\":320,\"height\":50},\"EnuygunCom_285x226\":{\"id\":22,\"active\":true,\"width\":285,\"height\":226}}}'),
('cache:clear', '{\"clear\":true}'),
('credit_card.application_stats_cache', '{\"last_id\":133990}'),
('credit_loan_popup_form_flow_setting', '{\"ihtiyac\":{\"defaultValue\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":24,\"amount\":10000,\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}},\"default\":{\"garanti\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":48,\"amount\":10000,\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}},\"qnb-finansbank\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":24,\"amount\":10000,\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}},\"citibank\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":24,\"amount\":10000,\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}},\"isbank\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":48,\"amount\":10000,\"density\":{\"loan_index\":100,\"loan_details\":100,\"loan_index_mobile\":50,\"loan_details_mobile\":50}},\"ing-bank\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":48,\"amount\":10000,\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":50,\"loan_details_mobile\":50}},\"denizbank\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":24,\"amount\":10000,\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}},\"yapi-kredi\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":24,\"amount\":10000,\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}},\"teb\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":24,\"amount\":10000,\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}},\"abank\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":24,\"amount\":10000,\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}}}},\"konut\":{\"default\":{\"maxSteps\":4,\"completionStep\":2,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\PopupMortgageApplicationFormType\",\"applyToPool\":[\"garanti\",\"yapi-kredi\"]}},\"tasit\":{\"defaultValue\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":24,\"amount\":10000,\"loanType\":\"\",\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}},\"default\":{\"garanti\":{\"maxSteps\":1,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\GarantiVehicleLoanFormType\",\"term\":36,\"amount\":24000,\"loanType\":\"ihtiyac\",\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}},\"yapi-kredi\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":36,\"amount\":15000,\"loanType\":\"ihtiyac\",\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}},\"denizbank\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":36,\"amount\":15000,\"loanType\":\"ihtiyac\",\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}},\"isbank\":{\"maxSteps\":2,\"completionStep\":1,\"formType\":\"Enuygun\\\\CreditBundle\\\\Form\\\\Type\\\\SharedLoanFormType\",\"term\":48,\"amount\":30000,\"density\":{\"loan_index\":100,\"loan_details\":100,\"loan_index_mobile\":100,\"loan_details_mobile\":100},\"loanType\":\"ihtiyac\"},\"ing-bank\":{\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0},\"maxSteps\":0,\"completionStep\":0,\"formType\":null,\"term\":0,\"amount\":0,\"loanType\":\"\"},\"ddmortgage\":{\"density\":{\"loan_index\":0,\"loan_details\":0,\"loan_index_mobile\":0,\"loan_details_mobile\":0}}}}}'),
('credit.affiliate.sponsors', '{\"ihtiyac\":[1,3,18],\"konut\":[1,2,12]}'),
('credit.android.push.message', '{\"price\":\"\\u0130\\u015f Bankas\\u0131 Bayram Kredisi 5.000 TL 12 Ay %0,66\",\"id\":234,\"loanType\":1}'),
('credit.api.sponsored_bank_slugs', '{\"4650\":{\"ihtiyac\":[\"garanti\"]}}'),
('credit.application_pool_map', '{\"2\":{\"1\":[60,71]}}'),
('credit.application_stats_cache', '{\"started\":1,\"try\":0}'),
('credit.application_stats_cache_last_id', '{\"credit.application_stats_cache_last_id\":97}'),
('credit.application_stats_cache_query', '{\"started\":0}'),
('credit.application_stats_cache_verificator', '{\"last_id\":\"2131643\",\"started\":0}'),
('credit.application_stats_cache2', '{\"started\":1}'),
('credit.application_stats_cache2_verificator', '{\"started\":0,\"try\":0,\"last_id\":\"8218885\"}'),
('credit.blocked_banks.ihtiyac', '[]'),
('credit.blocked_loans', '[]'),
('credit.cost_table_ihtiyac', '{\"credit_amount\":\"50.000 TL\",\"credit_maturity\":\"48 Ay\",\"minimum_maturity\":\"3 Ay\",\"maximum_maturity\":\"48 Ay\",\"monthly_interest_rate\":\"% 1,36\",\"yearly_amount_rate\":\"% 21,8001\",\"monthly_installment_amount\":\"1.510,00 TL\",\"total_refund\":\"72.502,00 TL\"}'),
('credit.feedback_mail_ihtiyac', '{\"last_id\":\"2393249\"}'),
('credit.feedback_mail_konut', '{\"last_id\":\"2225243\"}'),
('credit.loan_popup_query_params', '{\"tasit\":{\"garanti\":{\"loanSubType\":12}}}'),
('credit.loan_table_placements.feast_loans_ihtiyac', '{\"1633\":{\"amount\":\"30000\",\"term\":\"48\",\"text\":\"Bayram Kredisi\\u2019nde 48 ay vade ve y\\u00fcksek tutarl\\u0131 krediler i\\u00e7in daha uygun faiz oran\\u0131 sunuluyor. %1,29\\u2019dan ba\\u015flayan faizlerle 500.000 TL\\u2019ye kadar kredi kullanabilirsiniz.\",\"image_url\":\"\"},\"1624\":{\"amount\":\"5000\",\"term\":\"48\",\"text\":\"6 Eyl\\u00fcl 2017 tarihine kadar devam edecek olan Geleneksel Bayram Kredisi kampanyas\\u0131yla %1,25\\u2019den ba\\u015flayan faizlerle 48 aya varan vadelerde 250.000 TL\\u2019ye kadar kredi kullanabilirsiniz.\",\"image_url\":\"\"},\"1117\":{\"amount\":\"10000\",\"term\":\"48\",\"text\":\"Ki\\u015fiye \\u00f6zel oranl\\u0131 ING Kredi kampanyas\\u0131yla %1,19\\u2019dan ba\\u015flayan faizlerle 50.000 TL\\u2019ye kadar kredi kullanabilirsiniz. \\u00dcstelik kredi notu 1.850 ve \\u00fczeri olanlar isterlerse taksit erteleme imkan\\u0131ndan da faydalan\\u0131p \\u00f6demelerine 2018\\u2019de ba\\u015flayabilirler.\",\"image_url\":\"\"},\"1061\":{\"amount\":\"7000\",\"term\":\"48\",\"text\":\"Akbank Direkt Kredi ile tan\\u0131\\u015f\\u0131n, \\u015fubeye gitmeden kredi kullan\\u0131n. Paran\\u0131z\\u0131 an\\u0131nda hesab\\u0131n\\u0131za aktar\\u0131n. Dilerseniz \\u00f6demelerinizi 3 ay erteleyebilirsiniz. Akbank Direkt kredi sigortal\\u0131 faiz oran\\u0131 %1,45.\",\"image_url\":\"\"}}'),
('credit.loan_table_placements.featured_loans_ihtiyac', '{\"1117\":[],\"686\":[],\"1339\":[]}'),
('credit.loan_table_placements.featured_loans_konut', '{\"1585\":[],\"695\":[],\"994\":[]}'),
('credit.loan_table_placements.featured_loans_tasit', '{\"829\":[],\"767\":[],\"764\":[],\"193\":[]}'),
('credit.loan_table_placements.new_year_loans_ihtiyac', '{\"1711\":{\"amount\":\"10000\",\"term\":\"48\",\"text\":\"\",\"image_url\":\"\"},\"1705\":{\"amount\":\"25000\",\"term\":\"48\",\"text\":\"\",\"image_url\":\"\"},\"1339\":{\"amount\":\"50000\",\"term\":\"48\",\"text\":\"\",\"image_url\":\"\"},\"686\":{\"amount\":\"5000\",\"term\":\"12\",\"text\":\"\",\"image_url\":\"\"}}'),
('credit.loan_table_placements.retirement_loans_ihtiyac', '{\"37\":{\"amount\":5000,\"term\":12}, \"23\":{\"amount\":5000,\"term\":24}, \"46\":{\"amount\":5000,\"term\":24}}'),
('credit.not_applied_bank_mail', '{\"last_id\":21369043,\"started\":0,\"try\":0}'),
('credit.not_applied_banks_mailer', '{\"banks\":[1, 3, 18, 6]}'),
('credit.pop_application.ihtiyac', '{\"0\":{\"title\":\"Odeabank\'tan size mesaj var\",\"description\":\"Yeni y\\u0131l dilekleriniz haz\\u0131rsa g\\u00fcnde 10 TL\'den ba\\u015flayan taksitlerle Odeabank\'ta Nakit Haz\\u0131r! Ayr\\u0131nt\\u0131l\\u0131 bilgi almak ve Hemen ba\\u015fvurmak i\\u00e7in t\\u0131klay\\u0131n.\", \"impression_url\":\"https://bs.serving-sys.com/BurstingPipe/adServer.bs?cn=tf&c=19&mc=imp&pli=19921931&PluID=0&ord=[timestamp]&rtu=-1\", \"click_url\": \"https://www.enuygun.com/kredi/ihtiyac/yonlendir/odeabank/kisiye-ozel-faiz-oranli-ihtiyac-kredisi/?ref=pop_application&rnd=[timestamp]\"}}'),
('credit.popunder.hyundai-range-aralik', '{\"active\":false,\"url\":\"http://www.adhood.com/adserver/go.php?zid=352428&bid=121511\", \"title\":\"Hyundai Range\"}'),
('credit.popup_settings', '{\"ihtiyac\":true,\"konut\":true,\"tasit\":true}'),
('credit.sidebar_bank_slugs', '{\"ihtiyac\":[\"garanti\",\"ing-bank\",\"isbank\"],\"konut\":[\"garanti\",\"denizbank\"],\"tasit\":[\"garanti\"]}'),
('credit.sidebar_exclude_loans', '{\"konut\":[913]}'),
('credit.sponsored_loan_ids', '[0]'),
('currency_rates', '{\"USD\":6.51598,\"AUD\":3.72646,\"DKK\":0.93209,\"EUR\":6.97297,\"GBP\":7.5538,\"CHF\":6.58578,\"SEK\":0.6223,\"CAD\":4.48688,\"KWD\":20.47607,\"NOK\":0.55338,\"SAR\":1.72369,\"JPY\":5.87001,\"RUB\":0.07873,\"TRY\":1}'),
('currency_rates_banknote_selling', '{\"USD\":6.6082,\"AUD\":3.8289,\"DKK\":0.94896,\"EUR\":7.0717,\"GBP\":7.6868,\"CHF\":6.7151,\"SEK\":0.63701,\"CAD\":4.587,\"KWD\":21.5917,\"NOK\":0.56442,\"SAR\":1.7706,\"JPY\":6.0135,\"RUB\":0.08222,\"TRY\":1}');
INSERT INTO `settings` (`name`, `value`) VALUES
('DomesticFlightPricesCache', '{\"ADA\":[{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Adana\",\"destinationCode\":\"ADAA\",\"destinationName\":\"Adana\",\"destinationSlug\":\"adana\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":52.99,\"totalFare\":\"68.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Adana\",\"originCode\":\"ADAA\",\"originName\":\"Adana\",\"originSlug\":\"adana\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":52.99,\"totalFare\":\"68.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Adana\",\"originCode\":\"ADAA\",\"originName\":\"Adana\",\"originSlug\":\"adana\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":67.99,\"totalFare\":\"83.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Adana\",\"originCode\":\"ADAA\",\"originName\":\"Adana\",\"originSlug\":\"adana\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":69.99,\"totalFare\":\"84.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Adana\",\"originCode\":\"ADAA\",\"originName\":\"Adana\",\"originSlug\":\"adana\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":69.99,\"totalFare\":\"84.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Adana\",\"destinationCode\":\"ADAA\",\"destinationName\":\"Adana\",\"destinationSlug\":\"adana\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":69.99,\"totalFare\":\"84.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Adana\",\"destinationCode\":\"ADAA\",\"destinationName\":\"Adana\",\"destinationSlug\":\"adana\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":69.99,\"totalFare\":\"84.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Adana\",\"destinationCode\":\"ADAA\",\"destinationName\":\"Adana\",\"destinationSlug\":\"adana\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":87.99,\"totalFare\":\"103.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"Adana\",\"originCode\":\"ADAA\",\"originName\":\"Adana\",\"originSlug\":\"adana\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":89.99,\"totalFare\":\"109.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Adana\",\"destinationCode\":\"ADAA\",\"destinationName\":\"Adana\",\"destinationSlug\":\"adana\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":109.99,\"totalFare\":\"129.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Adana\",\"originCode\":\"ADAA\",\"originName\":\"Adana\",\"originSlug\":\"adana\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":136.98,\"totalFare\":\"151.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Adana\",\"destinationCode\":\"ADAA\",\"destinationName\":\"Adana\",\"destinationSlug\":\"adana\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":156.98,\"totalFare\":\"171.98\",\"currency\":\"TRY\",\"direction\":1}],\"ADF\":[{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ad\\u0131yaman\",\"originCode\":\"ADFA\",\"originName\":\"Ad\\u0131yaman\",\"originSlug\":\"adiyaman\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":107.99,\"totalFare\":\"122.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Ad\\u0131yaman\",\"destinationCode\":\"ADFA\",\"destinationName\":\"Ad\\u0131yaman\",\"destinationSlug\":\"adiyaman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":107.99,\"totalFare\":\"122.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ad\\u0131yaman\",\"originCode\":\"ADFA\",\"originName\":\"Ad\\u0131yaman\",\"originSlug\":\"adiyaman\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Ad\\u0131yaman\",\"destinationCode\":\"ADFA\",\"destinationName\":\"Ad\\u0131yaman\",\"destinationSlug\":\"adiyaman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ad\\u0131yaman\",\"originCode\":\"ADFA\",\"originName\":\"Ad\\u0131yaman\",\"originSlug\":\"adiyaman\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ad\\u0131yaman\",\"originCode\":\"ADFA\",\"originName\":\"Ad\\u0131yaman\",\"originSlug\":\"adiyaman\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ad\\u0131yaman\",\"originCode\":\"ADFA\",\"originName\":\"Ad\\u0131yaman\",\"originSlug\":\"adiyaman\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Ad\\u0131yaman\",\"destinationCode\":\"ADFA\",\"destinationName\":\"Ad\\u0131yaman\",\"destinationSlug\":\"adiyaman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Ad\\u0131yaman\",\"destinationCode\":\"ADFA\",\"destinationName\":\"Ad\\u0131yaman\",\"destinationSlug\":\"adiyaman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":158.98,\"totalFare\":\"173.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Ad\\u0131yaman\",\"destinationCode\":\"ADFA\",\"destinationName\":\"Ad\\u0131yaman\",\"destinationSlug\":\"adiyaman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":158.98,\"totalFare\":\"173.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ad\\u0131yaman\",\"originCode\":\"ADFA\",\"originName\":\"Ad\\u0131yaman\",\"originSlug\":\"adiyaman\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":177,\"totalFare\":\"194\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Ad\\u0131yaman\",\"destinationCode\":\"ADFA\",\"destinationName\":\"Ad\\u0131yaman\",\"destinationSlug\":\"adiyaman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":195.99,\"totalFare\":\"212.99\",\"currency\":\"TRY\",\"direction\":1}],\"AJI\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"A\\u011fr\\u0131\",\"destinationCode\":\"AJIA\",\"destinationName\":\"A\\u011fr\\u0131\",\"destinationSlug\":\"agri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":182,\"totalFare\":\"199\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"A\\u011fr\\u0131\",\"destinationCode\":\"AJIA\",\"destinationName\":\"A\\u011fr\\u0131\",\"destinationSlug\":\"agri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":234,\"totalFare\":\"251\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"A\\u011fr\\u0131\",\"destinationCode\":\"AJIA\",\"destinationName\":\"A\\u011fr\\u0131\",\"destinationSlug\":\"agri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":262,\"totalFare\":\"279\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"A\\u011fr\\u0131\",\"originCode\":\"AJIA\",\"originName\":\"A\\u011fr\\u0131\",\"originSlug\":\"agri\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":282,\"totalFare\":\"299\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"A\\u011fr\\u0131\",\"originCode\":\"AJIA\",\"originName\":\"A\\u011fr\\u0131\",\"originSlug\":\"agri\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":300,\"totalFare\":\"317\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"A\\u011fr\\u0131\",\"originCode\":\"AJIA\",\"originName\":\"A\\u011fr\\u0131\",\"originSlug\":\"agri\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":300,\"totalFare\":\"317\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"A\\u011fr\\u0131\",\"originCode\":\"AJIA\",\"originName\":\"A\\u011fr\\u0131\",\"originSlug\":\"agri\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":300,\"totalFare\":\"317\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"A\\u011fr\\u0131\",\"destinationCode\":\"AJIA\",\"destinationName\":\"A\\u011fr\\u0131\",\"destinationSlug\":\"agri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":307,\"totalFare\":\"324\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"A\\u011fr\\u0131\",\"destinationCode\":\"AJIA\",\"destinationName\":\"A\\u011fr\\u0131\",\"destinationSlug\":\"agri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":307,\"totalFare\":\"324\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"A\\u011fr\\u0131\",\"destinationCode\":\"AJIA\",\"destinationName\":\"A\\u011fr\\u0131\",\"destinationSlug\":\"agri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":307,\"totalFare\":\"324\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"A\\u011fr\\u0131\",\"originCode\":\"AJIA\",\"originName\":\"A\\u011fr\\u0131\",\"originSlug\":\"agri\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":330,\"totalFare\":\"347\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"A\\u011fr\\u0131\",\"originCode\":\"AJIA\",\"originName\":\"A\\u011fr\\u0131\",\"originSlug\":\"agri\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":330,\"totalFare\":\"347\",\"currency\":\"TRY\",\"direction\":2}],\"ALA\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Almaata\",\"destinationCode\":\"ALAA\",\"destinationName\":\"Almaata\",\"destinationSlug\":\"almaty\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":488,\"totalFare\":\"544.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Almaata\",\"destinationCode\":\"ALAA\",\"destinationName\":\"Almaata\",\"destinationSlug\":\"almaty\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":560,\"totalFare\":\"616.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Almaata\",\"destinationCode\":\"ALAA\",\"destinationName\":\"Almaata\",\"destinationSlug\":\"almaty\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":560,\"totalFare\":\"616.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Almaata\",\"destinationCode\":\"ALAA\",\"destinationName\":\"Almaata\",\"destinationSlug\":\"almaty\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":560,\"totalFare\":\"616.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Almaata\",\"destinationCode\":\"ALAA\",\"destinationName\":\"Almaata\",\"destinationSlug\":\"almaty\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":600,\"totalFare\":\"656.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Almaata\",\"destinationCode\":\"ALAA\",\"destinationName\":\"Almaata\",\"destinationSlug\":\"almaty\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":600,\"totalFare\":\"656.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"UN\",\"operatingAirlineTitle\":\"Transaero Airlines\",\"origin\":\"Almaata\",\"originCode\":\"ALAA\",\"originName\":\"Almaata\",\"originSlug\":\"almaty\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":804.06,\"totalFare\":\"854.06\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"KC\",\"operatingAirlineTitle\":\"Air Astana\",\"origin\":\"Almaata\",\"originCode\":\"ALAA\",\"originName\":\"Almaata\",\"originSlug\":\"almaty\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1066.9,\"totalFare\":\"1116.9\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"KC\",\"operatingAirlineTitle\":\"Air Astana\",\"origin\":\"Almaata\",\"originCode\":\"ALAA\",\"originName\":\"Almaata\",\"originSlug\":\"almaty\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1066.9,\"totalFare\":\"1116.9\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Almaata\",\"originCode\":\"ALAA\",\"originName\":\"Almaata\",\"originSlug\":\"almaty\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1117.53,\"totalFare\":\"1167.53\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Almaata\",\"originCode\":\"ALAA\",\"originName\":\"Almaata\",\"originSlug\":\"almaty\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1117.53,\"totalFare\":\"1167.53\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Almaata\",\"originCode\":\"ALAA\",\"originName\":\"Almaata\",\"originSlug\":\"almaty\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1117.53,\"totalFare\":\"1167.53\",\"currency\":\"TRY\",\"direction\":2}],\"MZH\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Amasya\",\"originCode\":\"MZHA\",\"originName\":\"Amasya\",\"originSlug\":\"amasya\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":83.99,\"totalFare\":\"99.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Amasya\",\"destinationCode\":\"MZHA\",\"destinationName\":\"Amasya\",\"destinationSlug\":\"amasya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":84.99,\"totalFare\":\"100.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Amasya\",\"originCode\":\"MZHA\",\"originName\":\"Amasya\",\"originSlug\":\"amasya\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":137.99,\"totalFare\":\"153.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Amasya\",\"originCode\":\"MZHA\",\"originName\":\"Amasya\",\"originSlug\":\"amasya\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":137.99,\"totalFare\":\"153.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Amasya\",\"originCode\":\"MZHA\",\"originName\":\"Amasya\",\"originSlug\":\"amasya\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":137.99,\"totalFare\":\"153.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Amasya\",\"originCode\":\"MZHA\",\"originName\":\"Amasya\",\"originSlug\":\"amasya\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":181.98,\"totalFare\":\"197.98\",\"currency\":\"TRY\",\"direction\":2}],\"AMS\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Amsterdam\",\"originCode\":\"AMSA\",\"originName\":\"Amsterdam\",\"originSlug\":\"amsterdam\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":206,\"totalFare\":\"262.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Amsterdam\",\"destinationCode\":\"AMSA\",\"destinationName\":\"Amsterdam\",\"destinationSlug\":\"amsterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":248,\"totalFare\":\"304.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Amsterdam\",\"originCode\":\"AMSA\",\"originName\":\"Amsterdam\",\"originSlug\":\"amsterdam\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":268,\"totalFare\":\"324.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Amsterdam\",\"originCode\":\"AMSA\",\"originName\":\"Amsterdam\",\"originSlug\":\"amsterdam\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":268,\"totalFare\":\"324.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Amsterdam\",\"originCode\":\"AMSA\",\"originName\":\"Amsterdam\",\"originSlug\":\"amsterdam\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":268,\"totalFare\":\"324.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Amsterdam\",\"originCode\":\"AMSA\",\"originName\":\"Amsterdam\",\"originSlug\":\"amsterdam\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":294.99,\"totalFare\":\"337.53\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Amsterdam\",\"destinationCode\":\"AMSA\",\"destinationName\":\"Amsterdam\",\"destinationSlug\":\"amsterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":304.2,\"totalFare\":\"354.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Amsterdam\",\"destinationCode\":\"AMSA\",\"destinationName\":\"Amsterdam\",\"destinationSlug\":\"amsterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":304.2,\"totalFare\":\"354.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Amsterdam\",\"destinationCode\":\"AMSA\",\"destinationName\":\"Amsterdam\",\"destinationSlug\":\"amsterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":304.2,\"totalFare\":\"354.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Amsterdam\",\"originCode\":\"AMSA\",\"originName\":\"Amsterdam\",\"originSlug\":\"amsterdam\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":313,\"totalFare\":\"369.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Amsterdam\",\"destinationCode\":\"AMSA\",\"destinationName\":\"Amsterdam\",\"destinationSlug\":\"amsterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":333.2,\"totalFare\":\"383.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Amsterdam\",\"destinationCode\":\"AMSA\",\"destinationName\":\"Amsterdam\",\"destinationSlug\":\"amsterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":360,\"totalFare\":\"416.73\",\"currency\":\"TRY\",\"direction\":1}],\"ANK\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":34.99,\"totalFare\":\"50.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":34.99,\"totalFare\":\"50.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":64.99,\"totalFare\":\"80.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":71.99,\"totalFare\":\"87.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":88.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":88.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":151.99,\"totalFare\":\"167.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":152.99,\"totalFare\":\"168.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":173.99,\"totalFare\":\"189.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":184.99,\"totalFare\":\"200.99\",\"currency\":\"TRY\",\"direction\":1}],\"AYT\":[{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":32.99,\"totalFare\":\"48.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":42.99,\"totalFare\":\"58.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":46.99,\"totalFare\":\"62.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":52.99,\"totalFare\":\"68.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":88.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":88.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":142.99,\"totalFare\":\"158.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":152.99,\"totalFare\":\"168.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":173.99,\"totalFare\":\"189.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":184.99,\"totalFare\":\"200.99\",\"currency\":\"TRY\",\"direction\":1}],\"ATH\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Atina\",\"destinationCode\":\"ATHA\",\"destinationName\":\"Atina\",\"destinationSlug\":\"ath-athens\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":98,\"totalFare\":\"154.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Atina\",\"destinationCode\":\"ATHA\",\"destinationName\":\"Atina\",\"destinationSlug\":\"ath-athens\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":170,\"totalFare\":\"226.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Atina\",\"destinationCode\":\"ATHA\",\"destinationName\":\"Atina\",\"destinationSlug\":\"ath-athens\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":170,\"totalFare\":\"226.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Atina\",\"destinationCode\":\"ATHA\",\"destinationName\":\"Atina\",\"destinationSlug\":\"ath-athens\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":170,\"totalFare\":\"226.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"A3\",\"operatingAirlineTitle\":\"Aegean Airlines\",\"origin\":\"Atina\",\"originCode\":\"ATHA\",\"originName\":\"Atina\",\"originSlug\":\"ath-athens\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":180.33,\"totalFare\":\"230.33\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Atina\",\"originCode\":\"ATHA\",\"originName\":\"Atina\",\"originSlug\":\"ath-athens\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":198,\"totalFare\":\"254.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Atina\",\"destinationCode\":\"ATHA\",\"destinationName\":\"Atina\",\"destinationSlug\":\"ath-athens\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":210,\"totalFare\":\"266.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Atina\",\"destinationCode\":\"ATHA\",\"destinationName\":\"Atina\",\"destinationSlug\":\"ath-athens\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":210,\"totalFare\":\"266.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Atina\",\"originCode\":\"ATHA\",\"originName\":\"Atina\",\"originSlug\":\"ath-athens\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":245,\"totalFare\":\"301.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Atina\",\"originCode\":\"ATHA\",\"originName\":\"Atina\",\"originSlug\":\"ath-athens\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":245,\"totalFare\":\"301.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Atina\",\"originCode\":\"ATHA\",\"originName\":\"Atina\",\"originSlug\":\"ath-athens\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":290,\"totalFare\":\"346.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Atina\",\"originCode\":\"ATHA\",\"originName\":\"Atina\",\"originSlug\":\"ath-athens\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":429.85,\"totalFare\":\"479.85\",\"currency\":\"TRY\",\"direction\":2}],\"BAK\":[{\"operatingAirline\":\"J2\",\"operatingAirlineTitle\":\"Azerbaijan Airlines\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Bak\\u00fc\",\"destinationCode\":\"BAKA\",\"destinationName\":\"Bak\\u00fc\",\"destinationSlug\":\"baku\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":372.58,\"totalFare\":\"422.58\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Bak\\u00fc\",\"originCode\":\"BAKA\",\"originName\":\"Bak\\u00fc\",\"originSlug\":\"baku\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":382,\"totalFare\":\"438.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Bak\\u00fc\",\"originCode\":\"BAKA\",\"originName\":\"Bak\\u00fc\",\"originSlug\":\"baku\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":382,\"totalFare\":\"438.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Bak\\u00fc\",\"originCode\":\"BAKA\",\"originName\":\"Bak\\u00fc\",\"originSlug\":\"baku\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":382,\"totalFare\":\"438.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"J2\",\"operatingAirlineTitle\":\"Azerbaijan Airlines\",\"origin\":\"Bak\\u00fc\",\"originCode\":\"BAKA\",\"originName\":\"Bak\\u00fc\",\"originSlug\":\"baku\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":412.38,\"totalFare\":\"462.38\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Bak\\u00fc\",\"originCode\":\"BAKA\",\"originName\":\"Bak\\u00fc\",\"originSlug\":\"baku\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":427,\"totalFare\":\"483.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Bak\\u00fc\",\"originCode\":\"BAKA\",\"originName\":\"Bak\\u00fc\",\"originSlug\":\"baku\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":427,\"totalFare\":\"483.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Bak\\u00fc\",\"destinationCode\":\"BAKA\",\"destinationName\":\"Bak\\u00fc\",\"destinationSlug\":\"baku\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":457,\"totalFare\":\"513.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Bak\\u00fc\",\"destinationCode\":\"BAKA\",\"destinationName\":\"Bak\\u00fc\",\"destinationSlug\":\"baku\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":457,\"totalFare\":\"513.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Bak\\u00fc\",\"destinationCode\":\"BAKA\",\"destinationName\":\"Bak\\u00fc\",\"destinationSlug\":\"baku\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":457,\"totalFare\":\"513.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Bak\\u00fc\",\"destinationCode\":\"BAKA\",\"destinationName\":\"Bak\\u00fc\",\"destinationSlug\":\"baku\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":497,\"totalFare\":\"553.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Bak\\u00fc\",\"destinationCode\":\"BAKA\",\"destinationName\":\"Bak\\u00fc\",\"destinationSlug\":\"baku\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":497,\"totalFare\":\"553.73\",\"currency\":\"TRY\",\"direction\":1}],\"BKK\":[{\"operatingAirline\":\"PS\",\"operatingAirlineTitle\":\"Ukraine Intl Airlines\",\"origin\":\"Bangkok\",\"originCode\":\"BKKA\",\"originName\":\"Bangkok\",\"originSlug\":\"bangkok\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1045.86,\"totalFare\":\"1095.86\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Bangkok\",\"destinationCode\":\"BKKA\",\"destinationName\":\"Bangkok\",\"destinationSlug\":\"bangkok\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1130.53,\"totalFare\":\"1180.53\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Bangkok\",\"originCode\":\"BKKA\",\"originName\":\"Bangkok\",\"originSlug\":\"bangkok\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1246.21,\"totalFare\":\"1296.21\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Bangkok\",\"destinationCode\":\"BKKA\",\"destinationName\":\"Bangkok\",\"destinationSlug\":\"bangkok\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1277.35,\"totalFare\":\"1327.35\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AB\",\"operatingAirlineTitle\":\"Air Berlin\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Bangkok\",\"destinationCode\":\"BKKA\",\"destinationName\":\"Bangkok\",\"destinationSlug\":\"bangkok\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1398.06,\"totalFare\":\"1448.06\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Bangkok\",\"destinationCode\":\"BKKA\",\"destinationName\":\"Bangkok\",\"destinationSlug\":\"bangkok\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1561.23,\"totalFare\":\"1611.23\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Bangkok\",\"destinationCode\":\"BKKA\",\"destinationName\":\"Bangkok\",\"destinationSlug\":\"bangkok\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1561.23,\"totalFare\":\"1611.23\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Bangkok\",\"destinationCode\":\"BKKA\",\"destinationName\":\"Bangkok\",\"destinationSlug\":\"bangkok\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1565.23,\"totalFare\":\"1615.23\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KC\",\"operatingAirlineTitle\":\"Air Astana\",\"origin\":\"Bangkok\",\"originCode\":\"BKKA\",\"originName\":\"Bangkok\",\"originSlug\":\"bangkok\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1682.56,\"totalFare\":\"1732.56\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Bangkok\",\"originCode\":\"BKKA\",\"originName\":\"Bangkok\",\"originSlug\":\"bangkok\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1809.89,\"totalFare\":\"1859.89\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"KC\",\"operatingAirlineTitle\":\"Air Astana\",\"origin\":\"Bangkok\",\"originCode\":\"BKKA\",\"originName\":\"Bangkok\",\"originSlug\":\"bangkok\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2012.61,\"totalFare\":\"2062.61\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"KC\",\"operatingAirlineTitle\":\"Air Astana\",\"origin\":\"Bangkok\",\"originCode\":\"BKKA\",\"originName\":\"Bangkok\",\"originSlug\":\"bangkok\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2012.61,\"totalFare\":\"2062.61\",\"currency\":\"TRY\",\"direction\":2}],\"BCN\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Barselona\",\"originCode\":\"BCNA\",\"originName\":\"Barselona\",\"originSlug\":\"barcelona\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":273,\"totalFare\":\"329.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Barselona\",\"destinationCode\":\"BCNA\",\"destinationName\":\"Barselona\",\"destinationSlug\":\"barcelona\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":283,\"totalFare\":\"339.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Barselona\",\"originCode\":\"BCNA\",\"originName\":\"Barselona\",\"originSlug\":\"barcelona\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":335,\"totalFare\":\"391.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Barselona\",\"originCode\":\"BCNA\",\"originName\":\"Barselona\",\"originSlug\":\"barcelona\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":335,\"totalFare\":\"391.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Barselona\",\"originCode\":\"BCNA\",\"originName\":\"Barselona\",\"originSlug\":\"barcelona\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":335,\"totalFare\":\"391.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Barselona\",\"destinationCode\":\"BCNA\",\"destinationName\":\"Barselona\",\"destinationSlug\":\"barcelona\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":355,\"totalFare\":\"411.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Barselona\",\"destinationCode\":\"BCNA\",\"destinationName\":\"Barselona\",\"destinationSlug\":\"barcelona\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":355,\"totalFare\":\"411.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Barselona\",\"destinationCode\":\"BCNA\",\"destinationName\":\"Barselona\",\"destinationSlug\":\"barcelona\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":355,\"totalFare\":\"411.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Barselona\",\"originCode\":\"BCNA\",\"originName\":\"Barselona\",\"originSlug\":\"barcelona\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":380,\"totalFare\":\"436.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Barselona\",\"destinationCode\":\"BCNA\",\"destinationName\":\"Barselona\",\"destinationSlug\":\"barcelona\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":395,\"totalFare\":\"451.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Barselona\",\"destinationCode\":\"BCNA\",\"destinationName\":\"Barselona\",\"destinationSlug\":\"barcelona\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":395,\"totalFare\":\"451.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Barselona\",\"originCode\":\"BCNA\",\"originName\":\"Barselona\",\"originSlug\":\"barcelona\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":543.33,\"totalFare\":\"593.33\",\"currency\":\"TRY\",\"direction\":2}],\"BAL\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Batman\",\"destinationCode\":\"BALA\",\"destinationName\":\"Batman\",\"destinationSlug\":\"batman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":119.99,\"totalFare\":\"135.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Batman\",\"originCode\":\"BALA\",\"originName\":\"Batman\",\"originSlug\":\"batman\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":140.99,\"totalFare\":\"156.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Batman\",\"originCode\":\"BALA\",\"originName\":\"Batman\",\"originSlug\":\"batman\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":194.99,\"totalFare\":\"210.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Batman\",\"originCode\":\"BALA\",\"originName\":\"Batman\",\"originSlug\":\"batman\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":194.99,\"totalFare\":\"210.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Batman\",\"originCode\":\"BALA\",\"originName\":\"Batman\",\"originSlug\":\"batman\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":194.99,\"totalFare\":\"210.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Batman\",\"destinationCode\":\"BALA\",\"destinationName\":\"Batman\",\"destinationSlug\":\"batman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":209.98,\"totalFare\":\"224.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Batman\",\"originCode\":\"BALA\",\"originName\":\"Batman\",\"originSlug\":\"batman\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":270.98,\"totalFare\":\"286.98\",\"currency\":\"TRY\",\"direction\":2}],\"BUS\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Batum\",\"originCode\":\"BUSA\",\"originName\":\"Batum\",\"originSlug\":\"batumi\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":284.39,\"totalFare\":\"334.39\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Batum\",\"destinationCode\":\"BUSA\",\"destinationName\":\"Batum\",\"destinationSlug\":\"batumi\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":291.35,\"totalFare\":\"341.35\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Batum\",\"originCode\":\"BUSA\",\"originName\":\"Batum\",\"originSlug\":\"batumi\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":440.44,\"totalFare\":\"490.44\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Batum\",\"originCode\":\"BUSA\",\"originName\":\"Batum\",\"originSlug\":\"batumi\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":440.44,\"totalFare\":\"490.44\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Batum\",\"originCode\":\"BUSA\",\"originName\":\"Batum\",\"originSlug\":\"batumi\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":440.44,\"totalFare\":\"490.44\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Batum\",\"originCode\":\"BUSA\",\"originName\":\"Batum\",\"originSlug\":\"batumi\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":440.44,\"totalFare\":\"490.44\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Batum\",\"originCode\":\"BUSA\",\"originName\":\"Batum\",\"originSlug\":\"batumi\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":440.44,\"totalFare\":\"490.44\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Batum\",\"destinationCode\":\"BUSA\",\"destinationName\":\"Batum\",\"destinationSlug\":\"batumi\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":532.4,\"totalFare\":\"582.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Batum\",\"destinationCode\":\"BUSA\",\"destinationName\":\"Batum\",\"destinationSlug\":\"batumi\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":532.4,\"totalFare\":\"582.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Batum\",\"destinationCode\":\"BUSA\",\"destinationName\":\"Batum\",\"destinationSlug\":\"batumi\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":532.4,\"totalFare\":\"582.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Batum\",\"destinationCode\":\"BUSA\",\"destinationName\":\"Batum\",\"destinationSlug\":\"batumi\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":532.4,\"totalFare\":\"582.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Batum\",\"destinationCode\":\"BUSA\",\"destinationName\":\"Batum\",\"destinationSlug\":\"batumi\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":536.4,\"totalFare\":\"586.4\",\"currency\":\"TRY\",\"direction\":1}],\"BEG\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Belgrad\",\"destinationCode\":\"BEGA\",\"destinationName\":\"Belgrad\",\"destinationSlug\":\"belgrade\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":138,\"totalFare\":\"194.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"A3\",\"operatingAirlineTitle\":\"Aegean Airlines\",\"origin\":\"Belgrad\",\"originCode\":\"BEGA\",\"originName\":\"Belgrad\",\"originSlug\":\"belgrade\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":199.4,\"totalFare\":\"249.4\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Belgrad\",\"destinationCode\":\"BEGA\",\"destinationName\":\"Belgrad\",\"destinationSlug\":\"belgrade\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":210,\"totalFare\":\"266.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Belgrad\",\"destinationCode\":\"BEGA\",\"destinationName\":\"Belgrad\",\"destinationSlug\":\"belgrade\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":210,\"totalFare\":\"266.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Belgrad\",\"destinationCode\":\"BEGA\",\"destinationName\":\"Belgrad\",\"destinationSlug\":\"belgrade\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":210,\"totalFare\":\"266.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Belgrad\",\"destinationCode\":\"BEGA\",\"destinationName\":\"Belgrad\",\"destinationSlug\":\"belgrade\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":250,\"totalFare\":\"306.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Belgrad\",\"destinationCode\":\"BEGA\",\"destinationName\":\"Belgrad\",\"destinationSlug\":\"belgrade\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":250,\"totalFare\":\"306.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Belgrad\",\"originCode\":\"BEGA\",\"originName\":\"Belgrad\",\"originSlug\":\"belgrade\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":275,\"totalFare\":\"331.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Belgrad\",\"originCode\":\"BEGA\",\"originName\":\"Belgrad\",\"originSlug\":\"belgrade\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":275,\"totalFare\":\"331.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Belgrad\",\"originCode\":\"BEGA\",\"originName\":\"Belgrad\",\"originSlug\":\"belgrade\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":275,\"totalFare\":\"331.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Belgrad\",\"originCode\":\"BEGA\",\"originName\":\"Belgrad\",\"originSlug\":\"belgrade\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":320,\"totalFare\":\"376.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Belgrad\",\"originCode\":\"BEGA\",\"originName\":\"Belgrad\",\"originSlug\":\"belgrade\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":372.43,\"totalFare\":\"422.43\",\"currency\":\"TRY\",\"direction\":2}],\"BER\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Berlin\",\"destinationCode\":\"BERA\",\"destinationName\":\"Berlin\",\"destinationSlug\":\"berlin\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":165.05,\"totalFare\":\"215.05\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Berlin\",\"originCode\":\"BERA\",\"originName\":\"Berlin\",\"originSlug\":\"berlin\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":190,\"totalFare\":\"246.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Berlin\",\"originCode\":\"BERA\",\"originName\":\"Berlin\",\"originSlug\":\"berlin\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":252,\"totalFare\":\"308.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Berlin\",\"originCode\":\"BERA\",\"originName\":\"Berlin\",\"originSlug\":\"berlin\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":252,\"totalFare\":\"308.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Berlin\",\"originCode\":\"BERA\",\"originName\":\"Berlin\",\"originSlug\":\"berlin\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":252,\"totalFare\":\"308.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Berlin\",\"destinationCode\":\"BERA\",\"destinationName\":\"Berlin\",\"destinationSlug\":\"berlin\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":265,\"totalFare\":\"321.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Berlin\",\"destinationCode\":\"BERA\",\"destinationName\":\"Berlin\",\"destinationSlug\":\"berlin\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":265,\"totalFare\":\"321.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Berlin\",\"destinationCode\":\"BERA\",\"destinationName\":\"Berlin\",\"destinationSlug\":\"berlin\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":265,\"totalFare\":\"321.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Berlin\",\"originCode\":\"BERA\",\"originName\":\"Berlin\",\"originSlug\":\"berlin\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":297,\"totalFare\":\"353.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Berlin\",\"destinationCode\":\"BERA\",\"destinationName\":\"Berlin\",\"destinationSlug\":\"berlin\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Berlin\",\"destinationCode\":\"BERA\",\"destinationName\":\"Berlin\",\"destinationSlug\":\"berlin\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Berlin\",\"originCode\":\"BERA\",\"originName\":\"Berlin\",\"originSlug\":\"berlin\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":456.38,\"totalFare\":\"506.38\",\"currency\":\"TRY\",\"direction\":2}],\"BGG\":[{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Bing\\u00f6l\",\"destinationCode\":\"BGGA\",\"destinationName\":\"Bing\\u00f6l\",\"destinationSlug\":\"bingol-bgg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":89.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Bing\\u00f6l\",\"destinationCode\":\"BGGA\",\"destinationName\":\"Bing\\u00f6l\",\"destinationSlug\":\"bingol-bgg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":159.98,\"totalFare\":\"174.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Bing\\u00f6l\",\"originCode\":\"BGGA\",\"originName\":\"Bing\\u00f6l\",\"originSlug\":\"bingol-bgg\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":222.98,\"totalFare\":\"237.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Bing\\u00f6l\",\"originCode\":\"BGGA\",\"originName\":\"Bing\\u00f6l\",\"originSlug\":\"bingol-bgg\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":222.98,\"totalFare\":\"237.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Bing\\u00f6l\",\"originCode\":\"BGGA\",\"originName\":\"Bing\\u00f6l\",\"originSlug\":\"bingol-bgg\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":222.98,\"totalFare\":\"237.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Bing\\u00f6l\",\"destinationCode\":\"BGGA\",\"destinationName\":\"Bing\\u00f6l\",\"destinationSlug\":\"bingol-bgg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":262,\"totalFare\":\"279\",\"currency\":\"TRY\",\"direction\":1}],\"BXN\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Bodrum\",\"destinationCode\":\"BXNA\",\"destinationName\":\"Bodrum\",\"destinationSlug\":\"bodrum\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":64,\"totalFare\":\"79\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Bodrum\",\"originCode\":\"BXNA\",\"originName\":\"Bodrum\",\"originSlug\":\"bodrum\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":68.99,\"totalFare\":\"84.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Bodrum\",\"destinationCode\":\"BXNA\",\"destinationName\":\"Bodrum\",\"destinationSlug\":\"bodrum\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":77.99,\"totalFare\":\"93.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Bodrum\",\"originCode\":\"BXNA\",\"originName\":\"Bodrum\",\"originSlug\":\"bodrum\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":101.99,\"totalFare\":\"117.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Bodrum\",\"destinationCode\":\"BXNA\",\"destinationName\":\"Bodrum\",\"destinationSlug\":\"bodrum\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.98,\"totalFare\":\"154.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Bodrum\",\"originCode\":\"BXNA\",\"originName\":\"Bodrum\",\"originSlug\":\"bodrum\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.98,\"totalFare\":\"154.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Bodrum\",\"originCode\":\"BXNA\",\"originName\":\"Bodrum\",\"originSlug\":\"bodrum\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.98,\"totalFare\":\"154.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Bodrum\",\"destinationCode\":\"BXNA\",\"destinationName\":\"Bodrum\",\"destinationSlug\":\"bodrum\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":156.98,\"totalFare\":\"171.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Bodrum\",\"destinationCode\":\"BXNA\",\"destinationName\":\"Bodrum\",\"destinationSlug\":\"bodrum\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":181.98,\"totalFare\":\"197.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Bodrum\",\"originCode\":\"BXNA\",\"originName\":\"Bodrum\",\"originSlug\":\"bodrum\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":184.98,\"totalFare\":\"200.98\",\"currency\":\"TRY\",\"direction\":2}],\"BTS\":[{\"operatingAirline\":\"OK\",\"operatingAirlineTitle\":\"Czech Airlines\",\"origin\":\"Bratislava\",\"originCode\":\"BTSA\",\"originName\":\"Bratislava\",\"originSlug\":\"bratislava\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1463.57,\"totalFare\":\"1513.57\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AB\",\"operatingAirlineTitle\":\"Air Berlin\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Bratislava\",\"destinationCode\":\"BTSA\",\"destinationName\":\"Bratislava\",\"destinationSlug\":\"bratislava\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1484.47,\"totalFare\":\"1534.47\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"RO\",\"operatingAirlineTitle\":\"Tarom\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Bratislava\",\"destinationCode\":\"BTSA\",\"destinationName\":\"Bratislava\",\"destinationSlug\":\"bratislava\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1637.58,\"totalFare\":\"1687.58\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"OK\",\"operatingAirlineTitle\":\"Czech Airlines\",\"origin\":\"Bratislava\",\"originCode\":\"BTSA\",\"originName\":\"Bratislava\",\"originSlug\":\"bratislava\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2137.72,\"totalFare\":\"2187.72\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"OK\",\"operatingAirlineTitle\":\"Czech Airlines\",\"origin\":\"Bratislava\",\"originCode\":\"BTSA\",\"originName\":\"Bratislava\",\"originSlug\":\"bratislava\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2913.28,\"totalFare\":\"2963.28\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"OK\",\"operatingAirlineTitle\":\"Czech Airlines\",\"origin\":\"Bratislava\",\"originCode\":\"BTSA\",\"originName\":\"Bratislava\",\"originSlug\":\"bratislava\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2930.03,\"totalFare\":\"2980.03\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"LH\",\"operatingAirlineTitle\":\"Lufthansa\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Bratislava\",\"destinationCode\":\"BTSA\",\"destinationName\":\"Bratislava\",\"destinationSlug\":\"bratislava\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3223.08,\"totalFare\":\"3273.08\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"LH\",\"operatingAirlineTitle\":\"Lufthansa\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Bratislava\",\"destinationCode\":\"BTSA\",\"destinationName\":\"Bratislava\",\"destinationSlug\":\"bratislava\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3284.4,\"totalFare\":\"3334.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Bratislava\",\"destinationCode\":\"BTSA\",\"destinationName\":\"Bratislava\",\"destinationSlug\":\"bratislava\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3618.36,\"totalFare\":\"3668.36\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Bratislava\",\"destinationCode\":\"BTSA\",\"destinationName\":\"Bratislava\",\"destinationSlug\":\"bratislava\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3622.36,\"totalFare\":\"3672.36\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"OK\",\"operatingAirlineTitle\":\"Czech Airlines\",\"origin\":\"Bratislava\",\"originCode\":\"BTSA\",\"originName\":\"Bratislava\",\"originSlug\":\"bratislava\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3828.77,\"totalFare\":\"3878.77\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"OK\",\"operatingAirlineTitle\":\"Czech Airlines\",\"origin\":\"Bratislava\",\"originCode\":\"BTSA\",\"originName\":\"Bratislava\",\"originSlug\":\"bratislava\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3828.77,\"totalFare\":\"3878.77\",\"currency\":\"TRY\",\"direction\":2}],\"BRU\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Br\\u00fcksel\",\"originCode\":\"BRUA\",\"originName\":\"Br\\u00fcksel\",\"originSlug\":\"brussels\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":137,\"totalFare\":\"193.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Br\\u00fcksel\",\"originCode\":\"BRUA\",\"originName\":\"Br\\u00fcksel\",\"originSlug\":\"brussels\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":199,\"totalFare\":\"255.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Br\\u00fcksel\",\"originCode\":\"BRUA\",\"originName\":\"Br\\u00fcksel\",\"originSlug\":\"brussels\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":199,\"totalFare\":\"255.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Br\\u00fcksel\",\"originCode\":\"BRUA\",\"originName\":\"Br\\u00fcksel\",\"originSlug\":\"brussels\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":199,\"totalFare\":\"255.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Br\\u00fcksel\",\"destinationCode\":\"BRUA\",\"destinationName\":\"Br\\u00fcksel\",\"destinationSlug\":\"brussels\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":218,\"totalFare\":\"274.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Br\\u00fcksel\",\"originCode\":\"BRUA\",\"originName\":\"Br\\u00fcksel\",\"originSlug\":\"brussels\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":244,\"totalFare\":\"300.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Br\\u00fcksel\",\"destinationCode\":\"BRUA\",\"destinationName\":\"Br\\u00fcksel\",\"destinationSlug\":\"brussels\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":290,\"totalFare\":\"346.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Br\\u00fcksel\",\"destinationCode\":\"BRUA\",\"destinationName\":\"Br\\u00fcksel\",\"destinationSlug\":\"brussels\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":290,\"totalFare\":\"346.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Br\\u00fcksel\",\"destinationCode\":\"BRUA\",\"destinationName\":\"Br\\u00fcksel\",\"destinationSlug\":\"brussels\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":290,\"totalFare\":\"346.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Br\\u00fcksel\",\"destinationCode\":\"BRUA\",\"destinationName\":\"Br\\u00fcksel\",\"destinationSlug\":\"brussels\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":330,\"totalFare\":\"386.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Br\\u00fcksel\",\"destinationCode\":\"BRUA\",\"destinationName\":\"Br\\u00fcksel\",\"destinationSlug\":\"brussels\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":330,\"totalFare\":\"386.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Br\\u00fcksel\",\"originCode\":\"BRUA\",\"originName\":\"Br\\u00fcksel\",\"originSlug\":\"brussels\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":582.25,\"totalFare\":\"632.25\",\"currency\":\"TRY\",\"direction\":2}],\"BUH\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"B\\u00fckre\\u015f\",\"destinationCode\":\"BUHA\",\"destinationName\":\"B\\u00fckre\\u015f\",\"destinationSlug\":\"bucharest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133,\"totalFare\":\"189.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"B\\u00fckre\\u015f\",\"originCode\":\"BUHA\",\"originName\":\"B\\u00fckre\\u015f\",\"originSlug\":\"bucharest\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":165,\"totalFare\":\"221.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"B\\u00fckre\\u015f\",\"destinationCode\":\"BUHA\",\"destinationName\":\"B\\u00fckre\\u015f\",\"destinationSlug\":\"bucharest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":205,\"totalFare\":\"261.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"B\\u00fckre\\u015f\",\"destinationCode\":\"BUHA\",\"destinationName\":\"B\\u00fckre\\u015f\",\"destinationSlug\":\"bucharest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":205,\"totalFare\":\"261.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"B\\u00fckre\\u015f\",\"destinationCode\":\"BUHA\",\"destinationName\":\"B\\u00fckre\\u015f\",\"destinationSlug\":\"bucharest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":205,\"totalFare\":\"261.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"B\\u00fckre\\u015f\",\"originCode\":\"BUHA\",\"originName\":\"B\\u00fckre\\u015f\",\"originSlug\":\"bucharest\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":227,\"totalFare\":\"283.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"B\\u00fckre\\u015f\",\"originCode\":\"BUHA\",\"originName\":\"B\\u00fckre\\u015f\",\"originSlug\":\"bucharest\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":227,\"totalFare\":\"283.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"B\\u00fckre\\u015f\",\"originCode\":\"BUHA\",\"originName\":\"B\\u00fckre\\u015f\",\"originSlug\":\"bucharest\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":227,\"totalFare\":\"283.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"B\\u00fckre\\u015f\",\"destinationCode\":\"BUHA\",\"destinationName\":\"B\\u00fckre\\u015f\",\"destinationSlug\":\"bucharest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":245,\"totalFare\":\"301.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"B\\u00fckre\\u015f\",\"destinationCode\":\"BUHA\",\"destinationName\":\"B\\u00fckre\\u015f\",\"destinationSlug\":\"bucharest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":245,\"totalFare\":\"301.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"B\\u00fckre\\u015f\",\"originCode\":\"BUHA\",\"originName\":\"B\\u00fckre\\u015f\",\"originSlug\":\"bucharest\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":272,\"totalFare\":\"328.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"B\\u00fckre\\u015f\",\"originCode\":\"BUHA\",\"originName\":\"B\\u00fckre\\u015f\",\"originSlug\":\"bucharest\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":447.96,\"totalFare\":\"497.96\",\"currency\":\"TRY\",\"direction\":2}],\"BUD\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Budape\\u015fte\",\"originCode\":\"BUDA\",\"originName\":\"Budape\\u015fte\",\"originSlug\":\"budapest\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":160,\"totalFare\":\"216.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Budape\\u015fte\",\"destinationCode\":\"BUDA\",\"destinationName\":\"Budape\\u015fte\",\"destinationSlug\":\"budapest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":178,\"totalFare\":\"234.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Budape\\u015fte\",\"originCode\":\"BUDA\",\"originName\":\"Budape\\u015fte\",\"originSlug\":\"budapest\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":222,\"totalFare\":\"278.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Budape\\u015fte\",\"originCode\":\"BUDA\",\"originName\":\"Budape\\u015fte\",\"originSlug\":\"budapest\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":222,\"totalFare\":\"278.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Budape\\u015fte\",\"originCode\":\"BUDA\",\"originName\":\"Budape\\u015fte\",\"originSlug\":\"budapest\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":222,\"totalFare\":\"278.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Budape\\u015fte\",\"destinationCode\":\"BUDA\",\"destinationName\":\"Budape\\u015fte\",\"destinationSlug\":\"budapest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":250,\"totalFare\":\"306.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Budape\\u015fte\",\"destinationCode\":\"BUDA\",\"destinationName\":\"Budape\\u015fte\",\"destinationSlug\":\"budapest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":250,\"totalFare\":\"306.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Budape\\u015fte\",\"destinationCode\":\"BUDA\",\"destinationName\":\"Budape\\u015fte\",\"destinationSlug\":\"budapest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":250,\"totalFare\":\"306.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Budape\\u015fte\",\"originCode\":\"BUDA\",\"originName\":\"Budape\\u015fte\",\"originSlug\":\"budapest\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":267,\"totalFare\":\"323.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Budape\\u015fte\",\"destinationCode\":\"BUDA\",\"destinationName\":\"Budape\\u015fte\",\"destinationSlug\":\"budapest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":290,\"totalFare\":\"346.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Budape\\u015fte\",\"destinationCode\":\"BUDA\",\"destinationName\":\"Budape\\u015fte\",\"destinationSlug\":\"budapest\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":290,\"totalFare\":\"346.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Budape\\u015fte\",\"originCode\":\"BUDA\",\"originName\":\"Budape\\u015fte\",\"originSlug\":\"budapest\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1036.3,\"totalFare\":\"1086.3\",\"currency\":\"TRY\",\"direction\":2}],\"CKZ\":[{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"\\u00c7anakkale\",\"destinationCode\":\"CKZA\",\"destinationName\":\"\\u00c7anakkale\",\"destinationSlug\":\"canakkale\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":89.99,\"totalFare\":\"109.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u00c7anakkale\",\"originCode\":\"CKZA\",\"originName\":\"\\u00c7anakkale\",\"originSlug\":\"canakkale\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":107.99,\"totalFare\":\"122.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"\\u00c7anakkale\",\"originCode\":\"CKZA\",\"originName\":\"\\u00c7anakkale\",\"originSlug\":\"canakkale\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":109.99,\"totalFare\":\"129.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u00c7anakkale\",\"originCode\":\"CKZA\",\"originName\":\"\\u00c7anakkale\",\"originSlug\":\"canakkale\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u00c7anakkale\",\"originCode\":\"CKZA\",\"originName\":\"\\u00c7anakkale\",\"originSlug\":\"canakkale\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"\\u00c7anakkale\",\"destinationCode\":\"CKZA\",\"destinationName\":\"\\u00c7anakkale\",\"destinationSlug\":\"canakkale\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":158.98,\"totalFare\":\"173.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u00c7anakkale\",\"originCode\":\"CKZA\",\"originName\":\"\\u00c7anakkale\",\"originSlug\":\"canakkale\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":163.99,\"totalFare\":\"178.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"\\u00c7anakkale\",\"destinationCode\":\"CKZA\",\"destinationName\":\"\\u00c7anakkale\",\"destinationSlug\":\"canakkale\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":169.99,\"totalFare\":\"189.99\",\"currency\":\"TRY\",\"direction\":1}],\"CGN\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"K\\u00f6ln\",\"originCode\":\"CGNA\",\"originName\":\"K\\u00f6ln\",\"originSlug\":\"cgn-cologne-bonn\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":175,\"totalFare\":\"231.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"K\\u00f6ln\",\"destinationCode\":\"CGNA\",\"destinationName\":\"K\\u00f6ln\",\"destinationSlug\":\"cgn-cologne-bonn\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":179,\"totalFare\":\"235.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"K\\u00f6ln\",\"originCode\":\"CGNA\",\"originName\":\"K\\u00f6ln\",\"originSlug\":\"cgn-cologne-bonn\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":216.29,\"totalFare\":\"248.29\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"K\\u00f6ln\",\"originCode\":\"CGNA\",\"originName\":\"K\\u00f6ln\",\"originSlug\":\"cgn-cologne-bonn\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":237,\"totalFare\":\"293.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"K\\u00f6ln\",\"originCode\":\"CGNA\",\"originName\":\"K\\u00f6ln\",\"originSlug\":\"cgn-cologne-bonn\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":237,\"totalFare\":\"293.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"K\\u00f6ln\",\"destinationCode\":\"CGNA\",\"destinationName\":\"K\\u00f6ln\",\"destinationSlug\":\"cgn-cologne-bonn\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":251,\"totalFare\":\"307.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"K\\u00f6ln\",\"destinationCode\":\"CGNA\",\"destinationName\":\"K\\u00f6ln\",\"destinationSlug\":\"cgn-cologne-bonn\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":251,\"totalFare\":\"307.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"K\\u00f6ln\",\"destinationCode\":\"CGNA\",\"destinationName\":\"K\\u00f6ln\",\"destinationSlug\":\"cgn-cologne-bonn\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":251,\"totalFare\":\"307.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"K\\u00f6ln\",\"originCode\":\"CGNA\",\"originName\":\"K\\u00f6ln\",\"originSlug\":\"cgn-cologne-bonn\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":273.22,\"totalFare\":\"305.22\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"K\\u00f6ln\",\"originCode\":\"CGNA\",\"originName\":\"K\\u00f6ln\",\"originSlug\":\"cgn-cologne-bonn\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":282,\"totalFare\":\"338.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"K\\u00f6ln\",\"destinationCode\":\"CGNA\",\"destinationName\":\"K\\u00f6ln\",\"destinationSlug\":\"cgn-cologne-bonn\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":291,\"totalFare\":\"347.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"K\\u00f6ln\",\"destinationCode\":\"CGNA\",\"destinationName\":\"K\\u00f6ln\",\"destinationSlug\":\"cgn-cologne-bonn\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":291,\"totalFare\":\"347.73\",\"currency\":\"TRY\",\"direction\":1}],\"KIV\":[{\"operatingAirline\":\"9U\",\"operatingAirlineTitle\":\"Air Moldova\",\"origin\":\"Ki\\u015finev\",\"originCode\":\"KIVA\",\"originName\":\"Ki\\u015finev\",\"originSlug\":\"chisinau\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":238.41,\"totalFare\":\"288.41\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"9U\",\"operatingAirlineTitle\":\"Air Moldova\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Ki\\u015finev\",\"destinationCode\":\"KIVA\",\"destinationName\":\"Ki\\u015finev\",\"destinationSlug\":\"chisinau\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":240.55,\"totalFare\":\"290.55\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"9U\",\"operatingAirlineTitle\":\"Air Moldova\",\"origin\":\"Ki\\u015finev\",\"originCode\":\"KIVA\",\"originName\":\"Ki\\u015finev\",\"originSlug\":\"chisinau\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":451.41,\"totalFare\":\"501.41\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Ki\\u015finev\",\"destinationCode\":\"KIVA\",\"destinationName\":\"Ki\\u015finev\",\"destinationSlug\":\"chisinau\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":453.55,\"totalFare\":\"503.55\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"9U\",\"operatingAirlineTitle\":\"Air Moldova\",\"origin\":\"Ki\\u015finev\",\"originCode\":\"KIVA\",\"originName\":\"Ki\\u015finev\",\"originSlug\":\"chisinau\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":465.41,\"totalFare\":\"515.41\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Ki\\u015finev\",\"destinationCode\":\"KIVA\",\"destinationName\":\"Ki\\u015finev\",\"destinationSlug\":\"chisinau\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":467.55,\"totalFare\":\"517.55\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ki\\u015finev\",\"originCode\":\"KIVA\",\"originName\":\"Ki\\u015finev\",\"originSlug\":\"chisinau\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":576.88,\"totalFare\":\"626.88\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ki\\u015finev\",\"originCode\":\"KIVA\",\"originName\":\"Ki\\u015finev\",\"originSlug\":\"chisinau\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":576.88,\"totalFare\":\"626.88\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ki\\u015finev\",\"originCode\":\"KIVA\",\"originName\":\"Ki\\u015finev\",\"originSlug\":\"chisinau\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":576.88,\"totalFare\":\"626.88\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Ki\\u015finev\",\"destinationCode\":\"KIVA\",\"destinationName\":\"Ki\\u015finev\",\"destinationSlug\":\"chisinau\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":579.02,\"totalFare\":\"629.02\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Ki\\u015finev\",\"destinationCode\":\"KIVA\",\"destinationName\":\"Ki\\u015finev\",\"destinationSlug\":\"chisinau\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":579.02,\"totalFare\":\"629.02\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Ki\\u015finev\",\"destinationCode\":\"KIVA\",\"destinationName\":\"Ki\\u015finev\",\"destinationSlug\":\"chisinau\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":583.02,\"totalFare\":\"633.02\",\"currency\":\"TRY\",\"direction\":1}],\"CPH\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Kopenhag\",\"destinationCode\":\"CPHA\",\"destinationName\":\"Kopenhag\",\"destinationSlug\":\"copenhagen\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":163,\"totalFare\":\"219.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kopenhag\",\"originCode\":\"CPHA\",\"originName\":\"Kopenhag\",\"originSlug\":\"copenhagen\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":168,\"totalFare\":\"224.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kopenhag\",\"originCode\":\"CPHA\",\"originName\":\"Kopenhag\",\"originSlug\":\"copenhagen\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":230,\"totalFare\":\"286.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kopenhag\",\"originCode\":\"CPHA\",\"originName\":\"Kopenhag\",\"originSlug\":\"copenhagen\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":230,\"totalFare\":\"286.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kopenhag\",\"originCode\":\"CPHA\",\"originName\":\"Kopenhag\",\"originSlug\":\"copenhagen\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":230,\"totalFare\":\"286.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Kopenhag\",\"destinationCode\":\"CPHA\",\"destinationName\":\"Kopenhag\",\"destinationSlug\":\"copenhagen\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":235,\"totalFare\":\"291.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Kopenhag\",\"destinationCode\":\"CPHA\",\"destinationName\":\"Kopenhag\",\"destinationSlug\":\"copenhagen\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":235,\"totalFare\":\"291.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Kopenhag\",\"destinationCode\":\"CPHA\",\"destinationName\":\"Kopenhag\",\"destinationSlug\":\"copenhagen\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":235,\"totalFare\":\"291.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kopenhag\",\"originCode\":\"CPHA\",\"originName\":\"Kopenhag\",\"originSlug\":\"copenhagen\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":275,\"totalFare\":\"331.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Kopenhag\",\"destinationCode\":\"CPHA\",\"destinationName\":\"Kopenhag\",\"destinationSlug\":\"copenhagen\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":275,\"totalFare\":\"331.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Kopenhag\",\"destinationCode\":\"CPHA\",\"destinationName\":\"Kopenhag\",\"destinationSlug\":\"copenhagen\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":275,\"totalFare\":\"331.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kopenhag\",\"originCode\":\"CPHA\",\"originName\":\"Kopenhag\",\"originSlug\":\"copenhagen\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":513.53,\"totalFare\":\"563.53\",\"currency\":\"TRY\",\"direction\":2}],\"DLM\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Dalaman\",\"destinationCode\":\"DLMA\",\"destinationName\":\"Dalaman\",\"destinationSlug\":\"dalaman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":79.99,\"totalFare\":\"95.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Dalaman\",\"originCode\":\"DLMA\",\"originName\":\"Dalaman\",\"originSlug\":\"dalaman\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":86.99,\"totalFare\":\"102.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Dalaman\",\"destinationCode\":\"DLMA\",\"destinationName\":\"Dalaman\",\"destinationSlug\":\"dalaman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":136.99,\"totalFare\":\"152.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Dalaman\",\"originCode\":\"DLMA\",\"originName\":\"Dalaman\",\"originSlug\":\"dalaman\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":140.99,\"totalFare\":\"156.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Dalaman\",\"originCode\":\"DLMA\",\"originName\":\"Dalaman\",\"originSlug\":\"dalaman\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":184.98,\"totalFare\":\"200.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Dalaman\",\"destinationCode\":\"DLMA\",\"destinationName\":\"Dalaman\",\"destinationSlug\":\"dalaman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":191.98,\"totalFare\":\"207.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Dalaman\",\"destinationCode\":\"DLMA\",\"destinationName\":\"Dalaman\",\"destinationSlug\":\"dalaman\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":194,\"totalFare\":\"211\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Dalaman\",\"originCode\":\"DLMA\",\"originName\":\"Dalaman\",\"originSlug\":\"dalaman\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":231.98,\"totalFare\":\"247.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Dalaman\",\"originCode\":\"DLMA\",\"originName\":\"Dalaman\",\"originSlug\":\"dalaman\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":307,\"totalFare\":\"324\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Dalaman\",\"originCode\":\"DLMA\",\"originName\":\"Dalaman\",\"originSlug\":\"dalaman\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":307,\"totalFare\":\"324\",\"currency\":\"TRY\",\"direction\":2}],\"DNZ\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Denizli\",\"destinationCode\":\"DNZA\",\"destinationName\":\"Denizli\",\"destinationSlug\":\"denizli\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":64.99,\"totalFare\":\"80.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Denizli\",\"originCode\":\"DNZA\",\"originName\":\"Denizli\",\"originSlug\":\"denizli\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":65.99,\"totalFare\":\"81.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Denizli\",\"originCode\":\"DNZA\",\"originName\":\"Denizli\",\"originSlug\":\"denizli\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":119.99,\"totalFare\":\"135.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Denizli\",\"destinationCode\":\"DNZA\",\"destinationName\":\"Denizli\",\"destinationSlug\":\"denizli\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":121.99,\"totalFare\":\"137.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Denizli\",\"originCode\":\"DNZA\",\"originName\":\"Denizli\",\"originSlug\":\"denizli\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":163.98,\"totalFare\":\"179.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Denizli\",\"destinationCode\":\"DNZA\",\"destinationName\":\"Denizli\",\"destinationSlug\":\"denizli\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":174,\"totalFare\":\"189\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Denizli\",\"destinationCode\":\"DNZA\",\"destinationName\":\"Denizli\",\"destinationSlug\":\"denizli\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":176.98,\"totalFare\":\"192.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Denizli\",\"destinationCode\":\"DNZA\",\"destinationName\":\"Denizli\",\"destinationSlug\":\"denizli\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":198.98,\"totalFare\":\"214.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Denizli\",\"originCode\":\"DNZA\",\"originName\":\"Denizli\",\"originSlug\":\"denizli\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":210.98,\"totalFare\":\"226.98\",\"currency\":\"TRY\",\"direction\":2}],\"DIY\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":86.99,\"totalFare\":\"102.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":98.99,\"totalFare\":\"114.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.98,\"totalFare\":\"154.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":142.99,\"totalFare\":\"158.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":151.99,\"totalFare\":\"167.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":152.99,\"totalFare\":\"168.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":152.99,\"totalFare\":\"168.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":152.99,\"totalFare\":\"168.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":156.98,\"totalFare\":\"171.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":238,\"totalFare\":\"250\",\"currency\":\"TRY\",\"direction\":2}],\"DXB\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Dubai\",\"originCode\":\"DXBA\",\"originName\":\"Dubai\",\"originSlug\":\"dubai\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":385,\"totalFare\":\"441.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Dubai\",\"originCode\":\"DXBA\",\"originName\":\"Dubai\",\"originSlug\":\"dubai\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":447,\"totalFare\":\"503.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Dubai\",\"originCode\":\"DXBA\",\"originName\":\"Dubai\",\"originSlug\":\"dubai\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":447,\"totalFare\":\"503.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Dubai\",\"originCode\":\"DXBA\",\"originName\":\"Dubai\",\"originSlug\":\"dubai\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":447,\"totalFare\":\"503.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Dubai\",\"destinationCode\":\"DXBA\",\"destinationName\":\"Dubai\",\"destinationSlug\":\"dubai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":489,\"totalFare\":\"545.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Dubai\",\"originCode\":\"DXBA\",\"originName\":\"Dubai\",\"originSlug\":\"dubai\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":492,\"totalFare\":\"548.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Dubai\",\"originCode\":\"DXBA\",\"originName\":\"Dubai\",\"originSlug\":\"dubai\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":492,\"totalFare\":\"548.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Dubai\",\"destinationCode\":\"DXBA\",\"destinationName\":\"Dubai\",\"destinationSlug\":\"dubai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":561,\"totalFare\":\"617.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Dubai\",\"destinationCode\":\"DXBA\",\"destinationName\":\"Dubai\",\"destinationSlug\":\"dubai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":561,\"totalFare\":\"617.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Dubai\",\"destinationCode\":\"DXBA\",\"destinationName\":\"Dubai\",\"destinationSlug\":\"dubai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":561,\"totalFare\":\"617.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Dubai\",\"destinationCode\":\"DXBA\",\"destinationName\":\"Dubai\",\"destinationSlug\":\"dubai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":601,\"totalFare\":\"657.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Dubai\",\"destinationCode\":\"DXBA\",\"destinationName\":\"Dubai\",\"destinationSlug\":\"dubai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":601,\"totalFare\":\"657.73\",\"currency\":\"TRY\",\"direction\":1}],\"DBV\":[{\"operatingAirline\":\"BA\",\"operatingAirlineTitle\":\"British Airways\",\"origin\":\"Dubrovnik\",\"originCode\":\"DBVA\",\"originName\":\"Dubrovnik\",\"originSlug\":\"dubrovnik\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":599.36,\"totalFare\":\"649.36\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"LH\",\"operatingAirlineTitle\":\"Lufthansa\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Dubrovnik\",\"destinationCode\":\"DBVA\",\"destinationName\":\"Dubrovnik\",\"destinationSlug\":\"dubrovnik\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":655.52,\"totalFare\":\"705.52\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"LH\",\"operatingAirlineTitle\":\"Lufthansa\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Dubrovnik\",\"destinationCode\":\"DBVA\",\"destinationName\":\"Dubrovnik\",\"destinationSlug\":\"dubrovnik\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":667.72,\"totalFare\":\"717.72\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"LH\",\"operatingAirlineTitle\":\"Lufthansa\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Dubrovnik\",\"destinationCode\":\"DBVA\",\"destinationName\":\"Dubrovnik\",\"destinationSlug\":\"dubrovnik\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":698.52,\"totalFare\":\"748.52\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"OU\",\"operatingAirlineTitle\":\"Croatia Airlines\",\"origin\":\"Dubrovnik\",\"originCode\":\"DBVA\",\"originName\":\"Dubrovnik\",\"originSlug\":\"dubrovnik\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":763.09,\"totalFare\":\"813.09\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"BA\",\"operatingAirlineTitle\":\"British Airways\",\"origin\":\"Dubrovnik\",\"originCode\":\"DBVA\",\"originName\":\"Dubrovnik\",\"originSlug\":\"dubrovnik\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":784.36,\"totalFare\":\"834.36\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"BA\",\"operatingAirlineTitle\":\"British Airways\",\"origin\":\"Dubrovnik\",\"originCode\":\"DBVA\",\"originName\":\"Dubrovnik\",\"originSlug\":\"dubrovnik\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":784.36,\"totalFare\":\"834.36\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Dubrovnik\",\"destinationCode\":\"DBVA\",\"destinationName\":\"Dubrovnik\",\"destinationSlug\":\"dubrovnik\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":875.28,\"totalFare\":\"925.28\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"OU\",\"operatingAirlineTitle\":\"Croatia Airlines\",\"origin\":\"Dubrovnik\",\"originCode\":\"DBVA\",\"originName\":\"Dubrovnik\",\"originSlug\":\"dubrovnik\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":893.38,\"totalFare\":\"943.38\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Dubrovnik\",\"destinationCode\":\"DBVA\",\"destinationName\":\"Dubrovnik\",\"destinationSlug\":\"dubrovnik\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":904.28,\"totalFare\":\"954.28\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Dubrovnik\",\"destinationCode\":\"DBVA\",\"destinationName\":\"Dubrovnik\",\"destinationSlug\":\"dubrovnik\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1041.59,\"totalFare\":\"1091.59\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"OU\",\"operatingAirlineTitle\":\"Croatia Airlines\",\"origin\":\"Dubrovnik\",\"originCode\":\"DBVA\",\"originName\":\"Dubrovnik\",\"originSlug\":\"dubrovnik\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1058.69,\"totalFare\":\"1108.69\",\"currency\":\"TRY\",\"direction\":2}],\"DUS\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Duesseldorf\",\"originCode\":\"DUSA\",\"originName\":\"Duesseldorf\",\"originSlug\":\"duesseldorf\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":149,\"totalFare\":\"205.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Duesseldorf\",\"destinationCode\":\"DUSA\",\"destinationName\":\"Duesseldorf\",\"destinationSlug\":\"duesseldorf\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":153.18,\"totalFare\":\"195.72\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Duesseldorf\",\"originCode\":\"DUSA\",\"originName\":\"Duesseldorf\",\"originSlug\":\"duesseldorf\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":211,\"totalFare\":\"267.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Duesseldorf\",\"originCode\":\"DUSA\",\"originName\":\"Duesseldorf\",\"originSlug\":\"duesseldorf\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":211,\"totalFare\":\"267.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Duesseldorf\",\"originCode\":\"DUSA\",\"originName\":\"Duesseldorf\",\"originSlug\":\"duesseldorf\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":211,\"totalFare\":\"267.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Duesseldorf\",\"destinationCode\":\"DUSA\",\"destinationName\":\"Duesseldorf\",\"destinationSlug\":\"duesseldorf\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":238.28,\"totalFare\":\"280.82\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Duesseldorf\",\"destinationCode\":\"DUSA\",\"destinationName\":\"Duesseldorf\",\"destinationSlug\":\"duesseldorf\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":238.28,\"totalFare\":\"280.82\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Duesseldorf\",\"destinationCode\":\"DUSA\",\"destinationName\":\"Duesseldorf\",\"destinationSlug\":\"duesseldorf\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":250,\"totalFare\":\"306.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Duesseldorf\",\"originCode\":\"DUSA\",\"originName\":\"Duesseldorf\",\"originSlug\":\"duesseldorf\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":265,\"totalFare\":\"321.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Duesseldorf\",\"originCode\":\"DUSA\",\"originName\":\"Duesseldorf\",\"originSlug\":\"duesseldorf\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":266.62,\"totalFare\":\"309.16\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Duesseldorf\",\"destinationCode\":\"DUSA\",\"destinationName\":\"Duesseldorf\",\"destinationSlug\":\"duesseldorf\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":280.83,\"totalFare\":\"323.37\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Duesseldorf\",\"destinationCode\":\"DUSA\",\"destinationName\":\"Duesseldorf\",\"destinationSlug\":\"duesseldorf\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":280.83,\"totalFare\":\"323.37\",\"currency\":\"TRY\",\"direction\":1}],\"EDO\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Bal\\u0131kesir Edremit\",\"destinationCode\":\"EDOA\",\"destinationName\":\"Bal\\u0131kesir Edremit\",\"destinationSlug\":\"edremit\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":67.99,\"totalFare\":\"83.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Bal\\u0131kesir Edremit\",\"originCode\":\"EDOA\",\"originName\":\"Bal\\u0131kesir Edremit\",\"originSlug\":\"edremit\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":80.99,\"totalFare\":\"96.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Bal\\u0131kesir Edremit\",\"originCode\":\"EDOA\",\"originName\":\"Bal\\u0131kesir Edremit\",\"originSlug\":\"edremit\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":102.98,\"totalFare\":\"117.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Bal\\u0131kesir Edremit\",\"originCode\":\"EDOA\",\"originName\":\"Bal\\u0131kesir Edremit\",\"originSlug\":\"edremit\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":134.99,\"totalFare\":\"150.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Bal\\u0131kesir Edremit\",\"destinationCode\":\"EDOA\",\"destinationName\":\"Bal\\u0131kesir Edremit\",\"destinationSlug\":\"edremit\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.99,\"totalFare\":\"159.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Bal\\u0131kesir Edremit\",\"originCode\":\"EDOA\",\"originName\":\"Bal\\u0131kesir Edremit\",\"originSlug\":\"edremit\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":165.99,\"totalFare\":\"180.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Bal\\u0131kesir Edremit\",\"destinationCode\":\"EDOA\",\"destinationName\":\"Bal\\u0131kesir Edremit\",\"destinationSlug\":\"edremit\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":172.99,\"totalFare\":\"187.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Bal\\u0131kesir Edremit\",\"originCode\":\"EDOA\",\"originName\":\"Bal\\u0131kesir Edremit\",\"originSlug\":\"edremit\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":225.98,\"totalFare\":\"241.98\",\"currency\":\"TRY\",\"direction\":2}],\"EZS\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Elaz\\u0131\\u011f\",\"destinationCode\":\"EZSA\",\"destinationName\":\"Elaz\\u0131\\u011f\",\"destinationSlug\":\"elazig\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":84.99,\"totalFare\":\"100.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Elaz\\u0131\\u011f\",\"originCode\":\"EZSA\",\"originName\":\"Elaz\\u0131\\u011f\",\"originSlug\":\"elazig\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":90.99,\"totalFare\":\"106.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Elaz\\u0131\\u011f\",\"destinationCode\":\"EZSA\",\"destinationName\":\"Elaz\\u0131\\u011f\",\"destinationSlug\":\"elazig\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":138.99,\"totalFare\":\"154.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Elaz\\u0131\\u011f\",\"destinationCode\":\"EZSA\",\"destinationName\":\"Elaz\\u0131\\u011f\",\"destinationSlug\":\"elazig\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":138.99,\"totalFare\":\"154.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Elaz\\u0131\\u011f\",\"destinationCode\":\"EZSA\",\"destinationName\":\"Elaz\\u0131\\u011f\",\"destinationSlug\":\"elazig\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":138.99,\"totalFare\":\"154.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Elaz\\u0131\\u011f\",\"originCode\":\"EZSA\",\"originName\":\"Elaz\\u0131\\u011f\",\"originSlug\":\"elazig\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":144.99,\"totalFare\":\"160.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Elaz\\u0131\\u011f\",\"originCode\":\"EZSA\",\"originName\":\"Elaz\\u0131\\u011f\",\"originSlug\":\"elazig\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":144.99,\"totalFare\":\"160.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Elaz\\u0131\\u011f\",\"originCode\":\"EZSA\",\"originName\":\"Elaz\\u0131\\u011f\",\"originSlug\":\"elazig\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":144.99,\"totalFare\":\"160.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Elaz\\u0131\\u011f\",\"originCode\":\"EZSA\",\"originName\":\"Elaz\\u0131\\u011f\",\"originSlug\":\"elazig\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":154.98,\"totalFare\":\"169.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Elaz\\u0131\\u011f\",\"originCode\":\"EZSA\",\"originName\":\"Elaz\\u0131\\u011f\",\"originSlug\":\"elazig\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":154.98,\"totalFare\":\"169.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Elaz\\u0131\\u011f\",\"destinationCode\":\"EZSA\",\"destinationName\":\"Elaz\\u0131\\u011f\",\"destinationSlug\":\"elazig\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":206.98,\"totalFare\":\"221.98\",\"currency\":\"TRY\",\"direction\":1}],\"ERC\":[{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Erzincan\",\"originCode\":\"ERCA\",\"originName\":\"Erzincan\",\"originSlug\":\"erzincan\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":202.98,\"totalFare\":\"217.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Erzincan\",\"originCode\":\"ERCA\",\"originName\":\"Erzincan\",\"originSlug\":\"erzincan\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":202.98,\"totalFare\":\"217.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Erzincan\",\"originCode\":\"ERCA\",\"originName\":\"Erzincan\",\"originSlug\":\"erzincan\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":202.98,\"totalFare\":\"217.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Erzincan\",\"originCode\":\"ERCA\",\"originName\":\"Erzincan\",\"originSlug\":\"erzincan\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":300,\"totalFare\":\"317\",\"currency\":\"TRY\",\"direction\":2}],\"ERZ\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Erzurum\",\"destinationCode\":\"ERZA\",\"destinationName\":\"Erzurum\",\"destinationSlug\":\"erzurum\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":114.99,\"totalFare\":\"130.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Erzurum\",\"originCode\":\"ERZA\",\"originName\":\"Erzurum\",\"originSlug\":\"erzurum\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":150.99,\"totalFare\":\"166.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Erzurum\",\"destinationCode\":\"ERZA\",\"destinationName\":\"Erzurum\",\"destinationSlug\":\"erzurum\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":187.99,\"totalFare\":\"203.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Erzurum\",\"destinationCode\":\"ERZA\",\"destinationName\":\"Erzurum\",\"destinationSlug\":\"erzurum\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":203.99,\"totalFare\":\"219.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Erzurum\",\"destinationCode\":\"ERZA\",\"destinationName\":\"Erzurum\",\"destinationSlug\":\"erzurum\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":203.99,\"totalFare\":\"219.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Erzurum\",\"originCode\":\"ERZA\",\"originName\":\"Erzurum\",\"originSlug\":\"erzurum\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":204.99,\"totalFare\":\"220.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Erzurum\",\"originCode\":\"ERZA\",\"originName\":\"Erzurum\",\"originSlug\":\"erzurum\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":204.99,\"totalFare\":\"220.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Erzurum\",\"originCode\":\"ERZA\",\"originName\":\"Erzurum\",\"originSlug\":\"erzurum\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":204.99,\"totalFare\":\"220.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Erzurum\",\"destinationCode\":\"ERZA\",\"destinationName\":\"Erzurum\",\"destinationSlug\":\"erzurum\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":206.98,\"totalFare\":\"221.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Erzurum\",\"originCode\":\"ERZA\",\"originName\":\"Erzurum\",\"originSlug\":\"erzurum\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":256.98,\"totalFare\":\"271.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Erzurum\",\"originCode\":\"ERZA\",\"originName\":\"Erzurum\",\"originSlug\":\"erzurum\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":256.98,\"totalFare\":\"271.98\",\"currency\":\"TRY\",\"direction\":2}],\"FRA\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Frankfurt\",\"destinationCode\":\"FRAA\",\"destinationName\":\"Frankfurt\",\"destinationSlug\":\"frankfurt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":143,\"totalFare\":\"199.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Frankfurt\",\"originCode\":\"FRAA\",\"originName\":\"Frankfurt\",\"originSlug\":\"frankfurt\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":181.53,\"totalFare\":\"224.07\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Frankfurt\",\"originCode\":\"FRAA\",\"originName\":\"Frankfurt\",\"originSlug\":\"frankfurt\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":187.83,\"totalFare\":\"219.83\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Frankfurt\",\"destinationCode\":\"FRAA\",\"destinationName\":\"Frankfurt\",\"destinationSlug\":\"frankfurt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":187.83,\"totalFare\":\"219.83\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Frankfurt\",\"destinationCode\":\"FRAA\",\"destinationName\":\"Frankfurt\",\"destinationSlug\":\"frankfurt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":215,\"totalFare\":\"271.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Frankfurt\",\"destinationCode\":\"FRAA\",\"destinationName\":\"Frankfurt\",\"destinationSlug\":\"frankfurt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":215,\"totalFare\":\"271.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Frankfurt\",\"originCode\":\"FRAA\",\"originName\":\"Frankfurt\",\"originSlug\":\"frankfurt\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":216.29,\"totalFare\":\"248.29\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Frankfurt\",\"originCode\":\"FRAA\",\"originName\":\"Frankfurt\",\"originSlug\":\"frankfurt\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":247,\"totalFare\":\"303.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Frankfurt\",\"destinationCode\":\"FRAA\",\"destinationName\":\"Frankfurt\",\"destinationSlug\":\"frankfurt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":255,\"totalFare\":\"311.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Frankfurt\",\"destinationCode\":\"FRAA\",\"destinationName\":\"Frankfurt\",\"destinationSlug\":\"frankfurt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":255,\"totalFare\":\"311.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Frankfurt\",\"originCode\":\"FRAA\",\"originName\":\"Frankfurt\",\"originSlug\":\"frankfurt\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":266.62,\"totalFare\":\"309.16\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Frankfurt\",\"originCode\":\"FRAA\",\"originName\":\"Frankfurt\",\"originSlug\":\"frankfurt\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":292,\"totalFare\":\"348.73\",\"currency\":\"TRY\",\"direction\":2}],\"GZT\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Gaziantep\",\"originCode\":\"GZTA\",\"originName\":\"Gaziantep\",\"originSlug\":\"gaziantep\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":78.99,\"totalFare\":\"94.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Gaziantep\",\"destinationCode\":\"GZTA\",\"destinationName\":\"Gaziantep\",\"destinationSlug\":\"gaziantep\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":84.99,\"totalFare\":\"100.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Gaziantep\",\"originCode\":\"GZTA\",\"originName\":\"Gaziantep\",\"originSlug\":\"gaziantep\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":89.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Gaziantep\",\"destinationCode\":\"GZTA\",\"destinationName\":\"Gaziantep\",\"destinationSlug\":\"gaziantep\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":126.99,\"totalFare\":\"142.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Gaziantep\",\"originCode\":\"GZTA\",\"originName\":\"Gaziantep\",\"originSlug\":\"gaziantep\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":127.99,\"totalFare\":\"143.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Gaziantep\",\"originCode\":\"GZTA\",\"originName\":\"Gaziantep\",\"originSlug\":\"gaziantep\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":136.98,\"totalFare\":\"151.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Gaziantep\",\"originCode\":\"GZTA\",\"originName\":\"Gaziantep\",\"originSlug\":\"gaziantep\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":137.99,\"totalFare\":\"153.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Gaziantep\",\"destinationCode\":\"GZTA\",\"destinationName\":\"Gaziantep\",\"destinationSlug\":\"gaziantep\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":138.99,\"totalFare\":\"154.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Gaziantep\",\"destinationCode\":\"GZTA\",\"destinationName\":\"Gaziantep\",\"destinationSlug\":\"gaziantep\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":138.99,\"totalFare\":\"154.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Gaziantep\",\"originCode\":\"GZTA\",\"originName\":\"Gaziantep\",\"originSlug\":\"gaziantep\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":194,\"totalFare\":\"211\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Gaziantep\",\"destinationCode\":\"GZTA\",\"destinationName\":\"Gaziantep\",\"destinationSlug\":\"gaziantep\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":203.98,\"totalFare\":\"219.98\",\"currency\":\"TRY\",\"direction\":1}],\"GZP\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Gazipa\\u015fa\",\"destinationCode\":\"GZPA\",\"destinationName\":\"Gazipa\\u015fa\",\"destinationSlug\":\"gazipasa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":79.99,\"totalFare\":\"95.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Gazipa\\u015fa\",\"originCode\":\"GZPA\",\"originName\":\"Gazipa\\u015fa\",\"originSlug\":\"gazipasa\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":80.99,\"totalFare\":\"96.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Gazipa\\u015fa\",\"originCode\":\"GZPA\",\"originName\":\"Gazipa\\u015fa\",\"originSlug\":\"gazipasa\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":132.98,\"totalFare\":\"147.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Gazipa\\u015fa\",\"originCode\":\"GZPA\",\"originName\":\"Gazipa\\u015fa\",\"originSlug\":\"gazipasa\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":132.98,\"totalFare\":\"147.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Gazipa\\u015fa\",\"destinationCode\":\"GZPA\",\"destinationName\":\"Gazipa\\u015fa\",\"destinationSlug\":\"gazipasa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.99,\"totalFare\":\"149.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Gazipa\\u015fa\",\"destinationCode\":\"GZPA\",\"destinationName\":\"Gazipa\\u015fa\",\"destinationSlug\":\"gazipasa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.99,\"totalFare\":\"149.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Gazipa\\u015fa\",\"originCode\":\"GZPA\",\"originName\":\"Gazipa\\u015fa\",\"originSlug\":\"gazipasa\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":134.99,\"totalFare\":\"150.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Gazipa\\u015fa\",\"originCode\":\"GZPA\",\"originName\":\"Gazipa\\u015fa\",\"originSlug\":\"gazipasa\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.98,\"totalFare\":\"154.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Gazipa\\u015fa\",\"originCode\":\"GZPA\",\"originName\":\"Gazipa\\u015fa\",\"originSlug\":\"gazipasa\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":152.98,\"totalFare\":\"167.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Gazipa\\u015fa\",\"destinationCode\":\"GZPA\",\"destinationName\":\"Gazipa\\u015fa\",\"destinationSlug\":\"gazipasa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":179.98,\"totalFare\":\"194.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Gazipa\\u015fa\",\"destinationCode\":\"GZPA\",\"destinationName\":\"Gazipa\\u015fa\",\"destinationSlug\":\"gazipasa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":188.98,\"totalFare\":\"204.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Gazipa\\u015fa\",\"destinationCode\":\"GZPA\",\"destinationName\":\"Gazipa\\u015fa\",\"destinationSlug\":\"gazipasa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":210.98,\"totalFare\":\"226.98\",\"currency\":\"TRY\",\"direction\":1}],\"HAM\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Hamburg\",\"destinationCode\":\"HAMA\",\"destinationName\":\"Hamburg\",\"destinationSlug\":\"hamburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":181,\"totalFare\":\"237.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Hamburg\",\"originCode\":\"HAMA\",\"originName\":\"Hamburg\",\"originSlug\":\"hamburg\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":193,\"totalFare\":\"249.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Hamburg\",\"originCode\":\"HAMA\",\"originName\":\"Hamburg\",\"originSlug\":\"hamburg\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":216.29,\"totalFare\":\"248.29\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Hamburg\",\"destinationCode\":\"HAMA\",\"destinationName\":\"Hamburg\",\"destinationSlug\":\"hamburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":244.76,\"totalFare\":\"276.76\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Hamburg\",\"destinationCode\":\"HAMA\",\"destinationName\":\"Hamburg\",\"destinationSlug\":\"hamburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":253,\"totalFare\":\"309.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Hamburg\",\"destinationCode\":\"HAMA\",\"destinationName\":\"Hamburg\",\"destinationSlug\":\"hamburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":253,\"totalFare\":\"309.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Hamburg\",\"originCode\":\"HAMA\",\"originName\":\"Hamburg\",\"originSlug\":\"hamburg\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":255,\"totalFare\":\"311.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Hamburg\",\"originCode\":\"HAMA\",\"originName\":\"Hamburg\",\"originSlug\":\"hamburg\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":255,\"totalFare\":\"311.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Hamburg\",\"destinationCode\":\"HAMA\",\"destinationName\":\"Hamburg\",\"destinationSlug\":\"hamburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":293,\"totalFare\":\"349.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Hamburg\",\"destinationCode\":\"HAMA\",\"destinationName\":\"Hamburg\",\"destinationSlug\":\"hamburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":293,\"totalFare\":\"349.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Hamburg\",\"originCode\":\"HAMA\",\"originName\":\"Hamburg\",\"originSlug\":\"hamburg\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":300,\"totalFare\":\"356.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Hamburg\",\"originCode\":\"HAMA\",\"originName\":\"Hamburg\",\"originSlug\":\"hamburg\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":449.23,\"totalFare\":\"499.23\",\"currency\":\"TRY\",\"direction\":2}],\"HAJ\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Hannover\",\"destinationCode\":\"HAJA\",\"destinationName\":\"Hannover\",\"destinationSlug\":\"hannover\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":214.35,\"totalFare\":\"264.35\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XG\",\"operatingAirlineTitle\":\"Clickair\",\"origin\":\"Hannover\",\"originCode\":\"HAJA\",\"originName\":\"Hannover\",\"originSlug\":\"hannover\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":216.29,\"totalFare\":\"248.29\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XG\",\"operatingAirlineTitle\":\"Clickair\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Hannover\",\"destinationCode\":\"HAJA\",\"destinationName\":\"Hannover\",\"destinationSlug\":\"hannover\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":216.3,\"totalFare\":\"248.30\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Hannover\",\"originCode\":\"HAJA\",\"originName\":\"Hannover\",\"originSlug\":\"hannover\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":274.47,\"totalFare\":\"324.47\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Hannover\",\"destinationCode\":\"HAJA\",\"destinationName\":\"Hannover\",\"destinationSlug\":\"hannover\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":285.4,\"totalFare\":\"335.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Hannover\",\"destinationCode\":\"HAJA\",\"destinationName\":\"Hannover\",\"destinationSlug\":\"hannover\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":285.4,\"totalFare\":\"335.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Hannover\",\"destinationCode\":\"HAJA\",\"destinationName\":\"Hannover\",\"destinationSlug\":\"hannover\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":342.4,\"totalFare\":\"392.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Hannover\",\"originCode\":\"HAJA\",\"originName\":\"Hannover\",\"originSlug\":\"hannover\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":345.52,\"totalFare\":\"395.52\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Hannover\",\"originCode\":\"HAJA\",\"originName\":\"Hannover\",\"originSlug\":\"hannover\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":345.52,\"totalFare\":\"395.52\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Hannover\",\"originCode\":\"HAJA\",\"originName\":\"Hannover\",\"originSlug\":\"hannover\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":402.52,\"totalFare\":\"452.52\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Hannover\",\"destinationCode\":\"HAJA\",\"destinationName\":\"Hannover\",\"destinationSlug\":\"hannover\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":403.4,\"totalFare\":\"453.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Hannover\",\"originCode\":\"HAJA\",\"originName\":\"Hannover\",\"originSlug\":\"hannover\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":459.52,\"totalFare\":\"509.52\",\"currency\":\"TRY\",\"direction\":2}],\"HTY\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Hatay\",\"originCode\":\"HTYA\",\"originName\":\"Hatay\",\"originSlug\":\"hatay\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":78.99,\"totalFare\":\"94.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Hatay\",\"destinationCode\":\"HTYA\",\"destinationName\":\"Hatay\",\"destinationSlug\":\"hatay\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":84.99,\"totalFare\":\"100.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Hatay\",\"destinationCode\":\"HTYA\",\"destinationName\":\"Hatay\",\"destinationSlug\":\"hatay\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":126.99,\"totalFare\":\"142.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Hatay\",\"destinationCode\":\"HTYA\",\"destinationName\":\"Hatay\",\"destinationSlug\":\"hatay\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":126.99,\"totalFare\":\"142.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Hatay\",\"originCode\":\"HTYA\",\"originName\":\"Hatay\",\"originSlug\":\"hatay\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":132.99,\"totalFare\":\"148.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Hatay\",\"originCode\":\"HTYA\",\"originName\":\"Hatay\",\"originSlug\":\"hatay\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":132.99,\"totalFare\":\"148.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Hatay\",\"destinationCode\":\"HTYA\",\"destinationName\":\"Hatay\",\"destinationSlug\":\"hatay\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":141.99,\"totalFare\":\"157.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Hatay\",\"originCode\":\"HTYA\",\"originName\":\"Hatay\",\"originSlug\":\"hatay\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":144.99,\"totalFare\":\"160.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Hatay\",\"originCode\":\"HTYA\",\"originName\":\"Hatay\",\"originSlug\":\"hatay\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":154.98,\"totalFare\":\"169.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Hatay\",\"originCode\":\"HTYA\",\"originName\":\"Hatay\",\"originSlug\":\"hatay\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":192,\"totalFare\":\"209\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Hatay\",\"destinationCode\":\"HTYA\",\"destinationName\":\"Hatay\",\"destinationSlug\":\"hatay\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":203.98,\"totalFare\":\"219.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Hatay\",\"destinationCode\":\"HTYA\",\"destinationName\":\"Hatay\",\"destinationSlug\":\"hatay\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":230.99,\"totalFare\":\"247.99\",\"currency\":\"TRY\",\"direction\":1}],\"HKG\":[{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Hong Kong\",\"destinationCode\":\"HKGA\",\"destinationName\":\"Hong Kong\",\"destinationSlug\":\"hong-kong\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1028.53,\"totalFare\":\"1078.53\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Hong Kong\",\"originCode\":\"HKGA\",\"originName\":\"Hong Kong\",\"originSlug\":\"hong-kong\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1069.71,\"totalFare\":\"1119.71\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Hong Kong\",\"destinationCode\":\"HKGA\",\"destinationName\":\"Hong Kong\",\"destinationSlug\":\"hong-kong\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1328.33,\"totalFare\":\"1378.33\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Hong Kong\",\"destinationCode\":\"HKGA\",\"destinationName\":\"Hong Kong\",\"destinationSlug\":\"hong-kong\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1339.27,\"totalFare\":\"1389.27\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Hong Kong\",\"destinationCode\":\"HKGA\",\"destinationName\":\"Hong Kong\",\"destinationSlug\":\"hong-kong\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1434.55,\"totalFare\":\"1484.55\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"EK\",\"operatingAirlineTitle\":\"Emirates\",\"origin\":\"Hong Kong\",\"originCode\":\"HKGA\",\"originName\":\"Hong Kong\",\"originSlug\":\"hong-kong\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1452.38,\"totalFare\":\"1502.38\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Hong Kong\",\"originCode\":\"HKGA\",\"originName\":\"Hong Kong\",\"originSlug\":\"hong-kong\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1534.71,\"totalFare\":\"1584.71\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Hong Kong\",\"originCode\":\"HKGA\",\"originName\":\"Hong Kong\",\"originSlug\":\"hong-kong\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1535.47,\"totalFare\":\"1585.47\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Hong Kong\",\"destinationCode\":\"HKGA\",\"destinationName\":\"Hong Kong\",\"destinationSlug\":\"hong-kong\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1593.2,\"totalFare\":\"1643.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Hong Kong\",\"destinationCode\":\"HKGA\",\"destinationName\":\"Hong Kong\",\"destinationSlug\":\"hong-kong\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1597.2,\"totalFare\":\"1647.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Hong Kong\",\"originCode\":\"HKGA\",\"originName\":\"Hong Kong\",\"originSlug\":\"hong-kong\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1879.36,\"totalFare\":\"1929.36\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Hong Kong\",\"originCode\":\"HKGA\",\"originName\":\"Hong Kong\",\"originSlug\":\"hong-kong\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1879.36,\"totalFare\":\"1929.36\",\"currency\":\"TRY\",\"direction\":2}],\"IGD\":[{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"I\\u011fd\\u0131r\",\"destinationCode\":\"IGDA\",\"destinationName\":\"I\\u011fd\\u0131r\",\"destinationSlug\":\"igdir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":206.98,\"totalFare\":\"221.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"I\\u011fd\\u0131r\",\"originCode\":\"IGDA\",\"originName\":\"I\\u011fd\\u0131r\",\"originSlug\":\"igdir\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":252,\"totalFare\":\"269\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"I\\u011fd\\u0131r\",\"originCode\":\"IGDA\",\"originName\":\"I\\u011fd\\u0131r\",\"originSlug\":\"igdir\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":300,\"totalFare\":\"317\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"I\\u011fd\\u0131r\",\"originCode\":\"IGDA\",\"originName\":\"I\\u011fd\\u0131r\",\"originSlug\":\"igdir\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":300,\"totalFare\":\"317\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"I\\u011fd\\u0131r\",\"destinationCode\":\"IGDA\",\"destinationName\":\"I\\u011fd\\u0131r\",\"destinationSlug\":\"igdir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":307,\"totalFare\":\"324\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"I\\u011fd\\u0131r\",\"originCode\":\"IGDA\",\"originName\":\"I\\u011fd\\u0131r\",\"originSlug\":\"igdir\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":309.98,\"totalFare\":\"324.98\",\"currency\":\"TRY\",\"direction\":2}],\"ISE\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Isparta\",\"originCode\":\"ISEA\",\"originName\":\"Isparta\",\"originSlug\":\"isparta\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":165,\"totalFare\":\"180\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Isparta\",\"originCode\":\"ISEA\",\"originName\":\"Isparta\",\"originSlug\":\"isparta\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":188,\"totalFare\":\"205\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Isparta\",\"destinationCode\":\"ISEA\",\"destinationName\":\"Isparta\",\"destinationSlug\":\"isparta\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":304,\"totalFare\":\"321\",\"currency\":\"TRY\",\"direction\":1}],\"IST\":[{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":32.99,\"totalFare\":\"48.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":34.99,\"totalFare\":\"50.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":34.99,\"totalFare\":\"50.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":42.99,\"totalFare\":\"58.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":52,\"totalFare\":\"69\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":52.99,\"totalFare\":\"68.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":86.99,\"totalFare\":\"102.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":98.99,\"totalFare\":\"114.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":107.99,\"totalFare\":\"122.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":109.99,\"totalFare\":\"129.99\",\"currency\":\"TRY\",\"direction\":1}],\"IZM\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":46.99,\"totalFare\":\"62.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":52,\"totalFare\":\"69\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":52.99,\"totalFare\":\"68.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":52.99,\"totalFare\":\"68.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":64.99,\"totalFare\":\"80.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":71.99,\"totalFare\":\"87.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":142.99,\"totalFare\":\"158.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":152.99,\"totalFare\":\"168.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":169.99,\"totalFare\":\"189.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":169.99,\"totalFare\":\"189.99\",\"currency\":\"TRY\",\"direction\":2}],\"KCM\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kahramanmara\\u015f\",\"originCode\":\"KCMA\",\"originName\":\"Kahramanmara\\u015f\",\"originSlug\":\"kahramanmaras\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":110.99,\"totalFare\":\"126.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Kahramanmara\\u015f\",\"destinationCode\":\"KCMA\",\"destinationName\":\"Kahramanmara\\u015f\",\"destinationSlug\":\"kahramanmaras\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":129.99,\"totalFare\":\"145.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kahramanmara\\u015f\",\"originCode\":\"KCMA\",\"originName\":\"Kahramanmara\\u015f\",\"originSlug\":\"kahramanmaras\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":164.99,\"totalFare\":\"180.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kahramanmara\\u015f\",\"originCode\":\"KCMA\",\"originName\":\"Kahramanmara\\u015f\",\"originSlug\":\"kahramanmaras\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":164.99,\"totalFare\":\"180.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kahramanmara\\u015f\",\"originCode\":\"KCMA\",\"originName\":\"Kahramanmara\\u015f\",\"originSlug\":\"kahramanmaras\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":164.99,\"totalFare\":\"180.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kahramanmara\\u015f\",\"originCode\":\"KCMA\",\"originName\":\"Kahramanmara\\u015f\",\"originSlug\":\"kahramanmaras\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":240.98,\"totalFare\":\"256.98\",\"currency\":\"TRY\",\"direction\":2}],\"KSY\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kars\",\"originCode\":\"KSYA\",\"originName\":\"Kars\",\"originSlug\":\"kars\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":247,\"totalFare\":\"264\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Kars\",\"destinationCode\":\"KSYA\",\"destinationName\":\"Kars\",\"destinationSlug\":\"kars\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":259.98,\"totalFare\":\"274.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kars\",\"originCode\":\"KSYA\",\"originName\":\"Kars\",\"originSlug\":\"kars\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":302,\"totalFare\":\"319\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kars\",\"originCode\":\"KSYA\",\"originName\":\"Kars\",\"originSlug\":\"kars\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":302,\"totalFare\":\"319\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kars\",\"originCode\":\"KSYA\",\"originName\":\"Kars\",\"originSlug\":\"kars\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":302,\"totalFare\":\"319\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kars\",\"originCode\":\"KSYA\",\"originName\":\"Kars\",\"originSlug\":\"kars\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":330.99,\"totalFare\":\"347.99\",\"currency\":\"TRY\",\"direction\":2}],\"ASR\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Kayseri\",\"destinationCode\":\"ASRA\",\"destinationName\":\"Kayseri\",\"destinationSlug\":\"kayseri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":72.99,\"totalFare\":\"88.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kayseri\",\"originCode\":\"ASRA\",\"originName\":\"Kayseri\",\"originSlug\":\"kayseri\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":73.99,\"totalFare\":\"89.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Kayseri\",\"destinationCode\":\"ASRA\",\"destinationName\":\"Kayseri\",\"destinationSlug\":\"kayseri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":126.99,\"totalFare\":\"142.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Kayseri\",\"destinationCode\":\"ASRA\",\"destinationName\":\"Kayseri\",\"destinationSlug\":\"kayseri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":126.99,\"totalFare\":\"142.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Kayseri\",\"originCode\":\"ASRA\",\"originName\":\"Kayseri\",\"originSlug\":\"kayseri\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":127.99,\"totalFare\":\"143.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kayseri\",\"originCode\":\"ASRA\",\"originName\":\"Kayseri\",\"originSlug\":\"kayseri\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":127.99,\"totalFare\":\"143.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Kayseri\",\"originCode\":\"ASRA\",\"originName\":\"Kayseri\",\"originSlug\":\"kayseri\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":134.98,\"totalFare\":\"149.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kayseri\",\"originCode\":\"ASRA\",\"originName\":\"Kayseri\",\"originSlug\":\"kayseri\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":192,\"totalFare\":\"209\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Kayseri\",\"originCode\":\"ASRA\",\"originName\":\"Kayseri\",\"originSlug\":\"kayseri\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":193.98,\"totalFare\":\"209.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Kayseri\",\"destinationCode\":\"ASRA\",\"destinationName\":\"Kayseri\",\"destinationSlug\":\"kayseri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":197,\"totalFare\":\"214\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Kayseri\",\"destinationCode\":\"ASRA\",\"destinationName\":\"Kayseri\",\"destinationSlug\":\"kayseri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":203.98,\"totalFare\":\"219.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Kayseri\",\"destinationCode\":\"ASRA\",\"destinationName\":\"Kayseri\",\"destinationSlug\":\"kayseri\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":363,\"totalFare\":\"375\",\"currency\":\"TRY\",\"direction\":1}],\"KFS\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Kastamonu\",\"destinationCode\":\"KFSA\",\"destinationName\":\"Kastamonu\",\"destinationSlug\":\"kfs-kastamonu\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":114,\"totalFare\":\"129\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kastamonu\",\"originCode\":\"KFSA\",\"originName\":\"Kastamonu\",\"originSlug\":\"kfs-kastamonu\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":167,\"totalFare\":\"182\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kastamonu\",\"originCode\":\"KFSA\",\"originName\":\"Kastamonu\",\"originSlug\":\"kfs-kastamonu\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":190,\"totalFare\":\"207\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kastamonu\",\"originCode\":\"KFSA\",\"originName\":\"Kastamonu\",\"originSlug\":\"kfs-kastamonu\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":190,\"totalFare\":\"207\",\"currency\":\"TRY\",\"direction\":2}],\"IEV\":[{\"operatingAirline\":\"9U\",\"operatingAirlineTitle\":\"Air Moldova\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Kiev\",\"destinationCode\":\"IEVA\",\"destinationName\":\"Kiev\",\"destinationSlug\":\"kiev\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":313.24,\"totalFare\":\"363.24\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"9U\",\"operatingAirlineTitle\":\"Air Moldova\",\"origin\":\"Kiev\",\"originCode\":\"IEVA\",\"originName\":\"Kiev\",\"originSlug\":\"kiev\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":331.83,\"totalFare\":\"381.83\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Kiev\",\"destinationCode\":\"IEVA\",\"destinationName\":\"Kiev\",\"destinationSlug\":\"kiev\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":500.2,\"totalFare\":\"550.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Kiev\",\"destinationCode\":\"IEVA\",\"destinationName\":\"Kiev\",\"destinationSlug\":\"kiev\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":500.2,\"totalFare\":\"550.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Kiev\",\"destinationCode\":\"IEVA\",\"destinationName\":\"Kiev\",\"destinationSlug\":\"kiev\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":500.2,\"totalFare\":\"550.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Kiev\",\"destinationCode\":\"IEVA\",\"destinationName\":\"Kiev\",\"destinationSlug\":\"kiev\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":500.2,\"totalFare\":\"550.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Kiev\",\"destinationCode\":\"IEVA\",\"destinationName\":\"Kiev\",\"destinationSlug\":\"kiev\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":504.2,\"totalFare\":\"554.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kiev\",\"originCode\":\"IEVA\",\"originName\":\"Kiev\",\"originSlug\":\"kiev\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":668.99,\"totalFare\":\"718.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kiev\",\"originCode\":\"IEVA\",\"originName\":\"Kiev\",\"originSlug\":\"kiev\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":668.99,\"totalFare\":\"718.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kiev\",\"originCode\":\"IEVA\",\"originName\":\"Kiev\",\"originSlug\":\"kiev\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":668.99,\"totalFare\":\"718.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kiev\",\"originCode\":\"IEVA\",\"originName\":\"Kiev\",\"originSlug\":\"kiev\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":668.99,\"totalFare\":\"718.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Kiev\",\"originCode\":\"IEVA\",\"originName\":\"Kiev\",\"originSlug\":\"kiev\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":668.99,\"totalFare\":\"718.99\",\"currency\":\"TRY\",\"direction\":2}],\"KYA\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Konya\",\"originCode\":\"KYAA\",\"originName\":\"Konya\",\"originSlug\":\"konya\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":68.99,\"totalFare\":\"84.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Konya\",\"destinationCode\":\"KYAA\",\"destinationName\":\"Konya\",\"destinationSlug\":\"konya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":72.99,\"totalFare\":\"88.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Konya\",\"destinationCode\":\"KYAA\",\"destinationName\":\"Konya\",\"destinationSlug\":\"konya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":97.99,\"totalFare\":\"113.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Konya\",\"originCode\":\"KYAA\",\"originName\":\"Konya\",\"originSlug\":\"konya\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":97.99,\"totalFare\":\"113.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Konya\",\"originCode\":\"KYAA\",\"originName\":\"Konya\",\"originSlug\":\"konya\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":102.98,\"totalFare\":\"117.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Konya\",\"destinationCode\":\"KYAA\",\"destinationName\":\"Konya\",\"destinationSlug\":\"konya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":126.99,\"totalFare\":\"142.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Konya\",\"originCode\":\"KYAA\",\"originName\":\"Konya\",\"originSlug\":\"konya\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":127.99,\"totalFare\":\"143.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Konya\",\"originCode\":\"KYAA\",\"originName\":\"Konya\",\"originSlug\":\"konya\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":171.98,\"totalFare\":\"187.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Konya\",\"destinationCode\":\"KYAA\",\"destinationName\":\"Konya\",\"destinationSlug\":\"konya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":171.98,\"totalFare\":\"187.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Konya\",\"originCode\":\"KYAA\",\"originName\":\"Konya\",\"originSlug\":\"konya\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":190,\"totalFare\":\"207\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Konya\",\"destinationCode\":\"KYAA\",\"destinationName\":\"Konya\",\"destinationSlug\":\"konya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":194,\"totalFare\":\"211\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Konya\",\"destinationCode\":\"KYAA\",\"destinationName\":\"Konya\",\"destinationSlug\":\"konya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":197,\"totalFare\":\"214\",\"currency\":\"TRY\",\"direction\":1}],\"KZR\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"K\\u00fctahya\",\"destinationCode\":\"KZRA\",\"destinationName\":\"K\\u00fctahya\",\"destinationSlug\":\"kutahya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":230.99,\"totalFare\":\"247.99\",\"currency\":\"TRY\",\"direction\":1}],\"ECN\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Lefko\\u015fa\",\"destinationCode\":\"ECNA\",\"destinationName\":\"Lefko\\u015fa\",\"destinationSlug\":\"lefkosa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":61.99,\"totalFare\":\"77.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Lefko\\u015fa\",\"destinationCode\":\"ECNA\",\"destinationName\":\"Lefko\\u015fa\",\"destinationSlug\":\"lefkosa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":68.99,\"totalFare\":\"84.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Lefko\\u015fa\",\"destinationCode\":\"ECNA\",\"destinationName\":\"Lefko\\u015fa\",\"destinationSlug\":\"lefkosa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":78.99,\"totalFare\":\"94.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Lefko\\u015fa\",\"originCode\":\"ECNA\",\"originName\":\"Lefko\\u015fa\",\"originSlug\":\"lefkosa\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":100,\"totalFare\":\"115\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Lefko\\u015fa\",\"originCode\":\"ECNA\",\"originName\":\"Lefko\\u015fa\",\"originSlug\":\"lefkosa\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":124,\"totalFare\":\"136\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Lefko\\u015fa\",\"destinationCode\":\"ECNA\",\"destinationName\":\"Lefko\\u015fa\",\"destinationSlug\":\"lefkosa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":132,\"totalFare\":\"149\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Lefko\\u015fa\",\"originCode\":\"ECNA\",\"originName\":\"Lefko\\u015fa\",\"originSlug\":\"lefkosa\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":135.99,\"totalFare\":\"151.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Lefko\\u015fa\",\"destinationCode\":\"ECNA\",\"destinationName\":\"Lefko\\u015fa\",\"destinationSlug\":\"lefkosa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":164,\"totalFare\":\"176\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Lefko\\u015fa\",\"originCode\":\"ECNA\",\"originName\":\"Lefko\\u015fa\",\"originSlug\":\"lefkosa\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":185.99,\"totalFare\":\"201.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Lefko\\u015fa\",\"destinationCode\":\"ECNA\",\"destinationName\":\"Lefko\\u015fa\",\"destinationSlug\":\"lefkosa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":186.98,\"totalFare\":\"202.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Lefko\\u015fa\",\"originCode\":\"ECNA\",\"originName\":\"Lefko\\u015fa\",\"originSlug\":\"lefkosa\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":204.98,\"totalFare\":\"220.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Lefko\\u015fa\",\"originCode\":\"ECNA\",\"originName\":\"Lefko\\u015fa\",\"originSlug\":\"lefkosa\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":214,\"totalFare\":\"226\",\"currency\":\"TRY\",\"direction\":2}],\"LIS\":[{\"operatingAirline\":\"AZ\",\"operatingAirlineTitle\":\"Alitalia\",\"origin\":\"Lizbon\",\"originCode\":\"LISA\",\"originName\":\"Lizbon\",\"originSlug\":\"lisbon\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":541.81,\"totalFare\":\"591.81\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"IB\",\"operatingAirlineTitle\":\"Iberia\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Lizbon\",\"destinationCode\":\"LISA\",\"destinationName\":\"Lizbon\",\"destinationSlug\":\"lisbon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":546.69,\"totalFare\":\"596.69\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Lizbon\",\"destinationCode\":\"LISA\",\"destinationName\":\"Lizbon\",\"destinationSlug\":\"lisbon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":762.69,\"totalFare\":\"812.69\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Lizbon\",\"destinationCode\":\"LISA\",\"destinationName\":\"Lizbon\",\"destinationSlug\":\"lisbon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":845.14,\"totalFare\":\"895.14\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Lizbon\",\"destinationCode\":\"LISA\",\"destinationName\":\"Lizbon\",\"destinationSlug\":\"lisbon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":845.14,\"totalFare\":\"895.14\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Lizbon\",\"originCode\":\"LISA\",\"originName\":\"Lizbon\",\"originSlug\":\"lisbon\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":851.77,\"totalFare\":\"901.77\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Lizbon\",\"originCode\":\"LISA\",\"originName\":\"Lizbon\",\"originSlug\":\"lisbon\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":851.77,\"totalFare\":\"901.77\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Lizbon\",\"destinationCode\":\"LISA\",\"destinationName\":\"Lizbon\",\"destinationSlug\":\"lisbon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":930.14,\"totalFare\":\"980.14\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Lizbon\",\"destinationCode\":\"LISA\",\"destinationName\":\"Lizbon\",\"destinationSlug\":\"lisbon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":934.14,\"totalFare\":\"984.14\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Lizbon\",\"originCode\":\"LISA\",\"originName\":\"Lizbon\",\"originSlug\":\"lisbon\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":936.77,\"totalFare\":\"986.77\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Lizbon\",\"originCode\":\"LISA\",\"originName\":\"Lizbon\",\"originSlug\":\"lisbon\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":936.77,\"totalFare\":\"986.77\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Lizbon\",\"originCode\":\"LISA\",\"originName\":\"Lizbon\",\"originSlug\":\"lisbon\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":936.77,\"totalFare\":\"986.77\",\"currency\":\"TRY\",\"direction\":2}],\"LON\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Londra\",\"destinationCode\":\"LONA\",\"destinationName\":\"Londra\",\"destinationSlug\":\"london\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":210.42,\"totalFare\":\"260.42\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"Londra\",\"originCode\":\"LONA\",\"originName\":\"Londra\",\"originSlug\":\"london\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":267.55,\"totalFare\":\"317.55\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Londra\",\"destinationCode\":\"LONA\",\"destinationName\":\"Londra\",\"destinationSlug\":\"london\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":289,\"totalFare\":\"345.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Londra\",\"destinationCode\":\"LONA\",\"destinationName\":\"Londra\",\"destinationSlug\":\"london\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":290,\"totalFare\":\"346.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Londra\",\"destinationCode\":\"LONA\",\"destinationName\":\"Londra\",\"destinationSlug\":\"london\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":290,\"totalFare\":\"346.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Londra\",\"destinationCode\":\"LONA\",\"destinationName\":\"Londra\",\"destinationSlug\":\"london\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":329,\"totalFare\":\"385.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Londra\",\"destinationCode\":\"LONA\",\"destinationName\":\"Londra\",\"destinationSlug\":\"london\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":329,\"totalFare\":\"385.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Londra\",\"originCode\":\"LONA\",\"originName\":\"Londra\",\"originSlug\":\"london\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":347.74,\"totalFare\":\"397.74\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Londra\",\"originCode\":\"LONA\",\"originName\":\"Londra\",\"originSlug\":\"london\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":347.74,\"totalFare\":\"397.74\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Londra\",\"originCode\":\"LONA\",\"originName\":\"Londra\",\"originSlug\":\"london\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":355,\"totalFare\":\"411.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Londra\",\"originCode\":\"LONA\",\"originName\":\"Londra\",\"originSlug\":\"london\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":395,\"totalFare\":\"451.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Londra\",\"originCode\":\"LONA\",\"originName\":\"Londra\",\"originSlug\":\"london\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":437.74,\"totalFare\":\"487.74\",\"currency\":\"TRY\",\"direction\":2}],\"LAX\":[{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Los Angeles\",\"originCode\":\"LAXA\",\"originName\":\"Los Angeles\",\"originSlug\":\"los-angeles\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1304.8,\"totalFare\":\"1354.8\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Los Angeles\",\"originCode\":\"LAXA\",\"originName\":\"Los Angeles\",\"originSlug\":\"los-angeles\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1444.8,\"totalFare\":\"1494.8\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Los Angeles\",\"destinationCode\":\"LAXA\",\"destinationName\":\"Los Angeles\",\"destinationSlug\":\"los-angeles\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1472.81,\"totalFare\":\"1522.81\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Los Angeles\",\"destinationCode\":\"LAXA\",\"destinationName\":\"Los Angeles\",\"destinationSlug\":\"los-angeles\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1623.61,\"totalFare\":\"1673.61\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Los Angeles\",\"destinationCode\":\"LAXA\",\"destinationName\":\"Los Angeles\",\"destinationSlug\":\"los-angeles\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3078.83,\"totalFare\":\"3128.83\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Los Angeles\",\"originCode\":\"LAXA\",\"originName\":\"Los Angeles\",\"originSlug\":\"los-angeles\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3090.08,\"totalFare\":\"3140.08\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Los Angeles\",\"originCode\":\"LAXA\",\"originName\":\"Los Angeles\",\"originSlug\":\"los-angeles\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3090.08,\"totalFare\":\"3140.08\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Los Angeles\",\"originCode\":\"LAXA\",\"originName\":\"Los Angeles\",\"originSlug\":\"los-angeles\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3148.08,\"totalFare\":\"3198.08\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Los Angeles\",\"originCode\":\"LAXA\",\"originName\":\"Los Angeles\",\"originSlug\":\"los-angeles\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3148.08,\"totalFare\":\"3198.08\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Los Angeles\",\"destinationCode\":\"LAXA\",\"destinationName\":\"Los Angeles\",\"destinationSlug\":\"los-angeles\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3220.09,\"totalFare\":\"3270.09\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Los Angeles\",\"destinationCode\":\"LAXA\",\"destinationName\":\"Los Angeles\",\"destinationSlug\":\"los-angeles\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3220.09,\"totalFare\":\"3270.09\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Los Angeles\",\"destinationCode\":\"LAXA\",\"destinationName\":\"Los Angeles\",\"destinationSlug\":\"los-angeles\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":3348.09,\"totalFare\":\"3398.09\",\"currency\":\"TRY\",\"direction\":1}],\"MAD\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Madrid\",\"destinationCode\":\"MADA\",\"destinationName\":\"Madrid\",\"destinationSlug\":\"madrid\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":233,\"totalFare\":\"289.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Madrid\",\"originCode\":\"MADA\",\"originName\":\"Madrid\",\"originSlug\":\"madrid\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":241,\"totalFare\":\"297.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Madrid\",\"originCode\":\"MADA\",\"originName\":\"Madrid\",\"originSlug\":\"madrid\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":303,\"totalFare\":\"359.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Madrid\",\"originCode\":\"MADA\",\"originName\":\"Madrid\",\"originSlug\":\"madrid\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":303,\"totalFare\":\"359.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Madrid\",\"originCode\":\"MADA\",\"originName\":\"Madrid\",\"originSlug\":\"madrid\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":303,\"totalFare\":\"359.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Madrid\",\"destinationCode\":\"MADA\",\"destinationName\":\"Madrid\",\"destinationSlug\":\"madrid\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Madrid\",\"destinationCode\":\"MADA\",\"destinationName\":\"Madrid\",\"destinationSlug\":\"madrid\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Madrid\",\"destinationCode\":\"MADA\",\"destinationName\":\"Madrid\",\"destinationSlug\":\"madrid\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Madrid\",\"destinationCode\":\"MADA\",\"destinationName\":\"Madrid\",\"destinationSlug\":\"madrid\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":345,\"totalFare\":\"401.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Madrid\",\"destinationCode\":\"MADA\",\"destinationName\":\"Madrid\",\"destinationSlug\":\"madrid\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":345,\"totalFare\":\"401.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Madrid\",\"originCode\":\"MADA\",\"originName\":\"Madrid\",\"originSlug\":\"madrid\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":348,\"totalFare\":\"404.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Madrid\",\"originCode\":\"MADA\",\"originName\":\"Madrid\",\"originSlug\":\"madrid\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":555.78,\"totalFare\":\"605.78\",\"currency\":\"TRY\",\"direction\":2}],\"MLX\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Malatya\",\"destinationCode\":\"MLXA\",\"destinationName\":\"Malatya\",\"destinationSlug\":\"malatya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":119.99,\"totalFare\":\"135.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Malatya\",\"originCode\":\"MLXA\",\"originName\":\"Malatya\",\"originSlug\":\"malatya\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":120.99,\"totalFare\":\"136.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Malatya\",\"originCode\":\"MLXA\",\"originName\":\"Malatya\",\"originSlug\":\"malatya\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":172.99,\"totalFare\":\"188.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Malatya\",\"destinationCode\":\"MLXA\",\"destinationName\":\"Malatya\",\"destinationSlug\":\"malatya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":173.99,\"totalFare\":\"189.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Malatya\",\"destinationCode\":\"MLXA\",\"destinationName\":\"Malatya\",\"destinationSlug\":\"malatya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":173.99,\"totalFare\":\"189.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Malatya\",\"destinationCode\":\"MLXA\",\"destinationName\":\"Malatya\",\"destinationSlug\":\"malatya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":173.99,\"totalFare\":\"189.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Malatya\",\"originCode\":\"MLXA\",\"originName\":\"Malatya\",\"originSlug\":\"malatya\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":174.99,\"totalFare\":\"190.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Malatya\",\"originCode\":\"MLXA\",\"originName\":\"Malatya\",\"originSlug\":\"malatya\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":174.99,\"totalFare\":\"190.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Malatya\",\"originCode\":\"MLXA\",\"originName\":\"Malatya\",\"originSlug\":\"malatya\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":204.98,\"totalFare\":\"219.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Malatya\",\"destinationCode\":\"MLXA\",\"destinationName\":\"Malatya\",\"destinationSlug\":\"malatya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":206.98,\"totalFare\":\"221.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"Malatya\",\"originCode\":\"MLXA\",\"originName\":\"Malatya\",\"originSlug\":\"malatya\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":238,\"totalFare\":\"250\",\"currency\":\"TRY\",\"direction\":2}],\"MLE\":[{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Male\",\"destinationCode\":\"MLEA\",\"destinationName\":\"Male\",\"destinationSlug\":\"male\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":960.23,\"totalFare\":\"1010.23\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AB\",\"operatingAirlineTitle\":\"Air Berlin\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Male\",\"destinationCode\":\"MLEA\",\"destinationName\":\"Male\",\"destinationSlug\":\"male\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1403.43,\"totalFare\":\"1453.43\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Male\",\"destinationCode\":\"MLEA\",\"destinationName\":\"Male\",\"destinationSlug\":\"male\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1488.14,\"totalFare\":\"1538.14\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Male\",\"destinationCode\":\"MLEA\",\"destinationName\":\"Male\",\"destinationSlug\":\"male\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1556.34,\"totalFare\":\"1606.34\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Male\",\"originCode\":\"MLEA\",\"originName\":\"Male\",\"originSlug\":\"male\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1617.82,\"totalFare\":\"1667.82\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Male\",\"originCode\":\"MLEA\",\"originName\":\"Male\",\"originSlug\":\"male\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1803.82,\"totalFare\":\"1853.82\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Male\",\"originCode\":\"MLEA\",\"originName\":\"Male\",\"originSlug\":\"male\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1803.82,\"totalFare\":\"1853.82\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Male\",\"destinationCode\":\"MLEA\",\"destinationName\":\"Male\",\"destinationSlug\":\"male\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1976.34,\"totalFare\":\"2026.34\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Male\",\"destinationCode\":\"MLEA\",\"destinationName\":\"Male\",\"destinationSlug\":\"male\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1980.34,\"totalFare\":\"2030.34\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Male\",\"originCode\":\"MLEA\",\"originName\":\"Male\",\"originSlug\":\"male\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2105.4,\"totalFare\":\"2155.4\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Male\",\"originCode\":\"MLEA\",\"originName\":\"Male\",\"originSlug\":\"male\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2105.4,\"totalFare\":\"2155.4\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Male\",\"originCode\":\"MLEA\",\"originName\":\"Male\",\"originSlug\":\"male\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2105.4,\"totalFare\":\"2155.4\",\"currency\":\"TRY\",\"direction\":2}],\"MQM\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Mardin\",\"destinationCode\":\"MQMA\",\"destinationName\":\"Mardin\",\"destinationSlug\":\"mardin\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":149.99,\"totalFare\":\"165.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Mardin\",\"originCode\":\"MQMA\",\"originName\":\"Mardin\",\"originSlug\":\"mardin\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":195.99,\"totalFare\":\"211.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Mardin\",\"destinationCode\":\"MQMA\",\"destinationName\":\"Mardin\",\"destinationSlug\":\"mardin\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":209.98,\"totalFare\":\"224.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Mardin\",\"originCode\":\"MQMA\",\"originName\":\"Mardin\",\"originSlug\":\"mardin\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":258.99,\"totalFare\":\"275.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Mardin\",\"originCode\":\"MQMA\",\"originName\":\"Mardin\",\"originSlug\":\"mardin\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":258.99,\"totalFare\":\"275.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Mardin\",\"destinationCode\":\"MQMA\",\"destinationName\":\"Mardin\",\"destinationSlug\":\"mardin\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305.99,\"totalFare\":\"322.99\",\"currency\":\"TRY\",\"direction\":1}],\"MIL\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Milano\",\"originCode\":\"MILA\",\"originName\":\"Milano\",\"originSlug\":\"milan\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":194,\"totalFare\":\"250.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Milano\",\"destinationCode\":\"MILA\",\"destinationName\":\"Milano\",\"destinationSlug\":\"milan\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":213,\"totalFare\":\"269.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Milano\",\"originCode\":\"MILA\",\"originName\":\"Milano\",\"originSlug\":\"milan\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":256,\"totalFare\":\"312.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Milano\",\"originCode\":\"MILA\",\"originName\":\"Milano\",\"originSlug\":\"milan\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":256,\"totalFare\":\"312.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Milano\",\"originCode\":\"MILA\",\"originName\":\"Milano\",\"originSlug\":\"milan\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":256,\"totalFare\":\"312.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Milano\",\"destinationCode\":\"MILA\",\"destinationName\":\"Milano\",\"destinationSlug\":\"milan\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":285,\"totalFare\":\"341.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Milano\",\"destinationCode\":\"MILA\",\"destinationName\":\"Milano\",\"destinationSlug\":\"milan\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":285,\"totalFare\":\"341.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Milano\",\"destinationCode\":\"MILA\",\"destinationName\":\"Milano\",\"destinationSlug\":\"milan\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":285,\"totalFare\":\"341.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Milano\",\"originCode\":\"MILA\",\"originName\":\"Milano\",\"originSlug\":\"milan\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":301,\"totalFare\":\"357.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Milano\",\"destinationCode\":\"MILA\",\"destinationName\":\"Milano\",\"destinationSlug\":\"milan\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":325,\"totalFare\":\"381.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Milano\",\"destinationCode\":\"MILA\",\"destinationName\":\"Milano\",\"destinationSlug\":\"milan\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":325,\"totalFare\":\"381.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Milano\",\"originCode\":\"MILA\",\"originName\":\"Milano\",\"originSlug\":\"milan\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":391.82,\"totalFare\":\"441.82\",\"currency\":\"TRY\",\"direction\":2}],\"MOW\":[{\"operatingAirline\":\"PS\",\"operatingAirlineTitle\":\"Ukraine Intl Airlines\",\"origin\":\"Moskova\",\"originCode\":\"MOWA\",\"originName\":\"Moskova\",\"originSlug\":\"moscow\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":219.54,\"totalFare\":\"269.54\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Moskova\",\"originCode\":\"MOWA\",\"originName\":\"Moskova\",\"originSlug\":\"moscow\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":340.56,\"totalFare\":\"390.56\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"UN\",\"operatingAirlineTitle\":\"Transaero Airlines\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Moskova\",\"destinationCode\":\"MOWA\",\"destinationName\":\"Moskova\",\"destinationSlug\":\"moscow\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":345.19,\"totalFare\":\"395.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Moskova\",\"originCode\":\"MOWA\",\"originName\":\"Moskova\",\"originSlug\":\"moscow\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":411.61,\"totalFare\":\"461.61\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Moskova\",\"destinationCode\":\"MOWA\",\"destinationName\":\"Moskova\",\"destinationSlug\":\"moscow\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":457.19,\"totalFare\":\"507.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Moskova\",\"originCode\":\"MOWA\",\"originName\":\"Moskova\",\"originSlug\":\"moscow\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":511.61,\"totalFare\":\"561.61\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Moskova\",\"destinationCode\":\"MOWA\",\"destinationName\":\"Moskova\",\"destinationSlug\":\"moscow\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":520.44,\"totalFare\":\"570.44\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Moskova\",\"originCode\":\"MOWA\",\"originName\":\"Moskova\",\"originSlug\":\"moscow\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":525.61,\"totalFare\":\"575.61\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Moskova\",\"originCode\":\"MOWA\",\"originName\":\"Moskova\",\"originSlug\":\"moscow\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":525.61,\"totalFare\":\"575.61\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Moskova\",\"destinationCode\":\"MOWA\",\"destinationName\":\"Moskova\",\"destinationSlug\":\"moscow\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":546.44,\"totalFare\":\"596.44\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Moskova\",\"destinationCode\":\"MOWA\",\"destinationName\":\"Moskova\",\"destinationSlug\":\"moscow\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":634.44,\"totalFare\":\"684.44\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Moskova\",\"destinationCode\":\"MOWA\",\"destinationName\":\"Moskova\",\"destinationSlug\":\"moscow\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":638.44,\"totalFare\":\"688.44\",\"currency\":\"TRY\",\"direction\":1}],\"MUC\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"M\\u00fcnih\",\"originCode\":\"MUCA\",\"originName\":\"M\\u00fcnih\",\"originSlug\":\"munich\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":178,\"totalFare\":\"234.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"M\\u00fcnih\",\"originCode\":\"MUCA\",\"originName\":\"M\\u00fcnih\",\"originSlug\":\"munich\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":187.83,\"totalFare\":\"219.83\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"M\\u00fcnih\",\"destinationCode\":\"MUCA\",\"destinationName\":\"M\\u00fcnih\",\"destinationSlug\":\"munich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":187.83,\"totalFare\":\"219.83\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"M\\u00fcnih\",\"destinationCode\":\"MUCA\",\"destinationName\":\"M\\u00fcnih\",\"destinationSlug\":\"munich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":193,\"totalFare\":\"249.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"M\\u00fcnih\",\"originCode\":\"MUCA\",\"originName\":\"M\\u00fcnih\",\"originSlug\":\"munich\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":240,\"totalFare\":\"296.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"M\\u00fcnih\",\"originCode\":\"MUCA\",\"originName\":\"M\\u00fcnih\",\"originSlug\":\"munich\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":240,\"totalFare\":\"296.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"M\\u00fcnih\",\"destinationCode\":\"MUCA\",\"destinationName\":\"M\\u00fcnih\",\"destinationSlug\":\"munich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":244.76,\"totalFare\":\"276.76\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"M\\u00fcnih\",\"destinationCode\":\"MUCA\",\"destinationName\":\"M\\u00fcnih\",\"destinationSlug\":\"munich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":265,\"totalFare\":\"321.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"M\\u00fcnih\",\"originCode\":\"MUCA\",\"originName\":\"M\\u00fcnih\",\"originSlug\":\"munich\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":285,\"totalFare\":\"341.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"M\\u00fcnih\",\"destinationCode\":\"MUCA\",\"destinationName\":\"M\\u00fcnih\",\"destinationSlug\":\"munich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"M\\u00fcnih\",\"destinationCode\":\"MUCA\",\"destinationName\":\"M\\u00fcnih\",\"destinationSlug\":\"munich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"M\\u00fcnih\",\"originCode\":\"MUCA\",\"originName\":\"M\\u00fcnih\",\"originSlug\":\"munich\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":462.52,\"totalFare\":\"512.52\",\"currency\":\"TRY\",\"direction\":2}],\"MSR\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Mu\\u015f\",\"destinationCode\":\"MSRA\",\"destinationName\":\"Mu\\u015f\",\"destinationSlug\":\"mus\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":76.99,\"totalFare\":\"92.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Mu\\u015f\",\"destinationCode\":\"MSRA\",\"destinationName\":\"Mu\\u015f\",\"destinationSlug\":\"mus\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":130.99,\"totalFare\":\"146.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Mu\\u015f\",\"destinationCode\":\"MSRA\",\"destinationName\":\"Mu\\u015f\",\"destinationSlug\":\"mus\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":130.99,\"totalFare\":\"146.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Mu\\u015f\",\"destinationCode\":\"MSRA\",\"destinationName\":\"Mu\\u015f\",\"destinationSlug\":\"mus\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":130.99,\"totalFare\":\"146.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Mu\\u015f\",\"originCode\":\"MSRA\",\"originName\":\"Mu\\u015f\",\"originSlug\":\"mus\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":140.99,\"totalFare\":\"156.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Mu\\u015f\",\"originCode\":\"MSRA\",\"originName\":\"Mu\\u015f\",\"originSlug\":\"mus\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":194.99,\"totalFare\":\"210.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Mu\\u015f\",\"originCode\":\"MSRA\",\"originName\":\"Mu\\u015f\",\"originSlug\":\"mus\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":194.99,\"totalFare\":\"210.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Mu\\u015f\",\"originCode\":\"MSRA\",\"originName\":\"Mu\\u015f\",\"originSlug\":\"mus\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":194.99,\"totalFare\":\"210.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Mu\\u015f\",\"destinationCode\":\"MSRA\",\"destinationName\":\"Mu\\u015f\",\"destinationSlug\":\"mus\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":207.98,\"totalFare\":\"223.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Mu\\u015f\",\"originCode\":\"MSRA\",\"originName\":\"Mu\\u015f\",\"originSlug\":\"mus\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":270.98,\"totalFare\":\"286.98\",\"currency\":\"TRY\",\"direction\":2}],\"NAV\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Nev\\u015fehir\",\"destinationCode\":\"NAVA\",\"destinationName\":\"Nev\\u015fehir\",\"destinationSlug\":\"nevsehir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":84.99,\"totalFare\":\"100.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Nev\\u015fehir\",\"originCode\":\"NAVA\",\"originName\":\"Nev\\u015fehir\",\"originSlug\":\"nevsehir\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":85.99,\"totalFare\":\"101.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Nev\\u015fehir\",\"originCode\":\"NAVA\",\"originName\":\"Nev\\u015fehir\",\"originSlug\":\"nevsehir\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.99,\"totalFare\":\"155.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Nev\\u015fehir\",\"originCode\":\"NAVA\",\"originName\":\"Nev\\u015fehir\",\"originSlug\":\"nevsehir\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.99,\"totalFare\":\"155.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Nev\\u015fehir\",\"originCode\":\"NAVA\",\"originName\":\"Nev\\u015fehir\",\"originSlug\":\"nevsehir\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":183.98,\"totalFare\":\"199.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Nev\\u015fehir\",\"originCode\":\"NAVA\",\"originName\":\"Nev\\u015fehir\",\"originSlug\":\"nevsehir\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":230.98,\"totalFare\":\"246.98\",\"currency\":\"TRY\",\"direction\":2}],\"NYC\":[{\"operatingAirline\":\"UN\",\"operatingAirlineTitle\":\"Transaero Airlines\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"New York\",\"destinationCode\":\"NYCA\",\"destinationName\":\"New York\",\"destinationSlug\":\"new-york\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":934.57,\"totalFare\":\"984.57\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"UN\",\"operatingAirlineTitle\":\"Transaero Airlines\",\"origin\":\"New York\",\"originCode\":\"NYCA\",\"originName\":\"New York\",\"originSlug\":\"new-york\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":981.56,\"totalFare\":\"1031.56\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"New York\",\"originCode\":\"NYCA\",\"originName\":\"New York\",\"originSlug\":\"new-york\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1351.8,\"totalFare\":\"1401.8\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"New York\",\"destinationCode\":\"NYCA\",\"destinationName\":\"New York\",\"destinationSlug\":\"new-york\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1438.61,\"totalFare\":\"1488.61\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"New York\",\"destinationCode\":\"NYCA\",\"destinationName\":\"New York\",\"destinationSlug\":\"new-york\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1960.83,\"totalFare\":\"2010.83\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"New York\",\"destinationCode\":\"NYCA\",\"destinationName\":\"New York\",\"destinationSlug\":\"new-york\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1960.83,\"totalFare\":\"2010.83\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"New York\",\"destinationCode\":\"NYCA\",\"destinationName\":\"New York\",\"destinationSlug\":\"new-york\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2216.83,\"totalFare\":\"2266.83\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"New York\",\"destinationCode\":\"NYCA\",\"destinationName\":\"New York\",\"destinationSlug\":\"new-york\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2220.83,\"totalFare\":\"2270.83\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"LO\",\"operatingAirlineTitle\":\"LOT Polish Airlines\",\"origin\":\"New York\",\"originCode\":\"NYCA\",\"originName\":\"New York\",\"originSlug\":\"new-york\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2318.67,\"totalFare\":\"2368.67\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"LO\",\"operatingAirlineTitle\":\"LOT Polish Airlines\",\"origin\":\"New York\",\"originCode\":\"NYCA\",\"originName\":\"New York\",\"originSlug\":\"new-york\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2318.67,\"totalFare\":\"2368.67\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"New York\",\"originCode\":\"NYCA\",\"originName\":\"New York\",\"originSlug\":\"new-york\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2579.82,\"totalFare\":\"2629.82\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"New York\",\"originCode\":\"NYCA\",\"originName\":\"New York\",\"originSlug\":\"new-york\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2579.82,\"totalFare\":\"2629.82\",\"currency\":\"TRY\",\"direction\":2}],\"NUE\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"N\\u00fcrnberg\",\"destinationCode\":\"NUEA\",\"destinationName\":\"N\\u00fcrnberg\",\"destinationSlug\":\"nuremberg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":193,\"totalFare\":\"249.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AB\",\"operatingAirlineTitle\":\"Air Berlin\",\"origin\":\"N\\u00fcrnberg\",\"originCode\":\"NUEA\",\"originName\":\"N\\u00fcrnberg\",\"originSlug\":\"nuremberg\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":232.27,\"totalFare\":\"282.27\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AB\",\"operatingAirlineTitle\":\"Air Berlin\",\"origin\":\"N\\u00fcrnberg\",\"originCode\":\"NUEA\",\"originName\":\"N\\u00fcrnberg\",\"originSlug\":\"nuremberg\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":263.1,\"totalFare\":\"313.1\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"N\\u00fcrnberg\",\"destinationCode\":\"NUEA\",\"destinationName\":\"N\\u00fcrnberg\",\"destinationSlug\":\"nuremberg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":265,\"totalFare\":\"321.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"N\\u00fcrnberg\",\"destinationCode\":\"NUEA\",\"destinationName\":\"N\\u00fcrnberg\",\"destinationSlug\":\"nuremberg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":265,\"totalFare\":\"321.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"N\\u00fcrnberg\",\"destinationCode\":\"NUEA\",\"destinationName\":\"N\\u00fcrnberg\",\"destinationSlug\":\"nuremberg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":265,\"totalFare\":\"321.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"N\\u00fcrnberg\",\"destinationCode\":\"NUEA\",\"destinationName\":\"N\\u00fcrnberg\",\"destinationSlug\":\"nuremberg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"N\\u00fcrnberg\",\"destinationCode\":\"NUEA\",\"destinationName\":\"N\\u00fcrnberg\",\"destinationSlug\":\"nuremberg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"N\\u00fcrnberg\",\"originCode\":\"NUEA\",\"originName\":\"N\\u00fcrnberg\",\"originSlug\":\"nuremberg\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":345.63,\"totalFare\":\"395.63\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"N\\u00fcrnberg\",\"originCode\":\"NUEA\",\"originName\":\"N\\u00fcrnberg\",\"originSlug\":\"nuremberg\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":345.63,\"totalFare\":\"395.63\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"N\\u00fcrnberg\",\"originCode\":\"NUEA\",\"originName\":\"N\\u00fcrnberg\",\"originSlug\":\"nuremberg\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":402.63,\"totalFare\":\"452.63\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"N\\u00fcrnberg\",\"originCode\":\"NUEA\",\"originName\":\"N\\u00fcrnberg\",\"originSlug\":\"nuremberg\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":459.63,\"totalFare\":\"509.63\",\"currency\":\"TRY\",\"direction\":2}],\"PAR\":[{\"operatingAirline\":\"A3\",\"operatingAirlineTitle\":\"Aegean Airlines\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Paris\",\"destinationCode\":\"PARA\",\"destinationName\":\"Paris\",\"destinationSlug\":\"paris\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":286.16,\"totalFare\":\"336.16\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AB\",\"operatingAirlineTitle\":\"Air Berlin\",\"origin\":\"Paris\",\"originCode\":\"PARA\",\"originName\":\"Paris\",\"originSlug\":\"paris\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":389.44,\"totalFare\":\"439.44\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Paris\",\"destinationCode\":\"PARA\",\"destinationName\":\"Paris\",\"destinationSlug\":\"paris\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":390,\"totalFare\":\"446.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Paris\",\"destinationCode\":\"PARA\",\"destinationName\":\"Paris\",\"destinationSlug\":\"paris\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":390,\"totalFare\":\"446.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Paris\",\"originCode\":\"PARA\",\"originName\":\"Paris\",\"originSlug\":\"paris\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":391,\"totalFare\":\"447.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Paris\",\"destinationCode\":\"PARA\",\"destinationName\":\"Paris\",\"destinationSlug\":\"paris\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":395,\"totalFare\":\"451.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Paris\",\"destinationCode\":\"PARA\",\"destinationName\":\"Paris\",\"destinationSlug\":\"paris\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":430,\"totalFare\":\"486.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Paris\",\"originCode\":\"PARA\",\"originName\":\"Paris\",\"originSlug\":\"paris\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":453,\"totalFare\":\"509.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Paris\",\"originCode\":\"PARA\",\"originName\":\"Paris\",\"originSlug\":\"paris\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":454,\"totalFare\":\"510.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Paris\",\"originCode\":\"PARA\",\"originName\":\"Paris\",\"originSlug\":\"paris\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":498,\"totalFare\":\"554.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Paris\",\"destinationCode\":\"PARA\",\"destinationName\":\"Paris\",\"destinationSlug\":\"paris\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":543.2,\"totalFare\":\"593.2\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Paris\",\"originCode\":\"PARA\",\"originName\":\"Paris\",\"originSlug\":\"paris\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":575.8,\"totalFare\":\"625.8\",\"currency\":\"TRY\",\"direction\":2}],\"PRG\":[{\"operatingAirline\":\"JU\",\"operatingAirlineTitle\":\"Jat Airways\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Prag\",\"destinationCode\":\"PRGA\",\"destinationName\":\"Prag\",\"destinationSlug\":\"prague\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":291.89,\"totalFare\":\"341.89\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PS\",\"operatingAirlineTitle\":\"Ukraine Intl Airlines\",\"origin\":\"Prag\",\"originCode\":\"PRGA\",\"originName\":\"Prag\",\"originSlug\":\"prague\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":312.83,\"totalFare\":\"362.83\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"4U\",\"operatingAirlineTitle\":\"Germanwings\",\"origin\":\"Prag\",\"originCode\":\"PRGA\",\"originName\":\"Prag\",\"originSlug\":\"prague\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":611.49,\"totalFare\":\"661.49\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"LH\",\"operatingAirlineTitle\":\"Lufthansa\",\"origin\":\"Prag\",\"originCode\":\"PRGA\",\"originName\":\"Prag\",\"originSlug\":\"prague\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":867.54,\"totalFare\":\"917.54\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"LH\",\"operatingAirlineTitle\":\"Lufthansa\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Prag\",\"destinationCode\":\"PRGA\",\"destinationName\":\"Prag\",\"destinationSlug\":\"prague\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":869.59,\"totalFare\":\"919.59\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Prag\",\"destinationCode\":\"PRGA\",\"destinationName\":\"Prag\",\"destinationSlug\":\"prague\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":970.04,\"totalFare\":\"1020.04\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KL\",\"operatingAirlineTitle\":\"KLM Royal Dutch Airlines\",\"origin\":\"Prag\",\"originCode\":\"PRGA\",\"originName\":\"Prag\",\"originSlug\":\"prague\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1030.14,\"totalFare\":\"1080.14\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"LH\",\"operatingAirlineTitle\":\"Lufthansa\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Prag\",\"destinationCode\":\"PRGA\",\"destinationName\":\"Prag\",\"destinationSlug\":\"prague\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1068.38,\"totalFare\":\"1118.38\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"OK\",\"operatingAirlineTitle\":\"Czech Airlines\",\"origin\":\"Prag\",\"originCode\":\"PRGA\",\"originName\":\"Prag\",\"originSlug\":\"prague\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1181.2,\"totalFare\":\"1231.2\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AB\",\"operatingAirlineTitle\":\"Air Berlin\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Prag\",\"destinationCode\":\"PRGA\",\"destinationName\":\"Prag\",\"destinationSlug\":\"prague\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1218.86,\"totalFare\":\"1268.86\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Prag\",\"originCode\":\"PRGA\",\"originName\":\"Prag\",\"originSlug\":\"prague\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1298.5,\"totalFare\":\"1348.5\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Prag\",\"destinationCode\":\"PRGA\",\"destinationName\":\"Prag\",\"destinationSlug\":\"prague\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1335.4,\"totalFare\":\"1385.4\",\"currency\":\"TRY\",\"direction\":1}],\"ROM\":[{\"operatingAirline\":\"A3\",\"operatingAirlineTitle\":\"Aegean Airlines\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Roma\",\"destinationCode\":\"ROMA\",\"destinationName\":\"Roma\",\"destinationSlug\":\"roma\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":232.16,\"totalFare\":\"282.16\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"A3\",\"operatingAirlineTitle\":\"Aegean Airlines\",\"origin\":\"Roma\",\"originCode\":\"ROMA\",\"originName\":\"Roma\",\"originSlug\":\"roma\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":239.71,\"totalFare\":\"289.71\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Roma\",\"originCode\":\"ROMA\",\"originName\":\"Roma\",\"originSlug\":\"roma\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":319,\"totalFare\":\"375.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Roma\",\"originCode\":\"ROMA\",\"originName\":\"Roma\",\"originSlug\":\"roma\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":319,\"totalFare\":\"375.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Roma\",\"originCode\":\"ROMA\",\"originName\":\"Roma\",\"originSlug\":\"roma\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":319,\"totalFare\":\"375.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Roma\",\"originCode\":\"ROMA\",\"originName\":\"Roma\",\"originSlug\":\"roma\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":364,\"totalFare\":\"420.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AB\",\"operatingAirlineTitle\":\"Air Berlin\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Roma\",\"destinationCode\":\"ROMA\",\"destinationName\":\"Roma\",\"destinationSlug\":\"roma\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":475.88,\"totalFare\":\"525.88\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Roma\",\"destinationCode\":\"ROMA\",\"destinationName\":\"Roma\",\"destinationSlug\":\"roma\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":510,\"totalFare\":\"566.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Roma\",\"destinationCode\":\"ROMA\",\"destinationName\":\"Roma\",\"destinationSlug\":\"roma\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":510,\"totalFare\":\"566.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Roma\",\"destinationCode\":\"ROMA\",\"destinationName\":\"Roma\",\"destinationSlug\":\"roma\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":550,\"totalFare\":\"606.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Roma\",\"destinationCode\":\"ROMA\",\"destinationName\":\"Roma\",\"destinationSlug\":\"roma\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":550,\"totalFare\":\"606.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Roma\",\"originCode\":\"ROMA\",\"originName\":\"Roma\",\"originSlug\":\"roma\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":658.12,\"totalFare\":\"708.12\",\"currency\":\"TRY\",\"direction\":2}],\"RTM\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Rotterdam\",\"destinationCode\":\"RTMA\",\"destinationName\":\"Rotterdam\",\"destinationSlug\":\"rotterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":433.35,\"totalFare\":\"483.35\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Rotterdam\",\"originCode\":\"RTMA\",\"originName\":\"Rotterdam\",\"originSlug\":\"rotterdam\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":481.11,\"totalFare\":\"531.11\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Rotterdam\",\"destinationCode\":\"RTMA\",\"destinationName\":\"Rotterdam\",\"destinationSlug\":\"rotterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":504.4,\"totalFare\":\"554.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Rotterdam\",\"destinationCode\":\"RTMA\",\"destinationName\":\"Rotterdam\",\"destinationSlug\":\"rotterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":504.4,\"totalFare\":\"554.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Rotterdam\",\"destinationCode\":\"RTMA\",\"destinationName\":\"Rotterdam\",\"destinationSlug\":\"rotterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":504.4,\"totalFare\":\"554.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Rotterdam\",\"destinationCode\":\"RTMA\",\"destinationName\":\"Rotterdam\",\"destinationSlug\":\"rotterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":546.4,\"totalFare\":\"596.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Rotterdam\",\"originCode\":\"RTMA\",\"originName\":\"Rotterdam\",\"originSlug\":\"rotterdam\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":552.16,\"totalFare\":\"602.16\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Rotterdam\",\"originCode\":\"RTMA\",\"originName\":\"Rotterdam\",\"originSlug\":\"rotterdam\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":552.16,\"totalFare\":\"602.16\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Rotterdam\",\"originCode\":\"RTMA\",\"originName\":\"Rotterdam\",\"originSlug\":\"rotterdam\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":552.16,\"totalFare\":\"602.16\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Rotterdam\",\"originCode\":\"RTMA\",\"originName\":\"Rotterdam\",\"originSlug\":\"rotterdam\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":580.16,\"totalFare\":\"630.16\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Rotterdam\",\"destinationCode\":\"RTMA\",\"destinationName\":\"Rotterdam\",\"destinationSlug\":\"rotterdam\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":607.4,\"totalFare\":\"657.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Rotterdam\",\"originCode\":\"RTMA\",\"originName\":\"Rotterdam\",\"originSlug\":\"rotterdam\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":637.16,\"totalFare\":\"687.16\",\"currency\":\"TRY\",\"direction\":2}],\"LED\":[{\"operatingAirline\":\"PS\",\"operatingAirlineTitle\":\"Ukraine Intl Airlines\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"St Petersburg\",\"destinationCode\":\"LEDA\",\"destinationName\":\"St Petersburg\",\"destinationSlug\":\"saint-petersburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":302.54,\"totalFare\":\"352.54\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"St Petersburg\",\"originCode\":\"LEDA\",\"originName\":\"St Petersburg\",\"originSlug\":\"saint-petersburg\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":314.88,\"totalFare\":\"364.88\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"St Petersburg\",\"originCode\":\"LEDA\",\"originName\":\"St Petersburg\",\"originSlug\":\"saint-petersburg\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":544.88,\"totalFare\":\"594.88\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"St Petersburg\",\"originCode\":\"LEDA\",\"originName\":\"St Petersburg\",\"originSlug\":\"saint-petersburg\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":545.09,\"totalFare\":\"595.09\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"St Petersburg\",\"originCode\":\"LEDA\",\"originName\":\"St Petersburg\",\"originSlug\":\"saint-petersburg\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":545.09,\"totalFare\":\"595.09\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"St Petersburg\",\"destinationCode\":\"LEDA\",\"destinationName\":\"St Petersburg\",\"destinationSlug\":\"saint-petersburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":561.28,\"totalFare\":\"611.28\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"St Petersburg\",\"destinationCode\":\"LEDA\",\"destinationName\":\"St Petersburg\",\"destinationSlug\":\"saint-petersburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":561.28,\"totalFare\":\"611.28\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"St Petersburg\",\"destinationCode\":\"LEDA\",\"destinationName\":\"St Petersburg\",\"destinationSlug\":\"saint-petersburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":561.28,\"totalFare\":\"611.28\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"St Petersburg\",\"originCode\":\"LEDA\",\"originName\":\"St Petersburg\",\"originSlug\":\"saint-petersburg\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":659.09,\"totalFare\":\"709.09\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"St Petersburg\",\"originCode\":\"LEDA\",\"originName\":\"St Petersburg\",\"originSlug\":\"saint-petersburg\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":659.09,\"totalFare\":\"709.09\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"St Petersburg\",\"destinationCode\":\"LEDA\",\"destinationName\":\"St Petersburg\",\"destinationSlug\":\"saint-petersburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":675.28,\"totalFare\":\"725.28\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"St Petersburg\",\"destinationCode\":\"LEDA\",\"destinationName\":\"St Petersburg\",\"destinationSlug\":\"saint-petersburg\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":679.28,\"totalFare\":\"729.28\",\"currency\":\"TRY\",\"direction\":1}],\"SSX\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Samsun\",\"originCode\":\"SSXA\",\"originName\":\"Samsun\",\"originSlug\":\"samsun\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":84,\"totalFare\":\"99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Samsun\",\"destinationCode\":\"SSXA\",\"destinationName\":\"Samsun\",\"destinationSlug\":\"samsun\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":87.99,\"totalFare\":\"103.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Samsun\",\"originCode\":\"SSXA\",\"originName\":\"Samsun\",\"originSlug\":\"samsun\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":89.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Samsun\",\"destinationCode\":\"SSXA\",\"destinationName\":\"Samsun\",\"destinationSlug\":\"samsun\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":89.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Samsun\",\"destinationCode\":\"SSXA\",\"destinationName\":\"Samsun\",\"destinationSlug\":\"samsun\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":115.98,\"totalFare\":\"130.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Samsun\",\"originCode\":\"SSXA\",\"originName\":\"Samsun\",\"originSlug\":\"samsun\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":115.98,\"totalFare\":\"130.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Samsun\",\"originCode\":\"SSXA\",\"originName\":\"Samsun\",\"originSlug\":\"samsun\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":115.98,\"totalFare\":\"130.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Samsun\",\"destinationCode\":\"SSXA\",\"destinationName\":\"Samsun\",\"destinationSlug\":\"samsun\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":115.98,\"totalFare\":\"130.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Samsun\",\"originCode\":\"SSXA\",\"originName\":\"Samsun\",\"originSlug\":\"samsun\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":115.98,\"totalFare\":\"130.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Samsun\",\"originCode\":\"SSXA\",\"originName\":\"Samsun\",\"originSlug\":\"samsun\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":115.98,\"totalFare\":\"130.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Samsun\",\"destinationCode\":\"SSXA\",\"destinationName\":\"Samsun\",\"destinationSlug\":\"samsun\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Samsun\",\"destinationCode\":\"SSXA\",\"destinationName\":\"Samsun\",\"destinationSlug\":\"samsun\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":158.98,\"totalFare\":\"173.98\",\"currency\":\"TRY\",\"direction\":1}],\"SFQ\":[{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u015eanl\\u0131urfa\",\"originCode\":\"SFQA\",\"originName\":\"\\u015eanl\\u0131urfa\",\"originSlug\":\"sanliurfa\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":89.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"\\u015eanl\\u0131urfa\",\"destinationCode\":\"SFQA\",\"destinationName\":\"\\u015eanl\\u0131urfa\",\"destinationSlug\":\"sanliurfa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":89.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"\\u015eanl\\u0131urfa\",\"destinationCode\":\"SFQA\",\"destinationName\":\"\\u015eanl\\u0131urfa\",\"destinationSlug\":\"sanliurfa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":99,\"totalFare\":\"111\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"8Q\",\"operatingAirlineTitle\":\"Onur Air\",\"origin\":\"\\u015eanl\\u0131urfa\",\"originCode\":\"SFQA\",\"originName\":\"\\u015eanl\\u0131urfa\",\"originSlug\":\"sanliurfa\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":109,\"totalFare\":\"121\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u015eanl\\u0131urfa\",\"originCode\":\"SFQA\",\"originName\":\"\\u015eanl\\u0131urfa\",\"originSlug\":\"sanliurfa\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":132.98,\"totalFare\":\"147.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"\\u015eanl\\u0131urfa\",\"destinationCode\":\"SFQA\",\"destinationName\":\"\\u015eanl\\u0131urfa\",\"destinationSlug\":\"sanliurfa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.98,\"totalFare\":\"154.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"\\u015eanl\\u0131urfa\",\"destinationCode\":\"SFQA\",\"destinationName\":\"\\u015eanl\\u0131urfa\",\"destinationSlug\":\"sanliurfa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.98,\"totalFare\":\"154.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u015eanl\\u0131urfa\",\"originCode\":\"SFQA\",\"originName\":\"\\u015eanl\\u0131urfa\",\"originSlug\":\"sanliurfa\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":152.98,\"totalFare\":\"167.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u015eanl\\u0131urfa\",\"originCode\":\"SFQA\",\"originName\":\"\\u015eanl\\u0131urfa\",\"originSlug\":\"sanliurfa\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":152.98,\"totalFare\":\"167.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"\\u015eanl\\u0131urfa\",\"destinationCode\":\"SFQA\",\"destinationName\":\"\\u015eanl\\u0131urfa\",\"destinationSlug\":\"sanliurfa\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":156.98,\"totalFare\":\"171.98\",\"currency\":\"TRY\",\"direction\":1}],\"SJJ\":[{\"operatingAirline\":\"JU\",\"operatingAirlineTitle\":\"Jat Airways\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Saraybosna\",\"destinationCode\":\"SJJA\",\"destinationName\":\"Saraybosna\",\"destinationSlug\":\"sarajevo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":277.89,\"totalFare\":\"327.89\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"JA\",\"operatingAirlineTitle\":\"B&H Airlines\",\"origin\":\"Saraybosna\",\"originCode\":\"SJJA\",\"originName\":\"Saraybosna\",\"originSlug\":\"sarajevo\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":288.39,\"totalFare\":\"338.39\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Saraybosna\",\"destinationCode\":\"SJJA\",\"destinationName\":\"Saraybosna\",\"destinationSlug\":\"sarajevo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":518.19,\"totalFare\":\"568.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Saraybosna\",\"destinationCode\":\"SJJA\",\"destinationName\":\"Saraybosna\",\"destinationSlug\":\"sarajevo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":518.19,\"totalFare\":\"568.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Saraybosna\",\"destinationCode\":\"SJJA\",\"destinationName\":\"Saraybosna\",\"destinationSlug\":\"sarajevo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":518.19,\"totalFare\":\"568.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Saraybosna\",\"destinationCode\":\"SJJA\",\"destinationName\":\"Saraybosna\",\"destinationSlug\":\"sarajevo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":518.19,\"totalFare\":\"568.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Saraybosna\",\"destinationCode\":\"SJJA\",\"destinationName\":\"Saraybosna\",\"destinationSlug\":\"sarajevo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":522.19,\"totalFare\":\"572.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Saraybosna\",\"originCode\":\"SJJA\",\"originName\":\"Saraybosna\",\"originSlug\":\"sarajevo\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":563.58,\"totalFare\":\"613.58\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Saraybosna\",\"originCode\":\"SJJA\",\"originName\":\"Saraybosna\",\"originSlug\":\"sarajevo\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":563.58,\"totalFare\":\"613.58\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Saraybosna\",\"originCode\":\"SJJA\",\"originName\":\"Saraybosna\",\"originSlug\":\"sarajevo\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":563.58,\"totalFare\":\"613.58\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Saraybosna\",\"originCode\":\"SJJA\",\"originName\":\"Saraybosna\",\"originSlug\":\"sarajevo\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":563.58,\"totalFare\":\"613.58\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Saraybosna\",\"originCode\":\"SJJA\",\"originName\":\"Saraybosna\",\"originSlug\":\"sarajevo\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":563.58,\"totalFare\":\"613.58\",\"currency\":\"TRY\",\"direction\":2}],\"SEL\":[{\"operatingAirline\":\"CZ\",\"operatingAirlineTitle\":\"China Southern Airlines\",\"origin\":\"Seoul\",\"originCode\":\"SELA\",\"originName\":\"Seoul\",\"originSlug\":\"seoul\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":957.89,\"totalFare\":\"1007.89\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Seoul\",\"destinationCode\":\"SELA\",\"destinationName\":\"Seoul\",\"destinationSlug\":\"seoul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1078.35,\"totalFare\":\"1128.35\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Seoul\",\"destinationCode\":\"SELA\",\"destinationName\":\"Seoul\",\"destinationSlug\":\"seoul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1235.35,\"totalFare\":\"1285.35\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Seoul\",\"destinationCode\":\"SELA\",\"destinationName\":\"Seoul\",\"destinationSlug\":\"seoul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1316.6,\"totalFare\":\"1366.6\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Seoul\",\"originCode\":\"SELA\",\"originName\":\"Seoul\",\"originSlug\":\"seoul\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1596.3,\"totalFare\":\"1646.3\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Seoul\",\"originCode\":\"SELA\",\"originName\":\"Seoul\",\"originSlug\":\"seoul\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1644.75,\"totalFare\":\"1694.75\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"CZ\",\"operatingAirlineTitle\":\"China Southern Airlines\",\"origin\":\"Seoul\",\"originCode\":\"SELA\",\"originName\":\"Seoul\",\"originSlug\":\"seoul\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1663.94,\"totalFare\":\"1713.94\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Seoul\",\"destinationCode\":\"SELA\",\"destinationName\":\"Seoul\",\"destinationSlug\":\"seoul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1771.6,\"totalFare\":\"1821.6\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Seoul\",\"destinationCode\":\"SELA\",\"destinationName\":\"Seoul\",\"destinationSlug\":\"seoul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1775.6,\"totalFare\":\"1825.6\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Seoul\",\"destinationCode\":\"SELA\",\"destinationName\":\"Seoul\",\"destinationSlug\":\"seoul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1780.07,\"totalFare\":\"1830.07\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Seoul\",\"originCode\":\"SELA\",\"originName\":\"Seoul\",\"originSlug\":\"seoul\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1815.29,\"totalFare\":\"1865.29\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Seoul\",\"originCode\":\"SELA\",\"originName\":\"Seoul\",\"originSlug\":\"seoul\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1815.29,\"totalFare\":\"1865.29\",\"currency\":\"TRY\",\"direction\":2}],\"SHA\":[{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Shanghai\",\"destinationCode\":\"SHAA\",\"destinationName\":\"Shanghai\",\"destinationSlug\":\"shanghai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":849.53,\"totalFare\":\"899.53\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Shanghai\",\"originCode\":\"SHAA\",\"originName\":\"Shanghai\",\"originSlug\":\"shanghai\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":962.34,\"totalFare\":\"1012.34\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Shanghai\",\"destinationCode\":\"SHAA\",\"destinationName\":\"Shanghai\",\"destinationSlug\":\"shanghai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1144.33,\"totalFare\":\"1194.33\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Shanghai\",\"destinationCode\":\"SHAA\",\"destinationName\":\"Shanghai\",\"destinationSlug\":\"shanghai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1345.02,\"totalFare\":\"1395.02\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Shanghai\",\"originCode\":\"SHAA\",\"originName\":\"Shanghai\",\"originSlug\":\"shanghai\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1354.34,\"totalFare\":\"1404.34\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Shanghai\",\"destinationCode\":\"SHAA\",\"destinationName\":\"Shanghai\",\"destinationSlug\":\"shanghai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1510.35,\"totalFare\":\"1560.35\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Shanghai\",\"originCode\":\"SHAA\",\"originName\":\"Shanghai\",\"originSlug\":\"shanghai\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1685.43,\"totalFare\":\"1735.43\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Shanghai\",\"destinationCode\":\"SHAA\",\"destinationName\":\"Shanghai\",\"destinationSlug\":\"shanghai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1800.02,\"totalFare\":\"1850.02\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Shanghai\",\"destinationCode\":\"SHAA\",\"destinationName\":\"Shanghai\",\"destinationSlug\":\"shanghai\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1804.02,\"totalFare\":\"1854.02\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"CZ\",\"operatingAirlineTitle\":\"China Southern Airlines\",\"origin\":\"Shanghai\",\"originCode\":\"SHAA\",\"originName\":\"Shanghai\",\"originSlug\":\"shanghai\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2543.07,\"totalFare\":\"2593.07\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"CZ\",\"operatingAirlineTitle\":\"China Southern Airlines\",\"origin\":\"Shanghai\",\"originCode\":\"SHAA\",\"originName\":\"Shanghai\",\"originSlug\":\"shanghai\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2543.07,\"totalFare\":\"2593.07\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Shanghai\",\"originCode\":\"SHAA\",\"originName\":\"Shanghai\",\"originSlug\":\"shanghai\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2570.35,\"totalFare\":\"2620.35\",\"currency\":\"TRY\",\"direction\":2}],\"SXZ\":[{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Siirt\",\"destinationCode\":\"SXZA\",\"destinationName\":\"Siirt\",\"destinationSlug\":\"siirt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.99,\"totalFare\":\"159.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"Siirt\",\"originCode\":\"SXZA\",\"originName\":\"Siirt\",\"originSlug\":\"siirt\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":169.99,\"totalFare\":\"189.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Siirt\",\"destinationCode\":\"SXZA\",\"destinationName\":\"Siirt\",\"destinationSlug\":\"siirt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":204.98,\"totalFare\":\"219.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Siirt\",\"destinationCode\":\"SXZA\",\"destinationName\":\"Siirt\",\"destinationSlug\":\"siirt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":235.99,\"totalFare\":\"252.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Siirt\",\"destinationCode\":\"SXZA\",\"destinationName\":\"Siirt\",\"destinationSlug\":\"siirt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":247.98,\"totalFare\":\"262.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Siirt\",\"originCode\":\"SXZA\",\"originName\":\"Siirt\",\"originSlug\":\"siirt\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":250.98,\"totalFare\":\"265.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Siirt\",\"destinationCode\":\"SXZA\",\"destinationName\":\"Siirt\",\"destinationSlug\":\"siirt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":264.98,\"totalFare\":\"279.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Siirt\",\"destinationCode\":\"SXZA\",\"destinationName\":\"Siirt\",\"destinationSlug\":\"siirt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":267.98,\"totalFare\":\"282.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Siirt\",\"originCode\":\"SXZA\",\"originName\":\"Siirt\",\"originSlug\":\"siirt\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":268.98,\"totalFare\":\"283.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Siirt\",\"originCode\":\"SXZA\",\"originName\":\"Siirt\",\"originSlug\":\"siirt\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":268.98,\"totalFare\":\"283.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Siirt\",\"originCode\":\"SXZA\",\"originName\":\"Siirt\",\"originSlug\":\"siirt\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":288.98,\"totalFare\":\"303.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Siirt\",\"originCode\":\"SXZA\",\"originName\":\"Siirt\",\"originSlug\":\"siirt\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":288.98,\"totalFare\":\"303.98\",\"currency\":\"TRY\",\"direction\":2}],\"SQD\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Sinop\",\"originCode\":\"SQDA\",\"originName\":\"Sinop\",\"originSlug\":\"sinop\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":177,\"totalFare\":\"194\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Sinop\",\"destinationCode\":\"SQDA\",\"destinationName\":\"Sinop\",\"destinationSlug\":\"sinop\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":177,\"totalFare\":\"194\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Sinop\",\"originCode\":\"SQDA\",\"originName\":\"Sinop\",\"originSlug\":\"sinop\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":188,\"totalFare\":\"205\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Sinop\",\"originCode\":\"SQDA\",\"originName\":\"Sinop\",\"originSlug\":\"sinop\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":188,\"totalFare\":\"205\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Sinop\",\"originCode\":\"SQDA\",\"originName\":\"Sinop\",\"originSlug\":\"sinop\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":188,\"totalFare\":\"205\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Sinop\",\"originCode\":\"SQDA\",\"originName\":\"Sinop\",\"originSlug\":\"sinop\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":188,\"totalFare\":\"205\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Sinop\",\"destinationCode\":\"SQDA\",\"destinationName\":\"Sinop\",\"destinationSlug\":\"sinop\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":197,\"totalFare\":\"214\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Sinop\",\"destinationCode\":\"SQDA\",\"destinationName\":\"Sinop\",\"destinationSlug\":\"sinop\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":197,\"totalFare\":\"214\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Sinop\",\"originCode\":\"SQDA\",\"originName\":\"Sinop\",\"originSlug\":\"sinop\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":228,\"totalFare\":\"245\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Sinop\",\"destinationCode\":\"SQDA\",\"destinationName\":\"Sinop\",\"destinationSlug\":\"sinop\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":267,\"totalFare\":\"284\",\"currency\":\"TRY\",\"direction\":1}],\"NKT\":[{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"\\u015e\\u0131rnak\",\"destinationCode\":\"NKTA\",\"destinationName\":\"\\u015e\\u0131rnak\",\"destinationSlug\":\"sirnak-nkt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":132.99,\"totalFare\":\"147.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"\\u015e\\u0131rnak\",\"destinationCode\":\"NKTA\",\"destinationName\":\"\\u015e\\u0131rnak\",\"destinationSlug\":\"sirnak-nkt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":142,\"totalFare\":\"159\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"\\u015e\\u0131rnak\",\"destinationCode\":\"NKTA\",\"destinationName\":\"\\u015e\\u0131rnak\",\"destinationSlug\":\"sirnak-nkt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":204.98,\"totalFare\":\"219.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"\\u015e\\u0131rnak\",\"destinationCode\":\"NKTA\",\"destinationName\":\"\\u015e\\u0131rnak\",\"destinationSlug\":\"sirnak-nkt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":206.98,\"totalFare\":\"221.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"\\u015e\\u0131rnak\",\"destinationCode\":\"NKTA\",\"destinationName\":\"\\u015e\\u0131rnak\",\"destinationSlug\":\"sirnak-nkt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":209.98,\"totalFare\":\"224.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"\\u015e\\u0131rnak\",\"destinationCode\":\"NKTA\",\"destinationName\":\"\\u015e\\u0131rnak\",\"destinationSlug\":\"sirnak-nkt\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":209.98,\"totalFare\":\"224.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u015e\\u0131rnak\",\"originCode\":\"NKTA\",\"originName\":\"\\u015e\\u0131rnak\",\"originSlug\":\"sirnak-nkt\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":219.99,\"totalFare\":\"234.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u015e\\u0131rnak\",\"originCode\":\"NKTA\",\"originName\":\"\\u015e\\u0131rnak\",\"originSlug\":\"sirnak-nkt\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":284,\"totalFare\":\"309\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u015e\\u0131rnak\",\"originCode\":\"NKTA\",\"originName\":\"\\u015e\\u0131rnak\",\"originSlug\":\"sirnak-nkt\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":300,\"totalFare\":\"317\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u015e\\u0131rnak\",\"originCode\":\"NKTA\",\"originName\":\"\\u015e\\u0131rnak\",\"originSlug\":\"sirnak-nkt\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":300,\"totalFare\":\"317\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u015e\\u0131rnak\",\"originCode\":\"NKTA\",\"originName\":\"\\u015e\\u0131rnak\",\"originSlug\":\"sirnak-nkt\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":300,\"totalFare\":\"317\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u015e\\u0131rnak\",\"originCode\":\"NKTA\",\"originName\":\"\\u015e\\u0131rnak\",\"originSlug\":\"sirnak-nkt\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":309.98,\"totalFare\":\"324.98\",\"currency\":\"TRY\",\"direction\":2}],\"VAS\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Sivas\",\"originCode\":\"VASA\",\"originName\":\"Sivas\",\"originSlug\":\"sivas\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":84,\"totalFare\":\"99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Sivas\",\"destinationCode\":\"VASA\",\"destinationName\":\"Sivas\",\"destinationSlug\":\"sivas\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":86.99,\"totalFare\":\"102.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Sivas\",\"destinationCode\":\"VASA\",\"destinationName\":\"Sivas\",\"destinationSlug\":\"sivas\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.98,\"totalFare\":\"154.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Sivas\",\"originCode\":\"VASA\",\"originName\":\"Sivas\",\"originSlug\":\"sivas\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":141.99,\"totalFare\":\"157.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Sivas\",\"originCode\":\"VASA\",\"originName\":\"Sivas\",\"originSlug\":\"sivas\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":141.99,\"totalFare\":\"157.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Sivas\",\"originCode\":\"VASA\",\"originName\":\"Sivas\",\"originSlug\":\"sivas\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":141.99,\"totalFare\":\"157.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Sivas\",\"originCode\":\"VASA\",\"originName\":\"Sivas\",\"originSlug\":\"sivas\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":152.98,\"totalFare\":\"167.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Sivas\",\"originCode\":\"VASA\",\"originName\":\"Sivas\",\"originSlug\":\"sivas\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":152.98,\"totalFare\":\"167.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Sivas\",\"destinationCode\":\"VASA\",\"destinationName\":\"Sivas\",\"destinationSlug\":\"sivas\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":172.99,\"totalFare\":\"187.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Sivas\",\"destinationCode\":\"VASA\",\"destinationName\":\"Sivas\",\"destinationSlug\":\"sivas\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":172.99,\"totalFare\":\"187.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Sivas\",\"destinationCode\":\"VASA\",\"destinationName\":\"Sivas\",\"destinationSlug\":\"sivas\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":194,\"totalFare\":\"211\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Sivas\",\"destinationCode\":\"VASA\",\"destinationName\":\"Sivas\",\"destinationSlug\":\"sivas\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":204.98,\"totalFare\":\"219.98\",\"currency\":\"TRY\",\"direction\":1}],\"SKP\":[{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"\\u00dcsk\\u00fcp\",\"destinationCode\":\"SKPA\",\"destinationName\":\"\\u00dcsk\\u00fcp\",\"destinationSlug\":\"skopje\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":191.14,\"totalFare\":\"241.14\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u00dcsk\\u00fcp\",\"originCode\":\"SKPA\",\"originName\":\"\\u00dcsk\\u00fcp\",\"originSlug\":\"skopje\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":206.06,\"totalFare\":\"256.06\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"\\u00dcsk\\u00fcp\",\"destinationCode\":\"SKPA\",\"destinationName\":\"\\u00dcsk\\u00fcp\",\"destinationSlug\":\"skopje\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":433.19,\"totalFare\":\"483.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"\\u00dcsk\\u00fcp\",\"destinationCode\":\"SKPA\",\"destinationName\":\"\\u00dcsk\\u00fcp\",\"destinationSlug\":\"skopje\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":433.19,\"totalFare\":\"483.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"\\u00dcsk\\u00fcp\",\"destinationCode\":\"SKPA\",\"destinationName\":\"\\u00dcsk\\u00fcp\",\"destinationSlug\":\"skopje\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":433.19,\"totalFare\":\"483.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u00dcsk\\u00fcp\",\"originCode\":\"SKPA\",\"originName\":\"\\u00dcsk\\u00fcp\",\"originSlug\":\"skopje\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":448.11,\"totalFare\":\"498.11\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u00dcsk\\u00fcp\",\"originCode\":\"SKPA\",\"originName\":\"\\u00dcsk\\u00fcp\",\"originSlug\":\"skopje\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":448.11,\"totalFare\":\"498.11\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u00dcsk\\u00fcp\",\"originCode\":\"SKPA\",\"originName\":\"\\u00dcsk\\u00fcp\",\"originSlug\":\"skopje\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":448.11,\"totalFare\":\"498.11\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"\\u00dcsk\\u00fcp\",\"destinationCode\":\"SKPA\",\"destinationName\":\"\\u00dcsk\\u00fcp\",\"destinationSlug\":\"skopje\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":461.19,\"totalFare\":\"511.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"\\u00dcsk\\u00fcp\",\"destinationCode\":\"SKPA\",\"destinationName\":\"\\u00dcsk\\u00fcp\",\"destinationSlug\":\"skopje\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":465.19,\"totalFare\":\"515.19\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u00dcsk\\u00fcp\",\"originCode\":\"SKPA\",\"originName\":\"\\u00dcsk\\u00fcp\",\"originSlug\":\"skopje\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":476.11,\"totalFare\":\"526.11\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u00dcsk\\u00fcp\",\"originCode\":\"SKPA\",\"originName\":\"\\u00dcsk\\u00fcp\",\"originSlug\":\"skopje\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":476.11,\"totalFare\":\"526.11\",\"currency\":\"TRY\",\"direction\":2}],\"STO\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Stokholm\",\"originCode\":\"STOA\",\"originName\":\"Stokholm\",\"originSlug\":\"sto-stockholm\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":193,\"totalFare\":\"249.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Stokholm\",\"destinationCode\":\"STOA\",\"destinationName\":\"Stokholm\",\"destinationSlug\":\"sto-stockholm\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":233,\"totalFare\":\"289.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Stokholm\",\"originCode\":\"STOA\",\"originName\":\"Stokholm\",\"originSlug\":\"sto-stockholm\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":260,\"totalFare\":\"316.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Stokholm\",\"originCode\":\"STOA\",\"originName\":\"Stokholm\",\"originSlug\":\"sto-stockholm\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":260,\"totalFare\":\"316.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Stokholm\",\"originCode\":\"STOA\",\"originName\":\"Stokholm\",\"originSlug\":\"sto-stockholm\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":260,\"totalFare\":\"316.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Stokholm\",\"originCode\":\"STOA\",\"originName\":\"Stokholm\",\"originSlug\":\"sto-stockholm\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":300,\"totalFare\":\"356.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Stokholm\",\"destinationCode\":\"STOA\",\"destinationName\":\"Stokholm\",\"destinationSlug\":\"sto-stockholm\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Stokholm\",\"destinationCode\":\"STOA\",\"destinationName\":\"Stokholm\",\"destinationSlug\":\"sto-stockholm\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Stokholm\",\"destinationCode\":\"STOA\",\"destinationName\":\"Stokholm\",\"destinationSlug\":\"sto-stockholm\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":305,\"totalFare\":\"361.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Stokholm\",\"destinationCode\":\"STOA\",\"destinationName\":\"Stokholm\",\"destinationSlug\":\"sto-stockholm\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":345,\"totalFare\":\"401.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Stokholm\",\"destinationCode\":\"STOA\",\"destinationName\":\"Stokholm\",\"destinationSlug\":\"sto-stockholm\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":345,\"totalFare\":\"401.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Stokholm\",\"originCode\":\"STOA\",\"originName\":\"Stokholm\",\"originSlug\":\"sto-stockholm\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":486.31,\"totalFare\":\"536.31\",\"currency\":\"TRY\",\"direction\":2}],\"STR\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Stuttgart\",\"originCode\":\"STRA\",\"originName\":\"Stuttgart\",\"originSlug\":\"str-stuttgart\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":127,\"totalFare\":\"183.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"XG\",\"operatingAirlineTitle\":\"Clickair\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Stuttgart\",\"destinationCode\":\"STRA\",\"destinationName\":\"Stuttgart\",\"destinationSlug\":\"str-stuttgart\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":159.37,\"totalFare\":\"191.37\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Stuttgart\",\"originCode\":\"STRA\",\"originName\":\"Stuttgart\",\"originSlug\":\"str-stuttgart\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":183,\"totalFare\":\"239.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Stuttgart\",\"originCode\":\"STRA\",\"originName\":\"Stuttgart\",\"originSlug\":\"str-stuttgart\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":183,\"totalFare\":\"239.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Stuttgart\",\"originCode\":\"STRA\",\"originName\":\"Stuttgart\",\"originSlug\":\"str-stuttgart\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":189,\"totalFare\":\"245.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Stuttgart\",\"destinationCode\":\"STRA\",\"destinationName\":\"Stuttgart\",\"destinationSlug\":\"str-stuttgart\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":233,\"totalFare\":\"289.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Stuttgart\",\"destinationCode\":\"STRA\",\"destinationName\":\"Stuttgart\",\"destinationSlug\":\"str-stuttgart\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":233,\"totalFare\":\"289.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Stuttgart\",\"destinationCode\":\"STRA\",\"destinationName\":\"Stuttgart\",\"destinationSlug\":\"str-stuttgart\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":233,\"totalFare\":\"289.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Stuttgart\",\"originCode\":\"STRA\",\"originName\":\"Stuttgart\",\"originSlug\":\"str-stuttgart\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":237,\"totalFare\":\"293.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Stuttgart\",\"destinationCode\":\"STRA\",\"destinationName\":\"Stuttgart\",\"destinationSlug\":\"str-stuttgart\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":273,\"totalFare\":\"329.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Stuttgart\",\"destinationCode\":\"STRA\",\"destinationName\":\"Stuttgart\",\"destinationSlug\":\"str-stuttgart\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":273,\"totalFare\":\"329.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Stuttgart\",\"originCode\":\"STRA\",\"originName\":\"Stuttgart\",\"originSlug\":\"str-stuttgart\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":437.9,\"totalFare\":\"487.9\",\"currency\":\"TRY\",\"direction\":2}],\"TAS\":[{\"operatingAirline\":\"PS\",\"operatingAirlineTitle\":\"Ukraine Intl Airlines\",\"origin\":\"Ta\\u015fkent\",\"originCode\":\"TASA\",\"originName\":\"Ta\\u015fkent\",\"originSlug\":\"tashkent\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":745.49,\"totalFare\":\"795.49\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"UN\",\"operatingAirlineTitle\":\"Transaero Airlines\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Ta\\u015fkent\",\"destinationCode\":\"TASA\",\"destinationName\":\"Ta\\u015fkent\",\"destinationSlug\":\"tashkent\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":819.82,\"totalFare\":\"869.82\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Ta\\u015fkent\",\"destinationCode\":\"TASA\",\"destinationName\":\"Ta\\u015fkent\",\"destinationSlug\":\"tashkent\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1059.23,\"totalFare\":\"1109.23\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ta\\u015fkent\",\"originCode\":\"TASA\",\"originName\":\"Ta\\u015fkent\",\"originSlug\":\"tashkent\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1102.62,\"totalFare\":\"1152.62\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ta\\u015fkent\",\"originCode\":\"TASA\",\"originName\":\"Ta\\u015fkent\",\"originSlug\":\"tashkent\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1102.62,\"totalFare\":\"1152.62\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ta\\u015fkent\",\"originCode\":\"TASA\",\"originName\":\"Ta\\u015fkent\",\"originSlug\":\"tashkent\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1102.62,\"totalFare\":\"1152.62\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ta\\u015fkent\",\"originCode\":\"TASA\",\"originName\":\"Ta\\u015fkent\",\"originSlug\":\"tashkent\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1102.62,\"totalFare\":\"1152.62\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ta\\u015fkent\",\"originCode\":\"TASA\",\"originName\":\"Ta\\u015fkent\",\"originSlug\":\"tashkent\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1102.62,\"totalFare\":\"1152.62\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Ta\\u015fkent\",\"destinationCode\":\"TASA\",\"destinationName\":\"Ta\\u015fkent\",\"destinationSlug\":\"tashkent\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1170.23,\"totalFare\":\"1220.23\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Ta\\u015fkent\",\"destinationCode\":\"TASA\",\"destinationName\":\"Ta\\u015fkent\",\"destinationSlug\":\"tashkent\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1188.61,\"totalFare\":\"1238.61\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Ta\\u015fkent\",\"destinationCode\":\"TASA\",\"destinationName\":\"Ta\\u015fkent\",\"destinationSlug\":\"tashkent\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1217.61,\"totalFare\":\"1267.61\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Ta\\u015fkent\",\"destinationCode\":\"TASA\",\"destinationName\":\"Ta\\u015fkent\",\"destinationSlug\":\"tashkent\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1221.61,\"totalFare\":\"1271.61\",\"currency\":\"TRY\",\"direction\":1}],\"THR\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Tahran\",\"destinationCode\":\"THRA\",\"destinationName\":\"Tahran\",\"destinationSlug\":\"tehran\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":208,\"totalFare\":\"264.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"Tahran\",\"originCode\":\"THRA\",\"originName\":\"Tahran\",\"originSlug\":\"tehran\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":215.06,\"totalFare\":\"265.06\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Tahran\",\"destinationCode\":\"THRA\",\"destinationName\":\"Tahran\",\"destinationSlug\":\"tehran\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":280,\"totalFare\":\"336.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Tahran\",\"destinationCode\":\"THRA\",\"destinationName\":\"Tahran\",\"destinationSlug\":\"tehran\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":280,\"totalFare\":\"336.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Tahran\",\"destinationCode\":\"THRA\",\"destinationName\":\"Tahran\",\"destinationSlug\":\"tehran\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":280,\"totalFare\":\"336.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Tahran\",\"originCode\":\"THRA\",\"originName\":\"Tahran\",\"originSlug\":\"tehran\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":291,\"totalFare\":\"347.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Tahran\",\"originCode\":\"THRA\",\"originName\":\"Tahran\",\"originSlug\":\"tehran\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":291,\"totalFare\":\"347.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Tahran\",\"originCode\":\"THRA\",\"originName\":\"Tahran\",\"originSlug\":\"tehran\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":291,\"totalFare\":\"347.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Tahran\",\"destinationCode\":\"THRA\",\"destinationName\":\"Tahran\",\"destinationSlug\":\"tehran\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":320,\"totalFare\":\"376.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Tahran\",\"destinationCode\":\"THRA\",\"destinationName\":\"Tahran\",\"destinationSlug\":\"tehran\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":320,\"totalFare\":\"376.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Tahran\",\"originCode\":\"THRA\",\"originName\":\"Tahran\",\"originSlug\":\"tehran\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":336,\"totalFare\":\"392.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Tahran\",\"originCode\":\"THRA\",\"originName\":\"Tahran\",\"originSlug\":\"tehran\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":336,\"totalFare\":\"392.73\",\"currency\":\"TRY\",\"direction\":2}],\"TEQ\":[{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Tekirda\\u011f\",\"destinationCode\":\"TEQA\",\"destinationName\":\"Tekirda\\u011f\",\"destinationSlug\":\"tekirdag\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":89.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Tekirda\\u011f\",\"originCode\":\"TEQA\",\"originName\":\"Tekirda\\u011f\",\"originSlug\":\"tekirdag\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":107.99,\"totalFare\":\"122.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Tekirda\\u011f\",\"destinationCode\":\"TEQA\",\"destinationName\":\"Tekirda\\u011f\",\"destinationSlug\":\"tekirdag\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":115.98,\"totalFare\":\"130.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Tekirda\\u011f\",\"destinationCode\":\"TEQA\",\"destinationName\":\"Tekirda\\u011f\",\"destinationSlug\":\"tekirdag\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":115.98,\"totalFare\":\"130.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Tekirda\\u011f\",\"originCode\":\"TEQA\",\"originName\":\"Tekirda\\u011f\",\"originSlug\":\"tekirdag\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Tekirda\\u011f\",\"originCode\":\"TEQA\",\"originName\":\"Tekirda\\u011f\",\"originSlug\":\"tekirdag\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Tekirda\\u011f\",\"originCode\":\"TEQA\",\"originName\":\"Tekirda\\u011f\",\"originSlug\":\"tekirdag\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Tekirda\\u011f\",\"originCode\":\"TEQA\",\"originName\":\"Tekirda\\u011f\",\"originSlug\":\"tekirdag\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":133.98,\"totalFare\":\"148.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Tekirda\\u011f\",\"destinationCode\":\"TEQA\",\"destinationName\":\"Tekirda\\u011f\",\"destinationSlug\":\"tekirdag\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":158.98,\"totalFare\":\"173.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Tekirda\\u011f\",\"destinationCode\":\"TEQA\",\"destinationName\":\"Tekirda\\u011f\",\"destinationSlug\":\"tekirdag\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":178.98,\"totalFare\":\"193.98\",\"currency\":\"TRY\",\"direction\":1}],\"TJK\":[{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"Tokat\",\"originCode\":\"TJKA\",\"originName\":\"Tokat\",\"originSlug\":\"tokat\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":109.99,\"totalFare\":\"129.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Tokat\",\"originCode\":\"TJKA\",\"originName\":\"Tokat\",\"originSlug\":\"tokat\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":130.98,\"totalFare\":\"145.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Tokat\",\"originCode\":\"TJKA\",\"originName\":\"Tokat\",\"originSlug\":\"tokat\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":130.98,\"totalFare\":\"145.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Tokat\",\"destinationCode\":\"TJKA\",\"destinationName\":\"Tokat\",\"destinationSlug\":\"tokat\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.99,\"totalFare\":\"159.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Tokat\",\"originCode\":\"TJKA\",\"originName\":\"Tokat\",\"originSlug\":\"tokat\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":163.99,\"totalFare\":\"178.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Tokat\",\"originCode\":\"TJKA\",\"originName\":\"Tokat\",\"originSlug\":\"tokat\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":163.99,\"totalFare\":\"178.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Tokat\",\"originCode\":\"TJKA\",\"originName\":\"Tokat\",\"originSlug\":\"tokat\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":163.99,\"totalFare\":\"178.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Tokat\",\"destinationCode\":\"TJKA\",\"destinationName\":\"Tokat\",\"destinationSlug\":\"tokat\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":169.99,\"totalFare\":\"189.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"YB\",\"operatingAirlineTitle\":\"Borajet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Tokat\",\"destinationCode\":\"TJKA\",\"destinationName\":\"Tokat\",\"destinationSlug\":\"tokat\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":199.99,\"totalFare\":\"219.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Tokat\",\"destinationCode\":\"TJKA\",\"destinationName\":\"Tokat\",\"destinationSlug\":\"tokat\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":235.99,\"totalFare\":\"252.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Tokat\",\"destinationCode\":\"TJKA\",\"destinationName\":\"Tokat\",\"destinationSlug\":\"tokat\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":235.99,\"totalFare\":\"252.99\",\"currency\":\"TRY\",\"direction\":1}],\"TZX\":[{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":89.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":89.99,\"totalFare\":\"104.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":107.99,\"totalFare\":\"122.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":107.99,\"totalFare\":\"122.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.98,\"totalFare\":\"154.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":139.98,\"totalFare\":\"154.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":156.98,\"totalFare\":\"171.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":156.98,\"totalFare\":\"171.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":156.98,\"totalFare\":\"171.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":204.98,\"totalFare\":\"219.98\",\"currency\":\"TRY\",\"direction\":1}],\"TYO\":[{\"operatingAirline\":\"EY\",\"operatingAirlineTitle\":\"Etihad Airways\",\"origin\":\"Tokyo\",\"originCode\":\"TYOA\",\"originName\":\"Tokyo\",\"originSlug\":\"tyo-tokyo\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1032.97,\"totalFare\":\"1082.97\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Tokyo\",\"destinationCode\":\"TYOA\",\"destinationName\":\"Tokyo\",\"destinationSlug\":\"tyo-tokyo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1093.53,\"totalFare\":\"1143.53\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"KK\",\"operatingAirlineTitle\":\"Atlasjet\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Tokyo\",\"destinationCode\":\"TYOA\",\"destinationName\":\"Tokyo\",\"destinationSlug\":\"tyo-tokyo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1235.53,\"totalFare\":\"1285.53\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"SU\",\"operatingAirlineTitle\":\"Aeroflot\",\"origin\":\"Tokyo\",\"originCode\":\"TYOA\",\"originName\":\"Tokyo\",\"originSlug\":\"tyo-tokyo\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1505.45,\"totalFare\":\"1555.45\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"QR\",\"operatingAirlineTitle\":\"Qatar Airways\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Tokyo\",\"destinationCode\":\"TYOA\",\"destinationName\":\"Tokyo\",\"destinationSlug\":\"tyo-tokyo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1675.35,\"totalFare\":\"1725.35\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Tokyo\",\"originCode\":\"TYOA\",\"originName\":\"Tokyo\",\"originSlug\":\"tyo-tokyo\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1862.69,\"totalFare\":\"1912.69\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Tokyo\",\"originCode\":\"TYOA\",\"originName\":\"Tokyo\",\"originSlug\":\"tyo-tokyo\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1862.69,\"totalFare\":\"1912.69\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Tokyo\",\"originCode\":\"TYOA\",\"originName\":\"Tokyo\",\"originSlug\":\"tyo-tokyo\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1862.69,\"totalFare\":\"1912.69\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Tokyo\",\"originCode\":\"TYOA\",\"originName\":\"Tokyo\",\"originSlug\":\"tyo-tokyo\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":1862.69,\"totalFare\":\"1912.69\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Tokyo\",\"destinationCode\":\"TYOA\",\"destinationName\":\"Tokyo\",\"destinationSlug\":\"tyo-tokyo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2271.95,\"totalFare\":\"2321.95\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Tokyo\",\"destinationCode\":\"TYOA\",\"destinationName\":\"Tokyo\",\"destinationSlug\":\"tyo-tokyo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2328.95,\"totalFare\":\"2378.95\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Tokyo\",\"destinationCode\":\"TYOA\",\"destinationName\":\"Tokyo\",\"destinationSlug\":\"tyo-tokyo\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":2332.95,\"totalFare\":\"2382.95\",\"currency\":\"TRY\",\"direction\":1}],\"VAN\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Van\",\"destinationCode\":\"VANA\",\"destinationName\":\"Van\",\"destinationSlug\":\"van\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":72.99,\"totalFare\":\"88.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Van\",\"destinationCode\":\"VANA\",\"destinationName\":\"Van\",\"destinationSlug\":\"van\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":107.99,\"totalFare\":\"122.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"XQ\",\"operatingAirlineTitle\":\"Sun Express\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Van\",\"destinationCode\":\"VANA\",\"destinationName\":\"Van\",\"destinationSlug\":\"van\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":142.99,\"totalFare\":\"158.99\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Van\",\"destinationCode\":\"VANA\",\"destinationName\":\"Van\",\"destinationSlug\":\"van\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":156.98,\"totalFare\":\"171.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Van\",\"destinationCode\":\"VANA\",\"destinationName\":\"Van\",\"destinationSlug\":\"van\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":159.98,\"totalFare\":\"174.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Van\",\"destinationCode\":\"VANA\",\"destinationName\":\"Van\",\"destinationSlug\":\"van\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":204.98,\"totalFare\":\"219.98\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Van\",\"originCode\":\"VANA\",\"originName\":\"Van\",\"originSlug\":\"van\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":205.99,\"totalFare\":\"221.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"AJ\",\"operatingAirlineTitle\":\"Anadolujet\",\"origin\":\"Van\",\"originCode\":\"VANA\",\"originName\":\"Van\",\"originSlug\":\"van\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":219.99,\"totalFare\":\"234.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Van\",\"originCode\":\"VANA\",\"originName\":\"Van\",\"originSlug\":\"van\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":233.98,\"totalFare\":\"249.98\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Van\",\"originCode\":\"VANA\",\"originName\":\"Van\",\"originSlug\":\"van\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":259.99,\"totalFare\":\"275.99\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Van\",\"originCode\":\"VANA\",\"originName\":\"Van\",\"originSlug\":\"van\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":302,\"totalFare\":\"319\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Van\",\"originCode\":\"VANA\",\"originName\":\"Van\",\"originSlug\":\"van\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":302,\"totalFare\":\"319\",\"currency\":\"TRY\",\"direction\":2}],\"VCE\":[{\"operatingAirline\":\"9U\",\"operatingAirlineTitle\":\"Air Moldova\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Venedik\",\"destinationCode\":\"VCEA\",\"destinationName\":\"Venedik\",\"destinationSlug\":\"venice\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":372.87,\"totalFare\":\"422.87\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"9U\",\"operatingAirlineTitle\":\"Air Moldova\",\"origin\":\"Venedik\",\"originCode\":\"VCEA\",\"originName\":\"Venedik\",\"originSlug\":\"venice\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":400.92,\"totalFare\":\"450.92\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Venedik\",\"destinationCode\":\"VCEA\",\"destinationName\":\"Venedik\",\"destinationSlug\":\"venice\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":475.4,\"totalFare\":\"525.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Venedik\",\"destinationCode\":\"VCEA\",\"destinationName\":\"Venedik\",\"destinationSlug\":\"venice\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":475.4,\"totalFare\":\"525.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Venedik\",\"destinationCode\":\"VCEA\",\"destinationName\":\"Venedik\",\"destinationSlug\":\"venice\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":504.4,\"totalFare\":\"554.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"AB\",\"operatingAirlineTitle\":\"Air Berlin\",\"origin\":\"Venedik\",\"originCode\":\"VCEA\",\"originName\":\"Venedik\",\"originSlug\":\"venice\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":510.42,\"totalFare\":\"560.42\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Venedik\",\"destinationCode\":\"VCEA\",\"destinationName\":\"Venedik\",\"destinationSlug\":\"venice\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":532.4,\"totalFare\":\"582.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Venedik\",\"destinationCode\":\"VCEA\",\"destinationName\":\"Venedik\",\"destinationSlug\":\"venice\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":536.4,\"totalFare\":\"586.4\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Venedik\",\"originCode\":\"VCEA\",\"originName\":\"Venedik\",\"originSlug\":\"venice\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":560.45,\"totalFare\":\"610.45\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Venedik\",\"originCode\":\"VCEA\",\"originName\":\"Venedik\",\"originSlug\":\"venice\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":560.45,\"totalFare\":\"610.45\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Venedik\",\"originCode\":\"VCEA\",\"originName\":\"Venedik\",\"originSlug\":\"venice\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":617.45,\"totalFare\":\"667.45\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Venedik\",\"originCode\":\"VCEA\",\"originName\":\"Venedik\",\"originSlug\":\"venice\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":617.45,\"totalFare\":\"667.45\",\"currency\":\"TRY\",\"direction\":2}],\"VIE\":[{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Viyana\",\"destinationCode\":\"VIEA\",\"destinationName\":\"Viyana\",\"destinationSlug\":\"vienna\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":143,\"totalFare\":\"199.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Viyana\",\"originCode\":\"VIEA\",\"originName\":\"Viyana\",\"originSlug\":\"vienna\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":173,\"totalFare\":\"229.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Viyana\",\"destinationCode\":\"VIEA\",\"destinationName\":\"Viyana\",\"destinationSlug\":\"vienna\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":215,\"totalFare\":\"271.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Viyana\",\"destinationCode\":\"VIEA\",\"destinationName\":\"Viyana\",\"destinationSlug\":\"vienna\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":215,\"totalFare\":\"271.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Viyana\",\"destinationCode\":\"VIEA\",\"destinationName\":\"Viyana\",\"destinationSlug\":\"vienna\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":215,\"totalFare\":\"271.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Viyana\",\"originCode\":\"VIEA\",\"originName\":\"Viyana\",\"originSlug\":\"vienna\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":234,\"totalFare\":\"290.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Viyana\",\"originCode\":\"VIEA\",\"originName\":\"Viyana\",\"originSlug\":\"vienna\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":234,\"totalFare\":\"290.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Viyana\",\"originCode\":\"VIEA\",\"originName\":\"Viyana\",\"originSlug\":\"vienna\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":234,\"totalFare\":\"290.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Viyana\",\"destinationCode\":\"VIEA\",\"destinationName\":\"Viyana\",\"destinationSlug\":\"vienna\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":255,\"totalFare\":\"311.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Viyana\",\"destinationCode\":\"VIEA\",\"destinationName\":\"Viyana\",\"destinationSlug\":\"vienna\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":255,\"totalFare\":\"311.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Viyana\",\"originCode\":\"VIEA\",\"originName\":\"Viyana\",\"originSlug\":\"vienna\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":280,\"totalFare\":\"336.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Viyana\",\"originCode\":\"VIEA\",\"originName\":\"Viyana\",\"originSlug\":\"vienna\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":412.45,\"totalFare\":\"462.45\",\"currency\":\"TRY\",\"direction\":2}],\"ZRH\":[{\"operatingAirline\":\"LX\",\"operatingAirlineTitle\":\"Swiss\",\"origin\":\"\\u0130stanbul\",\"originCode\":\"ISTA\",\"originName\":\"\\u0130stanbul\",\"originSlug\":\"istanbul\",\"destination\":\"Z\\u00fcrih\",\"destinationCode\":\"ZRHA\",\"destinationName\":\"Z\\u00fcrih\",\"destinationSlug\":\"zurich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":131.46,\"totalFare\":\"181.46\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Z\\u00fcrih\",\"originCode\":\"ZRHA\",\"originName\":\"Z\\u00fcrih\",\"originSlug\":\"zurich\",\"destination\":\"\\u0130stanbul\",\"destinationCode\":\"ISTA\",\"destinationName\":\"\\u0130stanbul\",\"destinationSlug\":\"istanbul\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":179,\"totalFare\":\"235.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Z\\u00fcrih\",\"originCode\":\"ZRHA\",\"originName\":\"Z\\u00fcrih\",\"originSlug\":\"zurich\",\"destination\":\"Ankara\",\"destinationCode\":\"ANKA\",\"destinationName\":\"Ankara\",\"destinationSlug\":\"ankara\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":241,\"totalFare\":\"297.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Z\\u00fcrih\",\"originCode\":\"ZRHA\",\"originName\":\"Z\\u00fcrih\",\"originSlug\":\"zurich\",\"destination\":\"Antalya\",\"destinationCode\":\"AYTA\",\"destinationName\":\"Antalya\",\"destinationSlug\":\"antalya\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":241,\"totalFare\":\"297.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Z\\u00fcrih\",\"originCode\":\"ZRHA\",\"originName\":\"Z\\u00fcrih\",\"originSlug\":\"zurich\",\"destination\":\"\\u0130zmir\",\"destinationCode\":\"IZMA\",\"destinationName\":\"\\u0130zmir\",\"destinationSlug\":\"izmir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":242,\"totalFare\":\"298.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Antalya\",\"originCode\":\"AYTA\",\"originName\":\"Antalya\",\"originSlug\":\"antalya\",\"destination\":\"Z\\u00fcrih\",\"destinationCode\":\"ZRHA\",\"destinationName\":\"Z\\u00fcrih\",\"destinationSlug\":\"zurich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":250,\"totalFare\":\"306.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Ankara\",\"originCode\":\"ANKA\",\"originName\":\"Ankara\",\"originSlug\":\"ankara\",\"destination\":\"Z\\u00fcrih\",\"destinationCode\":\"ZRHA\",\"destinationName\":\"Z\\u00fcrih\",\"destinationSlug\":\"zurich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":250,\"totalFare\":\"306.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"\\u0130zmir\",\"originCode\":\"IZMA\",\"originName\":\"\\u0130zmir\",\"originSlug\":\"izmir\",\"destination\":\"Z\\u00fcrih\",\"destinationCode\":\"ZRHA\",\"destinationName\":\"Z\\u00fcrih\",\"destinationSlug\":\"zurich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":250,\"totalFare\":\"306.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Z\\u00fcrih\",\"originCode\":\"ZRHA\",\"originName\":\"Z\\u00fcrih\",\"originSlug\":\"zurich\",\"destination\":\"Trabzon\",\"destinationCode\":\"TZXA\",\"destinationName\":\"Trabzon\",\"destinationSlug\":\"trabzon\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":286,\"totalFare\":\"342.73\",\"currency\":\"TRY\",\"direction\":2},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Trabzon\",\"originCode\":\"TZXA\",\"originName\":\"Trabzon\",\"originSlug\":\"trabzon\",\"destination\":\"Z\\u00fcrih\",\"destinationCode\":\"ZRHA\",\"destinationName\":\"Z\\u00fcrih\",\"destinationSlug\":\"zurich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":290,\"totalFare\":\"346.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"PC\",\"operatingAirlineTitle\":\"Pegasus\",\"origin\":\"Diyarbak\\u0131r\",\"originCode\":\"DIYA\",\"originName\":\"Diyarbak\\u0131r\",\"originSlug\":\"diyarbakir\",\"destination\":\"Z\\u00fcrih\",\"destinationCode\":\"ZRHA\",\"destinationName\":\"Z\\u00fcrih\",\"destinationSlug\":\"zurich\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":290,\"totalFare\":\"346.73\",\"currency\":\"TRY\",\"direction\":1},{\"operatingAirline\":\"TK\",\"operatingAirlineTitle\":\"THY\",\"origin\":\"Z\\u00fcrih\",\"originCode\":\"ZRHA\",\"originName\":\"Z\\u00fcrih\",\"originSlug\":\"zurich\",\"destination\":\"Diyarbak\\u0131r\",\"destinationCode\":\"DIYA\",\"destinationName\":\"Diyarbak\\u0131r\",\"destinationSlug\":\"diyarbakir\",\"departureDate\":\"26\\/01\\/2015\",\"baseFare\":421.99,\"totalFare\":\"471.99\",\"currency\":\"TRY\",\"direction\":2}]}');
INSERT INTO `settings` (`name`, `value`) VALUES
('doping_ws_campaign_codes', '{\r\n  \"4555\": {\r\n    \"CampaignID\": 189,\r\n    \"DataPackageID\": 1432,\r\n    \"VoicePackageID\": -1,\r\n    \"SpecialProductPackageID\": -1,\r\n    \"MediaPackageID\": -1,\r\n    \"DataPackageType\": \"ADSL\"\r\n  },\r\n  \"3865\": {\r\n    \"CampaignID\": 187,\r\n    \"DataPackageID\": 1029,\r\n    \"VoicePackageID\": -1,\r\n    \"SpecialProductPackageID\": -1,\r\n    \"MediaPackageID\": -1,\r\n    \"DataPackageType\": \"ADSL\"\r\n  },\r\n  \"4693\": {\r\n    \"CampaignID\": 211,\r\n    \"DataPackageID\": 1391,\r\n    \"VoicePackageID\": 1398,\r\n    \"SpecialProductPackageID\": -1,\r\n    \"MediaPackageID\": -1,\r\n    \"DataPackageType\": \"ADSL\"\r\n  },\r\n  \"3877\": {\r\n    \"CampaignID\": 208,\r\n    \"DataPackageID\": 1334,\r\n    \"VoicePackageID\": 1350,\r\n    \"SpecialProductPackageID\": -1,\r\n    \"MediaPackageID\": -1,\r\n    \"DataPackageType\": \"ADSL\"\r\n  }\r\n}'),
('email_spam_trap_checker_last_id', '{\"lastId\":2011829}'),
('email_spam_trap_cleaner_last_id', '{\"lastId\":152583}'),
('email_typo_check_last_id', '{\"lastId\":2257421}'),
('email.scheduler.cron_status', '{\"active\":true,\"startedAt\":\"2016-03-21 08:50:01\"}'),
('email.send.settings', '{\"lastId\":\"545\",\"dailyIncrease\":3000,\"lastDay\":{\"date\":\"2014-02-11\",\"dailyLimit\":3000,\"sentMails\":0},\"today\":{\"date\":\"2014-02-12\",\"dailyLimit\":3000,\"sentMails\":52}}'),
('email.sender.cron_status', '{\"active\":false}'),
('flight_insurance_prices', '{\"A\":[{\"TL\":\"25.920000000\",\"EUR\":\"6.410000000\"},{\"TL\":\"34.530000000\",\"EUR\":\"8.540000000\"},{\"TL\":\"67.680000000\",\"EUR\":\"16.740000000\"},{\"TL\":\"102.090000000\",\"EUR\":\"25.250000000\"},{\"TL\":\"117.900000000\",\"EUR\":\"29.160000000\"},{\"TL\":\"122.270000000\",\"EUR\":\"30.240000000\"},{\"TL\":\"158.900000000\",\"EUR\":\"39.300000000\"},{\"TL\":\"194.560000000\",\"EUR\":\"48.120000000\"}],\"T\":[{\"TL\":\"34.040000000\",\"EUR\":\"8.420000000\"},{\"TL\":\"45.080000000\",\"EUR\":\"11.150000000\"},{\"TL\":\"87.460000000\",\"EUR\":\"21.630000000\"},{\"TL\":\"131.810000000\",\"EUR\":\"32.600000000\"},{\"TL\":\"153.040000000\",\"EUR\":\"37.850000000\"},{\"TL\":\"158.300000000\",\"EUR\":\"39.150000000\"},{\"TL\":\"208.590000000\",\"EUR\":\"51.590000000\"},{\"TL\":\"253.150000000\",\"EUR\":\"62.610000000\"}],\"Y\":[{\"TL\":\"9.900000000\",\"EUR\":\".000000000\"},{\"TL\":\"15.900000000\",\"EUR\":\".000000000\"},{\"TL\":\"24.900000000\",\"EUR\":\".000000000\"},{\"TL\":\"37.900000000\",\"EUR\":\".000000000\"}]}'),
('flight_insurance_prices[REMOVE_ME_AFTER_PROBLEM_SOLVED]', '{\"A\":[{\"TL\":\"14.910000000\",\"EUR\":\"6.410000000\"},{\"TL\":\"19.860000000\",\"EUR\":\"8.540000000\"},{\"TL\":\"38.940000000\",\"EUR\":\"16.740000000\"},{\"TL\":\"58.730000000\",\"EUR\":\"25.250000000\"},{\"TL\":\"67.830000000\",\"EUR\":\"29.160000000\"},{\"TL\":\"70.340000000\",\"EUR\":\"30.240000000\"},{\"TL\":\"91.410000000\",\"EUR\":\"39.300000000\"},{\"TL\":\"111.930000000\",\"EUR\":\"48.120000000\"}],\"T\":[{\"TL\":\"19.580000000\",\"EUR\":\"8.420000000\"},{\"TL\":\"25.930000000\",\"EUR\":\"11.150000000\"},{\"TL\":\"50.310000000\",\"EUR\":\"21.630000000\"},{\"TL\":\"88.040000000\",\"EUR\":\"37.850000000\"},{\"TL\":\"88.040000000\",\"EUR\":\"37.850000000\"},{\"TL\":\"91.060000000\",\"EUR\":\"39.150000000\"},{\"TL\":\"120.000000000\",\"EUR\":\"51.590000000\"},{\"TL\":\"145.630000000\",\"EUR\":\"62.610000000\"}],\"Y\":[{\"TL\":\"11.750000000\",\"EUR\":\"5.050000000\"},{\"TL\":\"16.580000000\",\"EUR\":\"7.130000000\"},{\"TL\":\"28.210000000\",\"EUR\":\"12.130000000\"},{\"TL\":\"34.890000000\",\"EUR\":\"15.000000000\"}]}'),
('flight_price_cache_indexer', '{\"last_id\":\"1530\"}'),
('flight_system_down_message', '{\"status\":false,\"message\":\"<div class=\\\"warn-clean-yellow lft\\\" style=\\\"margin-bottom: 10px;padding: 10px; background-color: #FAF8CA\\\"><strong>Sevgili ziyaret\\u00e7imiz,<\\/strong><br>\\u015eu an TTNET DNS\'lerinde ya\\u015fanan bir sorun nedeniyle e\\u011fer TTNET DNS kullan\\u0131yorsan\\u0131z \\u00f6deme a\\u015famas\\u0131nda \\u015fifre ekran\\u0131na ula\\u015f\\u0131mda sorun ya\\u015fanabiliyor. Bu konuda TTNET ile ileti\\u015fim i\\u00e7erisindeyiz. Bu sorunu ya\\u015faman\\u0131z durumunda bir s\\u00fcre sonra yeniden denemenizi rica eder, anlay\\u0131\\u015f\\u0131n\\u0131z i\\u00e7in te\\u015fekk\\u00fcr ederiz.<\\/div>\"}'),
('flight_system_down_message_satinalma', '{\"status\":false,\"message\":\"<div class=\\\"warn-clean-yellow lft\\\" style=\\\"margin-bottom: 10px;padding: 10px; background-color: #FAF8CA\\\"><strong>Sevgili ziyaret\\u00e7imiz,<\\/strong><br>Anla\\u015fmal\\u0131 acentemizden kaynakl\\u0131 bir teknik sorun nedeniyle \\u015fu an sat\\u0131n alma i\\u015flemleri ger\\u00e7ekle\\u015fmiyor. Anlay\\u0131\\u015f\\u0131n\\u0131z i\\u00e7in te\\u015fekk\\u00fcr ederiz.<\\/div>\"}'),
('flight_system_down_messageBAKUP2', '{\"status\":false,\"message\":\"<div class=\\\"warn-clean-yellow lft\\\" style=\\\"margin-bottom: 10px;padding: 10px; background-color: #FAF8CA\\\"><strong>Sevgili ziyaret\\u00e7imiz,<\\/strong><br>\\u015eu anda \\u00f6deme altyap\\u0131s\\u0131ndaki bir sorun nedeniyle \\u00f6deme al\\u0131nam\\u0131yor. L\\u00fctfen 19:00\'dan sonra tekrar deneyin. Mail order ile sat\\u0131nalma i\\u00e7in 0212 496 1697 numaral\\u0131 telefonu kullanabilirsiniz.<\\/div>\"}'),
('flight_system_down_messageOLD1', '{\"status\":false,\"message\":\"<div class=\\\"warn-clean-yellow lft\\\" style=\\\"margin-bottom: 10px;padding: 10px; background-color: #FAF8CA\\\"><strong>Sevgili ziyaret\\u00e7imiz,<\\/strong><br>Servis sa\\u011flay\\u0131c\\u0131m\\u0131zdan kaynaklanan bir sorun nedeniyle \\u015fu anda u\\u00e7ak bileti arama sonu\\u00e7lar\\u0131 \\u00e7ok gecikmeli gelebiliyor, ya da hi\\u00e7 gelmeyebiliyor. B\\u00f6yle bir durumda l\\u00fctfen bir s\\u00fcre bekleyip tekrar deneyin. Bu konuda anlay\\u0131\\u015f\\u0131n\\u0131z i\\u00e7in te\\u015fekk\\u00fcr ederiz!<\\/div>\"}'),
('flight_system_message_api', '{\"status\":false,\"direction\":\"all\",\"subject\":\"Sevgili ziyaret\\u00e7imiz\",\"message\":\"Anla\\u015fmal\\u0131 acentemizden kaynakl\\u0131 bir teknik sorun nedeniyle \\u015fu an arama i\\u015flemleri ger\\u00e7ekle\\u015fmiyor. Anlay\\u0131\\u015f\\u0131n\\u0131z i\\u00e7in te\\u015fekk\\u00fcr ederiz.\"}'),
('flight.domesticPreferredAirlines', '[\"PC\", \"XQ\", \"YB\", \"KK\", \"TK\", \"AJ\", \"8Q\"]'),
('flight.domesticPreferredAirlinesBACKUP', '[\"PC\", \"XQ\", \"YB\", \"KK\", \"TK\", \"AJ\", \"8Q\"]'),
('flight.domesticPreferredAirlinesMobile', '[\"PC\", \"XQ\", \"YB\", \"KK\", \"TK\", \"AJ\", \"8Q\"]'),
('galeri_flight_price_list', '{\"ADF\":49,\"AFY\":49,\"AJI\":49,\"AKC\":49,\"LNA\":49,\"LTN\":49,\"MZH\":49,\"AMS\":99,\"ANK\":49,\"AYT\":49,\"XHQ\":49,\"ATH\":99,\"BAK\":99,\"BDM\":49,\"BCN\":99,\"BAL\":49,\"BUS\":99,\"BEG\":99,\"BER\":99,\"BGG\":49,\"BXN\":49,\"BRU\":99,\"BUD\":99,\"BUH\":99,\"CKZ\":49,\"İZM\":49,\"CCD\":49,\"DLM\":49,\"DTC\":49,\"DNZ\":49,\"DIY\":49,\"DXB\":99,\"DBV\":99,\"EDO\":49,\"EZS\":49,\"ERC\":49,\"ERZ\":49,\"ESK\":49,\"FTH\":49,\"GZT\":49,\"28G\":49,\"GKD\":49,\"GKV\":49,\"HAM\":99,\"HTY\":49,\"IGD\":49,\"ISE\":49,\"IST\":49,\"IZM\":49,\"KCM\":49,\"KSY\":49,\"KFS\":49,\"ASR\":49,\"39C\":49,\"IEV\":99,\"KCO\":49,\"CGN\":99,\"KYA\":49,\"CPH\":99,\"XKU\":49,\"KZR\":49,\"KWI\":99,\"ECN\":99,\"LON\":99,\"LAX\":99,\"MLX\":49,\"MQM\":49,\"QRQ\":49,\"MOW\":99,\"MSR\":49,\"NAV\":49,\"ODS\":99,\"OHD\":99,\"OGU\":49,\"PAR\":99,\"PRG\":99,\"PRN\":99,\"QRI\":49,\"ROM\":99,\"SSX\":49,\"SJJ\":99,\"SKG\":99,\"SXZ\":49,\"SQD\":49,\"VAS\":49,\"SMP\":99,\"TEQ\":49,\"TBS\":99,\"TIA\":99,\"TJK\":49,\"TZX\":49,\"SFQ\":49,\"USQ\":49,\"SKP\":99,\"VAN\":49,\"VAR\":99,\"VCE\":99,\"ONQ\":49,\"ZRH\":99}'),
('gallery_advertisement_android', '{\"title\":\"U\\u00e7ak Bileti By Enuygun\",\"description\":\"Hemen \\u00fccretsiz indirin\",\"urlTemplate\":\"http:\\/\\/cdn.enuygun.com\\/media\\/lib\\/%s\\/uploads\\/image\\/14464.jpeg\"}'),
('gallery_advertisement_desktop', '{\"title\":\"U\\u00e7ak Bileti By Enuygun\",\"description\":\"Hemen \\u00fccretsiz indirin\",\"urlTemplate\":\"http:\\/\\/cdn.enuygun.com\\/media\\/lib\\/%s\\/uploads\\/image\\/14465.jpeg\"}'),
('gallery_advertisement_ios', '{\"title\":\"U\\u00e7ak Bileti By Enuygun\",\"description\":\"Hemen \\u00fccretsiz indirin\",\"urlTemplate\":\"http:\\/\\/cdn.enuygun.com\\/media\\/lib\\/%s\\/uploads\\/image\\/14456.jpeg\"}'),
('gsm_popular_phones', '[{\"providerSlug\":\"turkcell\",\"providerName\":\"Turkcell\",\"slug\":\"iphone-6\",\"img\":\"uploads\\\\/image\\\\/16032.png\",\"name\":\"iPhone 6\"},{\"providerSlug\":\"vodafone\",\"providerName\":\"Vodafone\",\"slug\":\"galaxy-note-3\",\"img\":\"\\\\/uploads\\\\/image\\\\/16033.png\",\"name\":\"Galaxy Note 4\"},{\"providerSlug\":\"turk-telekom\",\"providerName\":\"T\\\\u00fcrk Telekom\",\"slug\":\"lg-g3\",\"img\":\"\\\\/uploads\\\\/image\\\\/16035.png\",\"name\":\"LG G3\"}]'),
('gsm_popular_provider_phone_campaigns', '[{\"provider\":\"turkcell\",\"phone\":\"iphone-6\",\"name\":\"Turkcell iPhone 6 Kampanyas\\u0131\"},{\"provider\":\"vodafone\",\"phone\":\"galaxy-s5\",\"name\":\"Vodafone Galaxy S5 Kampanyas\\u0131\"},{\"provider\":\"turk-telekom\",\"phone\":\"iphone-6\",\"name\":\"T\\u00FCrk Telekom iPhone 6 Kampanyas\\u0131\"}]\r\n'),
('insurance_ticket_refund_policy_cancel_policy_status', '{\"isWorking\":false,\"time\":\"1513719603\"}'),
('insurance_ticket_refund_policy_generali_country_settings', '{\"AD\":{\"statistic_code\":\"216\"},\"AE\":{\"statistic_code\":\"19\"},\"AF\":{\"statistic_code\":\"185\"},\"AG\":{\"statistic_code\":\"178\"},\"AI\":{\"statistic_code\":\"990\"},\"AL\":{\"statistic_code\":\"6\"},\"AM\":{\"statistic_code\":\"38\"},\"AN\":{\"statistic_code\":\"182\"},\"AO\":{\"statistic_code\":\"4\"},\"AQ\":{\"statistic_code\":\"177\"},\"AR\":{\"statistic_code\":\"5\"},\"AS\":{\"statistic_code\":\"203\"},\"AT\":{\"statistic_code\":\"8\"},\"AU\":{\"statistic_code\":\"7\"},\"AW\":{\"statistic_code\":\"990\"},\"AZ\":{\"statistic_code\":\"9\"},\"BA\":{\"statistic_code\":\"21\"},\"BB\":{\"statistic_code\":\"13\"},\"BD\":{\"statistic_code\":\"12\"},\"BE\":{\"statistic_code\":\"14\"},\"BF\":{\"statistic_code\":\"191\"},\"BG\":{\"statistic_code\":\"23\"},\"BH\":{\"statistic_code\":\"11\"},\"BI\":{\"statistic_code\":\"25\"},\"BJ\":{\"statistic_code\":\"16\"},\"BM\":{\"statistic_code\":\"181\"},\"BN\":{\"statistic_code\":\"24\"},\"BO\":{\"statistic_code\":\"20\"},\"BR\":{\"statistic_code\":\"22\"},\"BS\":{\"statistic_code\":\"10\"},\"BT\":{\"statistic_code\":\"18\"},\"BW\":{\"statistic_code\":\"190\"},\"BY\":{\"statistic_code\":\"17\"},\"BZ\":{\"statistic_code\":\"15\"},\"CA\":{\"statistic_code\":\"77\"},\"CB\":{\"statistic_code\":\"990\"},\"CC\":{\"statistic_code\":\"990\"},\"CD\":{\"statistic_code\":\"86\"},\"CF\":{\"statistic_code\":\"120\"},\"CG\":{\"statistic_code\":\"86\"},\"CH\":{\"statistic_code\":\"70\"},\"CI\":{\"statistic_code\":\"189\"},\"CK\":{\"statistic_code\":\"199\"},\"CL\":{\"statistic_code\":\"147\"},\"CM\":{\"statistic_code\":\"76\"},\"CN\":{\"statistic_code\":\"30\"},\"CO\":{\"statistic_code\":\"84\"},\"CR\":{\"statistic_code\":\"87\"},\"CU\":{\"statistic_code\":\"90\"},\"CV\":{\"statistic_code\":\"990\"},\"CX\":{\"statistic_code\":\"990\"},\"CY\":{\"statistic_code\":\"81\"},\"CZ\":{\"statistic_code\":\"29\"},\"DE\":{\"statistic_code\":\"2\"},\"DJ\":{\"statistic_code\":\"990\"},\"DK\":{\"statistic_code\":\"31\"},\"DM\":{\"statistic_code\":\"990\"},\"DO\":{\"statistic_code\":\"33\"},\"DZ\":{\"statistic_code\":\"26\"},\"EC\":{\"statistic_code\":\"34\"},\"EE\":{\"statistic_code\":\"39\"},\"EG\":{\"statistic_code\":\"109\"},\"EH\":{\"statistic_code\":\"990\"},\"ER\":{\"statistic_code\":\"192\"},\"ES\":{\"statistic_code\":\"67\"},\"ET\":{\"statistic_code\":\"40\"},\"FI\":{\"statistic_code\":\"44\"},\"FJ\":{\"statistic_code\":\"42\"},\"FK\":{\"statistic_code\":\"990\"},\"FM\":{\"statistic_code\":\"990\"},\"FO\":{\"statistic_code\":\"186\"},\"FR\":{\"statistic_code\":\"45\"},\"GA\":{\"statistic_code\":\"46\"},\"GB\":{\"statistic_code\":\"62\"},\"GD\":{\"statistic_code\":\"50\"},\"GE\":{\"statistic_code\":\"55\"},\"GF\":{\"statistic_code\":\"990\"},\"GH\":{\"statistic_code\":\"48\"},\"GI\":{\"statistic_code\":\"184\"},\"GL\":{\"statistic_code\":\"188\"},\"GM\":{\"statistic_code\":\"47\"},\"GN\":{\"statistic_code\":\"49\"},\"GP\":{\"statistic_code\":\"990\"},\"GQ\":{\"statistic_code\":\"35\"},\"GR\":{\"statistic_code\":\"169\"},\"GT\":{\"statistic_code\":\"51\"},\"GU\":{\"statistic_code\":\"200\"},\"GW\":{\"statistic_code\":\"194\"},\"GY\":{\"statistic_code\":\"187\"},\"HK\":{\"statistic_code\":\"K05\"},\"HN\":{\"statistic_code\":\"60\"},\"HR\":{\"statistic_code\":\"58\"},\"HT\":{\"statistic_code\":\"56\"},\"HU\":{\"statistic_code\":\"99\"},\"ID\":{\"statistic_code\":\"37\"},\"IE\":{\"statistic_code\":\"66\"},\"IL\":{\"statistic_code\":\"68\"},\"IN\":{\"statistic_code\":\"57\"},\"IQ\":{\"statistic_code\":\"63\"},\"IR\":{\"statistic_code\":\"64\"},\"IS\":{\"statistic_code\":\"72\"},\"IT\":{\"statistic_code\":\"71\"},\"JM\":{\"statistic_code\":\"73\"},\"JO\":{\"statistic_code\":\"162\"},\"JP\":{\"statistic_code\":\"74\"},\"KE\":{\"statistic_code\":\"80\"},\"KG\":{\"statistic_code\":\"82\"},\"KH\":{\"statistic_code\":\"75\"},\"KI\":{\"statistic_code\":\"83\"},\"KM\":{\"statistic_code\":\"85\"},\"KN\":{\"statistic_code\":\"210\"},\"KP\":{\"statistic_code\":\"88\"},\"KR\":{\"statistic_code\":\"990\"},\"KW\":{\"statistic_code\":\"89\"},\"KY\":{\"statistic_code\":\"183\"},\"KZ\":{\"statistic_code\":\"79\"},\"LA\":{\"statistic_code\":\"91\"},\"LB\":{\"statistic_code\":\"97\"},\"LC\":{\"statistic_code\":\"211\"},\"LI\":{\"statistic_code\":\"217\"},\"LK\":{\"statistic_code\":\"141\"},\"LR\":{\"statistic_code\":\"94\"},\"LS\":{\"statistic_code\":\"92\"},\"LT\":{\"statistic_code\":\"96\"},\"LU\":{\"statistic_code\":\"98\"},\"LV\":{\"statistic_code\":\"93\"},\"LY\":{\"statistic_code\":\"95\"},\"MA\":{\"statistic_code\":\"41\"},\"MB\":{\"statistic_code\":\"990\"},\"MC\":{\"statistic_code\":\"218\"},\"MD\":{\"statistic_code\":\"111\"},\"ME\":{\"statistic_code\":\"255\"},\"MG\":{\"statistic_code\":\"100\"},\"MH\":{\"statistic_code\":\"180\"},\"MK\":{\"statistic_code\":\"101\"},\"ML\":{\"statistic_code\":\"105\"},\"MM\":{\"statistic_code\":\"196\"},\"MN\":{\"statistic_code\":\"110\"},\"MO\":{\"statistic_code\":\"990\"},\"MP\":{\"statistic_code\":\"990\"},\"MQ\":{\"statistic_code\":\"235\"},\"MR\":{\"statistic_code\":\"990\"},\"MS\":{\"statistic_code\":\"236\"},\"MT\":{\"statistic_code\":\"106\"},\"MU\":{\"statistic_code\":\"107\"},\"MV\":{\"statistic_code\":\"103\"},\"MW\":{\"statistic_code\":\"102\"},\"MX\":{\"statistic_code\":\"108\"},\"MY\":{\"statistic_code\":\"104\"},\"MZ\":{\"statistic_code\":\"113\"},\"NA\":{\"statistic_code\":\"114\"},\"NC\":{\"statistic_code\":\"990\"},\"NE\":{\"statistic_code\":\"116\"},\"NF\":{\"statistic_code\":\"990\"},\"NG\":{\"statistic_code\":\"117\"},\"NI\":{\"statistic_code\":\"118\"},\"NL\":{\"statistic_code\":\"59\"},\"NO\":{\"statistic_code\":\"119\"},\"NP\":{\"statistic_code\":\"115\"},\"NR\":{\"statistic_code\":\"990\"},\"NU\":{\"statistic_code\":\"990\"},\"NZ\":{\"statistic_code\":\"167\"},\"OM\":{\"statistic_code\":\"160\"},\"PA\":{\"statistic_code\":\"123\"},\"PE\":{\"statistic_code\":\"126\"},\"PF\":{\"statistic_code\":\"990\"},\"PG\":{\"statistic_code\":\"124\"},\"PH\":{\"statistic_code\":\"43\"},\"PK\":{\"statistic_code\":\"122\"},\"PL\":{\"statistic_code\":\"127\"},\"PM\":{\"statistic_code\":\"990\"},\"PR\":{\"statistic_code\":\"209\"},\"PS\":{\"statistic_code\":\"990\"},\"PT\":{\"statistic_code\":\"128\"},\"PW\":{\"statistic_code\":\"202\"},\"PY\":{\"statistic_code\":\"125\"},\"QA\":{\"statistic_code\":\"78\"},\"RE\":{\"statistic_code\":\"198\"},\"RO\":{\"statistic_code\":\"129\"},\"RS\":{\"statistic_code\":\"168\"},\"RU\":{\"statistic_code\":\"131\"},\"RW\":{\"statistic_code\":\"130\"},\"SA\":{\"statistic_code\":\"145\"},\"SB\":{\"statistic_code\":\"139\"},\"SC\":{\"statistic_code\":\"134\"},\"SD\":{\"statistic_code\":\"142\"},\"SE\":{\"statistic_code\":\"69\"},\"SG\":{\"statistic_code\":\"136\"},\"SH\":{\"statistic_code\":\"990\"},\"SI\":{\"statistic_code\":\"138\"},\"SK\":{\"statistic_code\":\"137\"},\"SL\":{\"statistic_code\":\"135\"},\"SM\":{\"statistic_code\":\"K10\"},\"SN\":{\"statistic_code\":\"133\"},\"SO\":{\"statistic_code\":\"140\"},\"SR\":{\"statistic_code\":\"143\"},\"ST\":{\"statistic_code\":\"132\"},\"SV\":{\"statistic_code\":\"36\"},\"SX\":{\"statistic_code\":\"990\"},\"SY\":{\"statistic_code\":\"143\"},\"SZ\":{\"statistic_code\":\"146\"},\"TC\":{\"statistic_code\":\"214\"},\"TD\":{\"statistic_code\":\"28\"},\"TG\":{\"statistic_code\":\"152\"},\"TH\":{\"statistic_code\":\"150\"},\"TJ\":{\"statistic_code\":\"148\"},\"TK\":{\"statistic_code\":\"204\"},\"TL\":{\"statistic_code\":\"990\"},\"TM\":{\"statistic_code\":\"157\"},\"TN\":{\"statistic_code\":\"155\"},\"TO\":{\"statistic_code\":\"153\"},\"TP\":{\"statistic_code\":\"990\"},\"TR\":{\"statistic_code\":\"1\"},\"TT\":{\"statistic_code\":\"154\"},\"TV\":{\"statistic_code\":\"249\"},\"TW\":{\"statistic_code\":\"151\"},\"TZ\":{\"statistic_code\":\"149\"},\"UA\":{\"statistic_code\":\"159\"},\"UG\":{\"statistic_code\":\"158\"},\"UM\":{\"statistic_code\":\"990\"},\"US\":{\"statistic_code\":\"3\"},\"UY\":{\"statistic_code\":\"161\"},\"UZ\":{\"statistic_code\":\"121\"},\"VA\":{\"statistic_code\":\"219\"},\"VC\":{\"statistic_code\":\"175\"},\"VE\":{\"statistic_code\":\"164\"},\"VG\":{\"statistic_code\":\"215\"},\"VI\":{\"statistic_code\":\"215\"},\"VN\":{\"statistic_code\":\"165\"},\"VU\":{\"statistic_code\":\"163\"},\"WF\":{\"statistic_code\":\"206\"},\"WS\":{\"statistic_code\":\"203\"},\"XK\":{\"statistic_code\":\"300\"},\"YE\":{\"statistic_code\":\"166\"},\"YT\":{\"statistic_code\":\"990\"},\"ZA\":{\"statistic_code\":\"52\"},\"ZM\":{\"statistic_code\":\"170\"},\"ZW\":{\"statistic_code\":\"174\"}}'),
('insurance_ticket_refund_policy_status', '{\"isWorking\":false,\"time\":\"1513719601\"}'),
('internet_mainpage_campaigns', '[{\"campaignTitle\":\"Konu\\u015fturan Fiber \\u0130nternet Kampanyas\\u0131\",\"campaignExplanation\":\"<p>25 Mbps Limitsiz 75 GB AKK Fiber \\u0130nternet + ALO Hizmeti + Kablosuz Ev Telefonu Ayda 69 TL<\\/p>\",\"provider\":7,\"plan\":397},{\"campaignTitle\":\"D-Smart Mega Paket alana limitsiz internet bedava!\",\"campaignExplanation\":\"<p>Gi\\u015fe rekortmeni filmler, d&uuml;nyaca &uuml;nl&uuml; diziler ve daha fazlas\\u0131 ile&nbsp;T&uuml;rkiye&rsquo;de en fazla HD kanal D-Smart Mega Paket&rsquo;te. &Uuml;stelik&nbsp;limitsiz internet de bedava.<\\/p>\",\"provider\":2,\"plan\":665}]'),
('internet_mainpage_icons', '[\"2\",\"1\",\"7\",\"5\",\"22\",\"4\",\"9\",\"6\"]'),
('millenicom_ws_campaign_codes', '{\"5191\":{\"CampaignID\":\"6ea8d45e-fb1a-428c-963a-8598fc2b72a7\",\"DSLOfferId\":\"04cfea2e-878a-406e-a637-98d4649b6248\"},\"5194\":{\"CampaignID\":\"8017c109-ad4b-47ac-b6ea-c63290e313d9\",\"DSLOfferId\":\"9c062ded-6f45-4578-bed3-583a0a757c9d\"},\"5203\":{\"CampaignID\":\"2e31c47f-c0b4-487a-b073-970c540c8710\",\"DSLOfferId\":\"9eb36c30-2398-47cf-a640-6f677f4433d1\"},\"5197\":{\"CampaignID\":\"64758f0f-17a0-4af6-841a-8fc42baac0c0\",\"DSLOfferId\":\"10f03cb6-6ca8-4f1a-a9d8-8446e77dff03\"}}'),
('push_messages', '{\"ios\":\"2 TL + vergiden baslayan yurt ici ucak biletlerini tukenmeden karsilastirin, en uygununu bulun.\",\"android\":\"11 Aralik\'a kadar Balkanlar 3 TL+vergiden basliyor. Tukenmeden karsilastirin.\"}'),
('special_day', '{\"special_day\": \"\"}'),
('special_day_auto', '{\"youth_fest\":{\"start\":\"2016-05-18\",\"end\":\"2016-05-19\",\"message\":\"<p class=\'h4 navbar-text navbar-right hidden-xs hidden-sm hidden-md  eu-special-day-message\'>\\n                            <strong style=\'color: #0a85c1;text-align: center;font-size: 14px;\'>19 May\\u0131s Atat\\u00fcrk\'\\u00fc Anma<br>Gen\\u00e7lik Ve Spor Bayram\\u0131m\\u0131z Kutlu Olsun!<\\/strong>\\n                            <span style=\'display: inline-block; vertical-align: middle;\'>\\n                            <img src=\'https:\\/\\/cdn.enuygun.com\\/media\\/lib\\/60x60\\/uploads\\/image\\/bayrak4-13478.png\' alt=\'19 May\\u0131s\' style=\'width: initial;\' width=\'58\' height=\'40\'>\\n                            <\\/span><\\/p>\\n                        <p class=\'h4 navbar-text navbar-right visible-md  eu-special-day-message\' style=\'margin-right:-72px\'>\\n                            <strong style=\'color: #0a85c1;text-align: center;font-size: 14px;\'>19 May\\u0131s Atat\\u00fcrk\'\\u00fc Anma<br>Gen\\u00e7lik Ve Spor Bayram\\u0131m\\u0131z Kutlu Olsun!<\\/strong>\\n                            <span style=\'display: inline-block; vertical-align: middle;\'>\\n                            <img src=\'https:\\/\\/cdn.enuygun.com\\/media\\/lib\\/60x60\\/uploads\\/image\\/bayrak4-13478.png\' alt=\'19 May\\u0131s\' style=\'width: initial;\' width=\'58\' height=\'40\'>\\n                            <\\/span><\\/p>\"},\"ramadan_fest\":{\"start\":\"2017-06-25\",\"end\":\"2017-06-27\",\"message\":\"<p class=\'h4 navbar-text navbar-right hidden-xs hidden-sm eu-special-day-message\'>\\n                            <strong style=\'color: #0a85c1;text-align: right; font-size: 14px;\'>\\u0130yi Bayramlar!<\\/strong>\\n                            <span style=\'display: inline-block; vertical-align: middle;\'>\\n                            <img src=\'https:\\/\\/cdn.enuygun.com\\/media\\/lib\\/60x60\\/uploads\\/image\\/seker-13446.png\'  alt=\'Ramazan Bayram\\u0131\' height=\'38\' width=\'57\' \\/>\\n                            <\\/span><\\/p>\"},\"victory_fest\":{\"start\":\"2017-08-29\",\"end\":\"2017-08-30\",\"message\":\"<p class=\'h4 navbar-text navbar-right hidden-xs hidden-sm eu-special-day-message\'>\\n                            <strong style=\'color: #0a85c1;text-align: right; font-size: 14px;\'>Zafer Bayram\\u0131m\\u0131z Kutlu Olsun!<\\/strong>\\n                            <span style=\'display: inline-block; vertical-align: middle;\'>\\n                            <img src=\'https:\\/\\/cdn.enuygun.com\\/media\\/lib\\/60x60\\/uploads\\/image\\/bayrak4-13478.png\' alt=\'Zafer Bayram\\u0131\\u201d style=\'width: initial;\' width=\'58\' height=\'36\'\\/>\\n                            <\\/span><\\/p>\"},\"sacrifice_fest\":{\"start\":\"2017-08-30\",\"end\":\"2017-09-04\",\"message\":\"<p class=\'h4 navbar-text navbar-right hidden-xs hidden-sm eu-special-day-message\'>\\n                                <strong style=\'color: #0a85c1;text-align: right; font-size: 14px;\'>\\u0130yi Bayramlar!<\\/strong>\\n                                <span style=\'display: inline-block; vertical-align: middle;\'>\\n                                <img src=\'https:\\/\\/cdn.enuygun.com\\/media\\/lib\\/60x60\\/uploads\\/image\\/kurban-kuzu-13447.png\'  alt=\'Kurban Bayram\\u0131\' width=\'40\' height=\'40\' \\/>\\n                                <\\/span><\\/p>\"},\"republic_fest\":{\"start\":\"2017-10-28\",\"end\":\"2017-10-29\",\"message\":\"<p class=\'h4 navbar-text navbar-right hidden-xs hidden-sm eu-special-day-message\'>\\n                            <strong style=\'color: #0a85c1;text-align: center; font-size: 14px;\'>Cumhuriyet Bayram\\u0131m\\u0131z <br>Kutlu Olsun!<\\/strong>\\n                            <span style=\'display: inline-block; vertical-align: middle;\'>\\n                            <img src=\'https:\\/\\/cdn.enuygun.com\\/media\\/lib\\/60x60\\/uploads\\/image\\/bayrak4-13478.png\' alt=\'Cumhuriyet Bayram\\u0131\' style=\'width: initial;\' width=\'58\' height=\'36\'\\/>\\n                            <\\/span><\\/p>\"},\"new_year\":{\"start\":\"2017-12-31\",\"end\":\"2018-01-01\",\"message\":\"<p class=\'h4 navbar-text navbar-right hidden-xs hidden-sm eu-special-day-message\'>\\n                            <strong style=\'color: #0a85c1;text-align: right; font-size: 14px;\'>Yeni Y\\u0131l\\u0131n\\u0131z Kutlu Olsun!<\\/strong>\\n                            <span style=\'display: inline-block; vertical-align: middle;\'>\\n                            <img src=\'https:\\/\\/cdn.enuygun.com\\/media\\/lib\\/60x60\\/uploads\\/image\\/yeniyil2017-13448.png\' alt=\'Yeni Y\\u0131l\' style=\'width: initial;\' width=\'58\' height=\'36\'\\/>\\n                            <\\/span><\\/p>\"}}'),
('subscription.migration.cron_status', '{\"active\":false}'),
('subscription.migration.table_definitions', '{\"enuygun_v3\":{\"flight_shoppings\":{\"emailField\":\"contactEmail\",\"emailEncrypted\":false,\"firstNameField\":\"contactFirstname\",\"lastNameField\":\"contactLastname\",\"createdAtField\":\"dateCreated\",\"source\":\"ucak-bileti\",\"lastId\":\"3162026\"},\"credit_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"createdAt\",\"source\":\"loanType\",\"sourceMap\":{\"1\":\"ihtiyac\",\"2\":\"konut\",\"3\":\"tasit\"},\"extraFields\":[\"loanType\"],\"lastId\":\"11896388\"}},\"enuygun_v21\":{\"creditcard_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"kredi-karti\",\"lastId\":\"147898\"},\"credit_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"name\",\"lastNameField\":\"surname\",\"createdAtField\":\"request_time\",\"source\":\"credit_type\",\"extraFields\":[\"credit_type\"],\"lastId\":\"0\"},\"dask_application\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"name\",\"lastNameField\":\"surname\",\"createdAtField\":\"applyDate\",\"source\":\"dask\",\"lastId\":\"132\"},\"dask_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"dask\",\"lastId\":\"134\"},\"dask_applications2\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"dateCreated\",\"source\":\"dask\",\"lastId\":\"50\"},\"dask_applications3\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"dateCreated\",\"source\":\"dask\",\"lastId\":\"49550\"},\"dsl_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"name\",\"lastNameField\":\"surname\",\"createdAtField\":\"request_time\",\"source\":\"internet\",\"lastId\":\"328322\"},\"gsm_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"date_created\",\"source\":\"gsm\",\"lastId\":\"264242\"},\"flight_bookings\":{\"emailField\":\"ContactEmail\",\"emailEncrypted\":false,\"firstNameField\":\"ContactFirstName\",\"lastNameField\":\"ContactLastName\",\"createdAtField\":\"DateCreated\",\"source\":\"ucak-bileti\",\"lastId\":\"0\"},\"autoins_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"overwrite\":\"sigorta\",\"source\":\"type\",\"sourceMap\":{\"1\":\"kaskosigorta\",\"2\":\"tsigorta\"},\"extraFields\":[\"type\"],\"lastId\":\"924962\"},\"health_insurance_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"ssigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"11367\"},\"home_insurance_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"ksigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"1470\"},\"hdi_konut_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"dateCreated\",\"source\":\"ksigorta\",\"lastId\":\"6184\"}},\"enuygun_insurance\":{\"dask_applications3\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"dateCreated\",\"source\":\"dask\",\"lastId\":\"128234\"},\"hdi_konut_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"dateCreated\",\"source\":\"konsigorta\",\"lastId\":\"45719\"},\"health_insurance_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"sagsigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"164798\"},\"supp_health_applications3\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"dateCreated\",\"source\":\"tsagsigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"14168\"},\"travel_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"dateCreated\",\"source\":\"seysigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"34238\"}}}'),
('subscription.migration.table_definitions_backup', '{\"enuygun_v3\":{\"flight_shoppings\":{\"emailField\":\"contactEmail\",\"emailEncrypted\":false,\"firstNameField\":\"contactFirstname\",\"lastNameField\":\"contactLastname\",\"createdAtField\":\"dateCreated\",\"source\":\"ucak-bileti\",\"lastId\":\"1175940\"},\"credit_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"createdAt\",\"source\":\"loanType\",\"sourceMap\":{\"1\":\"ihtiyac\",\"2\":\"konut\",\"3\":\"tasit\"},\"extraFields\":[\"loanType\"],\"lastId\":\"2788566\"}},\"enuygun_v21\":{\"creditcard_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"kredi-karti\",\"lastId\":\"147898\"},\"credit_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"name\",\"lastNameField\":\"surname\",\"createdAtField\":\"request_time\",\"source\":\"credit_type\",\"extraFields\":[\"credit_type\"],\"lastId\":\"0\"},\"dask_application\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"name\",\"lastNameField\":\"surname\",\"createdAtField\":\"applyDate\",\"source\":\"dask\",\"lastId\":\"132\"},\"dask_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"dask\",\"lastId\":\"134\"},\"dask_applications2\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"dateCreated\",\"source\":\"dask\",\"lastId\":\"50\"},\"dask_applications3\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"dateCreated\",\"source\":\"dask\",\"lastId\":\"49550\"},\"dsl_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"name\",\"lastNameField\":\"surname\",\"createdAtField\":\"request_time\",\"source\":\"internet\",\"lastId\":\"309465\"},\"gsm_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"date_created\",\"source\":\"gsm\",\"lastId\":\"235248\"},\"flight_bookings\":{\"emailField\":\"ContactEmail\",\"emailEncrypted\":false,\"firstNameField\":\"ContactFirstName\",\"lastNameField\":\"ContactLastName\",\"createdAtField\":\"DateCreated\",\"source\":\"ucak-bileti\",\"lastId\":\"0\"},\"autoins_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"tsigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"220017\"},\"health_insurance_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"ssigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"11367\"},\"home_insurance_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"ksigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"1470\"},\"hdi_konut_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"dateCreated\",\"source\":\"ksigorta\",\"lastId\":\"6184\"}},\"enuygun_insurance\":{\"dask_applications3\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"dateCreated\",\"source\":\"dask\",\"lastId\":\"58968\"},\"hdi_konut_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"dateCreated\",\"source\":\"ksigorta\",\"lastId\":\"14193\"}}}'),
('subscription.migration.table_definitions_backup2', '{\"enuygun_v3\":{\"flight_shoppings\":{\"emailField\":\"contactEmail\",\"emailEncrypted\":false,\"firstNameField\":\"contactFirstname\",\"lastNameField\":\"contactLastname\",\"createdAtField\":\"dateCreated\",\"source\":\"ucak-bileti\",\"lastId\":\"1179612\"},\"credit_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"createdAt\",\"source\":\"loanType\",\"sourceMap\":{\"1\":\"ihtiyac\",\"2\":\"konut\",\"3\":\"tasit\"},\"extraFields\":[\"loanType\"],\"lastId\":\"2806140\"}},\"enuygun_v21\":{\"creditcard_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"kredi-karti\",\"lastId\":\"147898\"},\"credit_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"name\",\"lastNameField\":\"surname\",\"createdAtField\":\"request_time\",\"source\":\"credit_type\",\"extraFields\":[\"credit_type\"],\"lastId\":\"0\"},\"dask_application\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"name\",\"lastNameField\":\"surname\",\"createdAtField\":\"applyDate\",\"source\":\"dask\",\"lastId\":\"132\"},\"dask_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"dask\",\"lastId\":\"134\"},\"dask_applications2\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"dateCreated\",\"source\":\"dask\",\"lastId\":\"50\"},\"dask_applications3\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"dateCreated\",\"source\":\"dask\",\"lastId\":\"49550\"},\"dsl_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"name\",\"lastNameField\":\"surname\",\"createdAtField\":\"request_time\",\"source\":\"internet\",\"lastId\":\"309501\"},\"gsm_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"date_created\",\"source\":\"gsm\",\"lastId\":\"235248\"},\"flight_bookings\":{\"emailField\":\"ContactEmail\",\"emailEncrypted\":false,\"firstNameField\":\"ContactFirstName\",\"lastNameField\":\"ContactLastName\",\"createdAtField\":\"DateCreated\",\"source\":\"ucak-bileti\",\"lastId\":\"0\"},\"autoins_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"tsigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"220707\"},\"health_insurance_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"ssigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"11367\"},\"home_insurance_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"ksigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"1470\"},\"hdi_konut_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"dateCreated\",\"source\":\"ksigorta\",\"lastId\":\"6184\"}},\"enuygun_insurance\":{\"dask_applications3\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"dateCreated\",\"source\":\"dask\",\"lastId\":\"59202\"},\"hdi_konut_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"dateCreated\",\"source\":\"konsigorta\",\"lastId\":\"14883\"},\"health_insurance_requests\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"first_name\",\"lastNameField\":\"last_name\",\"createdAtField\":\"date_created\",\"source\":\"sagsigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"11928\"},\"supp_health_applications3\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstname\",\"lastNameField\":\"lastname\",\"createdAtField\":\"dateCreated\",\"source\":\"tsagsigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"1095\"},\"kasko_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"dateCreated\",\"source\":\"kaskosigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"4200\"},\"travel_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"dateCreated\",\"source\":\"seysigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"411\"},\"traffic_applications\":{\"emailField\":\"email\",\"emailEncrypted\":false,\"firstNameField\":\"firstName\",\"lastNameField\":\"lastName\",\"createdAtField\":\"dateCreated\",\"source\":\"tsigorta\",\"overwrite\":\"sigorta\",\"lastId\":\"15048\"}}}'),
('top_flight_search_cache', '{\"domestic\":{\"istanbul-trabzon\":{\"slug\":[\"istanbul\",\"trabzon\"],\"name\":\"\\u0130stanbul - Trabzon\"},\"ankara-diyarbakir\":{\"slug\":[\"ankara\",\"diyarbakir\"],\"name\":\"Ankara - Diyarbak\\u0131r\"},\"izmir-istanbul\":{\"slug\":[\"izmir\",\"istanbul\"],\"name\":\"\\u0130zmir - \\u0130stanbul\"},\"istanbul-antalya\":{\"slug\":[\"istanbul\",\"antalya\"],\"name\":\"\\u0130stanbul - Antalya\"},\"istanbul-bodrum\":{\"slug\":[\"istanbul\",\"bodrum\"],\"name\":\"\\u0130stanbul - Bodrum\"},\"adana-istanbul\":{\"slug\":[\"adana\",\"istanbul\"],\"name\":\"Adana - \\u0130stanbul\"},\"diyarbakir-istanbul\":{\"slug\":[\"diyarbakir\",\"istanbul\"],\"name\":\"Diyarbak\\u0131r - \\u0130stanbul\"},\"ankara-izmir\":{\"slug\":[\"ankara\",\"izmir\"],\"name\":\"Ankara - \\u0130zmir\"}},\"international\":{\"nuremberg-istanbul\":{\"slug\":[\"nuremberg\",\"istanbul\"],\"name\":\"N\\u00fcrnberg - \\u0130stanbul\"},\"istanbul-amsterdam\":{\"slug\":[\"istanbul\",\"amsterdam\"],\"name\":\"\\u0130stanbul - Amsterdam\"},\"istanbul-london\":{\"slug\":[\"istanbul\",\"london\"],\"name\":\"\\u0130stanbul - Londra\"},\"istanbul-paris\":{\"slug\":[\"istanbul\",\"paris\"],\"name\":\"\\u0130stanbul - Paris\"},\"istanbul-new-york\":{\"slug\":[\"istanbul\",\"new-york\"],\"name\":\"\\u0130stanbul - New York\"},\"istanbul-barcelona\":{\"slug\":[\"istanbul\",\"barcelona\"],\"name\":\"\\u0130stanbul - Barselona\"},\"istanbul-berlin\":{\"slug\":[\"istanbul\",\"berlin\"],\"name\":\"\\u0130stanbul - Berlin\"},\"istanbul-roma\":{\"slug\":[\"istanbul\",\"roma\"],\"name\":\"\\u0130stanbul - Roma\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `spam_trap_domains`
--

CREATE TABLE `spam_trap_domains` (
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `createdAt` datetime NOT NULL,
  `activationCode` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sources` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `softBounceCounter` int(11) NOT NULL,
  `activeStatus` int(11) DEFAULT NULL,
  `modifiedAt` datetime DEFAULT NULL,
  `lastActivationDate` datetime DEFAULT NULL,
  `lastBounceDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `firstName`, `lastName`, `status`, `createdAt`, `activationCode`, `sources`, `softBounceCounter`, `activeStatus`, `modifiedAt`, `lastActivationDate`, `lastBounceDate`) VALUES
(1, 'denemeler@denemeler.com', NULL, NULL, 1, '2020-02-19 10:18:29', NULL, 'users', 0, 0, NULL, '2020-02-19 10:18:29', NULL),
(2, 'cavmmzeuypasoheqti@awdrt.net', NULL, NULL, 1, '2020-02-28 16:38:35', NULL, 'users', 0, 0, NULL, '2020-02-28 16:38:35', NULL),
(3, 'ebru.yilmaz_1@enuygun.com', NULL, NULL, 1, '2020-03-02 11:09:38', NULL, 'users', 0, 0, '2020-03-04 09:14:57', '2020-03-04 09:14:57', NULL),
(4, 'ece.uzunoglu_30@enuygun.com', NULL, NULL, 1, '2020-03-02 11:10:45', NULL, 'users', 0, 0, '2020-03-02 11:45:47', '2020-03-02 11:45:47', NULL),
(5, 'cem@cemunalan.com.tr', NULL, NULL, 1, '2020-03-02 15:18:11', NULL, 'users', 0, 0, NULL, '2020-03-02 15:18:11', NULL),
(6, 'yasin.ates.1@enuygun.com', NULL, NULL, 1, '2020-03-02 13:12:56', NULL, 'users', 0, 0, '2020-03-02 13:13:01', '2020-03-02 13:13:01', NULL),
(7, 'ebru.yilmaz_5@enuygun.com', NULL, NULL, 1, '2020-03-02 17:08:07', NULL, 'users', 0, 0, '2020-03-04 13:23:16', '2020-03-04 13:23:16', NULL),
(8, 'ece.uzunoglu_40@enuygun.com', NULL, NULL, 1, '2020-03-02 17:18:49', NULL, 'users', 0, 0, '2020-03-03 17:06:52', '2020-03-03 17:06:52', NULL),
(9, 'ebru.yilmaz_3@enuygun.com', NULL, NULL, 1, '2020-03-02 17:42:21', NULL, 'users', 0, 0, NULL, '2020-03-02 17:42:21', NULL),
(10, 'ece.uzunoglu_50@enuygun.com', NULL, NULL, 1, '2020-03-03 15:40:00', NULL, 'users', 0, 0, NULL, '2020-03-03 15:40:00', NULL),
(11, 'ece.uzunoglu_60@enuygun.com', NULL, NULL, 1, '2020-03-03 17:29:43', NULL, 'users', 0, 0, NULL, '2020-03-03 17:29:43', NULL),
(12, 'ece.uzunoglu_70@enuygun.com', NULL, NULL, 1, '2020-03-09 10:04:06', NULL, 'users', 0, 0, NULL, '2020-03-09 10:04:06', NULL),
(13, 'ebru.yilmaz_11@enuygun.com', NULL, NULL, 1, '2020-03-09 10:22:07', NULL, 'users', 0, 0, NULL, '2020-03-09 10:22:07', NULL),
(14, 'ebru.yilmaz_12@enuygun.com', NULL, NULL, 1, '2020-03-09 17:40:57', NULL, 'users', 0, 0, NULL, '2020-03-09 17:40:57', NULL),
(15, 'ece.uzunoglu_100@enuygun.com', NULL, NULL, 1, '2020-03-10 14:01:18', NULL, 'users', 0, 0, NULL, '2020-03-10 14:01:18', NULL),
(16, 'ece.uzunoglu_110@enuygun.com', NULL, NULL, 1, '2020-03-11 13:20:34', NULL, 'users', 0, 0, NULL, '2020-03-11 13:20:34', NULL),
(17, 'ece.uzunoglu_120@enuygun.com', NULL, NULL, 1, '2020-03-11 13:33:10', NULL, 'users', 0, 0, NULL, '2020-03-11 13:33:10', NULL),
(18, 'test_api@example.com', NULL, NULL, 1, '2020-03-18 15:27:12', NULL, 'users', 0, 0, NULL, '2020-03-18 15:27:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_accepted`
--

CREATE TABLE `subscription_accepted` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `accepted` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscription_accepted`
--

INSERT INTO `subscription_accepted` (`id`, `email`, `accepted`) VALUES
(1, 'denemeler@denemeler.com', '{\"default\":true,\"users\":true}'),
(2, 'cavmmzeuypasoheqti@awdrt.net', '{\"default\":true,\"users\":true}'),
(3, 'ebru.yilmaz_1@enuygun.com', '{\"default\":true,\"users\":true}'),
(4, 'ece.uzunoglu_30@enuygun.com', '{\"default\":true,\"users\":true}'),
(5, 'cem@cemunalan.com.tr', '{\"default\":true,\"users\":true}'),
(7, 'yasin.ates.1@enuygun.com', '{\"default\":false,\"users\":false}'),
(8, 'ebru.yilmaz_5@enuygun.com', '{\"default\":true,\"users\":true}'),
(9, 'ece.uzunoglu_40@enuygun.com', '{\"default\":true,\"users\":true}'),
(10, 'ebru.yilmaz_3@enuygun.com', '{\"default\":true,\"users\":true}'),
(11, 'ece.uzunoglu_50@enuygun.com', '{\"default\":true,\"users\":true}'),
(12, 'ece.uzunoglu_60@enuygun.com', '{\"default\":true,\"users\":true}'),
(13, 'ece.uzunoglu_70@enuygun.com', '{\"default\":true,\"users\":true}'),
(14, 'ebru.yilmaz_11@enuygun.com', '{\"default\":true,\"users\":true}'),
(15, 'ebru.yilmaz_12@enuygun.com', '{\"default\":true,\"users\":true}'),
(16, 'ece.uzunoglu_100@enuygun.com', '{\"default\":true,\"users\":true}'),
(17, 'ece.uzunoglu_110@enuygun.com', '{\"default\":true,\"users\":true}'),
(18, 'ece.uzunoglu_120@enuygun.com', '{\"default\":true,\"users\":true}'),
(19, 'test_api@example.com', '{\"default\":true,\"users\":true}');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_typos`
--

CREATE TABLE `subscription_typos` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `emailTypo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isExist` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id`, `city_id`, `title`, `isActive`) VALUES
(1, 1, 'ALADAĞ', 1),
(2, 1, 'CEYHAN', 1),
(3, 1, 'FEKE', 1),
(4, 1, 'KARAİSALI', 1),
(5, 1, 'KOZAN', 1),
(6, 1, 'POZANTI', 1),
(7, 1, 'SAİMBEYLİ', 1),
(8, 1, 'SEYHAN', 1),
(9, 1, 'YUMURTALIK', 1),
(10, 1, 'YÜREĞİR', 1),
(11, 2, 'ANAMUR', 1),
(12, 2, 'BOZYAZI', 1),
(13, 2, 'ÇAMLIYAYLA', 1),
(14, 2, 'ERDEMLİ', 1),
(15, 2, 'GÜLNAR', 1),
(16, 2, 'MERKEZ', 1),
(17, 2, 'MUT', 1),
(18, 2, 'SİLİFKE', 1),
(19, 2, 'TARSUS', 1),
(20, 3, 'BAHÇE', 1),
(21, 3, 'KADİRLİ', 1),
(22, 3, 'MERKEZ', 1),
(23, 4, 'ALTINDAĞ', 1),
(24, 4, 'AYAŞ', 1),
(25, 4, 'BALA', 1),
(26, 4, 'BEYPAZARI', 1),
(27, 4, 'ÇAMLIDERE', 1),
(28, 4, 'ÇANKAYA', 1),
(29, 4, 'ÇUBUK', 1),
(30, 4, 'ETİMESGUT', 1),
(31, 4, 'HAYMANA', 1),
(32, 4, 'KALECİK', 1),
(33, 4, 'KEÇİÖREN', 1),
(34, 4, 'KIZILCAHAMAM', 1),
(35, 4, 'MAMAK', 1),
(36, 4, 'NALLIHAN', 1),
(37, 4, 'POLATLI', 1),
(38, 4, 'SİNCAN', 1),
(39, 4, 'ŞEREFLİKOÇHİSAR', 1),
(40, 4, 'YENİMAHALLE', 1),
(41, 5, 'DÖRTDİVAN', 1),
(42, 5, 'GEREDE', 1),
(43, 5, 'GÖYNÜK', 1),
(44, 5, 'MENGEN', 1),
(45, 5, 'MERKEZ', 1),
(46, 5, 'MUDURNU', 1),
(47, 5, 'YENİÇAĞA', 1),
(48, 6, 'ATKARACALAR', 1),
(49, 6, 'BAYRAMÖREN', 1),
(50, 6, 'ÇERKEŞ', 1),
(51, 6, 'ELDİVAN', 1),
(52, 6, 'ILGAZ', 1),
(53, 6, 'KURŞUNLU', 1),
(54, 6, 'MERKEZ', 1),
(55, 6, 'ORTA', 1),
(56, 6, 'ŞABANÖZÜ', 1),
(57, 6, 'YAPRAKLI', 1),
(58, 7, 'AKÇAKOCA', 1),
(59, 7, 'ÇİLİMLİ', 1),
(60, 7, 'MERKEZ', 1),
(61, 7, 'YIĞILCA', 1),
(62, 8, 'KARAKEÇİLİ', 1),
(63, 8, 'KESKİN', 1),
(64, 8, 'MERKEZ', 1),
(65, 8, 'SULAKYURT', 1),
(66, 9, 'AKSEKİ', 1),
(67, 9, 'ALANYA', 1),
(68, 9, 'ELMALI', 1),
(69, 9, 'FİNİKE', 1),
(70, 9, 'GAZİPAŞA', 1),
(71, 9, 'İBRADI', 1),
(72, 9, 'DEMRE', 1),
(73, 9, 'KAŞ', 1),
(74, 9, 'KORKUTELİ', 1),
(75, 9, 'KUMLUCA', 1),
(76, 9, 'MANAVGAT', 1),
(77, 9, 'MERKEZ', 1),
(78, 9, 'SERİK', 1),
(79, 10, 'AĞLASUN', 1),
(80, 10, 'BUCAK', 1),
(81, 10, 'ÇAVDIR', 1),
(82, 10, 'GÖLHİSAR', 1),
(83, 10, 'KARAMANLI', 1),
(84, 10, 'MERKEZ', 1),
(85, 10, 'TEFENNİ', 1),
(86, 10, 'YEŞİLOVA', 1),
(87, 11, 'AKSU', 1),
(88, 11, 'ATABEY', 1),
(89, 11, 'EĞİRDİR', 1),
(90, 11, 'GELENDOST', 1),
(91, 11, 'GÖNEN', 1),
(92, 11, 'KEÇİBORLU', 1),
(93, 11, 'MERKEZ', 1),
(94, 11, 'ŞARKİKARAAĞAÇ', 1),
(95, 11, 'SENİRKENT', 1),
(96, 11, 'SÜTÇÜLER', 1),
(97, 11, 'ULUBORLU', 1),
(98, 11, 'YALVAÇ', 1),
(99, 12, 'BOZDOĞAN', 1),
(100, 12, 'BUHARKENT', 1),
(101, 12, 'ÇİNE', 1),
(102, 12, 'GERMENCİK', 1),
(103, 12, 'İNCİRLİOVA', 1),
(104, 12, 'KARACASU', 1),
(105, 12, 'KARPUZLU', 1),
(106, 12, 'KOÇARLI', 1),
(107, 12, 'KÖŞK', 1),
(108, 12, 'KUŞADASI', 1),
(109, 12, 'KUYUCAK', 1),
(110, 12, 'MERKEZ', 1),
(111, 12, 'NAZİLLİ', 1),
(112, 12, 'SÖKE', 1),
(113, 12, 'SULTANHİSAR', 1),
(114, 12, 'DİDİM', 1),
(115, 12, 'YENİPAZAR', 1),
(116, 13, 'ACIPAYAM', 1),
(117, 13, 'BABADAĞ', 1),
(118, 13, 'BULDAN', 1),
(119, 13, 'ÇAL', 1),
(120, 13, 'ÇARDAK', 1),
(121, 13, 'ÇİVRİL', 1),
(122, 13, 'GÜNEY', 1),
(123, 13, 'HONAZ', 1),
(124, 13, 'KALE', 1),
(125, 13, 'MERKEZ', 1),
(126, 13, 'SARAYKÖY', 1),
(127, 13, 'TAVAS', 1),
(128, 14, 'BODRUM', 1),
(129, 14, 'DATÇA', 1),
(130, 14, 'FETHİYE', 1),
(131, 14, 'KAVAKLIDERE', 1),
(132, 14, 'KÖYCEĞİZ', 1),
(133, 14, 'MARMARİS', 1),
(134, 14, 'MERKEZ', 1),
(135, 14, 'MİLAS', 1),
(136, 14, 'ORTACA', 1),
(137, 14, 'ULA', 1),
(138, 14, 'YATAĞAN', 1),
(139, 15, 'AYVALIK', 1),
(140, 15, 'BALYA', 1),
(141, 15, 'BANDIRMA', 1),
(142, 15, 'BİGADİÇ', 1),
(143, 15, 'BURHANİYE', 1),
(144, 15, 'DURSUNBEY', 1),
(145, 15, 'EDREMİT', 1),
(146, 15, 'ERDEK', 1),
(147, 15, 'GÖMEÇ', 1),
(148, 15, 'GÖNEN', 1),
(149, 15, 'HAVRAN', 1),
(150, 15, 'İVRİNDİ', 1),
(151, 15, 'KEPSUT', 1),
(152, 15, 'MANYAS', 1),
(153, 15, 'MERKEZ', 1),
(154, 15, 'SAVAŞTEPE', 1),
(155, 15, 'SINDIRGI', 1),
(156, 15, 'SUSURLUK', 1),
(157, 16, 'AYVACIK', 1),
(158, 16, 'BAYRAMİÇ', 1),
(159, 16, 'BİGA', 1),
(160, 16, 'BOZCAADA', 1),
(161, 16, 'ÇAN', 1),
(162, 16, 'ECEABAT', 1),
(163, 16, 'EZİNE', 1),
(164, 16, 'GELİBOLU', 1),
(165, 16, 'GÖKÇEADA', 1),
(166, 16, 'LAPSEKİ', 1),
(167, 16, 'MERKEZ', 1),
(168, 16, 'YENİCE', 1),
(169, 17, 'ADİLCEVAZ', 1),
(170, 17, 'AHLAT', 1),
(171, 17, 'GÜROYMAK', 1),
(172, 17, 'MERKEZ', 1),
(173, 17, 'MUTKİ', 1),
(174, 17, 'TATVAN', 1),
(175, 18, 'MERKEZ', 1),
(176, 19, 'BULANIK', 1),
(177, 19, 'KORKUT', 1),
(178, 19, 'MALAZGİRT', 1),
(179, 19, 'MERKEZ', 1),
(180, 20, 'AYDINLAR', 1),
(181, 20, 'BAYKAN', 1),
(182, 20, 'ERUH', 1),
(183, 20, 'KURTALAN', 1),
(184, 20, 'MERKEZ', 1),
(185, 21, 'CİZRE', 1),
(186, 21, 'İDİL', 1),
(187, 21, 'MERKEZ', 1),
(188, 22, 'BAŞKALE', 1),
(189, 22, 'ÇALDIRAN', 1),
(190, 22, 'ÇATAK', 1),
(191, 22, 'ERCİŞ', 1),
(192, 22, 'GEVAŞ', 1),
(193, 22, 'GÜRPINAR', 1),
(194, 22, 'MERKEZ', 1),
(195, 22, 'MURADİYE', 1),
(196, 22, 'ÖZALP', 1),
(197, 23, 'BOZÜYÜK', 1),
(198, 23, 'GÖLPAZARI', 1),
(199, 23, 'MERKEZ', 1),
(200, 23, 'OSMANELİ', 1),
(201, 23, 'PAZARYERİ', 1),
(202, 23, 'SÖĞÜT', 1),
(203, 24, 'GEMLİK', 1),
(204, 24, 'GÜRSU', 1),
(205, 24, 'İNEGÖL', 1),
(206, 24, 'İZNİK', 1),
(207, 24, 'KARACABEY', 1),
(208, 24, 'KELES', 1),
(209, 24, 'KESTEL', 1),
(210, 24, 'MUDANYA', 1),
(211, 24, 'MUSTAFAKEMALPAŞA', 1),
(212, 24, 'NİLÜFER', 1),
(213, 24, 'ORHANELİ', 1),
(214, 24, 'ORHANGAZİ', 1),
(215, 24, 'OSMANGAZİ', 1),
(216, 24, 'YENİŞEHİR', 1),
(217, 24, 'YILDIRIM', 1),
(218, 25, 'DERİNCE', 1),
(219, 25, 'GEBZE', 1),
(220, 25, 'GÖLCÜK', 1),
(221, 25, 'KANDIRA', 1),
(222, 25, 'KARAMÜRSEL', 1),
(224, 26, 'AKYAZI', 1),
(225, 26, 'GEYVE', 1),
(226, 26, 'HENDEK', 1),
(227, 26, 'KARASU', 1),
(228, 26, 'KAYNARCA', 1),
(229, 26, 'MERKEZ', 1),
(230, 26, 'SAPANCA', 1),
(231, 26, 'TARAKLI', 1),
(232, 27, 'ALTINOVA', 1),
(233, 27, 'ARMUTLU', 1),
(234, 27, 'MERKEZ', 1),
(235, 28, 'ADALAR', 1),
(236, 28, 'BAĞCILAR', 1),
(237, 28, 'BAHÇELİEVLER', 1),
(238, 28, 'BAKIRKÖY', 1),
(239, 28, 'BEŞİKTAŞ', 1),
(240, 28, 'BEYKOZ', 1),
(241, 28, 'BEYOĞLU', 1),
(242, 28, 'BÜYÜKÇEKMECE', 1),
(243, 28, 'ÇATALCA', 1),
(245, 28, 'ESENLER', 1),
(246, 28, 'EYÜP', 1),
(247, 28, 'FATİH', 1),
(248, 28, 'GAZİOSMANPAŞA', 1),
(249, 28, 'GÜNGÖREN', 1),
(250, 28, 'KADIKÖY', 1),
(251, 28, 'KAĞITHANE', 1),
(252, 28, 'KARTAL', 1),
(253, 28, 'KÜÇÜKÇEKMECE', 1),
(254, 28, 'MALTEPE', 1),
(255, 28, 'PENDİK', 1),
(256, 28, 'SARIYER', 1),
(257, 28, 'SİLİVRİ', 1),
(258, 28, 'SULTANBEYLİ', 1),
(259, 28, 'ŞİLE', 1),
(260, 28, 'ŞİŞLİ', 1),
(261, 28, 'TUZLA', 1),
(262, 28, 'ÜMRANİYE', 1),
(263, 28, 'ÜSKÜDAR', 1),
(264, 28, 'ZEYTİNBURNU', 1),
(265, 29, 'ÇERKEZKÖY', 1),
(266, 29, 'ÇORLU', 1),
(267, 29, 'HAYRABOLU', 1),
(268, 29, 'MALKARA', 1),
(269, 29, 'MARMARA EREĞLİSİ', 1),
(270, 29, 'MERKEZ', 1),
(271, 29, 'MURATLI', 1),
(272, 29, 'SARAY', 1),
(273, 29, 'ŞARKÖY', 1),
(274, 30, 'ALİAĞA', 1),
(275, 30, 'BALÇOVA', 1),
(276, 30, 'BAYINDIR', 1),
(277, 30, 'BERGAMA', 1),
(278, 30, 'BEYDAĞ', 1),
(279, 30, 'BORNOVA', 1),
(280, 30, 'BUCA', 1),
(281, 30, 'ÇEŞME', 1),
(282, 30, 'DİKİLİ', 1),
(283, 30, 'FOÇA', 1),
(284, 30, 'GÜZELBAHÇE', 1),
(285, 30, 'KARABURUN', 1),
(286, 30, 'KARŞIYAKA', 1),
(287, 30, 'KEMALPAŞA', 1),
(288, 30, 'KINIK', 1),
(289, 30, 'KİRAZ', 1),
(290, 30, 'KONAK', 1),
(291, 30, 'MENDERES', 1),
(292, 30, 'MENEMEN', 1),
(293, 30, 'NARLIDERE', 1),
(294, 30, 'ÖDEMİŞ', 1),
(295, 30, 'SEFERİHİSAR', 1),
(296, 30, 'SELÇUK', 1),
(297, 30, 'TİRE', 1),
(298, 30, 'TORBALI', 1),
(299, 30, 'URLA', 1),
(300, 31, 'AHMETLİ', 1),
(301, 31, 'AKHİSAR', 1),
(302, 31, 'ALAŞEHİR', 1),
(303, 31, 'DEMİRCİ', 1),
(304, 31, 'GÖLMARMARA', 1),
(305, 31, 'GÖRDES', 1),
(306, 31, 'KIRKAĞAÇ', 1),
(307, 31, 'KULA', 1),
(308, 31, 'MERKEZ', 1),
(309, 31, 'SALİHLİ', 1),
(310, 31, 'SARUHANLI', 1),
(311, 31, 'SOMA', 1),
(312, 31, 'TURGUTLU', 1),
(313, 32, 'HASANKEYF', 1),
(314, 32, 'MERKEZ', 1),
(315, 33, 'MERKEZ', 1),
(316, 34, 'ÇERMİK', 1),
(317, 34, 'EĞİL', 1),
(318, 34, 'ERGANİ', 1),
(319, 34, 'HANİ', 1),
(320, 34, 'HAZRO', 1),
(321, 34, 'KOCAKÖY', 1),
(322, 34, 'LİCE', 1),
(323, 34, 'MERKEZ', 1),
(324, 34, 'SİLVAN', 1),
(325, 35, 'DERİK', 1),
(326, 35, 'KIZILTEPE', 1),
(327, 35, 'MAZIDAĞI', 1),
(328, 35, 'MERKEZ', 1),
(329, 35, 'MİDYAT', 1),
(330, 35, 'NUSAYBİN', 1),
(331, 35, 'ÖMERLİ', 1),
(332, 35, 'SAVUR', 1),
(333, 36, 'ENEZ', 1),
(334, 36, 'HAVSA', 1),
(335, 36, 'İPSALA', 1),
(336, 36, 'KEŞAN', 1),
(337, 36, 'LALAPAŞA', 1),
(338, 36, 'MERİÇ', 1),
(339, 36, 'MERKEZ', 1),
(340, 36, 'UZUNKÖPRÜ', 1),
(341, 37, 'BABAESKİ', 1),
(342, 37, 'LÜLEBURGAZ', 1),
(343, 37, 'MERKEZ', 1),
(344, 37, 'PEHLİVANKÖY', 1),
(345, 37, 'PINARHİSAR', 1),
(346, 37, 'VİZE', 1),
(347, 38, 'DİYADİN', 1),
(348, 38, 'DOĞUBAYAZIT', 1),
(349, 38, 'MERKEZ', 1),
(350, 38, 'PATNOS', 1),
(351, 38, 'TUTAK', 1),
(352, 39, 'ÇILDIR', 1),
(353, 39, 'GÖLE', 1),
(354, 39, 'MERKEZ', 1),
(355, 40, 'AYDINTEPE', 1),
(356, 40, 'DEMİRÖZÜ', 1),
(357, 40, 'MERKEZ', 1),
(358, 41, 'ÇAYIRLI', 1),
(359, 41, 'İLİÇ', 1),
(360, 41, 'KEMAH', 1),
(361, 41, 'KEMALİYE', 1),
(362, 41, 'MERKEZ', 1),
(363, 41, 'REFAHİYE', 1),
(364, 41, 'TERCAN', 1),
(365, 41, 'ÜZÜMLÜ', 1),
(366, 42, 'AŞKALE', 1),
(367, 42, 'HINIS', 1),
(368, 42, 'HORASAN', 1),
(369, 42, 'ILICA', 1),
(370, 42, 'İSPİR', 1),
(371, 42, 'NARMAN', 1),
(372, 42, 'OLTU', 1),
(373, 42, 'OLUR', 1),
(374, 42, 'PASİNLER', 1),
(375, 42, 'TORTUM', 1),
(376, 43, 'MERKEZ', 1),
(377, 44, 'KAĞIZMAN', 1),
(378, 44, 'MERKEZ', 1),
(379, 44, 'SARIKAMIŞ', 1),
(380, 45, 'ARABAN', 1),
(381, 45, 'İSLAHİYE', 1),
(382, 45, 'NİZİP', 1),
(383, 45, 'NURDAĞI', 1),
(384, 45, 'OĞUZELİ', 1),
(385, 45, 'ŞAHİNBEY', 1),
(386, 45, 'ŞEHİTKAMİL', 1),
(387, 45, 'YAVUZELİ', 1),
(388, 46, 'MERKEZ', 1),
(389, 47, 'ALTINÖZÜ', 1),
(390, 47, 'BELEN', 1),
(391, 47, 'DÖRTYOL', 1),
(392, 47, 'ERZİN', 1),
(393, 47, 'İSKENDERUN', 1),
(394, 47, 'KIRIKHAN', 1),
(395, 47, 'KUMLU', 1),
(396, 47, 'MERKEZ', 1),
(397, 47, 'REYHANLI', 1),
(398, 47, 'SAMANDAĞ', 1),
(399, 47, 'YAYLADAĞI', 1),
(400, 48, 'AFŞİN', 1),
(401, 48, 'ANDIRIN', 1),
(402, 48, 'ÇAĞLAYANCERİT', 1),
(403, 48, 'ELBİSTAN', 1),
(404, 48, 'GÖKSUN', 1),
(405, 48, 'MERKEZ', 1),
(406, 48, 'PAZARCIK', 1),
(407, 49, 'AMASRA', 1),
(408, 49, 'MERKEZ', 1),
(409, 49, 'ULUS', 1),
(410, 50, 'ESKİPAZAR', 1),
(411, 50, 'MERKEZ', 1),
(412, 50, 'SAFRANBOLU', 1),
(413, 51, 'ABANA', 1),
(414, 51, 'ARAÇ', 1),
(415, 51, 'BOZKURT', 1),
(416, 51, 'CİDE', 1),
(417, 51, 'ÇATALZEYTİN', 1),
(418, 51, 'DADAY', 1),
(419, 51, 'DEVREKANİ', 1),
(420, 51, 'HANÖNÜ', 1),
(421, 51, 'İHSANGAZİ', 1),
(422, 51, 'İNEBOLU', 1),
(423, 51, 'KÜRE', 1),
(424, 51, 'MERKEZ', 1),
(425, 51, 'TAŞKÖPRÜ', 1),
(426, 51, 'TOSYA', 1),
(427, 52, 'ALAPLI', 1),
(428, 52, 'ÇAYCUMA', 1),
(429, 52, 'DEVREK', 1),
(430, 52, 'EREĞLİ', 1),
(431, 52, 'MERKEZ', 1),
(432, 53, 'AKKIŞLA', 1),
(433, 53, 'BÜNYAN', 1),
(434, 53, 'DEVELİ', 1),
(435, 53, 'FELAHİYE', 1),
(436, 53, 'HACILAR', 1),
(437, 53, 'İNCESU', 1),
(438, 53, 'KOCASİNAN', 1),
(439, 53, 'MELİKGAZİ', 1),
(440, 53, 'ÖZVATAN', 1),
(441, 53, 'PINARBAŞI', 1),
(442, 53, 'TALAS', 1),
(443, 53, 'TOMARZA', 1),
(444, 53, 'YAHYALI', 1),
(445, 53, 'YEŞİLHİSAR', 1),
(446, 54, 'AKPINAR', 1),
(447, 54, 'ÇİÇEKDAĞI', 1),
(448, 54, 'KAMAN', 1),
(449, 54, 'MERKEZ', 1),
(450, 54, 'MUCUR', 1),
(451, 55, 'AVANOS', 1),
(452, 55, 'DERİNKUYU', 1),
(453, 55, 'GÜLŞEHİR', 1),
(454, 55, 'HACIBEKTAŞ', 1),
(455, 55, 'KOZAKLI', 1),
(456, 55, 'MERKEZ', 1),
(457, 55, 'ÜRGÜP', 1),
(458, 56, 'ALTUNHİSAR', 1),
(459, 56, 'BOR', 1),
(460, 56, 'MERKEZ', 1),
(461, 56, 'ULUKIŞLA', 1),
(462, 57, 'ESKİL', 1),
(463, 57, 'GÜLAĞAÇ', 1),
(464, 57, 'GÜZELYURT', 1),
(465, 57, 'MERKEZ', 1),
(466, 58, 'AYRANCI', 1),
(467, 58, 'BAŞYAYLA', 1),
(468, 58, 'ERMENEK', 1),
(469, 58, 'MERKEZ', 1),
(470, 59, 'AKÖREN', 1),
(471, 59, 'AKŞEHİR', 1),
(472, 59, 'ALTINEKİN', 1),
(473, 59, 'BEYŞEHİR', 1),
(474, 59, 'BOZKIR', 1),
(475, 59, 'CİHANBEYLİ', 1),
(476, 59, 'ÇELTİK', 1),
(477, 59, 'ÇUMRA', 1),
(478, 59, 'DERBENT', 1),
(479, 59, 'DOĞANHİSAR', 1),
(480, 59, 'EMİRGAZİ', 1),
(481, 59, 'EREĞLİ', 1),
(482, 59, 'HADİM', 1),
(483, 59, 'HÜYÜK', 1),
(484, 59, 'ILGIN', 1),
(485, 59, 'KADINHANI', 1),
(486, 59, 'KARAPINAR', 1),
(487, 59, 'KARATAY', 1),
(488, 59, 'MERAM', 1),
(489, 59, 'SARAYÖNÜ', 1),
(490, 59, 'SELÇUKLU', 1),
(491, 59, 'SEYDİŞEHİR', 1),
(492, 59, 'TAŞKENT', 1),
(493, 59, 'YUNAK', 1),
(494, 60, 'BAŞMAKÇI', 1),
(495, 60, 'BOLVADİN', 1),
(496, 60, 'ÇAY', 1),
(497, 60, 'ÇOBANLAR', 1),
(498, 60, 'DİNAR', 1),
(499, 60, 'EMİRDAĞ', 1),
(500, 60, 'İHSANİYE', 1),
(501, 60, 'KIZILÖREN', 1),
(502, 60, 'MERKEZ', 1),
(503, 60, 'SANDIKLI', 1),
(504, 60, 'SİNANPAŞA', 1),
(505, 60, 'ŞUHUT', 1),
(506, 60, 'SULTANDAĞI', 1),
(507, 61, 'ALPU', 1),
(508, 61, 'BEYLİKOVA', 1),
(509, 61, 'ÇİFTELER', 1),
(510, 61, 'GÜNYÜZÜ', 1),
(511, 61, 'HAN', 1),
(512, 61, 'İNÖNÜ', 1),
(513, 61, 'MAHMUDİYE', 1),
(514, 61, 'MERKEZ', 1),
(515, 61, 'MİHALIÇÇIK', 1),
(516, 61, 'SEYİTGAZİ', 1),
(517, 61, 'SİVRİHİSAR', 1),
(518, 62, 'ALTINTAŞ', 1),
(519, 62, 'DOMANİÇ', 1),
(520, 62, 'EMET', 1),
(521, 62, 'GEDİZ', 1),
(522, 62, 'MERKEZ', 1),
(523, 62, 'PAZARLAR', 1),
(524, 62, 'SİMAV', 1),
(525, 62, 'TAVŞANLI', 1),
(526, 63, 'BANAZ', 1),
(527, 63, 'EŞME', 1),
(528, 63, 'MERKEZ', 1),
(529, 63, 'SİVASLI', 1),
(530, 63, 'ULUBEY', 1),
(531, 64, 'AĞIN', 1),
(532, 64, 'ARICAK', 1),
(533, 64, 'BASKİL', 1),
(534, 64, 'KARAKOÇAN', 1),
(535, 64, 'KEBAN', 1),
(536, 64, 'KOVANCILAR', 1),
(537, 64, 'MADEN', 1),
(538, 64, 'MERKEZ', 1),
(539, 64, 'PALU', 1),
(540, 64, 'SİVRİCE', 1),
(541, 65, 'AKÇADAĞ', 1),
(542, 65, 'ARAPGİR', 1),
(543, 65, 'ARGUVAN', 1),
(544, 65, 'BATTALGAZİ', 1),
(545, 65, 'DARENDE', 1),
(546, 65, 'DOĞANŞEHİR', 1),
(547, 65, 'HEKİMHAN', 1),
(548, 65, 'MERKEZ', 1),
(549, 65, 'PÜTÜRGE', 1),
(550, 65, 'YAZIHAN', 1),
(551, 65, 'YEŞİLYURT', 1),
(552, 66, 'ÇEMİŞGEZEK', 1),
(553, 66, 'HOZAT', 1),
(554, 66, 'MAZGİRT', 1),
(555, 66, 'MERKEZ', 1),
(556, 66, 'NAZIMİYE', 1),
(557, 66, 'PERTEK', 1),
(558, 67, 'AKKUŞ', 1),
(559, 67, 'FATSA', 1),
(560, 67, 'GÖLKÖY', 1),
(561, 67, 'KABADÜZ', 1),
(562, 67, 'MERKEZ', 1),
(563, 67, 'MESUDİYE', 1),
(564, 67, 'PERŞEMBE', 1),
(565, 67, 'ULUBEY', 1),
(566, 67, 'ÜNYE', 1),
(567, 68, 'ALAÇAM', 1),
(568, 68, 'BAFRA', 1),
(569, 68, 'ÇARŞAMBA', 1),
(570, 68, 'HAVZA', 1),
(571, 68, 'KAVAK', 1),
(572, 68, 'LADİK', 1),
(573, 68, 'MERKEZ', 1),
(574, 68, 'SALIPAZARI', 1),
(575, 68, 'TEKKEKÖY', 1),
(576, 68, 'TERME', 1),
(577, 68, 'VEZİRKÖPRÜ', 1),
(578, 69, 'AYANCIK', 1),
(579, 69, 'BOYABAT', 1),
(580, 69, 'DURAĞAN', 1),
(581, 69, 'ERFELEK', 1),
(582, 69, 'GERZE', 1),
(583, 69, 'MERKEZ', 1),
(584, 70, 'ALTINYAYLA', 1),
(585, 70, 'DİVRİĞİ', 1),
(586, 70, 'DOĞANŞAR', 1),
(587, 70, 'GEMEREK', 1),
(588, 70, 'HAFİK', 1),
(589, 70, 'KANGAL', 1),
(590, 70, 'MERKEZ', 1),
(591, 70, 'ŞARKIŞLA', 1),
(592, 70, 'SUŞEHRİ', 1),
(593, 70, 'YILDIZELİ', 1),
(594, 70, 'ZARA', 1),
(595, 71, 'BOĞAZLIYAN', 1),
(596, 71, 'ÇANDIR', 1),
(597, 71, 'ÇAYIRALAN', 1),
(598, 71, 'MERKEZ', 1),
(599, 71, 'SARIKAYA', 1),
(600, 71, 'ŞEFAATLİ', 1),
(601, 71, 'SORGUN', 1),
(602, 71, 'YENİFAKILI', 1),
(603, 71, 'YERKÖY', 1),
(604, 72, 'BESNİ', 1),
(605, 72, 'GÖLBAŞI', 1),
(606, 72, 'KAHTA', 1),
(607, 72, 'MERKEZ', 1),
(608, 73, 'AKÇAKALE', 1),
(609, 73, 'BİRECİK', 1),
(610, 73, 'BOZOVA', 1),
(611, 73, 'HALFETİ', 1),
(612, 73, 'HARRAN', 1),
(613, 73, 'HİLVAN', 1),
(614, 73, 'MERKEZ', 1),
(615, 73, 'SİVEREK', 1),
(616, 73, 'SURUÇ', 1),
(617, 73, 'VİRANŞEHİR', 1),
(618, 74, 'GÖYNÜCEK', 1),
(619, 74, 'GÜMÜŞHACIKÖY', 1),
(620, 74, 'MERKEZ', 1),
(621, 74, 'MERZİFON', 1),
(622, 74, 'SULUOVA', 1),
(623, 74, 'TAŞOVA', 1),
(624, 75, 'ALACA', 1),
(625, 75, 'BOĞAZKALE', 1),
(626, 75, 'İSKİLİP', 1),
(627, 75, 'KARGI', 1),
(628, 75, 'MECİTÖZÜ', 1),
(629, 75, 'MERKEZ', 1),
(630, 75, 'OĞUZLAR', 1),
(631, 75, 'OSMANCIK', 1),
(632, 75, 'SUNGURLU', 1),
(633, 75, 'UĞURLUDAĞ', 1),
(634, 76, 'ALMUS', 1),
(635, 76, 'ERBAA', 1),
(636, 76, 'MERKEZ', 1),
(637, 76, 'NİKSAR', 1),
(638, 76, 'PAZAR', 1),
(639, 76, 'REŞADİYE', 1),
(640, 76, 'SULUSARAY', 1),
(641, 76, 'TURHAL', 1),
(642, 76, 'ZİLE', 1),
(643, 77, 'ARDANUÇ', 1),
(644, 77, 'ARHAVİ', 1),
(645, 77, 'HOPA', 1),
(646, 77, 'MERKEZ', 1),
(647, 77, 'MURGUL', 1),
(648, 77, 'ŞAVŞAT', 1),
(649, 77, 'YUSUFELİ', 1),
(650, 78, 'ALUCRA', 1),
(651, 78, 'BULANCAK', 1),
(652, 78, 'DERELİ', 1),
(653, 78, 'ESPİYE', 1),
(654, 78, 'EYNESİL', 1),
(655, 78, 'GÖRELE', 1),
(656, 78, 'KEŞAP', 1),
(657, 78, 'MERKEZ', 1),
(658, 78, 'ŞEBİNKARAHİSAR', 1),
(659, 78, 'TİREBOLU', 1),
(660, 79, 'KELKİT', 1),
(661, 79, 'KÜRTÜN', 1),
(662, 79, 'MERKEZ', 1),
(663, 79, 'ŞİRAN', 1),
(664, 80, 'ÇAYELİ', 1),
(665, 80, 'FINDIKLI', 1),
(666, 80, 'MERKEZ', 1),
(667, 80, 'PAZAR', 1),
(668, 81, 'AKÇAABAT', 1),
(669, 81, 'ARAKLI', 1),
(670, 81, 'ARSİN', 1),
(671, 81, 'BEŞİKDÜZÜ', 1),
(672, 81, 'ÇARŞIBAŞI', 1),
(673, 81, 'ÇAYKARA', 1),
(674, 81, 'DERNEKPAZARI', 1),
(675, 81, 'MAÇKA', 1),
(676, 81, 'MERKEZ', 1),
(677, 81, 'OF', 1),
(678, 81, 'SÜRMENE', 1),
(679, 81, 'TONYA', 1),
(680, 81, 'VAKFIKEBİR', 1),
(681, 81, 'YOMRA', 1),
(693, 56, 'ÇAMARDI', 1),
(694, 56, 'ÇİFTLİK', 1),
(2484, 1, 'ÇUKUROVA', 1),
(2485, 1, 'İMAMOĞLU', 1),
(2486, 1, 'KARATAŞ', 1),
(2487, 1, 'SARIÇAM', 1),
(2488, 1, 'TUFANBEYLİ', 1),
(2489, 72, 'ÇELİKHAN', 1),
(2490, 72, 'GERGER', 1),
(2491, 72, 'SAMSAT', 1),
(2492, 72, 'SİNCİK', 1),
(2493, 72, 'TUT', 1),
(2494, 60, 'BAYAT', 1),
(2495, 60, 'DAZKIRI', 1),
(2496, 60, 'EVCİLER', 1),
(2497, 60, 'HOCALAR', 1),
(2498, 60, 'İSCEHİSAR', 1),
(2499, 38, 'ELEŞKİRT', 1),
(2500, 38, 'HAMUR', 1),
(2501, 38, 'TAŞLIÇAY', 1),
(2502, 74, 'HAMAMÖZÜ', 1),
(2503, 4, 'AKYURT', 1),
(2504, 4, 'ELMADAĞ', 1),
(2505, 4, 'EVREN', 1),
(2506, 4, 'GÜDÜL', 1),
(2507, 4, 'KAZAN', 1),
(2508, 4, 'PURSAKLAR', 1),
(2509, 9, 'DÖŞEMEALTI', 1),
(2510, 9, 'GÜNDOĞMUŞ', 1),
(2511, 9, 'KEMER', 1),
(2512, 9, 'KEPEZ', 1),
(2513, 9, 'KONYAALTI', 1),
(2514, 9, 'MURATPAŞA', 1),
(2515, 77, 'BORÇKA', 1),
(2516, 15, 'MARMARA', 1),
(2517, 23, 'İNHİSAR', 1),
(2518, 33, 'ADAKLI', 1),
(2519, 33, 'GENÇ', 1),
(2520, 33, 'KARLIOVA', 1),
(2521, 33, 'KİĞI', 1),
(2522, 33, 'SOLHAN', 1),
(2523, 33, 'YAYLADERE', 1),
(2524, 33, 'YEDİSU', 1),
(2525, 17, 'HİZAN', 1),
(2526, 5, 'KIBRISCIK', 1),
(2527, 5, 'SEBEN', 1),
(2528, 10, 'ÇELTİKÇİ', 1),
(2529, 24, 'BÜYÜKORHAN', 1),
(2530, 24, 'HARMANCIK', 1),
(2531, 16, 'İMROZ', 1),
(2532, 6, 'KIZILIRMAK', 1),
(2533, 6, 'KORGUN', 1),
(2534, 75, 'DODURGA', 1),
(2535, 75, 'LAÇİN', 1),
(2536, 75, 'ORTAKÖY', 1),
(2537, 13, 'AKKÖY', 1),
(2538, 13, 'BAKLAN', 1),
(2539, 13, 'BEKİLLİ', 1),
(2540, 13, 'BEYAĞAÇ', 1),
(2541, 13, 'ÇAMELİ', 1),
(2542, 13, 'SERİNHİSAR', 1),
(2543, 34, 'BAĞLAR', 1),
(2544, 34, 'BİSMİL', 1),
(2545, 34, 'ÇINAR', 1),
(2546, 34, 'ÇÜNGÜŞ', 1),
(2547, 34, 'DİCLE', 1),
(2548, 34, 'KAYAPINAR', 1),
(2549, 34, 'KULP', 1),
(2550, 34, 'SUR', 1),
(2551, 36, 'SÜLOĞLU', 1),
(2552, 64, 'ALACAKAYA', 1),
(2553, 41, 'OTLUKBELİ', 1),
(2554, 42, 'AZİZİYE', 1),
(2555, 42, 'ÇAT', 1),
(2556, 42, 'KARAÇOBAN', 1),
(2557, 42, 'KARAYAZI', 1),
(2558, 42, 'KÖPRÜKÖY', 1),
(2559, 42, 'PALANDÖKEN', 1),
(2560, 42, 'PAZARYOLU', 1),
(2561, 42, 'ŞENKAYA', 1),
(2562, 42, 'TEKMAN', 1),
(2563, 42, 'UZUNDERE', 1),
(2564, 42, 'YAKUTİYE', 1),
(2565, 61, 'MİHALGAZİ', 1),
(2566, 61, 'ODUNPAZARI', 1),
(2567, 61, 'SARICAKAYA', 1),
(2568, 61, 'TEPEBAŞI', 1),
(2569, 45, 'KARKAMIŞ', 1),
(2570, 78, 'ÇAMOLUK', 1),
(2571, 78, 'ÇANAKÇI', 1),
(2572, 78, 'DOĞANKENT', 1),
(2573, 78, 'GÜCE', 1),
(2574, 78, 'PİRAZİZ', 1),
(2575, 78, 'YAĞLIDERE', 1),
(2576, 79, 'KÖSE', 1),
(2577, 79, 'TORUL', 1),
(2578, 18, 'ÇUKURCA', 1),
(2579, 18, 'ŞEMDİNLİ', 1),
(2580, 18, 'YÜKSEKOVA', 1),
(2581, 47, 'HASSA', 1),
(2582, 11, 'YENİŞARBADEMLİ', 1),
(2583, 2, 'AKDENİZ', 1),
(2584, 2, 'AYDINCIK', 1),
(2585, 2, 'MEZİTLİ', 1),
(2586, 2, 'TOROSLAR', 1),
(2587, 28, 'ARNAVUTKÖY', 1),
(2588, 28, 'ATAŞEHİR', 1),
(2589, 28, 'AVCILAR', 1),
(2590, 28, 'BAŞAKŞEHİR', 1),
(2591, 28, 'BAYRAMPAŞA', 1),
(2592, 28, 'BEYLİKDÜZÜ', 1),
(2593, 28, 'ÇEKMEKÖY', 1),
(2594, 28, 'ESENYURT', 1),
(2595, 28, 'SANCAKTEPE', 1),
(2596, 28, 'SULTANGAZİ', 1),
(2597, 30, 'BAYRAKLI', 1),
(2598, 30, 'ÇİĞLİ', 1),
(2599, 30, 'GAZİEMİR', 1),
(2600, 30, 'KARABAĞLAR', 1),
(2601, 44, 'AKYAKA', 1),
(2602, 44, 'ARPAÇAY', 1),
(2603, 44, 'DİGOR', 1),
(2604, 44, 'SELİM', 1),
(2605, 44, 'SUSUZ', 1),
(2606, 51, 'AĞLI', 1),
(2607, 51, 'AZDAVAY', 1),
(2608, 51, 'DOĞANYURT', 1),
(2609, 51, 'SEYDİLER', 1),
(2610, 51, 'ŞENPAZAR', 1),
(2611, 53, 'SARIOĞLAN', 1),
(2612, 53, 'SARIZ', 1),
(2613, 37, 'DEMİRKÖY', 1),
(2614, 37, 'KOFÇAZ', 1),
(2615, 54, 'AKÇAKENT', 1),
(2616, 54, 'BOZTEPE', 1),
(2617, 25, 'BAŞİSKELE', 1),
(2618, 25, 'ÇAYIROVA', 1),
(2619, 25, 'DARICA', 1),
(2620, 25, 'DİLOVASI', 1),
(2621, 25, 'İZMİT', 1),
(2622, 25, 'KARTEPE', 1),
(2623, 25, 'KÖRFEZ', 1),
(2624, 59, 'AHIRLI', 1),
(2625, 59, 'DEREBUCAK', 1),
(2626, 59, 'GÜNEYSINIR', 1),
(2627, 59, 'HALKAPINAR', 1),
(2628, 59, 'KULU', 1),
(2629, 59, 'TUZLUKÇU', 1),
(2630, 59, 'YALIHÜYÜK', 1),
(2631, 62, 'ASLANAPA', 1),
(2632, 62, 'ÇAVDARHİSAR', 1),
(2633, 62, 'DUMLUPINAR', 1),
(2634, 62, 'HİSARCIK', 1),
(2635, 62, 'ŞAPHANE', 1),
(2636, 65, 'DOĞANYOL', 1),
(2637, 65, 'KULUNCAK', 1),
(2638, 31, 'KÖPRÜBAŞI', 1),
(2639, 31, 'SARIGÖL', 1),
(2640, 31, 'SELENDİ', 1),
(2641, 48, 'EKİNÖZÜ', 1),
(2642, 48, 'NURHAK', 1),
(2643, 48, 'TÜRKOĞLU', 1),
(2644, 35, 'DARGEÇİT', 1),
(2645, 35, 'YEŞİLLİ', 1),
(2646, 14, 'DALAMAN', 1),
(2647, 19, 'HASKÖY', 1),
(2648, 19, 'VARTO', 1),
(2649, 55, 'ACIGÖL', 1),
(2650, 67, 'AYBASTI', 1),
(2651, 67, 'ÇAMAŞ', 1),
(2652, 67, 'ÇATALPINAR', 1),
(2653, 67, 'ÇAYBAŞI', 1),
(2654, 67, 'GÜLYALI', 1),
(2655, 67, 'GÜRGENTEPE', 1),
(2656, 67, 'İKİZCE', 1),
(2657, 67, 'KABATAŞ', 1),
(2658, 67, 'KORGAN', 1),
(2659, 67, 'KUMRU', 1),
(2660, 80, 'ARDEŞEN', 1),
(2661, 80, 'ÇAMLIHEMŞİN', 1),
(2662, 80, 'DEREPAZARI', 1),
(2663, 80, 'GÜNEYSU', 1),
(2664, 80, 'HEMŞİN', 1),
(2665, 80, 'İKİZDERE', 1),
(2666, 80, 'İYİDERE', 1),
(2667, 80, 'KALKANDERE', 1),
(2668, 26, 'ADAPAZARI', 1),
(2669, 26, 'ARİFİYE', 1),
(2670, 26, 'ERENLER', 1),
(2671, 26, 'FERİZLİ', 1),
(2672, 26, 'KARAPÜRÇEK', 1),
(2673, 26, 'KOCAALİ', 1),
(2674, 26, 'PAMUKOVA', 1),
(2675, 26, 'SERDİVAN', 1),
(2676, 26, 'SÖĞÜTLÜ', 1),
(2677, 68, '19 MAYIS', 1),
(2678, 68, 'ASARCIK', 1),
(2679, 68, 'ATAKUM', 1),
(2680, 68, 'CANİK', 1),
(2681, 68, 'İLKADIM', 1),
(2682, 68, 'YAKAKENT', 1),
(2683, 20, 'PERVARİ', 1),
(2684, 20, 'ŞİRVAN', 1),
(2685, 69, 'DİKMEN', 1),
(2686, 69, 'SARAYDÜZÜ', 1),
(2687, 69, 'TÜRKELİ', 1),
(2688, 70, 'AKINCILAR', 1),
(2689, 70, 'GÖLOVA', 1),
(2690, 70, 'GÜRÜN', 1),
(2691, 70, 'İMRANLI', 1),
(2692, 70, 'KOYULHİSAR', 1),
(2693, 70, 'ULAŞ', 1),
(2694, 76, 'ARTOVA', 1),
(2695, 76, 'BAŞÇİFTLİK', 1),
(2696, 81, 'DÜZKÖY', 1),
(2697, 81, 'HAYRAT', 1),
(2698, 81, 'ŞALPAZARI', 1),
(2699, 66, 'OVACIK', 1),
(2700, 66, 'PÜLÜMÜR', 1),
(2701, 73, 'CEYLANPINAR', 1),
(2702, 63, 'KARAHALLI', 1),
(2703, 22, 'BAHÇESARAY', 1),
(2704, 71, 'AKDAĞMADENİ', 1),
(2705, 71, 'ÇEKEREK', 1),
(2706, 71, 'KADIŞEHRİ', 1),
(2707, 71, 'SARAYKENT', 1),
(2708, 52, 'GÖKÇEBEY', 1),
(2709, 57, 'AĞAÇÖREN', 1),
(2710, 57, 'SARIYAHŞİ', 1),
(2711, 58, 'KAZIMKARABEKİR', 1),
(2712, 58, 'SARIVELİLER', 1),
(2713, 8, 'BAHŞİLİ', 1),
(2714, 8, 'BALIŞEYH', 1),
(2715, 8, 'ÇELEBİ', 1),
(2716, 8, 'DELİCE', 1),
(2717, 8, 'YAHŞİHAN', 1),
(2718, 32, 'BEŞİRİ', 1),
(2719, 32, 'GERCÜŞ', 1),
(2720, 32, 'KOZLUK', 1),
(2721, 32, 'SASON', 1),
(2722, 21, 'BEYTÜŞŞEBAP', 1),
(2723, 21, 'GÜÇLÜKONAK', 1),
(2724, 21, 'SİLOPİ', 1),
(2725, 21, 'ULUDERE', 1),
(2726, 49, 'KURUCAŞİLE', 1),
(2727, 39, 'DAMAL', 1),
(2728, 39, 'HANAK', 1),
(2729, 39, 'POSOF', 1),
(2730, 43, 'ARALIK', 1),
(2731, 43, 'KARAKOYUNLU', 1),
(2732, 43, 'TUZLUCA', 1),
(2733, 27, 'ÇINARCIK', 1),
(2734, 27, 'ÇİFTLİKKÖY', 1),
(2735, 27, 'TERMAL', 1),
(2736, 50, 'EFLANİ', 1),
(2737, 46, 'ELBEYLİ', 1),
(2738, 46, 'MUSABEYLİ', 1),
(2739, 46, 'POLATELİ', 1),
(2740, 3, 'DÜZİÇİ', 1),
(2741, 3, 'HASANBEYLİ', 1),
(2742, 3, 'SUMBAS', 1),
(2743, 3, 'TOPRAKKALE', 1),
(2744, 7, 'CUMAYERİ', 1),
(2745, 7, 'GÖLYAKA', 1),
(2746, 7, 'GÜMÜŞOVA', 1),
(2747, 7, 'KAYNAŞLI', 1),
(2748, 9, 'AKSU', 1),
(2749, 4, 'GÖLBAŞI', 1),
(2750, 2, 'YENİŞEHİR', 1),
(2751, 47, 'ANTAKYA', 1),
(2752, 42, 'MERKEZ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `firstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortBio` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `websiteUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blogUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitterUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedInUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `isAuthor` tinyint(1) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  `activationKey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8_unicode_ci,
  `postCount` int(11) DEFAULT NULL,
  `commentCount` int(11) DEFAULT NULL,
  `followedTopicCount` int(11) DEFAULT NULL,
  `followedAuthorCount` int(11) DEFAULT NULL,
  `followerCount` int(11) DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `facebookId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookData` longtext COLLATE utf8_unicode_ci,
  `isAffiliate` tinyint(1) DEFAULT NULL,
  `apiKey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googlePlusUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ccrUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ccrPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ccrStationId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `credentials_expired`, `credentials_expire_at`, `last_login`, `firstName`, `lastName`, `shortBio`, `websiteUrl`, `blogUrl`, `twitterUsername`, `facebookUrl`, `linkedInUrl`, `thumbnail`, `created`, `isAuthor`, `isActive`, `isDeleted`, `activationKey`, `settings`, `postCount`, `commentCount`, `followedTopicCount`, `followedAuthorCount`, `followerCount`, `roles`, `facebookId`, `facebookData`, `isAffiliate`, `apiKey`, `googlePlusUrl`, `ccrUsername`, `ccrPassword`, `ccrStationId`) VALUES
(1, 'flightsuperadmin@enuygun.com', 'flightsuperadmin@enuygun.com', 'flightsuperadmin@enuygun.com', 'flightsuperadmin@enuygun.com', 1, 'jdx7xlcsp7kgw8kcsk0wgs484w88488', 'L8UQhj55aCuCxHmwt6/isSLYQnutgbAkJTQVCLZd8zBTsLrnHMiPNaZ8YSqfvead9WlGiyhpLobEZNGttxUy4A==', 0, 0, NULL, NULL, NULL, 0, NULL, '2018-02-15 09:09:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-15 09:08:59', 0, 0, 0, '18279686ccc6ccd72afe6b670d3ac4787f3f1ba2', '{\"notifications\":{\"instant\":{\"followed_topic_on_new_article\":true,\"followed_topic_on_new_comment\":true,\"followed_author_on_new_article\":true,\"followed_author_on_new_comment\":true,\"on_new_video\":true,\"on_new_question\":true,\"my_question_on_new_answer\":true,\"commented_on_new_comment\":true},\"daily_summary\":true,\"weekly_summary\":true,\"promotions\":true,\"special_offers\":true}}', 0, 0, 0, 0, 0, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'flightagent@enuygun.com', 'flightagent@enuygun.com', 'flightagent@enuygun.com', 'flightagent@enuygun.com', 1, 'cxhusv4fbd44w8kg8w08sck0gwggk0o', '7tI9D18gm2z/zhQze9f/JCrgFckyxoxAdbRZCJoDIItjtmoEpHOiRI0SJ8AEVtiqG20BOmIohz4ZARsS0NnLJg==', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-15 09:12:15', 0, 0, 0, 'da4538d809b277271a4ae29b6f1416dfe043f3f7', '{\"notifications\":{\"instant\":{\"followed_topic_on_new_article\":true,\"followed_topic_on_new_comment\":true,\"followed_author_on_new_article\":true,\"followed_author_on_new_comment\":true,\"on_new_video\":true,\"on_new_question\":true,\"my_question_on_new_answer\":true,\"commented_on_new_comment\":true},\"daily_summary\":true,\"weekly_summary\":true,\"promotions\":true,\"special_offers\":true}}', 0, 0, 0, 0, 0, 'a:1:{i:0;s:16:\"ROLE_ADMIN_AGENT\";}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'flightadmin@enuygun.com', 'flightadmin@enuygun.com', 'flightadmin@enuygun.com', 'flightadmin@enuygun.com', 1, '72g8jx05d58oscsk0oo808wo4ogs00g', 'Soxw1FRmX5BpwdSxu2k6cpIB78ayen10Fil46RRXucY0kPUvVByokxuQ5zPMPEnXIS9t9XsSeHgYd0VGd9utAQ==', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-15 09:16:48', 0, 0, 0, '7b07b8abeb7ab44f0efe8e67d9677ea39c11e0cc', '{\"notifications\":{\"instant\":{\"followed_topic_on_new_article\":true,\"followed_topic_on_new_comment\":true,\"followed_author_on_new_article\":true,\"followed_author_on_new_comment\":true,\"on_new_video\":true,\"on_new_question\":true,\"my_question_on_new_answer\":true,\"commented_on_new_comment\":true},\"daily_summary\":true,\"weekly_summary\":true,\"promotions\":true,\"special_offers\":true}}', 0, 0, 0, 0, 0, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_ccr`
--

CREATE TABLE `users_ccr` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ccrUsername` varchar(100) DEFAULT NULL,
  `ccrPassword` varchar(250) DEFAULT NULL,
  `ccrStationId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_announcement`
--

CREATE TABLE `user_announcement` (
  `announcement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utm_tracker`
--

CREATE TABLE `utm_tracker` (
  `id` int(11) NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medium` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `affiliate` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliates_payments`
--
ALTER TABLE `affiliates_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FFB52FA2C063866E` (`affiliateId`);

--
-- Indexes for table `agent_history`
--
ALTER TABLE `agent_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`,`backend`,`type`);

--
-- Indexes for table `agent_reminder`
--
ALTER TABLE `agent_reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airport_hotel_match`
--
ALTER TABLE `airport_hotel_match`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4DB9D91C8CDE5729` (`type`);

--
-- Indexes for table `announcement_history`
--
ALTER TABLE `announcement_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_fk1` (`announcement`);

--
-- Indexes for table `announcement_types`
--
ALTER TABLE `announcement_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bad_words`
--
ALTER TABLE `bad_words`
  ADD PRIMARY KEY (`word`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_guides`
--
ALTER TABLE `country_guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_guide_contents`
--
ALTER TABLE `country_guide_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D811C6CE4274CF6` (`country_guide_id`);

--
-- Indexes for table `country_guide_contents_trans`
--
ALTER TABLE `country_guide_contents_trans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6124A6FE5327BDB1` (`country_guide_content_id`);

--
-- Indexes for table `custom_report`
--
ALTER TABLE `custom_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dfp_settings`
--
ALTER TABLE `dfp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_typos`
--
ALTER TABLE `email_typos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3E9220359FC90BB8` (`email_typo_domain_id`);

--
-- Indexes for table `email_typo_domains`
--
ALTER TABLE `email_typo_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6467BCA56C0BBE37` (`typo`),
  ADD KEY `IDX_6467BCA5A7A91E0B` (`domain`);

--
-- Indexes for table `flight_airline_check_in_list`
--
ALTER TABLE `flight_airline_check_in_list`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `flight_airport_codes`
--
ALTER TABLE `flight_airport_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_49A3CEB0D1B1F33` (`AirportSlug`),
  ADD UNIQUE KEY `UNIQUE_AIRPORT_CODE` (`AirportCode`),
  ADD KEY `IDX_49A3CEB027F83F1A` (`CountryCode`),
  ADD KEY `IDX_49A3CEB04E0C9E82` (`CityCode`);

--
-- Indexes for table `flight_booking`
--
ALTER TABLE `flight_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_63E00E482EFABDE1` (`shoppingFile_id`),
  ADD KEY `IDX_63E00E48EEC5E77B` (`pnr`),
  ADD KEY `IDX_63E00E485FE6615112C5AC61AF2E76ED` (`serviceStatus`,`reservationDate`,`operatingAirline`);

--
-- Indexes for table `flight_city_codes`
--
ALTER TABLE `flight_city_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8356ACA7A1843578` (`CitySlug`),
  ADD UNIQUE KEY `UNIQUE_CITY_CODE` (`CityCode`),
  ADD KEY `IDX_8356ACA727F83F1A` (`CountryCode`);

--
-- Indexes for table `flight_country_codes`
--
ALTER TABLE `flight_country_codes`
  ADD PRIMARY KEY (`CountryCode`);

--
-- Indexes for table `flight_insurance`
--
ALTER TABLE `flight_insurance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7A16B2FE2EFABDE1` (`shoppingFile_id`),
  ADD KEY `IDX_7A16B2FE7B00651C` (`status`);

--
-- Indexes for table `flight_landing_cities_system`
--
ALTER TABLE `flight_landing_cities_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_passenger`
--
ALTER TABLE `flight_passenger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_25F7F56F2EFABDE1` (`shoppingFile_id`);

--
-- Indexes for table `flight_payment`
--
ALTER TABLE `flight_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EEC4679B2EFABDE1` (`shoppingFile_id`),
  ADD KEY `IDX_EEC4679B75C617AE` (`paymentId`),
  ADD KEY `IDX_EEC4679B9F12C49A` (`affiliate_id`);

--
-- Indexes for table `flight_promotion_codes`
--
ALTER TABLE `flight_promotion_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C9CCA5572EFABDE1` (`shoppingFile_id`),
  ADD KEY `IDX_C9CCA5576E92463` (`promotionCode`);

--
-- Indexes for table `flight_shoppings`
--
ALTER TABLE `flight_shoppings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5AE81F45AFC548A5` (`fileId`),
  ADD UNIQUE KEY `UNIQ_5AE81F454EE0B35` (`promotionCode_id`),
  ADD KEY `IDX_5AE81F45AFC548A5600756447B00651C7831838C` (`fileId`,`dateCreated`,`status`,`isDomestic`),
  ADD KEY `IDX_5AE81F459F12C49A` (`affiliate_id`),
  ADD KEY `contactFirstname` (`contactFirstname`,`contactLastname`),
  ADD KEY `IDX_5AE81F45600756447B00651C` (`dateUpdated`,`status`),
  ADD KEY `contactMobile` (`contactMobile`,`affiliate_id`),
  ADD KEY `contactEmail_2` (`contactEmail`,`status`);

--
-- Indexes for table `fos_group`
--
ALTER TABLE `fos_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4B019DDB5E237E06` (`name`);

--
-- Indexes for table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `IDX_B3C77447A76ED395` (`user_id`),
  ADD KEY `IDX_B3C77447FE54D947` (`group_id`);

--
-- Indexes for table `loss_records`
--
ALTER TABLE `loss_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loss_record_pay_types`
--
ALTER TABLE `loss_record_pay_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loss_record_types`
--
ALTER TABLE `loss_record_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_rules`
--
ALTER TABLE `meta_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_schedulete`
--
ALTER TABLE `provider_schedulete`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_request`
--
ALTER TABLE `refund_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_logs`
--
ALTER TABLE `report_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `spam_trap_domains`
--
ALTER TABLE `spam_trap_domains`
  ADD PRIMARY KEY (`domain`),
  ADD UNIQUE KEY `UNIQ_1D2A28C5A7A91E0B` (`domain`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4778A01E7927C74` (`email`),
  ADD KEY `IDX_4778A01E7927C74` (`email`);

--
-- Indexes for table `subscription_accepted`
--
ALTER TABLE `subscription_accepted`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_11B3A962E7927C74` (`email`),
  ADD KEY `IDX_11B3A962E7927C74` (`email`);

--
-- Indexes for table `subscription_typos`
--
ALTER TABLE `subscription_typos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_59E760C9E7927C74` (`email`),
  ADD KEY `IDX_59E760C9E7927C74` (`email`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_1483A5E9A0D96FBF` (`email_canonical`);

--
-- Indexes for table `users_ccr`
--
ALTER TABLE `users_ccr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PK_CCR_USER` (`user_id`);

--
-- Indexes for table `user_announcement`
--
ALTER TABLE `user_announcement`
  ADD PRIMARY KEY (`announcement_id`,`user_id`),
  ADD KEY `IDX_A1A2DE15913AEA17` (`announcement_id`),
  ADD KEY `IDX_A1A2DE15A76ED395` (`user_id`);

--
-- Indexes for table `utm_tracker`
--
ALTER TABLE `utm_tracker`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5456;

--
-- AUTO_INCREMENT for table `affiliates_payments`
--
ALTER TABLE `affiliates_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agent_history`
--
ALTER TABLE `agent_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agent_reminder`
--
ALTER TABLE `agent_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `airport_hotel_match`
--
ALTER TABLE `airport_hotel_match`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement_history`
--
ALTER TABLE `announcement_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement_types`
--
ALTER TABLE `announcement_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `country_guides`
--
ALTER TABLE `country_guides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country_guide_contents`
--
ALTER TABLE `country_guide_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country_guide_contents_trans`
--
ALTER TABLE `country_guide_contents_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_report`
--
ALTER TABLE `custom_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dfp_settings`
--
ALTER TABLE `dfp_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_typos`
--
ALTER TABLE `email_typos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_typo_domains`
--
ALTER TABLE `email_typo_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_airport_codes`
--
ALTER TABLE `flight_airport_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_booking`
--
ALTER TABLE `flight_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_city_codes`
--
ALTER TABLE `flight_city_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_insurance`
--
ALTER TABLE `flight_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_landing_cities_system`
--
ALTER TABLE `flight_landing_cities_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_passenger`
--
ALTER TABLE `flight_passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_payment`
--
ALTER TABLE `flight_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_promotion_codes`
--
ALTER TABLE `flight_promotion_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_shoppings`
--
ALTER TABLE `flight_shoppings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fos_group`
--
ALTER TABLE `fos_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `loss_records`
--
ALTER TABLE `loss_records`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loss_record_pay_types`
--
ALTER TABLE `loss_record_pay_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loss_record_types`
--
ALTER TABLE `loss_record_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `meta_rules`
--
ALTER TABLE `meta_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider_schedulete`
--
ALTER TABLE `provider_schedulete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_request`
--
ALTER TABLE `refund_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_logs`
--
ALTER TABLE `report_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subscription_accepted`
--
ALTER TABLE `subscription_accepted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subscription_typos`
--
ALTER TABLE `subscription_typos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2753;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_ccr`
--
ALTER TABLE `users_ccr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `utm_tracker`
--
ALTER TABLE `utm_tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `affiliates_payments`
--
ALTER TABLE `affiliates_payments`
  ADD CONSTRAINT `FK_FFB52FA2C063866E` FOREIGN KEY (`affiliateId`) REFERENCES `affiliates` (`id`);

--
-- Constraints for table `announcement`
--
ALTER TABLE `announcement`
  ADD CONSTRAINT `type_fk` FOREIGN KEY (`type`) REFERENCES `announcement_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `announcement_history`
--
ALTER TABLE `announcement_history`
  ADD CONSTRAINT `type_fk1` FOREIGN KEY (`announcement`) REFERENCES `announcement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `country_guide_contents`
--
ALTER TABLE `country_guide_contents`
  ADD CONSTRAINT `FK_1D811C6CE4274CF6` FOREIGN KEY (`country_guide_id`) REFERENCES `country_guides` (`id`);

--
-- Constraints for table `country_guide_contents_trans`
--
ALTER TABLE `country_guide_contents_trans`
  ADD CONSTRAINT `FK_6124A6FE5327BDB1` FOREIGN KEY (`country_guide_content_id`) REFERENCES `country_guide_contents` (`id`);

--
-- Constraints for table `email_typos`
--
ALTER TABLE `email_typos`
  ADD CONSTRAINT `FK_3E9220359FC90BB8` FOREIGN KEY (`email_typo_domain_id`) REFERENCES `email_typo_domains` (`id`);

--
-- Constraints for table `flight_airport_codes`
--
ALTER TABLE `flight_airport_codes`
  ADD CONSTRAINT `FK_49A3CEB027F83F1A` FOREIGN KEY (`CountryCode`) REFERENCES `flight_country_codes` (`CountryCode`),
  ADD CONSTRAINT `FK_49A3CEB04E0C9E82` FOREIGN KEY (`CityCode`) REFERENCES `flight_city_codes` (`CityCode`);

--
-- Constraints for table `flight_booking`
--
ALTER TABLE `flight_booking`
  ADD CONSTRAINT `FK_63E00E482EFABDE1` FOREIGN KEY (`shoppingFile_id`) REFERENCES `flight_shoppings` (`id`);

--
-- Constraints for table `flight_city_codes`
--
ALTER TABLE `flight_city_codes`
  ADD CONSTRAINT `FK_8356ACA727F83F1A` FOREIGN KEY (`CountryCode`) REFERENCES `flight_country_codes` (`CountryCode`);

--
-- Constraints for table `flight_insurance`
--
ALTER TABLE `flight_insurance`
  ADD CONSTRAINT `FK_7A16B2FE2EFABDE1` FOREIGN KEY (`shoppingFile_id`) REFERENCES `flight_shoppings` (`id`);

--
-- Constraints for table `flight_passenger`
--
ALTER TABLE `flight_passenger`
  ADD CONSTRAINT `FK_25F7F56F2EFABDE1` FOREIGN KEY (`shoppingFile_id`) REFERENCES `flight_shoppings` (`id`);

--
-- Constraints for table `flight_payment`
--
ALTER TABLE `flight_payment`
  ADD CONSTRAINT `FK_EEC4679B2EFABDE1` FOREIGN KEY (`shoppingFile_id`) REFERENCES `flight_shoppings` (`id`),
  ADD CONSTRAINT `FK_EEC4679B9F12C49A` FOREIGN KEY (`affiliate_id`) REFERENCES `affiliates` (`id`);

--
-- Constraints for table `flight_promotion_codes`
--
ALTER TABLE `flight_promotion_codes`
  ADD CONSTRAINT `FK_C9CCA5572EFABDE1` FOREIGN KEY (`shoppingFile_id`) REFERENCES `flight_shoppings` (`id`);

--
-- Constraints for table `flight_shoppings`
--
ALTER TABLE `flight_shoppings`
  ADD CONSTRAINT `FK_5AE81F454EE0B35` FOREIGN KEY (`promotionCode_id`) REFERENCES `flight_promotion_codes` (`id`),
  ADD CONSTRAINT `FK_5AE81F459F12C49A` FOREIGN KEY (`affiliate_id`) REFERENCES `affiliates` (`id`);

--
-- Constraints for table `users_ccr`
--
ALTER TABLE `users_ccr`
  ADD CONSTRAINT `FK_CCR_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
