-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 07:29 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor-appoinment-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin ', '01632054022', 'admin@gmail.com', NULL, '$2y$10$XC6YlZ.wCr3khJBfTDmjYeP1O8tfigyozzBAPCsUznLm3xKAycqGK', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appoinment_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appoinment_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appoinment`
--

INSERT INTO `appoinment` (`id`, `first_name`, `last_name`, `phone`, `email`, `appoinment_date`, `appoinment_time`, `doctor_id`, `user_id`, `payment`, `status`, `created_at`, `updated_at`) VALUES
(33, 'Dipak', 'Debnath', '01983656970', 'dipaksds@gmail.com', '2022-03-07', '11:00', 14, 8, 'on', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Beard', NULL, NULL),
(3, 'Makeup', NULL, NULL),
(4, 'Haircut & Styling', NULL, NULL),
(6, 'Body Treatment', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `award_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `award_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `award_date` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_time` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Wednesday_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `cat_id`, `name`, `hospital`, `specialization`, `email`, `email_verified_at`, `password`, `status`, `about`, `experience`, `experience_year`, `award_description`, `award_name`, `award_date`, `image`, `saturday_time`, `friday_time`, `sunday_time`, `monday_time`, `tuesday_time`, `Wednesday_time`, `thursday_time`, `price`, `remember_token`, `created_at`, `updated_at`) VALUES
(13, 4, 'Abdur Rahim', 'Dhaka Medical college', 'Haircut & Styling', 'Rahim@gmail.com', NULL, '$2y$10$9dc9U7eXleoVAJpf2OxNKuOcsFo19Vrmbhj82nBL94W1M69Ly0FQ2', 1, 'I am a Hair cutting for good Knowlage', '10 year', '10', 'Nothing', 'Nobel', '2-2-22', 'public/slidder/1726630602592852.jpg', '1.00AM--10.00PM', 'Off Day', '1.00AM--10.00PM', '1.00AM--10.00PM', '1.00AM--10.00PM', '1.00AM--10.00PM', '1.00AM--10.00PM', 120, NULL, '2021-12-30 15:08:45', '2021-12-30 15:08:45'),
(14, 4, 'Susmita', 'Dhaka Medical college', 'Haircut & Styling', 'susmita@gmail.com', NULL, '$2y$10$9dc9U7eXleoVAJpf2OxNKuOcsFo19Vrmbhj82nBL94W1M69Ly0FQ2', 1, 'I am a immenoligstI am a Hair cutting for good Knowlage', NULL, NULL, NULL, NULL, NULL, 'public/slidder/1726630761444200.jpg', '8.00-AM-1.00PM', 'off Day', '1.00AM--10.00PM', 'off Day', '8.00-AM-1.00PM', 'off Day', '8.00-AM-1.00PM', 100, NULL, '2021-12-30 15:46:17', '2021-12-30 15:46:17'),
(15, 4, 'Karim', 'Dhaka Medical college', 'Haircut & Styling', 'karim@gmail.com', NULL, '$2y$10$9dc9U7eXleoVAJpf2OxNKuOcsFo19Vrmbhj82nBL94W1M69Ly0FQ2', 1, 'I am a Hair cutting for good Knowlage', NULL, NULL, NULL, NULL, NULL, 'public/slidder/1726630820518152.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150, NULL, '2021-12-30 15:50:06', '2021-12-30 15:50:06'),
(16, 4, 'Kamal', 'Dhaka Medical college', 'Haircut & Styling', 'kamal@gmail.com', NULL, '$2y$10$9dc9U7eXleoVAJpf2OxNKuOcsFo19Vrmbhj82nBL94W1M69Ly0FQ2', 1, 'I am a Hair cutting for good Knowlage', NULL, NULL, NULL, NULL, NULL, 'public/slidder/1726630859919991.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180, NULL, '2021-12-30 15:54:07', '2021-12-30 15:54:07'),
(17, 4, 'Ritttik', 'Dhaka Medical college', 'Haircut & Styling', 'rr@gmail.com', NULL, '$2y$10$9dc9U7eXleoVAJpf2OxNKuOcsFo19Vrmbhj82nBL94W1M69Ly0FQ2', 1, 'I am a Hair cutting for good Knowlage', '10 year', '10', 'Nothing', 'Nobel', '2-2-22', 'public/slidder/1726630958925123.jpg', '8.00-AM-1.00PM', 'Off Day', '8.00-AM-1.00PM', '8.00-AM-1.00PM', '8.00-AM-1.00PM', '8.00-AM-1.00PM', '8.00-AM-1.00PM', 200, NULL, NULL, NULL),
(19, 4, 'Najmul Hasan', 'abc', 'Haircut & Styling', 'dipak@gmail.com', NULL, '$2y$10$9dc9U7eXleoVAJpf2OxNKuOcsFo19Vrmbhj82nBL94W1M69Ly0FQ2', 1, 'I am a Hair cutting for good Knowlage', 'Yes, I have more than experience for hair cutting , thank you.', '3 Years', 'Amazing Hair Cuting for wold', 'Amazing HairCuting', '10-18-2018', 'public/slidder/1726628951264760.jpg', '10:00AM--5:00PM', 'Off Day', '10:00AM--5:00PM', '10:00AM--5:00PM', '10:00AM--5:00PM', '10:00AM--5:00PM', '10:00AM--5:00PM', 220, NULL, '2022-03-06 11:49:04', '2022-03-06 11:49:04'),
(20, 4, 'Salon', 'bd shop', 'Haircut & Styling', 'dipakdebnath4022@gmail.com', NULL, '$2y$10$9dc9U7eXleoVAJpf2OxNKuOcsFo19Vrmbhj82nBL94W1M69Ly0FQ2', 1, 'I am a Hair cutting for good Knowlage', 'yes', '2 year', NULL, NULL, NULL, 'public/slidder/1726621715536662.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 250, NULL, NULL, NULL),
(21, NULL, 'RRR Khan', NULL, NULL, 'rrrr@gmail.com', NULL, '$2y$10$Lo0AjibZRzg20lhPkRyOiefB8JTx.qCXv6VwrnaxCLWCTotbntPlS', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 10:52:30', '2022-03-07 10:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_05_08_154637_create_admins_table', 1),
(10, '2021_05_08_181649_create_doctors_table', 1),
(11, '2021_12_04_065720_create_category_table', 2),
(12, '2021_12_04_073615_create_slidder_table', 3),
(13, '2021_12_04_162200_create_appoinment_table', 4),
(14, '2021_12_04_203914_create_team_table', 5),
(15, '2021_12_04_204428_create_setting_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fb_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtoube_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `fb_link`, `twiter_link`, `youtoube_link`, `logo`, `address`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/najmul.hassan.1675', 'https://twitter.com/?lang=en', 'https://www.youtube.com/', 'public/team/1726626297391279.png', 'Dhanmondi 32 sukrabad dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slidder`
--

CREATE TABLE `slidder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slidder`
--

INSERT INTO `slidder` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(6, 'Pic', 'Banner', 'public/slidder/1726631116957031.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_brith` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mobile` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `date_of_brith`, `blood_group`, `user_address`, `Mobile`, `city`, `state`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Raihanul Islam', 'raihan@gmail.com', NULL, '$2y$10$JaZNwsfouOhhK7aAi6tdwufem2ai0ixPOf7msQkbTcYx3DaoCCnT2', '2022-01-12', NULL, 'Dhaka', 174522222, 'Rajshahi', 'Bangladesh', 'public/slidder/1722323034308872.jpg', NULL, '2021-12-30 15:56:23', '2021-12-30 15:56:23'),
(8, 'dipak Debnath', 'dipaks@gmail.com', NULL, '$2y$10$6RD9k7YLBSEzWWRxsAM9auS8Iu5g8xZkUbWV2yzv0FhREhRX1f7pa', '2022-03-11', NULL, 'Dhanmondi', 1632054022, 'Dhaka', 'Dhaka', 'public/slidder/1726628559034506.png', NULL, '2022-03-07 02:16:29', '2022-03-07 02:16:29');

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
-- Indexes for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `appoinment_email_unique` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slidder`
--
ALTER TABLE `slidder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appoinment`
--
ALTER TABLE `appoinment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slidder`
--
ALTER TABLE `slidder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
