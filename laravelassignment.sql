-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 08:56 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelassignment`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2014_10_12_000000_create_users_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_income` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manglik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_income` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_family_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_manglik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `google_id`, `gender`, `annual_income`, `occupation`, `family_type`, `manglik`, `expected_income`, `partner_occupation`, `partner_family_type`, `partner_manglik`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kavita', 'Gavhane', 'kavit@gmail.com', '$2y$10$kx.ErWTWxk..POQFWDiIv.H2h5tV9piAbZ/YdtSugI1tYswoV12V.', NULL, 'Female', '200000', 'Private job', 'Joint family', 'Yes', '$100 - $300', 'Private job', 'Joint family', 'Yes', NULL, NULL, '2021-12-08 07:40:06', '2021-12-08 07:40:06'),
(2, 'Aida', 'Conroy', 'cwalker@example.com', '$2y$10$dtBkykrYRwenu6qKKcS8Su3wcTLZ1OMKA6H3hlbvFe7on0h7gXrXG', NULL, 'male', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 08:54:46', 'cMYUkJdpwf', '2021-12-08 14:24:46', '2021-12-08 14:24:46'),
(3, 'Summer', 'Grant', 'calista39@example.net', '$2y$10$KU0MuB8/k2sCwA42uCJjiO.nGdXQ/ds2w7mllPYOXzf2r4VPtf8vW', NULL, 'male', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 08:54:46', 'Al7gH3t7V5', '2021-12-08 14:24:46', '2021-12-08 14:24:46'),
(4, 'Brennan', 'Cummings', 'oprice@example.com', '$2y$10$5e7ebOOMk8T3wXplMX1b2Of7IQ/dwv7yJXPh/gB6RAjEuZiTkZfyG', NULL, 'female', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 08:54:46', 'N0IxFqSKaX', '2021-12-08 14:24:46', '2021-12-08 14:24:46'),
(5, 'Madge', 'Bernhard', 'urolfson@example.net', '$2y$10$iiuSQfISaruSc6Ofdw9ltOJycYgLKQzbMSNbng1jCFd1NLnOO7Jd.', NULL, 'female', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 08:54:47', 'qXSiRIj6FH', '2021-12-08 14:24:47', '2021-12-08 14:24:47'),
(6, 'Ashlynn', 'Padberg', 'wabshire@example.net', '$2y$10$CoCXM4chXefsFxbTuC/tZ.5soYMtbRixVtJAFIqvKjs6qj31PVs4u', NULL, 'male', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 08:54:47', 'UBdVf31f0R', '2021-12-08 14:24:47', '2021-12-08 14:24:47'),
(7, 'Rosalia', 'Legros', 'vpollich@example.net', '$2y$10$r.cOi8af3SgARpXvbQE5DOiP1k4OY6FpTYHlR3Q.XQr4TrFC5BAZW', NULL, 'male', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 08:54:47', 'zFQrzxnVgI', '2021-12-08 14:24:47', '2021-12-08 14:24:47'),
(8, 'Patience', 'Ziemann', 'wgulgowski@example.com', '$2y$10$5uNSeYvULPtaSgbe5hlOOuvMpTxnATbgoV6PsKhhj9Z3L6NUf3uOS', NULL, 'female', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 08:54:47', 'u5tcIOcOcM', '2021-12-08 14:24:47', '2021-12-08 14:24:47'),
(9, 'Florida', 'Weimann', 'twila.mueller@example.net', '$2y$10$5umNrhPPlwNNchh6jiPbX.c5KUNpV0/LF1oPJHcu99cny2jTDIv42', NULL, 'male', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 08:54:47', 'n0m92LTGlp', '2021-12-08 14:24:47', '2021-12-08 14:24:47'),
(10, 'Dustin', 'Davis', 'zachery04@example.org', '$2y$10$UXls7P6Nd6dleuT4bhJo7.wpj3.QKkNXE6eeI5RLeC7AA7qGVDI6m', NULL, 'male', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 08:54:47', 'N3VeXaa6On', '2021-12-08 14:24:47', '2021-12-08 14:24:47'),
(11, 'Cristina', 'Schneider', 'rylan.reichel@example.org', '$2y$10$GqKJhO6VkGD8mnD6JBE6F.vDRo7ZXcEqZNaweCPs2di8nog1X0DZ2', NULL, 'female', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 08:54:47', 'MsmMlY16gY', '2021-12-08 14:24:47', '2021-12-08 14:24:47'),
(12, 'Kiel', 'Lind', 'erdman.armand@example.net', '$2y$10$HCJOi/noKOMojswSk7WOIuE5dkx31B5g/4juvY8HSHJAliSC92ShO', NULL, 'female', '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:07:30', '72UU0K6Mbw', '2021-12-08 14:37:30', '2021-12-08 14:37:30'),
(13, 'Vince', 'Stamm', 'monique.king@example.net', '$2y$10$0wvURmAaiTqDZf/dXOzXjuJwghXhSHCEbUAx24hJNwb4isypfjBAi', NULL, 'male', '18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:07:30', 'jHCSMKhtIi', '2021-12-08 14:37:30', '2021-12-08 14:37:30'),
(14, 'Louisa', 'Leannon', 'kennedy.schaefer@example.org', '$2y$10$OL0rCwvXMVH8KHbZVKzva.8zcPTwV449odnD.iybNw/l9F2LqLcG6', NULL, 'male', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:07:31', 'AGCHKtrcB0', '2021-12-08 14:37:31', '2021-12-08 14:37:31'),
(15, 'Camila', 'Wuckert', 'wiza.merle@example.com', '$2y$10$ieSKgg.zJbHnZVtXnWeDxeZaASy6q6KDr4JhSSlFSZIx7Y3yBkyPa', NULL, 'male', '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:07:31', '8CNT3Zy47U', '2021-12-08 14:37:31', '2021-12-08 14:37:31'),
(16, 'Jaime', 'Farrell', 'valerie29@example.com', '$2y$10$Q7ccWjbtyki1NU7AqVGvvuCZccjOlrGz/mKO7lwDkXoHHyVgV5iYm', NULL, 'female', '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:07:31', 'sKdVkMeBQe', '2021-12-08 14:37:31', '2021-12-08 14:37:31'),
(17, 'Raleigh', 'Monahan', 'gregg.ernser@example.net', '$2y$10$MBAYpCtYE1LLW7AjQiPxtu2uoAEC3NeT66pf70N6oKfK3dhWuKu1e', NULL, 'female', '19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:07:31', 'GBQ4kC5gve', '2021-12-08 14:37:31', '2021-12-08 14:37:31'),
(18, 'Ronaldo', 'Wehner', 'alice.mosciski@example.org', '$2y$10$vhWMUsqE.qKyJTC3D1GfaeqMtXjSOIMtPhsXne7aBoG8eMw8BYz4y', NULL, 'female', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:07:31', 'yW3RVCRxYy', '2021-12-08 14:37:31', '2021-12-08 14:37:31'),
(19, 'Kay', 'Ondricka', 'wvolkman@example.com', '$2y$10$p2ox9BXuli8LtwcvgfK/sON2BJbSZ0e32UEMD/cAsVUM8.ZpK/pxW', NULL, 'male', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:07:31', 'jdKm5PMGVL', '2021-12-08 14:37:31', '2021-12-08 14:37:31'),
(20, 'Piper', 'Marvin', 'afriesen@example.com', '$2y$10$Yynkp8nvjBLmFyj2HLoQNeQF0H8COXGmruqvTja64Nc0do4RUL1l.', NULL, 'female', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:07:31', 'myFbiC5ctm', '2021-12-08 14:37:31', '2021-12-08 14:37:31'),
(21, 'Jolie', 'Kuvalis', 'bessie52@example.com', '$2y$10$3LUzNbBIAfCxaue77smHsuXsLw.JoQbEPVtZHyDREgAWRSpMmN9Rq', NULL, 'female', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:07:31', '5SzI9nEMId', '2021-12-08 14:37:31', '2021-12-08 14:37:31'),
(22, 'Tomas', 'Considine', 'oglover@example.com', '$2y$10$ob6/kBGnU5rtIHj/VrVi8O3w0EVweK2Q8GhTw8cDLk9xfBGU9tRya', NULL, 'female', '12047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:08:50', 'BrESlyJsmg', '2021-12-08 14:38:50', '2021-12-08 14:38:50'),
(23, 'Nelda', 'Brekke', 'norbert.wolf@example.org', '$2y$10$HtPaVhtZoD0dRWQLLzqpMOfDDkoiiFMeNPwyo0oPwFAKEY3dmBC7C', NULL, 'male', '4433', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:08:50', 'Lr9eKR4tpL', '2021-12-08 14:38:50', '2021-12-08 14:38:50'),
(24, 'Leopold', 'Wolf', 'laurence.hane@example.org', '$2y$10$lVedobsOOzaqyPu3mUnetuY.pL2jvM2op3X5PC1I9MsjBdb1i.28O', NULL, 'male', '6425', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:08:50', '5Q0MQFi5i8', '2021-12-08 14:38:50', '2021-12-08 14:38:50'),
(25, 'Karson', 'Swift', 'jacobson.shaun@example.org', '$2y$10$qBXLWw9FV32R/vsOkXUrIuiZR5.K8wApndwDa1vBjy2hboCGGUe1u', NULL, 'female', '14025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:08:50', 'K5Zv8FjNlv', '2021-12-08 14:38:50', '2021-12-08 14:38:50'),
(26, 'Ova', 'Hilpert', 'annamae44@example.net', '$2y$10$zDAF5867xaRfnpGilMLIlO/S05l61BI8SEGc8yaMv3dgH98ErO.H2', NULL, 'male', '7936', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:08:50', 'KACpqOoxPI', '2021-12-08 14:38:50', '2021-12-08 14:38:50'),
(27, 'Mikayla', 'Aufderhar', 'watsica.adeline@example.com', '$2y$10$YT8xwl0bhOckTUscOC1Xhep3TSUYFdASg7zzlR8vJP1JQTxfgixDe', NULL, 'male', '5065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:08:50', 'IWDuIFSidO', '2021-12-08 14:38:50', '2021-12-08 14:38:50'),
(28, 'Johann', 'Reilly', 'ijohnson@example.com', '$2y$10$nOIA0IPDUZW9iOuMkTU/eOdskR3WVek1f7yPsDrc9QiTaDanPjvYi', NULL, 'female', '15673', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:08:50', 'z13X9KC5Im', '2021-12-08 14:38:50', '2021-12-08 14:38:50'),
(29, 'Darian', 'Konopelski', 'milton.breitenberg@example.org', '$2y$10$sNlYyA5/VwtPffqVtgN83.RqES./8HPTXgprC9xcHy04NYg7yKF6a', NULL, 'male', '5827', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:08:50', 'QhUMyBeFFe', '2021-12-08 14:38:50', '2021-12-08 14:38:50'),
(30, 'Danika', 'Mayert', 'rnikolaus@example.org', '$2y$10$h9mw16KgKFxZSa0ti2BMo.ThsJTMKeRbtZWnWWC3Slsydjr6QAQl.', NULL, 'female', '18229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:08:50', 'P7MvOmKREy', '2021-12-08 14:38:50', '2021-12-08 14:38:50'),
(31, 'Obie', 'Hahn', 'clara.rowe@example.com', '$2y$10$Twd10ZU3pC/mj272QlFnduDrk5ORM3G1h8s6ZRxl2AEwA5HoWPON2', NULL, 'female', '4321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:08:51', 'A452aEnnpS', '2021-12-08 14:38:51', '2021-12-08 14:38:51'),
(32, 'Lacy', 'Farrell', 'lon79@example.com', '$2y$10$kCFEQxz12geUHdrv/WQ0jOQfNwgeO9YnZOAMOCvdJYsws8WPtWe6q', NULL, 'male', '683471', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:09:23', '8sjQCryhan', '2021-12-08 14:39:23', '2021-12-08 14:39:23'),
(33, 'Demond', 'Wiza', 'wkautzer@example.net', '$2y$10$79TaOfjvzze1v2ZqbhI1puSb5lW5TWJ4K8Tij7xBiw9d9ZsNXBR9a', NULL, 'male', '188490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:09:23', 'pMWIR8oVHy', '2021-12-08 14:39:23', '2021-12-08 14:39:23'),
(34, 'Tressa', 'Larkin', 'schultz.vernice@example.org', '$2y$10$A1VtupiYsYL9PgAF9BoODeE6Htxd0/ZHYOWXiiLLeZfpbT0/M/LEq', NULL, 'male', '925479', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:09:24', 'fnE4R1EGdv', '2021-12-08 14:39:24', '2021-12-08 14:39:24'),
(35, 'Cleora', 'Price', 'mayer.rolando@example.com', '$2y$10$YvbpHHBPWAeZG6kBP46EGeZw4X52RId/xEvtRG20PQ.vc4EM/bobe', NULL, 'male', '995555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:09:24', 'bfePffoJin', '2021-12-08 14:39:24', '2021-12-08 14:39:24'),
(36, 'Luisa', 'Shanahan', 'alberta.halvorson@example.org', '$2y$10$MSTiqkit1Osts73czXVJ8OQ/v9zKk6PFNwubethP0sxgOOPoj5uGK', NULL, 'female', '478118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:09:24', 'YBTRfxAVGw', '2021-12-08 14:39:24', '2021-12-08 14:39:24'),
(37, 'Shana', 'Jerde', 'vallie.cassin@example.org', '$2y$10$iia05dpR/vLEdl34YHvjfud8el.1/nI23ugGHu3CTJRGttB5InZeO', NULL, 'male', '193481', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:09:24', 'Q1Bdl26QIL', '2021-12-08 14:39:24', '2021-12-08 14:39:24'),
(38, 'Kurtis', 'Berge', 'colten36@example.org', '$2y$10$bv1DZH5y3mObJQbM.SxsyuibaoHv431CYYEDdi2bJaS9Cpj1Kic8y', NULL, 'female', '156610', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:09:24', 'rdhrBqLgM7', '2021-12-08 14:39:24', '2021-12-08 14:39:24'),
(39, 'Rosa', 'Abshire', 'roberto.williamson@example.com', '$2y$10$2zKuCE4ZMvUfz8ZhReGUmOwQQKLIMTOr51iDPSFYHvkhWWuuL8NS2', NULL, 'male', '361889', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:09:24', 'Rl0ka3MRUc', '2021-12-08 14:39:24', '2021-12-08 14:39:24'),
(40, 'Bernhard', 'Sanford', 'thompson.mayra@example.net', '$2y$10$BXz8zyZ0ewQ6A6n6Ll85G.jIQ4wTSV4sUXAz7yu0fPhF8tYT3bAfm', NULL, 'female', '171313', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:09:24', 'utmIaK4nlH', '2021-12-08 14:39:24', '2021-12-08 14:39:24'),
(41, 'Favian', 'Boyer', 'hrowe@example.net', '$2y$10$MuNMGqVP0WKtxkIGytOq2egJ.uLuA4YHmO8UZKiz14kF5EuQz7grq', NULL, 'female', '281392', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 09:09:24', 'ELgKqn948m', '2021-12-08 14:39:24', '2021-12-08 14:39:24'),
(42, NULL, NULL, 'kgavhane318@gmail.com', '$2y$10$17xj9/NznEj6dBx360CbvOr0HlLjkIwpPkze1E7.4iyQwuq4kkySe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 00:33:56', '2021-12-09 00:33:56'),
(44, 'Admin', 'User', 'admin@gmail.com', '$2y$10$nJ2RMPLPVK6vKw39J2NVvOedTywfE0p8foGf6pZZ1ssRRifVnwHK.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 06:13:48', '2021-12-09 06:13:48');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
