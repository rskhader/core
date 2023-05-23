-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 مارس 2023 الساعة 00:04
-- إصدار الخادم: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corearchive`
--

-- --------------------------------------------------------

--
-- بنية الجدول `archives`
--

CREATE TABLE `archives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `num_Ministry` int(11) NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `files` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `archives`
--

INSERT INTO `archives` (`id`, `number`, `num_Ministry`, `title`, `import_id`, `files`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', 1, '[\"1.jpg\",\"2.jpg\",\"3.jpg\"]', '2023-03-09', '2023-03-09 19:55:26', '2023-03-09 19:55:26'),
(2, 123, 1232, 'اختبااااااااااااار', 1, '[\"DataTables example - Export titles and messages.pdf\",\"DataTables example - Export titles and messages.xlsx\",\"xlsx.xlsx\"]', '2023-03-10', '2023-03-09 20:24:31', '2023-03-09 20:24:31'),
(3, 123, 1232, 'اختبااااااااااااار', 1, '[\"DataTables example - Export titles and messages.pdf\",\"DataTables example - Export titles and messages.xlsx\",\"xlsx.xlsx\"]', '2023-03-10', '2023-03-09 20:24:31', '2023-03-09 20:24:31');

-- --------------------------------------------------------

--
-- بنية الجدول `archive_exports`
--

CREATE TABLE `archive_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `export_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `archive_nots`
--

CREATE TABLE `archive_nots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reciver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT 'لا يوجد تفاصيل.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `archive_nots`
--

INSERT INTO `archive_nots` (`id`, `sender`, `type_id`, `title`, `reciver`, `files`, `description`, `created_at`, `updated_at`) VALUES
(111111113, 'yousef', 1, '111111111111', '[\"hesham\",\"user\"]', '[\"DataTables example - Export titles and messages.pdf\",\"DataTables example - Export titles and messages.xlsx\"]', '11111111111111', '2023-03-09 21:01:45', '2023-03-09 21:01:45');

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_num` int(11) NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `censorships`
--

CREATE TABLE `censorships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_censorship_id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `censorship_exports`
--

CREATE TABLE `censorship_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_censorship_id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `export_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `censorship_nots`
--

CREATE TABLE `censorship_nots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reciver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `computers`
--

CREATE TABLE `computers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `computer_exports`
--

CREATE TABLE `computer_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `export_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `computer_nots`
--

CREATE TABLE `computer_nots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reciver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_num` int(11) NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `diesels`
--

CREATE TABLE `diesels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `voucher` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_num` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `diesel_exports`
--

CREATE TABLE `diesel_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `voucher` int(11) NOT NULL,
  `date` date NOT NULL,
  `num_section` int(11) NOT NULL,
  `num_note` int(11) NOT NULL,
  `sub_section_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `exports`
--

CREATE TABLE `exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `export_num` int(11) NOT NULL,
  `export_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `export_items`
--

CREATE TABLE `export_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `out_quantity` int(11) NOT NULL,
  `voucher_num` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `imports`
--

CREATE TABLE `imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `import_num` int(11) NOT NULL,
  `import_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `imports`
--

INSERT INTO `imports` (`id`, `import_num`, `import_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'برمجة', '2023-03-09 19:55:06', '2023-03-09 19:55:06');

-- --------------------------------------------------------

--
-- بنية الجدول `import_items`
--

CREATE TABLE `import_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_item_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `in_quantity` int(11) NOT NULL,
  `invoice_num` int(11) NOT NULL,
  `price` double NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `item_num` int(11) NOT NULL,
  `item_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_balance` int(11) NOT NULL,
  `low_limit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `jibayaexports`
--

CREATE TABLE `jibayaexports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `export_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `jibayas`
--

CREATE TABLE `jibayas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `jibaya_nots`
--

CREATE TABLE `jibaya_nots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reciver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `legalexports`
--

CREATE TABLE `legalexports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `export_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `legals`
--

CREATE TABLE `legals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `legal_nots`
--

CREATE TABLE `legal_nots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reciver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_01_11_075438_create_imports_table', 1),
(5, '2022_01_11_075554_create_exports_table', 1),
(6, '2022_12_08_083112_create_legals_table', 1),
(7, '2022_12_09_190507_create_legalexports_table', 1),
(8, '2022_12_12_082442_create_jibayas_table', 1),
(9, '2022_12_14_154701_create_archives_table', 1),
(10, '2022_12_14_155343_create_archive_exports_table', 1),
(11, '2022_12_18_071653_create_legal_nots_table', 1),
(12, '2022_12_20_080912_create_computers_table', 1),
(13, '2022_12_20_081035_create_computer_exports_table', 1),
(14, '2022_1_12_094314_create_jibayaexports_table', 1),
(15, '2023_01_04_083645_create_suppliers_table', 1),
(16, '2023_01_06_195537_create_diesels_table', 1),
(17, '2023_01_07_185315_create_sections_table', 1),
(18, '2023_01_07_190236_create_sub_sections_table', 1),
(19, '2023_01_07_190727_create_diesel_exports_table', 1),
(20, '2023_01_09_193701_create_sub_censorships_table', 1),
(21, '2023_01_09_194032_create_censorships_table', 1),
(22, '2023_01_09_195125_create_censorship_exports_table', 1),
(23, '2023_01_28_204723_create_types_table', 1),
(24, '2023_01_29_103620_create_archive_nots_table', 1),
(25, '2023_01_29_104239_create_censorship_nots_table', 1),
(26, '2023_01_29_104302_create_computer_nots_table', 1),
(27, '2023_01_29_104321_create_jibaya_nots_table', 1),
(28, '2023_01_29_185117_create_posts_table', 1),
(29, '2023_02_02_092414_create_notifications_table', 1),
(30, '2023_02_22_165155_create_units_table', 1),
(31, '2023_02_22_165329_create_categories_table', 1),
(32, '2023_02_22_173227_create_supplier_items_table', 1),
(33, '2023_02_22_174923_create_stores_table', 1),
(34, '2023_02_22_224221_create_departments_table', 1),
(35, '2023_02_22_224405_create_sub_departments_table', 1),
(36, '2023_02_22_230439_create_users_table', 1),
(37, '2023_02_25_111746_create_items_table', 1),
(38, '2023_02_25_182737_create_import_items_table', 1),
(39, '2023_02_25_230629_create_export_items_table', 1),
(40, '2023_03_07_074809_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- بنية الجدول `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('2845f6d8-407f-41c2-bc17-07bd9d3cb778', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 3, '{\"archiveNot_id\":1121,\"archiveNot_file\":null,\"archiveNot_description\":\"111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 20:57:18', '2023-03-09 20:57:18'),
('2ddbc7b0-8ee7-4b21-81bc-289b1e96bb7b', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 4, '{\"archiveNot_id\":1121,\"archiveNot_file\":null,\"archiveNot_description\":\"111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 20:55:19', '2023-03-09 20:55:19'),
('436700f5-5e1b-4d3b-a240-6c6b1e3335bc', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 4, '{\"archiveNot_id\":111111113,\"archiveNot_file\":null,\"archiveNot_description\":\"111111111111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 21:01:31', '2023-03-09 21:01:31'),
('536bb8bd-0386-46fa-9cac-9b683be2a717', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 3, '{\"archiveNot_id\":1321,\"archiveNot_file\":\"1678401959.jpg\",\"archiveNot_description\":\"1111\",\"archiveNot_create\":\"user\"}', NULL, '2023-03-09 20:45:59', '2023-03-09 20:45:59'),
('6cfd3e78-0b22-44db-af36-cf1411057e1f', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 4, '{\"archiveNot_id\":111111113,\"archiveNot_file\":null,\"archiveNot_description\":\"111111111111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 21:01:45', '2023-03-09 21:01:45'),
('8dcb97b3-f97c-4743-8789-df2dbaa97d3e', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 4, '{\"archiveNot_id\":111111,\"archiveNot_file\":null,\"archiveNot_description\":\"111111111111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 20:57:41', '2023-03-09 20:57:41'),
('943cccd5-06e1-4d8c-aec0-f371c5ec956a', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 4, '{\"archiveNot_id\":1121,\"archiveNot_file\":null,\"archiveNot_description\":\"111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 20:57:18', '2023-03-09 20:57:18'),
('9a3b498e-3c15-4ef1-abca-ee42b4408b74', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 3, '{\"archiveNot_id\":111111113,\"archiveNot_file\":null,\"archiveNot_description\":\"111111111111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 21:01:31', '2023-03-09 21:01:31'),
('9cf83b1e-5cbb-422a-a516-2b652cc0f0a4', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 3, '{\"archiveNot_id\":111111,\"archiveNot_file\":null,\"archiveNot_description\":\"111111111111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 20:57:41', '2023-03-09 20:57:41'),
('a6caf83e-15f9-4e21-b540-9df749e64f9f', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 3, '{\"archiveNot_id\":111111113,\"archiveNot_file\":null,\"archiveNot_description\":\"111111111111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 20:59:15', '2023-03-09 20:59:15'),
('b6e5923b-24fb-4bf5-8967-6186eeda02dd', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 4, '{\"archiveNot_id\":111111113,\"archiveNot_file\":null,\"archiveNot_description\":\"111111111111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 20:59:15', '2023-03-09 20:59:15'),
('bf9ca53d-a4d0-431e-b97e-6fad83e05695', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 1, '{\"archiveNot_id\":1321,\"archiveNot_file\":\"1678401959.jpg\",\"archiveNot_description\":\"1111\",\"archiveNot_create\":\"user\"}', NULL, '2023-03-09 20:45:59', '2023-03-09 20:45:59'),
('d0b06064-1b4c-42de-a67a-ff7c614b6cc4', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 3, '{\"archiveNot_id\":1121,\"archiveNot_file\":null,\"archiveNot_description\":\"111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 20:55:19', '2023-03-09 20:55:19'),
('e9c6dda5-497b-4b8d-a46d-b9a9801f2cf5', 'App\\Notifications\\CreatearchiveNot', 'App\\Models\\User', 3, '{\"archiveNot_id\":111111113,\"archiveNot_file\":null,\"archiveNot_description\":\"111111111111\",\"archiveNot_create\":\"yousef\"}', NULL, '2023-03-09 21:01:45', '2023-03-09 21:01:45');

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'units', 'web', '2023-03-09 02:04:10', '2023-03-09 02:04:10'),
(2, 'categories', 'web', '2023-03-09 02:04:18', '2023-03-09 02:04:18'),
(3, 'items', 'web', '2023-03-09 02:04:24', '2023-03-09 02:04:24'),
(4, 'stores', 'web', '2023-03-09 02:04:31', '2023-03-09 02:04:31'),
(5, 'suppliers', 'web', '2023-03-09 02:04:39', '2023-03-09 02:04:39'),
(6, 'import_items', 'web', '2023-03-09 02:04:45', '2023-03-09 02:04:45'),
(7, 'export_items', 'web', '2023-03-09 02:04:51', '2023-03-09 02:04:51'),
(8, 'sections', 'web', '2023-03-09 02:04:56', '2023-03-09 02:04:56'),
(9, 'users', 'web', '2023-03-09 02:05:05', '2023-03-09 02:05:05'),
(10, 'permissions', 'web', '2023-03-09 02:05:14', '2023-03-09 02:05:14'),
(11, 'roles', 'web', '2023-03-09 02:05:21', '2023-03-09 02:05:21'),
(12, 'diesels', 'web', '2023-03-09 02:05:33', '2023-03-09 02:05:33'),
(14, 'archive', 'web', '2023-03-09 02:09:28', '2023-03-09 02:09:28'),
(15, 'legal', 'web', '2023-03-09 02:09:35', '2023-03-09 02:09:35'),
(16, 'computer', 'web', '2023-03-09 02:09:40', '2023-03-09 02:09:40'),
(17, 'jibaya', 'web', '2023-03-09 02:09:46', '2023-03-09 02:09:46'),
(18, 'censorship', 'web', '2023-03-09 02:09:51', '2023-03-09 02:09:51'),
(19, 'admin', 'web', '2023-03-09 17:02:14', '2023-03-09 17:02:14'),
(20, 'stock', 'web', '2023-03-09 17:04:27', '2023-03-09 17:04:27');

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'web', '2023-03-09 19:48:35', '2023-03-09 19:48:35'),
(3, 'archive', 'web', '2023-03-09 20:13:10', '2023-03-09 20:13:10');

-- --------------------------------------------------------

--
-- بنية الجدول `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(14, 2),
(14, 3),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2);

-- --------------------------------------------------------

--
-- بنية الجدول `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num_section` int(11) NOT NULL,
  `name_section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `sections`
--

INSERT INTO `sections` (`id`, `num_section`, `name_section`, `created_at`, `updated_at`) VALUES
(2301, 2301, 'الحاسوب', NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_num` int(11) NOT NULL,
  `store_name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `sub_censorships`
--

CREATE TABLE `sub_censorships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `sub_departments`
--

CREATE TABLE `sub_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `sub_department_num` int(11) NOT NULL,
  `sub_department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `sub_sections`
--

CREATE TABLE `sub_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_supplier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_supplier` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `supplier_items`
--

CREATE TABLE `supplier_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_item_num` int(11) NOT NULL,
  `supplier_item_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `types`
--

INSERT INTO `types` (`id`, `name`, `number`, `created_at`, `updated_at`) VALUES
(1, 'مالية', 101, '2023-03-09 20:11:26', '2023-03-09 20:11:26');

-- --------------------------------------------------------

--
-- بنية الجدول `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_num` int(11) NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `section_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yousef', 'yousef@app.com', NULL, '$2y$10$e/9gxAfOU11LqU/MqKtQaeexUQWxwGCp0osoyxWG5w5L2pvm3jyxW', 2301, NULL, NULL, NULL),
(3, 'hesham', '1717@app.com', NULL, '$2y$10$zEa6AZplbUq2yYCgGZxzZe2mdqDd/0rXmHxukMNiuKehGORl.tVTS', 2301, NULL, '2023-03-09 20:14:33', '2023-03-09 20:14:33'),
(4, 'user', 'user@app.com', NULL, '$2y$10$7vr7cxuKYtL2xiNMmtJiROjJdGlqZM2xPQpmbEiJilFnePUKN0koe', 2301, NULL, '2023-03-09 20:28:46', '2023-03-09 20:28:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archives_import_id_foreign` (`import_id`);

--
-- Indexes for table `archive_exports`
--
ALTER TABLE `archive_exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archive_exports_export_id_foreign` (`export_id`);

--
-- Indexes for table `archive_nots`
--
ALTER TABLE `archive_nots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archive_nots_type_id_foreign` (`type_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_num_unique` (`category_num`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`);

--
-- Indexes for table `censorships`
--
ALTER TABLE `censorships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `censorships_sub_censorship_id_foreign` (`sub_censorship_id`),
  ADD KEY `censorships_import_id_foreign` (`import_id`);

--
-- Indexes for table `censorship_exports`
--
ALTER TABLE `censorship_exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `censorship_exports_sub_censorship_id_foreign` (`sub_censorship_id`),
  ADD KEY `censorship_exports_export_id_foreign` (`export_id`);

--
-- Indexes for table `censorship_nots`
--
ALTER TABLE `censorship_nots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_import_id_foreign` (`import_id`);

--
-- Indexes for table `computer_exports`
--
ALTER TABLE `computer_exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computer_exports_export_id_foreign` (`export_id`);

--
-- Indexes for table `computer_nots`
--
ALTER TABLE `computer_nots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diesels`
--
ALTER TABLE `diesels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `diesels_voucher_unique` (`voucher`),
  ADD KEY `diesels_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `diesel_exports`
--
ALTER TABLE `diesel_exports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `diesel_exports_voucher_unique` (`voucher`),
  ADD KEY `diesel_exports_sub_section_id_foreign` (`sub_section_id`),
  ADD KEY `diesel_exports_section_id_foreign` (`section_id`);

--
-- Indexes for table `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `export_items`
--
ALTER TABLE `export_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `export_items_item_id_foreign` (`item_id`),
  ADD KEY `export_items_user_id_foreign` (`user_id`),
  ADD KEY `export_items_store_id_foreign` (`store_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_items`
--
ALTER TABLE `import_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_items_item_id_foreign` (`item_id`),
  ADD KEY `import_items_supplier_item_id_foreign` (`supplier_item_id`),
  ADD KEY `import_items_store_id_foreign` (`store_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_item_num_unique` (`item_num`),
  ADD KEY `items_category_id_foreign` (`category_id`),
  ADD KEY `items_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `jibayaexports`
--
ALTER TABLE `jibayaexports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jibayaexports_export_id_foreign` (`export_id`);

--
-- Indexes for table `jibayas`
--
ALTER TABLE `jibayas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jibayas_import_id_foreign` (`import_id`);

--
-- Indexes for table `jibaya_nots`
--
ALTER TABLE `jibaya_nots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legalexports`
--
ALTER TABLE `legalexports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `legalexports_export_id_foreign` (`export_id`);

--
-- Indexes for table `legals`
--
ALTER TABLE `legals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `legals_import_id_foreign` (`import_id`);

--
-- Indexes for table `legal_nots`
--
ALTER TABLE `legal_nots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_store_num_unique` (`store_num`);

--
-- Indexes for table `sub_censorships`
--
ALTER TABLE `sub_censorships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_departments`
--
ALTER TABLE `sub_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_departments_department_id_foreign` (`department_id`);

--
-- Indexes for table `sub_sections`
--
ALTER TABLE `sub_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_sections_section_id_foreign` (`section_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_items`
--
ALTER TABLE `supplier_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplier_items_supplier_item_num_unique` (`supplier_item_num`),
  ADD UNIQUE KEY `supplier_items_phone_unique` (`phone`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_unit_num_unique` (`unit_num`),
  ADD UNIQUE KEY `units_unit_name_unique` (`unit_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_section_id_foreign` (`section_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `archive_exports`
--
ALTER TABLE `archive_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archive_nots`
--
ALTER TABLE `archive_nots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111111114;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `censorships`
--
ALTER TABLE `censorships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `censorship_exports`
--
ALTER TABLE `censorship_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `censorship_nots`
--
ALTER TABLE `censorship_nots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `computers`
--
ALTER TABLE `computers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `computer_exports`
--
ALTER TABLE `computer_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `computer_nots`
--
ALTER TABLE `computer_nots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diesels`
--
ALTER TABLE `diesels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diesel_exports`
--
ALTER TABLE `diesel_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `export_items`
--
ALTER TABLE `export_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `import_items`
--
ALTER TABLE `import_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jibayaexports`
--
ALTER TABLE `jibayaexports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jibayas`
--
ALTER TABLE `jibayas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jibaya_nots`
--
ALTER TABLE `jibaya_nots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legalexports`
--
ALTER TABLE `legalexports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legals`
--
ALTER TABLE `legals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legal_nots`
--
ALTER TABLE `legal_nots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2302;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_censorships`
--
ALTER TABLE `sub_censorships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_departments`
--
ALTER TABLE `sub_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_sections`
--
ALTER TABLE `sub_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_items`
--
ALTER TABLE `supplier_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `archives`
--
ALTER TABLE `archives`
  ADD CONSTRAINT `archives_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `archive_exports`
--
ALTER TABLE `archive_exports`
  ADD CONSTRAINT `archive_exports_export_id_foreign` FOREIGN KEY (`export_id`) REFERENCES `exports` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `archive_nots`
--
ALTER TABLE `archive_nots`
  ADD CONSTRAINT `archive_nots_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `censorships`
--
ALTER TABLE `censorships`
  ADD CONSTRAINT `censorships_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `censorships_sub_censorship_id_foreign` FOREIGN KEY (`sub_censorship_id`) REFERENCES `sub_censorships` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `censorship_exports`
--
ALTER TABLE `censorship_exports`
  ADD CONSTRAINT `censorship_exports_export_id_foreign` FOREIGN KEY (`export_id`) REFERENCES `exports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `censorship_exports_sub_censorship_id_foreign` FOREIGN KEY (`sub_censorship_id`) REFERENCES `sub_censorships` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `computers`
--
ALTER TABLE `computers`
  ADD CONSTRAINT `computers_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `computer_exports`
--
ALTER TABLE `computer_exports`
  ADD CONSTRAINT `computer_exports_export_id_foreign` FOREIGN KEY (`export_id`) REFERENCES `exports` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `diesels`
--
ALTER TABLE `diesels`
  ADD CONSTRAINT `diesels_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `diesel_exports`
--
ALTER TABLE `diesel_exports`
  ADD CONSTRAINT `diesel_exports_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `diesel_exports_sub_section_id_foreign` FOREIGN KEY (`sub_section_id`) REFERENCES `sub_sections` (`id`);

--
-- القيود للجدول `export_items`
--
ALTER TABLE `export_items`
  ADD CONSTRAINT `export_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `export_items_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `export_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `import_items`
--
ALTER TABLE `import_items`
  ADD CONSTRAINT `import_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `import_items_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `import_items_supplier_item_id_foreign` FOREIGN KEY (`supplier_item_id`) REFERENCES `supplier_items` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `jibayaexports`
--
ALTER TABLE `jibayaexports`
  ADD CONSTRAINT `jibayaexports_export_id_foreign` FOREIGN KEY (`export_id`) REFERENCES `exports` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `jibayas`
--
ALTER TABLE `jibayas`
  ADD CONSTRAINT `jibayas_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `legalexports`
--
ALTER TABLE `legalexports`
  ADD CONSTRAINT `legalexports_export_id_foreign` FOREIGN KEY (`export_id`) REFERENCES `exports` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `legals`
--
ALTER TABLE `legals`
  ADD CONSTRAINT `legals_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `sub_departments`
--
ALTER TABLE `sub_departments`
  ADD CONSTRAINT `sub_departments_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `sub_sections`
--
ALTER TABLE `sub_sections`
  ADD CONSTRAINT `sub_sections_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- القيود للجدول `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
