-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2018 at 01:43 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pet_society_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_stream_photos`
--

CREATE TABLE `activity_stream_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `pet_activity_stream_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2018_12_04_101259_create_users_table', 1),
(2, '2018_12_04_124944_create_pet_activity_streams_tables', 1),
(3, '2018_12_04_125757_create_activity_stream_photos_tables', 1),
(4, '2018_12_05_060339_create_pets_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `colour` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `user_id`, `type`, `colour`, `qty`, `created_at`, `updated_at`) VALUES
(2, 4, 1, 1, 9, '2018-12-07 12:39:43', '2018-12-07 12:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `pet_activity_streams`
--

CREATE TABLE `pet_activity_streams` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Anissa Hahn', '$2y$10$Tb5WqPK7b8/C.Mwul0zFGOsWlw1Z0Z48CV8GZVttt9FBfC1zRKwOq', '2018-12-06 17:01:00', '2018-12-06 17:01:00'),
(2, 'Nicola Torphy IV', '$2y$10$3lCCck.lQxPoJrc5VHQE0u9qoZOLIztgGkKDNRPr/cOMBlIcDisp2', '2018-12-06 17:01:00', '2018-12-06 17:01:00'),
(3, 'Emmet Gleason', '$2y$10$GbbfJH.EQvl9rve1Up4YouQGbR0yaj0mk1uh631Aru0bvVcGz8trC', '2018-12-06 17:01:00', '2018-12-06 17:01:00'),
(4, 'jebon', '$2y$10$Tb5WqPK7b8/C.Mwul0zFGOsWlw1Z0Z48CV8GZVttt9FBfC1zRKwOq', '2018-12-06 17:01:00', '2018-12-07 13:13:38'),
(5, 'Mrs. Valerie Wilderman IV', '$2y$10$WMUwlw0IMWEaThVnX2GZJOHOPnJF1uhVYv2Qze7F7BbN.le0ymUaG', '2018-12-06 17:01:00', '2018-12-06 17:01:00'),
(6, 'abu', '$2y$10$cTl1gUjRALmvgYSo6JOee.XxvdhPd2XTOV8tW1e1Xy5sp7/Z1vri.', '2018-12-07 13:39:41', '2018-12-07 13:39:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_stream_photos`
--
ALTER TABLE `activity_stream_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_activity_streams`
--
ALTER TABLE `pet_activity_streams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_stream_photos`
--
ALTER TABLE `activity_stream_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pet_activity_streams`
--
ALTER TABLE `pet_activity_streams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
