-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2026 at 10:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toptech_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) DEFAULT 'pending',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `full_name`, `email`, `phone`, `appointment_date`, `appointment_time`, `message`, `created_at`, `status`, `updated_at`) VALUES
(2, 'Ahmed Baba', 'ahmedmalik30600@gmail.com', '21212121211', '2026-03-21', '12:12:00', 'asdasasd', '2026-03-20 03:21:14', 'pending', '2026-03-20 03:21:14'),
(3, 'Ahmed Baba', 'ahmedmalik30600@gmail.com', '21212121211', '2026-04-12', '00:12:00', 'sdasdasd', '2026-03-20 03:24:49', 'pending', '2026-03-20 03:24:49'),
(4, 'Ahmed Baba', 'ahmedmalik30600@gmail.com', '21212121211', '2026-04-12', '00:12:00', 'afsdafd', '2026-03-20 03:28:10', 'pending', '2026-03-20 03:28:10'),
(5, 'Ahmed Baba', 'ahmedmalik30600@gmail.com', '21212121211', '2026-04-12', '00:12:00', 'ggcvgh', '2026-03-20 03:31:55', 'pending', '2026-03-20 03:31:55'),
(6, 'Ahmed Ba', 'xahmedmalik30@gmail.com', '32321313221', '2026-04-21', '02:34:00', 'gdfsfasas', '2026-03-20 04:57:15', 'pending', '2026-03-20 04:57:15'),
(7, 'Ahmed Ba', 'xahmedmalik30@gmail.com', 'afsads', '2026-04-23', '02:34:00', 'fdsaf', '2026-03-20 05:00:29', 'pending', '2026-03-20 05:00:29'),
(8, 'Ahmed Ba', 'xahmedmalik30@gmail.com', 'afsads', '2026-04-23', '02:34:00', 'fdsaf', '2026-03-20 10:03:22', 'pending', NULL),
(11, 'asdas', 'xahmedmalik30@gmail.com', '0443323423', '2026-04-25', '11:11:00', 'dasdasdas', '2026-03-25 13:51:17', 'pending', NULL),
(12, 'asdas', 'xahmedmalik30@gmail.com', '0443323423', '2026-04-25', '11:11:00', 'dasdasdas', '2026-03-25 13:51:32', 'pending', NULL),
(13, 'Ahmed Ba', 'xahmedmalik30@gmail.com', '033221321312', '2026-04-25', '14:22:00', 'sadasd', '2026-03-25 13:52:04', 'pending', NULL),
(14, 'Ahmed Ba', 'xahmedmalik30@gmail.com', '0392389479283', '2026-04-04', '14:22:00', 'dasdas', '2026-03-25 13:56:01', 'pending', NULL),
(15, 'Ahmed', 'xahmedmalik30@gmail.com', '03322751363', '2026-04-04', '14:22:00', 'hghfd', '2026-03-25 14:53:24', 'pending', NULL),
(16, 'mujtaba', 'mujtaba@gmail.com', '09876543267', '2026-04-15', '07:23:00', 'asdasda', '2026-04-13 14:20:15', 'pending', NULL),
(17, 'hamza', 'hamza@gmail.com', '03101132039', '2026-04-14', '00:07:00', 'nfdkjfk', '2026-04-13 19:07:49', 'pending', NULL),
(18, 'mujtaba', 'mujtaba30@gmail.com', '09988776543', '2026-04-23', '12:36:00', 'sdaasda', '2026-04-13 19:33:59', 'pending', NULL),
(19, 'Habib', 'hb@gmail.com', '54433216897', '2026-04-23', '02:40:00', 'adssdas', '2026-04-14 18:40:35', 'pending', NULL),
(20, 'fake', 'ahmedmalik30600@gmail.com', '09988765432', '2026-04-15', '23:47:00', 'asdas', '2026-04-14 18:43:53', 'pending', NULL),
(21, 'yasir', 'yasir@gmail.com', '09988765432', '2026-04-24', '08:59:00', 'asdasas', '2026-04-15 15:58:02', 'pending', NULL),
(22, 'Ahmed Ba', 'xahmedmalik30asda@gmail.com', '98834859308', '2026-04-30', '06:01:00', 'zads', '2026-04-18 13:59:51', 'pending', NULL),
(23, 'fg', 'hamza@gmail.com', '03101132036', '2026-04-22', '20:50:00', 'dfdsfdsg', '2026-04-22 15:14:51', 'pending', NULL),
(24, 'abdul', 'abdul@gmail.com', 'asfbsdjbdsjbjds', '2026-04-29', '11:05:00', 'sdfdasdas', '2026-04-23 18:04:04', 'pending', NULL),
(25, 'gtrt', 'xahmedmalfdsk30@gmail.com', '09988987786', '2026-04-29', '11:17:00', 'dfssdf', '2026-04-23 18:15:36', 'pending', NULL),
(26, 'abdul', 'xahmasdasdaedmalik30@gmail.com', '09988098789', '2026-04-30', '01:21:00', 'asdasd', '2026-04-23 18:20:37', 'pending', NULL),
(27, 'Ahme', 'asdfasfassa@gmail.com', '09999090909', '2026-04-29', '11:26:00', 'fdsds', '2026-04-23 18:25:02', 'pending', NULL),
(28, 'Ahmed', 'xahmdsfsdedmalik30@gmail.com', '09999090909', '2026-05-06', '11:33:00', 'dsfdsfds', '2026-04-23 18:32:00', 'pending', NULL),
(29, 'Ahmed Ba', 'xahmedmalasdasik30@gmail.com', '+923312589789354', '2026-05-01', '01:37:00', NULL, '2026-04-23 18:33:17', 'pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `order_number` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `text`, `is_active`, `order_number`, `created_at`, `updated_at`) VALUES
(1, '✦ WORLD NO. 1 TECH SOLUTION COMPANYyy ✦', 1, 1, '2026-03-10 10:05:00', '2026-04-14 08:18:04'),
(2, '✦ 1000+ PROJECTS DELIVERED ✦', 1, 2, '2026-03-10 10:05:00', '2026-03-10 10:05:00'),
(3, '✦ 500+ HAPPY CLIENTS ✦', 1, 3, '2026-03-10 10:05:00', '2026-03-10 10:05:00'),
(4, '✦ 24/7 SUPPORT ✦', 1, 4, '2026-03-10 10:05:00', '2026-03-10 10:05:00'),
(5, '✦ AI-POWERED SOLUTIONS✦', 1, 5, '2026-03-10 10:05:00', '2026-03-10 10:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `content` longtext NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `is_published` tinyint(1) DEFAULT 0,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-otp_xahmedmalik30600@gmail.com', 'i:611299;', 1776194732),
('toptech-solutions-cache-otp_xahmedmalik30600@gmail.com', 'i:232861;', 1777054105);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `id` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `business_hours` text DEFAULT NULL,
  `map_embed_url` text DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`id`, `address`, `phone`, `email`, `business_hours`, `map_embed_url`, `facebook_url`, `twitter_url`, `instagram_url`, `linkedin_url`, `created_at`, `updated_at`) VALUES
(1, '123 Tech Street, Silicon Valley, CA 94025', '+1 (555) 123-4567', 'info@Fusixsdatech.com', 'Monday - Friday: 9:00 AM - 6:00 PM\nSaturday: 10:00 AM - 4:00 PM\nSunday: Closed', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3168.636256472517!2d-122.088654484685!3d37.422408979825!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fba5b3c4c0f0d%3A0x8c3c5f5f5f5f5f5f!2sGoogleplex!5e0!3m2!1sen!2sus!4v1620000000000!5m2!1sen!2sus', '#', '#', '#', '#', '2026-03-10 10:05:13', '2026-04-18 13:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `is_replied` tinyint(1) DEFAULT 0,
  `replied_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cta_section`
--

CREATE TABLE `cta_section` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT 'Ready to Transform Your Business?',
  `description` text DEFAULT NULL,
  `button_text` varchar(50) DEFAULT 'Start Your Project',
  `button_link` varchar(255) DEFAULT '#',
  `background_image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cta_section`
--

INSERT INTO `cta_section` (`id`, `title`, `description`, `button_text`, `button_link`, `background_image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Ready to Transform Your Business?', 'Let\'s discuss how we can help you achieve your technology goals', 'Start Your Project', '#', NULL, 1, '2026-03-10 10:05:46', '2026-03-10 10:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `category` varchar(50) DEFAULT 'general',
  `order_number` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'How long does a tyasasddaspical projeccctt takesdsassss?', 'Projeasdasct timelinedasdass vary based on complexityyyy. A standard website takes 4-6 weeks, while complex applications may take 3-6 months. We\'ll provide a detailed timeline during consultation.', 'general', 1, 1, '2026-03-10 10:04:33', '2026-04-18 13:55:49'),
(2, 'Do you provide ongoing support?', 'Yes! We offer various maintenance and support packages to keep your project running smoothly. From security updates to feature additions, we\'ve got you covered.', 'general', 2, 1, '2026-03-10 10:04:33', '2026-03-10 10:04:33'),
(3, 'What technologies do you specialize in?', 'We specialize in modern technologies including React, Node.js, Python, AI/ML frameworks, and cloud platforms like AWS and Azure. We choose the best tech stack for each project.', 'general', 3, 1, '2026-03-10 10:04:33', '2026-03-10 10:04:33'),
(4, 'How do you handle project pricing?', 'We can offer transparent pricing with fixed-cost projects or hourly rates. After understanding your requirements, we\'ll provide a detailed quote with no hidden costs.', 'general', 4, 1, '2026-03-10 10:04:33', '2026-04-15 10:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `faq_images`
--

CREATE TABLE `faq_images` (
  `id` int(11) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq_images`
--

INSERT INTO `faq_images` (`id`, `image_url`, `alt_text`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '/storage/uploads/img-1776965690-i6WoLlweSX.jpg', 'FAQ Illustration', 1, '2026-04-15 12:55:53', '2026-04-23 12:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `icon_name` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `stats` varchar(50) DEFAULT NULL,
  `order_number` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `icon_name`, `title`, `description`, `stats`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '/storage/uploads/img-1776439617-GtculBiEnJ.jpg', 'Custom Developmentas', 'Tailosadasred software solutions designed for your unique business needs', '700+ Projects', 1, 1, '2026-03-10 10:02:47', '2026-04-18 13:56:09'),
(2, 'Shield', 'Enterprise Securityyy', 'Bank-level security protocols to protect your valuable data', '99.9% Secure', 2, 1, '2026-03-10 10:02:47', '2026-04-17 07:27:51'),
(3, 'Zap', 'Lightning Fast', 'Optimized performance with cutting-edge technologies', '0.1s Response', 3, 1, '2026-03-10 10:02:47', '2026-03-10 10:02:47'),
(4, 'Users', 'Expert Team', '50+ certified professionals ready to tackle your challenges', '24/7 Available', 4, 1, '2026-03-10 10:02:47', '2026-03-10 10:02:47'),
(5, 'Rocket', 'Scalable Solutions', 'Built to grow with your business, from startup to enterprise', '100% Scalable', 5, 1, '2026-03-10 10:02:47', '2026-03-10 10:02:47'),
(6, 'Clock', '24/7 Support', 'Round-the-clock technical support for your peace of mind', 'Instant Response', 6, 1, '2026-03-10 10:02:47', '2026-04-18 10:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `hero_section`
--

CREATE TABLE `hero_section` (
  `id` int(11) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `button_text` varchar(100) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hero_section`
--

INSERT INTO `hero_section` (`id`, `subtitle`, `title`, `description`, `button_text`, `button_link`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'WELCOME TO fusixxxxxx', 'Innovative IT Solutions<br>For Your Businessss', 'We deliver cutting-edge technology solutions that drive growth, enhance security, and transform your digital presence.', 'Get Started', '/contact', 1, '2026-04-14 13:08:08', '2026-04-17 07:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `subscribed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `unsubscribed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `email`, `is_active`, `subscribed_at`, `unsubscribed_at`) VALUES
(1, 'xahmedmalik30@gmail.com', 1, '2026-03-25 09:41:37', NULL),
(2, 'xahmedmalik30600@gmail.com', 1, '2026-03-25 10:47:02', NULL),
(3, 'sufyanmalik@gmail.com', 1, '2026-04-13 14:34:26', NULL),
(4, 'habib@gmail.com', 1, '2026-04-13 16:02:02', NULL),
(5, 'abd@gmail.com', 1, '2026-04-14 07:15:38', NULL),
(6, 'xyz@gmail.com', 1, '2026-04-14 08:46:53', NULL),
(7, 'hb@gmail.com', 1, '2026-04-14 13:39:59', NULL),
(8, 'yasir@gmail.com', 1, '2026-04-15 10:58:31', NULL),
(9, 'fg30@gmail.com', 1, '2026-04-16 10:04:39', NULL),
(10, 'bb@gmail.com', 1, '2026-04-16 15:23:57', NULL),
(11, 'xgh0@gmail.com', 1, '2026-04-16 15:43:06', NULL),
(12, 'xahmedmalik30987@gmail.com', 1, '2026-04-18 08:59:18', NULL),
(13, 'hamza@gmail.com', 1, '2026-04-22 10:16:55', NULL),
(14, 'fusixtsdafasech@gmail.com', 1, '2026-04-22 15:04:24', NULL),
(15, 'xahmedmsdafsdsabalik30@gmail.com', 1, '2026-04-23 13:05:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `content` longtext DEFAULT NULL,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `expiry` datetime NOT NULL,
  `used` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_purchases`
--

CREATE TABLE `plan_purchases` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `price` varchar(50) NOT NULL,
  `period` varchar(50) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` enum('pending','contacted','completed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan_purchases`
--

INSERT INTO `plan_purchases` (`id`, `plan_id`, `plan_name`, `price`, `period`, `customer_name`, `customer_email`, `customer_phone`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Business', '$2,999', 'project', 'Ahmed', 'ahmedmalik30600@gmail.com', '03322751363', 'i love your work', 'pending', '2026-03-18 03:57:12', '2026-03-18 03:57:12'),
(2, 1, 'Starter', '$999', 'project', 'sufiyan', 'xahmedmalik30@gmail.com', '03322751363', 'sadas', 'pending', '2026-03-18 04:50:06', '2026-03-18 04:50:06'),
(3, 3, 'Enterprise', 'Custom', 'project', 'Ahmiii', 'xahmedmalik30600@gmail.com', '03322751363', 'asdasdsa', 'pending', '2026-03-25 07:35:06', '2026-03-25 07:35:06'),
(4, 3, 'Enterprise', 'Custom', 'project', 'Ahmed Ba', 'xahmedmalik30@gmail.com', '534534', 'asasasd', 'pending', '2026-03-25 08:28:38', '2026-03-25 08:28:38'),
(5, 1, 'Premium Plan', '9999', 'Monthly', 'Ahmed Khan', 'ahmedkhan@gmail.com', '03001234567', 'I am interested in this plan, please contact me.', 'pending', '2026-04-13 13:44:04', '2026-04-13 13:44:04'),
(6, 2, 'Business', '$2,999', 'project', 'Ahmed Badsdsf', 'xahmedmalisdasdask30@gmail.com', '03101132039', 'dsdsd', 'pending', '2026-04-13 14:05:46', '2026-04-13 14:05:46'),
(7, 2, 'Business', '$2,999', 'project', 'Ahmed Badasd', 'xahmedmalikds30@gmail.com', '03101132039', 'df', 'pending', '2026-04-13 14:11:18', '2026-04-13 14:11:18'),
(8, 3, 'Enterprises', 'Customer', 'project', 'dan', 'ahmedmalik30600@gmail.com', '099887654323', 'asasdas', 'pending', '2026-04-17 07:46:58', '2026-04-17 07:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `project_year` year(4) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `project_url` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT 0,
  `order_number` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `category`, `image`, `client_name`, `project_year`, `description`, `project_url`, `is_featured`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'E-Commerce Platform', 'development', '/storage/uploads/img-1776518869-b5hplgWNox.jpg', 'FashionHub', '2024', 'A modern e-commerce platform with advanced features', 'https://www.youtube.com/', 1, 1, 1, '2026-03-11 10:49:42', '2026-04-18 13:07:29'),
(2, 'Banking App UI', 'marketing', '/storage/uploads/img-1776535199-7mfk5Bu40J.jpg', 'SecureBank', '2024', 'Modern banking application interface design', 'https://example.com/project2', 1, 2, 1, '2026-03-11 10:49:42', '2026-04-18 13:00:00'),
(3, 'CRM Dashboard', 'software', '/storage/uploads/img-1776526818-sv4V39gxjQ.jpg', 'SalesMaster', '2023', 'Comprehensive CRM dashboard for sales teams', 'https://example.com/project3', 1, 3, 1, '2026-03-11 10:49:42', '2026-04-18 10:40:19'),
(4, 'AI Chatbot', 'ai', '/storage/uploads/img-1776434357-33vAHTL9tQ.JPG', 'TechSupport AI', '2024', 'Intelligent chatbot for customer support', 'https://example.com/project4', 1, 4, 1, '2026-03-11 10:49:42', '2026-04-17 08:59:19'),
(5, 'Social Media Campaign', 'marketing', '/storage/uploads/img-1776434369-0Pw4zts721.JPG', 'GrowthCo', '2023', 'Viral social media marketing campaign', 'https://example.com/project5', 1, 5, 1, '2026-03-11 10:49:42', '2026-04-17 08:59:30'),
(6, 'Healthcare Portal', 'development', '/storage/uploads/img-1776434379-5SQcNHjzR8.JPG', 'MediCare+', '2024', 'Patient portal for healthcare management', 'https://example.com/project6', 1, 6, 1, '2026-03-11 10:49:42', '2026-04-17 08:59:39'),
(7, 'Food Delivery App', 'development', '/storage/uploads/img-1776535515-iwkoU2pBr4.jpg', 'FoodieExpress', '2024', 'Mobile app for food delivery service', 'https://example.com/project7', 0, 7, 1, '2026-03-11 10:49:42', '2026-04-18 13:05:16'),
(8, 'Brand Identity', 'design', '/storage/uploads/img-1776535523-MCO34S8atn.jpg', 'StartupX', '2023', 'Complete brand identity design', 'https://example.com/project8', 0, 8, 1, '2026-03-11 10:49:42', '2026-04-18 13:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_projects`
--

CREATE TABLE `portfolio_projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `technologies` text DEFAULT NULL COMMENT 'JSON format: ["React", "Laravel"]',
  `image_1` varchar(500) DEFAULT NULL,
  `image_2` varchar(500) DEFAULT NULL,
  `image_3` varchar(500) DEFAULT NULL,
  `order_number` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio_projects`
--

INSERT INTO `portfolio_projects` (`id`, `title`, `description`, `technologies`, `image_1`, `image_2`, `image_3`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '3D Ballsds', 'Interactive 3D balls that follow mouse movement', '\"[\\\"React Three Fiber\\\",\\\"GSAP\\\"]\"', 'https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=300&h=200&fit=crop', 'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=300&h=200&fit=crop', 'https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=300&h=200&fit=crop', 1, 1, NULL, '2026-04-24 14:28:05'),
(2, 'Spline 3D', 'Immersive 3D scene with character animation', '\"[\\\"Spline\\\",\\\"React\\\"]\"', 'https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=600&h=340&fit=crop', '/storage/uploads/img-1776965748-LXnbaXwlgc.jpg', 'https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=300&h=200&fit=crop', 2, 1, NULL, '2026-04-23 12:35:49'),
(3, 'Modern Portfolio', 'Modern portfolio with scroll animations', '\"[\\\"Spline\\\",\\\"Reality\\\",\\\"Check\\\"]\"', 'https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=600&h=340&fit=crop', 'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=300&h=200&fit=crop', '/storage/uploads/img-1776965760-22k4N5UYFA.jpg', 3, 1, NULL, '2026-04-23 12:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_settings`
--

CREATE TABLE `portfolio_settings` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) DEFAULT 'Featured Projects',
  `description` text DEFAULT NULL,
  `languages` text DEFAULT NULL COMMENT 'JSON format: ["React", "Laravel", "Node.js"]',
  `image_1` varchar(500) DEFAULT NULL,
  `image_2` varchar(500) DEFAULT NULL,
  `image_3` varchar(500) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio_settings`
--

INSERT INTO `portfolio_settings` (`id`, `heading`, `description`, `languages`, `image_1`, `image_2`, `image_3`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Featured Projects', 'Showcasing our best work and innovative solutions', '[\"React\", \"Laravel\", \"Node.js\", \"Tailwind CSS\"]', 'https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=600&h=340&fit=crop', 'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=300&h=200&fit=crop', 'https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=300&h=200&fit=crop', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_technologies`
--

CREATE TABLE `portfolio_technologies` (
  `id` int(11) NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `technology` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio_technologies`
--

INSERT INTO `portfolio_technologies` (`id`, `portfolio_id`, `technology`, `created_at`) VALUES
(1, 1, 'React', '2026-03-11 10:50:06'),
(2, 1, 'Node.js', '2026-03-11 10:50:06'),
(3, 1, 'MongoDB', '2026-03-11 10:50:06'),
(4, 2, 'Figma', '2026-03-11 10:50:06'),
(5, 2, 'Adobe XD', '2026-03-11 10:50:06'),
(6, 2, 'Sketch', '2026-03-11 10:50:06'),
(7, 3, 'Vue.js', '2026-03-11 10:50:06'),
(8, 3, 'Laravel', '2026-03-11 10:50:06'),
(9, 3, 'MySQL', '2026-03-11 10:50:06'),
(10, 4, 'Python', '2026-03-11 10:50:06'),
(11, 4, 'TensorFlow', '2026-03-11 10:50:06'),
(12, 4, 'NLP', '2026-03-11 10:50:06'),
(13, 5, 'Social Media', '2026-03-11 10:50:06'),
(14, 5, 'Analytics', '2026-03-11 10:50:06'),
(15, 5, 'Content Strategy', '2026-03-11 10:50:06'),
(16, 6, 'React Native', '2026-03-11 10:50:06'),
(17, 6, 'Firebase', '2026-03-11 10:50:06'),
(18, 6, 'Redux', '2026-03-11 10:50:06'),
(19, 7, 'Flutter', '2026-03-11 10:50:06'),
(20, 7, 'Firebase', '2026-03-11 10:50:06'),
(21, 7, 'Stripe', '2026-03-11 10:50:06'),
(22, 8, 'Illustrator', '2026-03-11 10:50:06'),
(23, 8, 'Photoshop', '2026-03-11 10:50:06'),
(24, 8, 'After Effects', '2026-03-11 10:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_features`
--

CREATE TABLE `pricing_features` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `feature` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing_features`
--

INSERT INTO `pricing_features` (`id`, `plan_id`, `feature`, `created_at`) VALUES
(1, 1, 'Custom Designnbfds', '2026-03-10 10:03:40'),
(2, 1, '5 Pages', '2026-03-10 10:03:40'),
(3, 1, 'Basic SEO', '2026-03-10 10:03:40'),
(4, 1, '1 Month Support', '2026-03-10 10:03:40'),
(5, 1, 'Responsive Design', '2026-03-10 10:03:40'),
(6, 2, 'Everything in Starter', '2026-03-10 10:03:40'),
(7, 2, '16 Pagenbh', '2026-03-10 10:03:40'),
(8, 2, 'Advanced SEO', '2026-03-10 10:03:40'),
(9, 2, '3 Months Support', '2026-03-10 10:03:40'),
(10, 2, 'E-commerce Ready', '2026-03-10 10:03:40'),
(11, 2, 'Analytics Setup', '2026-03-10 10:03:40'),
(12, 3, 'Everything in Business', '2026-03-10 10:03:40'),
(13, 3, 'Unlimited Pagekjbh', '2026-03-10 10:03:40'),
(14, 3, 'Priority Support', '2026-03-10 10:03:40'),
(15, 3, 'Custom Features', '2026-03-10 10:03:40'),
(16, 3, 'Dedicated Team', '2026-03-10 10:03:40'),
(17, 3, 'SLA Agreementttt', '2026-03-10 10:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_plans`
--

CREATE TABLE `pricing_plans` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `period` varchar(20) DEFAULT 'project',
  `is_recommended` tinyint(1) DEFAULT 0,
  `button_text` varchar(50) DEFAULT 'Get Started',
  `button_link` varchar(255) DEFAULT '#',
  `order_number` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing_plans`
--

INSERT INTO `pricing_plans` (`id`, `name`, `price`, `period`, `is_recommended`, `button_text`, `button_link`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Starter', '$999', 'project', 0, 'Get Started', '#', 1, 1, '2026-03-10 10:03:23', '2026-04-18 08:39:00'),
(2, 'Business', '$2,99', 'project', 1, 'Get Started', '#', 2, 1, '2026-03-10 10:03:23', '2026-04-18 10:41:00'),
(3, 'Enterprises', 'Customer', 'project', 0, 'Get Started', '#', 3, 1, '2026-03-10 10:03:23', '2026-04-17 07:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `process_steps`
--

CREATE TABLE `process_steps` (
  `id` int(11) NOT NULL,
  `step_number` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `order_number` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `process_steps`
--

INSERT INTO `process_steps` (`id`, `step_number`, `title`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '01', 'Discovery', 1, 1, '2026-03-10 10:03:01', '2026-04-18 13:39:11'),
(2, '02', 'Designn', 2, 1, '2026-03-10 10:03:01', '2026-04-18 15:40:49'),
(3, '03', 'Developing', 3, 1, '2026-03-10 10:03:01', '2026-04-09 20:49:56'),
(4, '04', 'Test', 4, 1, '2026-03-10 10:03:01', '2026-04-17 12:45:25'),
(5, '05', 'Deployment', 5, 1, '2026-03-10 10:03:01', '2026-03-10 10:03:01'),
(6, '06', 'Maintain', 6, 1, '2026-04-09 13:13:01', '2026-04-18 14:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `icon_name` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `category` enum('development','design','software','ai','marketing','other') DEFAULT 'development',
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `order_number` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon_name`, `title`, `description`, `category`, `image`, `link`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Globe', 'Website Developmentt', 'Custom responsive websites that blend stunning design with powerful functionality to convert visitors into customers.', 'development', NULL, NULL, 1, 1, '2026-03-10 10:02:07', '2026-04-18 10:42:33'),
(2, 'Palette', 'Graphic Designinggg', 'Creative visual content that tells your brand story and creates lasting impressions with target audiences.', 'design', NULL, NULL, 2, 1, '2026-03-10 10:02:07', '2026-04-17 09:41:24'),
(3, 'Smartphone', 'App Development', 'Feature-rich mobile applications that deliver seamless experiences across all platforms for your business needs.', 'development', NULL, NULL, 3, 1, '2026-03-10 10:02:07', '2026-03-10 10:02:07'),
(4, 'Database', 'CRM Development', 'Tailored relationship management systems that streamline operations and enhance your customer engagement processes.', 'software', NULL, NULL, 4, 1, '2026-03-10 10:02:07', '2026-03-10 10:02:07'),
(5, 'Code', 'Web-Based Softeeee', 'Scalable software solutions designed to handle complex business logic with intuitive interfaces.', 'software', NULL, NULL, 5, 1, '2026-03-10 10:02:07', '2026-04-17 07:42:11'),
(6, 'PenTool', 'UI/UX Design', 'User-centered interface designs that create intuitive digital experiences and boost user engagement.', 'design', NULL, NULL, 6, 1, '2026-03-10 10:02:07', '2026-03-10 10:02:07'),
(7, 'Cpu', 'AI/ML & Chatbotay', 'Creating intelligent AI/ML solutions and chatbot interfaces that automate and enhance customer interactions.', 'ai', NULL, NULL, 7, 1, '2026-03-10 10:02:07', '2026-04-17 07:41:54'),
(8, 'TrendingUp', 'Digitalll Marketing', 'Data-driven digital marketing strategies that increase visibility, engagement, and conversions.', 'marketing', NULL, NULL, 8, 1, '2026-03-10 10:02:07', '2026-03-11 10:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `service_features`
--

CREATE TABLE `service_features` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `feature` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_features`
--

INSERT INTO `service_features` (`id`, `service_id`, `feature`, `created_at`) VALUES
(1, 1, 'Reactt/Next.js', '2026-03-10 10:02:31'),
(2, 1, 'Updated text', '2026-03-10 10:02:31'),
(3, 1, 'CMS Integration', '2026-03-10 10:02:31'),
(4, 1, 'SEO Optimized', '2026-03-10 10:02:31'),
(5, 2, 'Logo Design', '2026-03-10 10:02:31'),
(6, 2, 'Brand Identity', '2026-03-10 10:02:31'),
(7, 2, 'Print Materials', '2026-03-10 10:02:31'),
(8, 2, 'Social Media Graphics', '2026-03-10 10:02:31'),
(9, 3, 'iOS & Android', '2026-03-10 10:02:31'),
(10, 3, 'React Native', '2026-03-10 10:02:31'),
(11, 3, 'Flutter', '2026-03-10 10:02:31'),
(12, 3, 'Native Apps', '2026-03-10 10:02:31'),
(13, 4, 'Sales Force', '2026-03-10 10:02:31'),
(14, 4, 'Customer Portal', '2026-03-10 10:02:31'),
(15, 4, 'Analytics', '2026-03-10 10:02:31'),
(16, 4, 'Automation', '2026-03-10 10:02:31'),
(17, 5, 'SaaS Products', '2026-03-10 10:02:31'),
(18, 5, 'Dashboard', '2026-03-10 10:02:31'),
(19, 5, 'API Integration', '2026-03-10 10:02:31'),
(20, 5, 'Cloud Based', '2026-03-10 10:02:31'),
(21, 6, 'Wireframing', '2026-03-10 10:02:31'),
(22, 6, 'Prototyping', '2026-03-10 10:02:31'),
(23, 6, 'User Research', '2026-03-10 10:02:31'),
(24, 6, 'Usability Testing', '2026-03-10 10:02:31'),
(25, 7, 'Chatbots', '2026-03-10 10:02:31'),
(26, 7, 'Predictive Analytics', '2026-03-10 10:02:31'),
(27, 7, 'NLP', '2026-03-10 10:02:31'),
(28, 7, 'Computer Vision', '2026-03-10 10:02:31'),
(29, 8, 'SEO/SEM', '2026-03-10 10:02:31'),
(30, 8, 'Social Mediaas', '2026-03-10 10:02:31'),
(31, 8, 'Content Marketing', '2026-03-10 10:02:31'),
(32, 8, 'Email Campaigns', '2026-03-10 10:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8G80yAy8h7jMBu6m2EXSWukCAYh5vHJefcQiPSwl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkZUTVlhSVZYd0FJRjE5RWdTTFdxbDNzeXkwREtLSnVFMDBYblI2biI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774439999),
('jgRi0ANNNg7DRLMTBLoxXPwlF11PBhlMNFD1WUFu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0RTWHFmelFUbjduWENqRHhURVh4Q2R3TndhU3BXU3pFVU5jUHN2QiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1773141632),
('JLEOw8AungxhIr9lGmyAtnkmZJoh4s6DNqAaMpgC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVNhUTlFakdVMndOeWQxZktzYVVrVTh1NElvTmthWHp1NVJsbWYxaiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1773310566),
('LGMZnU0eFFB7yrgnYc7jEMyHDfjpFvdbWrVWifch', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1JWblhQdU1DSjM5VDFCZ3YwTjhDYXVFV2xpZGZ3R0JvTm9iYnpwYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774539370),
('LZCS8XhtnYsQJs5GzEiTe9WFlYeHmn3a8IqsPYPF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1JiaXNucmdaNHNRR1FJWWFKTmM0QlEzMVJOdElhOERWMnZhcUZXayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1773214512),
('NxDdIMoNuSYNICMDCUbISAz7oI1yq1Onovl06YLE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3RLU1ZwZFdZb3ZnUTZtRE5UcHB6UTczUEhPTU9McVBoN3J2WVpaUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774548114),
('PRXn56Jd4nPzyX1HK9lr15zF8295eHCIc9c1d8Jb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWluSndpb2JvZzczM1BvaE1rZWtaeTBkU3ZQaGNTZWpmakZ6cG9CWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90ZXN0LW1haWwiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1773404870),
('R72wh1XkLfTOFq3ULvd1CSeXqbyOrZyQOSUxC50G', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVZ3Tk5zeFlPb2o1eWNKV2c5NTNmQ2ZUc2pDQzNTeGdsckpXYWtzTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1773398151),
('vnt7voh1mB3LJOxzV8EYLoddGJGppKxTlQt7pdBD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicW1xMjlYb3ZBQjNKSUJJT1ZFQVFDOEpKcjNTRXpvY1RwR1VIeEdtcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1773230231);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(100) DEFAULT 'TopTech Solutions',
  `site_logo` varchar(255) DEFAULT NULL,
  `site_favicon` varchar(255) DEFAULT NULL,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `footer_text` text DEFAULT NULL,
  `copyright_text` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `site_name`, `site_logo`, `site_favicon`, `meta_title`, `meta_description`, `meta_keywords`, `footer_text`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'TopTech Solutions', NULL, NULL, 'TopTech - Premium IT Solutions Provider', 'We deliver cutting-edge technology solutions that drive growth, enhance security, and transform your digital presence.', NULL, NULL, NULL, '2026-03-10 10:01:01', '2026-03-10 10:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` int(11) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `label` varchar(100) NOT NULL,
  `value` int(11) NOT NULL,
  `suffix` varchar(10) DEFAULT '+',
  `order_number` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `icon`, `label`, `value`, `suffix`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '🎯', 'Years Experience', 10, '+', 1, 1, '2026-03-10 10:01:36', '2026-04-18 08:40:10'),
(2, '🤝', 'Happy Clients', 600, '+', 2, 1, '2026-03-10 10:01:36', '2026-03-10 10:01:36'),
(3, '🚀', 'Projects Done', 100, '+', 3, 1, '2026-03-10 10:01:36', '2026-04-18 10:42:52'),
(4, '⭐', 'Client Satisfaction', 98, '%', 4, 1, '2026-03-10 10:01:36', '2026-03-10 10:01:36'),
(5, '👨‍💻', 'Tech Experts', 50, '+', 5, 1, '2026-03-10 10:01:36', '2026-03-10 10:01:36'),
(6, '🏆', 'Awards Won', 25, '+', 6, 1, '2026-03-10 10:01:36', '2026-03-10 10:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `expertise` varchar(200) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `social_linkedin` varchar(255) DEFAULT NULL,
  `social_twitter` varchar(255) DEFAULT NULL,
  `social_github` varchar(255) DEFAULT NULL,
  `social_instagram` varchar(255) DEFAULT NULL,
  `order_number` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `role`, `expertise`, `experience`, `about`, `image`, `social_linkedin`, `social_twitter`, `social_github`, `social_instagram`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Alex Thompsonnnnn', 'CEO & Founder', 'HR Expert', '12+ years', 'Visionary leader with over a decade of experience in IT consulting and business transformation. Passionate about helping businesses grow through innovative technology solutions.', '/storage/uploads/img-1777054681-Z2r7UWARnx.jpg', 'https://linkedin.com/in/alexthompson', 'https://twitter.com/alexthompson', 'https://github.com/alexthompson', 'https://instagram.com/alexthompson', 1, 1, '2026-03-10 10:03:53', '2026-04-24 13:18:04'),
(2, 'Sarah Chao', 'Lead Developer', 'Full Stack Expert', '8+ years', 'Full-stack development expert specializing in React, Node.js, and cloud architecture. Committed to writing clean, efficient code and mentoring junior developers.', '/storage/uploads/img-1776964219-DQFpwp5cGk.jpg', 'https://linkedin.com/in/sarahchen', 'https://twitter.com/sarahchen', 'https://github.com/sarahchen', 'https://instagram.com/sarahchen', 2, 1, '2026-03-10 10:03:53', '2026-04-23 12:10:20'),
(3, 'Michael Rodriguez', 'Creative Director', 'UI/UX Specialist', '10+ years', 'Creative director with a passion for user-centered design. Expert in creating intuitive interfaces that deliver exceptional user experiences across all platforms.', '/storage/uploads/img-1776965705-FwAqLw5Oe5.jpg', 'https://linkedin.com/in/michaelrodriguez', 'https://twitter.com/michaelrodriguez', 'https://github.com/michaelrodriguez', 'https://instagram.com/michaelrodriguez', 3, 1, '2026-03-10 10:03:53', '2026-04-23 12:35:07'),
(4, 'Priya Patel', 'AI/ML Engineer', 'Machine Learninggg', '6+ years', 'AI/ML engineer specializing in computer vision and natural language processing. Published researcher with a passion for building intelligent systems that solve real-world problems.', '/storage/uploads/img-1776965713-1eHcJBvV5u.jpg', 'https://linkedin.com/in/priyapatel', 'https://twitter.com/priyapatel', 'https://github.com/priyapatel', 'https://instagram.com/priyapatel', 4, 1, '2026-03-10 10:03:53', '2026-04-23 12:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `technologies`
--

CREATE TABLE `technologies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technologies`
--

INSERT INTO `technologies` (`id`, `name`, `icon`, `category`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Reactt', '⚛️', 'Frontend', 1, 1, NULL, NULL),
(2, 'Node.js', '🟢', 'Backend', 2, 1, NULL, NULL),
(3, 'Python', '🐍', 'Backend', 3, 1, NULL, NULL),
(4, 'PHP', '🐘', 'Backend', 4, 1, NULL, NULL),
(5, 'Laravel', '⚡', 'Backend', 5, 1, NULL, NULL),
(6, 'MySQL', '🗄️', 'Database', 6, 1, NULL, NULL),
(7, 'MongoDB', '🍃', 'Database', 7, 1, NULL, NULL),
(8, 'AWS', '☁️', 'DevOps', 8, 1, NULL, NULL),
(9, 'Docker', '🐳', 'DevOps', 9, 1, NULL, NULL),
(10, 'Kubernetes', '⎈', 'DevOps', 10, 1, NULL, NULL),
(11, 'GraphQL', '◉', 'API', 11, 1, NULL, NULL),
(12, 'TypeScript', '🔷', 'Frontend', 12, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `testimonial_text` text NOT NULL,
  `rating` int(11) DEFAULT 5,
  `order_number` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `is_approved` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `client_name`, `testimonial_text`, `rating`, `order_number`, `is_active`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 'Sarah Johnson', 'TopTechhhh  transformed our business with their innovative IT solutions. Their team\'s expertise and dedication are unmatched. They delivered beyond our expectations!', 5, 1, 1, 1, '2026-03-10 10:04:14', '2026-04-14 20:29:33'),
(2, 'Michael Chen', 'The best decision we made was partnering with TopTech. Their cloud solutions increased our efficiency by 200%. Highly recommended!', 5, 2, 1, 1, '2026-03-10 10:04:14', '2026-04-15 07:35:09'),
(3, 'Priya Patel', 'Exceptional service! TopTech\'s team understood our requirements perfectly and delivered a robust solution that scaled with our growth.', 5, 3, 1, 1, '2026-03-10 10:04:14', '2026-04-18 08:41:29'),
(4, 'David Williams', 'Their cybersecurity expertise saved us from potential threats. Professional, responsive, and technically brilliant team!', 5, 4, 1, 1, '2026-03-10 10:04:14', '2026-04-15 10:09:09'),
(5, 'ahmed', 'sdaasdasasdasdas', 5, 0, 1, 0, '2026-04-14 15:27:08', '2026-04-18 10:43:29'),
(7, 'vcdf', 'sdasdasdasdfhbvasdhhjasdbhdv fcbhjvdshfjvdsv f', 5, 5, 1, 1, '2026-04-17 07:51:45', '2026-04-18 08:41:46'),
(8, 'vfdasfadas', 'asdghasgdhjgasdhbvgashjdvghasgdyughdvhasvdhjvgashjdvhjasvdhuagsdvasdhjbvhjasbdg', 5, 0, 1, 0, '2026-04-18 09:00:18', '2026-04-18 09:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','editor') DEFAULT 'editor',
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'xahmedmalik30600@gmail.com', '$2y$12$38aH5D3cNuDKPUmyo1fT9uXNEmxQjkH.zeBBl1h1.tHXb3RIc6cUe', 'admin', NULL, '2026-03-10 09:59:28', '2026-04-18 08:44:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cta_section`
--
ALTER TABLE `cta_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_images`
--
ALTER TABLE `faq_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_section`
--
ALTER TABLE `hero_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_reset` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `plan_purchases`
--
ALTER TABLE `plan_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_projects`
--
ALTER TABLE `portfolio_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_settings`
--
ALTER TABLE `portfolio_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_technologies`
--
ALTER TABLE `portfolio_technologies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_id` (`portfolio_id`);

--
-- Indexes for table `pricing_features`
--
ALTER TABLE `pricing_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `pricing_plans`
--
ALTER TABLE `pricing_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `process_steps`
--
ALTER TABLE `process_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_features`
--
ALTER TABLE `service_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technologies`
--
ALTER TABLE `technologies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cta_section`
--
ALTER TABLE `cta_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faq_images`
--
ALTER TABLE `faq_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hero_section`
--
ALTER TABLE `hero_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_purchases`
--
ALTER TABLE `plan_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `portfolio_projects`
--
ALTER TABLE `portfolio_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portfolio_settings`
--
ALTER TABLE `portfolio_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio_technologies`
--
ALTER TABLE `portfolio_technologies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pricing_features`
--
ALTER TABLE `pricing_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pricing_plans`
--
ALTER TABLE `pricing_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `process_steps`
--
ALTER TABLE `process_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_features`
--
ALTER TABLE `service_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `technologies`
--
ALTER TABLE `technologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `portfolio_technologies`
--
ALTER TABLE `portfolio_technologies`
  ADD CONSTRAINT `portfolio_technologies_ibfk_1` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolio` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pricing_features`
--
ALTER TABLE `pricing_features`
  ADD CONSTRAINT `pricing_features_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `pricing_plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_features`
--
ALTER TABLE `service_features`
  ADD CONSTRAINT `service_features_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
