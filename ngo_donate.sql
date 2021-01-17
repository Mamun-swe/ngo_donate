-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 17, 2021 at 04:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngo_donate`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, '1610377958.png', '2021-01-11 09:12:38', '2021-01-11 09:12:38'),
(2, '1610377968.jpg', '2021-01-11 09:12:48', '2021-01-11 09:12:48'),
(4, '1610380881.jpg', '2021-01-11 10:01:21', '2021-01-11 10:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `short_details`, `details`, `created_at`, `updated_at`) VALUES
(1, 'test blog', '1610376990.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', '<p><strong>Generate&nbsp;<em>Lorem Ipsum</em>&nbsp;placeholder text for use in</strong></p>\r\n\r\n<p>your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.Generate&nbsp;<em>Lorem Ipsum</em>&nbsp;placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.Generate&nbsp;<em>Lorem Ipsum</em>&nbsp;placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.Generate&nbsp;<em>Lorem Ipsum</em>&nbsp;placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.Generate&nbsp;<em>Lorem Ipsum</em>&nbsp;placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.Generate&nbsp;<em>Lorem Ipsum</em>&nbsp;placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.</p>', '2021-01-11 08:56:30', '2021-01-11 08:56:30'),
(2, 'open war challenge', '1610380376.jpg', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.', '<p><strong>Lorem ipsum, or lipsum as it is sometimes known,</strong></p>\r\n\r\n<p>is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.ummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', '2021-01-11 09:52:56', '2021-01-11 09:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `donates`
--

CREATE TABLE `donates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ngo_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donates`
--

INSERT INTO `donates` (`id`, `ngo_id`, `name`, `email`, `phone`, `method`, `transaction_number`, `amount`, `created_at`, `updated_at`) VALUES
(1, 5, 'Mamun', 'mamun.swe.277@gmail.com', '01533592610', 'bkash', 'ghfghfghfghfg', '500', '2021-01-16 12:35:29', '2021-01-16 12:35:29');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_11_144917_create_blogs_table', 2),
(5, '2021_01_11_145757_create_teams_table', 3),
(6, '2021_01_11_150719_create_banners_table', 4),
(8, '2021_01_11_162945_create_ngo_infos_table', 5),
(9, '2021_01_16_165943_create_dotanes_table', 6),
(10, '2021_01_16_183216_create_donates_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ngo_infos`
--

CREATE TABLE `ngo_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ngo_id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ngo_infos`
--

INSERT INTO `ngo_infos` (`id`, `ngo_id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, '1610386300.jpg', '<h2><strong>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry.</strong>&nbsp;</h2>\r\n\r\n<p><em>Lorem Ipsum</em> has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. <em>Lorem Ipsum</em> has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p><em>Lorem Ipsum</em> has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. <em>Lorem Ipsum</em> has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p><em>Lorem Ipsum</em> has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. <em>Lorem Ipsum</em> has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '2021-01-11 11:31:40', '2021-01-11 11:31:40'),
(2, 4, '1610472781.jpg', '<h2><strong>Organizations which are independent of government</strong></h2>\r\n\r\n<ul>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n</ul>', '2021-01-12 11:33:01', '2021-01-12 11:33:01'),
(3, 5, '1610473192.gif', '<h2><strong>Organizations which are independent of government</strong></h2>\r\n\r\n<ul>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n</ul>', '2021-01-12 11:39:52', '2021-01-12 11:39:52'),
(4, 6, '1610473226.jpg', '<h2><strong>Organizations which are independent of government</strong></h2>\r\n\r\n<ul>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n</ul>', '2021-01-12 11:40:26', '2021-01-12 11:40:26'),
(5, 7, '1610473648.gif', '<h2><strong>Organizations which are independent of government</strong></h2>\r\n\r\n<ul>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n	<li>involvement are known as non-governmental organizations or non-government organizations, with NGO as an acronym. NGOs are a subgroup of organizations founded by citizens, which include clubs and associations that provide services to their members and others.</li>\r\n</ul>', '2021-01-12 11:47:28', '2021-01-12 11:47:28');

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
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `title`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Test', 'CEO', '1610377483.png', '2021-01-11 09:04:43', '2021-01-11 09:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` enum('user','ngo','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_type`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', NULL, '$2y$10$7hn1k257ZR/mOyEW5tRYa.D5ToE1tuXlPtA0neAW0s.D8zEcSzKLC', NULL, '2021-01-08 09:38:37', '2021-01-08 09:38:37'),
(2, 'NGO 1', 'ngo@gmail.com', 'ngo', NULL, '$2y$10$lH53OrsWXjaaFoEE5Pb8zutijRoLwG.9T1MPyO11f3ePqt8opkNiy', NULL, '2021-01-08 09:54:42', '2021-01-08 09:54:42'),
(3, 'Mamun', 'mamun.swe.277@gmail.com', 'user', NULL, '$2y$10$b4/K/A7UvIMdSZhVIl5MtuDkeuUYv8ypJVd94yIHZG9DwyOlByAmu', NULL, '2021-01-08 10:16:47', '2021-01-08 10:16:47'),
(4, 'ngo2', 'ngo2@gmail.com', 'ngo', NULL, '$2y$10$iLb9C.R3m7N62smwW.r6r.JBF4vSQ73su86TL7b/AdbwrorlXMKQK', NULL, '2021-01-12 11:29:48', '2021-01-12 11:29:48'),
(5, 'ngo3', 'ngo3@gmail.com', 'ngo', NULL, '$2y$10$hLvTXdot.RF6AYO1KCaXouamXOmYJ0RoydypMWCMoP7xigVSYCJfG', NULL, '2021-01-12 11:30:15', '2021-01-12 11:30:15'),
(6, 'ngo4', 'ngo4@gmail.com', 'ngo', NULL, '$2y$10$2sXKb5Q3ZOEsheNIF1b9zuT5tkxFsAsMdlni71zmznA9bcCndSZ1W', NULL, '2021-01-12 11:30:38', '2021-01-12 11:30:38'),
(7, 'ngo5', 'ngo5@gmail.com', 'ngo', NULL, '$2y$10$IK.5zw1PT06CwAV76C.aJOBcS6Os2vV7URs1P14/He6.43dmGt6Lu', NULL, '2021-01-12 11:46:01', '2021-01-12 11:46:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donates`
--
ALTER TABLE `donates`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `ngo_infos`
--
ALTER TABLE `ngo_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donates`
--
ALTER TABLE `donates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ngo_infos`
--
ALTER TABLE `ngo_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
