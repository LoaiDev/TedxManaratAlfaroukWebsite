-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2020 at 05:58 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mfis`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(58, '2014_10_12_000000_create_users_table', 1),
(59, '2014_10_12_100000_create_password_resets_table', 1),
(60, '2019_08_19_000000_create_failed_jobs_table', 1),
(61, '2020_01_25_184350_create_user_types_table', 1),
(62, '2020_01_25_190437_create_user_user_type_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Zoila Schinner', 'kessler.gunner@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bN9e5yd5geHgL2m75CY3D754zUw7wIfBjzDc6I9XoPlpPicSjMScXwq6wwxK', '2020-01-26 11:37:02', '2020-01-26 11:37:02', NULL),
(2, 'Maribel Kuhlman', 'germaine.ryan@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jYxNTGOS4j', '2020-01-26 11:37:02', '2020-01-26 11:37:02', NULL),
(3, 'Pansy Considine DVM', 'vlynch@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2UxVLMFHCm', '2020-01-26 11:37:02', '2020-01-26 11:37:02', NULL),
(4, 'Prof. Wyatt Larkin', 'grady.jerrold@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DIH0w2K06L', '2020-01-26 11:37:02', '2020-01-26 11:37:02', NULL),
(5, 'Mr. Delbert Zboncak', 'koss.geo@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DMiBwjbDDY', '2020-01-26 11:37:02', '2020-01-26 11:37:02', NULL),
(6, 'Alfonso Deckow', 'vandervort.damian@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tmf96pfGNh', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(7, 'Constance Quigley MD', 'shanon.reichel@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rJSzxnuIIF', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(8, 'Miss Rhianna Bogan Sr.', 'dach.thelma@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qgar4MeqGF', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(9, 'Zena Koch MD', 'bartell.albert@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vOrxsZjV30', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(10, 'Rhoda Gutmann', 'lamar19@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XcRzJxcIUp', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(11, 'Violette Stamm I', 'tromp.jeremy@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '28BtX6bFpS', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(12, 'Lysanne Green V', 'kasandra.lynch@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p2lu6uSjjk', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(13, 'Chanelle Friesen', 'emory44@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kIXxURDKNx', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(14, 'Domingo Stanton', 'kwalsh@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'T6v24YcX4l', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(15, 'Assunta Donnelly', 'armstrong.jordane@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C126gP4Pha', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(16, 'Maureen Schroeder', 'nboyer@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1hiSMn8ymy', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(17, 'Chandler Champlin', 'aprohaska@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K7deQp5TVT', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(18, 'Christopher Stroman', 'bruen.madison@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YdjepRoRQL', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(19, 'Joe Hauck', 'patricia.kautzer@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '42SzzL3pbw', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(20, 'Enrico Weimann', 'cummings.drake@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vy4mdUlXCS', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(21, 'Judd Cormier', 'mbarton@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sw1DmHDTJ7', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(22, 'Elmer Rutherford', 'grady.otis@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CbgIa61Nba', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(23, 'Geoffrey Zieme', 'percy.sporer@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '00fQjouI3g', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(24, 'Halie Tromp', 'kcummerata@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jmnE9kSPA4', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(25, 'Lavina Haley I', 'bhudson@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PvtxuekjHv', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(26, 'Ally Konopelski', 'douglas.justine@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '34bvyttYvn', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(27, 'Braxton Pollich', 'qgraham@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gspIDPK09P', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(28, 'Brisa O\'Kon', 'johnson.katrina@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't3xW8VrbNI', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(29, 'Clara Emmerich', 'claud34@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wz4SjBl37N', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(30, 'Leila Wiza', 'walter.rod@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sm6dfTKQ5G', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(31, 'Dallas Zulauf', 'geovanni36@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'znAGMGT7UO', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(32, 'Herbert Hamill', 'uwilderman@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AaalngrJSm', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(33, 'Antonetta Langosh', 'skling@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nYFEejI9EC', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(34, 'Sonny Beer', 'scarlett95@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9u4dFE6DYZ', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(35, 'Mrs. Madilyn Bosco', 'witting.raoul@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AIkY0UBisR', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(36, 'Franz Johns', 'ihintz@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LbSATFAGiB', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(37, 'Adalberto Rath', 'rafaela.parker@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hGis4UMcZB', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(38, 'Prof. Clinton Crist II', 'lmaggio@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kEiKMG6Dw1', '2020-01-26 11:37:03', '2020-01-26 11:37:03', NULL),
(39, 'Ulices White', 'larkin.ida@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gIU1V4PqBU', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(40, 'Johnnie Cartwright', 'reichel.winston@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6HHnDA1jm5', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(41, 'Sarah Strosin', 'amurphy@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7j1c1on3Xj', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(42, 'Mr. Sherman Torphy II', 'kareem10@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tLlc31pjRQ', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(43, 'Ansel Dickinson Jr.', 'urban57@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c4vCjlzyBP', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(44, 'Chanel Rolfson', 'hayley.monahan@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FzM4BedlRo', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(45, 'Ms. Bette Hilpert', 'watsica.olaf@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jPVxNnGrdF', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(46, 'Clarabelle Veum', 'ludwig80@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5WLOExK5yg', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(47, 'Hadley Russel I', 'khand@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ifqxu9Cgpg', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(48, 'Giovani Jacobson', 'shanahan.gretchen@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'na1j4UCyPk', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(49, 'Jarvis Rutherford DDS', 'alvera.hackett@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nqVY9SZ7Md', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(50, 'Muriel Crist', 'rahul65@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5rVgFn2oJE', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(51, 'Mrs. Grace Bailey', 'jchamplin@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mbRvsdfyQ0', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(52, 'Jocelyn Schimmel DVM', 'troy56@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zm8y7AyNR2', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(53, 'Lenna Schinner', 'waters.keegan@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LL62QddiwA', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(54, 'Prof. Frankie Rice', 'edison02@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kISAEJeZts', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(55, 'Francisca Jenkins', 'jonathan.abshire@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SzkrtZ3enL', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(56, 'Dr. Idella Prohaska', 'alphonso.mosciski@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ev6zEQJph8', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(57, 'Loren Johnston', 'jerry.leannon@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'syefcKbdI8', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(58, 'Astrid Schneider', 'leuschke.kian@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Th3BYmL7e0', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(59, 'Wallace Connelly II', 'osauer@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eQ9ATeWSXb', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(60, 'Dr. Ayana Tillman I', 'cconroy@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G4yf76SQ9Y', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(61, 'Dr. Avery Spinka IV', 'hildegard.barrows@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O7v3YMtV90', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(62, 'Aisha Leffler DDS', 'nickolas.bartell@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rJ0iLItlji', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(63, 'Benedict Lehner', 'mante.dario@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U2eBwrHBEL', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(64, 'Mr. Tevin Hyatt', 'sgreenfelder@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eCiyzQdfyO', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(65, 'Clementine Pagac', 'mking@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7IqlHEZomt', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(66, 'Justina Renner', 'icie40@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8ESZgY9UnX', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(67, 'Audie Stehr', 'umoen@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EV4tV2TP9x', '2020-01-26 11:37:04', '2020-01-26 11:37:04', NULL),
(68, 'Mrs. Cassandra Kling DDS', 'jameson59@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fm5XI7zDqZ', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(69, 'Kailyn Howell Jr.', 'niko.hodkiewicz@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mzokgroowr', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(70, 'Darian Davis', 'selmer96@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fKNMvP4V52', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(71, 'Tristian Treutel', 'zhansen@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0qoIC1k0St', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(72, 'Augustus Howell', 'daisha70@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6cYZ4eoEW5', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(73, 'Prof. Jamal Leannon Sr.', 'oadams@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0MTAWy7DwI', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(74, 'Jay McClure', 'lindgren.saul@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a3rVOmjYA7', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(75, 'Mr. Marcellus Heathcote DDS', 'eberge@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VoKCWQ4zmC', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(76, 'Prof. Tyson Johnston', 'petra.dach@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8q61w58LB8', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(77, 'Bradford Stamm PhD', 'madisyn.beier@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JirqhGD5jw', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(78, 'Rosalind Howe MD', 'reymundo22@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pitGUhuBVJ', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(79, 'Ms. Daisy Paucek', 'west.roxane@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '45jSPrONbz', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(80, 'Malachi Mohr', 'emerald.hudson@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1ULVJILlHC', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(81, 'Billy Schulist', 'fmarquardt@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OJuMNtJWtd', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(82, 'Jaydon Hettinger', 'mclaughlin.herminio@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IsBntOwacE', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(83, 'Kaelyn Rutherford', 'cecil67@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7G7bIq1Py3', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(84, 'Ashtyn Feil', 'marlee01@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9u9TTxFJaF', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(85, 'Athena Robel', 'hans64@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ewrb1sYC38', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(86, 'Reece Graham', 'aryanna20@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YrozyqdhKO', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(87, 'Cathryn Kub', 'tgoyette@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A13WNw8hbE', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(88, 'Mr. Torrey Funk III', 'durgan.margarette@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gWE934Gu7m', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(89, 'Dr. Richard Little', 'rquitzon@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GX0RWFsAqA', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(90, 'Jacynthe Wilderman', 'xgutkowski@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I6yK6T6qT0', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(91, 'Daphney Considine', 'rempel.xander@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f27q1DvZiw', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(92, 'Rosalinda Block', 'tiffany71@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's2NhHmswIh', '2020-01-26 11:37:05', '2020-01-26 11:37:05', NULL),
(93, 'Miss Adela Windler', 'tmante@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nrwy3PPEGD', '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(94, 'Brenda Schulist', 'fritz.kohler@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '91g9xoqjgG', '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(95, 'Prof. Fabiola Schamberger', 'ibartoletti@example.org', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CfmzvqvO2p', '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(96, 'Melba Murazik', 'lubowitz.nayeli@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EAMmjH7ph3', '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(97, 'Dr. Gabriella Rice', 'maggio.hortense@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QxI13RZVwI', '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(98, 'Cody Abshire', 'raheem50@example.com', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3pIXQie0tH', '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(99, 'Donavon Sporer', 'arau@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lHOmWoF9wv', '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(100, 'Kayley Hauck', 'tomasa95@example.net', '2020-01-26 11:37:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5aBwN038x6', '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(101, 'loai akram', 'lolyakram11@gmail.com', NULL, '$2y$10$toAXhho4L/qT2owrxkotGuzTodNIeW25uStNZKNWVROLhbUForhJK', NULL, '2020-01-26 11:40:39', '2020-01-26 11:40:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mrs. Daniella McDermott III', NULL, '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(2, 'Eino Spinka', NULL, '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(3, 'River Labadie', NULL, '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(4, 'Kian Mosciski', NULL, '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(5, 'Dr. Leola Satterfield PhD', NULL, '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(6, 'Dr. Davonte Tromp V', NULL, '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(7, 'Don Hilpert', NULL, '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(8, 'Enrique Jerde', NULL, '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(9, 'Dr. Mateo Cronin', NULL, '2020-01-26 11:37:06', '2020-01-26 11:37:06', NULL),
(10, 'Kenyon Grimes', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(11, 'Mr. Al Fahey', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(12, 'Prof. Evie Pagac V', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(13, 'Trever Towne', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(14, 'Muhammad Shields PhD', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(15, 'Maritza Erdman', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(16, 'Amani Wilkinson', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(17, 'Jerrell Carroll', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(18, 'Dr. Christopher Gottlieb V', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(19, 'Pete Mosciski', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(20, 'Miss Arianna Gleason', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(21, 'Neha Rempel I', NULL, '2020-01-26 11:37:07', '2020-01-26 11:37:07', NULL),
(22, 'Domenick Schumm', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(23, 'Freeda Runolfsson DVM', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(24, 'Prof. Brisa Rempel', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(25, 'Matilde Hirthe', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(26, 'Dameon Welch', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(27, 'Mr. Zakary Kreiger', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(28, 'Shayna Powlowski', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(29, 'Mrs. Lia Nikolaus', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(30, 'Marilou Mayer', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(31, 'Belle Schinner', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(32, 'Charity Mohr MD', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(33, 'Ms. Adella Ziemann', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(34, 'Dr. Maiya Olson', NULL, '2020-01-26 11:37:08', '2020-01-26 11:37:08', NULL),
(35, 'Miss Zella Hartmann', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(36, 'Stuart Hauck MD', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(37, 'Bernard Harris II', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(38, 'Prof. Lazaro DuBuque I', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(39, 'Everardo Rogahn', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(40, 'Hobart Grady', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(41, 'Kayden Collins', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(42, 'Brooklyn Monahan', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(43, 'Miss Joanny Raynor', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(44, 'Kolby Wyman', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(45, 'Quinton Stracke Jr.', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(46, 'Prof. Arlie Hoeger I', NULL, '2020-01-26 11:37:09', '2020-01-26 11:37:09', NULL),
(47, 'Dr. Cesar Ziemann I', NULL, '2020-01-26 11:37:10', '2020-01-26 11:37:10', NULL),
(48, 'Bernadette Swift', NULL, '2020-01-26 11:37:10', '2020-01-26 11:37:10', NULL),
(49, 'Marlon Zieme', NULL, '2020-01-26 11:37:10', '2020-01-26 11:37:10', NULL),
(50, 'Rolando Schneider', NULL, '2020-01-26 11:37:10', '2020-01-26 11:37:10', NULL),
(51, 'Yoshiko Ernser', NULL, '2020-01-26 11:37:10', '2020-01-26 11:37:10', NULL),
(52, 'Lilyan Walter Sr.', NULL, '2020-01-26 11:37:10', '2020-01-26 11:37:10', NULL),
(53, 'Mr. Terrell Walker PhD', NULL, '2020-01-26 11:37:10', '2020-01-26 11:37:10', NULL),
(54, 'Mathias Weissnat Jr.', NULL, '2020-01-26 11:37:10', '2020-01-26 11:37:10', NULL),
(55, 'Ervin Senger', NULL, '2020-01-26 11:37:10', '2020-01-26 11:37:10', NULL),
(56, 'Whitney Gleason', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(57, 'Jasmin Hamill', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(58, 'Verna Conroy', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(59, 'Gardner Mertz', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(60, 'Dr. Wilmer Muller', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(61, 'Leonora Gutkowski Jr.', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(62, 'Dr. Katrina Borer DDS', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(63, 'Miss Delilah Medhurst', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(64, 'Thad Huels PhD', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(65, 'Josie Crona', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(66, 'Kelsie Kovacek', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(67, 'Furman Cronin Sr.', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(68, 'Prof. Robb Hackett', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(69, 'Tobin Crooks', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(70, 'Jermaine Altenwerth', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(71, 'Dr. Scottie Spencer PhD', NULL, '2020-01-26 11:37:11', '2020-01-26 11:37:11', NULL),
(72, 'Dedric Monahan', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(73, 'Mr. Laurel Russel', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(74, 'Dr. Dell Goyette I', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(75, 'Missouri Hammes', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(76, 'Amelia Stokes', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(77, 'Maymie Prosacco', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(78, 'Jamie Kuphal II', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(79, 'Nathaniel Koelpin Sr.', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(80, 'Trever Kutch', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(81, 'Gilbert Stark', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(82, 'Vada Spinka', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(83, 'Lucinda Hand', NULL, '2020-01-26 11:37:12', '2020-01-26 11:37:12', NULL),
(84, 'Charlie Farrell V', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(85, 'Jacinthe Weimann', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(86, 'Clifford Casper MD', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(87, 'Janet Schimmel', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(88, 'Clint Ward', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(89, 'Tessie Gibson', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(90, 'Patrick Frami DVM', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(91, 'Nichole Huels', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(92, 'Prof. Maia Kutch IV', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(93, 'Maya Champlin', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(94, 'Mrs. Kaci Waelchi III', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(95, 'Dr. Moshe Ebert', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(96, 'Prof. Woodrow Howell MD', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(97, 'Keshaun Leannon', NULL, '2020-01-26 11:37:13', '2020-01-26 11:37:13', NULL),
(98, 'Miss Kitty O\'Conner V', NULL, '2020-01-26 11:37:14', '2020-01-26 11:37:14', NULL),
(99, 'Easter Macejkovic', NULL, '2020-01-26 11:37:14', '2020-01-26 11:37:14', NULL),
(100, 'Miss Heidi Ryan', NULL, '2020-01-26 11:37:14', '2020-01-26 11:37:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_user_type`
--

CREATE TABLE `user_user_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_user_type`
--

INSERT INTO `user_user_type` (`id`, `user_id`, `user_type_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-01-26 11:37:06', '2020-01-26 11:37:06'),
(2, 2, 2, '2020-01-26 11:37:06', '2020-01-26 11:37:06'),
(3, 3, 3, '2020-01-26 11:37:06', '2020-01-26 11:37:06'),
(4, 4, 4, '2020-01-26 11:37:06', '2020-01-26 11:37:06'),
(5, 5, 5, '2020-01-26 11:37:06', '2020-01-26 11:37:06'),
(6, 6, 6, '2020-01-26 11:37:06', '2020-01-26 11:37:06'),
(7, 7, 7, '2020-01-26 11:37:06', '2020-01-26 11:37:06'),
(8, 8, 8, '2020-01-26 11:37:06', '2020-01-26 11:37:06'),
(9, 9, 9, '2020-01-26 11:37:06', '2020-01-26 11:37:06'),
(10, 10, 10, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(11, 11, 11, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(12, 12, 12, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(13, 13, 13, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(14, 14, 14, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(15, 15, 15, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(16, 16, 16, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(17, 17, 17, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(18, 18, 18, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(19, 19, 19, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(20, 20, 20, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(21, 21, 21, '2020-01-26 11:37:07', '2020-01-26 11:37:07'),
(22, 22, 22, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(23, 23, 23, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(24, 24, 24, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(25, 25, 25, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(26, 26, 26, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(27, 27, 27, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(28, 28, 28, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(29, 29, 29, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(30, 30, 30, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(31, 31, 31, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(32, 32, 32, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(33, 33, 33, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(34, 34, 34, '2020-01-26 11:37:08', '2020-01-26 11:37:08'),
(35, 35, 35, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(36, 36, 36, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(37, 37, 37, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(38, 38, 38, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(39, 39, 39, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(40, 40, 40, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(41, 41, 41, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(42, 42, 42, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(43, 43, 43, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(44, 44, 44, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(45, 45, 45, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(46, 46, 46, '2020-01-26 11:37:09', '2020-01-26 11:37:09'),
(47, 47, 47, '2020-01-26 11:37:10', '2020-01-26 11:37:10'),
(48, 48, 48, '2020-01-26 11:37:10', '2020-01-26 11:37:10'),
(49, 49, 49, '2020-01-26 11:37:10', '2020-01-26 11:37:10'),
(50, 50, 50, '2020-01-26 11:37:10', '2020-01-26 11:37:10'),
(51, 51, 51, '2020-01-26 11:37:10', '2020-01-26 11:37:10'),
(52, 52, 52, '2020-01-26 11:37:10', '2020-01-26 11:37:10'),
(53, 53, 53, '2020-01-26 11:37:10', '2020-01-26 11:37:10'),
(54, 54, 54, '2020-01-26 11:37:10', '2020-01-26 11:37:10'),
(55, 55, 55, '2020-01-26 11:37:10', '2020-01-26 11:37:10'),
(56, 56, 56, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(57, 57, 57, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(58, 58, 58, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(59, 59, 59, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(60, 60, 60, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(61, 61, 61, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(62, 62, 62, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(63, 63, 63, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(64, 64, 64, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(65, 65, 65, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(66, 66, 66, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(67, 67, 67, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(68, 68, 68, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(69, 69, 69, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(70, 70, 70, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(71, 71, 71, '2020-01-26 11:37:11', '2020-01-26 11:37:11'),
(72, 72, 72, '2020-01-26 11:37:12', '2020-01-26 11:37:12'),
(73, 73, 73, '2020-01-26 11:37:12', '2020-01-26 11:37:12'),
(74, 74, 74, '2020-01-26 11:37:12', '2020-01-26 11:37:12'),
(75, 75, 75, '2020-01-26 11:37:12', '2020-01-26 11:37:12'),
(76, 76, 76, '2020-01-26 11:37:12', '2020-01-26 11:37:12'),
(77, 77, 77, '2020-01-26 11:37:12', '2020-01-26 11:37:12'),
(78, 78, 78, '2020-01-26 11:37:12', '2020-01-26 11:37:12'),
(79, 79, 79, '2020-01-26 11:37:12', '2020-01-26 11:37:12'),
(80, 80, 80, '2020-01-26 11:37:12', '2020-01-26 11:37:12'),
(81, 81, 81, '2020-01-26 11:37:12', '2020-01-26 11:37:12'),
(82, 82, 82, '2020-01-26 11:37:12', '2020-01-26 11:37:12'),
(83, 83, 83, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(84, 84, 84, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(85, 85, 85, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(86, 86, 86, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(87, 87, 87, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(88, 88, 88, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(89, 89, 89, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(90, 90, 90, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(91, 91, 91, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(92, 92, 92, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(93, 93, 93, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(94, 94, 94, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(95, 95, 95, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(96, 96, 96, '2020-01-26 11:37:13', '2020-01-26 11:37:13'),
(97, 97, 97, '2020-01-26 11:37:14', '2020-01-26 11:37:14'),
(98, 98, 98, '2020-01-26 11:37:14', '2020-01-26 11:37:14'),
(99, 99, 99, '2020-01-26 11:37:14', '2020-01-26 11:37:14'),
(100, 100, 100, '2020-01-26 11:37:14', '2020-01-26 11:37:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_types_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `user_user_type`
--
ALTER TABLE `user_user_type`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user_user_type`
--
ALTER TABLE `user_user_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_types`
--
ALTER TABLE `user_types`
  ADD CONSTRAINT `user_types_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `user_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
