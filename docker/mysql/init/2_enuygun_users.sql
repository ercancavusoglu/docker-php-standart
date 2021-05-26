-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Mar 24, 2020 at 09:19 AM
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
-- Database: `enuygun_users`
--
CREATE DATABASE IF NOT EXISTS `enuygun_users` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `enuygun_users`;

-- --------------------------------------------------------

--
-- Table structure for table `AccessToken`
--

CREATE TABLE `AccessToken` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_at` int(11) NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AccessToken`
--

INSERT INTO `AccessToken` (`id`, `client_id`, `user_id`, `token`, `expires_at`, `scope`) VALUES
(1, 1, 25, 'MDhjZWU1ZDhlNDRhYjkwNTljN2FlZTIxZjA4ODhiMzJjNjJiMWVjNDI1YzNiNTdlNmU4ODVlMGU3OTU0ODAyYQ', 1647959473, NULL),
(2, 1, 25, 'NGE5NjU5OTJiOWJiNjQ4NzJmY2ZjOGI3NWJjNTViNGY0MmQ4ZGUyYmU4NDgwYjIwNzJhODUxM2Y5OThmZDU5Zg', 1648015269, NULL),
(3, 1, 25, 'N2ZjODkzNWVlY2FkMTJmNDljOGM0ZGM4MmZmM2U2MzdkN2FjODA2YzEzYjY1NDJlZGZhMjRiZGYzNzcyZmQ2ZQ', 1648023840, NULL),
(4, 1, 25, 'ZDM5MTc3ZDE1YjcxNTE3ZWY3YjBiOTBlZjQ3M2EwOTYyNzc3NzljNDNhYjI3NDFiMDU3MmE3ZmYxMDg0OTQ1NA', 1648030712, NULL),
(5, 1, NULL, 'NzE0YjhiZjRmNjBmZmRkNjY2M2RkNzQ1MjA3MDBmYmJmYTdmNWU2OWFhYWM2ZDZiYjU2MTQ4YTk3ZGM2ODJkOA', 1586174810, NULL),
(6, 1, 25, 'ZDY0NzJhNzc0NDdmYjI1NmM3ZTJhMGFjZGQxODgxZDFhOTg4YTgzY2Q0YmNkNDYwYTM0OWIyZDJlZDUxN2M2Mw', 1648037249, NULL),
(7, 1, 25, 'Njc4YTk5NGI3NDBkMTc3ZmRhZmI5Zjk3OTk1Zjg5N2UyZWUzNjdmOGMzOTg0NTE2MWIxOWZiZWNlZTAyMDAxNA', 1648039018, NULL),
(8, 1, NULL, 'ZDM5NWNmZDBmZTljY2UwNWYwYzlhNzI0YWE3N2E5ZDVjMzlhMWQxYjVjMzIzYmVmMmExYjFjMmE5MDk5N2UzYg', 1586176911, NULL),
(9, 1, NULL, 'ZjI1MGY5YTNlYmVmYWI5NmE5MjAxZGZkMjI4ZTZhNThiODE3MGJiNmQ1NGQxODZhMjc4Y2FiNTNmMzBhNTU4Zg', 1586179561, NULL),
(10, 1, NULL, 'ODUxM2Q2MThhNDRhYjI2NTMwOTFkYWQ4OTI2MjQxODBmNWFmMWZhZjU3MjQ1YWQ1Nzg0NjgwOTkxZWI3M2M2Yg', 1586180073, NULL),
(11, 1, 25, 'YWNlOWEyMzkyMDdlZTA2NWZkMTgyOTU2MzFjNDAzNmU0MTcxMzcwZTBmMTg1N2U4NGI0OWRkYzI3OTVmOTQ4Mg', 1648043218, NULL),
(12, 1, NULL, 'Y2IyMjI2OTM5OWFmZmNmMTNkYjU4ZDBlZmI4N2JlODQxYjU1ODJlN2NmMjlhM2JkZmU5OTg4ZmI5NTQxMWYwNA', 1586181138, NULL),
(13, 1, NULL, 'NGI3MjU3NWMzZDg3ZjhjNTZiMjk2YTQ0MDUyNDRjNzJkYzhjZmNlYmE2MjA0NDUxMjJlZTI0NjUwYmZhMzI5OQ', 1586181268, NULL),
(14, 1, NULL, 'ZGE2ZGRhOWMxYjZhMTYxZjMxM2I0MjMxYjk2ZTViZDA0NGQ4YzA3MDFiYmI4ZDhjNzI3ZjAzYzIxNzJkNGFlNw', 1586181300, NULL),
(15, 1, NULL, 'OGVhZWVhMWU3YjUyNTY1OTliYmYzZjQwYWIxOTMyNjA1MGQxNDBlNGYzNjU4N2IzYzA4NTQ1OTEwNWFhMGRhYw', 1586181376, NULL),
(16, 1, NULL, 'ZGE0NDg3NGI3NWFhNmExZjlmODcwYzRmMDlkNDIzZjQ1YTBiMTBjOWQ5ZDBiODkyOGNhZTRjYTY0MjBkYWMyYQ', 1586195836, NULL),
(17, 1, NULL, 'N2MyOWQyZmY5ZmNiM2YzM2E0NDEyOWY1ODg1NGExYWMxMGRmZDYyM2JiZjdkYWU2NWE3ZTM5ZDQzZWE3MzI5MA', 1586195838, NULL),
(18, 1, NULL, 'ZmEzMGE2OWJiZjhkZDRjOTEyNGJiNmNiNTlkZmRkOTdlNDZjOWU4NTM0NTU2MjI3ZmY0M2RmZDZiY2NiYjk2NQ', 1586195839, NULL),
(19, 1, NULL, 'NmM5ZDdiYTEwMDI3MzhhNjlkMzg4MjE5MmJiNGVhMTI1MjliODQyMWI0YmJmOTc3ZGY1ODVjNDQ1YWMzN2QwMw', 1586196368, NULL),
(20, 1, NULL, 'MGE2ZmM4Mjk3MDE2NDE1Y2NhMmIyM2JkNWI3Y2Y2NzU1MGI4YWJjZmExM2YxMjdiOGE2OTdlNTc4OTI4OTdmYQ', 1586196370, NULL),
(21, 1, NULL, 'NDZjYjQ4OWRiNDM5YWNhYjJlNjg0YzAyYmViNmM0NzgyMDQzNTQ1MjI5YzVlM2Q4YTUxYTkzMzg5Zjg0OTAwNQ', 1586196372, NULL),
(22, 1, NULL, 'YWFlZmNmOTliNTk5N2VlMjJiZTk1MTk3MDM0Yjk0MDUxYjJjZWMwZDc1MjY1OTJmNTg0OWY1MGM4MDI0MmI5OA', 1586196376, NULL),
(23, 1, NULL, 'NWM3YTY0MzBhMDcyMWJmZGQ0YzljYjFhMzVmYTYwZDlkMGRiN2JkNDlmMDE5ODQ2ZDE5NzJjZjkyMDllOTdiNA', 1586196377, NULL),
(24, 1, NULL, 'NDQ4NWZlYTE4NmNhYTRiYTlmZDJmM2I0N2ExZDU4YTRhZDg0ZjFjNDRmYzE0NGM0MzYyOTQ1NzM3OGNiMWYxNg', 1586196379, NULL),
(25, 1, NULL, 'ZTZmMTg3ZmU4MzMzMGFlOGMwNjU4YjUyMzhkMzM5ODRmYTI1MDg0ZDgxYjg5ZmYwMTg3YWRlMmNkYzNjNjEyMg', 1586196380, NULL),
(26, 1, NULL, 'MjdkZTljNTVhNWZmZTA4MjVkOGY4MWZkOWU5ZWIzMzRhNDdiYTk3ODc1ODJmMWYwYWZlNjQ3MWVjNzM1NTgwMg', 1586196382, NULL),
(27, 1, NULL, 'OWU5MTc2MThkMTg1M2JlNzZiODMyOThjNDM0YzU2NGI5OGYwNWQyYzQ1ZmUxNmM0ZGZlOGZlNDg3MmNjOWQ5Mg', 1586196383, NULL),
(28, 1, NULL, 'NjE2YTg0YTExOTVhOTYzNWZhZjhkYTY1NTNlODc1NGFjOWMzOGRjYmM1N2I3M2YwODFhMWM5ZWE4NjBlNzQ1Nw', 1586196385, NULL),
(29, 1, NULL, 'YzQ5ZDFlMTkwNDY3OTEzZmMwNjc5ZjA4MGIzNTYzNDViOGYwOTg4YmY3NDhiY2MxOWU3OTA3NDNlOTkxYmZmNQ', 1586196386, NULL),
(30, 1, NULL, 'YjFhNzdhNjVkNWFiZTYzNzk1ZDQ2ZDQzZDQ1MWMxZjQ4ODdhYjRlY2FiNDI4ZjhkYTdlZDJmYmNkYWY4MDE4OA', 1586196388, NULL),
(31, 1, NULL, 'Yjc5NzRhZTg4NDI3MTdlOTNjNjRkYjAwYmVkMTRlYzg0Nzc4YjIyYzU1OTVlZDFjMzA1YjJmMmM3YTIyNGEyMQ', 1586196389, NULL),
(32, 1, NULL, 'MTY2MTE2NTNlYWY1Mjc5OTI5NTFhMzg0Zjc5ZGFhZTJlMGQwZGFiODExYTA3Yzk2YTc1MzNjNGI4NzlhMDkwYw', 1586196391, NULL),
(33, 1, NULL, 'ZDA3NDU1NDRkZDFjNjE3N2VhZjk1MzQ4ZTkzYjU4NzYwNTY3M2ZiYmJkMWM5OWViYTE4OTgzMThkNWZjYjI0OA', 1586196445, NULL),
(34, 1, NULL, 'Yjg3ZTJjOGI5YWUwZjdlMGY5NGFmNGVmYmFhMmY2NzA1MjQzODk1OWZkN2U1ZTMwZDRhYmM0ZTQ2MTMyMjc3ZA', 1586196446, NULL),
(35, 1, NULL, 'ODYxYWZmMWZlMzIzNTUxMDI3MzQwMjExMDBiZjRlMDYxNDA1ZjdkYjdkNzg3NmQ3NGM5YzU5ZDQ1ZTRlYjFkNw', 1586196448, NULL),
(36, 1, NULL, 'NjFkODAyYjI0N2VhNmMxYmM5OGUzY2E5MGE0NjE0NDYzNjI4ZmFiMWMwYzVmOTc0M2YzMWRlNjIxZGI0ODJmYw', 1586196449, NULL),
(37, 1, NULL, 'YjFiYmJlOWM0YzcwNWE5NWMxMGMyMTIyNjU0OTk3MGQ1ZTRjMWM3YTYzYzY4ODQyMjU1MTQwNzU0OGQxMmY2MQ', 1586196451, NULL),
(38, 1, NULL, 'ZGM2ZmQ0Yjg3NGZjMzI3M2ZkZDViMWY2NGViMDNmMDgwMzRhNmMwMTQ5Mjk4Y2IwNDZiODlkMTAxZmQwOGIxMw', 1586196452, NULL),
(39, 1, NULL, 'MjU4YjhmNjIzYzFjZjdhMmZjZWEwNGRlNjRmNDZlYWZjNWRhZDI0ZDk4YjkxMDkyN2RkNjg4YzAwODU0ODczYQ', 1586196454, NULL),
(40, 1, NULL, 'YThhOTQ4ZWY2ZGE2ZDU2OTc1Y2U5NWU4NWVmMzEyNzIyYzczOWFlNzY4MGIzNTM4MzVhZjY1YjJlMjhhNDdjNg', 1586196455, NULL),
(41, 1, NULL, 'OGQxMWRlOTI3MGI1NTk3Yzg5NTIzMmZkNzcwMTI3Y2U2ZThjMWMxYmU2NDM3YzM2OWE0YWNmMmI4NGVhNDVhZQ', 1586196457, NULL),
(42, 1, NULL, 'ZDU1NDlhZjRhOTc2OTY0NzNmNjY4NDgyOWQ4Y2FhMDljNDc5MGMxNTIxMTFkNWE0N2VmMjQwMGJmOTMyNjkzYQ', 1586196459, NULL),
(43, 1, NULL, 'ODhiMGQ5YTcxMjBlYzk2ZjRjZmU3MTMwYzI5MjA5N2IxYmYxNzA0ZWI0Yjg5ZDY0MjY3MDBlMDVmY2Q3ZjE4NA', 1586196460, NULL),
(44, 1, NULL, 'ZGI3MGVjOWQ3ZGEyMGY3OTY2YWM0MGQxNGYzZmYxYmM0ZTVkZmQ1ZWJlYjg1NmExZWI2NDUzYTgwZTg1YTQyYw', 1586196462, NULL),
(45, 1, NULL, 'Y2NhMTk5MDAzZDM2Yjk5MmUzMDgzNTYyMWI2M2RlMGY3Nzc2NGFhMDJjMjIxMmMwNGRiZDU0MzljZWU5ODNlYQ', 1586196463, NULL),
(46, 1, NULL, 'ZjVmMzBkMzQ0MzY1ODk2Y2NmNmNkYmRmMjI2OGVmMjQyM2U2NzM1MzRkZmNiZThkZTk1N2E5YmEyM2Q3NWI1ZQ', 1586196465, NULL),
(47, 1, NULL, 'ODEyZGExYTRlN2EzYjc1N2MzZTBkZmFhN2Y1MmM5ZWQ5ZmU5YzdmYTU4ZjkxYmVkOTNiNjFjNzQwYzUzMTc4OA', 1586196466, NULL),
(48, 1, NULL, 'MjJjNTM4NzQ0MzkyOWY0NTE0Mzg5ZTFjMGE1MmVkNGE2NGYwY2M1NmVjNDcxMDg0ZTU3ZTc3MTM5MmUwOGJhZA', 1586196468, NULL),
(49, 1, NULL, 'OWUwNmQ1MjUwOGRmOGY4NjExN2RmZWM3Y2E2ZTIzYzEyNGFiZDJlZmRjOTY4YWFmOWJlNjZmNTE3OGUzNWM0Mw', 1586196469, NULL),
(50, 1, NULL, 'OTAxODg2NDRjNDY4YTE5ZDZmNWY3MmQwYWMwMDdiZDQyNTc5Y2Q1NzEwZGU2NmU3ZmY0NTY2MDAyNDY0NzRlMA', 1586196552, NULL),
(51, 1, NULL, 'YTNiN2NkOTczNzUzODVlMGRiMGZjM2ZjZjg0NTBjZDYzYzUzNWE3MzY3ZDNkZjU4ZWZlMWU1YjBiMDcyM2ZhYg', 1586196809, NULL),
(52, 1, NULL, 'MmUyYWY2NzdhZjNiNzViNWI4NmExMGYwNjgzNDRhODMyZjAxZjQwZTc5OGJhNGIxMWMzMTUwYTQzOGI0NzUxYw', 1586197042, NULL),
(53, 1, NULL, 'NjIzYTMxN2I2ZTZlYmRkMjVmY2Y0Yzg4OWJmZjM0MDk0YjJlMWRlMTA0MTFkNmM0NjhiZGFiYjlkN2JkNzk3Ng', 1586197153, NULL),
(54, 1, NULL, 'YTUzYjFkODkxY2ZmMGY1M2E1YjcwMTU4OWUxMDVlODYyMDEwYjgzMDE3ZWM3MzExYTk1YTFlOTA3YmU3YzNiNg', 1586198222, NULL),
(55, 1, NULL, 'N2JlODE1OWM1YTdlYzI3MTE3NDY0NGY3NmI2ZmY3ZWM0OTdmYjY0ZDE0OTY2NzdlMWVjNThiMTcxNWU0ZTg1ZQ', 1586204774, NULL),
(56, 1, NULL, 'OGMzY2UxNTExN2YyMjAwNjQzYjUwNjczMDJmZGFmYTMwMTJhZTM3YWZjMGI1MWI3NTJhOTQ2ODk3YWI2MmIyOA', 1586204977, NULL),
(57, 1, NULL, 'Y2Q4ODM4MWYyZTEzYmVkYTUyOWJmM2MyZTc2NDIxYTJhZTJkMDJjZjNmNzhjMzc1NTE3YjA4M2Y5MTI2OTUxOQ', 1586241606, NULL),
(58, 1, NULL, 'NzU1MDg0OThmMmU2OGQwOTczYzY4NzM3OGI3NTk2ODZmMTZhMmFmZDU3M2RiYmViMzY3N2Y3NGYxMTIwNmU2ZQ', 1586241611, NULL),
(59, 1, 25, 'OTJjZWNjZThkOTliODg3MjllZmMwNTgyNjMyNmIzMzc2M2M2NTg1OTBmZDhiMmQ1Y2M2YWM3Y2JmZjA1ZmFkYQ', 1648104336, NULL),
(60, 1, NULL, 'OWY5YWQyMzQzZDY0NDNlNzNjNTdhN2QyODg4ZDFlZGFhYWExMWJkYmQ1NDhhNTJiM2U1OTMxY2IzYjY2MGJhNw', 1586243269, NULL),
(61, 1, NULL, 'ZDZmZGRlNjQ1MGI0MDlmNzZmOWNiOGZhMjZhNzM1NTA3MjA4YTlhNDU3MmQ0YTE0ZWU5NWQzNjMyOTVjN2Y2MQ', 1586243487, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `activityType` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `activityLog` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `relationId` int(11) DEFAULT NULL,
  `environment` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `affiliate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `user_id`, `corporate_id`, `activityType`, `activityLog`, `createdAt`, `updatedAt`, `relationId`, `environment`, `affiliate`) VALUES
(1, 1, NULL, 'bus_booking', '[]', '2020-03-02 13:34:21', '2020-03-02 13:34:21', 21, NULL, NULL),
(2, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-02 14:59:32', '2020-03-02 14:59:32', NULL, 'environment_desktop', 0),
(3, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 12:06:56', '2020-03-02 12:06:56', NULL, 'environment_desktop', 0),
(4, 4, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-02 15:18:11', '2020-03-02 15:18:11', NULL, 'environment_desktop', 0),
(5, 4, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-02 15:18:11', '2020-03-02 15:18:11', NULL, 'environment_desktop', 0),
(6, 4, NULL, 'bus_booking', '[]', '2020-03-02 15:21:42', '2020-03-02 15:21:42', 28, NULL, NULL),
(7, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 13:52:38', '2020-03-02 13:52:38', NULL, 'environment_desktop', 0),
(8, 5, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 13:53:09', '2020-03-02 13:53:09', NULL, 'environment_desktop', 0),
(9, 2, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 17:03:41', '2020-03-02 17:03:41', NULL, 'environment_desktop', 0),
(10, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-02 17:05:24', '2020-03-02 17:05:24', NULL, 'environment_desktop', 0),
(11, 2, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 17:05:45', '2020-03-02 17:05:45', NULL, 'environment_desktop', 0),
(12, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-02 17:05:55', '2020-03-02 17:05:55', NULL, 'environment_desktop', 0),
(13, 2, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 17:07:48', '2020-03-02 17:07:48', NULL, 'environment_desktop', 0),
(14, 6, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 17:08:07', '2020-03-02 17:08:07', NULL, 'environment_desktop', 0),
(15, 6, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 17:08:07', '2020-03-02 17:08:07', NULL, 'environment_desktop', 0),
(16, 5, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 14:10:33', '2020-03-02 14:10:33', NULL, 'environment_desktop', 0),
(17, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 14:10:43', '2020-03-02 14:10:43', NULL, 'environment_desktop', 0),
(18, 1, NULL, 'bus_booking', '[]', '2020-03-02 17:10:43', '2020-03-02 17:10:43', 33, NULL, NULL),
(19, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 14:11:14', '2020-03-02 14:11:14', NULL, 'environment_desktop', 0),
(20, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 14:11:30', '2020-03-02 14:11:30', NULL, 'environment_desktop', 0),
(21, 5, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 14:11:33', '2020-03-02 14:11:33', NULL, 'environment_desktop', 0),
(22, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 14:11:34', '2020-03-02 14:11:34', NULL, 'environment_desktop', 0),
(23, 6, NULL, 'bus_booking', '[]', '2020-03-02 17:12:01', '2020-03-02 17:12:01', 34, NULL, NULL),
(24, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 14:12:03', '2020-03-02 14:12:03', NULL, 'environment_desktop', 0),
(25, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 14:12:04', '2020-03-02 14:12:04', NULL, 'environment_desktop', 0),
(26, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 14:13:35', '2020-03-02 14:13:35', NULL, 'environment_desktop', 0),
(27, 1, NULL, 'bus_booking', '[]', '2020-03-02 17:14:17', '2020-03-02 17:14:17', 36, NULL, NULL),
(28, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-02 17:18:27', '2020-03-02 17:18:27', NULL, 'environment_desktop', 0),
(29, 7, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-02 17:18:49', '2020-03-02 17:18:49', NULL, 'environment_desktop', 0),
(30, 7, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-02 17:18:49', '2020-03-02 17:18:49', NULL, 'environment_desktop', 0),
(31, 6, NULL, 'bus_booking', '[]', '2020-03-02 17:19:25', '2020-03-02 17:19:25', 37, NULL, NULL),
(32, 7, NULL, 'bus_booking', '[]', '2020-03-02 17:22:49', '2020-03-02 17:22:49', 39, NULL, NULL),
(33, 7, NULL, 'bus_booking', '[]', '2020-03-02 17:24:42', '2020-03-02 17:24:42', 40, NULL, NULL),
(34, 6, NULL, 'bus_booking', '[]', '2020-03-02 17:25:32', '2020-03-02 17:25:32', 41, NULL, NULL),
(35, 6, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 17:36:43', '2020-03-02 17:36:43', NULL, 'environment_desktop', 0),
(36, 2, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 17:36:58', '2020-03-02 17:36:58', NULL, 'environment_desktop', 0),
(37, 2, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 17:41:45', '2020-03-02 17:41:45', NULL, 'environment_desktop', 0),
(38, 8, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 17:42:21', '2020-03-02 17:42:21', NULL, 'environment_desktop', 0),
(39, 8, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 17:42:21', '2020-03-02 17:42:21', NULL, 'environment_desktop', 0),
(40, 8, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-02 17:47:40', '2020-03-02 17:47:40', NULL, 'environment_desktop', 0),
(41, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-03 13:19:02', '2020-03-03 13:19:02', NULL, 'environment_desktop', 0),
(42, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-03 15:36:04', '2020-03-03 15:36:04', NULL, 'environment_desktop', 0),
(43, 9, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-03 15:40:00', '2020-03-03 15:40:00', NULL, 'environment_desktop', 0),
(44, 9, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-03 15:40:00', '2020-03-03 15:40:00', NULL, 'environment_desktop', 0),
(45, 9, NULL, 'bus_booking', '[]', '2020-03-03 15:41:33', '2020-03-03 15:41:33', 50, NULL, NULL),
(46, 9, NULL, 'bus_booking', '[]', '2020-03-03 15:46:13', '2020-03-03 15:46:13', 51, NULL, NULL),
(47, 9, NULL, 'bus_booking', '[]', '2020-03-03 17:03:51', '2020-03-03 17:03:51', 52, NULL, NULL),
(48, 9, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-03 17:05:22', '2020-03-03 17:05:22', NULL, 'environment_desktop', 0),
(49, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-03 17:05:26', '2020-03-03 17:05:26', NULL, 'environment_desktop', 0),
(50, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-03 17:05:48', '2020-03-03 17:05:48', NULL, 'environment_desktop', 0),
(51, 7, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-03 17:05:59', '2020-03-03 17:05:59', NULL, 'environment_desktop', 0),
(52, 7, NULL, 'bus_booking', '[]', '2020-03-03 17:08:08', '2020-03-03 17:08:08', 53, NULL, NULL),
(53, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-03 17:17:53', '2020-03-03 17:17:53', NULL, 'environment_desktop', 0),
(54, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-03 17:18:59', '2020-03-03 17:18:59', NULL, 'environment_desktop', 0),
(55, 10, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-03 17:19:10', '2020-03-03 17:19:10', NULL, 'environment_desktop', 0),
(56, 10, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-03 17:19:10', '2020-03-03 17:19:10', NULL, 'environment_desktop', 0),
(57, 10, NULL, 'bus_booking', '[]', '2020-03-03 17:23:16', '2020-03-03 17:23:16', 55, NULL, NULL),
(58, 10, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-03 17:23:49', '2020-03-03 17:23:49', NULL, 'environment_desktop', 0),
(59, 11, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-03 17:24:13', '2020-03-03 17:24:13', NULL, 'environment_desktop', 0),
(60, 11, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-03 17:24:13', '2020-03-03 17:24:13', NULL, 'environment_desktop', 0),
(61, 11, NULL, 'bus_booking', '[]', '2020-03-03 17:25:14', '2020-03-03 17:25:14', 56, NULL, NULL),
(62, 12, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-03 17:29:43', '2020-03-03 17:29:43', NULL, 'environment_desktop', 0),
(63, 12, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-03 17:29:43', '2020-03-03 17:29:43', NULL, 'environment_desktop', 0),
(64, 12, NULL, 'bus_booking', '[]', '2020-03-03 17:31:12', '2020-03-03 17:31:12', 57, NULL, NULL),
(65, 2, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 09:06:26', '2020-03-04 09:06:26', NULL, 'environment_desktop', 0),
(66, 2, NULL, 'bus_booking', '[]', '2020-03-04 09:31:38', '2020-03-04 09:31:38', 60, NULL, NULL),
(67, 2, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 09:32:40', '2020-03-04 09:32:40', NULL, 'environment_desktop', 0),
(68, 5, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 06:32:47', '2020-03-04 06:32:47', NULL, 'environment_desktop', 0),
(69, 6, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 09:32:47', '2020-03-04 09:32:47', NULL, 'environment_desktop', 0),
(70, 5, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 06:33:41', '2020-03-04 06:33:41', NULL, 'environment_desktop', 0),
(71, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 06:33:47', '2020-03-04 06:33:47', NULL, 'environment_desktop', 0),
(72, 6, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 09:34:06', '2020-03-04 09:34:06', NULL, 'environment_desktop', 0),
(73, 13, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 09:34:32', '2020-03-04 09:34:32', NULL, 'environment_desktop', 0),
(74, 13, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 09:34:32', '2020-03-04 09:34:32', NULL, 'environment_desktop', 0),
(75, 13, NULL, 'bus_booking', '[]', '2020-03-04 09:36:32', '2020-03-04 09:36:32', 65, NULL, NULL),
(76, 13, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 09:38:47', '2020-03-04 09:38:47', NULL, 'environment_desktop', 0),
(77, 13, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 09:39:57', '2020-03-04 09:39:57', NULL, 'environment_desktop', 0),
(78, 13, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 09:41:03', '2020-03-04 09:41:03', NULL, 'environment_desktop', 0),
(79, 13, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 09:41:10', '2020-03-04 09:41:10', NULL, 'environment_desktop', 0),
(80, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:18:53', '2020-03-04 08:18:53', NULL, 'environment_desktop', 0),
(81, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:23:00', '2020-03-04 08:23:00', NULL, 'environment_desktop', 0),
(82, 5, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:23:06', '2020-03-04 08:23:06', NULL, 'environment_desktop', 0),
(83, 5, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:24:53', '2020-03-04 08:24:53', NULL, 'environment_desktop', 0),
(84, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:24:57', '2020-03-04 08:24:57', NULL, 'environment_desktop', 0),
(85, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:25:59', '2020-03-04 08:25:59', NULL, 'environment_desktop', 0),
(86, 5, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:26:08', '2020-03-04 08:26:08', NULL, 'environment_desktop', 0),
(87, 5, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:26:39', '2020-03-04 08:26:39', NULL, 'environment_desktop', 0),
(88, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:26:43', '2020-03-04 08:26:43', NULL, 'environment_desktop', 0),
(89, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:28:42', '2020-03-04 08:28:42', NULL, 'environment_desktop', 0),
(90, 5, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:28:48', '2020-03-04 08:28:48', NULL, 'environment_desktop', 0),
(91, 5, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:29:23', '2020-03-04 08:29:23', NULL, 'environment_desktop', 0),
(92, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:29:28', '2020-03-04 08:29:28', NULL, 'environment_desktop', 0),
(93, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:34:32', '2020-03-04 08:34:32', NULL, 'environment_desktop', 0),
(94, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:34:37', '2020-03-04 08:34:37', NULL, 'environment_desktop', 0),
(95, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:34:48', '2020-03-04 08:34:48', NULL, 'environment_desktop', 0),
(96, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:34:53', '2020-03-04 08:34:53', NULL, 'environment_desktop', 0),
(97, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:35:04', '2020-03-04 08:35:04', NULL, 'environment_desktop', 0),
(98, 5, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-04 08:35:09', '2020-03-04 08:35:09', NULL, 'environment_desktop', 0),
(99, 6, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 13:21:33', '2020-03-04 13:21:33', NULL, 'environment_desktop', 0),
(100, 2, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 16:56:34', '2020-03-04 16:56:34', NULL, 'environment_desktop', 0),
(101, 2, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\"}', '2020-03-04 17:00:11', '2020-03-04 17:00:11', NULL, 'environment_desktop', 0),
(102, 2, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-05 17:28:33', '2020-03-05 17:28:33', NULL, 'environment_desktop', 0),
(103, 2, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-05 17:32:46', '2020-03-05 17:32:46', NULL, 'environment_desktop', 0),
(104, 13, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-05 17:32:57', '2020-03-05 17:32:57', NULL, 'environment_desktop', 0),
(105, 13, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-05 17:36:34', '2020-03-05 17:36:34', NULL, 'environment_desktop', 0),
(106, 2, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-05 17:36:46', '2020-03-05 17:36:46', NULL, 'environment_desktop', 0),
(107, 14, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-05 18:49:45', '2020-03-05 18:49:45', NULL, 'environment_desktop', 0),
(108, 2, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-05 21:01:03', '2020-03-05 21:01:03', NULL, 'environment_desktop', 0),
(109, 2, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-05 21:06:57', '2020-03-05 21:06:57', NULL, 'environment_desktop', 0),
(110, 2, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-06 17:54:47', '2020-03-06 17:54:47', NULL, 'environment_desktop', 0),
(111, 2, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-06 17:54:57', '2020-03-06 17:54:57', NULL, 'environment_desktop', 0),
(112, 15, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-09 10:04:07', '2020-03-09 10:04:07', NULL, 'environment_desktop', 0),
(113, 15, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-09 10:04:07', '2020-03-09 10:04:07', NULL, 'environment_desktop', 0),
(114, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-09 10:04:07', '2020-03-09 10:04:07', NULL, 'environment_desktop', 0),
(115, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-09 10:05:01', '2020-03-09 10:05:01', NULL, 'environment_desktop', 0),
(116, 16, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 10:05:07', '2020-03-09 10:05:07', NULL, 'environment_desktop', 0),
(117, 16, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 10:05:07', '2020-03-09 10:05:07', NULL, 'environment_desktop', 0),
(118, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-09 10:05:10', '2020-03-09 10:05:10', NULL, 'environment_desktop', 0),
(119, 1, NULL, 'bus_booking', '[]', '2020-03-09 10:07:24', '2020-03-09 10:07:24', 79, NULL, NULL),
(120, 16, NULL, 'bus_booking', '[]', '2020-03-09 10:07:35', '2020-03-09 10:07:35', 80, NULL, NULL),
(121, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-09 10:09:20', '2020-03-09 10:09:20', NULL, 'environment_desktop', 0),
(122, 15, NULL, 'bus_booking', '[]', '2020-03-09 10:11:37', '2020-03-09 10:11:37', 81, NULL, NULL),
(123, 15, NULL, 'bus_booking', '[]', '2020-03-09 10:20:09', '2020-03-09 10:20:09', 83, NULL, NULL),
(124, 16, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 10:21:53', '2020-03-09 10:21:53', NULL, 'environment_desktop', 0),
(125, 17, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 10:22:07', '2020-03-09 10:22:07', NULL, 'environment_desktop', 0),
(126, 17, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 10:22:07', '2020-03-09 10:22:07', NULL, 'environment_desktop', 0),
(127, 17, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 10:23:18', '2020-03-09 10:23:18', NULL, 'environment_desktop', 0),
(128, 17, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 10:23:27', '2020-03-09 10:23:27', NULL, 'environment_desktop', 0),
(129, 5, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 07:24:38', '2020-03-09 07:24:38', NULL, 'environment_desktop', 0),
(130, 5, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 07:25:37', '2020-03-09 07:25:37', NULL, 'environment_desktop', 0),
(131, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 07:25:44', '2020-03-09 07:25:44', NULL, 'environment_desktop', 0),
(132, 16, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 10:29:05', '2020-03-09 10:29:05', NULL, 'environment_desktop', 0),
(133, 16, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 10:30:54', '2020-03-09 10:30:54', NULL, 'environment_desktop', 0),
(134, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 07:32:22', '2020-03-09 07:32:22', NULL, 'environment_desktop', 0),
(135, 5, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 07:32:29', '2020-03-09 07:32:29', NULL, 'environment_desktop', 0),
(136, 16, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 10:33:49', '2020-03-09 10:33:49', NULL, 'environment_desktop', 0),
(137, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-09 10:34:06', '2020-03-09 10:34:06', NULL, 'environment_desktop', 0),
(138, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit\\/604.1.38 (KHTML, like Gecko) Version\\/11.0 Mobile\\/15A372 Safari\\/604.1\"}', '2020-03-09 10:34:31', '2020-03-09 10:34:31', NULL, 'environment_mobile', 0),
(139, 16, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 10:46:00', '2020-03-09 10:46:00', NULL, 'environment_desktop', 0),
(140, 16, NULL, 'bus_booking', '[]', '2020-03-09 10:48:01', '2020-03-09 10:48:01', 89, NULL, NULL),
(141, 1, NULL, 'bus_booking', '[]', '2020-03-09 11:18:48', '2020-03-09 11:18:48', 90, NULL, NULL),
(142, 16, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 11:45:01', '2020-03-09 11:45:01', NULL, 'environment_desktop', 0),
(143, 16, NULL, 'bus_booking', '[]', '2020-03-09 13:12:02', '2020-03-09 13:12:02', 91, NULL, NULL),
(144, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-09 14:02:12', '2020-03-09 14:02:12', NULL, 'environment_desktop', 0),
(145, 5, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 11:21:03', '2020-03-09 11:21:03', NULL, 'environment_desktop', 0),
(146, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 11:36:09', '2020-03-09 11:36:09', NULL, 'environment_desktop', 0),
(147, 16, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 15:53:10', '2020-03-09 15:53:10', NULL, 'environment_desktop', 0),
(148, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 16:15:14', '2020-03-09 16:15:14', NULL, 'environment_desktop', 0),
(149, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 13:48:22', '2020-03-09 13:48:22', NULL, 'environment_desktop', 0),
(150, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 13:48:33', '2020-03-09 13:48:33', NULL, 'environment_desktop', 0),
(151, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 13:51:54', '2020-03-09 13:51:54', NULL, 'environment_desktop', 0),
(152, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 13:51:57', '2020-03-09 13:51:57', NULL, 'environment_desktop', 0),
(153, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 13:52:31', '2020-03-09 13:52:31', NULL, 'environment_desktop', 0),
(154, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 13:53:51', '2020-03-09 13:53:51', NULL, 'environment_desktop', 0),
(155, 3, NULL, 'bus_booking', '[]', '2020-03-09 13:58:44', '2020-03-09 13:58:44', 94, NULL, NULL),
(156, 18, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 17:40:57', '2020-03-09 17:40:57', NULL, 'environment_desktop', 0),
(157, 18, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-09 17:40:57', '2020-03-09 17:40:57', NULL, 'environment_desktop', 0),
(158, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 09:11:20', '2020-03-10 09:11:20', NULL, 'environment_desktop', 0),
(159, 16, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-10 09:12:21', '2020-03-10 09:12:21', NULL, 'environment_desktop', 0),
(160, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 09:17:16', '2020-03-10 09:17:16', NULL, 'environment_desktop', 0),
(161, 19, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 09:17:51', '2020-03-10 09:17:51', NULL, 'environment_desktop', 0),
(162, 19, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 09:17:51', '2020-03-10 09:17:51', NULL, 'environment_desktop', 0),
(163, 11, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-10 09:24:23', '2020-03-10 09:24:23', NULL, 'environment_desktop', 0),
(164, 11, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko\\/20100101 Firefox\\/74.0\"}', '2020-03-10 10:19:33', '2020-03-10 10:19:33', NULL, 'environment_desktop', 0),
(165, 16, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-10 10:21:10', '2020-03-10 10:21:10', NULL, 'environment_desktop', 0),
(166, 19, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 10:45:12', '2020-03-10 10:45:12', NULL, 'environment_desktop', 0),
(167, 19, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 10:45:13', '2020-03-10 10:45:13', NULL, 'environment_desktop', 0),
(168, 19, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 10:47:36', '2020-03-10 10:47:36', NULL, 'environment_desktop', 0),
(169, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 10:47:39', '2020-03-10 10:47:39', NULL, 'environment_desktop', 0),
(170, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-10 08:13:49', '2020-03-10 08:13:49', NULL, 'environment_desktop', 0),
(171, 3, NULL, 'bus_booking', '[]', '2020-03-10 08:31:04', '2020-03-10 08:31:04', 101, NULL, NULL),
(172, 17, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-10 14:00:57', '2020-03-10 14:00:57', NULL, 'environment_desktop', 0),
(173, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 14:00:58', '2020-03-10 14:00:58', NULL, 'environment_desktop', 0),
(174, 21, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 14:01:18', '2020-03-10 14:01:18', NULL, 'environment_desktop', 0),
(175, 21, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 14:01:18', '2020-03-10 14:01:18', NULL, 'environment_desktop', 0),
(176, 11, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-10 14:01:34', '2020-03-10 14:01:34', NULL, 'environment_desktop', 0),
(177, 22, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-10 14:02:07', '2020-03-10 14:02:07', NULL, 'environment_desktop', 0),
(178, 22, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-10 14:02:07', '2020-03-10 14:02:07', NULL, 'environment_desktop', 0),
(179, 21, NULL, 'bus_booking', '[]', '2020-03-10 14:02:24', '2020-03-10 14:02:24', 106, NULL, NULL),
(180, 17, NULL, 'bus_booking', '[]', '2020-03-10 14:03:52', '2020-03-10 14:03:52', 107, NULL, NULL),
(181, 22, NULL, 'bus_booking', '[]', '2020-03-10 14:04:10', '2020-03-10 14:04:10', 108, NULL, NULL),
(182, 22, NULL, 'bus_booking', '[]', '2020-03-10 14:18:02', '2020-03-10 14:18:02', 112, NULL, NULL),
(183, 22, NULL, 'bus_booking', '[]', '2020-03-10 14:39:34', '2020-03-10 14:39:34', 115, NULL, NULL),
(184, 22, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-10 15:45:23', '2020-03-10 15:45:23', NULL, 'environment_desktop', 0),
(185, 21, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-10 16:06:35', '2020-03-10 16:06:35', NULL, 'environment_desktop', 0),
(186, 22, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-10 16:07:14', '2020-03-10 16:07:14', NULL, 'environment_desktop', 0),
(187, 17, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-10 16:11:29', '2020-03-10 16:11:29', NULL, 'environment_desktop', 0),
(188, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-11 06:00:59', '2020-03-11 06:00:59', NULL, 'environment_desktop', 0),
(189, 21, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-11 11:44:55', '2020-03-11 11:44:55', NULL, 'environment_desktop', 0),
(190, 1, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-11 11:45:13', '2020-03-11 11:45:13', NULL, 'environment_desktop', 0),
(191, 22, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-11 12:32:41', '2020-03-11 12:32:41', NULL, 'environment_desktop', 0),
(192, 17, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-11 13:20:05', '2020-03-11 13:20:05', NULL, 'environment_desktop', 0),
(193, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-11 13:20:13', '2020-03-11 13:20:13', NULL, 'environment_desktop', 0),
(194, 23, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-11 13:20:34', '2020-03-11 13:20:34', NULL, 'environment_desktop', 0),
(195, 23, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-11 13:20:34', '2020-03-11 13:20:34', NULL, 'environment_desktop', 0),
(196, 23, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-11 13:26:32', '2020-03-11 13:26:32', NULL, 'environment_desktop', 0),
(197, 17, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-11 13:27:14', '2020-03-11 13:27:14', NULL, 'environment_desktop', 0),
(198, 16, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-11 13:27:24', '2020-03-11 13:27:24', NULL, 'environment_desktop', 0),
(199, 1, NULL, 'bus_booking', '[]', '2020-03-11 13:30:32', '2020-03-11 13:30:32', 129, NULL, NULL),
(200, 1, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-11 13:32:54', '2020-03-11 13:32:54', NULL, 'environment_desktop', 0),
(201, 24, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-11 13:33:10', '2020-03-11 13:33:10', NULL, 'environment_desktop', 0),
(202, 24, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\"}', '2020-03-11 13:33:10', '2020-03-11 13:33:10', NULL, 'environment_desktop', 0),
(203, 24, NULL, 'bus_booking', '[]', '2020-03-11 13:34:58', '2020-03-11 13:34:58', 130, NULL, NULL),
(204, 16, NULL, 'bus_booking', '[]', '2020-03-11 13:39:54', '2020-03-11 13:39:54', 132, NULL, NULL),
(205, 24, NULL, 'bus_booking', '[]', '2020-03-11 13:40:41', '2020-03-11 13:40:41', 134, NULL, NULL),
(206, 16, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-11 13:43:12', '2020-03-11 13:43:12', NULL, 'environment_desktop', 0),
(207, 16, NULL, 'bus_booking', '[]', '2020-03-11 13:46:25', '2020-03-11 13:46:25', 135, NULL, NULL),
(208, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-12 12:56:10', '2020-03-12 12:56:10', NULL, 'environment_desktop', 0);
INSERT INTO `activity` (`id`, `user_id`, `corporate_id`, `activityType`, `activityLog`, `createdAt`, `updatedAt`, `relationId`, `environment`, `affiliate`) VALUES
(209, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-12 13:32:39', '2020-03-12 13:32:39', NULL, 'environment_desktop', 0),
(210, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-12 13:47:36', '2020-03-12 13:47:36', NULL, 'environment_desktop', 0),
(211, 3, NULL, 'bus_booking', '[]', '2020-03-12 13:50:44', '2020-03-12 13:50:44', 137, NULL, NULL),
(212, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-14 07:07:20', '2020-03-14 07:07:20', NULL, 'environment_desktop', 0),
(213, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-14 09:54:04', '2020-03-14 09:54:04', NULL, 'environment_desktop', 0),
(214, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-14 10:22:37', '2020-03-14 10:22:37', NULL, 'environment_desktop', 0),
(215, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-14 18:12:45', '2020-03-14 18:12:45', NULL, 'environment_desktop', 0),
(216, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-15 04:57:34', '2020-03-15 04:57:34', NULL, 'environment_desktop', 0),
(217, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-15 05:06:37', '2020-03-15 05:06:37', NULL, 'environment_desktop', 0),
(218, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-15 18:13:26', '2020-03-15 18:13:26', NULL, 'environment_desktop', 0),
(219, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-15 18:25:48', '2020-03-15 18:25:48', NULL, 'environment_desktop', 0),
(220, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-18 07:18:38', '2020-03-18 07:18:38', NULL, 'environment_desktop', 0),
(221, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-18 07:19:01', '2020-03-18 07:19:01', NULL, 'environment_desktop', 0),
(222, 3, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-18 07:19:10', '2020-03-18 07:19:10', NULL, 'environment_desktop', 0),
(223, 3, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\"}', '2020-03-18 07:19:17', '2020-03-18 07:19:17', NULL, 'environment_desktop', 0),
(224, 22, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-18 15:24:51', '2020-03-18 15:24:51', NULL, 'environment_desktop', 0),
(225, 22, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-18 15:26:54', '2020-03-18 15:26:54', NULL, 'environment_desktop', 0),
(226, 25, NULL, 'register', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-18 15:27:12', '2020-03-18 15:27:12', NULL, 'environment_desktop', 0),
(227, 25, NULL, 'auth', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-18 15:27:12', '2020-03-18 15:27:12', NULL, 'environment_desktop', 0),
(228, 25, NULL, 'bus_booking', '[]', '2020-03-18 15:27:58', '2020-03-18 15:27:58', 149, NULL, NULL),
(229, 25, NULL, 'bus_booking', '[]', '2020-03-18 15:51:31', '2020-03-18 15:51:31', 150, NULL, NULL),
(230, 25, NULL, 'bus_booking', '[]', '2020-03-18 15:53:31', '2020-03-18 15:53:31', 151, NULL, NULL),
(231, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-19 08:31:06', '2020-03-19 08:31:06', NULL, 'environment_desktop', 0),
(232, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-22 13:49:03', '2020-03-22 13:49:03', NULL, 'environment_desktop', 0),
(233, 25, NULL, 'logout', '{\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-22 17:27:06', '2020-03-22 17:27:06', NULL, 'environment_desktop', 0),
(234, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"insomnia\\/7.1.1\"}', '2020-03-22 17:31:13', '2020-03-22 17:31:13', NULL, 'environment_desktop', 0),
(235, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"insomnia\\/7.1.1\"}', '2020-03-23 09:01:09', '2020-03-23 09:01:09', NULL, 'environment_desktop', 0),
(236, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"PostmanRuntime\\/7.23.0\"}', '2020-03-23 11:24:00', '2020-03-23 11:24:00', NULL, 'environment_desktop', 0),
(237, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"UcakBileti\\/5.5 iOS\\/13.3 iPhone\\/x86_64)\"}', '2020-03-23 13:18:32', '2020-03-23 13:18:32', NULL, 'ios-app', 0),
(238, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-23 13:39:39', '2020-03-23 13:39:39', NULL, 'environment_desktop', 0),
(239, 25, NULL, 'bus_booking', '[]', '2020-03-23 13:46:19', '2020-03-23 13:46:19', 3, NULL, NULL),
(240, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"insomnia\\/7.1.1\"}', '2020-03-23 15:07:29', '2020-03-23 15:07:29', NULL, 'environment_desktop', 0),
(241, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"PostmanRuntime\\/7.23.0\"}', '2020-03-23 15:36:58', '2020-03-23 15:36:58', NULL, 'environment_desktop', 0),
(242, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\"}', '2020-03-23 16:12:02', '2020-03-23 16:12:02', NULL, 'environment_desktop', 0),
(243, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"UcakBileti\\/5.5 iOS\\/13.3 iPhone\\/x86_64)\"}', '2020-03-23 16:46:58', '2020-03-23 16:46:58', NULL, 'ios-app', 5455),
(244, 25, NULL, 'auth', '{\"title\":\"message.succesful_login_title\",\"user-agent\":\"insomnia\\/7.1.1\"}', '2020-03-24 09:45:36', '2020-03-24 09:45:36', NULL, 'environment_desktop', 0),
(245, 25, NULL, 'bus_booking', '[]', '2020-03-24 09:58:01', '2020-03-24 09:58:01', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `airline_agreement`
--

CREATE TABLE `airline_agreement` (
  `id` int(11) NOT NULL,
  `airline_code` varchar(5) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AuthCode`
--

CREATE TABLE `AuthCode` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_at` int(11) NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `card_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `card_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `card_hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hash_system` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `card_brand` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `is_valid` tinyint(1) DEFAULT '0',
  `validated_at` datetime DEFAULT NULL,
  `validated_by` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Client`
--

CREATE TABLE `Client` (
  `id` int(11) NOT NULL,
  `random_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Client`
--

INSERT INTO `Client` (`id`, `random_id`, `secret`, `allowed_grant_types`, `redirect_uris`, `name`) VALUES
(1, '3k6b327qnc8w4g80o08cwk0os0ks0s0so00w8ss0skk0w40os4', '159abmpr5h6owso88sw40cgk0ckg4oo8o8sogg4ccggwkcw0os', '[\"client_credentials\", \"password\"]', '[]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Corporate`
--

CREATE TABLE `Corporate` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobilePhoneNumber` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smsVerificationCode` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `modifiedAt` datetime NOT NULL,
  `approvedAt` datetime DEFAULT NULL,
  `approvedBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `logo_id` int(11) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Corporate`
--

INSERT INTO `Corporate` (`id`, `user_id`, `name`, `mobilePhoneNumber`, `smsVerificationCode`, `approved`, `createdAt`, `modifiedAt`, `approvedAt`, `approvedBy`, `settings`, `logo_id`, `sector_id`) VALUES
(1, 13, 'Test', '90 5342961909', NULL, 1, '2020-03-04 09:41:48', '2020-03-04 09:42:35', NULL, NULL, '{\"email\":\"ebru.yilmaz_2@enuygun.com\"}', NULL, NULL),
(2, 14, 'test', '90 5342961909', NULL, 1, '2020-03-04 17:01:06', '2020-03-04 17:03:09', NULL, NULL, '{\"email\":\"ebru.yilmaz_6@enuygun.com\"}', NULL, NULL),
(3, 20, 'Test', '90 5342961909', NULL, 1, '2020-03-10 13:26:59', '2020-03-10 13:27:12', NULL, NULL, '{\"email\":\"ebru.yilmaz_15@enuygun.com\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CorporateLink`
--

CREATE TABLE `CorporateLink` (
  `id` int(11) NOT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `mail_domains` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CorporateUser`
--

CREATE TABLE `CorporateUser` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invitedAt` datetime DEFAULT NULL,
  `joinedAt` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `settings` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `active` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_validated` tinyint(1) DEFAULT '0',
  `email_validated` tinyint(1) DEFAULT '0',
  `last_code_sent` datetime DEFAULT NULL,
  `invited_by_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `first_approver_id` int(11) DEFAULT NULL,
  `second_approver_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CorporateUser`
--

INSERT INTO `CorporateUser` (`id`, `user_id`, `corporate_id`, `email`, `token`, `invitedAt`, `joinedAt`, `roles`, `settings`, `active`, `salt`, `confirmation_code`, `phone_validated`, `email_validated`, `last_code_sent`, `invited_by_id`, `department_id`, `first_approver_id`, `second_approver_id`) VALUES
(1, 13, 1, 'ebru.yilmaz_2@enuygun.com', 'ae42e3c4f69fda04fc1cdcb93bb7e257', '2020-03-04 09:41:48', NULL, '[\"ROLE_CORPORATE_SUPER_ADMIN\"]', NULL, 1, 'R6L5eNAsRgJ3glXfSXcOpRwfG6MxyocinKTbQiQ4ze4', '1236', 1, 0, '2020-03-04 09:42:29', 13, NULL, NULL, NULL),
(2, 14, 2, 'ebru.yilmaz_6@enuygun.com', '1f476583b344b9dc6ef572b9f6ce62ea', '2020-03-04 17:01:06', NULL, '[\"ROLE_CORPORATE_SUPER_ADMIN\"]', NULL, 1, 'EanpB0-LodWqRiyQLKh4vR-S2yCIKHBaYIyd624OsD8', '4568', 1, 0, '2020-03-04 17:03:04', NULL, NULL, NULL, NULL),
(3, 20, 3, 'ebru.yilmaz_15@enuygun.com', 'da21bc369e3c204b734fe803de8ffff4', '2020-03-10 13:26:59', NULL, '[\"ROLE_CORPORATE_SUPER_ADMIN\"]', NULL, 1, 'UnpDZjO9Y-X9wG-AtGy_kG6GuvvYdTJA1bgPJRt75c8', '2378', 1, 0, '2020-03-10 13:26:59', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `corporate_application`
--

CREATE TABLE `corporate_application` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `completed` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `corporate_file`
--

CREATE TABLE `corporate_file` (
  `id` int(11) NOT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `uploader_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `corporate_sector`
--

CREATE TABLE `corporate_sector` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corporate_sector`
--

INSERT INTO `corporate_sector` (`id`, `name`) VALUES
(1, 'Bili?im'),
(2, 'Dernek ve Vak?flar'),
(3, 'E?lence ve Organizasyon'),
(4, 'Elektrik ve Elektronik'),
(5, 'Endüstriel Üretim'),
(6, 'Enerji ve Akaryak?t'),
(7, 'Finans'),
(8, 'G?da'),
(9, 'Hizmet'),
(10, '?n?aat'),
(11, '?thalat - ?hracat'),
(12, 'Lojistik ve Ta??mac?l?k'),
(13, 'Madencilik'),
(14, 'Mobilya ve Dekorasyon'),
(15, 'Otomotiv'),
(16, 'Sa?l?k - Medikal'),
(17, 'Tar?m ve Hayvanc?l?k'),
(18, 'Telekomünikasyon'),
(19, 'Ticaret'),
(20, 'Turizm - Konaklama'),
(21, 'Di?er');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `corporate_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `invoicable` tinyint(1) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_request`
--

CREATE TABLE `flight_request` (
  `id` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `requested_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `old_booking_id` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `corporate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_request_note`
--

CREATE TABLE `flight_request_note` (
  `id` int(11) NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci,
  `writer_id` int(11) NOT NULL,
  `flight_request_id` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gray_list`
--

CREATE TABLE `gray_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `town_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_office` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `invoice_type` int(11) NOT NULL DEFAULT '1',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `post_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `country_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_department`
--

CREATE TABLE `invoice_department` (
  `department_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_card`
--

CREATE TABLE `loyalty_card` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `cardNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `airlineCode` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_info`
--

CREATE TABLE `media_info` (
  `id` int(11) NOT NULL,
  `extension` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `meta` text COLLATE utf8_unicode_ci,
  `media_id` int(11) NOT NULL
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
('20170413082134'),
('20170413090000'),
('20170413095205'),
('20170413105328'),
('20170511111025'),
('20170913115223'),
('20171026130655'),
('20171124125927'),
('20180104082254'),
('20180130062335'),
('20180131085053'),
('20180220083949'),
('20180625055401'),
('20180703141322'),
('20180731142420'),
('20180802121327'),
('20181004182530'),
('20181009070750'),
('20181022074806'),
('20181121085650'),
('20190219065704'),
('20190313110910'),
('20190326112854'),
('20190408124042'),
('20190520082908'),
('20190628073917'),
('20191220100652'),
('20191227103734');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translation_settings` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `content` longtext COLLATE utf8_unicode_ci,
  `action_settings` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_dismissed` tinyint(1) NOT NULL DEFAULT '0',
  `is_resolved` tinyint(1) NOT NULL DEFAULT '0',
  `expired_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `session`, `namespace`, `type`, `level`, `action`, `url`, `message`, `translation_settings`, `content`, `action_settings`, `is_read`, `is_dismissed`, `is_resolved`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 11:45:46', '2020-03-02 11:45:46'),
(2, 2, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 1, NULL, '2020-03-02 11:55:10', '2020-03-04 09:14:57'),
(3, 3, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 1, NULL, '2020-03-02 11:59:03', '2020-03-02 13:12:57'),
(4, 1, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 14:59:32', '2020-03-02 14:59:32'),
(5, 3, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 12:06:57', '2020-03-02 12:06:57'),
(6, 4, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 15:18:11', '2020-03-02 15:18:11'),
(7, 4, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 15:18:11', '2020-03-02 15:18:11'),
(8, 5, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 13:52:44', '2020-03-02 13:52:44'),
(9, 5, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 13:53:09', '2020-03-02 13:53:09'),
(10, 2, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 17:03:41', '2020-03-02 17:03:41'),
(11, 6, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 1, NULL, '2020-03-02 17:08:06', '2020-03-04 13:23:16'),
(12, 6, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 17:08:07', '2020-03-02 17:08:07'),
(13, 7, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 1, NULL, '2020-03-02 17:18:49', '2020-03-03 17:06:52'),
(14, 7, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 17:18:49', '2020-03-02 17:18:49'),
(15, 8, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 17:42:21', '2020-03-02 17:42:21'),
(16, 8, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-02 17:42:21', '2020-03-02 17:42:21'),
(17, 9, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-03 15:39:59', '2020-03-03 15:39:59'),
(18, 9, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-03 15:40:00', '2020-03-03 15:40:00'),
(19, 10, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-03 17:19:10', '2020-03-03 17:19:10'),
(20, 10, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-03 17:19:10', '2020-03-03 17:19:10'),
(21, 11, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-03 17:24:13', '2020-03-03 17:24:13'),
(22, 11, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-03 17:24:13', '2020-03-03 17:24:13'),
(23, 12, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-03 17:29:42', '2020-03-03 17:29:42'),
(24, 12, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-03 17:29:43', '2020-03-03 17:29:43'),
(25, 13, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-04 09:34:32', '2020-03-04 09:34:32'),
(26, 13, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-04 09:34:32', '2020-03-04 09:34:32'),
(27, 14, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-04 17:01:06', '2020-03-04 17:01:06'),
(28, 14, NULL, 'confirm_corporate', 'resolve_required', 'notify', NULL, NULL, 'corporate.user.confirm.message', NULL, 'corporate.user.confirm.content', '{\"method\":\"GET\",\"format\":\"text\\/plain\",\"label_trans_params\":[],\"target\":\"\\/uyelik\\/member\\/corporate\\/user\\/resend-confirmation-code\",\"label\":\"corporate.user.confirm.button.message\"}', 1, 0, 1, NULL, '2020-03-04 17:01:06', '2020-03-04 17:03:09'),
(29, 14, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-04 17:01:06', '2020-03-04 17:01:06'),
(30, 15, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-09 10:04:06', '2020-03-09 10:04:06'),
(31, 15, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-09 10:04:07', '2020-03-09 10:04:07'),
(32, 16, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-09 10:05:07', '2020-03-09 10:05:07'),
(33, 16, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-09 10:05:07', '2020-03-09 10:05:07'),
(34, 17, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-09 10:22:07', '2020-03-09 10:22:07'),
(35, 17, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-09 10:22:07', '2020-03-09 10:22:07'),
(36, 18, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-09 17:40:57', '2020-03-09 17:40:57'),
(37, 18, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-09 17:40:57', '2020-03-09 17:40:57'),
(38, 19, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-10 09:17:51', '2020-03-10 09:17:51'),
(39, 19, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-10 09:17:51', '2020-03-10 09:17:51'),
(40, 20, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-10 13:26:59', '2020-03-10 13:26:59'),
(41, 20, NULL, 'confirm_corporate', 'resolve_required', 'notify', NULL, NULL, 'corporate.user.confirm.message', NULL, 'corporate.user.confirm.content', '{\"method\":\"GET\",\"format\":\"text\\/plain\",\"label_trans_params\":[],\"target\":\"\\/uyelik\\/member\\/corporate\\/user\\/resend-confirmation-code\",\"label\":\"corporate.user.confirm.button.message\"}', 1, 0, 1, NULL, '2020-03-10 13:26:59', '2020-03-10 13:27:12'),
(42, 20, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-10 13:26:59', '2020-03-10 13:26:59'),
(43, 21, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-10 14:01:18', '2020-03-10 14:01:18'),
(44, 21, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-10 14:01:18', '2020-03-10 14:01:18'),
(45, 22, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-10 14:02:07', '2020-03-10 14:02:07'),
(46, 22, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-10 14:02:07', '2020-03-10 14:02:07'),
(47, 23, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-11 13:20:34', '2020-03-11 13:20:34'),
(48, 23, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-11 13:20:34', '2020-03-11 13:20:34'),
(49, 24, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-11 13:33:10', '2020-03-11 13:33:10'),
(50, 24, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-11 13:33:10', '2020-03-11 13:33:10'),
(51, 25, NULL, 'missing_profile_info', 'resolve_required', 'notify', 'redirection', NULL, 'user.profile.missing_info.message', '{\"parameters\":[]}', 'user.profile.missing_info.content', '{\"target\":\"\\/uyelik\\/profil\\/\",\"label\":\"user.profile.missing_info.button_message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-18 15:27:12', '2020-03-18 15:27:12'),
(52, 25, NULL, 'confirm_email', 'resolve_required', 'notify', 'custom', NULL, 'user.email.confirm.message', '{\"parameters\":[]}', 'user.email.confirm.content', '{\"label\":\"user.email.button.message\",\"label_trans_params\":[]}', 0, 0, 0, NULL, '2020-03-18 15:27:12', '2020-03-18 15:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `passport`
--

CREATE TABLE `passport` (
  `id` int(11) NOT NULL,
  `passenger_id` int(11) DEFAULT NULL,
  `country_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `passport`
--

INSERT INTO `passport` (`id`, `passenger_id`, `country_code`, `number`, `expiration_date`) VALUES
(1, 37, 'US', '553452757575757', '2025-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `PaxReportDetail`
--

CREATE TABLE `PaxReportDetail` (
  `id` int(11) NOT NULL,
  `requester_id` int(11) DEFAULT NULL,
  `confirmer_id` int(11) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `transaction_date` datetime NOT NULL,
  `transaction_date_year` int(11) NOT NULL,
  `transaction_date_month` int(11) NOT NULL,
  `transaction_date_day` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `request_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flight_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_assurance_amount` double NOT NULL,
  `insurance_amount` double NOT NULL,
  `airlines` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pnrs` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domestic` tinyint(1) NOT NULL,
  `departure_date` datetime NOT NULL,
  `departure_date_year` int(11) NOT NULL,
  `departure_date_month` int(11) NOT NULL,
  `departure_date_day` int(11) NOT NULL,
  `status_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `accounting_status_code` int(11) NOT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flight_numbers` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ticket_numbers` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `total_amount` double NOT NULL,
  `dep_assurance_amount` double DEFAULT NULL,
  `ret_assurance_amount` double DEFAULT NULL,
  `rt_assurance_amount` double DEFAULT NULL,
  `vi_assurance_amount` double DEFAULT NULL,
  `baggage_amount` double DEFAULT NULL,
  `ticket_amount` double DEFAULT NULL,
  `meal_amount` double DEFAULT NULL,
  `seat_amount` double DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `publicId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreignNationals` tinyint(1) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilePhoneNumber` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `user_id`, `corporate_id`, `publicId`, `foreignNationals`, `name`, `lastName`, `email`, `mobilePhoneNumber`, `gender`, `birthdate`, `createdAt`, `updatedAt`, `status`) VALUES
(1, 2, NULL, NULL, 1, 'Ebru', 'Yılmaz', NULL, ' ', 'F', '1984-05-06', '2020-03-02 11:59:34', '2020-03-02 11:59:34', 1),
(2, 2, NULL, NULL, 1, 'Ece', 'Uzunoğlu', NULL, ' ', 'F', '1995-06-06', '2020-03-02 13:14:19', '2020-03-02 13:14:19', 1),
(3, 2, NULL, NULL, 1, 'Emre', 'Yılmaz', NULL, ' ', 'M', '1991-06-06', '2020-03-02 13:14:43', '2020-03-02 13:14:43', 1),
(4, 1, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuyguntest', 'test', NULL, NULL, 'F', NULL, '2020-03-02 13:33:23', '2020-03-09 11:18:45', 1),
(5, 3, NULL, '9ySMuUT8lwNT9Tmvveyme901/wNgcC4tr5jKwO393xQ=<ENC>', 0, 'Beril', 'AYKAR', NULL, ' ', 'F', '2015-02-05', '2020-03-02 12:19:59', '2020-03-02 12:19:59', 1),
(6, 3, NULL, NULL, 1, 'Beyza', 'GÜLSEVEN', NULL, ' ', 'F', '2019-02-06', '2020-03-02 12:20:29', '2020-03-02 12:20:29', 1),
(7, 4, NULL, 'Kp+jReGCobHWGPhbzR9MdyyXpjTerhqtlqs8Tmoqi64=<ENC>', 0, 'Cem ', 'Unalan', NULL, NULL, 'M', NULL, '2020-03-02 15:21:40', '2020-03-02 15:21:40', 1),
(8, 3, NULL, NULL, 1, 'Yasin', 'ATEŞ', 'yasin.ates.1@enuygun.com', '90 5392348773', 'M', '1945-04-12', '2020-03-02 13:12:56', '2020-03-02 13:12:56', 1),
(9, 6, NULL, NULL, 1, 'Ebru', 'Yılmaz', NULL, NULL, 'F', NULL, '2020-03-02 17:12:00', '2020-03-02 17:12:00', 1),
(10, 6, NULL, NULL, 1, 'Ece', 'Uzunoğlu', NULL, ' ', 'F', '1987-06-06', '2020-03-02 17:14:39', '2020-03-02 17:14:39', 1),
(11, 6, NULL, NULL, 1, 'Fatma', 'Çetin', NULL, ' ', 'F', '1994-07-05', '2020-03-02 17:15:51', '2020-03-02 17:25:30', 1),
(12, 7, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuygun', 'test', NULL, NULL, 'F', NULL, '2020-03-02 17:22:47', '2020-03-03 17:08:06', 1),
(13, 9, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuygun', 'test', NULL, NULL, 'F', NULL, '2020-03-03 15:41:29', '2020-03-03 17:03:48', 1),
(14, 7, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuygun', 'test', 'ece.uzunoglu_40@enuygun.com', '90 5322484091', 'F', '1991-02-03', '2020-03-03 17:06:52', '2020-03-03 17:08:06', 1),
(15, 10, NULL, 'Kp+jReGCobHWGPhbzR9MdyyXpjTerhqtlqs8Tmoqi64=<ENC>', 0, 'Cem', 'Unalan', NULL, NULL, 'M', NULL, '2020-03-03 17:23:14', '2020-03-03 17:23:14', 1),
(16, 11, NULL, 'Kp+jReGCobHWGPhbzR9MdyyXpjTerhqtlqs8Tmoqi64=<ENC>', 0, 'Cem', 'Unalan', NULL, NULL, 'M', NULL, '2020-03-03 17:25:12', '2020-03-10 13:26:50', 1),
(17, 12, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuygun', 'test', NULL, NULL, 'F', NULL, '2020-03-03 17:31:11', '2020-03-03 17:31:11', 1),
(18, 2, NULL, NULL, 1, 'Ebru', 'yılmaz', 'ebru.yilmaz_1@enuygun.com', '90 5382930052', 'F', '1981-02-07', '2020-03-04 09:14:57', '2020-03-04 09:31:36', 1),
(19, 13, NULL, NULL, 1, 'Ebru', 'Yılmaz', NULL, NULL, 'F', NULL, '2020-03-04 09:36:30', '2020-03-04 09:36:30', 1),
(20, 13, NULL, NULL, 0, 'Ebru', 'Yılmaz', 'ebru.yilmaz_2@enuygun.com', '90 5342961909', NULL, NULL, '2020-03-04 09:41:48', '2020-03-04 09:42:35', 1),
(21, 6, NULL, NULL, 1, 'Ebru', 'Yılmaz', 'ebru.yilmaz_5@enuygun.com', '90 5342961909', 'F', '1992-06-06', '2020-03-04 13:23:16', '2020-03-04 13:23:16', 1),
(22, 14, NULL, NULL, 0, 'Ebru', 'Yılmaz', 'ebru.yilmaz_6@enuygun.com', '90 5342961909', NULL, NULL, '2020-03-04 17:01:06', '2020-03-04 17:03:09', 1),
(23, 16, NULL, NULL, 1, 'Ebru', 'Yılmaz', NULL, NULL, 'F', NULL, '2020-03-09 10:07:33', '2020-03-09 10:07:33', 1),
(24, 16, NULL, NULL, 1, 'Ecenur', 'Uzunoğlu', NULL, ' ', 'F', '1984-08-07', '2020-03-09 10:11:32', '2020-03-09 10:47:58', 1),
(25, 15, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuygun', 'test', NULL, NULL, 'F', NULL, '2020-03-09 10:11:35', '2020-03-09 10:11:35', 1),
(26, 16, NULL, NULL, 1, 'Emre', 'Yılmaz', NULL, ' ', 'M', '1996-08-07', '2020-03-09 10:11:58', '2020-03-09 10:12:08', 1),
(27, 15, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuyguntest', 'test', NULL, NULL, 'F', NULL, '2020-03-09 10:20:07', '2020-03-09 10:20:07', 1),
(28, 3, NULL, 'dpDVr55K8b+Rpyl0iNIm2ZX5HmFxlgvMGXDTn9/941o=<ENC>', 0, 'Yasin', 'ATEŞ', NULL, NULL, 'M', NULL, '2020-03-09 13:29:28', '2020-03-10 08:30:55', 1),
(29, 3, NULL, '9ySMuUT8lwNT9Tmvveyme901/wNgcC4tr5jKwO393xQ=<ENC>', 0, 'Beril', 'AYKAR', NULL, NULL, 'F', NULL, '2020-03-09 13:29:29', '2020-03-11 08:14:41', 1),
(30, 19, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuyguntest', 'test', NULL, NULL, 'F', NULL, '2020-03-10 09:20:01', '2020-03-10 09:22:30', 1),
(31, 20, NULL, NULL, 0, 'Ebru', 'Yılmaz', 'ebru.yilmaz_15@enuygun.com', NULL, NULL, NULL, '2020-03-10 13:26:59', '2020-03-10 13:26:59', 1),
(32, 3, NULL, 'Z0398Otu1AMjPjH6qzCBaDn3RrMDXfwDcFSZkAtJiF4=<ENC>', 0, 'Beyza', 'GÜLSEVEN', NULL, NULL, 'F', NULL, '2020-03-10 10:42:35', '2020-03-10 10:43:54', 1),
(33, 21, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuyguntest', 'test', NULL, NULL, 'F', NULL, '2020-03-10 14:02:23', '2020-03-10 14:02:23', 1),
(34, 17, NULL, NULL, 1, 'ebru', 'yılmaz', NULL, NULL, 'F', NULL, '2020-03-10 14:03:50', '2020-03-10 14:03:50', 1),
(35, 22, NULL, 'Kp+jReGCobHWGPhbzR9MdyyXpjTerhqtlqs8Tmoqi64=<ENC>', 0, 'Cem', 'Unalan', NULL, NULL, 'M', NULL, '2020-03-10 14:04:08', '2020-03-10 14:39:32', 1),
(36, 22, NULL, 'wEa+phJU8AMiXrTTS4siQQ6N1GfFiLwmmF6clUk1M2Y=<ENC>', 0, 'Cemre', 'Unalan', NULL, NULL, 'F', NULL, '2020-03-10 14:18:00', '2020-03-10 14:18:00', 1),
(37, 17, NULL, NULL, 1, 'Ece', 'Uzunoğlu', NULL, ' ', 'F', '1982-06-05', '2020-03-10 16:12:47', '2020-03-10 16:12:47', 1),
(38, 23, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuygun', 'test', NULL, NULL, 'F', NULL, '2020-03-11 13:24:09', '2020-03-11 13:24:38', 1),
(39, 1, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuygun', 'test', NULL, NULL, 'F', NULL, '2020-03-11 13:30:30', '2020-03-11 13:30:30', 1),
(40, 24, NULL, 'cXMMaoW2NiQ3UUDc38A7GucajsitciahUghQCje/5F0=<ENC>', 0, 'enuygun', 'test', NULL, NULL, 'F', NULL, '2020-03-11 13:34:56', '2020-03-11 13:40:39', 1),
(41, 25, NULL, 'Kp+jReGCobHWGPhbzR9MdyyXpjTerhqtlqs8Tmoqi64=<ENC>', 0, 'Cem', 'Unalan', NULL, NULL, 'M', NULL, '2020-03-18 15:27:54', '2020-03-23 13:46:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `RefreshToken`
--

CREATE TABLE `RefreshToken` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_at` int(11) NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RefreshToken`
--

INSERT INTO `RefreshToken` (`id`, `client_id`, `user_id`, `token`, `expires_at`, `scope`) VALUES
(1, 1, 25, 'NzAwMjE3YTExZDEzMGU1OGE5MTBhNzBmOTIyZTFmYTc4YTg1YjQ0MDNmMDIyYjQ1MDVkNTM5MDA4OWNjODY5NQ', 1647959473, NULL),
(2, 1, 25, 'Y2NiOGQ4Mjc2NzJkODM0ZjA3MTAyZDZkMTNhNGRjM2E0NzAyZDc2YjQxZjlmMDA2NjI3MWQ0ZTEzM2M0MzI0ZQ', 1648015269, NULL),
(3, 1, 25, 'ZTM1NTM4N2M0M2Y3ZmQ0NGZlODNmNGE4ZmU3NDEwZGNhZTBiMjZhMjVhYjVjYWZmODJkOTJkMGI4NzE1NjE5NQ', 1648023840, NULL),
(4, 1, 25, 'Zjc5ZTY1ZGZjNGQ0YWI0ZDY5Y2JlM2NlNDMyMzA2OWFkZjljYWQ2OWMyNDJhZGM0ZDg5ODRmYmQ5NjI1YjRjNA', 1648030712, NULL),
(5, 1, 25, 'YTgzMTFlYzQxNjE3MDliOGVhYWVhNDUwMzc2YjRlZWEwMzMxN2IxMjY0NzM2ODQ0Nzg5MTU2YWUyNjQyYjdiMQ', 1648037249, NULL),
(6, 1, 25, 'MzI4MTQxZGIwNTQ1ODc1ZTZhNTk0ZmIxOWFkZGEyYTg3ZTEyNDEzZWEwZjkzYjU5NWM0ODkzMDMzYzM5M2ZhNg', 1648039018, NULL),
(7, 1, 25, 'NDI3YjhkYTAxNGIzN2VkYzVkZmE3Mzk0YTc5ZjJjNGJmODhmMGNkNzY0NGFiYWVmNTBiOGIyOGIxODFjMzQ4ZQ', 1648043218, NULL),
(8, 1, 25, 'M2E0NmYxOGViZmNiZDNmMjEwNWNlMzMxZTU2NGQ1NzNmOGIxNDhlNjgxNjM3MzA5OTY5Yzk4NGY4YzllNzgzZg', 1648104336, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photoUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `activationKey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isSubscriber` tinyint(1) NOT NULL,
  `facebookShare` tinyint(1) NOT NULL,
  `settings` longtext COLLATE utf8_unicode_ci,
  `passengerData_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `firstname`, `lastname`, `photoUrl`, `createdAt`, `updatedAt`, `isActive`, `isDeleted`, `activationKey`, `isSubscriber`, `facebookShare`, `settings`, `passengerData_id`) VALUES
(1, 'ece.uzunoglu_30@enuygun.com', 'ece.uzunoglu_30@enuygun.com', 'ece.uzunoglu_30@enuygun.com', 'ece.uzunoglu_30@enuygun.com', 1, 's97ts9qiddwgsggo4c40scowscgggo0', 'B0gP6mNuB+yHH96v0fTWOP+Wzed8qkmQ5OKnbK7rZixvt0+n+tGgbOjo6j25GY++bepbZWQ+4b6HvmWZpjcMbw==', '2020-03-11 11:45:13', 0, 0, NULL, 'riNYdxvELOGbPcaF9rn8itacm5_nD_YpGbyPfbDDV_w', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-02 11:45:46', '2020-03-11 11:45:13', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(2, 'ebru.yilmaz_1@enuygun.com', 'ebru.yilmaz_1@enuygun.com', 'ebru.yilmaz_1@enuygun.com', 'ebru.yilmaz_1@enuygun.com', 1, 'glezsul9mdk4oscskccgw0go0g0gc8c', 'YJfhQsXD428UWxvUJ2MkDkd7HJVz7AYo2zB8KE4pnGNGF2kWRt8vdAbbwF3GHkjcqiaFEcwAHUskC6lRi2MpQg==', '2020-03-06 17:54:57', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Ebru', 'yılmaz', NULL, '2020-03-02 11:55:10', '2020-03-06 17:54:57', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', 18),
(3, 'yasin.ates.1@enuygun.com', 'yasin.ates.1@enuygun.com', 'yasin.ates.1@enuygun.com', 'yasin.ates.1@enuygun.com', 1, 'o6ey43lfhhcw84c08g0o80o0g0wgwkw', 'yn+R3VjODqJ0wPQ/O2vObM7tz8ufrBQux9VNP4I3061HlcOYkjBjfa5CcIJ1RceQI8gIY0oQmTnaL1CU6V7F8A==', '2020-03-18 07:19:09', 0, 0, NULL, 'CEIvumfm6y6afXZ9LJdraDRtL-ar9LZ1-ancSH-262Y', NULL, 'a:0:{}', 0, NULL, 'Yasin', 'ATEŞ', NULL, '2020-03-02 11:59:03', '2020-03-18 07:19:09', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', 8),
(4, 'cem@cemunalan.com.tr', 'cem@cemunalan.com.tr', 'cem@cemunalan.com.tr', 'cem@cemunalan.com.tr', 1, '5n73v5zp8dc0o0s0kc8w48kwosc4sg4', '46/+cA7ZxXbLnK18RQePNMgfesHpxPdqWahjeWg62lY/PZrU72G8VWX0qU83WmvjyB63eUBfW3e856GS21A3aA==', NULL, 0, 0, NULL, '6f5bZYmeMUn35QhIvrJZyAvRcbl6MegVv4MiF3o8xPw', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-02 15:18:11', '2020-03-02 15:18:12', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(5, 'denemeler@denemeler.com', 'denemeler@denemeler.com', 'denemeler@denemeler.com', 'denemeler@denemeler.com', 1, 'jotzdktwyzkgs008ssk4ocwwwsg0c8w', 'kxiPBxn+5FZT2fHzA7M+1m7mouyjZO5hr7q5SsOaTDu1yjUi01T6v3EXCYjlXztAa9fAcGm6byCWTqQDj2cYQQ==', '2020-03-09 07:32:29', 0, 0, NULL, 'j34fM9ZaxYYgp3QAqyDjIbNzLIGg8Nrk6z-v2a1AW8U', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-02 13:52:44', '2020-03-09 07:32:29', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(6, 'ebru.yilmaz_5@enuygun.com', 'ebru.yilmaz_5@enuygun.com', 'ebru.yilmaz_5@enuygun.com', 'ebru.yilmaz_5@enuygun.com', 1, '6zw9qv7r5l0kswg0g4484s4k08wkc4w', 'W7zLFYMdTBI2z5+HxqxBsnmiERwn/M5q+TaTBhhjYROO0/magKJkPKnbAwIE5DlM/cyKpMZ86mvVg9Kq+oQqYg==', '2020-03-04 13:21:33', 0, 0, NULL, 'vQJkJ3p_GdrJg9-GrpFYQtKH8dUUDnrXsjEBx3J2osk', NULL, 'a:0:{}', 0, NULL, 'Ebru', 'Yılmaz', NULL, '2020-03-02 17:08:06', '2020-03-04 13:23:16', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', 21),
(7, 'ece.uzunoglu_40@enuygun.com', 'ece.uzunoglu_40@enuygun.com', 'ece.uzunoglu_40@enuygun.com', 'ece.uzunoglu_40@enuygun.com', 1, 'sa3hk5ozycggcc4sgw0og4kk84cw8so', 'VqXl1grNC0t69GTtrwiakrM8StU+aqVj5aoPr3qGN6zZ5UhPiGOIvUu4WmMhOnIETlE1ZdXVuEZT2dRuJNdGrA==', '2020-03-03 17:05:59', 0, 0, NULL, 'iLFmCUHDBSDD1qALHpqMSAeXC7xtwE569sx9mvd2bP8', NULL, 'a:0:{}', 0, NULL, 'enuygun', 'test', NULL, '2020-03-02 17:18:49', '2020-03-03 17:06:52', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', 14),
(8, 'ebru.yilmaz_3@enuygun.com', 'ebru.yilmaz_3@enuygun.com', 'ebru.yilmaz_3@enuygun.com', 'ebru.yilmaz_3@enuygun.com', 1, '3k2f1rf4sjgg8kk4sooo8ko0g048w44', 'onfffSEs0B4s8FmcJ9fxlPAcvkzb+yot5+SbJPbpgrSJGSHvGHEU5AncnLUfJw1Oy8mw7aUTKl1022yv2hqQEw==', NULL, 0, 0, NULL, 'LTg-W1oYYtzjWFNgaRGjDHHsCsR-vp264NB5h551Kyg', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-02 17:42:21', '2020-03-02 17:42:22', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(9, 'ece.uzunoglu_50@enuygun.com', 'ece.uzunoglu_50@enuygun.com', 'ece.uzunoglu_50@enuygun.com', 'ece.uzunoglu_50@enuygun.com', 1, '68qexgl7euosw0goswws48gk44wkc4c', '+Enah001/14RyP2RaAPMZI4F/MeOeuHxXe9nEKzl3A9ZhHacrYrxK8EkyK/VPobvFUxK+OXMx0rrvZZrBcP45A==', NULL, 0, 0, NULL, 'lp9QzN5weFCNxuEc2LCK5NhDozyNyX4Te3cuutFLxRU', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-03 15:39:59', '2020-03-03 15:40:00', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(10, 'cem@example.com', 'cem@example.com', 'cem@example.com', 'cem@example.com', 1, 'pdwavnrdz6sw0oo4c4o08wgckkcc0cc', 'TwrNBsE/BplqWIGXGt7Iyypi7lnYIaCoTPAUChGEPkwNbYHflCSSq1X0AyXzA0c/Pv0wf9ujoWDfHlTzhTanlQ==', NULL, 0, 0, NULL, '9w_3Uf87apAFEKO1AzHAI-WwYdwyvjhtXDlfLO9gluk', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-03 17:19:10', '2020-03-03 17:19:15', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(11, 'cem2@example.com', 'cem2@example.com', 'cem2@example.com', 'cem2@example.com', 1, '53c5tnt8ho8wksggc484oo8sggcskck', '0OSCxCV21rRZWlSQWnyzBKp2m4erCPOFafskl08e3yq51Vea8ztg9iHPredE0nTMRdIlWOexbJefo3m5p/SIlw==', '2020-03-10 10:19:33', 0, 0, NULL, 'rkBWNXiwMzoxO7BnS_qccz7f2VOBMuHxltqWrJjPjJA', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-03 17:24:13', '2020-03-10 10:19:33', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(12, 'ece.uzunoglu_60@enuygun.com', 'ece.uzunoglu_60@enuygun.com', 'ece.uzunoglu_60@enuygun.com', 'ece.uzunoglu_60@enuygun.com', 1, 'hjyhsd3xv1ckc8wk0okoc48w4o40kwc', '6lAeMS9cQ0yQT/RLFUHUr7rVqGfJyBsXEzwYjPgrQu6DPYD0IW4GVcwS+pxbp5UmSTPJHvD7+YU9Exed8wXjMA==', NULL, 0, 0, NULL, '5fudIvfF4B3UT4hnQJy0i2sZZezuS9C6udCjadnWPyI', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-03 17:29:42', '2020-03-03 17:29:43', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(13, 'ebru.yilmaz_2@enuygun.com', 'ebru.yilmaz_2@enuygun.com', 'ebru.yilmaz_2@enuygun.com', 'ebru.yilmaz_2@enuygun.com', 1, '4eip1ngy582sw4w44ww8c4scwc848ks', 'kOw1YhpJ6CEpGeLoyzgCZchvHnUuzOoeUU4amfLQWxFxPzbxv2L+9Sj5dJII4yj2Ipu4ATJf2u0tDYAtRkP9cQ==', '2020-03-05 17:32:57', 0, 0, NULL, 'L2CDHSihhZ8zvzRcpjw-2bg-HD8mbN5WEL0uru0f6e0', NULL, 'a:0:{}', 0, NULL, 'Ebru', 'Yılmaz', NULL, '2020-03-04 09:34:32', '2020-03-05 17:32:57', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', 20),
(14, 'ebru.yilmaz_6@enuygun.com', 'ebru.yilmaz_6@enuygun.com', 'ebru.yilmaz_6@enuygun.com', 'ebru.yilmaz_6@enuygun.com', 0, '5lay42hyakwsowsogo0cogsoo48wsgw', 'cCdsv1fWk2kbF8NofvAGxN9Z4UHev0KiwumloC6Dmm3DxIpjDZFp9jH8LhjkCR1mIUQm6rBFoeo+TgnxmS1h7Q==', '2020-03-05 18:49:45', 0, 0, NULL, 'Ae576VMYknsL3QkyQujBS4XTrJ1Qel94kQycp8-izOo', NULL, 'a:0:{}', 0, NULL, 'Ebru', 'Yılmaz', NULL, '2020-03-04 17:01:06', '2020-03-05 18:49:45', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', 22),
(15, 'ece.uzunoglu_70@enuygun.com', 'ece.uzunoglu_70@enuygun.com', 'ece.uzunoglu_70@enuygun.com', 'ece.uzunoglu_70@enuygun.com', 1, 'tt1gvmeknf48k4o0wgos0skswk4oksc', 'geFpjdDuoLnz2PoQXUGd0ZkDL1exkNQ3IyePz2kbVrQs/0jqFbeP/2uSg+7YawxHNgH+Q2+x16FFSFSqd97GrQ==', NULL, 0, 0, NULL, '-Gajb1ykLMZMXWXscAMpncDsDur_OY1BpZAtV2iHaMQ', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-09 10:04:06', '2020-03-09 10:09:35', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(16, 'ebru.yilmaz_10@enuygun.com', 'ebru.yilmaz_10@enuygun.com', 'ebru.yilmaz_10@enuygun.com', 'ebru.yilmaz_10@enuygun.com', 1, 'cbq3dotdbyg484kg8cgskw88o00gk88', '/7PnPIuy4ZvfqYj0vT3EAVcYw+UQf1SM5JWZcIbPCZieT9TV1/O8QNdBxJlK8B3ixTXneaMT8hSpo0rj8hJcXA==', '2020-03-11 13:43:12', 0, 0, NULL, 'Q2915r9TDqn5SCkZSBLaCn3Y451mJfU_2DRsTtG9YUQ', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-09 10:05:07', '2020-03-11 13:43:12', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(17, 'ebru.yilmaz_11@enuygun.com', 'ebru.yilmaz_11@enuygun.com', 'ebru.yilmaz_11@enuygun.com', 'ebru.yilmaz_11@enuygun.com', 1, '2cmi4tas6izo8csgo8go0gksswggoo4', 'GOSNzJ+da7OU5kgFzT4KZ+cqQGmcPTkzkVtZRQNZs/xIwB+dygVwr7WMRtL6aOOIsaVti6L6pe6sjnW6gYefuA==', '2020-03-11 13:20:05', 0, 0, NULL, 'mlIQDvdJ-31lbnYTk3yPMK3gArfreg-VBlZy9YHhnjk', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-09 10:22:07', '2020-03-11 13:20:05', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(18, 'ebru.yilmaz_12@enuygun.com', 'ebru.yilmaz_12@enuygun.com', 'ebru.yilmaz_12@enuygun.com', 'ebru.yilmaz_12@enuygun.com', 1, 'l372y8hjjbk8gc0cc4owososko80c8o', 'w982fwNB6nP1QYAOxcXZmXwNNqg9M03yqowfJXBshLqy9a5SuQ75ua0oDmV/z7CyhQxcjU7S+MVFkAz/9GLFXg==', NULL, 0, 0, NULL, 'gG9J1uZLbnk4htK5DegG2mJUnta9r3vsULD9J9qV4tI', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-09 17:40:57', '2020-03-09 17:40:58', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(19, 'ece.uzunoglu_90@enuygun.com', 'ece.uzunoglu_90@enuygun.com', 'ece.uzunoglu_90@enuygun.com', 'ece.uzunoglu_90@enuygun.com', 1, '6dnwuhhzsc08o8s8ock8ck8kko8swsw', 'qGGWyeGK9REd1F7xokgpQqD1EX5V/He+cRm4yjSoAZ9RJQW0rAQ3F+RpTN4fZfD7euH3ExK04q0f+EO5HV9Lzw==', '2020-03-10 10:45:13', 0, 0, NULL, 'tchG288nxUzLyxnPjaYuoZscRhI6wWFLVtPVM-pM6Io', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-10 09:17:51', '2020-03-10 10:45:13', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(20, 'ebru.yilmaz_15@enuygun.com', 'ebru.yilmaz_15@enuygun.com', 'ebru.yilmaz_15@enuygun.com', 'ebru.yilmaz_15@enuygun.com', 0, '46hssevtd12c84g8o4gc00k84ocsw40', '7oypiNhG9xB2tpO6nZTzTmPdnX8z71hiBFrI1L0z/N0k95l8/KOsdW1eDcxqyRP7e1PKArKUvA8zpCAYxuXJ1A==', NULL, 0, 0, NULL, '9khggYXQl_BZAaiN_4XAahvNI6yKIM4MPokz5-_4nos', NULL, 'a:0:{}', 0, NULL, 'Ebru', 'Yılmaz', NULL, '2020-03-10 13:26:59', '2020-03-10 13:27:13', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', 31),
(21, 'ece.uzunoglu_100@enuygun.com', 'ece.uzunoglu_100@enuygun.com', 'ece.uzunoglu_100@enuygun.com', 'ece.uzunoglu_100@enuygun.com', 1, '4ky3sablrbeo8gs8g4swsgs48oscwcs', 'I+84sD/aZcB/zvy0MQHh/hI7rtAQvoySRPUP7YIDlRRW4QfR99gQlzM0IkjcdH+JhUsOZr74fojBnwsoe9GJOg==', '2020-03-11 11:44:55', 0, 0, NULL, 'PzLVUeCbJmOyLwYRE3PHosMju1GHw-TE_OrLGLZR5Lw', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-10 14:01:18', '2020-03-11 11:44:55', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(22, 'cem3@example.com', 'cem3@example.com', 'cem3@example.com', 'cem3@example.com', 1, '6xex8g5srkw0oswskwosoowssgcogk4', 'cSOYZU+m03cAOzjQL+HwPtLzDJqQk+xgPfaghfxhfawkvBHGR7/ef5nrhxY3wDJle2AZiG8HSgxyM737Ospkzg==', '2020-03-18 15:24:51', 0, 0, NULL, 'fmafi21i4KDQWdJwlpZ5nYn3GpKNuKmoEUJBgGsOvQs', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-10 14:02:07', '2020-03-18 15:24:51', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(23, 'ece.uzunoglu_110@enuygun.com', 'ece.uzunoglu_110@enuygun.com', 'ece.uzunoglu_110@enuygun.com', 'ece.uzunoglu_110@enuygun.com', 1, '8lko6ojxw84kwkcc88sk80c8o0s88gs', 'FDSg+cAqOOuj9xZWCK0yGd+TNufkmCIHkVdfKidKQC3lwAFgIRNbu68PUeH1r6PZGump2cKVOMk8YAshC6H+PA==', NULL, 0, 0, NULL, 'vq3sy8J0-jQtGyOUhzcOQJX9xMCx3Xro4VCXzYBA7ng', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-11 13:20:34', '2020-03-11 13:20:35', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(24, 'ece.uzunoglu_120@enuygun.com', 'ece.uzunoglu_120@enuygun.com', 'ece.uzunoglu_120@enuygun.com', 'ece.uzunoglu_120@enuygun.com', 1, '43mhhw9gt2eccgsc0s408gwso8c8k88', 'zM0dV/arpQoY+91ZRiQZywtuRHEGM2POuTxfJDE0Xeg6tHZ3S0wOCuiKJoF+AtAYfonAO11Uw8judwbuvaF3CQ==', NULL, 0, 0, NULL, 'pDISwqFVibc66-Ntd9i2QFrUJrnRt1oBNHA49JfkvTk', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-11 13:33:10', '2020-03-11 13:33:11', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL),
(25, 'cl', 'cl', 'test_api@example.com', 'test_api@example.com', 1, 'bnkqot91s944444ogok84g0g408w84s', 'i9339lcI7Hkc2hxS5EumrakHVzcfg17NfUCZe3BdW9TGDH3oJI5pxdUsayPunehxxCJPPWESS+Q4T/ungD/s8g==', '2020-03-23 16:12:02', 0, 0, NULL, 'lhijLuTOBl11-Ei6__xC_K246RBZnjaizGAizi9itVo', NULL, 'a:0:{}', 0, NULL, NULL, NULL, NULL, '2020-03-18 15:27:12', '2020-03-23 16:12:02', 0, 0, NULL, 1, 1, '{\"firstLoginAttempt\":true}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_data`
--

CREATE TABLE `users_data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `publicId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passportNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passportCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilePhoneNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_history` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_data`
--

INSERT INTO `users_data` (`id`, `user_id`, `city`, `country`, `address`, `gender`, `birthdate`, `publicId`, `passportNumber`, `passportCountry`, `mobilePhoneNumber`, `zip`, `search_history`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90 5382930052', NULL, NULL),
(2, 2, NULL, NULL, NULL, 'F', '1981-02-07', NULL, NULL, NULL, '90 5382930052', NULL, NULL),
(3, 3, NULL, NULL, NULL, 'M', '1945-04-12', NULL, NULL, NULL, '90 5392348773', NULL, NULL),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, NULL, NULL, NULL, 'F', '1992-06-06', NULL, NULL, NULL, '90 5342961909', NULL, NULL),
(7, 7, NULL, NULL, NULL, 'F', '1991-02-03', '45436878656', NULL, NULL, '90 5322484091', NULL, NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 5382930052', NULL, NULL),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5322484091', NULL, NULL),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5322484091', NULL, NULL),
(12, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5382930052', NULL, NULL),
(13, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90 5342961909', NULL, NULL),
(14, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90 5342961909', NULL, NULL),
(15, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5382930052', NULL, NULL),
(16, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5342961909', NULL, NULL),
(17, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5342961909', NULL, NULL),
(18, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5382930052', NULL, NULL),
(20, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90 5342961909', NULL, NULL),
(21, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5382930052', NULL, NULL),
(22, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5322484091', NULL, NULL),
(23, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5382930052', NULL, NULL),
(24, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5382930052', NULL, NULL),
(25, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 90 5322484091', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_facebook`
--

CREATE TABLE `users_facebook` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `facebookId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebookAccessToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebookData` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_google`
--

CREATE TABLE `users_google` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `googleId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleAccessToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleData` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_invitation`
--

CREATE TABLE `user_invitation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `public_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` datetime NOT NULL,
  `related_booking` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `private_key` longtext COLLATE utf8_unicode_ci,
  `public_key` longtext COLLATE utf8_unicode_ci,
  `wallet_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `user_id`, `private_key`, `public_key`, `wallet_address`, `corporate_id`, `type`) VALUES
(1, 2, '-----BEGIN EC PRIVATE KEY-----\nMIGkAgEBBDAO1Z3czzTXbAyjeyoHTAWwHpBBfUEYQ6d1nkrc6bsz0JLrUzabsoly\nqk034a4WGdagBwYFK4EEACKhZANiAAQm0y7q3RFKWlspiS1PgqA50cbgSGom+P8E\nKxLwCSGxUwfEBxmZRBOgSPnrC2gbmuJ4kLLw8RPP8GNovHebgI/82AmXDL+HCfRy\n/JiYoXGc5zMAbz9CW+UncMMaoNZZSI0=\n-----END EC PRIVATE KEY-----', '-----BEGIN PUBLIC KEY-----\nMHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEJtMu6t0RSlpbKYktT4KgOdHG4EhqJvj/\nBCsS8AkhsVMHxAcZmUQToEj56wtoG5rieJCy8PETz/BjaLx3m4CP/NgJlwy/hwn0\ncvyYmKFxnOczAG8/QlvlJ3DDGqDWWUiN\n-----END PUBLIC KEY-----', '2DdUNqxgWU8XMFK8hEHHED76nPmFs9XwkycQEGBYJr5qoNU6uQ3fcqZB4T948c', NULL, 0),
(2, 13, '-----BEGIN EC PRIVATE KEY-----\nMIGkAgEBBDD307xudmdP6DRaxEoOq0ZbhzgF8+08wdwzNp8IgMQ2ac3rmhtXVXOX\nzCWC99nB/0ugBwYFK4EEACKhZANiAATOL7IzIDv+V8wLhR5ta/NbsMJcSPv0bk+p\naSSEFv5GXVGG0DsSNVyKC/00FBnylyw8dKkjChXXKLd5BJWVC45WOK+lRWFx7lUR\nr5hn1K66DK0cGlxK1W/UgzMeGxMCSHE=\n-----END EC PRIVATE KEY-----', '-----BEGIN PUBLIC KEY-----\nMHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEzi+yMyA7/lfMC4UebWvzW7DCXEj79G5P\nqWkkhBb+Rl1RhtA7EjVcigv9NBQZ8pcsPHSpIwoV1yi3eQSVlQuOVjivpUVhce5V\nEa+YZ9SuugytHBpcStVv1IMzHhsTAkhx\n-----END PUBLIC KEY-----', '2DbqsFUZryzmMdMoL2S9DCEV5hJvGBC4AUKAuJD83vYWHBhK52bbUgHJLLXWQR', NULL, 0),
(3, 13, '-----BEGIN EC PRIVATE KEY-----\nMIGkAgEBBDBSYvGnmbwyyrntW2qLI9i0QDTC03xt0+pNB8UZYxyW5CjCBdVbTSdS\njNDDqK7SGaCgBwYFK4EEACKhZANiAASquuP+1YhN6cMfZIul3EtBUsFtddRSV9IH\n7ot0wOmNHfLh+WUFqmREEh0TvI2QZJXQ+7B85xYVWnRDRE2NgI9/pgORLFuBkHTQ\nRtX+xs0xnlDHJefo12DSMw1wg2n9Aig=\n-----END EC PRIVATE KEY-----', '-----BEGIN PUBLIC KEY-----\nMHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEqrrj/tWITenDH2SLpdxLQVLBbXXUUlfS\nB+6LdMDpjR3y4fllBapkRBIdE7yNkGSV0PuwfOcWFVp0Q0RNjYCPf6YDkSxbgZB0\n0EbV/sbNMZ5QxyXn6Ndg0jMNcINp/QIo\n-----END PUBLIC KEY-----', '2DcVpRhnJGSn6U5bGSvUkGeASHYDBediXC38Yki87bhLxVbPAPrh9jmkaibYaa', 1, 1),
(4, 16, '-----BEGIN EC PRIVATE KEY-----\nMIGkAgEBBDBGpHNKVJHLGjPccItvvEPh7LiA6CdEcrU/vo8i0EyU+egUmYjuxJLB\nHtAJISVZwuugBwYFK4EEACKhZANiAAQZ5V0xlNx3/WKDhP3ESmAgDhsu71np92aZ\nkmP4gRyw3ST5lZl6Yk6WAGBr25YX48Ftt60txxVlwCdTszpJPVJaiDBk5EoRHTBV\nGOK0rNdu0L/YmyQ+tUE4PKXLOdSIaxs=\n-----END EC PRIVATE KEY-----', '-----BEGIN PUBLIC KEY-----\nMHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEGeVdMZTcd/1ig4T9xEpgIA4bLu9Z6fdm\nmZJj+IEcsN0k+ZWZemJOlgBga9uWF+PBbbetLccVZcAnU7M6ST1SWogwZORKER0w\nVRjitKzXbtC/2JskPrVBODylyznUiGsb\n-----END PUBLIC KEY-----', '2DsSyeEKaF194eCi7bpt1NaJ9V9WEo2ECz39SgarpTukKhCJa4gt3Vz4Dui7mn', NULL, 0),
(5, 23, '-----BEGIN EC PRIVATE KEY-----\nMIGkAgEBBDCbbVkzqNM2VWwU8fWRHZO2ZN9qb3jfR9JAy9No500HcWQDoElQt1vc\nopSieHBaYJ+gBwYFK4EEACKhZANiAAS2fWjuBJmrShvCPtMvO2dR8SWxGadpHl9K\nJgWYPb35tFGmDgrLbvXc/egSxlAS/ZZJneNYMXyhouYox8nHBoEcJ6RLCXMUFjHL\ntvPZCHSYKFrMwzndSWPCOuwa4m3lngk=\n-----END EC PRIVATE KEY-----', '-----BEGIN PUBLIC KEY-----\nMHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEtn1o7gSZq0obwj7TLztnUfElsRmnaR5f\nSiYFmD29+bRRpg4Ky2713P3oEsZQEv2WSZ3jWDF8oaLmKMfJxwaBHCekSwlzFBYx\ny7bz2Qh0mChazMM53UljwjrsGuJt5Z4J\n-----END PUBLIC KEY-----', '2DsTHRwXn1fp3egd5het9JG5PxGwxnsNcjMEhXkThp52ndS5VRQP39zmrjM6Sg', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AccessToken`
--
ALTER TABLE `AccessToken`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B39617F519EB6921` (`client_id`),
  ADD KEY `IDX_B39617F5A76ED395` (`user_id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AC74095AA76ED395` (`user_id`),
  ADD KEY `IDX_AC74095ACD147EEF` (`corporate_id`);

--
-- Indexes for table `airline_agreement`
--
ALTER TABLE `airline_agreement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_38915D05B56CCFF` (`airline_code`),
  ADD KEY `IDX_38915D05CD147EEF` (`corporate_id`);

--
-- Indexes for table `AuthCode`
--
ALTER TABLE `AuthCode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F1D7D17719EB6921` (`client_id`),
  ADD KEY `IDX_F1D7D177A76ED395` (`user_id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4C258FDA76ED395` (`user_id`),
  ADD KEY `IDX_4C258FDCD147EEF` (`corporate_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_random_id` (`random_id`);

--
-- Indexes for table `Corporate`
--
ALTER TABLE `Corporate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9DC25501A76ED395` (`user_id`),
  ADD KEY `IDX_9DC25501F98F144A` (`logo_id`),
  ADD KEY `IDX_9DC25501DE95C867` (`sector_id`);

--
-- Indexes for table `CorporateLink`
--
ALTER TABLE `CorporateLink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3327E7C4CD147EEF` (`corporate_id`);

--
-- Indexes for table `CorporateUser`
--
ALTER TABLE `CorporateUser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8818A87CA76ED395` (`user_id`),
  ADD KEY `IDX_8818A87CCD147EEF` (`corporate_id`),
  ADD KEY `IDX_8818A87CA7B4A7E3` (`invited_by_id`),
  ADD KEY `IDX_8818A87CAE80F5DF` (`department_id`),
  ADD KEY `IDX_8818A87C25D67BAE` (`first_approver_id`),
  ADD KEY `IDX_8818A87CD2C6EA72` (`second_approver_id`);

--
-- Indexes for table `corporate_application`
--
ALTER TABLE `corporate_application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B8F20C1BA76ED395` (`user_id`);

--
-- Indexes for table `corporate_file`
--
ALTER TABLE `corporate_file`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BA95E8AEA9FDD75` (`media_id`),
  ADD KEY `IDX_8BA95E8ACD147EEF` (`corporate_id`),
  ADD KEY `IDX_8BA95E8A16678C77` (`uploader_id`);

--
-- Indexes for table `corporate_sector`
--
ALTER TABLE `corporate_sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CD1DE18ACD147EEF` (`corporate_id`),
  ADD KEY `IDX_CD1DE18A727ACA70` (`parent_id`);

--
-- Indexes for table `flight_request`
--
ALTER TABLE `flight_request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B87B6C09ED442CF4` (`requester_id`),
  ADD UNIQUE KEY `UNIQ_B87B6C09983624B7` (`requested_id`),
  ADD UNIQUE KEY `UNIQ_B87B6C09CD147EEF` (`corporate_id`);

--
-- Indexes for table `flight_request_note`
--
ALTER TABLE `flight_request_note`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9AC003C41BC7E6B6` (`writer_id`),
  ADD UNIQUE KEY `UNIQ_9AC003C4670F7218` (`flight_request_id`);

--
-- Indexes for table `gray_list`
--
ALTER TABLE `gray_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EE5D0A68A76ED395` (`user_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F06D39705E237E06` (`name`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_906517448BAC62AF` (`city_id`),
  ADD KEY `IDX_9065174475E23604` (`town_id`),
  ADD KEY `IDX_90651744A76ED395` (`user_id`),
  ADD KEY `IDX_90651744CD147EEF` (`corporate_id`),
  ADD KEY `IDX_90651744AE80F5DF` (`department_id`);

--
-- Indexes for table `invoice_department`
--
ALTER TABLE `invoice_department`
  ADD PRIMARY KEY (`department_id`,`invoice_id`),
  ADD KEY `IDX_34C19114AE80F5DF` (`department_id`),
  ADD KEY `IDX_34C191142989F1FD` (`invoice_id`);

--
-- Indexes for table `loyalty_card`
--
ALTER TABLE `loyalty_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EAB8BCBD55F5692` (`airlineCode`),
  ADD KEY `IDX_EAB8BCBDA76ED395` (`user_id`),
  ADD KEY `IDX_EAB8BCBD217BBB47` (`person_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_info`
--
ALTER TABLE `media_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8CEEE84EA9FDD75` (`media_id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BF5476CAA76ED395` (`user_id`);

--
-- Indexes for table `passport`
--
ALTER TABLE `passport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B5A26E084502E565` (`passenger_id`),
  ADD KEY `IDX_B5A26E08F026BB7C` (`country_code`);

--
-- Indexes for table `PaxReportDetail`
--
ALTER TABLE `PaxReportDetail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`,`type`,`firstname`,`lastname`),
  ADD UNIQUE KEY `requester_id` (`requester_id`,`type`,`booking_id`),
  ADD KEY `IDX_4205AAB4ED442CF4` (`requester_id`),
  ADD KEY `IDX_4205AAB4EBF3C9A` (`confirmer_id`),
  ADD KEY `IDX_4205AAB4CD147EEF` (`corporate_id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A25CC7D3A76ED395` (`user_id`),
  ADD KEY `IDX_A25CC7D3CD147EEF` (`corporate_id`),
  ADD KEY `birthdate` (`birthdate`);

--
-- Indexes for table `RefreshToken`
--
ALTER TABLE `RefreshToken`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7142379E19EB6921` (`client_id`),
  ADD KEY `IDX_7142379EA76ED395` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_1483A5E9A0D96FBF` (`email_canonical`),
  ADD KEY `IDX_1483A5E945E54C64` (`passengerData_id`);

--
-- Indexes for table `users_data`
--
ALTER TABLE `users_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_627ABD6DA76ED395` (`user_id`);

--
-- Indexes for table `users_facebook`
--
ALTER TABLE `users_facebook`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1035E33AA76ED395` (`user_id`);

--
-- Indexes for table `users_google`
--
ALTER TABLE `users_google`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6AFB7BC1A76ED395` (`user_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `IDX_FF8AB7E0A76ED395` (`user_id`),
  ADD KEY `IDX_FF8AB7E0FE54D947` (`group_id`);

--
-- Indexes for table `user_invitation`
--
ALTER TABLE `user_invitation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `IDX_567AA74EA76ED395` (`user_id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_user_id_type_unq` (`user_id`,`type`),
  ADD KEY `FK_wallet_corporate` (`corporate_id`),
  ADD KEY `UNIQ_7C68921FA76ED395` (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AccessToken`
--
ALTER TABLE `AccessToken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `airline_agreement`
--
ALTER TABLE `airline_agreement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AuthCode`
--
ALTER TABLE `AuthCode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Client`
--
ALTER TABLE `Client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Corporate`
--
ALTER TABLE `Corporate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `CorporateLink`
--
ALTER TABLE `CorporateLink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CorporateUser`
--
ALTER TABLE `CorporateUser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `corporate_application`
--
ALTER TABLE `corporate_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `corporate_file`
--
ALTER TABLE `corporate_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `corporate_sector`
--
ALTER TABLE `corporate_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_request`
--
ALTER TABLE `flight_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_request_note`
--
ALTER TABLE `flight_request_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gray_list`
--
ALTER TABLE `gray_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loyalty_card`
--
ALTER TABLE `loyalty_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_info`
--
ALTER TABLE `media_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `passport`
--
ALTER TABLE `passport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `PaxReportDetail`
--
ALTER TABLE `PaxReportDetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `RefreshToken`
--
ALTER TABLE `RefreshToken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users_data`
--
ALTER TABLE `users_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users_facebook`
--
ALTER TABLE `users_facebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_google`
--
ALTER TABLE `users_google`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_invitation`
--
ALTER TABLE `user_invitation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AccessToken`
--
ALTER TABLE `AccessToken`
  ADD CONSTRAINT `FK_B39617F519EB6921` FOREIGN KEY (`client_id`) REFERENCES `Client` (`id`),
  ADD CONSTRAINT `FK_B39617F5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `FK_AC74095AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_AC74095ACD147EEF` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`);

--
-- Constraints for table `airline_agreement`
--
ALTER TABLE `airline_agreement`
  ADD CONSTRAINT `FK_38915D05CD147EEF` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`);

--
-- Constraints for table `AuthCode`
--
ALTER TABLE `AuthCode`
  ADD CONSTRAINT `FK_F1D7D17719EB6921` FOREIGN KEY (`client_id`) REFERENCES `Client` (`id`),
  ADD CONSTRAINT `FK_F1D7D177A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `FK_4C258FDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_4C258FDCD147EEF` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`);

--
-- Constraints for table `Corporate`
--
ALTER TABLE `Corporate`
  ADD CONSTRAINT `FK_9DC25501A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_9DC25501DE95C867` FOREIGN KEY (`sector_id`) REFERENCES `corporate_sector` (`id`),
  ADD CONSTRAINT `FK_9DC25501F98F144A` FOREIGN KEY (`logo_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `CorporateLink`
--
ALTER TABLE `CorporateLink`
  ADD CONSTRAINT `FK_3327E7C4CD147EEF` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`);

--
-- Constraints for table `CorporateUser`
--
ALTER TABLE `CorporateUser`
  ADD CONSTRAINT `FK_8818A87C25D67BAE` FOREIGN KEY (`first_approver_id`) REFERENCES `CorporateUser` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8818A87CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_8818A87CAE80F5DF` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8818A87CCD147EEF` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`),
  ADD CONSTRAINT `FK_8818A87CD2C6EA72` FOREIGN KEY (`second_approver_id`) REFERENCES `CorporateUser` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_CorporateUser_invited_by` FOREIGN KEY (`invited_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `corporate_application`
--
ALTER TABLE `corporate_application`
  ADD CONSTRAINT `FK_corporate_application_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `corporate_file`
--
ALTER TABLE `corporate_file`
  ADD CONSTRAINT `FK_corporate_file_corporate` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`),
  ADD CONSTRAINT `FK_corporate_file_media` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `FK_corporate_file_uploader` FOREIGN KEY (`uploader_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `FK_CD1DE18A727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `FK_CD1DE18ACD147EEF` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`);

--
-- Constraints for table `flight_request`
--
ALTER TABLE `flight_request`
  ADD CONSTRAINT `FK_B87B6C09CD147EEF` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`),
  ADD CONSTRAINT `FK_flight_request_requested` FOREIGN KEY (`requested_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_flight_request_requester` FOREIGN KEY (`requester_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `flight_request_note`
--
ALTER TABLE `flight_request_note`
  ADD CONSTRAINT `FK_flight_request_note` FOREIGN KEY (`flight_request_id`) REFERENCES `flight_request` (`id`),
  ADD CONSTRAINT `FK_flight_request_note_writer` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `gray_list`
--
ALTER TABLE `gray_list`
  ADD CONSTRAINT `FK_EE5D0A68A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FK_90651744A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_90651744AE80F5DF` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `FK_90651744CD147EEF` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`);

--
-- Constraints for table `invoice_department`
--
ALTER TABLE `invoice_department`
  ADD CONSTRAINT `FK_34C191142989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_34C19114AE80F5DF` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loyalty_card`
--
ALTER TABLE `loyalty_card`
  ADD CONSTRAINT `FK_EAB8BCBDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `media_info`
--
ALTER TABLE `media_info`
  ADD CONSTRAINT `FK_media_info` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `FK_BF5476CAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `passport`
--
ALTER TABLE `passport`
  ADD CONSTRAINT `FK_B5A26E084502E565` FOREIGN KEY (`passenger_id`) REFERENCES `persons` (`id`);

--
-- Constraints for table `PaxReportDetail`
--
ALTER TABLE `PaxReportDetail`
  ADD CONSTRAINT `FK_4205AAB4CD147EEF` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`),
  ADD CONSTRAINT `FK_4205AAB4EBF3C9A` FOREIGN KEY (`confirmer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_4205AAB4ED442CF4` FOREIGN KEY (`requester_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `FK_A25CC7D3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_A25CC7D3CD147EEF` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`);

--
-- Constraints for table `RefreshToken`
--
ALTER TABLE `RefreshToken`
  ADD CONSTRAINT `FK_7142379E19EB6921` FOREIGN KEY (`client_id`) REFERENCES `Client` (`id`),
  ADD CONSTRAINT `FK_7142379EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_1483A5E945E54C64` FOREIGN KEY (`passengerData_id`) REFERENCES `persons` (`id`);

--
-- Constraints for table `users_data`
--
ALTER TABLE `users_data`
  ADD CONSTRAINT `FK_627ABD6DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_facebook`
--
ALTER TABLE `users_facebook`
  ADD CONSTRAINT `FK_1035E33AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_google`
--
ALTER TABLE `users_google`
  ADD CONSTRAINT `FK_6AFB7BC1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `FK_FF8AB7E0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_FF8AB7E0FE54D947` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `user_invitation`
--
ALTER TABLE `user_invitation`
  ADD CONSTRAINT `FK_567AA74EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `FK_7C68921FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_wallet_corporate` FOREIGN KEY (`corporate_id`) REFERENCES `Corporate` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
