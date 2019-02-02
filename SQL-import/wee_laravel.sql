-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2019 at 02:07 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wee_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `ant_registration_upload`
--

CREATE TABLE `ant_registration_upload` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `data` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ant_registration_upload`
--

INSERT INTO `ant_registration_upload` (`id`, `customer_id`, `name`, `type`, `size`, `data`, `created_at`, `updated_at`) VALUES
(8, 2955, 'profile01.png', 'image/jpeg', 6564, '', NULL, NULL),
(9, 2955, 'profile01.png', 'application/pdf', 345345, '', NULL, NULL),
(10, 2955, 'profile01.png', 'text/plain', 2323, '', NULL, NULL),
(11, 2955, 'profile02.jpeg', 'image/png', 345, '', NULL, NULL),
(12, 2955, 'profile04.jpg', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 34534, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `kyc_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `kyc_id`, `file_name`, `url`, `created_at`, `updated_at`) VALUES
(1, '18', 'profile04.jpg', 'images/', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(2, '18', 'profile01.png', 'images/', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(3, '28', 'profile04.jpg', 'images/', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(4, '16', 'profile01.png', 'images/', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(5, '9', 'profile03.jpeg', 'images/', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(6, '13', 'profile04.jpg', 'images/', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(7, '9', 'profile04.jpg', 'images/', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(8, '12', 'profile04.jpg', 'images/', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(9, '7', 'profile04.jpg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(10, '4', 'profile02.jpeg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(11, '20', 'profile02.jpeg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(12, '23', 'profile04.jpg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(13, '28', 'profile02.jpeg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(14, '7', 'profile04.jpg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(15, '23', 'profile02.jpeg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(16, '23', 'profile04.jpg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(17, '24', 'profile01.png', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(18, '18', 'profile01.png', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(19, '27', 'profile01.png', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(20, '13', 'profile03.jpeg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(21, '9', 'profile01.png', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(22, '15', 'profile01.png', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(23, '8', 'profile04.jpg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(24, '13', 'profile03.jpeg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(25, '1', 'profile04.jpg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(26, '22', 'profile01.png', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(27, '32', 'profile01.png', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(28, '18', 'profile01.png', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(29, '10', 'profile01.png', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(30, '31', 'profile02.jpeg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(31, '23', 'profile01.png', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(32, '12', 'profile04.jpg', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(33, '3', 'profile01.png', 'images/', '2018-12-13 06:46:45', '2018-12-13 06:46:45'),
(34, '5', 'profile02.jpeg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(35, '32', 'profile01.png', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(36, '11', 'profile03.jpeg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(37, '22', 'profile03.jpeg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(38, '16', 'profile02.jpeg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(39, '21', 'profile04.jpg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(40, '24', 'profile03.jpeg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(41, '26', 'profile04.jpg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(42, '1', 'profile04.jpg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(43, '11', 'profile03.jpeg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(44, '25', 'profile04.jpg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(45, '7', 'profile01.png', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(46, '14', 'profile02.jpeg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(47, '16', 'profile04.jpg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(48, '7', 'profile04.jpg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(49, '22', 'profile01.png', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46'),
(50, '3', 'profile04.jpg', 'images/', '2018-12-13 06:46:46', '2018-12-13 06:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type` tinyint(1) UNSIGNED DEFAULT NULL,
  `document_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuing_authority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_on` date NOT NULL,
  `valid_until` date NOT NULL,
  `order_amount` double(8,2) UNSIGNED NOT NULL,
  `internal` int(11) DEFAULT '22',
  `external` int(11) DEFAULT '22',
  `follow_up` int(11) DEFAULT '0',
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kycs`
--

INSERT INTO `kycs` (`id`, `first_name`, `last_name`, `city`, `country`, `city_of_birth`, `country_of_birth`, `nationality`, `document_type`, `document_number`, `issuing_authority`, `issue_on`, `valid_until`, `order_amount`, `internal`, `external`, `follow_up`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Jack', 'Jast', 'Harryton', 'Lesotho', 'Harryton', 'Hungary', 'Hungary', 1, '33266890', 'Mariam Douglas V', '2012-02-25', '1996-09-06', 26606.00, 22, 22, 0, 'Impedit omnis accusantium et vitae ipsam facilis. Qui dignissimos non eius quod dolores suscipit hic.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(2, 'Giuseppe', 'Reynolds', 'Kshlerinstad', 'Somalia', 'Kshlerinstad', 'Cameroon', 'Cameroon', 3, '59056531', 'Prof. Vallie Baumbach II', '1998-11-19', '2015-03-23', 46704.00, 22, 11, 1, 'Aut distinctio nam possimus quia numquam.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(3, 'Reinhold', 'Leffler', 'New Ethelyn', 'Germany', 'New Ethelyn', 'Panama', 'Panama', 1, '11256156', 'Mr. Dewayne Schmidt', '1989-02-04', '1985-04-13', 57530.00, 11, 22, 0, 'Iste reiciendis eum distinctio possimus. Optio accusamus maiores voluptate animi corrupti commodi.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(4, 'Alexandro', 'Schmeler', 'East Claudie', 'Nicaragua', 'East Claudie', 'British Virgin Islands', 'British Virgin Islands', 1, '29582350', 'Krystal Lindgren', '2012-08-14', '1997-03-09', 19737.00, 11, 22, 1, 'Et quia et eveniet atque voluptatem.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(5, 'Frederic', 'Mayer', 'New Janessamouth', 'Slovakia (Slovak Republic)', 'New Janessamouth', 'Panama', 'Panama', 2, '86439598', 'Lucie Runolfsson', '2000-10-29', '2015-10-04', 73652.00, 22, 11, 1, 'Sed voluptas accusantium explicabo. Rerum repellendus placeat consectetur est odio sed rerum corporis.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(6, 'Alfonso', 'Crona', 'Brakusstad', 'Turks and Caicos Islands', 'Brakusstad', 'Sierra Leone', 'Sierra Leone', 2, '74575128', 'Elenor Keeling I', '2011-09-27', '2011-05-21', 56412.00, 11, 22, 0, 'Maxime accusantium illum officiis dolores ut soluta iure. Modi ut ex rem et.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(7, 'Isai', 'Larkin', 'Zachariahchester', 'Kenya', 'Zachariahchester', 'Libyan Arab Jamahiriya', 'Libyan Arab Jamahiriya', 1, '29415590', 'Garth Koelpin', '2010-02-10', '1984-04-14', 95276.00, 22, 11, 0, 'Consequatur corrupti et perferendis magnam doloribus consequatur. Sit corrupti qui accusantium provident voluptatem quos.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(8, 'Fern', 'Baumbach', 'Jarredchester', 'Nauru', 'Jarredchester', 'Reunion', 'Reunion', 0, '73982062', 'Joana Christiansen', '1982-01-27', '2015-01-20', 67563.00, 22, 22, 0, 'Repellat delectus sed non enim nam voluptas. Consequatur ea et eveniet.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(9, 'Jensen', 'Beier', 'Baumbachburgh', 'Qatar', 'Baumbachburgh', 'Montserrat', 'Montserrat', 3, '49592960', 'Mr. Forest Halvorson DDS', '2001-05-07', '1984-09-17', 25005.00, 22, 22, 0, 'Sed eum vel dolorem incidunt quia. Architecto occaecati eligendi accusamus et unde.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(10, 'Gilbert', 'Kohler', 'Justicefurt', 'Turkey', 'Justicefurt', 'Mongolia', 'Mongolia', 3, '39579632', 'Ms. Roslyn Ruecker', '2005-11-26', '1981-05-22', 66782.00, 11, 11, 1, 'Dignissimos excepturi maiores illo in ea doloribus.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(11, 'Benton', 'Lakin', 'South Alexys', 'Cape Verde', 'South Alexys', 'Nauru', 'Nauru', 1, '2699035', 'Miss Brianne Kilback I', '1978-07-13', '1982-02-27', 53099.00, 22, 22, 1, 'Dolor animi beatae repellendus libero. Nulla quasi iste incidunt et aut magnam earum.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(12, 'Einar', 'Kuhic', 'Sydniemouth', 'Haiti', 'Sydniemouth', 'Belize', 'Belize', 3, '637980', 'Julie Turner', '1994-07-24', '1987-04-22', 97855.00, 11, 22, 0, 'Minima rem iusto earum odit. Et mollitia beatae ducimus debitis.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(13, 'Chelsey', 'Bosco', 'McKenzietown', 'Indonesia', 'McKenzietown', 'Taiwan', 'Taiwan', 1, '39802557', 'Dr. Jordi Bradtke PhD', '1997-09-04', '1979-10-08', 31795.00, 11, 22, 1, 'Praesentium provident rerum est ut atque. In et dolorem eveniet aut quo fuga velit.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(14, 'Esteban', 'Fritsch', 'Port Kennith', 'Kiribati', 'Port Kennith', 'Hungary', 'Hungary', 3, '53479330', 'Ernestine Hills', '2014-05-07', '1980-10-08', 77116.00, 11, 22, 1, 'Consequuntur aut quaerat quasi eum porro et mollitia.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(15, 'Amari', 'Lebsack', 'Koelpintown', 'Cayman Islands', 'Koelpintown', 'Saint Helena', 'Saint Helena', 2, '15371583', 'Leanne Denesik V', '1974-01-05', '1996-10-12', 81168.00, 11, 11, 1, 'Laborum omnis ab omnis non quia. Hic porro inventore non alias earum perspiciatis alias.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(16, 'Curt', 'Crona', 'Lake Leonardo', 'Saint Vincent and the Grenadines', 'Lake Leonardo', 'Austria', 'Austria', 2, '13258391', 'Prof. Clementina Hilpert', '2015-10-08', '2011-08-29', 89211.00, 22, 22, 1, 'Corporis facilis quisquam expedita.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(17, 'Alexander', 'Rice', 'Delmerfort', 'Cyprus', 'Delmerfort', 'Luxembourg', 'Luxembourg', 0, '51634079', 'Hadley Frami', '2005-07-01', '2011-05-02', 7026.00, 11, 11, 1, 'Non eos quisquam beatae consequatur quia est.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(18, 'Reid', 'Stokes', 'New Manuelaland', 'Nepal', 'New Manuelaland', 'Guinea', 'Guinea', 1, '94527234', 'Larissa Swift', '2000-08-21', '1992-10-15', 76616.00, 11, 11, 1, 'Eos dolor inventore qui.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(19, 'Triston', 'O\'Keefe', 'Johnnieview', 'United States Virgin Islands', 'Johnnieview', 'British Virgin Islands', 'British Virgin Islands', 1, '19590372', 'Dr. Clemmie Lindgren Sr.', '2007-11-24', '1996-02-02', 42625.00, 22, 11, 1, 'Omnis quaerat quae hic. Minima dolorem asperiores asperiores eos adipisci quos quaerat ab.', '2018-12-13 06:46:43', '2018-12-13 06:46:43'),
(20, 'Rex', 'Will', 'Felicitaport', 'Dominica', 'Felicitaport', 'Slovenia', 'Slovenia', 3, '49339841', 'Lillie Kessler', '1991-12-05', '2007-11-17', 19878.00, 22, 22, 1, 'Voluptas suscipit earum et temporibus maxime officia. Nemo aperiam voluptas architecto voluptas nemo.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(21, 'Shane', 'Paucek', 'Greenholtmouth', 'Grenada', 'Greenholtmouth', 'Eritrea', 'Eritrea', 2, '77096155', 'Ms. Taryn Okuneva', '2005-04-30', '1972-08-11', 15307.00, 11, 22, 1, 'Voluptas omnis omnis et autem est quam.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(22, 'Stanley', 'Bartoletti', 'North Johnnie', 'Senegal', 'North Johnnie', 'Norfolk Island', 'Norfolk Island', 2, '58930584', 'Briana Abshire', '2000-05-17', '1988-08-20', 60711.00, 22, 11, 0, 'In dicta quibusdam tempore est ea. Facilis labore repudiandae explicabo ut consequatur sit voluptates ullam.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(23, 'Nicolas', 'Keebler', 'North Syble', 'Jamaica', 'North Syble', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 0, '19893053', 'Yvonne Stokes PhD', '1996-12-27', '1978-10-04', 63320.00, 22, 11, 1, 'Ut et ea nobis et.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(24, 'Angelo', 'Hamill', 'Cassinshire', 'Bahamas', 'Cassinshire', 'Ghana', 'Ghana', 2, '74233719', 'Ronny Roob', '2018-06-07', '2013-11-06', 47612.00, 11, 11, 0, 'Non ea aut error veniam et. Nostrum laborum saepe optio consequatur error.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(25, 'Deion', 'Kreiger', 'Port Maudechester', 'Liberia', 'Port Maudechester', 'Djibouti', 'Djibouti', 1, '88555172', 'Osvaldo Howe', '1996-12-27', '2012-01-20', 53268.00, 22, 22, 0, 'Rerum magnam est molestiae et.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(26, 'Louisa', 'Mitchell', 'Botsfordberg', 'Chile', 'Botsfordberg', 'Thailand', 'Thailand', 3, '11102589', 'Martina Dietrich DVM', '2017-11-05', '1979-03-31', 60227.00, 11, 11, 0, 'Sint officia id exercitationem est.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(27, 'Carroll', 'Bailey', 'Fletamouth', 'Liechtenstein', 'Fletamouth', 'Micronesia', 'Micronesia', 2, '51393134', 'Isom Wilderman', '1972-01-21', '1987-11-17', 63583.00, 22, 11, 0, 'Atque sed minima qui labore a.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(28, 'Montana', 'Hilpert', 'Emmaland', 'Turkey', 'Emmaland', 'British Virgin Islands', 'British Virgin Islands', 1, '56340527', 'Miss Crystal Kuhlman IV', '1983-08-01', '1987-10-26', 18603.00, 11, 22, 0, 'Nesciunt impedit vitae qui et aut.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(29, 'Jaden', 'Morar', 'Johnstonhaven', 'Israel', 'Johnstonhaven', 'Western Sahara', 'Western Sahara', 3, '91961787', 'Nikko Stamm', '1992-10-05', '1973-06-08', 92117.00, 22, 11, 0, 'Dolorem eum nobis odio amet sapiente. Laborum consectetur neque nesciunt ut voluptatem iste et.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(30, 'Edwardo', 'Kulas', 'Klockoview', 'Kenya', 'Klockoview', 'Grenada', 'Grenada', 3, '46401467', 'Viva Stokes', '2012-12-04', '2006-06-12', 82737.00, 22, 11, 0, 'Dolores nihil tempora in enim.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(31, 'Lukas', 'Runolfsdottir', 'Kaceyshire', 'Mayotte', 'Kaceyshire', 'Russian Federation', 'Russian Federation', 3, '38543840', 'Blaise Hahn Sr.', '1988-11-12', '1972-07-30', 64708.00, 11, 11, 0, 'Corrupti dolor nostrum velit alias est voluptas.', '2018-12-13 06:46:44', '2018-12-13 06:46:44'),
(32, 'Victor', 'Mitchell', 'Port Geochester', 'Mexico', 'Port Geochester', 'Portugal', 'Portugal', 2, '71169190', 'Lizeth Stroman DVM', '1999-04-27', '1972-04-21', 39872.00, 22, 22, 1, 'Harum sit sit alias qui sed.', '2018-12-13 06:46:44', '2018-12-13 06:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `kyc_users`
--

CREATE TABLE `kyc_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kyc_users`
--

INSERT INTO `kyc_users` (`id`, `role_id`, `role_name`, `first_name`, `last_name`, `email`, `username`, `active`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'Werner', 'Gleichner', 'admin@mail.com', 'jailyn02', '11', '2018-12-15 15:54:28', '$2y$10$XEd8JOQgbXNXJAUWOGNJxuRZ3mEZoozhTadiSJiGQjyvki2TMOw/u', 'L5iDkG4iui3fx6Ik7Ofiyl1TZJmzQPxONYp7xlta4dfsSjSxWEjB2faO4Yyi', '2018-12-15 15:54:28', '2018-12-15 15:54:28'),
(2, 2, 'internal', 'Barney', 'Daniel', 'internal@mail.com', 'hgorczany', '22', '2018-12-15 15:54:28', '$2y$10$XEd8JOQgbXNXJAUWOGNJxuRZ3mEZoozhTadiSJiGQjyvki2TMOw/u', 'q5if7uALlf', '2018-12-15 15:54:28', '2018-12-15 15:54:28'),
(3, 3, 'external', 'Sofia', 'Wyman', 'external@mail.com', 'legros.margret', '11', '2018-12-15 15:54:28', '$2y$10$XEd8JOQgbXNXJAUWOGNJxuRZ3mEZoozhTadiSJiGQjyvki2TMOw/u', 'nMGTdDilLI', '2018-12-15 15:54:28', '2018-12-15 15:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_09_170418_create_kycs_table', 1),
(4, '2018_12_09_175229_create_documents_table', 1),
(5, '2018_12_11_231028_add_role_to_users', 1),
(6, '2018_12_12_151719_create_s_users_table', 1),
(7, '2018_12_12_153740_create_s_user_addresses_table', 1),
(8, '2018_12_12_154804_create_s_user_attributes_table', 1),
(9, '2018_12_12_170616_create_s_user_orders_table', 1),
(10, '2018_12_12_172202_create_s_core_countries_table', 1),
(11, '2018_12_12_180520_create_ant_registration_upload_table', 1),
(14, '2014_10_12_000000_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_core_countries`
--

CREATE TABLE `s_core_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `countryname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryiso` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areaID` int(11) DEFAULT NULL,
  `countryen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci,
  `taxfree` int(11) DEFAULT NULL,
  `taxfree_ustid` int(11) DEFAULT NULL,
  `taxfree_ustid_checked` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `iso3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_state_in_registration` int(11) NOT NULL,
  `force_state_in_registration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_core_countries`
--

INSERT INTO `s_core_countries` (`id`, `countryname`, `countryiso`, `areaID`, `countryen`, `position`, `notice`, `taxfree`, `taxfree_ustid`, `taxfree_ustid_checked`, `active`, `iso3`, `display_state_in_registration`, `force_state_in_registration`) VALUES
(2, 'Germany', 'DE', 3, 'GERMANY', 1, '', 1, 0, 0, 1, 'DEU', 0, 0),
(3, 'Arab emirates', 'AE', 2, 'ARAB EMIRATES', 10, '', 1, 0, 0, 0, 'ARE', 0, 0),
(4, 'Australia', 'AU', 2, 'AUSTRALIA', 10, '', 1, 0, 0, 0, 'AUS', 0, 0),
(5, 'Belgium', 'BE', 3, 'BELGIUM', 10, '', 1, 0, 0, 1, 'BEL', 0, 0),
(7, 'Denmark', 'DK', 3, 'DENMARK', 10, '', 1, 0, 0, 1, 'DNK', 0, 0),
(8, 'Finland', 'FI', 3, 'FINLAND', 10, '', 1, 0, 0, 1, 'FIN', 0, 0),
(9, 'France', 'FR', 3, 'FRANCE', 10, '', 1, 0, 0, 1, 'FRA', 0, 0),
(10, 'Greece', 'GR', 3, 'GREECE', 10, '', 1, 0, 0, 1, 'GRC', 0, 0),
(11, 'Great britain', 'GB', 1, 'GREAT BRITAIN', 10, '', 1, 0, 0, 1, 'GBR', 0, 0),
(12, 'Ireland', 'IE', 3, 'IRELAND', 10, '', 1, 0, 0, 1, 'IRL', 0, 0),
(13, 'Iceland', 'IS', 3, 'ICELAND', 10, '', 1, 0, 0, 1, 'ISL', 0, 0),
(14, 'Italy', 'IT', 3, 'ITALY', 10, '', 1, 0, 0, 1, 'ITA', 0, 0),
(15, 'Japan', 'JP', 2, 'JAPAN', 10, '', 1, 0, 0, 0, 'JPN', 0, 0),
(16, 'Canada', 'CA', 2, 'CANADA', 10, '', 1, 0, 0, 0, 'CAN', 0, 0),
(18, 'Luxembourg', 'LU', 3, 'LUXEMBOURG', 10, '', 1, 0, 0, 1, 'LUX', 0, 0),
(20, 'Namibia', 'NA', 2, 'NAMIBIA', 10, '', 1, 0, 0, 0, 'NAM', 0, 0),
(21, 'Netherlands', 'NL', 3, 'NETHERLANDS', 10, '', 1, 0, 0, 1, 'NLD', 0, 0),
(22, 'Norway', 'NO', 3, 'NORWAY', 10, '', 1, 0, 0, 1, 'NOR', 0, 0),
(23, 'Austria', 'AT', 3, 'AUSTRIA', 1, '', 1, 0, 0, 1, 'AUT', 0, 0),
(24, 'Portugal', 'PT', 3, 'PORTUGAL', 10, '', 1, 0, 0, 1, 'PRT', 0, 0),
(25, 'Sweden', 'SE', 3, 'SWEDEN', 10, '', 1, 0, 0, 1, 'SWE', 0, 0),
(26, 'Switzerland', 'CH', 3, 'SWITZERLAND', 10, '', 1, 0, 0, 1, 'CHE', 0, 0),
(27, 'Spain', 'ES', 3, 'SPAIN', 10, '', 1, 0, 0, 1, 'ESP', 0, 0),
(28, 'USA', 'US', 2, 'USA', 10, '', 1, 0, 0, 0, 'USA', 0, 0),
(29, 'Liechtenstein', 'LI', 3, 'LIECHTENSTEIN', 10, '', 1, 0, 0, 1, 'LIE', 0, 0),
(30, 'Poland', 'PL', 3, 'POLAND', 10, '', 1, 0, 0, 1, 'POL', 0, 0),
(31, 'Hungary', 'HU', 3, 'HUNGARY', 10, '', 1, 0, 0, 1, 'HUN', 0, 0),
(32, 'Turkey', 'TR', 2, 'TURKEY', 10, '', 1, 0, 0, 0, 'TUR', 0, 0),
(33, 'Czech republic', 'CZ', 3, 'CZECH REPUBLIC', 10, '', 1, 0, 0, 1, 'CZE', 0, 0),
(34, 'Slovakia', 'SK', 3, 'SLOVAKIA', 10, '', 1, 0, 0, 1, 'SVK', 0, 0),
(35, 'Romania', 'RO', 3, 'ROMANIA', 10, '', 1, 0, 0, 1, 'ROU', 0, 0),
(36, 'Brazil', 'BR', 2, 'BRAZIL', 10, '', 1, 0, 0, 0, 'BRA', 0, 0),
(37, 'Israel', 'IL', 2, 'ISRAEL', 10, '', 1, 0, 0, 0, 'ISR', 0, 0),
(38, 'Slovenia', 'SI', 3, 'SLOVENIA', 10, '', 1, 0, NULL, 1, 'SVN', 0, 0),
(39, 'Croatia', 'HR', 3, 'CROATIA', 0, '', 1, 0, NULL, 1, 'HRV', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `s_order`
--

CREATE TABLE `s_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `ordernumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `invoice_amount` double NOT NULL,
  `invoice_amount_net` double NOT NULL,
  `invoice_shipping` double NOT NULL,
  `invoice_shipping_net` double NOT NULL,
  `invoice_shipping_tax_rate` double DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `cleared` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `transactionID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `customercomment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `internalcomment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `net` int(11) NOT NULL,
  `taxfree` int(11) NOT NULL,
  `partnerID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temporaryID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cleareddate` datetime DEFAULT NULL,
  `trackingcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dispatchID` int(11) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencyFactor` double NOT NULL,
  `subshopID` int(11) NOT NULL,
  `remote_addr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deviceType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_proportional_calculation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_order`
--

INSERT INTO `s_order` (`id`, `ordernumber`, `userID`, `invoice_amount`, `invoice_amount_net`, `invoice_shipping`, `invoice_shipping_net`, `invoice_shipping_tax_rate`, `ordertime`, `status`, `cleared`, `paymentID`, `transactionID`, `comment`, `customercomment`, `internalcomment`, `net`, `taxfree`, `partnerID`, `temporaryID`, `referer`, `cleareddate`, `trackingcode`, `language`, `dispatchID`, `currency`, `currencyFactor`, `subshopID`, `remote_addr`, `deviceType`, `is_proportional_calculation`, `changed`) VALUES
(8851, '23088', 2953, 500, 20000, 0, 100, 7.7, '2018-11-19 15:36:24', 0, 13, 5, '', 'gggffgg fdfd sdfgsd', '', '', 1, 1, '', '', '', NULL, '', '1', 9, 'EUR', 1, 1, '89.186.0.0', 'desktop', '0', '2018-11-19 15:36:24'),
(8854, '23089', 2954, 500, 500, 0, 100, 7.7, '2018-11-19 15:41:04', 0, 13, 5, '', 'weaergt v et atsrte etb we22', '', '', 1, 1, '', '', '', NULL, '', '1', 9, 'EUR', 1, 1, '89.186.0.0', 'desktop', '0', '2018-11-19 15:41:04'),
(8856, '23090', 2953, 500, 5000, 0, 0, 7.7, '2018-12-06 13:21:52', 2, 12, 5, '', '', '', '', 1, 1, '', '', '', NULL, '', '1', 9, 'EUR', 1, 1, '89.186.0.0', 'desktop', '0', '2018-12-10 14:38:09'),
(8859, '23091', 2955, 8000, 1000, 0, 0, 7.7, '2018-12-10 13:28:48', 0, 12, 5, '', NULL, '', '', 1, 1, '', '', '', NULL, '', '1', 9, 'EUR', 1, 1, '87.239.0.0', 'desktop', '0', '2018-12-10 13:29:38'),
(8861, '23092', 2955, 16000, 16000, 0, 0, 7.7, '2018-12-10 13:29:06', 0, 12, 5, '', '', '', '', 1, 1, '', '', '', NULL, '', '1', 9, 'EUR', 1, 1, '87.239.0.0', 'desktop', '0', '2018-12-10 13:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `s_user`
--

CREATE TABLE `s_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encoder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `accountmode` int(11) NOT NULL,
  `confirmationkey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentID` int(11) NOT NULL DEFAULT '0',
  `doubleOptinRegister` int(11) DEFAULT '0',
  `doubleOptinEmailSentDate` datetime DEFAULT NULL,
  `doubleOptinConfirmDate` datetime DEFAULT NULL,
  `firstlogin` date NOT NULL,
  `lastlogin` datetime NOT NULL,
  `sessionID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter` int(11) NOT NULL,
  `validation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affiliate` int(11) NOT NULL,
  `customergroup` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentpreset` int(11) NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subshopID` int(11) NOT NULL,
  `referer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricegroupID` int(11) DEFAULT NULL,
  `internalcomment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failedlogins` int(11) NOT NULL,
  `lockeduntil` datetime DEFAULT NULL,
  `default_billing_address_id` int(11) DEFAULT NULL,
  `default_shipping_address_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `customernumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_user`
--

INSERT INTO `s_user` (`id`, `password`, `encoder`, `email`, `active`, `accountmode`, `confirmationkey`, `paymentID`, `doubleOptinRegister`, `doubleOptinEmailSentDate`, `doubleOptinConfirmDate`, `firstlogin`, `lastlogin`, `sessionID`, `newsletter`, `validation`, `affiliate`, `customergroup`, `paymentpreset`, `language`, `subshopID`, `referer`, `pricegroupID`, `internalcomment`, `failedlogins`, `lockeduntil`, `default_billing_address_id`, `default_shipping_address_id`, `title`, `salutation`, `firstname`, `lastname`, `birthday`, `customernumber`, `login_token`, `changed`) VALUES
(2953, '$2y$10$0mi9k8OQ/nb/JSCCmkc1.eSoYKlRVZo.cyHkpmejUBp/7t.vBIMrq', 'bcrypt', 'fsa@sobus.ch', 1, 0, '', 5, 1, '2018-11-19 15:35:24', '2018-11-19 15:35:53', '2018-11-19', '2018-12-10 13:17:55', 'nr0jvqmcd617ua78i2d8sb6v1t', 0, '', 0, 'EK', 0, '1', 1, '', NULL, '', 0, NULL, 2970, 2970, NULL, 'mr', 'Florijan', 'Salija', '1934-03-03', '', '2e2bba4d-a228-4ad2-b142-c4d43b4707da.1', '2018-11-19 15:35:53'),
(2954, '$2y$10$R0uX1xpVUMde5FsBHK69i.c9YVP9pvFrdm/24dXeD.0zV/03K1pHS', 'bcrypt', 'florijan.salija@sobus.ch', 1, 0, '', 5, 1, '2018-11-19 15:40:33', '2018-11-19 15:40:41', '2018-11-19', '2018-11-19 15:41:04', 'cncbjlfd71vjrj483gamvpsqm1', 0, '', 0, 'EK', 0, '1', 1, '', NULL, '', 0, NULL, 2971, 2971, NULL, 'mr', 'Max', 'Muster', '1925-04-03', '', '96f5c52f-22ae-47b5-89e2-96a75ee4428e.1', '2018-11-19 15:40:41'),
(2955, '$2y$10$zuabxmfvVC0w49LugRWESOEUez.5QRjhqJs3jw/tj2HkOvT03WMbC', 'bcrypt', 'guy.colle@gmail.com', 1, 0, '', 5, 1, '2018-12-10 13:26:09', '2018-12-10 13:27:20', '2018-12-10', '2018-12-10 13:29:16', 'tcbdid0admo47ijq77gosl1q6a', 0, '0', 0, 'EK', 0, '1', 1, '', NULL, '', 0, NULL, 2972, 2972, '', 'mr', 'Guy', 'Collé', '1980-01-01', '', '4d3a201b-888c-497c-8a8b-e6d020d8e955.1', '2018-12-10 15:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `s_user_addresses`
--

CREATE TABLE `s_user_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `ustid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_address_line1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_address_line2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_user_addresses`
--

INSERT INTO `s_user_addresses` (`id`, `user_id`, `company`, `department`, `salutation`, `title`, `firstname`, `lastname`, `street`, `zipcode`, `city`, `country_id`, `state_id`, `ustid`, `phone`, `additional_address_line1`, `additional_address_line2`) VALUES
(2970, 2953, NULL, NULL, 'mr', NULL, 'Flo', 'Salija22222', 'Teststr. 666', '6666', 'Test', 26, NULL, NULL, '+4916097711457', NULL, NULL),
(2971, 2954, NULL, NULL, 'mr', NULL, 'Maxx2222', 'Muster2', 'Teststrasse 12', '5996', 'München2', 2, NULL, NULL, '071 688 68 00', NULL, NULL),
(2972, 2955, NULL, NULL, 'mr', NULL, 'Guyaa', 'Collé', 'Streetname with Number 99', '9999', 'Somewhere', 26, NULL, NULL, '123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `s_user_attributes`
--

CREATE TABLE `s_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `userID` int(11) NOT NULL,
  `weeinvitationcode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weedealerid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weecityofbirth` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weecountryofbirth` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weenationality` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weeuseridparent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weetaftimestamp` datetime NOT NULL,
  `weetafid` int(11) NOT NULL,
  `pix_confirm_user` int(11) NOT NULL,
  `weeregisternumber` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weeidentificationtype` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weeidnumber` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weeissuingauthority` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weeissuedon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weevaliduntil` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ant_reguploaderusertype` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_customerid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kycinternalok` int(11) NOT NULL,
  `kycexternalok` int(11) NOT NULL,
  `kycfollowup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_user_attributes`
--

INSERT INTO `s_user_attributes` (`id`, `userID`, `weeinvitationcode`, `weedealerid`, `weecityofbirth`, `weecountryofbirth`, `weenationality`, `weeuseridparent`, `weetaftimestamp`, `weetafid`, `pix_confirm_user`, `weeregisternumber`, `weeidentificationtype`, `weeidnumber`, `weeissuingauthority`, `weeissuedon`, `weevaliduntil`, `ant_reguploaderusertype`, `mp_customerid`, `mp_data`, `kycinternalok`, `kycexternalok`, `kycfollowup`) VALUES
(2953, 2953, 'PADJK82W', 'cad87ebe-b4f4-36ff-91db-5fb45063ba1f', 'Münsterlingen', 'Switzerland', 'Schweiz', '', '0000-00-00 00:00:00', 0, 0, '', 'NID', '33333333', 'Behörde', '2013-10-02', '2025-09-02', '3', '', '', 11, 11, 1),
(2954, 2954, '', 'cad87ebe-b4f4-36ff-91db-5fb45063ba1f', 'München', 'Deutschla', 'Deutschlan', '2953', '2018-11-19 15:38:20', 2891, 0, '', 'Passport', '45234523', 'Behörde', '22.11.2222', '21.11.2222', '3', '', '', 11, 22, 0),
(2955, 2955, '', '', 'City of birth', 'Country of birth', 'Nationality', '', '0000-00-00 00:00:00', 0, 0, '', 'Driving licence', 'ABC-123456789', 'Issuing a', '2019-01-01', '02.03.2010', '3', '', '', 11, 11, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ant_registration_upload`
--
ALTER TABLE `ant_registration_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_users`
--
ALTER TABLE `kyc_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kyc_users_email_unique` (`email`),
  ADD UNIQUE KEY `kyc_users_username_unique` (`username`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `s_core_countries`
--
ALTER TABLE `s_core_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_order`
--
ALTER TABLE `s_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_user`
--
ALTER TABLE `s_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_user_addresses`
--
ALTER TABLE `s_user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_user_attributes`
--
ALTER TABLE `s_user_attributes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ant_registration_upload`
--
ALTER TABLE `ant_registration_upload`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `kyc_users`
--
ALTER TABLE `kyc_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `s_core_countries`
--
ALTER TABLE `s_core_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `s_order`
--
ALTER TABLE `s_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8862;

--
-- AUTO_INCREMENT for table `s_user`
--
ALTER TABLE `s_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2956;

--
-- AUTO_INCREMENT for table `s_user_addresses`
--
ALTER TABLE `s_user_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2973;

--
-- AUTO_INCREMENT for table `s_user_attributes`
--
ALTER TABLE `s_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2956;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
