-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2019 at 08:06 AM
-- Server version: 10.2.26-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shunnoso_cold_storage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$u4eN.S1IlzqADESG9JDTa.efytrHJ4ZtAfRPgTRkaWOY.BYKX.Lf.', 'img/admin/1564512858admin@gmail.com.png', '3293hPTcIoawncqvxX7a7DYE092LtALWnudIb0MeOaQ4x400pGlpgjSaUZVg', NULL, '2019-07-31 01:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `square_fit` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_receive_product` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `provider_deliver_product` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `booking_for_days` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `admin_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `provider_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `post_id`, `payment_method`, `amount`, `square_fit`, `provider_receive_product`, `provider_deliver_product`, `booking_for_days`, `admin_status`, `provider_status`, `created_at`, `updated_at`) VALUES
(5, 1, 9, NULL, 800.00, '1000', 'Pending', 'Pending', 'Unknown', 0, 'pending', '2019-07-06 21:05:45', '2019-07-06 21:05:45'),
(9, 1, 7, NULL, 5333.33, '4000', 'Pending', 'Pending', '120', 0, 'Accepted', '2019-07-23 21:38:17', '2019-07-24 23:43:19'),
(10, 1, 7, NULL, 5333.33, '4000', 'Pending', 'Pending', '100', 0, 'Accepted', '2019-07-23 21:38:27', '2019-07-24 23:43:42'),
(13, 1, 7, NULL, 73.33, '55', 'Pending', 'Pending', '150', 0, 'Accepted', '2019-07-24 23:01:10', '2019-07-24 23:43:51'),
(14, 1, 10, NULL, 250.00, '200', 'Pending', 'Pending', 'Unknown', 0, 'pending', '2019-07-24 23:26:22', '2019-07-24 23:26:22'),
(17, 1, 7, NULL, 26.67, '20', 'Pending', 'Pending', '2', 0, 'pending', '2019-07-29 23:18:50', '2019-07-29 23:18:50'),
(18, 4, 18, NULL, 10000.00, '150', 'Yes', 'Pending', '2', 0, 'Accepted', '2019-08-01 23:16:19', '2019-08-02 18:53:09'),
(19, 1, 8, NULL, 2000.00, '500', 'Pending', 'Pending', '5', 0, 'pending', '2019-08-02 18:30:04', '2019-08-02 18:30:04'),
(20, 1, 8, NULL, 1000.00, '500', 'Pending', 'Pending', '1', 0, 'pending', '2019-08-02 18:46:44', '2019-08-02 18:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `booking_codes`
--

CREATE TABLE `booking_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_codes`
--

INSERT INTO `booking_codes` (`id`, `booking_id`, `code`, `created_at`, `updated_at`) VALUES
(5, 5, 'jtosxwkt', '2019-07-06 21:05:45', '2019-07-06 21:05:45'),
(9, 9, 'cxzx0opm', '2019-07-23 21:38:18', '2019-07-23 21:38:18'),
(10, 10, 'kg0moh5w', '2019-07-23 21:38:27', '2019-07-23 21:38:27'),
(13, 13, '5reuoqpz', '2019-07-24 23:01:10', '2019-07-24 23:01:10'),
(14, 14, 'uxn57wbb', '2019-07-24 23:26:22', '2019-07-24 23:26:22'),
(17, 17, 'pp27gvci', '2019-07-29 23:18:50', '2019-07-29 23:18:50'),
(18, 18, 'e82povz4', '2019-08-01 23:16:19', '2019-08-01 23:16:19'),
(19, 19, '64bggcxi', '2019-08-02 18:30:04', '2019-08-02 18:30:04'),
(20, 20, 'odnw2fca', '2019-08-02 18:46:44', '2019-08-02 18:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `image_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `image_name`, `created_at`, `updated_at`) VALUES
(9, 5, 'a5.jpg', NULL, NULL),
(10, 5, 'b5.jpg', NULL, NULL),
(11, 5, 'c5.jpg', NULL, NULL),
(12, 5, 'd5.jpg', NULL, NULL),
(13, 6, 'a6.jpg', NULL, NULL),
(14, 6, 'b6.jpg', NULL, NULL),
(15, 6, 'c6.jpg', NULL, NULL),
(16, 6, 'd6.jpg', NULL, NULL),
(17, 7, 'a7.jpg', NULL, NULL),
(18, 7, 'b7.jpg', NULL, NULL),
(19, 7, 'c7.jpg', NULL, NULL),
(20, 7, 'd7.jpg', NULL, NULL),
(21, 8, 'a8.jpg', NULL, NULL),
(22, 8, 'b8.jpg', NULL, NULL),
(23, 8, 'c8.jpg', NULL, NULL),
(24, 8, 'd8.jpg', NULL, NULL),
(25, 9, 'a9.jpg', NULL, NULL),
(26, 9, 'b9.jpg', NULL, NULL),
(27, 9, 'c9.jpg', NULL, NULL),
(28, 9, 'd9.jpg', NULL, NULL),
(29, 10, 'a10.jpg', NULL, NULL),
(30, 10, 'b10.jpg', NULL, NULL),
(31, 10, 'c10.jpg', NULL, NULL),
(32, 10, 'd10.jpg', NULL, NULL),
(33, 11, 'a11.jpg', NULL, NULL),
(34, 11, 'b11.jpg', NULL, NULL),
(35, 11, 'c11.jpg', NULL, NULL),
(36, 11, 'd11.jpg', NULL, NULL),
(37, 12, 'a12.jpg', NULL, NULL),
(38, 12, 'b12.jpg', NULL, NULL),
(39, 12, 'c12.jpg', NULL, NULL),
(40, 12, 'd12.jpg', NULL, NULL),
(41, 13, 'a13.jpg', NULL, NULL),
(42, 13, 'b13.jpg', NULL, NULL),
(43, 13, 'c13.jpg', NULL, NULL),
(44, 13, 'd13.jpg', NULL, NULL),
(45, 14, 'a14.jpg', NULL, NULL),
(46, 14, 'b14.jpg', NULL, NULL),
(47, 14, 'c14.jpg', NULL, NULL),
(48, 14, 'd14.jpg', NULL, NULL),
(49, 15, 'a15.jpg', NULL, NULL),
(50, 15, 'b15.jpg', NULL, NULL),
(51, 15, 'c15.jpg', NULL, NULL),
(52, 15, 'd15.jpg', NULL, NULL),
(53, 16, 'a16.jpg', NULL, NULL),
(54, 16, 'b16.jpg', NULL, NULL),
(55, 16, 'c16.jpg', NULL, NULL),
(56, 16, 'd16.jpg', NULL, NULL),
(57, 17, 'a17.jpg', NULL, NULL),
(58, 17, 'b17.jpg', NULL, NULL),
(59, 17, 'c17.jpg', NULL, NULL),
(60, 17, 'd17.jpg', NULL, NULL),
(61, 18, 'a18.jpg', NULL, NULL),
(62, 18, 'b18.jpg', NULL, NULL),
(63, 18, 'c18.jpg', NULL, NULL),
(64, 18, 'd18.jpg', NULL, NULL),
(65, 19, 'a19.jpg', NULL, NULL),
(66, 19, 'b19.jpg', NULL, NULL),
(67, 19, 'c19.jpg', NULL, NULL),
(68, 19, 'd19.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_05_045511_create_service_providers_table', 1),
(4, '2019_05_05_045539_create_posts_table', 1),
(5, '2019_05_05_045603_create_social_networks_table', 1),
(6, '2019_05_05_045718_create_bookings_table', 1),
(7, '2019_05_05_045737_create_booking_codes_table', 1),
(8, '2019_05_05_045856_create_admins_table', 1),
(9, '2019_05_05_053000_create_images_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('customer@gmail.com', '$2y$10$Ppr753PSLlnRhTJqLAgqOuN7a3XvH4scW2wwlM.Q/C1SFnn8OPb7m', '2019-08-01 22:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_provider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rent` double(8,2) DEFAULT NULL,
  `room` double(8,2) DEFAULT NULL,
  `room_size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `condition` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `service_provider_id`, `title`, `details`, `address`, `rent`, `room`, `room_size`, `approve`, `condition`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(7, 3, NULL, '<p>Cold room is one warehouse, with certain desired room temperature and humidity by mechanical refrigeration, storing special products in industry of foods, medecine, meat, fruit and vegetable, chemical, seafood, cultivation, agriculture, technology testing, raw meterial and biologicals. With acceleration of modernization, application of cold room storage is wider in different industrials and fields.</p><p>Cold room is composed of room body, refrigeration unit, evaporator, electric control box, expenasion valve, copper pipe, wire, refrigerant and other related necessary materials.</p><p><strong>assify cold room by room temperature as following:</strong></p><ul><li>High temperature cold room(±5℃): For storage of fruit and vegetabls;</li><li>Medium temperature cold room(-10℃~-5℃): For storage of foods after freezing;</li><li>Low tempeature cold room(-20℃~-10℃): For storage of aquatic products, meats after freezing;</li><li>Freezing cold room(below -25℃): For blast freezing products before storage</li><li>Differnet panel sheet material to meet different budget and applications;</li><li>Adopt top quality brand compoents to guarantee system stablility and reliability.</li><li>Meet&nbsp;‘cold room design criterion’&nbsp;, formal and safe;</li><li>Cam lock design, panel assembly fast and efficient;</li><li>Intelligent and accurate temperature control system with high reliability;</li><li>Multi system protection and simple maintenance;</li><li>Adopt environment friendly refrigerant, safe and friendly</li><li>Custom design by customer’s requirements with whole course technology support;</li><li>Overseas successful project experience and internationalization;</li><li>Original imported DANFOSS expansion valve.</li><li>Quality refrigeration unit and air cooler</li><li>Quality original international brand compressor</li><li>Multiple door type for choosing</li></ul>', 'mirpur-1,D-Block', 3000.00, 4.00, '1000 square fit', 1, '<p>Apples and pears have the longest storage life of the tree fruits, and can be kept in cold storage up to four months under ideal conditions and up to 12 months in controlled atmospheres. Temperatures in cold storage range from 32 to 38ºF, depending on the chilling sensitivity of the variety. Most varieties can be stored at temperatures near 32ºF, but regular monitoring of room temperature is recommended to prevent freezing in rooms that do not maintain a consistent temperature. Honeycrisp is prone to chilling injury when stored at temperatures below 36ºF. Honeycrisp and other chilling sensitive apples should be stored at a temperature of 37ºF.</p>', 23.8138267, 90.3419191, '2019-05-07 13:08:57', '2019-05-07 13:10:00'),
(8, 4, NULL, '<p>Cold room is one warehouse, with certain desired room temperature and humidity by mechanical refrigeration, storing special products in industry of foods, medecine, meat, fruit and vegetable, chemical, seafood, cultivation, agriculture, technology testing, raw meterial and biologicals. With acceleration of modernization, application of cold room storage is wider in different industrials and fields.</p><p>Cold room is composed of room body, refrigeration unit, evaporator, electric control box, expenasion valve, copper pipe, wire, refrigerant and other related necessary materials.</p><p><strong>assify cold room by room temperature as following:</strong></p><ul><li>High temperature cold room(±5℃): For storage of fruit and vegetabls;</li><li>Medium temperature cold room(-10℃~-5℃): For storage of foods after freezing;</li><li>Low tempeature cold room(-20℃~-10℃): For storage of aquatic products, meats after freezing;</li><li>Freezing cold room(below -25℃): For blast freezing products before storage</li><li>Differnet panel sheet material to meet different budget and applications;</li><li>Adopt top quality brand compoents to guarantee system stablility and reliability.</li><li>Meet&nbsp;‘cold room design criterion’&nbsp;, formal and safe;</li><li>Cam lock design, panel assembly fast and efficient;</li><li>Intelligent and accurate temperature control system with high reliability;</li><li>Multi system protection and simple maintenance;</li><li>Adopt environment friendly refrigerant, safe and friendly</li><li>Custom design by customer’s requirements with whole course technology support;</li><li>Overseas successful project experience and internationalization;</li><li>Original imported DANFOSS expansion valve.</li><li>Quality refrigeration unit and air cooler</li><li>Quality original international brand compressor</li><li>Multiple door type for choosing</li></ul>', 'boyalia,rajshahi', 2000.00, 1.00, '500 square fit', 1, '<p>Apples and pears have the longest storage life of the tree fruits, and can be kept in cold storage up to four months under ideal conditions and up to 12 months in controlled atmospheres. Temperatures in cold storage range from 32 to 38ºF, depending on the chilling sensitivity of the variety. Most varieties can be stored at temperatures near 32ºF, but regular monitoring of room temperature is recommended to prevent freezing in rooms that do not maintain a consistent temperature. Honeycrisp is prone to chilling injury when stored at temperatures below 36ºF. Honeycrisp and other chilling sensitive apples should be stored at a temperature of 37ºF.</p>', 24.3695, 88.6193, '2019-05-07 13:11:58', '2019-05-07 13:11:58'),
(9, 5, NULL, '<p>Cold room is one warehouse, with certain desired room temperature and humidity by mechanical refrigeration, storing special products in industry of foods, medecine, meat, fruit and vegetable, chemical, seafood, cultivation, agriculture, technology testing, raw meterial and biologicals. With acceleration of modernization, application of cold room storage is wider in different industrials and fields.</p><p>Cold room is composed of room body, refrigeration unit, evaporator, electric control box, expenasion valve, copper pipe, wire, refrigerant and other related necessary materials.</p><p><strong>assify cold room by room temperature as following:</strong></p><ul><li>High temperature cold room(±5℃): For storage of fruit and vegetabls;</li><li>Medium temperature cold room(-10℃~-5℃): For storage of foods after freezing;</li><li>Low tempeature cold room(-20℃~-10℃): For storage of aquatic products, meats after freezing;</li><li>Freezing cold room(below -25℃): For blast freezing products before storage</li><li>Differnet panel sheet material to meet different budget and applications;</li><li>Adopt top quality brand compoents to guarantee system stablility and reliability.</li><li>Meet&nbsp;‘cold room design criterion’&nbsp;, formal and safe;</li><li>Cam lock design, panel assembly fast and efficient;</li></ul>', 'Rangpur, Sadar Upazila, Bangladesh', 3000.00, 3.00, '1000 square fit', 1, '<p>Apples and pears have the longest storage life of the tree fruits, and can be kept in cold storage up to four months under ideal conditions and up to 12 months in controlled atmospheres. Temperatures in cold storage range from 32 to 38ºF, depending on the chilling sensitivity of the variety. Most varieties can be stored at temperatures near 32ºF, but regular monitoring of room temperature is recommended to prevent freezing in rooms that do not maintain a consistent temperature. Honeycrisp is prone to chilling injury when stored at temperatures below 36ºF. Honeycrisp and other chilling sensitive apples should be stored at a temperature of 37ºF.</p>', 25.7439, 89.2752, '2019-05-07 13:14:48', '2019-05-07 13:14:48'),
(10, 6, NULL, '<p>Cold room is one warehouse, with certain desired room temperature and humidity by mechanical refrigeration, storing special products in industry of foods, medecine, meat, fruit and vegetable, chemical, seafood, cultivation, agriculture, technology testing, raw meterial and biologicals. With acceleration of modernization, application of cold room storage is wider in different industrials and fields.</p><p>Cold room is composed of room body, refrigeration unit, evaporator, electric control box, expenasion valve, copper pipe, wire, refrigerant and other related necessary materials.</p><p><strong>assify cold room by room temperature as following:</strong></p><ul><li>High temperature cold room(±5℃): For storage of fruit and vegetabls;</li><li>Medium temperature cold room(-10℃~-5℃): For storage of foods after freezing;</li><li>Low tempeature cold room(-20℃~-10℃): For storage of aquatic products, meats after freezing;</li><li>Freezing cold room(below -25℃): For blast freezing products before storage</li><li>Differnet panel sheet material to meet different budget and applications;</li><li>Adopt top quality brand compoents to guarantee system stablility and reliability.</li><li>Meet&nbsp;‘cold room design criterion’&nbsp;, formal and safe;</li><li>Cam lock design, panel assembly fast and efficient;</li></ul>', 'Housing C Block Kushtia', 2000.00, 5.00, '500 square fit', 1, '<p>Apples and pears have the longest storage life of the tree fruits, and can be kept in cold storage up to four months under ideal conditions and up to 12 months in controlled atmospheres. Temperatures in cold storage range from 32 to 38ºF, depending on the chilling sensitivity of the variety. Most varieties can be stored at temperatures near 32ºF, but regular monitoring of room temperature is recommended to prevent freezing in rooms that do not maintain a consistent temperature. Honeycrisp is prone to chilling injury when stored at temperatures below 36ºF. Honeycrisp and other chilling sensitive apples should be stored at a temperature of 37ºF.</p>', 23.9088, 89.122, '2019-05-07 13:17:40', '2019-05-07 13:17:40'),
(13, 9, NULL, '<p>Cold room is one warehouse, with certain desired room temperature and humidity by mechanical refrigeration, storing special products in industry of foods, medecine, meat, fruit and vegetable, chemical, seafood, cultivation, agriculture, technology testing, raw meterial and biologicals. With acceleration of modernization, application of cold room storage is wider in different industrials and fields.</p><p>Cold room is composed of room body, refrigeration unit, evaporator, electric control box, expenasion valve, copper pipe, wire, refrigerant and other related necessary materials.</p><p><strong>assify cold room by room temperature as following:</strong></p><ul><li>High temperature cold room(±5℃): For storage of fruit and vegetabls;</li><li>Medium temperature cold room(-10℃~-5℃): For storage of foods after freezing;</li><li>Low tempeature cold room(-20℃~-10℃): For storage of aquatic products, meats after freezing;</li><li>Freezing cold room(below -25℃): For blast freezing products before storage</li><li>Differnet panel sheet material to meet different budget and applications;</li><li>Adopt top quality brand compoents to guarantee system stablility and reliability.</li></ul>', 'Sector 12, Dhaka - 1231, Bangladesh', 3000.00, 2.00, '1000 square fit', 1, '<ul><li>Cam lock design, panel assembly fast and efficient;</li><li>Intelligent and accurate temperature control system with high reliability;</li><li>Multi system protection and simple maintenance;</li><li>Adopt environment friendly refrigerant, safe and friendly</li><li>Custom design by customer’s requirements with whole course technology support;</li><li>Overseas successful project experience and internationalization;</li><li>Original imported DANFOSS expansion valve.</li><li>Quality refrigeration unit and air cooler</li><li>Quality original international brand compressor</li><li>Multiple door type for choosing</li></ul>', 23.8759, 90.3795, '2019-05-07 13:27:34', '2019-05-07 13:27:34'),
(18, 11, NULL, '<p>This is some sample content.</p>', 'Mohammadpur,Dhaka', 300.00, 20.00, '1000', 1, '<p>This is some sample content.</p>', 23.763313, 90.354963, '2019-08-01 23:13:41', '2019-08-01 23:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `service_providers`
--

CREATE TABLE `service_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cold_storage_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conditions` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_providers`
--

INSERT INTO `service_providers` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone_no`, `cold_storage_name`, `address`, `latitude`, `longitude`, `image`, `conditions`, `details`, `block`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Sumon Ali', 'sumon@gmail.com', NULL, '$2y$10$0PS5iCuuThAwYPdf30.HPOnUwhkMqPgzwsaaBaipW5qyvWdROmSce', '222222233', 'Sumon Cold Storage', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-05-07 12:22:35', '2019-07-24 23:42:40'),
(4, 'Mokbul Hossain', 'mokbul@gmail.com', NULL, '$2y$10$25BHXXB2LU0WT4ZIM9EyX.7Hdp95wdnvS9trMDaLIjChJHBoEOaHS', '01778207712', 'Sorkar Cold Storage', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-05-07 12:23:28', '2019-06-02 00:40:21'),
(5, 'Kisor Loskor', 'kisor@gmail.com', NULL, '$2y$10$jQKn2GN0YcmxAe4zYH5E/.AW2pzZEMMT6ZL91WDENFbpHlAp1OJqy', '23242343', 'Kisor Cold Storage', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-05-07 12:24:18', '2019-05-07 12:24:18'),
(6, 'Azad Khan', 'azad@gmail.com', NULL, '$2y$10$BlN1jyOoQbJbBJ4ZDaNTauljNeJozoH32D68kBDPmFPtGpZ6qvAbW', '2342444455', 'Azad Khan Cold Storage', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-05-07 12:24:58', '2019-05-08 13:44:18'),
(9, 'Shakil Hossain', 'shakil@gmail.com', NULL, '$2y$10$lVWhxoFfQaF4NgUtW2j/YOEbZlYce1oFDpeI7GQ/7jktMZNNcVSHK', '2221111133333', 'Shakil Cold Storage', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2019-05-07 12:27:28', '2019-05-07 12:27:28'),
(11, 'A2T Storage', 'Service_Provider@gmail.com', NULL, '$2y$10$enDgNVFzm6uiHSHOE5jjg.KDAVn0HAZ/ZqrSWqoYqeblSDF4VxYAy', '01700000000', 'A2T Storage', 'mirpur-1,D block Dhaka', NULL, NULL, NULL, '<p>Apples and pears have the longest storage life ...</p>', '<p>Cold room is one warehouse, with certain desired room temperature and humidity by mechanical refrigeration, storing special products in industry of foods, medecine, meat, fruit and vegetable, chemical, seafood, cultivation, agriculture, technology testing, raw meterial and biologicals. With acceleration of modernization, application of cold room storage is wider in different industrials and fields.</p><p>Cold room is composed of room body, refrigeration unit, evaporator, electric control box, expenasion valve, copper pipe, wire, refrigerant and other related necessary materials.</p><p><strong>assify cold room by room temperature as following:</strong></p><ul><li>High temperature cold room(±5℃): For storage of fruit and vegetabls;</li><li>Medium temperature cold room(-10℃~-5℃): For storage of foods after freezing;</li><li>Low tempeature cold room(-20℃~-10℃): For storage of aquatic products, meats after freezing;</li><li>Freezing cold room(below -25℃): For blast freezing products before storage</li><li>Differnet panel sheet material to meet different budget and applications;</li><li>Adopt top quality brand compoents to guarantee system stablility and reliability.</li><li>Meet&nbsp;‘cold room design criterion’&nbsp;, formal and safe;</li><li>Cam lock design, panel assembly fast and efficient;</li><li>Intelligent and accurate temperature control system with high reliability;</li><li>Multi system protection and simple maintenance;</li><li>Adopt environment friendly refrigerant, safe and friendly</li><li>Custom design by customer’s requirements with whole course technology support;</li><li>Overseas successful project experience and internationalization;</li><li>Original imported DANFOSS expansion valve.</li><li>Quality refrigeration unit and air cooler</li><li>Quality original international brand compressor</li></ul>', 0, NULL, '2019-08-01 23:05:06', '2019-08-02 17:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `social_networks`
--

CREATE TABLE `social_networks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `service_provider_id` int(10) UNSIGNED DEFAULT NULL,
  `network_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_awesome_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone_no`, `address`, `latitude`, `longitude`, `image`, `block`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Customer', 'customer@gmail.com', NULL, '$2y$10$c.FloMrgxJPYYl2kR8vykekgyPNPU130i5pPEYAW9RMJnzPNPHFhO', '3322222222', 'mirpur-1,D-Block', NULL, NULL, 'img/customer/1563892678customer@gmail.com.png', 0, 'tFr9LtPdIyWaFwvA2f7g1uH1xi1Yp8tbUr5oKDRmag9U2NoJ7JH9hHR7jcY6', '2019-05-05 08:49:00', '2019-07-23 21:37:58'),
(2, 'customer2', '123456@gmail.com', NULL, '$2y$10$prKvDxQEO6U7JaCjkcjoG.5ra1hub8H4T.IfSgv4QWDir.85HkjaK', '01778207719', NULL, NULL, NULL, NULL, 0, 'yfGhMZaVT5hU373XylEcfDVAQCh37TjSOTw2Qmlp9b3krs9OCDhDfXgOsadZ', '2019-06-25 15:52:51', '2019-07-09 15:30:55'),
(3, 'mokbul', 'mokbul@gmail.com', NULL, '$2y$10$IbRRtEejljMuteajDPxENeoYiDcHXH6/6.j/dhmZ2Qmv1bDo2jac6', '01444444444', NULL, NULL, NULL, NULL, 0, NULL, '2019-07-09 15:35:52', '2019-07-22 14:17:40'),
(4, 'Tanzilur Rahman', 'dipur232@gmail.com', NULL, '$2y$10$g1bZqjcOcItmmwUIXy3z6eLG49/C1yJsZO6zQ24wL.dpFx4S/W3kS', '01700000000', 'Dhaka', NULL, NULL, 'img/customer/1564675168dipur232@gmail.com.jpg', 0, 'xh6KFX8xGfTrMB7xDSI7aCa9mrRm9DLmpVPoYWY7CUuUBOZDIeD7cMw2uPqy', '2019-08-01 22:57:40', '2019-08-01 22:59:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `booking_codes`
--
ALTER TABLE `booking_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_provider_id` (`service_provider_id`);

--
-- Indexes for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_providers_email_unique` (`email`);

--
-- Indexes for table `social_networks`
--
ALTER TABLE `social_networks`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking_codes`
--
ALTER TABLE `booking_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `social_networks`
--
ALTER TABLE `social_networks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `booking_codes`
--
ALTER TABLE `booking_codes`
  ADD CONSTRAINT `booking_codes_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`service_provider_id`) REFERENCES `service_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
