-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 20, 2023 at 04:31 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personal-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kazi Musfiqur Rahman', 'admin@gmail.com', NULL, '$2y$12$OLF7mY9baQb1l8PRyGnEnusbPISfcvK75p8zRWrJQeBQozyjZwTwe', NULL, '2023-12-11 01:18:43', '2023-12-11 01:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Laravel Development', 'Laravel development is the process of creating web applications using Laravel, a PHP framework that provides an expressive, elegant, and robust way of building web applications. Laravel development involves using various features and tools that Laravel offers,', '2023-12-11 02:42:21', '2023-12-13 05:36:25'),
(4, 'Flutter Development', 'Flutter development is the process of creating cross-platform applications using Flutter, an open-source UI software development kit created by Google. Flutter development involves writing widgets that represent different parts of the UI, and composing them together to create dynamic and interactive apps for web, mobile,', '2023-12-11 03:20:19', '2023-12-13 05:26:28'),
(7, 'KAZI MUSFIQUR RAHMAN', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2023-12-11 22:49:42', '2023-12-19 02:03:52'),
(8, 'React Development', 'React development is the process of creating web applications using React, a JavaScript library for building user interfaces. React development involves writing components that represent different parts of the UI, and composing them together to create dynamic and interactive web pages', '2023-12-12 03:24:28', '2023-12-13 05:25:41'),
(9, 'Database Development', 'Database development is the process of designing, creating, and maintaining databases that store and organize data for various purposes. Database developers use a programming language called SQL (Structured Query Language) to manipulate data and implement database-driven solutions.', '2023-12-13 05:23:50', '2023-12-13 05:23:50'),
(10, 'Traveling', 'Loram’s fourth-generation shoulder ballast cleaning technology, the SBC2400, has revolutionised the speed, power and productivity expectations of our already best-in-class shoulder ballast cleaners. Equipped with four digging wheels and two separator screens, the SBC2400 is designed to handle and clean double the amount of material of Loram’s class-leading HP SBC.', '2023-12-19 05:00:38', '2023-12-19 05:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `user_id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, 'Data ki Gese', '<p>Haaaa Asche !!</p>', '2023-12-18 03:22:20', '2023-12-18 03:22:20'),
(2, 1, 'Check signal', '<span style=\"background-color: rgb(0, 255, 0);\">Green Signal</span>', '2023-12-18 05:13:21', '2023-12-18 05:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_10_071425_create_admins_table', 1),
(6, '2023_12_10_111846_create_categories_table', 1),
(7, '2023_12_12_051343_create_posts_table', 2),
(8, '2023_12_14_093449_add_photo_to_users_table', 3),
(9, '2023_12_14_110730_create_post_comments_table', 4),
(10, '2023_12_17_082405_create_questions_table', 5),
(11, '2023_12_17_114158_create_question_answers_table', 6),
(12, '2023_12_18_062820_create_question_answer_likes_table', 7),
(13, '2023_12_18_091343_create_contact_messages_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `thumbnail`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Summernote in different', '<h1 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><span style=\"font-family: &quot;Comic Sans MS&quot;; font-size: 14px;\"><font color=\"#085294\" style=\"background-color: rgb(255, 255, 255);\"><span style=\"font-family: Impact;\">&nbsp;Don’t forget</span></font><font color=\"#ff0000\" style=\"\"><span style=\"font-family: Impact;\"> to change</span></font></span><font color=\"#ff0000\" style=\"font-family: &quot;Comic Sans MS&quot;; font-size: 14px;\"><span style=\"font-family: Impact;\"> </span></font><font style=\"font-family: &quot;Comic Sans MS&quot;; font-size: 14px;\" color=\"#ff00ff\"><span style=\"font-family: Impact;\">the file’s&nbsp;</span></font><font style=\"\"><font face=\"Comic Sans MS\" color=\"#ff00ff\" style=\"\"><span style=\"font-size: 14px; font-family: Impact;\">path.</span></font><font color=\"#68747f\" face=\"Comic Sans MS\" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"font-family: Impact;\">&nbsp;</span></font></font></h1><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><a class=\" l_ecrd_txt_lnk b_ignbt l_ecrd_txt_hover\" title=\"en.wikipedia.org\" target=\"_blank\" hover-data=\"-\" href=\"https://www.bing.com/ck/a?!&amp;&amp;p=bb881e2c5efdf4deJmltdHM9MTcwMjUxMjAwMCZpZ3VpZD0yODM4NzZhZC1iYmIxLTYyZWMtMjEzYi02NWNhYmFlYjYzZjMmaW5zaWQ9NTc4NQ&amp;ptn=3&amp;ver=2&amp;hsh=3&amp;fclid=283876ad-bbb1-62ec-213b-65cabaeb63f3&amp;psq=article&amp;u=a1aHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvQXJ0aWNsZV8oZ3JhbW1hcik&amp;ntb=1\" h=\"ID=SERP,5785.1\" style=\"color: rgb(17, 17, 17); font-family: Roboto, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"></a></p><p style=\"border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: none; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; -webkit-line-clamp: initial; line-height: 22px; display: inline !important;\"><span class=\"l_ecrd_txt_pln\">In grammar, an article is any member of a class of dedicated words that are used with noun phrases to mark the identifiability of the referents of the noun phrases. The category of articles constitute</span></p>', '1702380017.png', 4, 1, '2023-12-12 03:23:32', '2023-12-14 03:26:42'),
(3, 'Laravel Development course', 'Laravel, a PHP framework that provides an expressive, elegant, and robust way of building web applications.', '1702467617.png', 3, 1, '2023-12-13 05:40:17', '2023-12-13 05:40:17'),
(4, 'Database Management System', 'Database development is a complex and challenging field that requires a combination of technical and analytical skills. Database developers need to have a good', '1702467686.png', 9, 1, '2023-12-13 05:41:26', '2023-12-13 05:41:26'),
(5, 'React Management System', 'React development involves writing components that represent different parts of the UI, and composing them together to create dynamic and interactive web pages.', '1702467781.png', 8, 1, '2023-12-13 05:43:01', '2023-12-13 05:43:01'),
(6, 'Personal page', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><font color=\"#ff0000\">Lorem Ipsum</font></strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span><br></p>', '1702972959.jpg', 7, 1, '2023-12-19 02:02:39', '2023-12-19 02:02:39'),
(7, 'The world’s most productive shoulder ballast cleaner', '<p style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 10px 0px; padding: 0px; vertical-align: baseline; outline: 0px; font-family: Roboto, sans-serif; line-height: 24px !important;\"><font color=\"#6badde\">Loram’s fourth-generation shoulder ballast cleaning technology, the SBC2400, has revolutionised the speed, power and productivity expectations of our already best-in-class shoulder ballast cleaners.</font><span style=\"color: rgb(88, 89, 91);\"> Equipped with four digging wheels and two separator screens, the SBC2400 is designed to handle and clean double the amount of material of Loram’s class-leading HP SBC. Enhanced automation and state-of-the-art operational technology gives the Loram SBC2400 the capability to clean up to 2,400 m³ of ballast per hour, at work speeds up to 6.5 km/h.</span></p><p style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 10px 0px; padding: 0px; vertical-align: baseline; outline: 0px; font-family: Roboto, sans-serif; line-height: 24px !important;\"><font color=\"#085294\">The self-propelled SBC2400 features synchronised 760 millimeter wide digging wheels to excavate ballast from the sleeper ends outward to the edge of the ballast section. To break up mud pockets and restore drainage, </font><span style=\"color: rgb(88, 89, 91);\">dual scarifier teeth undercut the sleeper ends to 130 millimeters. Like Loram’s HP SBC, the SBC2400 features Loram’s exclusive elliptical throw agitation separators and variable screen leveling, providing not only more effective ballast cleaning, but the ability to adjust cleaning forces to local conditions.</span></p><p style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 10px 0px; padding: 0px; vertical-align: baseline; outline: 0px; font-family: Roboto, sans-serif; line-height: 24px !important;\"><span style=\"color: rgb(88, 89, 91);\">The Loram SBC2400 features cab-forward design to ensure maximum operator visibility and ergonomics. With its advanced automation and unprecedented ballast cleaning capabilities, the SBC2400 requires just three operators. </span><font color=\"#085294\">Loram services also provides a superintendent, crew chief, and maintenance crew members for optimal performance of shoulder ballast cleaning activities.</font></p><p style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 10px 0px 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: rgb(88, 89, 91); font-family: Roboto, sans-serif; line-height: 24px !important;\">With its massive ballast cleaning capabilities and capacity, the Loram SBC2400 processes more material, twice as fast, within a shorter track window that produces lower unit costs.</p>', '1702983766.png', 10, 1, '2023-12-19 05:02:46', '2023-12-19 05:02:46'),
(8, 'Track Maintenance', '<p style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 10px 0px; padding: 0px; vertical-align: baseline; outline: 0px; font-family: Roboto, sans-serif; line-height: 24px !important;\"><font color=\"#3984c6\">The self-propelled SBC2400 features synchronised 760 millimeter wide digging wheels to excavate ballast from the sleeper ends outward to the edge of the ballast section. To break up mud pockets and restore drainage, dual scarifier teeth undercut the sleeper ends to 130 millimeters. Like Loram’s HP SBC, the SBC2400 features Loram’s exclusive elliptical throw agitation separators and variable screen leveling, providing not only more effective ballast cleaning, but the ability to adjust cleaning forces to local conditions.</font></p><p style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 10px 0px; padding: 0px; vertical-align: baseline; outline: 0px; font-family: Roboto, sans-serif; line-height: 24px !important;\"><font color=\"#3984c6\">The Loram SBC2400 features cab-forward design to ensure maximum operator visibility and ergonomics. With its advanced automation and unprecedented ballast cleaning capabilities, the SBC2400 requires just three operators. Loram services also provides a superintendent, crew chief, and maintenance crew members for optimal performance of shoulder ballast cleaning activities.</font></p>', '1702983974.png', 10, 1, '2023-12-19 05:06:14', '2023-12-19 05:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 5, 2, '<span style=\"color: rgb(46, 46, 46); font-family: Inter; font-size: 18px;\">Businesses that send autoresponder messages need to ensure that they provide alternative contact options. The automated email responses or text messages should clearly mention what way customers can reach out to the business</span>', '2023-12-16 23:48:55', '2023-12-16 23:48:55'),
(2, 5, 2, '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"font-family: &quot;Comic Sans MS&quot;;\"><b><font color=\"#ff00ff\">Lorem ipsum</font></b></span></p><p> dolor sit amet consectetur adipisicing elit. Assumenda maiores asperiores dolorem voluptatem et saepe minus, pariatur eius temporibus reprehenderit deleniti vitae quisquam, ipsa quo numquam! Debitis cum possimus earum!</p>', '2023-12-17 01:42:41', '2023-12-17 01:42:41'),
(3, 5, 2, '<p><font color=\"#ff00ff\">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sapiente repellat est iusto. In a nesciunt sed voluptatum magni, provident eaque iste, excepturi perferendis, blanditiis eveniet veniam! Nesciunt sit at ex!</font><br></p>', '2023-12-17 01:44:03', '2023-12-17 01:44:03'),
(4, 5, 2, 'Bootstrap utilizes Sass for a modular and customizable architecture. Import only the components you need, enable global options like gradients and shadows, and write your own CSS with our variables, maps, functions, and mixins.&nbsp;', '2023-12-17 01:49:06', '2023-12-17 01:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `user_id`, `category_id`, `question`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'How to learn Laravel?', '2023-12-17 03:28:31', '2023-12-17 03:28:31'),
(2, 2, 8, 'How to run React code?', '2023-12-17 04:25:13', '2023-12-17 04:25:13'),
(3, 1, 7, 'How to get an internship ?', '2023-12-17 04:28:57', '2023-12-17 04:28:57'),
(4, 1, 9, 'How to learn Database?', '2023-12-17 04:29:57', '2023-12-17 04:29:57'),
(5, 1, 4, 'How to improve my flutter coding skills', '2023-12-17 04:35:17', '2023-12-17 04:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `question_answers`
--

CREATE TABLE `question_answers` (
  `id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_answers`
--

INSERT INTO `question_answers` (`id`, `question_id`, `user_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 4, 2, '<p><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.7);\">To learn about databases, you can start by researching areas of interest and which types of industry jobs you are well-suited for. Most career trajectories in big data require knowledge of SQL, so aim to master the fundamentals early on. You can enroll in database courses to learn more about the subject and practice your skills. There are many online resources available to help you learn about database.</span><br></p>', '2023-12-17 23:05:42', '2023-12-17 23:05:42'),
(3, 4, 2, '<p><span style=\"font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.7);\"><font color=\"#ff00ff\">Most career trajectories in big data require knowledge of SQL, so aim to master the fundamentals early on.</font></span><br></p>', '2023-12-17 23:38:56', '2023-12-17 23:38:56'),
(4, 2, 2, '<p><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.7);\">To run React code, you need to set up a React environment. If you have</span><font color=\"#ff0000\"><span style=\"font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.7);\">&nbsp;</span><span style=\"font-size: 14px; line-height: var(--cib-type-body1-strong-line-height); font-weight: var(--cib-type-body1-strong-font-weight); font-variation-settings: var(--cib-type-body1-strong-font-variation-settings); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; background-color: rgba(255, 255, 255, 0.7);\">npm</span><span style=\"font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.7);\">&nbsp;and&nbsp;</span><span style=\"font-size: 14px; line-height: var(--cib-type-body1-strong-line-height); font-weight: var(--cib-type-body1-strong-font-weight); font-variation-settings: var(--cib-type-body1-strong-font-variation-settings); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; background-color: rgba(255, 255, 255, 0.7);\">Node.js</span><span style=\"font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.7);\">&nbsp;installed</span></font><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.7);\">, you can create a React application by using&nbsp;</span><span style=\"font-size: 14px; line-height: var(--cib-type-body1-strong-line-height); font-weight: var(--cib-type-body1-strong-font-weight); font-variation-settings: var(--cib-type-body1-strong-font-variation-settings); color: rgb(17, 17, 17); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; background-color: rgba(255, 255, 255, 0.7);\">create-react-app</span><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.7);\">.</span><br></p>', '2023-12-17 23:52:21', '2023-12-17 23:52:21'),
(5, 2, 2, '<p>ssfffffffffffffs</p>', '2023-12-18 01:28:04', '2023-12-18 01:28:04'),
(6, 4, 1, '<p><span style=\"font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.7);\"><font color=\"#ff0000\">If you want to write an article about trees</font></span><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.7);\">, you could start by researching the different types of trees and their characteristics. You could also explore the various benefits of trees and how they contribute to the environment. Additionally, you could write about the importance of preserving trees and the consequences of deforestation.</span><br></p>', '2023-12-18 01:31:18', '2023-12-18 01:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `question_answer_likes`
--

CREATE TABLE `question_answer_likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `answer_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_answer_likes`
--

INSERT INTO `question_answer_likes` (`id`, `user_id`, `answer_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2023-12-18 01:09:36', '2023-12-18 01:09:36'),
(2, 2, 3, '2023-12-18 01:12:59', '2023-12-18 01:12:59'),
(3, 2, 3, '2023-12-18 01:13:29', '2023-12-18 01:13:29'),
(4, 2, 1, '2023-12-18 01:13:36', '2023-12-18 01:13:36'),
(5, 2, 1, '2023-12-18 01:13:40', '2023-12-18 01:13:40'),
(11, 2, 4, '2023-12-18 01:28:20', '2023-12-18 01:28:20'),
(12, 1, 3, '2023-12-18 01:29:13', '2023-12-18 01:29:13'),
(13, 1, 1, '2023-12-18 01:29:16', '2023-12-18 01:29:16'),
(14, 1, 6, '2023-12-18 02:31:24', '2023-12-18 02:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo`) VALUES
(1, 'Musfiqur Rahman', 'user@gmail.com', NULL, '$2y$12$Boya87fl1hK6d.OGuLqdb.yonwz8R4U7G9ZOmYG.Xs2dUFGdV8zyi', NULL, '2023-12-12 23:36:41', '2023-12-12 23:36:41', NULL),
(2, 'Sabbir Hasan', 'sabbir@gmail.com', NULL, '$2y$12$SyATiaPnj/Zaaq5wO5Dq9uV9OTQw/gPUjw822WPiL1hlK4jGcJnWi', NULL, '2023-12-14 04:30:25', '2023-12-14 04:30:25', '1702549825.jpg'),
(3, 'Tanjima Tarin', 'tanjima@gmail.com', NULL, '$2y$12$.eelSQwFiNFGCoCMdImTheZVKU64Zy//VEWdQxBdpw1oxZ.QK7DS2', NULL, '2023-12-18 03:04:18', '2023-12-18 03:04:18', '1702890258.jpg');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_messages_user_id_foreign` (`user_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answers_question_id_foreign` (`question_id`),
  ADD KEY `question_answers_user_id_foreign` (`user_id`);

--
-- Indexes for table `question_answer_likes`
--
ALTER TABLE `question_answer_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answer_likes_user_id_foreign` (`user_id`),
  ADD KEY `question_answer_likes_answer_id_foreign` (`answer_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_answers`
--
ALTER TABLE `question_answers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_answer_likes`
--
ALTER TABLE `question_answer_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD CONSTRAINT `contact_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD CONSTRAINT `question_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_answer_likes`
--
ALTER TABLE `question_answer_likes`
  ADD CONSTRAINT `question_answer_likes_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `question_answers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_answer_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
