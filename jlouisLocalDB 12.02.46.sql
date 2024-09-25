-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 05, 2024 at 08:27 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://en-gb.wordpress.org/', '', '2024-07-09 16:12:16', '2024-07-09 15:12:16', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888', 'yes'),
(2, 'home', 'http://localhost:8888', 'yes'),
(3, 'blogname', 'James Louis', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kim@redsentence.co.uk', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:114:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"wporg_product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"wporg_product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"wporg_product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wporg_product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wporg_product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"wporg_product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"wporg_product/([^/]+)/embed/?$\";s:46:\"index.php?wporg_product=$matches[1]&embed=true\";s:34:\"wporg_product/([^/]+)/trackback/?$\";s:40:\"index.php?wporg_product=$matches[1]&tb=1\";s:42:\"wporg_product/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?wporg_product=$matches[1]&paged=$matches[2]\";s:49:\"wporg_product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?wporg_product=$matches[1]&cpage=$matches[2]\";s:38:\"wporg_product/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?wporg_product=$matches[1]&page=$matches[2]\";s:30:\"wporg_product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"wporg_product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"wporg_product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"wporg_product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"wporg_product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"wporg_product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=53&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:64:\"/Applications/MAMP/htdocs/wp-content/themes/jameslouis/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'jameslouis', 'yes'),
(41, 'stylesheet', 'jameslouis', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/London', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '53', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1736089936', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'WPLANG', 'en_GB', 'yes'),
(104, 'user_count', '1', 'no'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1722417136;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1722438736;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1722438786;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1722438787;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1722957138;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1723016882;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.5\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(128, 'theme_mods_twentytwentyfour', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1720622400;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'no'),
(143, 'can_compress_scripts', '1', 'yes'),
(156, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'finished_updating_comment_type', '1', 'yes'),
(169, 'acf_first_activated_version', '6.3.3', 'yes'),
(170, 'acf_site_health', '{\"version\":\"6.3.3\",\"plugin_type\":\"PRO\",\"activated\":true,\"activated_url\":\"http:\\/\\/localhost:8888\",\"license_type\":\"Developer\",\"license_status\":\"active\",\"subscription_expires\":\"\",\"wp_version\":\"6.6\",\"mysql_version\":\"5.7.39\",\"is_multisite\":false,\"active_theme\":{\"name\":\"James Louis\",\"version\":\"\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields-pro\\/acf.php\":{\"name\":\"Advanced Custom Fields PRO\",\"version\":\"6.3.3\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"classic-editor\\/classic-editor.php\":{\"name\":\"Classic Editor\",\"version\":\"1.6.3\",\"plugin_uri\":\"https:\\/\\/wordpress.org\\/plugins\\/classic-editor\\/\"}},\"ui_field_groups\":\"4\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"text\":5,\"image\":3,\"wysiwyg\":3,\"file\":2,\"tab\":6,\"repeater\":1,\"link\":7},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"4\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"1\",\"json_options_pages\":\"0\",\"php_options_pages\":\"0\",\"rest_api_format\":\"light\",\"registered_acf_blocks\":\"0\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated_pro\":1720597682,\"event_first_created_ui_options_page\":1720615722,\"event_first_created_field_group\":1720620513,\"last_updated\":1722416663}', 'off'),
(172, 'acf_version', '6.3.3', 'yes'),
(175, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5T0RFM016VjhkSGx3WlQxd1pYSnpiMjVoYkh4a1lYUmxQVEl3TVRZdE1EVXRNVGNnTVRNNk1UTTZNVEE9IjtzOjM6InVybCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4ODg4Ijt9', 'no'),
(176, 'acf_pro_license_status', 'a:11:{s:6:\"status\";s:6:\"active\";s:7:\"created\";i:0;s:6:\"expiry\";i:0;s:4:\"name\";s:9:\"Developer\";s:8:\"lifetime\";b:1;s:8:\"refunded\";b:0;s:17:\"view_licenses_url\";s:62:\"https://www.advancedcustomfields.com/my-account/view-licenses/\";s:23:\"manage_subscription_url\";s:0:\"\";s:9:\"error_msg\";s:0:\"\";s:10:\"next_check\";i:1722427458;s:16:\"legacy_multisite\";b:1;}', 'on'),
(203, 'current_theme', 'James Louis', 'yes'),
(204, 'theme_mods_jameslouis', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1720622398;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(205, 'theme_switched', '', 'yes'),
(216, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(219, 'options_bg_wallpaper', '27', 'no'),
(220, '_options_bg_wallpaper', 'field_668e834692668', 'no'),
(221, 'options_contact_email', '', 'no'),
(222, '_options_contact_email', 'field_668e964ce91ed', 'no'),
(223, 'options_linkedin_link', '', 'no'),
(224, '_options_linkedin_link', 'field_668e9662e91ee', 'no'),
(225, 'options_tiktok_link', '', 'no'),
(226, '_options_tiktok_link', 'field_668e9670e91ef', 'no'),
(230, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(231, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":7,\"critical\":1}', 'yes'),
(234, 'options_footer_copy', '© Copyright James Louis 2024. All rights reserved.', 'no'),
(235, '_options_footer_copy', 'field_668ea74e9cf84', 'no'),
(345, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"kim@redsentence.co.uk\";s:7:\"version\";s:5:\"6.6.1\";s:9:\"timestamp\";i:1722416663;}', 'off'),
(377, 'new_admin_email', 'kim@redsentence.co.uk', 'auto'),
(383, 'category_children', 'a:0:{}', 'auto'),
(604, '_transient_timeout_acf_plugin_updates', '1722589458', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(605, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.3.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.6.1\";s:7:\"package\";s:349:\"https://connect.advancedcustomfields.com/v2/plugins/download?version=6.3.4&token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU9ERTNNelY4ZEhsd1pUMXdaWEp6YjI1aGJIeGtZWFJsUFRJd01UWXRNRFV0TVRjZ01UTTZNVE02TVRBPSIsIndwX3VybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4ODg4Iiwid3BfdmVyc2lvbiI6IjYuNiIsIndwX211bHRpc2l0ZSI6MCwicGhwX3ZlcnNpb24iOiI3LjQuMzMiLCJibG9ja19jb3VudCI6MH0=\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20240718\";s:13:\"license_valid\";b:1;}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.3.3\";}}', 'off'),
(606, '_site_transient_timeout_theme_roots', '1722418458', 'off'),
(607, '_site_transient_theme_roots', 'a:4:{s:10:\"jameslouis\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off'),
(609, '_site_transient_timeout_wp_theme_files_patterns-e59bb1da3160e9057cb2b8cf0e52a040', '1722418461', 'off'),
(610, '_site_transient_wp_theme_files_patterns-e59bb1da3160e9057cb2b8cf0e52a040', 'a:2:{s:7:\"version\";s:0:\"\";s:8:\"patterns\";a:0:{}}', 'off'),
(611, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-6.6.1.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-6.6.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.1\";s:7:\"version\";s:5:\"6.6.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1722416662;s:15:\"version_checked\";s:5:\"6.6.1\";s:12:\"translations\";a:0:{}}', 'off'),
(612, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1722416662;s:7:\"checked\";a:4:{s:10:\"jameslouis\";s:0:\"\";s:16:\"twentytwentyfour\";s:3:\"1.1\";s:17:\"twentytwentythree\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.7\";}s:8:\"response\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.2.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.5.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.8.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(613, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1722416663;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.5.5\";s:12:\"requires_php\";s:6:\"5.6.20\";s:16:\"requires_plugins\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.6.1\";s:12:\"requires_php\";s:5:\"5.2.4\";s:16:\"requires_plugins\";a:0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.3.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.6.1\";s:7:\"package\";s:349:\"https://connect.advancedcustomfields.com/v2/plugins/download?version=6.3.4&token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU9ERTNNelY4ZEhsd1pUMXdaWEp6YjI1aGJIeGtZWFJsUFRJd01UWXRNRFV0TVRjZ01UTTZNVE02TVRBPSIsIndwX3VybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4ODg4Iiwid3BfdmVyc2lvbiI6IjYuNiIsIndwX211bHRpc2l0ZSI6MCwicGhwX3ZlcnNpb24iOiI3LjQuMzMiLCJibG9ja19jb3VudCI6MH0=\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20240718\";s:13:\"license_valid\";b:1;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.3.3\";s:19:\"akismet/akismet.php\";s:5:\"5.3.2\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'off'),
(614, '_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447', '1723021464', 'off'),
(615, '_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1720615580:1'),
(7, 8, '_edit_last', '1'),
(8, 8, '_edit_lock', '1720624883:1'),
(9, 2, '_wp_trash_meta_status', 'publish'),
(10, 2, '_wp_trash_meta_time', '1720622256'),
(11, 2, '_wp_desired_post_slug', 'sample-page'),
(13, 17, '_edit_last', '1'),
(14, 17, '_edit_lock', '1720622144:1'),
(15, 19, '_edit_last', '1'),
(16, 19, '_edit_lock', '1721388849:1'),
(17, 21, '_wp_trash_meta_status', 'publish'),
(18, 21, '_wp_trash_meta_time', '1720622355'),
(19, 3, '_edit_last', '1'),
(20, 25, '_menu_item_type', 'post_type'),
(21, 25, '_menu_item_menu_item_parent', '0'),
(22, 25, '_menu_item_object_id', '19'),
(23, 25, '_menu_item_object', 'page'),
(24, 25, '_menu_item_target', ''),
(25, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 25, '_menu_item_xfn', ''),
(27, 25, '_menu_item_url', ''),
(36, 24, '_wp_trash_meta_status', 'publish'),
(37, 24, '_wp_trash_meta_time', '1720622624'),
(38, 27, '_wp_attached_file', '2024/07/James-Louis-Background-WallpaperOnly.jpg'),
(39, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:48:\"2024/07/James-Louis-Background-WallpaperOnly.jpg\";s:8:\"filesize\";i:1353815;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"James-Louis-Background-WallpaperOnly-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13777;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"James-Louis-Background-WallpaperOnly-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:115717;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"James-Louis-Background-WallpaperOnly-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6034;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"James-Louis-Background-WallpaperOnly-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69703;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:49:\"James-Louis-Background-WallpaperOnly-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:233084;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(40, 29, '_edit_last', '1'),
(41, 29, '_edit_lock', '1721371541:1'),
(42, 40, '_menu_item_type', 'custom'),
(43, 40, '_menu_item_menu_item_parent', '0'),
(44, 40, '_menu_item_object_id', '40'),
(45, 40, '_menu_item_object', 'custom'),
(46, 40, '_menu_item_target', ''),
(47, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 40, '_menu_item_xfn', ''),
(49, 40, '_menu_item_url', 'mailto:###'),
(52, 25, '_wp_old_date', '2024-07-10'),
(53, 41, '_edit_last', '1'),
(54, 41, '_edit_lock', '1721284724:1'),
(55, 42, '_edit_last', '1'),
(56, 42, '_edit_lock', '1721374787:1'),
(57, 43, '_edit_last', '1'),
(58, 43, '_edit_lock', '1721374631:1'),
(59, 44, '_edit_last', '1'),
(60, 44, '_edit_lock', '1721371648:1'),
(61, 45, '_edit_last', '1'),
(62, 45, '_edit_lock', '1721374619:1'),
(63, 46, '_edit_last', '1'),
(64, 46, '_edit_lock', '1721374578:1'),
(65, 47, '_edit_last', '1'),
(66, 47, '_edit_lock', '1720712236:1'),
(67, 53, '_edit_last', '1'),
(68, 53, '_edit_lock', '1721371642:1'),
(69, 55, '_wp_attached_file', '2024/07/Old-Spice-scaled.jpeg'),
(70, 55, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:29:\"2024/07/Old-Spice-scaled.jpeg\";s:8:\"filesize\";i:284844;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"Old-Spice-225x300.jpeg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9574;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"Old-Spice-768x1024.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56712;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"Old-Spice-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4505;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"Old-Spice-768x1024.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56712;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"Old-Spice-1152x1536.jpeg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:110619;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:24:\"Old-Spice-1536x2048.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:186009;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:4:\"1.78\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"iPhone 15 Pro\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1719754971\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:15:\"6.7649998656528\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:16:\"0.03030303030303\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:14:\"Old-Spice.jpeg\";}'),
(71, 19, 'about_name', 'James Louis'),
(72, 19, '_about_name', 'field_668faa85e8799'),
(73, 19, 'about_image', '58'),
(74, 19, '_about_image', 'field_668faab1e879a'),
(75, 19, 'about_role', '<h2>CREATIVE / COPYWRITER</h2>\r\nTechnologies evolve at lightspeed. Us humans, not so much. From age-old words and archetypal stories, to deep learning and virtual CREATIVE / COPYWRITER, putting pen to paper can make the difference between standard and standout. Commercial failure or success. What I’m trying to say is, great writing in service of a big idea changes things, people, the world even. Every time I write, I am trying to change the world.\r\n\r\nFrom joining Tibetan pilgrims in Lhasa, and gathering in silence as night falls on the Golden Temple in Amritsar, to trekking through the jungles of Borneo, and looking out over white-capped peaks from Everest base camp; I am challenged and rewarded by travelling, thinking, reading and writing.\r\n\r\nI have honed my craft with School of Communication Arts 2.0, Cannes Lions School of Creativity, D&amp;AD, University of the Arts London, Faber Academy, Arvon, and privately. I can draw upon an uncommon blend of creative and commercial skills to make work that attracts new customers, wins new clients, and makes a valuable contribution to your agency’s continued success.'),
(76, 19, '_about_role', 'field_668faabce879b'),
(77, 19, 'about_training', '<h2>Training</h2>\r\n<h3>Ad School</h3>\r\n<strong>School of Communication Arts 2.0</strong>\r\n\r\nLondon portfolio course Sep-23 – Jul-24.\r\n<h3>Creative Masterclasses</h3>\r\n<strong>Cannes Lions School of Creativity</strong>\r\n\r\nCopywriting Aug-21; Storytelling Jul-21; Creative Thinking Jun-21; Creative Effectiveness Nov-21; Creative Leadership Dec-21; Marketing Strategy (with WARC) Dec-22.\r\n\r\n<strong>D&amp;AD</strong>\r\n\r\nCopywriting for Impact Jun-24; Copywriting for Brands Sep-19; Writing for Advertising Jan-19; Storytelling for Action Mar-22; Storytelling &amp; The Internet Feb-19; Creative Advertising Ideas That Sell Oct-18; Brand Strategy for Creatives Mar-19.\r\n\r\n<strong>Ogilvy </strong>\r\n\r\nSocial Media Oct-21; Behavioural Science for Effective Messaging Dec-22; Applied Behavioural Science May-22; Behavioural Economics Jul-21.\r\n\r\n<strong>University of the Arts London</strong>\r\n\r\nConfident Copywriting Jun-17; Creative Copywriting Jul-16; Introduction to Advertising Mar-17.'),
(78, 19, '_about_training', 'field_668faaede879c'),
(79, 19, 'about_video', '60'),
(80, 19, '_about_video', 'field_668faafbe879d'),
(81, 56, 'about_name', 'James Louis'),
(82, 56, '_about_name', 'field_668faa85e8799'),
(83, 56, 'about_image', '55'),
(84, 56, '_about_image', 'field_668faab1e879a'),
(85, 56, 'about_role', '<h2>CREATIVE / COPYWRITER</h2>\r\nTechnologies evolve at lightspeed. Us humans, not so much. From age-old words and archetypal stories, to deep learning and virtual CREATIVE / COPYWRITER, putting pen to paper can make the difference between standard and standout. Commercial failure or success. What I’m trying to say is, great writing in service of a big idea changes things, people, the world even. Every time I write, I am trying to change the world. From joining Tibetan pilgrims in Lhasa, and gathering in silence as night falls on the Golden Temple in Amritsar, to trekking through the jungles of Borneo, and looking out over white-capped peaks from Everest base camp; I am challenged and rewarded by travelling, thinking, reading and writing. I have honed my craft with School of Communication Arts 2.0, Cannes Lions School of Creativity, D&amp;AD, University of the Arts London, Faber Academy, Arvon, and privately. I can draw upon an uncommon blend of creative and commercial skills to make work that attracts new customers, wins new clients, and makes a valuable contribution to your agency’s continued success.'),
(86, 56, '_about_role', 'field_668faabce879b'),
(87, 56, 'about_training', '<h2>Training</h2>\r\n<h3>Ad School</h3>\r\n<strong>School of Communication Arts 2.0</strong>\r\n\r\nLondon portfolio course Sep-23 – Jul-24.\r\n<h3>Creative Masterclasses</h3>\r\n<strong>Cannes Lions School of Creativity</strong>\r\n\r\nCopywriting Aug-21; Storytelling Jul-21; Creative Thinking Jun-21; Creative Effectiveness Nov-21; Creative Leadership Dec-21; Marketing Strategy (with WARC) Dec-22.\r\n\r\n<strong>D&amp;AD</strong>\r\n\r\nCopywriting for Impact Jun-24; Copywriting for Brands Sep-19; Writing for Advertising Jan-19; Storytelling for Action Mar-22; Storytelling &amp; The Internet Feb-19; Creative Advertising Ideas That Sell Oct-18; Brand Strategy for Creatives Mar-19.\r\n\r\n<strong>Ogilvy </strong>\r\n\r\nSocial Media Oct-21; Behavioural Science for Effective Messaging Dec-22; Applied Behavioural Science May-22; Behavioural Economics Jul-21.\r\n\r\n<strong>University of the Arts London</strong>\r\n\r\nConfident Copywriting Jun-17; Creative Copywriting Jul-16; Introduction to Advertising Mar-17.'),
(88, 56, '_about_training', 'field_668faaede879c'),
(89, 56, 'about_video', ''),
(90, 56, '_about_video', 'field_668faafbe879d'),
(91, 55, '_wp_attachment_image_alt', 'test'),
(92, 57, 'about_name', 'James Louis'),
(93, 57, '_about_name', 'field_668faa85e8799'),
(94, 57, 'about_image', '55'),
(95, 57, '_about_image', 'field_668faab1e879a'),
(96, 57, 'about_role', '<h2>CREATIVE / COPYWRITER</h2>\r\nTechnologies evolve at lightspeed. Us humans, not so much. From age-old words and archetypal stories, to deep learning and virtual CREATIVE / COPYWRITER, putting pen to paper can make the difference between standard and standout. Commercial failure or success. What I’m trying to say is, great writing in service of a big idea changes things, people, the world even. Every time I write, I am trying to change the world. From joining Tibetan pilgrims in Lhasa, and gathering in silence as night falls on the Golden Temple in Amritsar, to trekking through the jungles of Borneo, and looking out over white-capped peaks from Everest base camp; I am challenged and rewarded by travelling, thinking, reading and writing. I have honed my craft with School of Communication Arts 2.0, Cannes Lions School of Creativity, D&amp;AD, University of the Arts London, Faber Academy, Arvon, and privately. I can draw upon an uncommon blend of creative and commercial skills to make work that attracts new customers, wins new clients, and makes a valuable contribution to your agency’s continued success.'),
(97, 57, '_about_role', 'field_668faabce879b'),
(98, 57, 'about_training', '<h2>Training</h2>\r\n<h3>Ad School</h3>\r\n<strong>School of Communication Arts 2.0</strong>\r\n\r\nLondon portfolio course Sep-23 – Jul-24.\r\n<h3>Creative Masterclasses</h3>\r\n<strong>Cannes Lions School of Creativity</strong>\r\n\r\nCopywriting Aug-21; Storytelling Jul-21; Creative Thinking Jun-21; Creative Effectiveness Nov-21; Creative Leadership Dec-21; Marketing Strategy (with WARC) Dec-22.\r\n\r\n<strong>D&amp;AD</strong>\r\n\r\nCopywriting for Impact Jun-24; Copywriting for Brands Sep-19; Writing for Advertising Jan-19; Storytelling for Action Mar-22; Storytelling &amp; The Internet Feb-19; Creative Advertising Ideas That Sell Oct-18; Brand Strategy for Creatives Mar-19.\r\n\r\n<strong>Ogilvy </strong>\r\n\r\nSocial Media Oct-21; Behavioural Science for Effective Messaging Dec-22; Applied Behavioural Science May-22; Behavioural Economics Jul-21.\r\n\r\n<strong>University of the Arts London</strong>\r\n\r\nConfident Copywriting Jun-17; Creative Copywriting Jul-16; Introduction to Advertising Mar-17.'),
(99, 57, '_about_training', 'field_668faaede879c'),
(100, 57, 'about_video', ''),
(101, 57, '_about_video', 'field_668faafbe879d'),
(102, 58, '_wp_attached_file', '2024/07/spiceboy.png'),
(103, 58, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3024;s:6:\"height\";i:2384;s:4:\"file\";s:20:\"2024/07/spiceboy.png\";s:8:\"filesize\";i:3751300;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"spiceboy-300x237.png\";s:5:\"width\";i:300;s:6:\"height\";i:237;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:81429;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"spiceboy-1024x807.png\";s:5:\"width\";i:1024;s:6:\"height\";i:807;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:746685;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"spiceboy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:31849;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"spiceboy-768x605.png\";s:5:\"width\";i:768;s:6:\"height\";i:605;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:440637;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"spiceboy-1536x1211.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1211;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1500297;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"spiceboy-2048x1615.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1615;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2377645;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 59, 'about_name', 'James Louis'),
(105, 59, '_about_name', 'field_668faa85e8799'),
(106, 59, 'about_image', '58'),
(107, 59, '_about_image', 'field_668faab1e879a'),
(108, 59, 'about_role', '<h2>CREATIVE / COPYWRITER</h2>\r\nTechnologies evolve at lightspeed. Us humans, not so much. From age-old words and archetypal stories, to deep learning and virtual CREATIVE / COPYWRITER, putting pen to paper can make the difference between standard and standout. Commercial failure or success. What I’m trying to say is, great writing in service of a big idea changes things, people, the world even. Every time I write, I am trying to change the world. From joining Tibetan pilgrims in Lhasa, and gathering in silence as night falls on the Golden Temple in Amritsar, to trekking through the jungles of Borneo, and looking out over white-capped peaks from Everest base camp; I am challenged and rewarded by travelling, thinking, reading and writing. I have honed my craft with School of Communication Arts 2.0, Cannes Lions School of Creativity, D&amp;AD, University of the Arts London, Faber Academy, Arvon, and privately. I can draw upon an uncommon blend of creative and commercial skills to make work that attracts new customers, wins new clients, and makes a valuable contribution to your agency’s continued success.'),
(109, 59, '_about_role', 'field_668faabce879b'),
(110, 59, 'about_training', '<h2>Training</h2>\r\n<h3>Ad School</h3>\r\n<strong>School of Communication Arts 2.0</strong>\r\n\r\nLondon portfolio course Sep-23 – Jul-24.\r\n<h3>Creative Masterclasses</h3>\r\n<strong>Cannes Lions School of Creativity</strong>\r\n\r\nCopywriting Aug-21; Storytelling Jul-21; Creative Thinking Jun-21; Creative Effectiveness Nov-21; Creative Leadership Dec-21; Marketing Strategy (with WARC) Dec-22.\r\n\r\n<strong>D&amp;AD</strong>\r\n\r\nCopywriting for Impact Jun-24; Copywriting for Brands Sep-19; Writing for Advertising Jan-19; Storytelling for Action Mar-22; Storytelling &amp; The Internet Feb-19; Creative Advertising Ideas That Sell Oct-18; Brand Strategy for Creatives Mar-19.\r\n\r\n<strong>Ogilvy </strong>\r\n\r\nSocial Media Oct-21; Behavioural Science for Effective Messaging Dec-22; Applied Behavioural Science May-22; Behavioural Economics Jul-21.\r\n\r\n<strong>University of the Arts London</strong>\r\n\r\nConfident Copywriting Jun-17; Creative Copywriting Jul-16; Introduction to Advertising Mar-17.'),
(111, 59, '_about_training', 'field_668faaede879c'),
(112, 59, 'about_video', ''),
(113, 59, '_about_video', 'field_668faafbe879d'),
(114, 60, '_wp_attached_file', '2024/07/Old-Spice-end.mp4'),
(115, 60, '_wp_attachment_metadata', 'a:11:{s:7:\"bitrate\";i:15674023;s:8:\"filesize\";i:30721648;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:15;s:16:\"length_formatted\";s:4:\"0:15\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:9:{s:10:\"dataformat\";s:3:\"mp4\";s:7:\"bitrate\";i:317020;s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.20639322916666666;}s:17:\"created_timestamp\";i:1720472135;}'),
(116, 61, 'about_name', 'James Louis'),
(117, 61, '_about_name', 'field_668faa85e8799'),
(118, 61, 'about_image', '58'),
(119, 61, '_about_image', 'field_668faab1e879a'),
(120, 61, 'about_role', '<h2>CREATIVE / COPYWRITER</h2>\r\nTechnologies evolve at lightspeed. Us humans, not so much. From age-old words and archetypal stories, to deep learning and virtual CREATIVE / COPYWRITER, putting pen to paper can make the difference between standard and standout. Commercial failure or success. What I’m trying to say is, great writing in service of a big idea changes things, people, the world even. Every time I write, I am trying to change the world. From joining Tibetan pilgrims in Lhasa, and gathering in silence as night falls on the Golden Temple in Amritsar, to trekking through the jungles of Borneo, and looking out over white-capped peaks from Everest base camp; I am challenged and rewarded by travelling, thinking, reading and writing. I have honed my craft with School of Communication Arts 2.0, Cannes Lions School of Creativity, D&amp;AD, University of the Arts London, Faber Academy, Arvon, and privately. I can draw upon an uncommon blend of creative and commercial skills to make work that attracts new customers, wins new clients, and makes a valuable contribution to your agency’s continued success.'),
(121, 61, '_about_role', 'field_668faabce879b'),
(122, 61, 'about_training', '<h2>Training</h2>\r\n<h3>Ad School</h3>\r\n<strong>School of Communication Arts 2.0</strong>\r\n\r\nLondon portfolio course Sep-23 – Jul-24.\r\n<h3>Creative Masterclasses</h3>\r\n<strong>Cannes Lions School of Creativity</strong>\r\n\r\nCopywriting Aug-21; Storytelling Jul-21; Creative Thinking Jun-21; Creative Effectiveness Nov-21; Creative Leadership Dec-21; Marketing Strategy (with WARC) Dec-22.\r\n\r\n<strong>D&amp;AD</strong>\r\n\r\nCopywriting for Impact Jun-24; Copywriting for Brands Sep-19; Writing for Advertising Jan-19; Storytelling for Action Mar-22; Storytelling &amp; The Internet Feb-19; Creative Advertising Ideas That Sell Oct-18; Brand Strategy for Creatives Mar-19.\r\n\r\n<strong>Ogilvy </strong>\r\n\r\nSocial Media Oct-21; Behavioural Science for Effective Messaging Dec-22; Applied Behavioural Science May-22; Behavioural Economics Jul-21.\r\n\r\n<strong>University of the Arts London</strong>\r\n\r\nConfident Copywriting Jun-17; Creative Copywriting Jul-16; Introduction to Advertising Mar-17.'),
(123, 61, '_about_training', 'field_668faaede879c'),
(124, 61, 'about_video', '60'),
(125, 61, '_about_video', 'field_668faafbe879d'),
(126, 62, '_wp_attached_file', '2024/07/Old-Spice-start.mp4'),
(127, 62, '_wp_attachment_metadata', 'a:11:{s:7:\"bitrate\";i:19989934;s:8:\"filesize\";i:38671771;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:15;s:16:\"length_formatted\";s:4:\"0:15\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:9:{s:10:\"dataformat\";s:3:\"mp4\";s:7:\"bitrate\";i:317017;s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.20639127604166665;}s:17:\"created_timestamp\";i:1720472026;}'),
(128, 53, 'asda_link', 'a:3:{s:5:\"title\";s:4:\"ASDA\";s:3:\"url\";s:41:\"http://localhost:8888/wporg_product/asda/\";s:6:\"target\";s:0:\"\";}'),
(129, 53, '_asda_link', 'field_668f8ba9c78fd'),
(130, 53, 'mother_link', 'a:3:{s:5:\"title\";s:13:\"Mother Nutter\";s:3:\"url\";s:50:\"http://localhost:8888/wporg_product/mother-nutter/\";s:6:\"target\";s:0:\"\";}'),
(131, 53, '_mother_link', 'field_668f8be4c78fe'),
(132, 53, 'reddit_link', 'a:3:{s:5:\"title\";s:6:\"Reddit\";s:3:\"url\";s:43:\"http://localhost:8888/wporg_product/reddit/\";s:6:\"target\";s:0:\"\";}'),
(133, 53, '_reddit_link', 'field_668f8bfbc78ff'),
(134, 53, 'liquid_link', 'a:3:{s:5:\"title\";s:12:\"Liquid Death\";s:3:\"url\";s:49:\"http://localhost:8888/wporg_product/liquid-death/\";s:6:\"target\";s:0:\"\";}'),
(135, 53, '_liquid_link', 'field_668f8c12c7900'),
(136, 53, 'nasa_link', 'a:3:{s:5:\"title\";s:4:\"NASA\";s:3:\"url\";s:41:\"http://localhost:8888/wporg_product/nasa/\";s:6:\"target\";s:0:\"\";}'),
(137, 53, '_nasa_link', 'field_668f8c42c7901'),
(138, 53, 'kraft_link', 'a:3:{s:5:\"title\";s:5:\"Kraft\";s:3:\"url\";s:42:\"http://localhost:8888/wporg_product/kraft/\";s:6:\"target\";s:0:\"\";}'),
(139, 53, '_kraft_link', 'field_668f8c53c7902'),
(140, 53, 'extra_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:3:\"###\";s:6:\"target\";s:0:\"\";}'),
(141, 53, '_extra_link', 'field_668f904eefa8a'),
(142, 53, 'home_video', '62'),
(143, 53, '_home_video', 'field_668f9064efa8c'),
(144, 63, 'asda_link', ''),
(145, 63, '_asda_link', 'field_668f8ba9c78fd'),
(146, 63, 'mother_link', ''),
(147, 63, '_mother_link', 'field_668f8be4c78fe'),
(148, 63, 'reddit_link', ''),
(149, 63, '_reddit_link', 'field_668f8bfbc78ff'),
(150, 63, 'liquid_link', ''),
(151, 63, '_liquid_link', 'field_668f8c12c7900'),
(152, 63, 'nasa_link', ''),
(153, 63, '_nasa_link', 'field_668f8c42c7901'),
(154, 63, 'kraft_link', ''),
(155, 63, '_kraft_link', 'field_668f8c53c7902'),
(156, 63, 'extra_link', ''),
(157, 63, '_extra_link', 'field_668f904eefa8a'),
(158, 63, 'home_video', '62'),
(159, 63, '_home_video', 'field_668f9064efa8c'),
(160, 64, 'asda_link', ''),
(161, 64, '_asda_link', 'field_668f8ba9c78fd'),
(162, 64, 'mother_link', ''),
(163, 64, '_mother_link', 'field_668f8be4c78fe'),
(164, 64, 'reddit_link', ''),
(165, 64, '_reddit_link', 'field_668f8bfbc78ff'),
(166, 64, 'liquid_link', ''),
(167, 64, '_liquid_link', 'field_668f8c12c7900'),
(168, 64, 'nasa_link', ''),
(169, 64, '_nasa_link', 'field_668f8c42c7901'),
(170, 64, 'kraft_link', ''),
(171, 64, '_kraft_link', 'field_668f8c53c7902'),
(172, 64, 'extra_link', ''),
(173, 64, '_extra_link', 'field_668f904eefa8a'),
(174, 64, 'home_video', ''),
(175, 64, '_home_video', 'field_668f9064efa8c'),
(176, 65, 'asda_link', ''),
(177, 65, '_asda_link', 'field_668f8ba9c78fd'),
(178, 65, 'mother_link', ''),
(179, 65, '_mother_link', 'field_668f8be4c78fe'),
(180, 65, 'reddit_link', ''),
(181, 65, '_reddit_link', 'field_668f8bfbc78ff'),
(182, 65, 'liquid_link', ''),
(183, 65, '_liquid_link', 'field_668f8c12c7900'),
(184, 65, 'nasa_link', ''),
(185, 65, '_nasa_link', 'field_668f8c42c7901'),
(186, 65, 'kraft_link', ''),
(187, 65, '_kraft_link', 'field_668f8c53c7902'),
(188, 65, 'extra_link', ''),
(189, 65, '_extra_link', 'field_668f904eefa8a'),
(190, 65, 'home_video', '62'),
(191, 65, '_home_video', 'field_668f9064efa8c'),
(192, 66, '_menu_item_type', 'post_type'),
(193, 66, '_menu_item_menu_item_parent', '0'),
(194, 66, '_menu_item_object_id', '53'),
(195, 66, '_menu_item_object', 'page'),
(196, 66, '_menu_item_target', ''),
(197, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(198, 66, '_menu_item_xfn', ''),
(199, 66, '_menu_item_url', ''),
(200, 66, '_menu_item_orphaned', '1721030398'),
(202, 25, '_wp_old_date', '2024-07-11'),
(203, 40, '_wp_old_date', '2024-07-11'),
(204, 67, '_menu_item_type', 'post_type'),
(205, 67, '_menu_item_menu_item_parent', '0'),
(206, 67, '_menu_item_object_id', '53'),
(207, 67, '_menu_item_object', 'page'),
(208, 67, '_menu_item_target', ''),
(209, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(210, 67, '_menu_item_xfn', ''),
(211, 67, '_menu_item_url', ''),
(212, 69, '_menu_item_type', 'post_type'),
(213, 69, '_menu_item_menu_item_parent', '0'),
(214, 69, '_menu_item_object_id', '41'),
(215, 69, '_menu_item_object', 'wporg_product'),
(216, 69, '_menu_item_target', ''),
(217, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(218, 69, '_menu_item_xfn', ''),
(219, 69, '_menu_item_url', ''),
(221, 67, '_wp_old_date', '2024-07-15'),
(222, 25, '_wp_old_date', '2024-07-15'),
(223, 40, '_wp_old_date', '2024-07-15'),
(224, 70, '_edit_last', '1'),
(225, 70, '_edit_lock', '1721282640:1'),
(226, 77, '_wp_attached_file', '2024/07/asda-LOGO-white.png'),
(227, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:779;s:6:\"height\";i:229;s:4:\"file\";s:27:\"2024/07/asda-LOGO-white.png\";s:8:\"filesize\";i:10241;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"asda-LOGO-white-300x88.png\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5742;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"asda-LOGO-white-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3309;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"asda-LOGO-white-768x226.png\";s:5:\"width\";i:768;s:6:\"height\";i:226;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18001;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 78, '_wp_attached_file', '2024/07/1.png'),
(229, 78, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:2160;s:4:\"file\";s:13:\"2024/07/1.png\";s:8:\"filesize\";i:1126510;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"1-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45698;}s:5:\"large\";a:5:{s:4:\"file\";s:14:\"1-683x1024.png\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:352920;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22877;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"1-768x1152.png\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:431439;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:15:\"1-1024x1536.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:714859;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:15:\"1-1365x2048.png\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1161389;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 79, '_wp_attached_file', '2024/07/2.png'),
(231, 79, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:2160;s:4:\"file\";s:13:\"2024/07/2.png\";s:8:\"filesize\";i:1243169;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"2-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55765;}s:5:\"large\";a:5:{s:4:\"file\";s:14:\"2-683x1024.png\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:397999;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29383;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"2-768x1152.png\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:483116;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:15:\"2-1024x1536.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:786320;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:15:\"2-1365x2048.png\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1260454;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 80, '_wp_attached_file', '2024/07/3.png'),
(233, 80, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:2160;s:4:\"file\";s:13:\"2024/07/3.png\";s:8:\"filesize\";i:973803;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"3-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44617;}s:5:\"large\";a:5:{s:4:\"file\";s:14:\"3-683x1024.png\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:310213;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22400;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"3-768x1152.png\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:375842;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:15:\"3-1024x1536.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:618604;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:15:\"3-1365x2048.png\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:997757;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 41, 'client_logo', '77'),
(235, 41, '_client_logo', 'field_6697d0200a3b4'),
(236, 41, 'client_body', 'Asda’s prices are a steal.'),
(237, 41, '_client_body', 'field_6697d08c0a3b5'),
(238, 41, 'client_repeater_0_client_slide', '78'),
(239, 41, '_client_repeater_0_client_slide', 'field_6697d1630a3b8'),
(240, 41, 'client_repeater_1_client_slide', '79'),
(241, 41, '_client_repeater_1_client_slide', 'field_6697d1630a3b8'),
(242, 41, 'client_repeater_2_client_slide', '80'),
(243, 41, '_client_repeater_2_client_slide', 'field_6697d1630a3b8'),
(244, 41, 'client_repeater', '3'),
(245, 41, '_client_repeater', 'field_6697d1110a3b7'),
(246, 1, '_wp_trash_meta_status', 'publish'),
(247, 1, '_wp_trash_meta_time', '1721371582'),
(248, 1, '_wp_desired_post_slug', 'hello-world'),
(249, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(250, 82, 'asda_link', 'a:3:{s:5:\"title\";s:4:\"ASDA\";s:3:\"url\";s:41:\"http://localhost:8888/wporg_product/asda/\";s:6:\"target\";s:0:\"\";}'),
(251, 82, '_asda_link', 'field_668f8ba9c78fd'),
(252, 82, 'mother_link', 'a:3:{s:5:\"title\";s:13:\"Mother Nutter\";s:3:\"url\";s:50:\"http://localhost:8888/wporg_product/mother-nutter/\";s:6:\"target\";s:0:\"\";}'),
(253, 82, '_mother_link', 'field_668f8be4c78fe'),
(254, 82, 'reddit_link', 'a:3:{s:5:\"title\";s:6:\"Reddit\";s:3:\"url\";s:43:\"http://localhost:8888/wporg_product/reddit/\";s:6:\"target\";s:0:\"\";}'),
(255, 82, '_reddit_link', 'field_668f8bfbc78ff'),
(256, 82, 'liquid_link', 'a:3:{s:5:\"title\";s:12:\"Liquid Death\";s:3:\"url\";s:49:\"http://localhost:8888/wporg_product/liquid-death/\";s:6:\"target\";s:0:\"\";}'),
(257, 82, '_liquid_link', 'field_668f8c12c7900'),
(258, 82, 'nasa_link', 'a:3:{s:5:\"title\";s:4:\"NASA\";s:3:\"url\";s:41:\"http://localhost:8888/wporg_product/nasa/\";s:6:\"target\";s:0:\"\";}'),
(259, 82, '_nasa_link', 'field_668f8c42c7901'),
(260, 82, 'kraft_link', 'a:3:{s:5:\"title\";s:5:\"Kraft\";s:3:\"url\";s:42:\"http://localhost:8888/wporg_product/kraft/\";s:6:\"target\";s:0:\"\";}'),
(261, 82, '_kraft_link', 'field_668f8c53c7902'),
(262, 82, 'extra_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:3:\"###\";s:6:\"target\";s:0:\"\";}'),
(263, 82, '_extra_link', 'field_668f904eefa8a'),
(264, 82, 'home_video', '62'),
(265, 82, '_home_video', 'field_668f9064efa8c'),
(266, 46, 'client_logo', ''),
(267, 46, '_client_logo', 'field_6697d0200a3b4'),
(268, 46, 'client_body', ''),
(269, 46, '_client_body', 'field_6697d08c0a3b5'),
(270, 46, 'client_repeater', ''),
(271, 46, '_client_repeater', 'field_6697d1110a3b7'),
(272, 45, 'client_logo', ''),
(273, 45, '_client_logo', 'field_6697d0200a3b4'),
(274, 45, 'client_body', ''),
(275, 45, '_client_body', 'field_6697d08c0a3b5'),
(276, 45, 'client_repeater', ''),
(277, 45, '_client_repeater', 'field_6697d1110a3b7'),
(278, 43, 'client_logo', ''),
(279, 43, '_client_logo', 'field_6697d0200a3b4'),
(280, 43, 'client_body', ''),
(281, 43, '_client_body', 'field_6697d08c0a3b5'),
(282, 43, 'client_repeater', ''),
(283, 43, '_client_repeater', 'field_6697d1110a3b7'),
(284, 42, 'client_logo', ''),
(285, 42, '_client_logo', 'field_6697d0200a3b4'),
(286, 42, 'client_body', ''),
(287, 42, '_client_body', 'field_6697d08c0a3b5'),
(288, 42, 'client_repeater', ''),
(289, 42, '_client_repeater', 'field_6697d1110a3b7'),
(290, 83, 'about_name', 'James Louis'),
(291, 83, '_about_name', 'field_668faa85e8799'),
(292, 83, 'about_image', '58'),
(293, 83, '_about_image', 'field_668faab1e879a'),
(294, 83, 'about_role', '<h2>CREATIVE / COPYWRITER</h2>\r\nTechnologies evolve at lightspeed. Us humans, not so much. From age-old words and archetypal stories, to deep learning and virtual CREATIVE / COPYWRITER, putting pen to paper can make the difference between standard and standout. Commercial failure or success. What I’m trying to say is, great writing in service of a big idea changes things, people, the world even. Every time I write, I am trying to change the world.\r\n\r\nFrom joining Tibetan pilgrims in Lhasa, and gathering in silence as night falls on the Golden Temple in Amritsar, to trekking through the jungles of Borneo, and looking out over white-capped peaks from Everest base camp; I am challenged and rewarded by travelling, thinking, reading and writing.\r\n\r\nI have honed my craft with School of Communication Arts 2.0, Cannes Lions School of Creativity, D&amp;AD, University of the Arts London, Faber Academy, Arvon, and privately. I can draw upon an uncommon blend of creative and commercial skills to make work that attracts new customers, wins new clients, and makes a valuable contribution to your agency’s continued success.'),
(295, 83, '_about_role', 'field_668faabce879b'),
(296, 83, 'about_training', '<h2>Training</h2>\r\n<h3>Ad School</h3>\r\n<strong>School of Communication Arts 2.0</strong>\r\n\r\nLondon portfolio course Sep-23 – Jul-24.\r\n<h3>Creative Masterclasses</h3>\r\n<strong>Cannes Lions School of Creativity</strong>\r\n\r\nCopywriting Aug-21; Storytelling Jul-21; Creative Thinking Jun-21; Creative Effectiveness Nov-21; Creative Leadership Dec-21; Marketing Strategy (with WARC) Dec-22.\r\n\r\n<strong>D&amp;AD</strong>\r\n\r\nCopywriting for Impact Jun-24; Copywriting for Brands Sep-19; Writing for Advertising Jan-19; Storytelling for Action Mar-22; Storytelling &amp; The Internet Feb-19; Creative Advertising Ideas That Sell Oct-18; Brand Strategy for Creatives Mar-19.\r\n\r\n<strong>Ogilvy </strong>\r\n\r\nSocial Media Oct-21; Behavioural Science for Effective Messaging Dec-22; Applied Behavioural Science May-22; Behavioural Economics Jul-21.\r\n\r\n<strong>University of the Arts London</strong>\r\n\r\nConfident Copywriting Jun-17; Creative Copywriting Jul-16; Introduction to Advertising Mar-17.'),
(297, 83, '_about_training', 'field_668faaede879c'),
(298, 83, 'about_video', '60'),
(299, 83, '_about_video', 'field_668faafbe879d');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-07-09 16:12:16', '2024-07-09 15:12:16', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2024-07-19 07:46:22', '2024-07-19 06:46:22', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2024-07-09 16:12:16', '2024-07-09 15:12:16', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2024-07-10 15:37:36', '2024-07-10 14:37:36', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-07-10 15:40:42', '2024-07-10 14:40:42', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2024-07-10 15:40:42', '2024-07-10 14:40:42', '', 0, 'http://localhost:8888/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-07-09 16:12:17', '2024-07-09 15:12:17', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-07-09 16:12:17', '2024-07-09 15:12:17', '', 0, 'http://localhost:8888/2024/07/09/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2024-07-10 13:48:42', '2024-07-10 12:48:42', 'a:16:{s:10:\"page_title\";s:13:\"Site Settings\";s:9:\"menu_slug\";s:13:\"site-settings\";s:11:\"parent_slug\";s:4:\"none\";s:22:\"advanced_configuration\";i:0;s:8:\"icon_url\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:8:\"position\";s:0:\"\";s:8:\"redirect\";i:0;s:11:\"description\";s:0:\"\";s:9:\"menu_icon\";a:2:{s:4:\"type\";s:9:\"dashicons\";s:5:\"value\";s:23:\"dashicons-admin-generic\";}s:13:\"update_button\";s:6:\"Update\";s:15:\"updated_message\";s:15:\"Options Updated\";s:10:\"capability\";s:10:\"edit_posts\";s:12:\"data_storage\";s:7:\"options\";s:7:\"post_id\";s:0:\"\";s:8:\"autoload\";i:0;}', 'Site Settings', 'site-settings', 'publish', 'closed', 'closed', '', 'ui_options_page_668e83208a486', '', '', '2024-07-10 13:48:42', '2024-07-10 12:48:42', '', 0, 'http://localhost:8888/?post_type=acf-ui-options-page&#038;p=7', 0, 'acf-ui-options-page', '', 0),
(8, 1, '2024-07-10 15:08:33', '2024-07-10 14:08:33', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"site-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Site Settings', 'site-settings', 'publish', 'closed', 'closed', '', 'group_668e832f3f8cf', '', '', '2024-07-10 16:23:38', '2024-07-10 15:23:38', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2024-07-10 15:08:33', '2024-07-10 14:08:33', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'Main', 'main', 'publish', 'closed', 'closed', '', 'field_668e832f92667', '', '', '2024-07-10 15:08:33', '2024-07-10 14:08:33', '', 8, 'http://localhost:8888/?post_type=acf-field&p=9', 0, 'acf-field', '', 0),
(10, 1, '2024-07-10 15:08:33', '2024-07-10 14:08:33', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Background wallpaper', 'bg_wallpaper', 'publish', 'closed', 'closed', '', 'field_668e834692668', '', '', '2024-07-10 15:08:33', '2024-07-10 14:08:33', '', 8, 'http://localhost:8888/?post_type=acf-field&p=10', 1, 'acf-field', '', 0),
(11, 1, '2024-07-10 15:08:33', '2024-07-10 14:08:33', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'field_668e835f92669', '', '', '2024-07-10 15:11:15', '2024-07-10 14:11:15', '', 8, 'http://localhost:8888/?post_type=acf-field&#038;p=11', 3, 'acf-field', '', 0),
(12, 1, '2024-07-10 15:11:15', '2024-07-10 14:11:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Contact email', 'contact_email', 'publish', 'closed', 'closed', '', 'field_668e964ce91ed', '', '', '2024-07-10 15:11:15', '2024-07-10 14:11:15', '', 8, 'http://localhost:8888/?post_type=acf-field&p=12', 2, 'acf-field', '', 0),
(13, 1, '2024-07-10 15:11:15', '2024-07-10 14:11:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'LinkedIn Link', 'linkedin_link', 'publish', 'closed', 'closed', '', 'field_668e9662e91ee', '', '', '2024-07-10 15:11:15', '2024-07-10 14:11:15', '', 8, 'http://localhost:8888/?post_type=acf-field&p=13', 4, 'acf-field', '', 0),
(14, 1, '2024-07-10 15:11:15', '2024-07-10 14:11:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'TikTok Link', 'tiktok_link', 'publish', 'closed', 'closed', '', 'field_668e9670e91ef', '', '', '2024-07-10 15:11:15', '2024-07-10 14:11:15', '', 8, 'http://localhost:8888/?post_type=acf-field&p=14', 5, 'acf-field', '', 0),
(15, 1, '2024-07-10 15:37:36', '2024-07-10 14:37:36', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-07-10 15:37:36', '2024-07-10 14:37:36', '', 2, 'http://localhost:8888/?p=15', 0, 'revision', '', 0),
(17, 1, '2024-07-10 15:40:42', '2024-07-10 14:40:42', '', 'WORK', '', 'publish', 'closed', 'closed', '', 'work', '', '', '2024-07-10 15:40:42', '2024-07-10 14:40:42', '', 0, 'http://localhost:8888/?page_id=17', 0, 'page', '', 0),
(18, 1, '2024-07-10 15:38:06', '2024-07-10 14:38:06', '', 'WORK', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2024-07-10 15:38:06', '2024-07-10 14:38:06', '', 17, 'http://localhost:8888/?p=18', 0, 'revision', '', 0),
(19, 1, '2024-07-10 15:40:42', '2024-07-10 14:40:42', '', 'ME', '', 'publish', 'closed', 'closed', '', 'me', '', '', '2024-07-19 12:34:08', '2024-07-19 11:34:08', '', 0, 'http://localhost:8888/?page_id=19', 0, 'page', '', 0),
(20, 1, '2024-07-10 15:38:17', '2024-07-10 14:38:17', '', 'ME', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-07-10 15:38:17', '2024-07-10 14:38:17', '', 19, 'http://localhost:8888/?p=20', 0, 'revision', '', 0),
(21, 1, '2024-07-10 15:39:15', '2024-07-10 14:39:15', '{\n    \"nav_menu[-3455551551277663000]\": {\n        \"value\": {\n            \"name\": \"main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-07-10 14:39:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd86e3a4-8a73-4a86-82f4-f08b7ce41dd7', '', '', '2024-07-10 15:39:15', '2024-07-10 14:39:15', '', 0, 'http://localhost:8888/2024/07/10/bd86e3a4-8a73-4a86-82f4-f08b7ce41dd7/', 0, 'customize_changeset', '', 0),
(23, 1, '2024-07-10 15:40:42', '2024-07-10 14:40:42', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2024-07-10 15:40:42', '2024-07-10 14:40:42', '', 3, 'http://localhost:8888/?p=23', 0, 'revision', '', 0),
(24, 1, '2024-07-10 15:43:44', '2024-07-10 14:43:44', '{\n    \"nav_menu_item[-3200046159849376000]\": {\n        \"value\": {\n            \"object_id\": 19,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"ME\",\n            \"url\": \"http://localhost:8888/me/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"ME\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-07-10 14:43:44\"\n    },\n    \"nav_menu_item[-9172660552109315000]\": {\n        \"value\": {\n            \"object_id\": 17,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"WORK\",\n            \"url\": \"http://localhost:8888/work/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"WORK\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-07-10 14:43:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e02d2436-f47d-42bc-a6b3-0fc773079640', '', '', '2024-07-10 15:43:44', '2024-07-10 14:43:44', '', 0, 'http://localhost:8888/2024/07/10/e02d2436-f47d-42bc-a6b3-0fc773079640/', 0, 'customize_changeset', '', 0),
(25, 1, '2024-07-17 14:51:26', '2024-07-10 14:43:44', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2024-07-17 14:51:26', '2024-07-17 13:51:26', '', 0, 'http://localhost:8888/2024/07/10/25/', 3, 'nav_menu_item', '', 0),
(27, 1, '2024-07-10 15:48:57', '2024-07-10 14:48:57', '', 'James-Louis-Background-WallpaperOnly', '', 'inherit', 'open', 'closed', '', 'james-louis-background-wallpaperonly', '', '', '2024-07-10 15:48:57', '2024-07-10 14:48:57', '', 0, 'http://localhost:8888/wp-content/uploads/2024/07/James-Louis-Background-WallpaperOnly.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2024-07-10 16:23:38', '2024-07-10 15:23:38', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Copyright', 'footer_copy', 'publish', 'closed', 'closed', '', 'field_668ea74e9cf84', '', '', '2024-07-10 16:23:38', '2024-07-10 15:23:38', '', 8, 'http://localhost:8888/?post_type=acf-field&p=28', 6, 'acf-field', '', 0),
(29, 1, '2024-07-11 08:40:17', '2024-07-11 07:40:17', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"53\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Homepage', 'homepage', 'publish', 'closed', 'closed', '', 'group_668f8b7e65db7', '', '', '2024-07-12 09:04:10', '2024-07-12 08:04:10', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=29', 0, 'acf-field-group', '', 0),
(30, 1, '2024-07-11 08:40:17', '2024-07-11 07:40:17', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'Bottles', 'bottles', 'publish', 'closed', 'closed', '', 'field_668f8b7ec78fc', '', '', '2024-07-11 08:40:17', '2024-07-11 07:40:17', '', 29, 'http://localhost:8888/?post_type=acf-field&p=30', 0, 'acf-field', '', 0),
(31, 1, '2024-07-11 08:40:17', '2024-07-11 07:40:17', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'ASDA Link', 'asda_link', 'publish', 'closed', 'closed', '', 'field_668f8ba9c78fd', '', '', '2024-07-11 08:40:17', '2024-07-11 07:40:17', '', 29, 'http://localhost:8888/?post_type=acf-field&p=31', 1, 'acf-field', '', 0),
(32, 1, '2024-07-11 08:40:17', '2024-07-11 07:40:17', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Mother Nutter Link', 'mother_link', 'publish', 'closed', 'closed', '', 'field_668f8be4c78fe', '', '', '2024-07-11 08:40:17', '2024-07-11 07:40:17', '', 29, 'http://localhost:8888/?post_type=acf-field&p=32', 2, 'acf-field', '', 0),
(33, 1, '2024-07-11 08:40:17', '2024-07-11 07:40:17', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Reddit Link', 'reddit_link', 'publish', 'closed', 'closed', '', 'field_668f8bfbc78ff', '', '', '2024-07-11 08:40:17', '2024-07-11 07:40:17', '', 29, 'http://localhost:8888/?post_type=acf-field&p=33', 3, 'acf-field', '', 0),
(34, 1, '2024-07-11 08:40:17', '2024-07-11 07:40:17', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Liquid Death Link', 'liquid_link', 'publish', 'closed', 'closed', '', 'field_668f8c12c7900', '', '', '2024-07-11 08:40:17', '2024-07-11 07:40:17', '', 29, 'http://localhost:8888/?post_type=acf-field&p=34', 4, 'acf-field', '', 0),
(35, 1, '2024-07-11 08:40:17', '2024-07-11 07:40:17', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'NASA Link', 'nasa_link', 'publish', 'closed', 'closed', '', 'field_668f8c42c7901', '', '', '2024-07-11 08:40:17', '2024-07-11 07:40:17', '', 29, 'http://localhost:8888/?post_type=acf-field&p=35', 5, 'acf-field', '', 0),
(36, 1, '2024-07-11 08:40:17', '2024-07-11 07:40:17', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Kraft Link', 'kraft_link', 'publish', 'closed', 'closed', '', 'field_668f8c53c7902', '', '', '2024-07-11 08:40:17', '2024-07-11 07:40:17', '', 29, 'http://localhost:8888/?post_type=acf-field&p=36', 6, 'acf-field', '', 0),
(37, 1, '2024-07-11 08:58:02', '2024-07-11 07:58:02', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Extra Link', 'extra_link', 'publish', 'closed', 'closed', '', 'field_668f904eefa8a', '', '', '2024-07-11 08:58:02', '2024-07-11 07:58:02', '', 29, 'http://localhost:8888/?post_type=acf-field&p=37', 7, 'acf-field', '', 0),
(38, 1, '2024-07-11 08:58:02', '2024-07-11 07:58:02', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'Video', 'video', 'publish', 'closed', 'closed', '', 'field_668f905cefa8b', '', '', '2024-07-11 08:58:02', '2024-07-11 07:58:02', '', 29, 'http://localhost:8888/?post_type=acf-field&p=38', 8, 'acf-field', '', 0),
(39, 1, '2024-07-11 08:58:02', '2024-07-11 07:58:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Video', 'home_video', 'publish', 'closed', 'closed', '', 'field_668f9064efa8c', '', '', '2024-07-12 09:04:10', '2024-07-12 08:04:10', '', 29, 'http://localhost:8888/?post_type=acf-field&#038;p=39', 9, 'acf-field', '', 0),
(40, 1, '2024-07-17 14:51:26', '2024-07-11 08:58:03', '', '<i class=\"fa-regular fa-envelope\"></i>', '', 'publish', 'closed', 'closed', '', '40', '', '', '2024-07-17 14:51:26', '2024-07-17 13:51:26', '', 0, 'http://localhost:8888/?p=40', 4, 'nav_menu_item', '', 0),
(41, 1, '2024-07-11 10:33:47', '2024-07-11 09:33:47', '', 'ASDA', '', 'publish', 'closed', 'closed', '', 'asda', '', '', '2024-07-18 07:02:32', '2024-07-18 06:02:32', '', 0, 'http://localhost:8888/?post_type=wporg_product&#038;p=41', 0, 'wporg_product', '', 0),
(42, 1, '2024-07-11 10:20:08', '2024-07-11 09:20:08', '', 'Mother Nutter', '', 'publish', 'closed', 'closed', '', 'mother-nutter', '', '', '2024-07-19 08:39:47', '2024-07-19 07:39:47', '', 0, 'http://localhost:8888/?post_type=wporg_product&#038;p=42', 0, 'wporg_product', '', 0),
(43, 1, '2024-07-11 10:49:08', '2024-07-11 09:49:08', '', 'Reddit', '', 'publish', 'closed', 'closed', '', 'reddit', '', '', '2024-07-19 08:39:33', '2024-07-19 07:39:33', '', 0, 'http://localhost:8888/?post_type=wporg_product&#038;p=43', 0, 'wporg_product', '', 0),
(44, 1, '2024-07-11 10:35:08', '2024-07-11 09:35:08', '', 'Liquid Death', '', 'publish', 'closed', 'closed', '', 'liquid-death', '', '', '2024-07-11 10:35:08', '2024-07-11 09:35:08', '', 0, 'http://localhost:8888/?post_type=wporg_product&#038;p=44', 0, 'wporg_product', '', 0),
(45, 1, '2024-07-11 10:38:08', '2024-07-11 09:38:08', '', 'NASA', '', 'publish', 'closed', 'closed', '', 'nasa', '', '', '2024-07-19 08:39:23', '2024-07-19 07:39:23', '', 0, 'http://localhost:8888/?post_type=wporg_product&#038;p=45', 0, 'wporg_product', '', 0),
(46, 1, '2024-07-11 10:37:08', '2024-07-11 09:37:08', '', 'Kraft', '', 'publish', 'closed', 'closed', '', 'kraft', '', '', '2024-07-19 08:38:41', '2024-07-19 07:38:41', '', 0, 'http://localhost:8888/?post_type=wporg_product&#038;p=46', 0, 'wporg_product', '', 0),
(47, 1, '2024-07-11 10:51:34', '2024-07-11 09:51:34', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"19\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About', 'about', 'publish', 'closed', 'closed', '', 'group_668faa85537ac', '', '', '2024-07-11 10:51:34', '2024-07-11 09:51:34', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2024-07-11 10:51:34', '2024-07-11 09:51:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Name', 'about_name', 'publish', 'closed', 'closed', '', 'field_668faa85e8799', '', '', '2024-07-11 10:51:34', '2024-07-11 09:51:34', '', 47, 'http://localhost:8888/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2024-07-11 10:51:34', '2024-07-11 09:51:34', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image', 'about_image', 'publish', 'closed', 'closed', '', 'field_668faab1e879a', '', '', '2024-07-11 10:51:34', '2024-07-11 09:51:34', '', 47, 'http://localhost:8888/?post_type=acf-field&p=49', 1, 'acf-field', '', 0),
(50, 1, '2024-07-11 10:51:34', '2024-07-11 09:51:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Role', 'about_role', 'publish', 'closed', 'closed', '', 'field_668faabce879b', '', '', '2024-07-11 10:51:34', '2024-07-11 09:51:34', '', 47, 'http://localhost:8888/?post_type=acf-field&p=50', 2, 'acf-field', '', 0),
(51, 1, '2024-07-11 10:51:34', '2024-07-11 09:51:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Training', 'about_training', 'publish', 'closed', 'closed', '', 'field_668faaede879c', '', '', '2024-07-11 10:51:34', '2024-07-11 09:51:34', '', 47, 'http://localhost:8888/?post_type=acf-field&p=51', 3, 'acf-field', '', 0),
(52, 1, '2024-07-11 10:51:34', '2024-07-11 09:51:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Video', 'about_video', 'publish', 'closed', 'closed', '', 'field_668faafbe879d', '', '', '2024-07-11 10:51:34', '2024-07-11 09:51:34', '', 47, 'http://localhost:8888/?post_type=acf-field&p=52', 4, 'acf-field', '', 0),
(53, 1, '2024-07-11 10:52:07', '2024-07-11 09:52:07', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-07-19 07:48:52', '2024-07-19 06:48:52', '', 0, 'http://localhost:8888/?page_id=53', 0, 'page', '', 0),
(54, 1, '2024-07-11 10:51:56', '2024-07-11 09:51:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2024-07-11 10:51:56', '2024-07-11 09:51:56', '', 53, 'http://localhost:8888/?p=54', 0, 'revision', '', 0),
(55, 1, '2024-07-11 13:54:15', '2024-07-11 12:54:15', '', 'Old Spice', '', 'inherit', 'open', 'closed', '', 'old-spice', '', '', '2024-07-11 14:10:20', '2024-07-11 13:10:20', '', 19, 'http://localhost:8888/wp-content/uploads/2024/07/Old-Spice.jpeg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2024-07-11 14:02:47', '2024-07-11 13:02:47', '', 'ME', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-07-11 14:02:47', '2024-07-11 13:02:47', '', 19, 'http://localhost:8888/?p=56', 0, 'revision', '', 0),
(57, 1, '2024-07-11 14:10:23', '2024-07-11 13:10:23', '', 'ME', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-07-11 14:10:23', '2024-07-11 13:10:23', '', 19, 'http://localhost:8888/?p=57', 0, 'revision', '', 0),
(58, 1, '2024-07-11 14:36:38', '2024-07-11 13:36:38', '', 'spiceboy', '', 'inherit', 'open', 'closed', '', 'spiceboy', '', '', '2024-07-11 14:36:38', '2024-07-11 13:36:38', '', 19, 'http://localhost:8888/wp-content/uploads/2024/07/spiceboy.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2024-07-11 14:36:47', '2024-07-11 13:36:47', '', 'ME', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-07-11 14:36:47', '2024-07-11 13:36:47', '', 19, 'http://localhost:8888/?p=59', 0, 'revision', '', 0),
(60, 1, '2024-07-11 16:37:48', '2024-07-11 15:37:48', '', 'Old Spice end', '', 'inherit', 'open', 'closed', '', 'old-spice-end', '', '', '2024-07-11 16:37:48', '2024-07-11 15:37:48', '', 19, 'http://localhost:8888/wp-content/uploads/2024/07/Old-Spice-end.mp4', 0, 'attachment', 'video/mp4', 0),
(61, 1, '2024-07-11 16:37:52', '2024-07-11 15:37:52', '', 'ME', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-07-11 16:37:52', '2024-07-11 15:37:52', '', 19, 'http://localhost:8888/?p=61', 0, 'revision', '', 0),
(62, 1, '2024-07-12 09:02:38', '2024-07-12 08:02:38', '', 'Old Spice start', '', 'inherit', 'open', 'closed', '', 'old-spice-start', '', '', '2024-07-12 09:02:38', '2024-07-12 08:02:38', '', 53, 'http://localhost:8888/wp-content/uploads/2024/07/Old-Spice-start.mp4', 0, 'attachment', 'video/mp4', 0),
(63, 1, '2024-07-12 09:02:42', '2024-07-12 08:02:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2024-07-12 09:02:42', '2024-07-12 08:02:42', '', 53, 'http://localhost:8888/?p=63', 0, 'revision', '', 0),
(64, 1, '2024-07-12 09:05:21', '2024-07-12 08:05:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2024-07-12 09:05:21', '2024-07-12 08:05:21', '', 53, 'http://localhost:8888/?p=64', 0, 'revision', '', 0),
(65, 1, '2024-07-12 09:05:31', '2024-07-12 08:05:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2024-07-12 09:05:31', '2024-07-12 08:05:31', '', 53, 'http://localhost:8888/?p=65', 0, 'revision', '', 0),
(66, 1, '2024-07-15 08:59:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-07-15 08:59:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2024-07-17 14:51:26', '2024-07-15 08:00:31', '', '<i class=\"fa-light fa-house\"></i>', '', 'publish', 'closed', 'closed', '', '67', '', '', '2024-07-17 14:51:26', '2024-07-17 13:51:26', '', 0, 'http://localhost:8888/?p=67', 1, 'nav_menu_item', '', 0),
(69, 1, '2024-07-17 14:51:26', '2024-07-17 13:51:26', '', 'WORK', '', 'publish', 'closed', 'closed', '', 'work', '', '', '2024-07-17 14:51:26', '2024-07-17 13:51:26', '', 0, 'http://localhost:8888/?p=69', 2, 'nav_menu_item', '', 0),
(70, 1, '2024-07-17 15:13:07', '2024-07-17 14:13:07', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"wporg_product\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Client', 'client', 'publish', 'closed', 'closed', '', 'group_6697d0115c47c', '', '', '2024-07-17 15:14:57', '2024-07-17 14:14:57', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2024-07-17 15:13:07', '2024-07-17 14:13:07', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'Info', 'info', 'publish', 'closed', 'closed', '', 'field_6697d0110a3b3', '', '', '2024-07-17 15:13:07', '2024-07-17 14:13:07', '', 70, 'http://localhost:8888/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2024-07-17 15:13:07', '2024-07-17 14:13:07', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Logo', 'client_logo', 'publish', 'closed', 'closed', '', 'field_6697d0200a3b4', '', '', '2024-07-17 15:13:07', '2024-07-17 14:13:07', '', 70, 'http://localhost:8888/?post_type=acf-field&p=72', 1, 'acf-field', '', 0),
(73, 1, '2024-07-17 15:13:07', '2024-07-17 14:13:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Body', 'client_body', 'publish', 'closed', 'closed', '', 'field_6697d08c0a3b5', '', '', '2024-07-17 15:13:07', '2024-07-17 14:13:07', '', 70, 'http://localhost:8888/?post_type=acf-field&p=73', 2, 'acf-field', '', 0),
(74, 1, '2024-07-17 15:13:07', '2024-07-17 14:13:07', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'slides', 'slides', 'publish', 'closed', 'closed', '', 'field_6697d0bf0a3b6', '', '', '2024-07-17 15:13:07', '2024-07-17 14:13:07', '', 70, 'http://localhost:8888/?post_type=acf-field&p=74', 3, 'acf-field', '', 0),
(75, 1, '2024-07-17 15:13:07', '2024-07-17 14:13:07', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Slides', 'client_repeater', 'publish', 'closed', 'closed', '', 'field_6697d1110a3b7', '', '', '2024-07-17 15:14:50', '2024-07-17 14:14:50', '', 70, 'http://localhost:8888/?post_type=acf-field&#038;p=75', 4, 'acf-field', '', 0),
(76, 1, '2024-07-17 15:13:07', '2024-07-17 14:13:07', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Slide', 'client_slide', 'publish', 'closed', 'closed', '', 'field_6697d1630a3b8', '', '', '2024-07-17 15:13:07', '2024-07-17 14:13:07', '', 75, 'http://localhost:8888/?post_type=acf-field&p=76', 0, 'acf-field', '', 0),
(77, 1, '2024-07-18 07:00:45', '2024-07-18 06:00:45', '', 'asda-LOGO-white', '', 'inherit', 'open', 'closed', '', 'asda-logo-white', '', '', '2024-07-18 07:00:45', '2024-07-18 06:00:45', '', 41, 'http://localhost:8888/wp-content/uploads/2024/07/asda-LOGO-white.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2024-07-18 07:02:05', '2024-07-18 06:02:05', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2024-07-18 07:02:05', '2024-07-18 06:02:05', '', 41, 'http://localhost:8888/wp-content/uploads/2024/07/1.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2024-07-18 07:02:15', '2024-07-18 06:02:15', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2024-07-18 07:02:15', '2024-07-18 06:02:15', '', 41, 'http://localhost:8888/wp-content/uploads/2024/07/2.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2024-07-18 07:02:27', '2024-07-18 06:02:27', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2024-07-18 07:02:27', '2024-07-18 06:02:27', '', 41, 'http://localhost:8888/wp-content/uploads/2024/07/3.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2024-07-19 07:46:22', '2024-07-19 06:46:22', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-07-19 07:46:22', '2024-07-19 06:46:22', '', 1, 'http://localhost:8888/?p=81', 0, 'revision', '', 0),
(82, 1, '2024-07-19 07:48:52', '2024-07-19 06:48:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2024-07-19 07:48:52', '2024-07-19 06:48:52', '', 53, 'http://localhost:8888/?p=82', 0, 'revision', '', 0),
(83, 1, '2024-07-19 12:34:08', '2024-07-19 11:34:08', '', 'ME', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-07-19 12:34:08', '2024-07-19 11:34:08', '', 19, 'http://localhost:8888/?p=83', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'main', 'main', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(25, 2, 0),
(40, 2, 0),
(67, 2, 0),
(69, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jLouisAdmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"f6b7fa344a077e66ac76b378bb4d514ca132e4436f76166ceb253f70578ecf44\";a:4:{s:10:\"expiration\";i:1721396906;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:84:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0\";s:5:\"login\";i:1721224106;}s:64:\"9a71bba6f5d58a00d49ed9ebce964b01b458432fc94c8c88fdef89eff5dea724\";a:4:{s:10:\"expiration\";i:1721477708;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:84:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:128.0) Gecko/20100101 Firefox/128.0\";s:5:\"login\";i:1721304908;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '68'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'manageedit-acf-ui-options-pagecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(20, 1, 'acf_user_settings', 'a:1:{s:23:\"options-pages-first-run\";b:1;}'),
(21, 1, 'closedpostboxes_acf-ui-options-page', 'a:0:{}'),
(22, 1, 'metaboxhidden_acf-ui-options-page', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(23, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-07-10T14:37:40.245Z\";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(27, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(28, 1, 'wp_user-settings-time', '1720712267'),
(29, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jLouisAdmin', '$P$BFVY4bFCAllJc3d0d4U0XleHvYbNn8.', 'jlouisadmin', 'kim@redsentence.co.uk', 'http://localhost:8888', '2024-07-09 15:12:16', '', 0, 'jLouisAdmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
