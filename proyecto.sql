-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2024 a las 14:34:43
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Cargo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `Nombre`, `Apellido`, `Correo`, `Cargo`, `created_at`, `updated_at`) VALUES
(1, 'Toby Blanda', 'Wyman', 'vgoldner@example.org', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(2, 'Javier Marvin', 'Wunsch', 'roselyn68@example.net', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(3, 'Jalyn Rau', 'Gerhold', 'enos95@example.net', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(4, 'Nels Cremin', 'Walter', 'mable93@example.org', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(5, 'Sibyl Nolan', 'Gulgowski', 'wilfredo.jacobson@example.org', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(6, 'Yoshiko Glover', 'Stoltenberg', 'prunte@example.com', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(7, 'Dr. Jared Ratke', 'Terry', 'gorczany.kamille@example.com', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(8, 'Camille Harber', 'Hartmann', 'adams.abbie@example.net', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(9, 'Stanley Heaney', 'Schultz', 'eernser@example.net', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(10, 'Prof. Jensen Padberg', 'Dibbert', 'boehm.dessie@example.com', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(11, 'Miss Flavie Rippin', 'Cremin', 'raleigh.crist@example.net', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(12, 'Ned Hill Sr.', 'Gibson', 'alessandra.steuber@example.com', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(13, 'Miss Mathilde Jacobson', 'Leffler', 'chance.mayert@example.com', 'Developer', '2024-04-10 01:30:32', '2024-04-10 01:30:32'),
(14, 'Erna Johnston', 'Rau', 'sterling49@example.net', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(15, 'Roel Kutch', 'Stanton', 'runolfsson.eladio@example.net', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(16, 'Millie Runolfsdottir', 'Rath', 'patricia.vonrueden@example.com', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(17, 'Mrs. Amelia Bahringer Sr.', 'Rippin', 'gusikowski.cayla@example.org', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(18, 'Elton Upton', 'Swaniawski', 'manuela06@example.com', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(19, 'Britney Kunde', 'Barrows', 'aylin37@example.org', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(20, 'Prof. Maymie Abernathy', 'Prohaska', 'alden.powlowski@example.com', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(21, 'Ms. Maritza Hettinger', 'Emmerich', 'khalid.runolfsdottir@example.net', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(22, 'Garrison Nader', 'Zieme', 'lauretta.jast@example.net', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(23, 'Fabian Waters', 'Barton', 'casandra.schiller@example.com', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(24, 'Shaniya Howell', 'Zieme', 'august.runolfsdottir@example.net', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(25, 'Trinity Daniel', 'Nitzsche', 'kaylee.pfeffer@example.com', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(26, 'Dr. Dewitt Denesik', 'Johnston', 'weimann.jerrell@example.org', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(27, 'Newton Ryan', 'Hermiston', 'hane.conrad@example.org', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(28, 'Chester Zemlak', 'Schmitt', 'hailey.auer@example.com', 'Developer', '2024-04-10 01:30:33', '2024-04-10 01:30:33'),
(29, 'Emil Toy Sr.', 'Schmitt', 'marks.susan@example.org', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(30, 'Prof. Brenda White PhD', 'Dickens', 'bauch.renee@example.net', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(31, 'Nona Johnson III', 'Rippin', 'marcia66@example.org', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(32, 'Aidan Ziemann', 'Hoeger', 'marielle63@example.net', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(33, 'Miss Kacie Mann DVM', 'Powlowski', 'phomenick@example.org', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(34, 'Salvador Koss', 'Crona', 'ykuvalis@example.org', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(35, 'Alexane Yost', 'Franecki', 'simone.mertz@example.com', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(36, 'Dr. Jovani Lakin PhD', 'Breitenberg', 'jena.schmitt@example.net', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(37, 'Dr. Ewell Ernser III', 'Renner', 'wcarter@example.org', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(38, 'Hazle Hamill', 'Denesik', 'geoffrey.marquardt@example.com', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(39, 'Prof. Kobe Jenkins III', 'Bruen', 'electa.koelpin@example.org', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(40, 'Hailie Boyer', 'Daugherty', 'ada04@example.com', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(41, 'Dr. Mohammad Kuhlman V', 'Bosco', 'minerva.kerluke@example.org', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(42, 'Dejah Swaniawski', 'Aufderhar', 'eulah49@example.net', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(43, 'Johnpaul Pacocha V', 'Lindgren', 'bgottlieb@example.org', 'Developer', '2024-04-10 01:30:34', '2024-04-10 01:30:34'),
(44, 'Lonny Mayer', 'Johnson', 'richard38@example.net', 'Developer', '2024-04-10 01:30:35', '2024-04-10 01:30:35'),
(45, 'Mrs. Helene Gusikowski V', 'Veum', 'tracey60@example.com', 'Developer', '2024-04-10 01:30:35', '2024-04-10 01:30:35'),
(46, 'Jeramie Okuneva MD', 'Rippin', 'dubuque.anahi@example.org', 'Developer', '2024-04-10 01:30:35', '2024-04-10 01:30:35'),
(47, 'Kaelyn Schowalter', 'Altenwerth', 'blake43@example.net', 'Developer', '2024-04-10 01:30:35', '2024-04-10 01:30:35'),
(48, 'Gaylord Maggio', 'Hammes', 'walton.parisian@example.org', 'Developer', '2024-04-10 01:30:35', '2024-04-10 01:30:35'),
(49, 'Branson Gerhold', 'Hammes', 'bharber@example.org', 'Developer', '2024-04-10 01:30:35', '2024-04-10 01:30:35'),
(50, 'Prof. Chelsey Wiegand', 'Kulas', 'lowell70@example.com', 'Developer', '2024-04-10 01:30:35', '2024-04-10 01:30:35'),
(51, 'Carol Corkery', 'White', 'norene.ortiz@example.org', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(52, 'Rodolfo Bashirian', 'Denesik', 'maiya.borer@example.com', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(53, 'Billie Macejkovic', 'Homenick', 'funk.freddy@example.com', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(54, 'Marcos Purdy', 'Turner', 'frami.elwyn@example.net', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(55, 'Mathilde McClure', 'Walsh', 'dhowe@example.com', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(56, 'Aubrey Kassulke', 'Ferry', 'kiehn.lucienne@example.org', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(57, 'Prof. Cornell Mante I', 'Heidenreich', 'nikolaus.martin@example.com', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(58, 'Ms. Alva Larson DDS', 'Nader', 'keebler.lane@example.com', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(59, 'Unique Klein', 'Mills', 'hilpert.vallie@example.com', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(60, 'Kenna Runte', 'Lehner', 'taryn.weissnat@example.org', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(61, 'Prof. Lula Ernser', 'Strosin', 'aron.treutel@example.org', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(62, 'Cornell McCullough', 'Nader', 'annette.harris@example.net', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(63, 'Jalen Russel', 'Pfeffer', 'daniel.erin@example.net', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(64, 'Brooklyn Turcotte DDS', 'Mann', 'kylie79@example.net', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(65, 'Geoffrey Denesik', 'Grimes', 'lessie.schamberger@example.net', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(66, 'Jermaine Lesch', 'Langosh', 'dejuan.gleichner@example.org', 'Developer', '2024-04-10 01:30:36', '2024-04-10 01:30:36'),
(67, 'Hertha Heathcote', 'Quitzon', 'monserrate.lebsack@example.com', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(68, 'Macey Reichel', 'Kutch', 'julia.shanahan@example.net', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(69, 'Justine Klocko', 'Mosciski', 'hollis.rogahn@example.com', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(70, 'Dr. Georgiana Bauch', 'Rodriguez', 'jordan16@example.org', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(71, 'Kian Haag', 'Wunsch', 'kward@example.org', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(72, 'Rhea Keeling', 'Berge', 'libby40@example.com', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(73, 'Dr. Taurean Wisoky', 'Stracke', 'awyman@example.com', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(74, 'Dixie Koch', 'Kohler', 'atrantow@example.net', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(75, 'Ralph Thiel', 'Kertzmann', 'jace72@example.com', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(76, 'Orion Beahan', 'Prohaska', 'clabadie@example.net', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(77, 'Joanie Treutel', 'Douglas', 'consuelo36@example.org', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(78, 'Libby Doyle', 'Bernhard', 'arvel00@example.org', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(79, 'D\'angelo Beer', 'Champlin', 'rowe.fritz@example.org', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(80, 'Tre D\'Amore', 'Braun', 'funk.pearlie@example.org', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(81, 'Jaron Denesik DDS', 'Harris', 'marjorie.ruecker@example.org', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(82, 'Porter Kunde', 'O\'Connell', 'brekke.frances@example.org', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(83, 'Cassidy Hermiston', 'McKenzie', 'josefina67@example.com', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(84, 'Gunner Oberbrunner', 'Willms', 'jhauck@example.net', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(85, 'Estella King PhD', 'Torphy', 'dare.meaghan@example.com', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(86, 'Horace Orn III', 'Dare', 'aiyana96@example.org', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(87, 'Vallie Bernier MD', 'Rodriguez', 'jannie.osinski@example.org', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(88, 'Lucy Gerhold', 'Gorczany', 'velva22@example.com', 'Developer', '2024-04-10 01:30:37', '2024-04-10 01:30:37'),
(89, 'Ken Rowe Jr.', 'Feest', 'gwolf@example.net', 'Developer', '2024-04-10 01:30:38', '2024-04-10 01:30:38'),
(90, 'Dr. Linwood Leffler DVM', 'Goyette', 'yboyle@example.org', 'Developer', '2024-04-10 01:30:38', '2024-04-10 01:30:38'),
(91, 'Madisyn Wuckert', 'Kub', 'angela73@example.com', 'Developer', '2024-04-10 01:30:38', '2024-04-10 01:30:38'),
(92, 'Nannie Gorczany', 'Purdy', 'tiara.gusikowski@example.org', 'Developer', '2024-04-10 01:30:38', '2024-04-10 01:30:38'),
(93, 'Miss Nedra Mills', 'Okuneva', 'mafalda.wiegand@example.org', 'Developer', '2024-04-10 01:30:38', '2024-04-10 01:30:38'),
(94, 'Ezra Crona', 'Hauck', 'nellie09@example.net', 'Developer', '2024-04-10 01:30:38', '2024-04-10 01:30:38'),
(95, 'Crawford O\'Keefe', 'Leuschke', 'lindsey32@example.com', 'Developer', '2024-04-10 01:30:38', '2024-04-10 01:30:38'),
(96, 'Hellen Grady', 'Kirlin', 'green.ernestine@example.net', 'Developer', '2024-04-10 01:30:38', '2024-04-10 01:30:38'),
(97, 'Prof. Joel Lehner', 'Stark', 'eloisa53@example.com', 'Developer', '2024-04-10 01:30:38', '2024-04-10 01:30:38'),
(98, 'Isidro Bradtke', 'Mante', 'bmacejkovic@example.net', 'Developer', '2024-04-10 01:30:39', '2024-04-10 01:30:39'),
(99, 'Baby Ledner', 'Mayer', 'west.garrick@example.com', 'Developer', '2024-04-10 01:30:39', '2024-04-10 01:30:39'),
(100, 'Mrs. Joana Hintz', 'Skiles', 'tnitzsche@example.net', 'Developer', '2024-04-10 01:30:39', '2024-04-10 01:30:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_02_002039_create_empleados_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oMT2xth309P4QuCiVCQ1Hohmtbzw8FvyPo72wYMk', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 OPR/107.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiazZaTERJZjFpblFBQmtDTHhURk1aamVGeXlQa1NuUVFCTTZHRkg1cSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2VtcGxlYWRvIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1712695666);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'osman', 'osmansax15@gmail.com', NULL, '$2y$12$O4WBZdqz35eXl34f3C0CB.lkh55lGNCQNe3ZO9BFu2dDpFZGl2I9O', NULL, '2024-04-10 01:47:46', '2024-04-10 01:47:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
