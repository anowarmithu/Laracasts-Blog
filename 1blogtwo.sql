-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 03:38 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogtwo`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'amet', 'provident-quia-sed-necessitatibus-tempore-voluptatem-vel-pariatur', '2021-10-24 02:51:08', '2021-10-24 02:51:08'),
(2, 'maiores', 'qui-voluptas-ex-quo-nemo-soluta', '2021-10-24 02:51:08', '2021-10-24 02:51:08'),
(3, 'facilis', 'perferendis-qui-saepe-veniam-repellendus-libero-tenetur-et', '2021-10-24 02:51:08', '2021-10-24 02:51:08'),
(4, 'tenetur', 'dolores-nihil-est-repellendus-quia-veniam-voluptas-minus', '2021-10-24 02:51:08', '2021-10-24 02:51:08'),
(5, 'modi', 'blanditiis-omnis-dolor-sapiente-tempore', '2021-10-24 02:51:08', '2021-10-24 02:51:08'),
(6, 'dignissimos', 'veritatis-laborum-doloribus-beatae-modi', '2021-10-24 02:51:08', '2021-10-24 02:51:08'),
(7, 'dicta', 'dolor-dolorem-non-et-dignissimos-officiis', '2021-10-24 02:51:08', '2021-10-24 02:51:08'),
(8, 'beatae', 'id-inventore-distinctio-voluptas-dignissimos-sit', '2021-10-24 02:51:08', '2021-10-24 02:51:08'),
(9, 'occaecati', 'repellat-nostrum-distinctio-laboriosam-neque-illo-quia-nihil', '2021-10-24 02:51:08', '2021-10-24 02:51:08'),
(10, 'sint', 'ipsa-et-officiis-est-error-non-et', '2021-10-24 02:51:08', '2021-10-24 02:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_14_131520_create_posts_table', 1),
(6, '2021_09_16_053741_create_categories_table', 1),
(7, '2022_01_07_144304_create_comments_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `slug`, `title`, `excerpt`, `body`, `created_at`, `updated_at`, `published_at`) VALUES
(2, 1, 1, 'sunt-sunt-et-perferendis-et-omnis-eum-nemo', 'Rerum sed sapiente quo adipisci voluptas dolore odit temporibus.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(3, 10, 5, 'laudantium-soluta-at-et', 'Amet ut facere provident reprehenderit.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(4, 10, 3, 'est-et-non-quia-quas', 'Tempore numquam sint mollitia quidem dolorem quia.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(5, 3, 4, 'nostrum-consectetur-dolorum-est-dolores-reprehenderit-eos-ut-soluta', 'Sapiente ut fugit provident debitis nihil aspernatur quo natus.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(6, 4, 2, 'quasi-mollitia-natus-deleniti-enim-rerum-dolore-corrupti', 'Eaque soluta totam dolor nihil praesentium est.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(7, 7, 8, 'adipisci-autem-quisquam-voluptate-rerum-ad-hic-eveniet', 'Ut eum rerum fugiat consequuntur mollitia et accusantium magni.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(8, 1, 9, 'doloribus-deserunt-delectus-quia-quia', 'Excepturi non reiciendis inventore exercitationem sunt laborum sint.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(9, 10, 6, 'eaque-perspiciatis-accusamus-omnis-dolor-quis-numquam', 'Quia commodi vitae accusantium laudantium eum.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(10, 4, 4, 'fuga-debitis-temporibus-deleniti-adipisci-voluptatem-ducimus-eligendi', 'Non explicabo rerum numquam in consequatur voluptatem.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(11, 1, 10, 'odit-voluptate-ut-sit-autem-rem-ex-deserunt', 'Quis odio non non perspiciatis occaecati sed voluptates.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(12, 8, 6, 'possimus-iusto-facere-dolorem-sed-vel', 'Dicta vitae consequatur suscipit voluptatem et quia quae.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(13, 10, 5, 'velit-nostrum-error-modi-ut-aut-nam-est', 'Sequi et maxime in officiis cumque labore cupiditate.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(14, 3, 10, 'et-dolorem-optio-ipsum-laboriosam', 'Modi qui voluptate quo.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(15, 6, 3, 'rem-laboriosam-molestiae-omnis-doloribus', 'Neque consectetur quae qui quos nihil a excepturi sunt.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(16, 6, 2, 'optio-accusamus-porro-temporibus-accusamus', 'Labore impedit reprehenderit aliquid tempore et.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(17, 9, 4, 'rerum-beatae-sunt-doloremque-officia', 'Sint dolores numquam et dolor omnis.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(18, 5, 7, 'ut-ad-vero-quaerat-non-voluptatum-ipsa-modi', 'Veritatis numquam et amet unde illum qui.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(19, 10, 10, 'pariatur-non-dolores-pariatur-quis-ducimus-necessitatibus-fugit', 'Consequuntur tenetur quam deserunt est repudiandae velit.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(20, 4, 9, 'reprehenderit-laborum-ea-cupiditate-repellat-ut', 'Omnis incidunt odit quo aut.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(21, 1, 6, 'nulla-neque-dolore-nesciunt-itaque-maxime-eius', 'Eos vero non iste et sapiente.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(22, 7, 5, 'quia-ipsam-iste-hic-nemo', 'Qui delectus culpa nihil sed.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(23, 1, 1, 'asperiores-molestiae-cumque-voluptates-sequi-in-voluptatem', 'Non quia sapiente odio ea.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(24, 10, 3, 'voluptas-provident-sed-id-numquam-aut', 'Consectetur ea amet blanditiis magnam.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(25, 10, 1, 'optio-nulla-blanditiis-repellendus-dolorem-facilis-neque', 'Doloribus ab quaerat necessitatibus eos eaque et eveniet.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(26, 4, 5, 'velit-eos-quaerat-excepturi-dolores-ut-est', 'Doloremque delectus omnis non quis.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(27, 8, 1, 'labore-est-esse-facilis-praesentium-et-laborum-recusandae', 'Commodi harum necessitatibus dignissimos sed facilis.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(28, 2, 1, 'ut-voluptates-commodi-rem-aspernatur-et-ex-omnis', 'Quod quia possimus et maxime.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(29, 5, 3, 'autem-debitis-debitis-dolorem-reiciendis-voluptatem-nesciunt-perspiciatis-corporis', 'Nam sit possimus similique est facilis nulla.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(30, 8, 8, 'unde-ipsam-ducimus-excepturi-dolor-ipsam-mollitia-iure-est', 'Doloribus ipsa iste est est repudiandae aut.', 'Array', 'Array', '2021-10-24 02:53:58', '2021-10-24 02:53:58', NULL),
(31, 7, 4, 'ducimus-sit-esse-minus-fugit-voluptas', 'Beatae et at aut placeat esse id quae quia.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(32, 10, 3, 'sequi-qui-aliquid-quod-ratione', 'Ut et necessitatibus qui error consequuntur cupiditate.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(33, 7, 7, 'voluptas-tempore-reprehenderit-velit-sit', 'Ut aut quis soluta qui.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(34, 10, 10, 'rem-repudiandae-vel-voluptatibus-nostrum-atque', 'Amet placeat et earum ad beatae.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(35, 9, 2, 'ad-nulla-ipsam-ea-ipsa-minus-fugit-neque-quisquam', 'Voluptatem magnam sed laboriosam autem deserunt magni blanditiis.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(36, 7, 7, 'amet-cumque-facere-quod-nemo', 'Fugit excepturi quis odio ut maiores.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(37, 10, 10, 'pariatur-sint-hic-officiis-aspernatur-quis-corporis-nihil-iusto', 'Tempore perferendis architecto perferendis adipisci consequuntur doloremque et praesentium.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(38, 5, 10, 'rerum-quo-soluta-voluptatem-nemo-autem', 'Amet unde magnam rem velit.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(39, 2, 5, 'enim-omnis-in-quia', 'Repudiandae id aut nihil pariatur ex vero.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(40, 4, 9, 'sed-aut-nihil-enim-aut-aut-debitis-sed', 'Sint distinctio veniam odio veniam veritatis omnis quam.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(41, 3, 9, 'dolor-autem-blanditiis-modi-iusto-recusandae', 'Id repudiandae fugiat ea ad at veniam.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(42, 7, 7, 'at-suscipit-eos-sequi-et', 'Omnis accusantium mollitia rerum fugit labore eos rerum.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(43, 3, 9, 'molestiae-explicabo-tempora-et-ipsum-voluptatem-dolores-ut-eos', 'Eligendi esse sit cumque iure.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(44, 8, 9, 'at-odio-saepe-placeat-ducimus-a-voluptates-aperiam', 'Id ad quo accusantium officia explicabo voluptas quia.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(45, 1, 8, 'et-et-et-fugiat-aut-exercitationem-deleniti', 'Sint fugiat est officiis accusantium porro.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(46, 10, 4, 'maxime-dolorem-natus-cupiditate-expedita-quidem-hic-culpa-labore', 'Voluptatem et placeat blanditiis explicabo.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(47, 5, 5, 'reiciendis-deserunt-enim-aut-explicabo', 'Minus sunt aut minima et.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(48, 3, 9, 'officiis-ab-aliquid-atque-eum-harum-nobis', 'Non vel et ad.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(49, 3, 3, 'quae-iure-exercitationem-voluptatem-quod-et', 'Ipsa atque quia unde non nobis.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(50, 1, 4, 'sit-labore-voluptate-aperiam-dolor-nihil-ut-tempore', 'Laudantium labore sed earum a consectetur et consectetur.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(51, 1, 10, 'dolorem-aliquid-est-ullam-consectetur-qui-vel', 'Hic dolore facere necessitatibus temporibus sed eius laborum.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(52, 6, 6, 'quo-maxime-aut-impedit-dolor-aperiam', 'Beatae et dolores aliquam velit voluptates.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(53, 7, 4, 'voluptatum-dolore-aut-dolores-consequuntur-animi-rerum', 'Tempore quia laudantium impedit voluptatum adipisci qui exercitationem.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(54, 10, 6, 'reprehenderit-amet-id-nihil-et-qui-ipsam-eum', 'Quaerat qui ut est mollitia recusandae velit aperiam rem.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(55, 1, 6, 'eos-et-consequatur-autem', 'Pariatur iste et saepe a qui omnis.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(56, 7, 6, 'aut-maxime-earum-natus-perferendis', 'Dignissimos consectetur laudantium quidem aut.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(57, 5, 4, 'ullam-sint-temporibus-quisquam-quibusdam', 'Animi delectus libero eum nisi quae expedita.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(58, 8, 4, 'est-inventore-quaerat-voluptas-reiciendis-aliquam', 'Voluptatum eaque maxime recusandae sed.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(59, 4, 9, 'quis-quibusdam-ab-ullam-qui-consequatur-qui-odio', 'Ipsam reprehenderit quis eius assumenda tenetur.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(60, 8, 4, 'aperiam-consequatur-optio-non-aspernatur-rerum-doloremque-et-eum', 'Porro vero dolor beatae.', 'Array', 'Array', '2021-10-24 02:54:18', '2021-10-24 02:54:18', NULL),
(61, 3, 9, 'ut-ullam-quas-perferendis-fugit', 'Ut voluptatem molestiae qui esse magnam sit enim.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(62, 6, 5, 'sed-illum-amet-molestiae-nesciunt-dolorem', 'Ut laudantium odit reiciendis debitis.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(63, 2, 9, 'id-culpa-at-ullam-cupiditate-maxime-iste', 'Magnam hic tempora commodi soluta non odio.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(64, 6, 6, 'animi-eligendi-et-quam-dolores-id', 'Doloribus ut dolor sit est facilis non.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(65, 3, 5, 'enim-non-quia-itaque-non-aut-tempore-saepe-dolor', 'Velit aut omnis maxime aut.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(66, 6, 3, 'consequatur-id-et-aut-unde-sit-nihil', 'Culpa sequi dignissimos assumenda fugiat sint et.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(67, 5, 2, 'voluptates-quas-sed-placeat-qui-explicabo-voluptas', 'Temporibus tempore sed possimus blanditiis voluptatem ea.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(68, 8, 2, 'molestiae-dolorem-aut-provident-nihil-placeat', 'Animi enim eveniet qui quam accusamus ea vero.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(69, 8, 2, 'molestiae-quos-quas-animi-voluptate', 'Et atque velit dolorum.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(70, 9, 1, 'magni-numquam-hic-necessitatibus-et-error-rerum', 'Doloribus modi et cum et.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(71, 5, 3, 'rem-voluptates-tenetur-corrupti', 'Velit deleniti ipsam culpa in.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(72, 1, 10, 'eaque-culpa-mollitia-iusto-non-et', 'Ut cumque laboriosam modi et ut qui reiciendis.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(73, 6, 6, 'dolore-quam-odit-et-eum-qui-quis-expedita-nostrum', 'Recusandae cum blanditiis omnis eius ex commodi laboriosam.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(74, 3, 6, 'ea-veritatis-omnis-sapiente-blanditiis-dolor-ipsa-deserunt-delectus', 'Nisi esse voluptate est harum.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(75, 10, 8, 'facilis-quos-aspernatur-necessitatibus-fuga-enim-quos', 'Et qui doloribus placeat.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(76, 5, 4, 'illo-nihil-modi-non-impedit', 'Minus odit deserunt impedit doloribus.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(77, 2, 2, 'quae-rem-ut-ratione-nisi', 'Omnis et perspiciatis doloremque et eveniet recusandae sit mollitia.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(78, 2, 10, 'enim-aut-error-sunt-praesentium-mollitia', 'Enim aut deserunt veritatis et vel.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(79, 1, 3, 'omnis-dicta-labore-laborum-mollitia-quis-et', 'Est dicta pariatur est nemo totam.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(80, 10, 3, 'ad-facere-laboriosam-sunt-laboriosam-est-maxime', 'Quo ipsum voluptatem aut vitae ut nihil.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(81, 4, 5, 'commodi-quisquam-fugiat-earum-ut-beatae-rem', 'Cumque mollitia labore praesentium aut sequi quisquam et.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(82, 9, 4, 'dolor-officia-dolorem-occaecati', 'Doloremque autem sint quis voluptatum aliquam temporibus.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(83, 8, 6, 'aperiam-dolorem-rerum-debitis-libero-quaerat', 'Accusantium sint ut ducimus eligendi et neque.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(84, 5, 3, 'asperiores-earum-temporibus-veritatis-fuga-rerum', 'Ab occaecati laudantium molestiae fugiat.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(85, 6, 4, 'omnis-reprehenderit-similique-dolore-quo-vero', 'Ex nostrum asperiores inventore minus quasi officiis numquam.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(86, 4, 9, 'nam-dicta-qui-ut-possimus-natus-placeat-consequatur', 'Cum minus veritatis debitis ratione perspiciatis.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(87, 1, 6, 'vel-et-inventore-quasi-fuga-voluptas-aut', 'Inventore placeat minus earum laborum odit.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(88, 4, 1, 'atque-similique-velit-impedit-illum-earum-magnam-quidem-in', 'Nisi quis rem aut sint.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(89, 8, 7, 'quae-rerum-enim-quo-qui-iure', 'Molestiae ipsum tempora animi qui repellendus.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(90, 3, 7, 'quis-alias-eum-fugit-consequuntur-consectetur', 'Cum architecto laboriosam et dolor aut qui quis.', 'Array', 'Array', '2021-10-24 02:54:38', '2021-10-24 02:54:38', NULL),
(91, 9, 4, 'ipsa-nihil-corrupti-sit-necessitatibus', 'Cumque consectetur ea pariatur magnam aut odio.', 'Minus sed id libero repellat neque inventore excepturi soluta. Molestiae perferendis et harum nisi ipsam et non cupiditate.', 'Neque qui id animi doloremque. Autem quo dolorem a est aut quia. Eaque ut aut nihil eum aperiam. Rerum est officia aut sit. Voluptates quo consequatur mollitia architecto. Numquam totam praesentium laborum commodi. Quis autem et voluptatem beatae cupiditate ut et.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(92, 1, 6, 'qui-est-natus-et-pariatur-autem-possimus', 'Eligendi quae qui odio sunt.', 'Porro ut dignissimos molestiae dolorem nisi eligendi. Et impedit eveniet et mollitia quidem voluptatem. Eum magni aut adipisci vitae a adipisci.', 'Maxime voluptatem repellendus nulla alias facilis eum vel assumenda. Velit quaerat et voluptas repellat officiis. Vitae labore eligendi nesciunt a quod vel. Recusandae ut ad nemo qui possimus ullam vitae.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(93, 1, 2, 'dignissimos-est-et-facere-amet-et-sapiente-tenetur', 'Iure atque placeat nam quo dolorum nobis earum.', 'Et magnam accusantium quaerat minima. Quia nemo eos et ab.', 'Iure aut ipsam magni magni eaque dolorum. Consectetur in omnis est. Asperiores suscipit sit aspernatur accusamus. Et accusantium dolor quis id eveniet sit dolores. Possimus nulla voluptatem tenetur quidem voluptatibus excepturi. Ea qui unde totam aut non. Quo velit debitis debitis similique.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(94, 1, 8, 'aliquam-sunt-similique-nobis-nulla-quibusdam-non', 'Tempore itaque iure qui.', 'Occaecati quam totam quis omnis qui odit accusamus facilis. Est nobis mollitia harum recusandae sit vitae. Deserunt in in voluptatem officiis sit veritatis id est.', 'Aut aut voluptatibus aut. Adipisci vero debitis eos itaque eaque cum. Est distinctio iste nihil eveniet numquam et. Consequatur odio saepe laborum non. Reiciendis commodi nobis dolorum quo rerum. Est rerum sint tenetur odit vitae asperiores. Velit sapiente in quo est.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(95, 6, 2, 'beatae-ut-cumque-ea-ullam-adipisci', 'Soluta dicta tenetur iusto totam debitis.', 'Rerum animi numquam in illum. Possimus commodi at tempora dolor. Rem excepturi quod tenetur dolorem veritatis sunt culpa.', 'Odit vel cupiditate odit quos quo. Assumenda et nesciunt ut dolores ut impedit et qui. Id ex consectetur cumque laborum pariatur nostrum. Sed error est incidunt exercitationem.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(96, 6, 9, 'aliquam-et-ut-quos-excepturi-voluptas-accusamus-vero-eligendi', 'Dolorem ut deleniti sapiente porro ratione et rerum.', 'Dicta qui natus eligendi nobis. Labore voluptas saepe voluptates consequatur. Tempore fuga sint velit amet et et ea eveniet.', 'Fugiat qui repellat et dolor debitis voluptas. Corporis necessitatibus nobis sed nisi saepe esse. Minus consequuntur quae sint eligendi odio. Quaerat est id quisquam impedit veritatis. Et provident enim voluptas neque explicabo omnis.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(97, 10, 1, 'repudiandae-velit-aspernatur-recusandae', 'Velit aut placeat eos et.', 'Necessitatibus suscipit odio hic iure inventore repellendus non. Ut autem earum eos autem eaque.', 'Impedit cumque non quod laudantium est deleniti. Eaque dolorum ut esse non exercitationem. Quod cumque laudantium architecto fugiat aut sit. Animi itaque eius ut ipsum a omnis. Ipsum error voluptate ut rerum corrupti voluptates beatae illum. Vero fugiat porro placeat dignissimos ut adipisci cupiditate. Laborum reprehenderit eveniet doloribus non.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(98, 3, 6, 'sequi-est-ut-non-corporis-non-fugit', 'Blanditiis hic ullam qui facere excepturi quisquam inventore in.', 'Ut recusandae fugiat adipisci et quaerat libero sed. Aut quam fuga voluptatibus est neque qui et.', 'Dolor sed atque ducimus aut et similique et. Voluptatum porro rerum repudiandae nemo. Est aut ut quaerat earum ut reiciendis. Facilis id exercitationem et consequatur libero. Quibusdam incidunt ipsa maxime qui dolor. Molestias ullam cupiditate maiores alias harum. Porro enim architecto alias qui et odit dicta.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(99, 7, 5, 'odio-voluptas-consequuntur-natus-dolores-voluptatem-blanditiis', 'Eligendi unde qui ex soluta et.', 'Quam ipsam sint consequatur. Ipsa rerum consequatur aliquam beatae ipsum aut.', 'Et odit laboriosam officiis ut quam itaque qui deserunt. Incidunt cupiditate alias neque ab numquam quas. Earum debitis voluptatem culpa ut. Pariatur necessitatibus qui sed asperiores odit.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(100, 7, 3, 'quod-explicabo-ratione-eum-fuga-excepturi', 'Expedita quibusdam et repellendus et ut tenetur.', 'Laudantium animi explicabo dolores dolorum numquam reiciendis. Qui voluptatem quia amet atque.', 'Nihil adipisci tempora non est eos maiores. Aliquid sint in ut voluptate blanditiis ut aspernatur in. Fuga consequatur magni et animi. Eos voluptatibus nulla laudantium debitis et labore ipsam. Aliquam porro quibusdam error placeat rerum ut. Est expedita non iure quos aut quasi velit. Assumenda rerum consequatur occaecati iure corporis autem a.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(101, 6, 7, 'molestias-a-consequatur-est-tenetur', 'Iste qui quasi eligendi cum accusamus dignissimos deserunt.', 'Amet quos at voluptatem voluptatem. Quibusdam a nemo molestias in aperiam et.', 'Dolores in nemo sit. Commodi inventore vel qui dolores ut facilis facere. Aspernatur ipsum optio voluptas accusamus nesciunt consequatur maxime vitae. Rerum id quibusdam voluptate vitae.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(102, 7, 4, 'consectetur-expedita-mollitia-dolores-repudiandae', 'Nesciunt quo deleniti ab et dolorem excepturi magnam.', 'Reiciendis non delectus quasi ipsa corporis deleniti. Voluptate ipsam maxime temporibus id quia nam. Harum voluptatem voluptas delectus perspiciatis.', 'Corrupti magnam natus ut sunt eos. Eveniet sapiente rem assumenda vel qui quibusdam est. Voluptas architecto nobis incidunt repellat pariatur. Nihil aliquam dolores harum non. Mollitia et nisi iure eveniet delectus. Eos ut impedit assumenda.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(103, 10, 1, 'commodi-dolor-non-voluptates-ad', 'Voluptatem culpa voluptatibus voluptatum laboriosam provident laborum.', 'Iure ut distinctio dolores sed. Placeat odit dolore ad rem quia quod autem totam. Autem eum aliquid consectetur et dolores earum.', 'Minus numquam odio omnis in ut porro cumque. Sint tempora voluptas perspiciatis dolorum voluptas excepturi libero consequatur. Molestiae molestias autem neque. Non iusto facere exercitationem culpa molestiae. Ex nobis qui dignissimos voluptatibus. Officia veritatis delectus asperiores accusantium ipsam repellendus. Veniam omnis molestias sint harum consequuntur labore dolor.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(104, 2, 6, 'autem-quam-enim-sed', 'Dolor aut illum illum et in quaerat et.', 'Optio libero rem vel nostrum deserunt repudiandae. Minus aperiam non minus aut. In ad totam quas rem vel.', 'Vel ut porro eius ut est. Iure voluptas eaque et provident possimus. Aliquam praesentium doloribus perferendis omnis. Sapiente nemo soluta nulla itaque.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(105, 7, 2, 'omnis-vel-neque-minima-eaque-ipsam-doloremque', 'Et eos eveniet quis dolor.', 'Aut laborum distinctio quod possimus officia. In nihil quos dolorem ullam laudantium eligendi enim.', 'Et dolor sunt soluta sunt voluptas nam quia. Iusto non consequatur nostrum et et. Labore corporis mollitia rem quasi aspernatur nulla. Odit inventore sit molestiae reprehenderit.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(106, 2, 8, 'et-omnis-ab-dolorum-nostrum-possimus-culpa-repellendus-sed', 'Enim facere voluptatibus ea veniam architecto alias.', 'Placeat et earum voluptatem ad autem rerum sapiente. Beatae sed facilis hic quasi ipsa non.', 'Suscipit aperiam quasi est veniam tenetur deserunt. Quia ratione sequi quidem sequi. Harum tempore fuga harum sunt sed quis voluptatem. Voluptatem culpa quidem sit quod. Enim velit nobis optio quae blanditiis deserunt. Quia ea itaque ut ab quae impedit optio.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(107, 5, 8, 'facere-et-officia-necessitatibus-placeat-ea-natus', 'Recusandae architecto nostrum voluptas et.', 'Debitis accusamus eos odit ducimus quasi. Qui repellendus quidem ea suscipit voluptatem nobis.', 'Itaque nemo laborum laudantium animi architecto. Quis non consequatur et dolorem iure. Laboriosam sint sunt magnam deleniti quae esse. Veritatis eius et iusto rerum rem eius. Non voluptas quas tenetur. Est ullam libero sunt et voluptatem. Odit excepturi rerum voluptatem qui et voluptatem saepe aut.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(108, 7, 7, 'hic-autem-eos-velit-suscipit-sint-et-ea', 'Blanditiis quam explicabo culpa consectetur ratione dolorem.', 'Adipisci nostrum voluptatem assumenda rerum. Placeat voluptatum ratione ut quo reiciendis adipisci. Eveniet dolorum harum dolores nemo expedita.', 'Nulla numquam in excepturi vel dolores. Non non et consectetur autem eum. Est repellendus ad optio debitis. Asperiores repellat est doloribus necessitatibus vel sed est. Assumenda voluptatem unde temporibus assumenda. Laudantium ut similique tenetur vel fugiat quaerat ut nulla.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(109, 10, 1, 'dolores-corrupti-qui-qui-molestiae-et-quae', 'Voluptatibus ipsa quis quae nihil et.', 'Et sit autem culpa assumenda in. Tempora odit quae tempore id molestias magnam provident possimus. Dolorum suscipit nostrum facere aut facere.', 'Nihil maiores minus quisquam dolor dolorem minus qui. Unde officiis provident assumenda molestias. Deserunt quia rerum sint facilis sit. Sapiente aut vel perferendis blanditiis. Et eius maxime facere et omnis et animi.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(110, 2, 7, 'ut-voluptatibus-vel-illo-autem', 'Aut quos voluptas saepe qui nesciunt dolore quis earum.', 'Dolores fuga quisquam et quis ut saepe. Pariatur hic magni sed cumque sapiente ducimus officiis. Optio cumque necessitatibus et enim autem nulla qui at.', 'Non minus cumque necessitatibus voluptate dolores. Vel doloribus ea sunt et et occaecati neque. Qui vero velit ipsam asperiores et aut. Eos quia sit consectetur aut. Tempore aut rerum voluptatem rem. Dolorem recusandae commodi nostrum eos. Quas eum quidem consequatur voluptas maxime commodi aut.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(111, 1, 1, 'vero-asperiores-a-delectus-ut-vel', 'Nobis odio quasi delectus sit.', 'Rerum nobis consectetur nihil at possimus. Dolor non doloremque est in harum nihil tempora voluptas. Et nisi ea rerum qui consequuntur et.', 'Vitae consequuntur porro laudantium in quo dolores velit. Facilis voluptas non necessitatibus eligendi qui aut tempora. Soluta ratione facilis dolores et magnam architecto a sed. Laboriosam vel quo doloribus qui. Fugiat dolorem molestiae nobis voluptatibus ea.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(112, 9, 10, 'aperiam-sapiente-sit-rerum-nihil', 'Mollitia sit dolor laborum aut qui velit quis.', 'Ipsam eaque mollitia ea. Et doloremque veritatis dignissimos aliquid.', 'Sit et quaerat sequi deleniti facilis. Amet dicta voluptatibus et sed et dolore quisquam. Expedita soluta qui recusandae. Atque facilis enim sequi.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(113, 7, 9, 'dolor-nobis-sapiente-numquam-doloribus-quisquam', 'Veritatis omnis doloremque recusandae repellat.', 'Harum officia temporibus voluptas natus. Aliquam architecto quidem omnis quae. Inventore error corporis rem ut explicabo natus sed et.', 'Et labore hic aspernatur ratione dignissimos aperiam. Amet inventore facere deleniti consequatur et. Cumque voluptatem alias consequatur eligendi. Et tempore pariatur sequi rerum eligendi dolore occaecati. Vero qui quis laborum. Ea nostrum culpa deleniti.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(114, 2, 8, 'odit-voluptatum-aut-repellat-hic-ut-aut-voluptas', 'Occaecati numquam inventore dolores nam.', 'Eaque saepe quo natus nihil ut assumenda repellendus. Qui rerum quisquam voluptatem laudantium cumque aut et. Iusto magni fugiat quo cumque vel omnis qui.', 'Quidem qui laborum tempore officiis. Doloremque officia tempore illo. Labore voluptatem modi dolores natus. Totam harum quidem tenetur impedit nihil. Beatae quae excepturi assumenda non.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(115, 5, 1, 'architecto-optio-et-veniam-sit', 'Dolor natus dolor delectus pariatur ea vitae.', 'Vel error eos qui et reiciendis ipsa ex. Corporis saepe debitis repudiandae ut et illum.', 'Quia consequatur laborum culpa sit. Quia sit voluptas qui fugit aliquid voluptatum. Voluptatem cupiditate qui sint eum quia doloremque ut. Rem necessitatibus aperiam incidunt maiores repellendus. Sed aspernatur porro aspernatur non fuga. Corporis corrupti itaque et doloremque reprehenderit omnis. Minus laudantium ratione laboriosam nemo architecto similique eveniet.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(116, 8, 8, 'at-perspiciatis-deserunt-odio-rerum', 'Repudiandae sunt voluptas eius rerum voluptatem sed.', 'Deleniti ratione voluptas magni quia aut laborum accusamus. Eaque eum mollitia ea ut.', 'In aut quasi esse quo inventore consequuntur architecto. Ea sit accusamus aut et sit odit. Ratione dolorem et et sit recusandae. Quas consequatur atque harum.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(117, 8, 6, 'omnis-sint-dignissimos-sint-corrupti-atque-inventore', 'Occaecati doloribus aut voluptatibus vitae magnam.', 'Est qui doloribus modi aut. Neque quia adipisci explicabo deleniti et. Sed laborum quia qui nisi.', 'Id saepe sit id nobis suscipit. Qui esse id consectetur qui et aliquid alias. Qui facilis nostrum inventore eum ab repellat earum. Dolor illo consequuntur sit error vel ullam quisquam. Repellat voluptatem qui molestiae optio voluptatem.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(118, 6, 10, 'fuga-provident-error-et-quia-quam-voluptatem-eum', 'Ullam eveniet ut necessitatibus est.', 'Quae asperiores qui expedita. Non quo est nobis et non et magni.', 'Omnis voluptas non adipisci delectus sunt. Qui voluptatem eos suscipit ut omnis est. Aliquam libero delectus mollitia earum. Aut ut explicabo tempora minus vitae in id aut. Non et et perferendis similique id. Alias sed et consectetur id sint aut. Cupiditate molestiae cum hic qui nisi.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(119, 10, 1, 'amet-necessitatibus-laboriosam-cumque-est', 'Harum sit consequatur repudiandae incidunt quod aut.', 'Occaecati consectetur fugiat accusantium voluptatem corporis explicabo ab. Esse qui nisi tempora et dignissimos ex repudiandae quo. Perspiciatis quibusdam porro praesentium exercitationem earum perspiciatis nemo.', 'Voluptas et non exercitationem et explicabo. Est facere omnis blanditiis id sint. Amet dolore eius blanditiis atque nam delectus. Provident aut minima itaque asperiores ullam ab.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(120, 6, 5, 'id-blanditiis-at-perspiciatis-voluptatibus-recusandae-rerum-eos-autem', 'Eligendi neque veritatis neque excepturi aut tempore.', 'Fugit quas sint et occaecati debitis beatae harum deserunt. Eum sunt voluptas cum perferendis assumenda commodi rerum.', 'Sed temporibus eum at quis doloremque eos vero. Dolorum debitis vel iure. Dolorem impedit voluptas aut eveniet consectetur est. Nam quasi recusandae nostrum inventore sequi odit omnis aut.', '2021-10-24 02:56:28', '2021-10-24 02:56:28', NULL),
(121, 6, 7, 'voluptas-libero-est-nulla-qui', 'Laborum autem dolorem quaerat doloremque fugiat vero voluptatem beatae.', 'Ipsum cum voluptatem modi iure voluptatibus. Saepe corporis repellat velit saepe sit porro reprehenderit. Aspernatur temporibus iste voluptates laboriosam id asperiores animi.', 'Inventore corporis perspiciatis ipsam possimus corporis. Iure voluptas est pariatur ipsam quis inventore molestiae. Dolorum et fugiat ratione possimus quae porro fuga. In ab nihil nulla harum. Dolores occaecati et facere sint ratione est. Earum dignissimos architecto et accusantium fugiat et et. Et deleniti non nemo rerum perspiciatis.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(122, 5, 8, 'nisi-fugiat-quasi-autem-voluptas-suscipit-quaerat-ad', 'Quisquam repudiandae libero quis voluptatum assumenda qui nulla sunt.', 'Quis maiores repudiandae suscipit velit. Nam aut modi voluptatum tenetur modi.', 'Sapiente id quo est dolorem. Error dolorem quia dicta quia voluptates vel. Voluptas et et atque suscipit vel sapiente. Animi illum cupiditate sunt odio sunt. Dignissimos sit ut architecto. Velit ut sed consequatur. Aut et at voluptatem. Labore dolores eius dolor unde eligendi.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(123, 9, 10, 'architecto-assumenda-aut-labore-repudiandae', 'Qui et et laboriosam quia eveniet repellat.', 'Ullam iusto sequi quaerat repudiandae velit velit quo. Sit aut cum doloremque veniam.', 'Dolor aut error omnis aut doloremque. Aut natus mollitia ipsa at in occaecati beatae. Et consectetur quia odio eos odit et culpa. Nihil similique et inventore perspiciatis. Distinctio at expedita omnis.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(124, 5, 9, 'in-accusamus-et-error', 'Consequatur qui beatae necessitatibus et.', 'Est rerum laudantium expedita magni doloribus laudantium qui. Voluptatem sed a ut commodi voluptates.', 'Quis et hic a eum. Voluptas enim ea quis saepe repellendus nam facere quis. Alias assumenda rerum ipsum quia dolore qui et. Velit mollitia qui aliquid.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(125, 1, 8, 'quia-labore-voluptatibus-quia-sunt-cupiditate-ab-labore-consequatur', 'Porro velit et omnis quas error necessitatibus ut.', 'Maxime sit delectus sunt dolor mollitia in sed. Perferendis veniam sequi facere aliquid eos officia quidem dolore.', 'Aut aperiam exercitationem omnis nesciunt maiores. Iure illum sapiente ut est magnam omnis provident. Sint sunt dicta natus nemo deserunt molestias non. Perferendis aperiam et omnis voluptas rerum asperiores. Qui deleniti in sunt ipsa dolore earum vitae.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(126, 5, 9, 'cumque-corporis-itaque-error-esse-iure', 'Aut nisi autem non est ut.', 'Facere atque ea qui. Omnis ea ut nihil nemo explicabo quasi voluptas et.', 'Voluptas ipsam soluta magnam laudantium dolore. Ea recusandae nostrum aut sed occaecati. Ipsum minus sed a iusto est beatae est. Ex aperiam officiis est sed repudiandae omnis expedita.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(127, 3, 7, 'aliquam-optio-consequatur-modi-modi-corporis', 'Pariatur harum ut et beatae.', 'Velit est vel reiciendis dicta. Quod quibusdam in architecto laudantium nisi doloremque rerum.', 'Et deserunt consequatur ad aliquam ut similique aut. Voluptates aspernatur explicabo neque sapiente reiciendis maiores quis. Accusamus vitae nostrum facilis ex. Quo in in eligendi aut molestias doloribus delectus.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(128, 2, 6, 'impedit-sit-ut-molestiae', 'Occaecati voluptatem maxime est recusandae.', 'Repellat maiores nobis quaerat numquam tempore illo. Nihil sequi unde eveniet aspernatur praesentium. Et aliquam expedita omnis itaque et eius.', 'Ut corporis officiis temporibus et voluptas dolores. Non quia quasi ut qui nam. Sit error aut quia nisi qui aut soluta. Dolore architecto quis maxime quo. Error aut velit vitae. Assumenda et similique nostrum nisi numquam.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(129, 9, 6, 'occaecati-cum-quia-atque-illum-autem-officia', 'Velit nam commodi quia sed consequuntur nisi eum.', 'Inventore veritatis cum deserunt dicta sunt aliquam quae commodi. Nihil quo aperiam voluptatem eveniet vero et numquam.', 'At quibusdam sit in commodi in labore quidem. Provident vel quis temporibus maxime voluptatem. Illo natus soluta ipsa consequuntur. Totam optio ab modi eius corrupti. Nesciunt sint non eligendi animi. Voluptates similique possimus eos quidem.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(130, 4, 7, 'dolores-provident-aut-doloremque-eos-unde-autem', 'Et molestiae autem harum deleniti.', 'Aut sunt error fugiat eum est temporibus. Nam magni optio quia ipsam est aliquam. Aspernatur molestiae sit at quia voluptate quas dolorem.', 'Eos eos iste ab provident vitae ex. Eaque fuga nesciunt eos illum veritatis dolorem. Et non asperiores aut qui voluptas et itaque. Unde iste ea non molestiae. Ipsam dolorem dicta sit quos. Harum eius vel quam illum qui est ut voluptatem. Natus ex aut veniam fugiat.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(131, 4, 5, 'vero-aut-incidunt-et-molestias-earum-aut', 'Aperiam et sunt aut accusantium rerum veritatis.', 'Perspiciatis sit sit ad accusamus placeat minus. Neque aperiam asperiores iusto reprehenderit non. Dolor error iusto quam quidem rerum nisi earum.', 'Et provident facere aut deleniti quo et. Nemo quis sed quae optio facere distinctio. Possimus porro est sint saepe sit. Iusto esse magni alias iusto sunt consequatur quis.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(132, 4, 10, 'fugit-quos-harum-explicabo-provident', 'Architecto aliquid qui earum rerum.', 'Vitae voluptate quia esse. Sequi error sit perferendis recusandae iure.', 'Fuga quo placeat quis nostrum ab quia atque. Odio consequatur amet doloribus debitis quisquam. Reprehenderit illo sapiente tempora animi vitae et et. Reiciendis fugit incidunt odio dolorem consequatur iusto. Molestias ipsum ut modi facilis voluptatem vel ut. Eius aut quae consequatur sequi et est.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(133, 1, 1, 'ut-iure-error-neque-cupiditate-omnis-voluptas-iure', 'Alias quis aut qui minima cupiditate error.', 'Autem est voluptatem ullam quia voluptas voluptate sint. Suscipit fugit ducimus ea molestiae.', 'Consequuntur inventore iste ut nostrum qui ea. Sunt natus nesciunt voluptatem optio eum error provident. Quam atque qui alias porro. Harum labore voluptas labore pariatur architecto et ullam odio.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(134, 10, 8, 'dicta-omnis-et-deserunt-quis', 'Aliquid omnis rerum voluptates esse et qui eos eius.', 'Sunt dolorum aut veritatis quibusdam totam est culpa error. Quidem numquam non adipisci in. Esse unde numquam eum maiores doloribus et reprehenderit fugit.', 'Nulla architecto reiciendis autem recusandae ipsum minus excepturi. Aut ea et aut. Commodi atque expedita rerum. In esse in qui iste totam architecto est. Similique maxime voluptates natus expedita aut ut. Et voluptas quo eos dolores aut. Cupiditate consequatur mollitia dignissimos voluptate.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(135, 5, 2, 'nesciunt-aspernatur-unde-natus-dolores-sequi', 'Vel ipsam facilis molestiae eaque aut et voluptas.', 'Sunt et delectus esse neque corporis. Ab voluptatum vitae velit et sequi quos.', 'Deserunt eaque doloribus labore error. Quo perspiciatis sint expedita aut totam magni. Dolor dolores voluptates molestiae laboriosam non magnam quo error. Quos nihil vero commodi. Distinctio laboriosam asperiores error quisquam neque. Ut suscipit et et.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(136, 2, 6, 'voluptatem-corrupti-molestiae-sed-et-maiores-at', 'Aspernatur sit eius consequatur voluptatem ducimus molestiae et.', 'Id atque sapiente suscipit maiores. Et occaecati non dolor ducimus tempora. Soluta et distinctio omnis excepturi ex.', 'Recusandae culpa et nostrum dolorem libero minima eaque. Quia incidunt veritatis labore magni eligendi. Eligendi aut et a sunt tenetur aut. Natus voluptatem eius dolores.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(137, 5, 3, 'praesentium-quidem-provident-neque-perferendis-vel-dolores-sed', 'Beatae dolore optio reprehenderit voluptate et autem.', 'Fugit excepturi voluptates mollitia architecto. Delectus vel error maiores vero voluptates laboriosam non sunt.', 'Vel quae aliquam odio aut. Ut modi dolores itaque ipsum. Amet soluta et quisquam iure eligendi fugit laudantium voluptas. Earum est cumque incidunt molestiae et voluptatem.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(138, 6, 10, 'commodi-dolores-perspiciatis-assumenda-eligendi', 'Consequatur itaque rerum minima blanditiis.', 'Non quo dolorum repellendus et. Sint in et cum maiores qui at accusantium. Molestiae distinctio iure id soluta est dolorem quo.', 'Adipisci neque sint et et consequatur fugit. Deleniti molestias voluptatibus ut sit. Ab nihil omnis aut aut aut. Quia nihil illo necessitatibus reiciendis voluptatem itaque et. Aspernatur maiores provident rerum non beatae autem. Ut suscipit temporibus error.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(139, 5, 4, 'dolor-impedit-earum-quasi-enim', 'Temporibus iste earum quisquam.', 'Laborum mollitia pariatur enim repudiandae quasi. Sit dolorem recusandae cumque quo sit vel aut. Quos ipsum dolorum eos id voluptas.', 'Vitae adipisci exercitationem doloremque sed. Dolorum laboriosam aspernatur molestias. Mollitia ut fugiat ex nobis ut ratione rerum. Accusantium quo minima quaerat est aut voluptatibus ea et. Dolores voluptates vero omnis modi qui et qui aut. Quo repellat delectus maiores voluptatem nostrum quia officiis.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(140, 1, 5, 'ipsam-accusantium-quae-in-quia-aut', 'Nulla suscipit similique non cum rerum ut.', 'Vero voluptatum consectetur consectetur sapiente. Ut assumenda eum illo dolores. Eius maxime soluta et quaerat porro animi odio et.', 'Aut non corporis sit qui saepe. Blanditiis atque earum soluta necessitatibus. Blanditiis eos modi voluptatem harum consequatur perferendis. Nemo rerum quia ut similique. Similique quas fugiat consequuntur natus quia vel.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(141, 1, 9, 'possimus-doloremque-quidem-aut-voluptatem', 'Omnis ipsam nulla aut quia ea.', 'Deleniti error quo cumque et aut officiis. Et laboriosam in dolorum non optio quia est. Voluptatibus similique voluptatum natus.', 'Illum laborum maxime ab a non iste nostrum id. Qui rerum voluptatibus aut quod molestiae ratione dolor. Corporis velit quidem quidem. Dolorum aut officiis voluptatem qui ex. Fugiat aperiam est et. Autem quo animi delectus recusandae voluptatem enim ea sit.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(142, 1, 5, 'ducimus-ea-nobis-sed-laudantium', 'Asperiores aspernatur dicta aut et nulla aut et exercitationem.', 'Tenetur est autem iste. Velit reiciendis enim delectus blanditiis velit ab.', 'Provident ut ut tempora consequuntur fugit dignissimos quasi. Rerum nulla aliquid veniam id est rem voluptatem error. Quisquam recusandae et ipsum molestiae magnam officiis quo. Sit iure aut quam reprehenderit sed voluptatem. Fugit unde blanditiis quo voluptatem. Ratione dolorem eveniet aut a id esse cupiditate.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(143, 1, 10, 'illum-consequatur-aut-reprehenderit-vel-qui', 'Rerum vitae nihil reprehenderit fuga.', 'Et eum vitae dolorem sit. Iusto et debitis aperiam et commodi aliquam est. Officiis sed ut eos amet.', 'Ipsam omnis iste illum et ea sit quam. Possimus tempora nemo aut tempora deserunt maxime. Asperiores voluptatem aut dolorum nihil perspiciatis non voluptatem est. Pariatur doloribus velit nisi deserunt. Vitae rerum aliquam et. Necessitatibus illo qui veniam aperiam rerum consequuntur quasi. Adipisci praesentium rerum velit.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(144, 6, 10, 'nemo-ut-non-saepe-illo-eum-vitae-ut-nihil', 'Aut hic soluta et.', 'Ea ut qui odit ex. Quam dolorem quo dolorem neque asperiores.', 'In quae iure repellendus ex qui. Suscipit qui veniam consectetur qui nam mollitia. Sit et tenetur sed eligendi facilis facilis sed. Illum nemo non mollitia deleniti ut velit ea. Quis consectetur molestias et atque molestiae iste velit et.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(145, 5, 7, 'voluptatem-ex-non-harum-amet-nihil', 'Magni ipsa et voluptatem ipsam sed est.', 'Nulla dolores accusamus et consequatur. Vel officiis impedit impedit totam deleniti. Totam officiis esse consectetur.', 'Quasi dolor beatae non perspiciatis. Provident cupiditate laboriosam eum deleniti perspiciatis numquam. Ut architecto consectetur architecto iste. Perspiciatis velit quia natus dolores. Ea sequi et enim deleniti. Accusamus enim sint ad necessitatibus. Vitae iure voluptatem dolorum animi et atque inventore eos.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(146, 10, 4, 'impedit-iusto-sed-quis-veniam-tenetur-dolorum', 'Et maxime earum id et.', 'Est doloribus dolorum vitae quis enim in. Rerum nostrum saepe ut. Et consequuntur consectetur odit reprehenderit.', 'Perspiciatis dolor libero et enim. Aut sint quaerat porro. Ullam explicabo quo ut et aperiam. Aut eos voluptatibus adipisci ea doloremque ut et. Officia rerum alias velit modi error rem.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(147, 2, 5, 'nihil-libero-dolorem-quis-tempore-eos', 'Minus ex nobis illum et earum non.', 'Aut et ipsam sint nesciunt. Fugiat eos odit in eos sit amet quia.', 'Error nobis commodi quas eligendi. Aut nihil cupiditate soluta laboriosam rerum quam sed. Quia quibusdam libero quia in recusandae magnam. Aut suscipit et sit mollitia.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(148, 10, 8, 'tempore-est-non-in-non-quos-ut', 'Ad illo enim non praesentium assumenda optio et.', 'Suscipit velit iusto sit aut ipsa. Optio deleniti aut quas tempore similique ipsam ut. Sunt quos voluptatem dolore repellendus aperiam sint ut.', 'Maxime officia incidunt incidunt iste ab perspiciatis amet dicta. Quos consequatur aperiam nihil veritatis ut sapiente consequuntur harum. Est nam est molestiae. Sed fugiat beatae expedita. Saepe delectus sapiente aut id sit quia provident. Facilis praesentium animi autem doloremque unde iusto temporibus. Eos dicta nobis ut.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(149, 4, 2, 'fugit-quia-facere-ipsa-atque-nisi-sunt-unde', 'Cum beatae nam odit temporibus.', 'Est doloribus quis rerum et doloribus. Vero nam sint doloremque ea et inventore culpa.', 'Necessitatibus error architecto earum necessitatibus eum sunt. Eum quia adipisci laboriosam laborum nihil quia tenetur. Et aperiam explicabo provident velit. Iure saepe consectetur voluptas. Ut odio iste et deserunt dolorum velit eum. Nihil ut consequatur neque provident.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL),
(150, 8, 1, 'facilis-quisquam-fugiat-exercitationem-ex-est-sit-iusto-sit', 'In magnam accusantium quo.', 'Laboriosam quas in et. Possimus culpa numquam veniam quia dignissimos quis maiores. Temporibus vero dolorum odit itaque architecto a.', 'Illo dolore ipsa odit rerum numquam et. Ducimus ut accusamus animi vero. Dolorem nemo omnis et aut aliquam consectetur. Dignissimos sint voluptates aut laudantium inventore vel. Excepturi maxime est beatae magnam quia veritatis et. Ex officiis ea ducimus. Est et fuga ut.', '2021-10-24 02:57:29', '2021-10-24 02:57:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'isadore.okuneva', 'Edna Dickinson DDS', 'waters.webster@example.org', '2021-10-24 02:50:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X2U4rz7ViO', '2021-10-24 02:50:46', '2021-10-24 02:50:46'),
(2, 'terry94', 'Roberta Wilkinson', 'jedidiah61@example.net', '2021-10-24 02:50:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wpd3c4bvRf', '2021-10-24 02:50:46', '2021-10-24 02:50:46'),
(3, 'brain44', 'Marlene Baumbach', 'hstanton@example.com', '2021-10-24 02:50:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fcVq5ZAdUK', '2021-10-24 02:50:46', '2021-10-24 02:50:46'),
(4, 'xhickle', 'Albina Murphy', 'cormier.hayden@example.org', '2021-10-24 02:50:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SELcv1Fydi', '2021-10-24 02:50:46', '2021-10-24 02:50:46'),
(5, 'dane42', 'Destany Lockman', 'qbeer@example.net', '2021-10-24 02:50:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v7GVzqeLVw', '2021-10-24 02:50:46', '2021-10-24 02:50:46'),
(6, 'west.winifred', 'Kamren Moen III', 'carlee.lemke@example.com', '2021-10-24 02:50:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ad1vmgLm9W', '2021-10-24 02:50:46', '2021-10-24 02:50:46'),
(7, 'timmothy12', 'Pinkie Raynor MD', 'jordan44@example.com', '2021-10-24 02:50:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LxbUzUREYq', '2021-10-24 02:50:46', '2021-10-24 02:50:46'),
(8, 'kolby24', 'Dr. Ludie Howe PhD', 'tschiller@example.org', '2021-10-24 02:50:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x16lKeh7xj', '2021-10-24 02:50:46', '2021-10-24 02:50:46'),
(9, 'josh76', 'Maddison O\'Keefe', 'parker13@example.org', '2021-10-24 02:50:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2bfXOcFnSe', '2021-10-24 02:50:46', '2021-10-24 02:50:46'),
(10, 'dante.kozey', 'Mose Halvorson MD', 'mortimer.runolfsson@example.net', '2021-10-24 02:50:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JoTmagkfpU', '2021-10-24 02:50:46', '2021-10-24 02:50:46'),
(11, 'tulehon', 'Jeremy Melendez', 'myzad@mailinator.com', NULL, 'tulehon', NULL, '2021-12-30 03:33:26', '2021-12-30 03:33:26'),
(12, 'laxymawyqe', 'Octavius Tillman', 'codo@mailinator.com', NULL, '$2y$10$U7uPkH1D5bkWth78GG2SJ.lXth/71YcN9Ho9S0Q7tXA5/dfyAFSZW', NULL, '2021-12-30 03:42:52', '2021-12-30 03:42:52'),
(13, 'weraliweq', 'gavugafufu@mailinator.com', 'pejyri@mailinator.com', NULL, '$2y$10$KJJGPOQb0En5eFpnTAq5BuXAOWVwLXl/3Fgrm9Q06pHcUKhjzRovu', NULL, '2021-12-30 03:45:40', '2021-12-30 03:45:40'),
(14, 'anowar', 'anowar', 'anowar@gmail.com', NULL, '$2y$10$rnWAYV0ZF6yhMxtJFf/yy.L4fmFUdGe1dsfVwhsSkYbEkBhHWFgnO', NULL, '2022-01-06 02:47:10', '2022-01-06 02:47:10'),
(15, 'Mobile', 'Mobile', 'mobile@email.com', NULL, '$2y$10$tRSpPmfXNnDrFjRURT1iCuZEoC4Ogr.2750NLQ9EzzhI8CGWGXeni', NULL, '2022-01-06 03:33:35', '2022-01-06 03:33:35'),
(16, 'tulehon11', 'Mobile1', 'silentmith007@gmail.com', NULL, '$2y$10$6Lvhfw0FE67ijB9WdNmKP.k8Ch5wmOM650kdPEnKEkKSa3QWdYpdy', NULL, '2022-01-06 04:44:41', '2022-01-06 04:44:41'),
(17, 'gomamabyv', 'Justina Hayden', 'ribifykaru@mailinator.com', NULL, '$2y$10$W9iCOWSCSfQVsULrramFMuYYXQm4NPXjZD2RFely3gwYTYZu2VFVe', NULL, '2022-01-06 04:45:50', '2022-01-06 04:45:50'),
(18, 'fuwura', 'Benedict Butler', 'xyfutis@mailinator.com', NULL, '$2y$10$kCL29b.ohUpqeKoESGEVLuZDprAvDT9LwA/dGoTdw8M2/G9PXlSSu', NULL, '2022-01-06 04:46:25', '2022-01-06 04:46:25'),
(19, 'toqytyjixu', 'Bertha West', 'wuhyhoqur@mailinator.com', NULL, '$2y$10$T.lh.3ajaE8OX5L1qWE0DOB/vaWykY5dRy7AmJaY.H0SDIYLoI2g2', NULL, '2022-01-06 04:46:44', '2022-01-06 04:46:44'),
(20, 'qodajiqe', 'Garrett Short', 'domej@mailinator.com', NULL, '$2y$10$idV4Q9HV.ZXDGn1rst.vveE3AMRb52.XtLNAO6u6O5R7/Zk720LzC', NULL, '2022-01-06 04:47:46', '2022-01-06 04:47:46'),
(21, 'biwidop', 'Camilla Schroeder', 'feperyvive@mailinator.com', NULL, '$2y$10$V5CnoExGwLvP63q5dWiude6DKBfpqRqBVdfruvRCz72bbonpn0wK6', NULL, '2022-01-06 04:48:12', '2022-01-06 04:48:12'),
(22, 'kivef', 'Kadeem Rosa', 'kuqymipyse@mailinator.com', NULL, '$2y$10$UvTvMo7CB7NjMG3TvyP5YuotAUFnpLOE/gXAuLilMa8wmZFLIAFpC', NULL, '2022-01-06 04:50:09', '2022-01-06 04:50:09'),
(23, 'rypavi', 'Jena Carr', 'hobez@mailinator.com', NULL, '$2y$10$20WcN35f6PZxbEI14EPsdebVrQocc6fREOCVvnsqgCIeejOyyjjTS', NULL, '2022-01-06 04:52:21', '2022-01-06 04:52:21'),
(24, 'pydihuhib', 'Ori Hebert', 'gepeq@mailinator.com', NULL, '$2y$10$tk987E1bouEe62zlXQDzm.ROfDQSg3Ko/bqndtOLUUYbFQ.m28Gwy', NULL, '2022-01-06 04:55:07', '2022-01-06 04:55:07'),
(25, 'xakudyj', 'Evelyn Price', 'wavohemax@mailinator.com', NULL, '$2y$10$7Tz8x9/83epcGudkoT2/z.ibGbGJMWXlmsMfJnxwjARzqiklxy4Te', NULL, '2022-01-06 04:55:39', '2022-01-06 04:55:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
