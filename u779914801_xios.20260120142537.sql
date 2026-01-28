/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u779914801_xios
-- ------------------------------------------------------
-- Server version	11.8.3-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
commit;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `admins` VALUES
(1,'admin','eyJpdiI6Ik5vK2dLZ3VZa2h5Z1ppWkpjd0pDOEE9PSIsInZhbHVlIjoiaUErNXRLejU4WWlGV2FrdGtxVFN1TWxmbExjMFlNWXErU2prSVNjcFp1dz0iLCJtYWMiOiI2NjY4MjVhMjQyYzBiNWUwYTY1MmE4YmU4NDdiOTk1YWE5ZTM0ZjQ1M2FlZWVkODA0Y2NmM2IzNmZlNDg4MDVkIiwidGFnIjoiIn0=',1,'2023-03-23 05:42:36','2025-12-12 21:58:39'),
(2,'tester','tester@123',0,'2023-03-23 05:42:22','2023-03-23 05:42:22');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
commit;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
commit;

--
-- Table structure for table `document_types`
--

DROP TABLE IF EXISTS `document_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_types`
--

/*!40000 ALTER TABLE `document_types` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `document_types` ENABLE KEYS */;
commit;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
commit;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faqs_type_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
commit;

--
-- Table structure for table `faqs_types`
--

DROP TABLE IF EXISTS `faqs_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '0 = No / 1 = Yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_types`
--

/*!40000 ALTER TABLE `faqs_types` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `faqs_types` ENABLE KEYS */;
commit;

--
-- Table structure for table `following_lists`
--

DROP TABLE IF EXISTS `following_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `following_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `my_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `following_lists`
--

/*!40000 ALTER TABLE `following_lists` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `following_lists` ENABLE KEYS */;
commit;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `interests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `interests` VALUES
(1,'animals','2025-12-13 09:36:04','2025-12-13 09:36:04'),
(2,'love','2025-12-13 09:36:12','2025-12-13 09:36:12');
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
commit;

--
-- Table structure for table `like_comments`
--

DROP TABLE IF EXISTS `like_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_comments`
--

/*!40000 ALTER TABLE `like_comments` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `like_comments` ENABLE KEYS */;
commit;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `reel_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `likes` VALUES
(3,1,1,NULL,'2026-01-07 12:08:15','2026-01-07 12:08:15');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
commit;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `migrations` VALUES
(115,'2023_03_13_104802_create_follower_lists_table',22),
(197,'2023_03_10_131243_create_admins_table',23),
(198,'2023_03_11_070705_create_interests_table',23),
(199,'2023_03_13_101549_create_following_lists_table',23),
(200,'2023_03_14_071412_create_posts_table',23),
(201,'2023_03_14_095829_create_post_contents_table',23),
(202,'2023_03_14_112354_create_comments_table',23),
(203,'2023_03_14_123122_create_likes_table',23),
(233,'2014_10_12_100000_create_password_resets_table',24),
(234,'2019_08_19_000000_create_failed_jobs_table',24),
(235,'2019_12_14_000001_create_personal_access_tokens_table',24),
(236,'2023_03_14_133316_create_admins_table',24),
(240,'2023_03_15_053621_create_following_lists_table',25),
(241,'2023_03_15_062628_create_posts_table',26),
(242,'2023_03_15_063546_create_post_contents_table',27),
(243,'2023_03_15_065627_create_comments_table',28),
(245,'2023_03_15_074058_create_likes_table',29),
(276,'2014_10_12_000000_create_users_table',38),
(277,'2023_03_20_072719_create_report_rooms_table',39),
(279,'2023_03_15_103222_create_rooms_table',41),
(281,'2023_03_16_135209_create_room_data_table',42),
(282,'2023_03_20_073418_create_reports_table',43);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
commit;

--
-- Table structure for table `music_categories`
--

DROP TABLE IF EXISTS `music_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '0 = No / 1 = Yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_categories`
--

/*!40000 ALTER TABLE `music_categories` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `music_categories` ENABLE KEYS */;
commit;

--
-- Table structure for table `musics`
--

DROP TABLE IF EXISTS `musics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `musics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `sound` varchar(200) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `artist` varchar(100) DEFAULT NULL,
  `image` varchar(999) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=not 1=deleted',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musics`
--

/*!40000 ALTER TABLE `musics` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `musics` ENABLE KEYS */;
commit;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
commit;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
commit;

--
-- Table structure for table `post_contents`
--

DROP TABLE IF EXISTS `post_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_contents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `content_type` int(11) NOT NULL COMMENT 'image = 0, video = 1, Audio = 2',
  `content` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `audio_waves` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_contents`
--

/*!40000 ALTER TABLE `post_contents` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `post_contents` VALUES
(1,1,1,'https://xios.brandicc.com/storage/uploads/1765618327_chatter_VID-20251128-WA0058.mp4','https://xios.brandicc.com/storage/uploads/1765618327_chatter_VID-20251128-WA0058.jpg','[]','2025-12-13 09:32:07','2025-12-13 09:32:07');
/*!40000 ALTER TABLE `post_contents` ENABLE KEYS */;
commit;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `desc` text DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `comments_count` int(11) DEFAULT 0,
  `likes_count` int(11) DEFAULT 0,
  `link_preview_json` varchar(900) DEFAULT NULL,
  `interest_ids` varchar(255) DEFAULT NULL,
  `is_restricted` int(11) NOT NULL DEFAULT 0 COMMENT '0 = Off / 1 = On (restricted)',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `posts` VALUES
(1,1,'Ffdff',NULL,0,1,'null',NULL,0,'2025-12-13 09:32:07','2026-01-07 12:08:15');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
commit;

--
-- Table structure for table `profile_verifications`
--

DROP TABLE IF EXISTS `profile_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_verifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `selfie` varchar(255) NOT NULL,
  `document` varchar(255) NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_verifications`
--

/*!40000 ALTER TABLE `profile_verifications` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `profile_verifications` ENABLE KEYS */;
commit;

--
-- Table structure for table `reel_comments`
--

DROP TABLE IF EXISTS `reel_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reel_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `reel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reel_comments`
--

/*!40000 ALTER TABLE `reel_comments` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `reel_comments` ENABLE KEYS */;
commit;

--
-- Table structure for table `reels`
--

DROP TABLE IF EXISTS `reels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `interest_ids` varchar(255) DEFAULT NULL,
  `music_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `hashtags` varchar(255) DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT 0,
  `likes_count` int(11) NOT NULL DEFAULT 0,
  `views_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reels`
--

/*!40000 ALTER TABLE `reels` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `reels` ENABLE KEYS */;
commit;

--
-- Table structure for table `report_reasons`
--

DROP TABLE IF EXISTS `report_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_reasons`
--

/*!40000 ALTER TABLE `report_reasons` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `report_reasons` ENABLE KEYS */;
commit;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '0 = Room Report, 1 = Post Report, 2 = User Report, 3 = Reel Report',
  `room_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `reel_id` int(11) DEFAULT NULL,
  `reason` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
commit;

--
-- Table structure for table `room_users`
--

DROP TABLE IF EXISTS `room_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invited_by` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1 = Request for Join| 2 = Accept - member | 3 = co-Admin | 4 = Invited | 5 = Admin',
  `is_mute` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unmute / 1 = Mute',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_users`
--

/*!40000 ALTER TABLE `room_users` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `room_users` VALUES
(4,1,1,NULL,2,0,'2026-01-08 10:43:10','2026-01-08 10:43:10');
/*!40000 ALTER TABLE `room_users` ENABLE KEYS */;
commit;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(900) NOT NULL,
  `interest_ids` varchar(255) NOT NULL,
  `is_private` int(11) NOT NULL,
  `is_join_request_enable` int(11) NOT NULL,
  `total_member` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `rooms` VALUES
(1,1,'https://xios.brandicc.com/storage/uploads/1765618664_chatter_scaled_IMG-20251209-WA0026.jpg','Ccfv','Cvg','1,2',0,0,1,'2025-12-13 09:37:44','2026-01-08 10:43:10');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
commit;

--
-- Table structure for table `saved_notifications`
--

DROP TABLE IF EXISTS `saved_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `my_user_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `reel_id` int(11) DEFAULT NULL,
  `reel_comment_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1 = Follow, 2 = Comment, 3 = Post Like, 4 = Invite Room, 5 = Accept Invitation Room (User), 6 = join Room, 7 = DIrect Join Room, 8 = Accept Room Request (Admin), 9 = Reel Like, 10 = Add Reel Comment',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_notifications`
--

/*!40000 ALTER TABLE `saved_notifications` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `saved_notifications` VALUES
(1,1,1,NULL,1,NULL,NULL,NULL,7,'2026-01-07 02:07:54','2026-01-07 02:07:54'),
(2,1,1,NULL,1,NULL,NULL,NULL,7,'2026-01-08 10:42:29','2026-01-08 10:42:29'),
(3,1,1,NULL,1,NULL,NULL,NULL,7,'2026-01-08 10:43:10','2026-01-08 10:43:10');
/*!40000 ALTER TABLE `saved_notifications` ENABLE KEYS */;
commit;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `setRoomUsersLimit` int(11) NOT NULL,
  `minute_limit_in_creating_story` int(11) DEFAULT NULL,
  `minute_limit_in_audio_post` int(11) DEFAULT NULL,
  `minute_limit_in_choosing_video_for_story` int(11) DEFAULT NULL,
  `minute_limit_in_choosing_video_for_post` int(11) DEFAULT NULL,
  `max_images_can_be_uploaded_in_one_post` int(11) DEFAULT NULL,
  `ad_banner_android` varchar(255) DEFAULT NULL,
  `ad_interstitial_android` varchar(255) DEFAULT NULL,
  `ad_banner_iOS` varchar(255) DEFAULT NULL,
  `ad_interstitial_iOS` varchar(255) DEFAULT NULL,
  `is_admob_on` int(11) NOT NULL DEFAULT 1 COMMENT '0 = off / 1 = on',
  `audio_space_hosts_limit` bigint(20) NOT NULL,
  `audio_space_listeners_limit` bigint(20) NOT NULL,
  `audio_space_duration_in_minutes` bigint(20) NOT NULL,
  `duration_limit_in_reel` int(11) NOT NULL DEFAULT 60,
  `is_sight_engine_enabled` int(11) NOT NULL DEFAULT 0,
  `sight_engine_api_user` varchar(55) DEFAULT NULL,
  `sight_engine_api_secret` varchar(255) DEFAULT NULL,
  `sight_engine_image_workflow_id` varchar(255) DEFAULT NULL,
  `sight_engine_video_workflow_id` varchar(255) DEFAULT NULL,
  `storage_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 = Local / 1 = AWS S3 / 2 = DigitaoOcean Space	',
  `fetch_post_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 = Random / 1 = Latest',
  `support_email` varchar(255) DEFAULT NULL,
  `is_in_app_purchase_enabled` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 = Disabled / 1 = Enabled',
  `play_store_download_link` varchar(999) DEFAULT NULL,
  `app_store_download_link` varchar(999) DEFAULT NULL,
  `uri_scheme` varchar(55) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `settings` VALUES
(1,'Xios',11,2,1,1,1,4,'','','','',0,234,100,110,60,1,'1592286456','8s4SxixiTLi35ZcBFtPy4DYCUo2zs8JP','wfl_jKcgUmY51AjnE7i0xaHF5','wfl_jFSvDhptvVwqbPy5ZwH8W',0,1,'axios@brandicc.com',0,NULL,NULL,NULL,'2023-03-04 09:43:26','2025-12-13 08:34:04');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
commit;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 = Image, 1 = Video',
  `duration` double NOT NULL DEFAULT 0,
  `content` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `view_by_user_ids` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
commit;

--
-- Table structure for table `tbl_pages`
--

DROP TABLE IF EXISTS `tbl_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privacy` mediumtext DEFAULT NULL,
  `termsofuse` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pages`
--

/*!40000 ALTER TABLE `tbl_pages` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `tbl_pages` VALUES
(1,'<pre courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 13px;=\"\" padding:=\"\" 9.5px;=\"\" margin-bottom:=\"\" 10px;=\"\" line-height:=\"\" 1.42857;=\"\" word-break:=\"\" break-all;=\"\" overflow-wrap:=\"\" break-word;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" rgb(245,=\"\" 245,=\"\" 245);=\"\" border:=\"\" 1px=\"\" solid=\"\" rgb(204,=\"\" 204,=\"\" 204);=\"\" border-radius:=\"\" 4px;\"=\"\" style=\"padding: 0px; font-family: var(--bs-font-monospace); direction: ltr; unicode-bidi: bidi-override; color: rgb(0, 0, 0); --darkreader-inline-color:#ffffff;\" data-darkreader-inline-color=\"\"><h1 data-start=\"161\" data-end=\"186\" style=\"color: rgb(0, 0, 0); white-space: normal;\">Privacy Policy for XIOS</h1><h1 style=\"padding: 0px; margin: 20px 0px; color: rgb(58, 72, 81); font-size: 36px; border: 0px; font-family: AR12; white-space: normal; --darkreader-inline-color:#e2dad1; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial;\" data-darkreader-inline-color=\"\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\"><blockquote style=\"padding: 0px; margin-top: 20px; margin-bottom: 20px; border: 0px; font-size: 18px; overflow-wrap: break-word; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial; --darkreader-inline-color: #e2dad1;\" class=\"blockquote\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\"><p data-start=\"188\" data-end=\"218\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\"><strong data-start=\"188\" data-end=\"218\">Last updated: January 2026</strong></p><p data-start=\"220\" data-end=\"360\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">XIOS is a social media application owned and operated by <strong data-start=\"277\" data-end=\"294\">AXIOS Company</strong>.<br data-start=\"295\" data-end=\"298\">We are committed to protecting your privacy and personal data.</p><hr data-start=\"362\" data-end=\"365\" style=\"font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"></blockquote></h1><h2 data-start=\"367\" data-end=\"395\" style=\"color: rgb(0, 0, 0); white-space: normal;\">1. Information We Collect</h2><h1 style=\"padding: 0px; margin: 20px 0px; color: rgb(58, 72, 81); font-size: 36px; border: 0px; font-family: AR12; white-space: normal; --darkreader-inline-color:#e2dad1; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial;\" data-darkreader-inline-color=\"\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\"><blockquote style=\"padding: 0px; margin-top: 20px; margin-bottom: 20px; border: 0px; font-size: 18px; overflow-wrap: break-word; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial; --darkreader-inline-color: #e2dad1;\" class=\"blockquote\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\"><p data-start=\"397\" data-end=\"447\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">We may collect the following types of information:</p><div class=\"TyagGW_tableContainer\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"><div tabindex=\"-1\" class=\"group TyagGW_tableWrapper flex w-fit flex-col-reverse\"><table data-start=\"449\" data-end=\"796\" class=\"w-fit min-w-(--thread-content-width)\"><thead data-start=\"449\" data-end=\"471\"><tr data-start=\"449\" data-end=\"471\"><th data-start=\"449\" data-end=\"456\" data-col-size=\"sm\">Type</th><th data-start=\"456\" data-end=\"471\" data-col-size=\"md\">Description</th></tr></thead><tbody data-start=\"492\" data-end=\"796\"><tr data-start=\"492\" data-end=\"559\"><td data-start=\"492\" data-end=\"515\" data-col-size=\"sm\">Personal Information</td><td data-col-size=\"md\" data-start=\"515\" data-end=\"559\">Name, email, phone number, profile photo</td></tr><tr data-start=\"560\" data-end=\"609\"><td data-start=\"560\" data-end=\"575\" data-col-size=\"sm\">Account Data</td><td data-col-size=\"md\" data-start=\"575\" data-end=\"609\">Username, password (encrypted)</td></tr><tr data-start=\"610\" data-end=\"670\"><td data-start=\"610\" data-end=\"625\" data-col-size=\"sm\">User Content</td><td data-col-size=\"md\" data-start=\"625\" data-end=\"670\">Posts, comments, messages, photos, videos</td></tr><tr data-start=\"671\" data-end=\"732\"><td data-start=\"671\" data-end=\"692\" data-col-size=\"sm\">Device Information</td><td data-col-size=\"md\" data-start=\"692\" data-end=\"732\">Device model, OS version, IP address</td></tr><tr data-start=\"733\" data-end=\"796\"><td data-start=\"733\" data-end=\"746\" data-col-size=\"sm\">Usage Data</td><td data-col-size=\"md\" data-start=\"746\" data-end=\"796\">App interactions, pages visited, features used</td></tr></tbody></table></div></div><hr data-start=\"798\" data-end=\"801\" style=\"font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"></blockquote></h1><h2 data-start=\"803\" data-end=\"836\" style=\"color: rgb(0, 0, 0); white-space: normal;\">2. How We Use Your Information</h2><h1 style=\"padding: 0px; margin: 20px 0px; color: rgb(58, 72, 81); font-size: 36px; border: 0px; font-family: AR12; white-space: normal; --darkreader-inline-color:#e2dad1; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial;\" data-darkreader-inline-color=\"\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\"><blockquote style=\"padding: 0px; margin-top: 20px; margin-bottom: 20px; border: 0px; font-size: 18px; overflow-wrap: break-word; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial; --darkreader-inline-color: #e2dad1;\" class=\"blockquote\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\"><p data-start=\"838\" data-end=\"858\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">We use your data to:</p><ul data-start=\"860\" data-end=\"1115\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"><li data-start=\"860\" data-end=\"894\"><p data-start=\"862\" data-end=\"894\">Create and manage your account</p></li><li data-start=\"895\" data-end=\"933\"><p data-start=\"897\" data-end=\"933\">Provide social networking features</p></li><li data-start=\"934\" data-end=\"974\"><p data-start=\"936\" data-end=\"974\">Enable messaging and content sharing</p></li><li data-start=\"975\" data-end=\"1022\"><p data-start=\"977\" data-end=\"1022\">Improve app performance and user experience</p></li><li data-start=\"1023\" data-end=\"1069\"><p data-start=\"1025\" data-end=\"1069\">Prevent fraud, abuse, and security threats</p></li><li data-start=\"1070\" data-end=\"1115\"><p data-start=\"1072\" data-end=\"1115\">Communicate important updates and notices</p></li></ul><hr data-start=\"1117\" data-end=\"1120\" style=\"font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"></blockquote></h1><h2 data-start=\"1122\" data-end=\"1140\" style=\"color: rgb(0, 0, 0); white-space: normal;\">3. Data Sharing</h2><h1 style=\"padding: 0px; margin: 20px 0px; color: rgb(58, 72, 81); font-size: 36px; border: 0px; font-family: AR12; white-space: normal; --darkreader-inline-color:#e2dad1; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial;\" data-darkreader-inline-color=\"\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\"><blockquote style=\"padding: 0px; margin-top: 20px; margin-bottom: 20px; border: 0px; font-size: 18px; overflow-wrap: break-word; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial; --darkreader-inline-color: #e2dad1;\" class=\"blockquote\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\"><p data-start=\"1142\" data-end=\"1211\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">We do <strong data-start=\"1148\" data-end=\"1155\">NOT</strong> sell your personal data.<br data-start=\"1180\" data-end=\"1183\">We may share data only with:</p><ul data-start=\"1213\" data-end=\"1319\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"><li data-start=\"1213\" data-end=\"1240\"><p data-start=\"1215\" data-end=\"1240\">Cloud hosting providers</p></li><li data-start=\"1241\" data-end=\"1276\"><p data-start=\"1243\" data-end=\"1276\">Security and analytics services</p></li><li data-start=\"1277\" data-end=\"1319\"><p data-start=\"1279\" data-end=\"1319\">Legal authorities when required by law</p></li></ul><hr data-start=\"1321\" data-end=\"1324\" style=\"font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"></blockquote></h1><h2 data-start=\"1326\" data-end=\"1355\" style=\"color: rgb(0, 0, 0); white-space: normal;\">4. Data Storage &amp; Security</h2><h1 style=\"padding: 0px; margin: 20px 0px; color: rgb(58, 72, 81); font-size: 36px; border: 0px; font-family: AR12; white-space: normal; --darkreader-inline-color:#e2dad1; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial;\" data-darkreader-inline-color=\"\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\"><blockquote style=\"padding: 0px; margin-top: 20px; margin-bottom: 20px; border: 0px; font-size: 18px; overflow-wrap: break-word; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial; --darkreader-inline-color: #e2dad1;\" class=\"blockquote\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\"><p data-start=\"1357\" data-end=\"1487\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">We use industry-standard encryption, firewalls, and secure servers to protect your data from unauthorized access, loss, or misuse.</p><hr data-start=\"1489\" data-end=\"1492\" style=\"font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"></blockquote></h1><h2 data-start=\"1494\" data-end=\"1511\" style=\"color: rgb(0, 0, 0); white-space: normal;\">5. User Rights</h2><h1 style=\"padding: 0px; margin: 20px 0px; color: rgb(58, 72, 81); font-size: 36px; border: 0px; font-family: AR12; white-space: normal; --darkreader-inline-color:#e2dad1; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial;\" data-darkreader-inline-color=\"\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\"><blockquote style=\"padding: 0px; margin-top: 20px; margin-bottom: 20px; border: 0px; font-size: 18px; overflow-wrap: break-word; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial; --darkreader-inline-color: #e2dad1;\" class=\"blockquote\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\"><p data-start=\"1513\" data-end=\"1535\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">You have the right to:</p><ul data-start=\"1537\" data-end=\"1661\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"><li data-start=\"1537\" data-end=\"1557\"><p data-start=\"1539\" data-end=\"1557\">Access your data</p></li><li data-start=\"1558\" data-end=\"1589\"><p data-start=\"1560\" data-end=\"1589\">Edit or delete your profile</p></li><li data-start=\"1590\" data-end=\"1628\"><p data-start=\"1592\" data-end=\"1628\">Request permanent account deletion</p></li><li data-start=\"1629\" data-end=\"1661\"><p data-start=\"1631\" data-end=\"1661\">Withdraw consent at any time</p></li></ul><p data-start=\"1663\" data-end=\"1705\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">To request deletion, contact us via email.</p><hr data-start=\"1707\" data-end=\"1710\" style=\"font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"></blockquote></h1><h2 data-start=\"1712\" data-end=\"1736\" style=\"color: rgb(0, 0, 0); white-space: normal;\">6. Children\'s Privacy</h2><h1 style=\"padding: 0px; margin: 20px 0px; color: rgb(58, 72, 81); font-size: 36px; border: 0px; font-family: AR12; white-space: normal; --darkreader-inline-color:#e2dad1; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial;\" data-darkreader-inline-color=\"\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\"><blockquote style=\"padding: 0px; margin-top: 20px; margin-bottom: 20px; border: 0px; font-size: 18px; overflow-wrap: break-word; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial; --darkreader-inline-color: #e2dad1;\" class=\"blockquote\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\"><p data-start=\"1738\" data-end=\"1840\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">XIOS is not intended for children under the age of 13.<br data-start=\"1792\" data-end=\"1795\">We do not knowingly collect data from minors.</p><hr data-start=\"1842\" data-end=\"1845\" style=\"font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"></blockquote></h1><h2 data-start=\"1847\" data-end=\"1873\" style=\"color: rgb(0, 0, 0); white-space: normal;\">7. Third-Party Services</h2><h1 style=\"padding: 0px; margin: 20px 0px; color: rgb(58, 72, 81); font-size: 36px; border: 0px; font-family: AR12; white-space: normal; --darkreader-inline-color:#e2dad1; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial;\" data-darkreader-inline-color=\"\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\"><blockquote style=\"padding: 0px; margin-top: 20px; margin-bottom: 20px; border: 0px; font-size: 18px; overflow-wrap: break-word; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial; --darkreader-inline-color: #e2dad1;\" class=\"blockquote\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\"><p data-start=\"1875\" data-end=\"1917\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">XIOS may use third-party services such as:</p><ul data-start=\"1919\" data-end=\"1985\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"><li data-start=\"1919\" data-end=\"1938\"><p data-start=\"1921\" data-end=\"1938\">Google Firebase</p></li><li data-start=\"1939\" data-end=\"1959\"><p data-start=\"1941\" data-end=\"1959\">Google Analytics</p></li><li data-start=\"1960\" data-end=\"1985\"><p data-start=\"1962\" data-end=\"1985\">Google Cloud Services</p></li></ul><p data-start=\"1987\" data-end=\"2059\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">These services may collect data according to their own privacy policies.</p><hr data-start=\"2061\" data-end=\"2064\" style=\"font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"></blockquote></h1><h2 data-start=\"2066\" data-end=\"2086\" style=\"color: rgb(0, 0, 0); white-space: normal;\">8. Policy Updates</h2><h1 style=\"padding: 0px; margin: 20px 0px; color: rgb(58, 72, 81); font-size: 36px; border: 0px; font-family: AR12; white-space: normal; --darkreader-inline-color:#e2dad1; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial;\" data-darkreader-inline-color=\"\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\"><blockquote style=\"padding: 0px; margin-top: 20px; margin-bottom: 20px; border: 0px; font-size: 18px; overflow-wrap: break-word; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial; --darkreader-inline-color: #e2dad1;\" class=\"blockquote\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\"><p data-start=\"2088\" data-end=\"2196\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">We may update this Privacy Policy at any time.<br data-start=\"2134\" data-end=\"2137\">Users will be notified of any major changes inside the app.</p><hr data-start=\"2198\" data-end=\"2201\" style=\"font-size: medium; font-style: normal; font-weight: 400; letter-spacing: normal;\"></blockquote></h1><h2 data-start=\"2203\" data-end=\"2228\" style=\"color: rgb(0, 0, 0); white-space: normal;\">9. Contact Information</h2><h1 style=\"padding: 0px; margin: 20px 0px; color: rgb(58, 72, 81); font-size: 36px; border: 0px; font-family: AR12; white-space: normal; --darkreader-inline-color:#e2dad1; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial;\" data-darkreader-inline-color=\"\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\"><blockquote style=\"padding: 0px; margin-top: 20px; margin-bottom: 20px; border: 0px; font-size: 18px; overflow-wrap: break-word; --darkreader-inline-border-top: initial; --darkreader-inline-border-right: initial; --darkreader-inline-border-bottom: initial; --darkreader-inline-border-left: initial; --darkreader-inline-color: #e2dad1;\" class=\"blockquote\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\"><p data-start=\"2230\" data-end=\"2303\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\"><strong data-start=\"2230\" data-end=\"2242\">Company:</strong> AXIOS<br data-start=\"2248\" data-end=\"2251\"><strong data-start=\"2251\" data-end=\"2264\">App Name:</strong> XIOS<br data-start=\"2269\" data-end=\"2272\"><strong data-start=\"2272\" data-end=\"2285\">Location:</strong> Damascus, Syria</p><p data-start=\"2305\" data-end=\"2372\" style=\"color: rgb(0, 0, 0); font-size: medium; font-style: normal; letter-spacing: normal;\">📞 +971 52 919 1278<br data-start=\"2324\" data-end=\"2327\">📞 +963 994 205 312<br data-start=\"2346\" data-end=\"2349\">📧 <a data-start=\"2352\" data-end=\"2370\" class=\"decorated-link cursor-pointer\" rel=\"noopener\"><a href=\"http://axios.co@yahoo.com\">axios.co@yahoo.com</a><span aria-hidden=\"true\" class=\"ms-0.5 inline-block align-middle leading-none\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"20\" height=\"20\" aria-hidden=\"true\" data-rtl-flip=\"\" class=\"block h-[0.75em] w-[0.75em] stroke-current stroke-[0.75]\"><use href=\"/cdn/assets/sprites-core-d46pasyz.svg#304883\" fill=\"currentColor\"></use></svg></span></a></p></blockquote></h1></pre>','<p><span style=\"background-color: var(--bg-white); text-align: var(--bs-body-text-align); font-size: 15px; font-family: Scandia;\">Welcome to the Terms of Use for the application. By using the&nbsp;</span><span style=\"background-color: var(--bg-white); text-align: var(--bs-body-text-align); font-size: 15px; font-family: Scandia;\">application, you agree to be bound by these terms and conditions. Please read them carefully before using the application.</span><br></p><p><span style=\"font-size: 15px; font-family: Scandia;\">License Grant:</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: Scandia;\">The</span><span style=\"font-family: Scandia;\">&nbsp;</span></span><span style=\"font-size: 15px; font-family: Scandia;\">application grants you a limited, non-exclusive, non-transferable, revocable license to use the application for your personal or commercial purposes.</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-size: 15px; font-family: Scandia;\">User Conduct:</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: Scandia;\">You agree to use the</span><span style=\"font-family: Scandia;\">&nbsp;</span></span><span style=\"font-size: 15px; font-family: Scandia;\">application for lawful purposes only and not to engage in any conduct that may impair or disrupt the functioning of the application. You agree not to use the application to upload or distribute any content that is illegal, harmful, threatening, abusive, harassing, defamatory, obscene, vulgar, or offensive.</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-size: 15px; font-family: Scandia;\">User Accounts:</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: Scandia;\">You may need to create an account to use certain features of the</span><span style=\"font-family: Scandia;\">&nbsp;</span></span><span style=\"font-size: 15px; font-family: Scandia;\">application. You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account.</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-size: 15px; font-family: Scandia;\">Intellectual Property:</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: Scandia;\">The</span><span style=\"font-family: Scandia;\">&nbsp;</span></span><span style=\"font-size: 15px; font-family: Scandia;\">application and all of its content, including but not limited to text, graphics, logos, images, and software, are the property of the application owner and are protected by copyright and other intellectual property laws. You may not use or reproduce any of the content without the prior written consent of the application owner.</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-size: 15px; font-family: Scandia;\">Disclaimers:</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: Scandia;\">The</span><span style=\"font-family: Scandia;\">&nbsp;</span></span><span style=\"font-size: 15px; font-family: Scandia;\">application is provided on an \"as is\" and \"as available\" basis. The application owner makes no warranties, express or implied, regarding the application\'s reliability, accuracy, or availability.</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-size: 15px; font-family: Scandia;\">Limitation of Liability:</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: Scandia;\">In no event shall the application owner be liable for any damages arising out of the use or inability to use the</span><span style=\"font-family: Scandia;\">&nbsp;</span></span><span style=\"font-size: 15px; font-family: Scandia;\">application, including but not limited to direct, indirect, incidental, special, or consequential damages.</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-size: 15px; font-family: Scandia;\">Indemnification:</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: Scandia;\">You agree to indemnify and hold the application owner harmless from any claims, damages, losses, or expenses arising out of your use of the</span><span style=\"font-family: Scandia;\">&nbsp;</span></span><span style=\"font-size: 15px; font-family: Scandia;\">application, your violation of these terms and conditions, or your violation of any rights of another person or entity.</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-size: 15px; font-family: Scandia;\">Termination:</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: Scandia;\">The application owner may terminate your access to the</span><span style=\"font-family: Scandia;\">&nbsp;</span></span><span style=\"font-size: 15px; font-family: Scandia;\">application at any time and for any reason without notice.</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-size: 15px; font-family: Scandia;\">Governing Law:</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-size: 15px; font-family: Scandia;\">These terms and conditions shall be governed by and construed in accordance with the laws of the jurisdiction where the application owner is located.</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-size: 15px; font-family: Scandia;\">Changes to Terms and Conditions:</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: Scandia;\">The application owner reserves the right to modify these terms and conditions at any time without notice. Your continued use of the</span><span style=\"font-family: Scandia;\">&nbsp;</span></span><span style=\"font-size: 15px; font-family: Scandia;\">application following any such modifications constitutes your agreement to be bound by the revised terms and conditions.</span><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: lato, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"font-family: Scandia;\">By using the</span><span style=\"font-family: Scandia;\">&nbsp;</span></span><span style=\"font-size: 15px; font-family: Scandia;\">application, you acknowledge that you have read, understood, and agree to be bound by these terms and conditions.</span><br></p>','2023-03-22 10:37:41','2026-01-07 12:56:40');
/*!40000 ALTER TABLE `tbl_pages` ENABLE KEYS */;
commit;

--
-- Table structure for table `username_restrictions`
--

DROP TABLE IF EXISTS `username_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `username_restrictions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `username_restrictions`
--

/*!40000 ALTER TABLE `username_restrictions` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `username_restrictions` ENABLE KEYS */;
commit;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `identity` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `interest_ids` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `is_push_notifications` int(11) DEFAULT 1 COMMENT '0 = not push notification.. , 1 = Push notification...\r\n',
  `is_invited_to_room` int(11) DEFAULT 1 COMMENT '0 = Not invited to room pubilcally , 1 = Able to invite in room publically',
  `is_verified` int(11) NOT NULL DEFAULT 0 COMMENT '0 = notVerified, 1 = verificationInPending, 2 = verified, 3 = verifiedBySubscription\r\n\r\n',
  `is_block` int(11) DEFAULT 0 COMMENT '0 = Unblock, 1 = Block',
  `block_user_ids` varchar(255) DEFAULT NULL,
  `saved_music_ids` varchar(255) DEFAULT NULL,
  `saved_reel_ids` varchar(255) DEFAULT NULL,
  `following` int(11) DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `is_moderator` int(11) NOT NULL DEFAULT 0,
  `login_type` int(11) NOT NULL COMMENT '0 = Google login, 1 = Apple Login, 2 = email login\r\n',
  `device_type` int(11) NOT NULL COMMENT '0 = Android / 1 iOS',
  `device_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `users` VALUES
(1,'yman.aljondi@gmail.com','cccv','Yman Aljondi',NULL,'2,1','https://xios.brandicc.com/storage/uploads/1765618614_chatter_scaled_IMG-20251209-WA0021.jpg','https://xios.brandicc.com/storage/uploads/1765618467_chatter_IMG-20251209-WA0021.jpg',1,1,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,'No Token','2025-12-13 09:30:44','2025-12-13 09:36:54'),
(2,'opada.monzer.aljondi@gmail.com',NULL,'Xios',NULL,NULL,NULL,NULL,1,1,0,0,NULL,NULL,NULL,NULL,NULL,0,2,0,'deviceToken','2026-01-10 15:53:11','2026-01-10 15:53:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
commit;

--
-- Dumping routines for database 'u779914801_xios'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-01-20 14:27:00
