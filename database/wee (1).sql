-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 01:44 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wee`
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
(1, '10', 'profile01.png', 'images/', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(2, '24', 'profile03.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(3, '3', 'profile01.png', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(4, '26', 'profile04.jpg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(5, '14', 'profile01.png', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(6, '4', 'profile01.png', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(7, '24', 'profile02.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(8, '29', 'profile02.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(9, '9', 'profile02.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(10, '26', 'profile04.jpg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(11, '26', 'profile02.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(12, '32', 'profile03.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(13, '25', 'profile04.jpg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(14, '12', 'profile03.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(15, '20', 'profile02.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(16, '24', 'profile03.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(17, '12', 'profile01.png', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(18, '30', 'profile03.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(19, '19', 'profile04.jpg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(20, '27', 'profile02.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(21, '1', 'profile01.png', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(22, '12', 'profile03.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(23, '26', 'profile03.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(24, '3', 'profile01.png', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(25, '11', 'profile04.jpg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(26, '7', 'profile03.jpeg', 'images/', '2018-12-12 12:43:29', '2018-12-12 12:43:29'),
(27, '32', 'profile02.jpeg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(28, '32', 'profile02.jpeg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(29, '29', 'profile01.png', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(30, '32', 'profile04.jpg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(31, '19', 'profile04.jpg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(32, '13', 'profile03.jpeg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(33, '18', 'profile04.jpg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(34, '23', 'profile01.png', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(35, '31', 'profile01.png', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(36, '1', 'profile03.jpeg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(37, '27', 'profile02.jpeg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(38, '15', 'profile02.jpeg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(39, '19', 'profile04.jpg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(40, '32', 'profile01.png', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(41, '30', 'profile03.jpeg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(42, '18', 'profile02.jpeg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(43, '27', 'profile03.jpeg', 'images/', '2018-12-12 12:43:30', '2018-12-12 12:43:30'),
(44, '29', 'profile04.jpg', 'images/', '2018-12-12 12:43:31', '2018-12-12 12:43:31'),
(45, '10', 'profile01.png', 'images/', '2018-12-12 12:43:31', '2018-12-12 12:43:31'),
(46, '17', 'profile01.png', 'images/', '2018-12-12 12:43:31', '2018-12-12 12:43:31'),
(47, '13', 'profile03.jpeg', 'images/', '2018-12-12 12:43:31', '2018-12-12 12:43:31'),
(48, '22', 'profile01.png', 'images/', '2018-12-12 12:43:31', '2018-12-12 12:43:31'),
(49, '6', 'profile02.jpeg', 'images/', '2018-12-12 12:43:31', '2018-12-12 12:43:31'),
(50, '24', 'profile04.jpg', 'images/', '2018-12-12 12:43:31', '2018-12-12 12:43:31');

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
(1, 'Kamren', 'Jones', 'West Alycia', 'Benin', 'West Alycia', 'United States Virgin Islands', 'United States Virgin Islands', 1, '74025040', 'Jarrod Waters III', '2013-08-30', '1987-05-18', 16389.00, 22, 11, 0, 'Consequatur est tempora suscipit deserunt sunt et atque.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(2, 'Zion', 'Conn', 'Tryciachester', 'New Zealand', 'Tryciachester', 'United Arab Emirates', 'United Arab Emirates', 0, '88328440', 'Georgette Toy I', '1999-08-25', '1983-04-25', 67140.00, 22, 22, 0, 'Libero modi et voluptatum quibusdam quo. Corrupti ex voluptates nulla.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(3, 'Favian', 'Kutch', 'Lindland', 'Palau', 'Lindland', 'Croatia', 'Croatia', 3, '36970714', 'Reid Johns', '2001-12-11', '1980-08-08', 43516.00, 11, 11, 0, 'Nostrum sed totam voluptas ipsam. Neque laudantium pariatur ea et qui hic eaque.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(4, 'Fernando', 'Schoen', 'Erictown', 'Argentina', 'Erictown', 'Taiwan', 'Taiwan', 1, '20670732', 'Moriah Carroll', '2017-11-25', '2018-01-17', 83138.00, 11, 22, 1, 'Necessitatibus facilis et reprehenderit perferendis.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(5, 'Hubert', 'Wilderman', 'Lake Aryanna', 'Angola', 'Lake Aryanna', 'Nauru', 'Nauru', 2, '22314931', 'Margot Quigley', '2003-01-18', '2003-05-13', 60148.00, 22, 22, 0, 'Dolore molestiae esse expedita recusandae nisi consequatur dolores.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(6, 'Dallas', 'Osinski', 'North Alison', 'Wallis and Futuna', 'North Alison', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 1, '79833404', 'Teagan Hegmann', '2018-08-06', '1976-03-06', 59749.00, 11, 11, 1, 'Minus molestias voluptates esse ut officiis eum.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(7, 'Monserrate', 'Wisozk', 'West Jace', 'Lesotho', 'West Jace', 'Cameroon', 'Cameroon', 0, '40087876', 'Eulah Smitham Sr.', '1972-04-24', '1998-09-05', 58167.00, 22, 11, 0, 'Rerum aut aut iure ex enim corporis perspiciatis. Consequatur odit explicabo ea nostrum et voluptatem nihil.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(8, 'Keaton', 'Kovacek', 'Kuhlmanbury', 'Algeria', 'Kuhlmanbury', 'Switzerland', 'Switzerland', 1, '888701', 'Cora Nicolas', '1973-09-18', '2014-10-22', 32411.00, 11, 11, 0, 'Ipsa suscipit ut odit numquam.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(9, 'Giles', 'Zulauf', 'North Esteban', 'Lesotho', 'North Esteban', 'Greece', 'Greece', 3, '41351819', 'Dr. Iliana Metz', '1971-02-21', '2000-06-09', 57125.00, 22, 22, 1, 'Sed occaecati sunt corrupti earum rerum placeat et. Beatae pariatur voluptatibus quo nihil ipsam temporibus nam perferendis.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(10, 'Jimmy', 'Halvorson', 'Jacobimouth', 'Ireland', 'Jacobimouth', 'Malaysia', 'Malaysia', 1, '88336981', 'Jeromy Schneider', '2000-07-25', '1995-06-12', 26720.00, 22, 11, 1, 'Harum sunt aut blanditiis nisi.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(11, 'Rigoberto', 'Schuppe', 'North Maida', 'Papua New Guinea', 'North Maida', 'Samoa', 'Samoa', 3, '84381453', 'Dane Gleichner', '2017-11-12', '1970-03-03', 6818.00, 22, 22, 0, 'Qui inventore omnis omnis perferendis consequatur.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(12, 'Dale', 'Treutel', 'Port Jany', 'Georgia', 'Port Jany', 'Mongolia', 'Mongolia', 2, '45098901', 'Marquise Powlowski', '1984-10-30', '1987-09-06', 90696.00, 11, 11, 0, 'Qui et consectetur minima sint sint. Quo perspiciatis est fuga maiores et eum odit.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(13, 'Eldred', 'Stanton', 'Lueilwitzborough', 'Brazil', 'Lueilwitzborough', 'Indonesia', 'Indonesia', 0, '6731688', 'Bobby Lakin Jr.', '1972-01-02', '2001-03-07', 79781.00, 22, 22, 0, 'Quod tenetur laborum molestiae et quia quis. Error illum sit quibusdam pariatur.', '2018-12-12 12:43:27', '2018-12-12 12:43:27'),
(14, 'Cary', 'Torp', 'New Erwinfort', 'Reunion', 'New Erwinfort', 'Oman', 'Oman', 2, '16737946', 'Jovanny Denesik', '1976-09-25', '2013-07-04', 98265.00, 22, 22, 0, 'Quo ipsam magni ipsa minus sit ipsa suscipit. Maxime iusto voluptas repellendus et sed.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(15, 'Ned', 'Flatley', 'West Elliottview', 'Netherlands', 'West Elliottview', 'Lebanon', 'Lebanon', 0, '43620618', 'Caleb Schmeler', '2018-02-10', '2016-10-07', 27118.00, 11, 11, 0, 'Iste et illo tempora ipsa. Aperiam maiores pariatur reprehenderit qui qui consequuntur.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(16, 'Sheridan', 'Kunze', 'Fionatown', 'Pakistan', 'Fionatown', 'Sweden', 'Sweden', 2, '59137864', 'Ms. Sonya Borer Jr.', '1977-08-21', '2004-06-18', 44466.00, 22, 22, 0, 'Id quia eum omnis. Itaque qui dolorum rem aut porro error eos minus.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(17, 'Darien', 'Hagenes', 'Pfannerstillborough', 'Mozambique', 'Pfannerstillborough', 'Jordan', 'Jordan', 0, '61748223', 'Dr. Martine Goodwin III', '1970-06-22', '2013-05-21', 64048.00, 22, 11, 0, 'Et ut dolores possimus hic veniam.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(18, 'Austin', 'Nader', 'Roweport', 'Liechtenstein', 'Roweport', 'Paraguay', 'Paraguay', 0, '71784729', 'Kelton Reinger', '1983-10-17', '1972-05-05', 54681.00, 11, 22, 0, 'Iusto ducimus asperiores molestiae adipisci iste distinctio et dolorum. Velit velit eligendi eligendi molestias rerum consequuntur.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(19, 'Quinn', 'Corkery', 'Strosinborough', 'Latvia', 'Strosinborough', 'Germany', 'Germany', 0, '6586546', 'Chloe Schaefer PhD', '2016-08-26', '2013-04-21', 8137.00, 11, 11, 0, 'Laudantium dolore quia voluptate deleniti.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(20, 'Curt', 'Bergnaum', 'Williamsonfort', 'Palau', 'Williamsonfort', 'Central African Republic', 'Central African Republic', 3, '77502884', 'Mr. Rocky Brown', '2012-04-05', '2012-03-01', 58935.00, 22, 11, 0, 'Perferendis dolorem quas recusandae. Culpa nisi accusantium non nam at.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(21, 'Rollin', 'Moore', 'North Charlie', 'Lithuania', 'North Charlie', 'Burundi', 'Burundi', 1, '31870634', 'Prof. Kyle Runolfsdottir I', '2005-06-10', '1972-03-21', 89735.00, 22, 22, 0, 'Accusamus aut nisi saepe eveniet dignissimos.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(22, 'Arturo', 'Kohler', 'Ruthebury', 'Serbia', 'Ruthebury', 'Trinidad and Tobago', 'Trinidad and Tobago', 2, '83831602', 'Adela Swift', '1998-06-07', '1970-02-06', 67283.00, 22, 22, 1, 'Ad facilis eaque aperiam ratione dolor amet provident sed.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(23, 'Edwardo', 'Quitzon', 'South Murielfurt', 'New Caledonia', 'South Murielfurt', 'Maldives', 'Maldives', 3, '38770763', 'Clemens Hamill', '2016-08-15', '2007-09-29', 32564.00, 11, 11, 0, 'Eaque ipsum quisquam autem et harum aut quibusdam.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(24, 'Glen', 'Rutherford', 'Littelshire', 'Micronesia', 'Littelshire', 'India', 'India', 1, '42493677', 'Ocie Hermann', '1995-10-03', '2002-03-25', 572.00, 22, 22, 1, 'Delectus ut id quisquam est nisi sit.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(25, 'Norris', 'Luettgen', 'Lake Jerald', 'Angola', 'Lake Jerald', 'Brazil', 'Brazil', 3, '5738980', 'Justyn Kling', '1989-04-04', '1982-04-06', 64651.00, 11, 22, 1, 'Ipsa velit quae et aliquam rerum.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(26, 'Orlando', 'Parker', 'Lake Serenityland', 'Norway', 'Lake Serenityland', 'Kuwait', 'Kuwait', 2, '23568089', 'Miss Dena Brekke', '1980-11-11', '1994-04-23', 35378.00, 22, 11, 1, 'Ut et delectus ullam accusamus vitae in et. Quo totam reprehenderit illum suscipit.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(27, 'Herminio', 'Stehr', 'Camillaborough', 'Somalia', 'Camillaborough', 'Oman', 'Oman', 3, '90559771', 'Euna O\'Reilly', '1982-06-17', '2002-01-26', 26358.00, 22, 22, 0, 'Aut quod voluptatem quis non exercitationem commodi ab.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(28, 'Ted', 'Moen', 'South Darienside', 'Luxembourg', 'South Darienside', 'Gibraltar', 'Gibraltar', 2, '27267970', 'Liliane Littel', '1991-08-21', '2018-04-18', 15347.00, 11, 11, 1, 'Sit vero optio et qui.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(29, 'Ricardo', 'Powlowski', 'West Wellington', 'Pakistan', 'West Wellington', 'Nicaragua', 'Nicaragua', 1, '5094891', 'Nicole Mertz', '1973-05-12', '1971-05-29', 1295.00, 11, 11, 0, 'Ut suscipit eveniet et aut fuga perferendis nostrum. Ut unde debitis occaecati vel reiciendis et quos similique.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(30, 'Burley', 'Ward', 'Daltonton', 'Bouvet Island (Bouvetoya)', 'Daltonton', 'Mauritius', 'Mauritius', 1, '37499403', 'Beatrice Kreiger', '2003-03-13', '1983-09-07', 46359.00, 22, 22, 1, 'Exercitationem aliquam eos totam voluptas vitae. Consectetur non itaque aperiam amet eum quia nobis.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(31, 'Felix', 'Kassulke', 'North Clarktown', 'Brunei Darussalam', 'North Clarktown', 'Tuvalu', 'Tuvalu', 3, '79973674', 'Lia Morar II', '1985-10-29', '1986-12-26', 82961.00, 22, 11, 1, 'Consectetur veritatis non quo provident vero. Aliquam aliquam aperiam ipsam consectetur.', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(32, 'Bobby', 'Hoppe', 'Lake Arelyton', 'Kenya', 'Lake Arelyton', 'Guam', 'Guam', 3, '70127312', 'Dr. Rosalyn Anderson V', '1993-04-03', '2014-05-26', 99345.00, 11, 22, 1, 'Rem veniam et alias occaecati autem.', '2018-12-12 12:43:28', '2018-12-12 12:43:28');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_09_170418_create_kycs_table', 1),
(4, '2018_12_09_175229_create_documents_table', 1),
(5, '2018_12_11_231028_add_role_to_users', 1),
(6, '2018_12_12_151719_create_s_users_table', 1),
(7, '2018_12_12_153740_create_s_user_addresses_table', 1),
(8, '2018_12_12_154804_create_s_user_attributes_table', 1),
(9, '2018_12_12_170616_create_s_user_orders_table', 1),
(10, '2018_12_12_172202_create_s_core_countries_table', 1),
(11, '2018_12_12_180520_create_ant_registration_upload_table', 1);

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
-- Table structure for table `s_orders`
--

CREATE TABLE `s_orders` (
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
-- Dumping data for table `s_orders`
--

INSERT INTO `s_orders` (`id`, `ordernumber`, `userID`, `invoice_amount`, `invoice_amount_net`, `invoice_shipping`, `invoice_shipping_net`, `invoice_shipping_tax_rate`, `ordertime`, `status`, `cleared`, `paymentID`, `transactionID`, `comment`, `customercomment`, `internalcomment`, `net`, `taxfree`, `partnerID`, `temporaryID`, `referer`, `cleareddate`, `trackingcode`, `language`, `dispatchID`, `currency`, `currencyFactor`, `subshopID`, `remote_addr`, `deviceType`, `is_proportional_calculation`, `changed`) VALUES
(8851, '23088', 2953, 500, 5000, 0, 100, 7.7, '2018-11-19 15:36:24', 0, 13, 5, '', NULL, '', '', 1, 1, '', '', '', NULL, '', '1', 9, 'EUR', 1, 1, '89.186.0.0', 'desktop', '0', '2018-11-19 15:36:24'),
(8854, '23089', 2954, 500, 500, 0, 100, 7.7, '2018-11-19 15:41:04', 0, 13, 5, '', 'weaergt v et atsrte etb we', '', '', 1, 1, '', '', '', NULL, '', '1', 9, 'EUR', 1, 1, '89.186.0.0', 'desktop', '0', '2018-11-19 15:41:04'),
(8856, '23090', 2953, 500, 5000, 0, 0, 7.7, '2018-12-06 13:21:52', 2, 12, 5, '', '', '', '', 1, 1, '', '', '', NULL, '', '1', 9, 'EUR', 1, 1, '89.186.0.0', 'desktop', '0', '2018-12-10 14:38:09'),
(8859, '23091', 2955, 8000, 1000, 0, 0, 7.7, '2018-12-10 13:28:48', 0, 12, 5, '', NULL, '', '', 1, 1, '', '', '', NULL, '', '1', 9, 'EUR', 1, 1, '87.239.0.0', 'desktop', '0', '2018-12-10 13:29:38'),
(8861, '23092', 2955, 16000, 16000, 0, 0, 7.7, '2018-12-10 13:29:06', 0, 12, 5, '', '', '', '', 1, 1, '', '', '', NULL, '', '1', 9, 'EUR', 1, 1, '87.239.0.0', 'desktop', '0', '2018-12-10 13:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `s_users`
--

CREATE TABLE `s_users` (
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
-- Dumping data for table `s_users`
--

INSERT INTO `s_users` (`id`, `password`, `encoder`, `email`, `active`, `accountmode`, `confirmationkey`, `paymentID`, `doubleOptinRegister`, `doubleOptinEmailSentDate`, `doubleOptinConfirmDate`, `firstlogin`, `lastlogin`, `sessionID`, `newsletter`, `validation`, `affiliate`, `customergroup`, `paymentpreset`, `language`, `subshopID`, `referer`, `pricegroupID`, `internalcomment`, `failedlogins`, `lockeduntil`, `default_billing_address_id`, `default_shipping_address_id`, `title`, `salutation`, `firstname`, `lastname`, `birthday`, `customernumber`, `login_token`, `changed`) VALUES
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
(2970, 2953, NULL, NULL, 'mr', NULL, 'Florijan', 'Salija', 'Teststr. 666', '6666', 'Test', 26, NULL, NULL, '+4916097711457', NULL, NULL),
(2971, 2954, NULL, NULL, 'mr', NULL, 'Maxx', 'Musterrrrr', 'Teststrasse 12', '5996', 'Münchenrrrrrrrr', 2, NULL, NULL, '071 688 68 00', NULL, NULL),
(2972, 2955, NULL, NULL, 'mr', NULL, 'Guyaa', 'Collé', 'Streetname with Number 99', '9999', 'Somewhere in the nowhere', 26, NULL, NULL, '123456789', NULL, NULL);

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
(2953, 2953, 'PADJK82W', 'cad87ebe-b4f4-36ff-91db-5fb45063ba1f', 'Münsterlingen', 'Switzerland', 'Schweiz', '', '0000-00-00 00:00:00', 0, 0, '', 'Passport', '543523452345', 'Behörde', '2013-10-02', '2025-09-02', '3', '', '', 11, 11, 0),
(2954, 2954, '', 'cad87ebe-b4f4-36ff-91db-5fb45063ba1f', 'Münchenrrrrrrr', 'Deutschlandrrrrrr', 'Deutschlandrrr', '2953', '2018-11-19 15:38:20', 2891, 0, '', 'Passport', '4523452345534', 'Behörde DE', '22.11.2017', '21.11.2025', '3', '', '', 11, 22, 0),
(2955, 2955, '', '', 'City of birth', 'Country of birth', 'Nationality', '', '0000-00-00 00:00:00', 0, 0, '', 'Passport', 'ABC-123456789', 'Issuing authority', '2019-01-01', '02.03.2010', '3', '', '', 11, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prince Treutel', 'admin@email.com', 1, '2018-12-12 12:43:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tVgGV5teRTSAYKQn06MkRdQyXGuJxyzOe6xoFJ89mp3iW2wayrdmr1h1pRy8', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(2, 'Vallie Jones', 'lubowitz.rachael@example.net', 1, '2018-12-12 12:43:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'x5r6ceXpEx', '2018-12-12 12:43:28', '2018-12-12 12:43:28'),
(3, 'Earline Ruecker III', 'xoconnell@example.net', 1, '2018-12-12 12:43:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Vd7NgbpeDJ', '2018-12-12 12:43:28', '2018-12-12 12:43:28');

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
-- Indexes for table `s_orders`
--
ALTER TABLE `s_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_users`
--
ALTER TABLE `s_users`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `s_core_countries`
--
ALTER TABLE `s_core_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `s_orders`
--
ALTER TABLE `s_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8862;

--
-- AUTO_INCREMENT for table `s_users`
--
ALTER TABLE `s_users`
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

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
