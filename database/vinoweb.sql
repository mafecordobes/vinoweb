-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-09-2018 a las 04:57:27
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vinoweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_booking`
--

CREATE TABLE `wp_booking` (
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `trash` bigint(10) NOT NULL DEFAULT '0',
  `sync_gid` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_new` bigint(10) NOT NULL DEFAULT '1',
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_date` datetime DEFAULT NULL,
  `modification_date` datetime DEFAULT NULL,
  `form` text COLLATE utf8mb4_unicode_ci,
  `booking_type` bigint(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_booking`
--

INSERT INTO `wp_booking` (`booking_id`, `trash`, `sync_gid`, `is_new`, `status`, `sort_date`, `modification_date`, `form`, `booking_type`) VALUES
(1, 0, '', 1, '', '2018-09-03 00:00:00', '2018-09-01 16:45:52', 'text^name1^Jony~text^secondname1^Smith~text^email1^example-free@wpbookingcalendar.com~text^phone1^458-77-77~textarea^details1^Reserve a room with sea view', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bookingdates`
--

CREATE TABLE `wp_bookingdates` (
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `booking_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approved` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_bookingdates`
--

INSERT INTO `wp_bookingdates` (`booking_id`, `booking_date`, `approved`) VALUES
(1, '2018-09-03 00:00:00', 0),
(1, '2018-09-04 00:00:00', 0),
(1, '2018-09-05 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-29 19:18:20', '2018-08-29 19:18:20', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/vinoweb', 'yes'),
(2, 'home', 'http://localhost/vinoweb', 'yes'),
(3, 'blogname', 'Vino Con Sentido', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mfcj307@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:122:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:64:"index.php/calendar_feed/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?calendar_feed=$matches[1]&feed=$matches[2]";s:59:"index.php/calendar_feed/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?calendar_feed=$matches[1]&feed=$matches[2]";s:40:"index.php/calendar_feed/([^/]+)/embed/?$";s:46:"index.php?calendar_feed=$matches[1]&embed=true";s:52:"index.php/calendar_feed/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?calendar_feed=$matches[1]&paged=$matches[2]";s:34:"index.php/calendar_feed/([^/]+)/?$";s:35:"index.php?calendar_feed=$matches[1]";s:64:"index.php/calendar_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?calendar_type=$matches[1]&feed=$matches[2]";s:59:"index.php/calendar_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?calendar_type=$matches[1]&feed=$matches[2]";s:40:"index.php/calendar_type/([^/]+)/embed/?$";s:46:"index.php?calendar_type=$matches[1]&embed=true";s:52:"index.php/calendar_type/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?calendar_type=$matches[1]&paged=$matches[2]";s:34:"index.php/calendar_type/([^/]+)/?$";s:35:"index.php?calendar_type=$matches[1]";s:68:"index.php/calendar_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?calendar_category=$matches[1]&feed=$matches[2]";s:63:"index.php/calendar_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?calendar_category=$matches[1]&feed=$matches[2]";s:44:"index.php/calendar_category/([^/]+)/embed/?$";s:50:"index.php?calendar_category=$matches[1]&embed=true";s:56:"index.php/calendar_category/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?calendar_category=$matches[1]&paged=$matches[2]";s:38:"index.php/calendar_category/([^/]+)/?$";s:39:"index.php?calendar_category=$matches[1]";s:46:"index.php/calendar/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:56:"index.php/calendar/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:76:"index.php/calendar/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"index.php/calendar/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"index.php/calendar/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"index.php/calendar/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"index.php/calendar/([^/]+)/embed/?$";s:41:"index.php?calendar=$matches[1]&embed=true";s:39:"index.php/calendar/([^/]+)/trackback/?$";s:35:"index.php?calendar=$matches[1]&tb=1";s:47:"index.php/calendar/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?calendar=$matches[1]&paged=$matches[2]";s:54:"index.php/calendar/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?calendar=$matches[1]&cpage=$matches[2]";s:43:"index.php/calendar/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?calendar=$matches[1]&page=$matches[2]";s:35:"index.php/calendar/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"index.php/calendar/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"index.php/calendar/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"index.php/calendar/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"index.php/calendar/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"index.php/calendar/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=9&cpage=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:49:"google-calendar-events/google-calendar-events.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'vinoconsentido', 'yes'),
(41, 'stylesheet', 'vinoconsentido', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1536117501;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1536131901;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1536175374;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1536178836;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1535570580;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-6.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.6";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-6.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-rollback-6.zip";}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.6";s:9:"new_files";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-6.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.7-rollback-6.zip";}s:7:"current";s:5:"4.9.7";s:7:"version";s:5:"4.9.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.6";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1536115542;s:15:"version_checked";s:5:"4.9.6";s:12:"translations";a:0:{}}', 'no'),
(124, '_site_transient_timeout_browser_8ed0eac693afdfcb0a59d7145795d2e5', '1536175113', 'no'),
(125, '_site_transient_browser_8ed0eac693afdfcb0a59d7145795d2e5', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"68.0.3440.106";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(129, 'auto_core_update_failed', 'a:6:{s:9:"attempted";s:5:"4.9.8";s:7:"current";s:5:"4.9.6";s:10:"error_code";s:32:"copy_failed_for_update_core_file";s:10:"error_data";s:33:"wp-admin/includes/update-core.php";s:9:"timestamp";i:1536115564;s:5:"retry";b:0;}', 'no'),
(130, 'auto_core_update_notified', 'a:4:{s:4:"type";s:4:"fail";s:5:"email";s:17:"mfcj307@gmail.com";s:7:"version";s:5:"4.9.8";s:9:"timestamp";i:1536115564;}', 'no'),
(142, 'current_theme', 'DentalVip', 'yes'),
(143, 'theme_mods_vinoconsentido', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(149, 'recently_activated', 'a:1:{s:25:"booking/wpdev-booking.php";i:1535839215;}', 'yes'),
(154, 'acf_version', '4.4.12', 'yes'),
(157, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.3";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1535573828;s:7:"version";s:5:"5.0.3";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(160, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(186, 'booking_activation_process', 'Off', 'yes'),
(187, 'booking_admin_cal_count', '2', 'yes'),
(188, 'booking_skin', '/css/skins/traditional.css', 'yes'),
(189, 'booking_num_per_page', '10', 'yes'),
(190, 'booking_sort_order', '', 'yes'),
(191, 'booking_default_toolbar_tab', 'filter', 'yes'),
(192, 'booking_listing_default_view_mode', 'vm_calendar', 'yes'),
(193, 'booking_view_days_num', '90', 'yes'),
(194, 'booking_max_monthes_in_calendar', '1y', 'yes'),
(195, 'booking_client_cal_count', '1', 'yes'),
(196, 'booking_start_day_weeek', '0', 'yes'),
(197, 'booking_title_after_reservation', 'Thank you for your online booking.  We will send confirmation of your booking as soon as possible.', 'yes'),
(198, 'booking_title_after_reservation_time', '7000', 'yes'),
(199, 'booking_type_of_thank_you_message', 'message', 'yes'),
(200, 'booking_thank_you_page_URL', '/thank-you', 'yes'),
(201, 'booking_is_use_autofill_4_logged_user', 'Off', 'yes'),
(202, 'booking_date_format', 'F j, Y', 'yes'),
(203, 'booking_date_view_type', 'short', 'yes'),
(204, 'booking_is_delete_if_deactive', 'Off', 'yes'),
(205, 'booking_dif_colors_approval_pending', 'On', 'yes'),
(206, 'booking_is_use_hints_at_admin_panel', 'On', 'yes'),
(207, 'booking_is_not_load_bs_script_in_client', 'Off', 'yes'),
(208, 'booking_is_not_load_bs_script_in_admin', 'Off', 'yes'),
(209, 'booking_is_load_js_css_on_specific_pages', 'Off', 'yes'),
(210, 'booking_is_show_system_debug_log', 'Off', 'yes'),
(211, 'booking_pages_for_load_js_css', '', 'yes'),
(212, 'booking_type_of_day_selections', 'multiple', 'yes'),
(213, 'booking_timeslot_day_bg_as_available', 'On', 'yes'),
(214, 'booking_form_is_using_bs_css', 'On', 'yes'),
(215, 'booking_form_format_type', 'vertical', 'yes'),
(216, 'booking_form_field_active1', 'On', 'yes'),
(217, 'booking_form_field_required1', 'On', 'yes'),
(218, 'booking_form_field_label1', 'First Name', 'yes'),
(219, 'booking_form_field_active2', 'On', 'yes'),
(220, 'booking_form_field_required2', 'On', 'yes'),
(221, 'booking_form_field_label2', 'Last Name', 'yes'),
(222, 'booking_form_field_active3', 'On', 'yes'),
(223, 'booking_form_field_required3', 'On', 'yes'),
(224, 'booking_form_field_label3', 'Email', 'yes'),
(225, 'booking_form_field_active4', 'On', 'yes'),
(226, 'booking_form_field_required4', 'Off', 'yes'),
(227, 'booking_form_field_label4', 'Phone', 'yes'),
(228, 'booking_form_field_active5', 'On', 'yes'),
(229, 'booking_form_field_required5', 'Off', 'yes'),
(230, 'booking_form_field_label5', 'Details', 'yes'),
(231, 'booking_form_field_active6', 'Off', 'yes'),
(232, 'booking_form_field_required6', 'Off', 'yes'),
(233, 'booking_form_field_label6', 'Visitors', 'yes'),
(234, 'booking_form_field_values6', '1\n2\n3\n4', 'yes'),
(235, 'booking_is_days_always_available', 'Off', 'yes'),
(236, 'booking_is_show_pending_days_as_available', 'Off', 'yes'),
(237, 'booking_check_on_server_if_dates_free', 'Off', 'yes'),
(238, 'booking_unavailable_days_num_from_today', '0', 'yes'),
(239, 'booking_unavailable_day0', 'Off', 'yes'),
(240, 'booking_unavailable_day1', 'Off', 'yes'),
(241, 'booking_unavailable_day2', 'Off', 'yes'),
(242, 'booking_unavailable_day3', 'Off', 'yes'),
(243, 'booking_unavailable_day4', 'Off', 'yes'),
(244, 'booking_unavailable_day5', 'Off', 'yes'),
(245, 'booking_unavailable_day6', 'Off', 'yes'),
(246, 'booking_menu_position', 'top', 'yes'),
(247, 'booking_user_role_booking', 'editor', 'yes'),
(248, 'booking_user_role_addbooking', 'editor', 'yes'),
(249, 'booking_user_role_resources', 'editor', 'yes'),
(250, 'booking_user_role_settings', 'administrator', 'yes'),
(251, 'booking_is_email_reservation_adress', 'On', 'yes'),
(252, 'booking_email_reservation_adress', '&quot;Booking system&quot; &lt;mfcj307@gmail.com&gt;', 'yes'),
(253, 'booking_email_reservation_from_adress', '[visitoremail]', 'yes'),
(254, 'booking_email_reservation_subject', 'New booking', 'yes'),
(255, 'booking_email_reservation_content', 'You need to approve a new booking [bookingtype] for: [dates]&lt;br/&gt;&lt;br/&gt; Person detail information:&lt;br/&gt; [content]&lt;br/&gt;&lt;br/&gt; Currently a new booking is waiting for approval. Please visit the moderation panel [moderatelink]&lt;br/&gt;&lt;br/&gt;Thank you, Vino Con Sentido&lt;br/&gt;[siteurl]', 'yes'),
(256, 'booking_is_email_newbookingbyperson_adress', 'Off', 'yes'),
(257, 'booking_email_newbookingbyperson_adress', '&quot;Booking system&quot; &lt;mfcj307@gmail.com&gt;', 'yes'),
(258, 'booking_email_newbookingbyperson_subject', 'New booking', 'yes'),
(259, 'booking_email_newbookingbyperson_content', 'Your reservation [bookingtype] for: [dates] is processing now! We will send confirmation by email. &lt;br/&gt;&lt;br/&gt;[content]&lt;br/&gt;&lt;br/&gt; Thank you, Vino Con Sentido&lt;br/&gt;[siteurl]', 'yes'),
(260, 'booking_is_email_approval_adress', 'On', 'yes'),
(261, 'booking_is_email_approval_send_copy_to_admin', 'Off', 'yes'),
(262, 'booking_email_approval_adress', '&quot;Booking system&quot; &lt;mfcj307@gmail.com&gt;', 'yes'),
(263, 'booking_email_approval_subject', 'Your booking has been approved', 'yes'),
(264, 'booking_email_approval_content', 'Your booking [bookingtype] for: [dates] has been approved.&lt;br/&gt;&lt;br/&gt;[content]&lt;br/&gt;&lt;br/&gt;Thank you, Vino Con Sentido&lt;br/&gt;[siteurl]', 'yes'),
(265, 'booking_is_email_deny_adress', 'On', 'yes'),
(266, 'booking_is_email_deny_send_copy_to_admin', 'Off', 'yes'),
(267, 'booking_email_deny_adress', '&quot;Booking system&quot; &lt;mfcj307@gmail.com&gt;', 'yes'),
(268, 'booking_email_deny_subject', 'Your booking has been declined', 'yes'),
(269, 'booking_email_deny_content', 'Your booking [bookingtype] for: [dates] has been  canceled. &lt;br/&gt;[denyreason]&lt;br/&gt;&lt;br/&gt;[content]&lt;br/&gt;&lt;br/&gt;Thank you, Vino Con Sentido&lt;br/&gt;[siteurl]', 'yes'),
(270, 'booking_widget_title', 'Booking form', 'yes'),
(271, 'booking_widget_show', 'booking_form', 'yes'),
(272, 'booking_widget_type', '1', 'yes'),
(273, 'booking_widget_calendar_count', '1', 'yes'),
(274, 'booking_widget_last_field', '', 'yes'),
(275, 'booking_wpdev_copyright_adminpanel', 'On', 'yes'),
(276, 'booking_is_show_powered_by_notice', 'On', 'yes'),
(277, 'booking_is_use_captcha', 'Off', 'yes'),
(278, 'booking_is_show_legend', 'Off', 'yes'),
(279, 'booking_legend_is_show_item_available', 'On', 'yes'),
(280, 'booking_legend_text_for_item_available', 'Available', 'yes'),
(281, 'booking_legend_is_show_item_pending', 'On', 'yes'),
(282, 'booking_legend_text_for_item_pending', 'Pending', 'yes'),
(283, 'booking_legend_is_show_item_approved', 'On', 'yes'),
(284, 'booking_legend_text_for_item_approved', 'Booked', 'yes'),
(285, 'booking_legend_is_show_numbers', 'Off', 'yes'),
(286, 'booking_email_new_admin', 'a:15:{s:7:"enabled";s:2:"On";s:2:"to";s:17:"mfcj307@gmail.com";s:7:"to_name";s:14:"Booking system";s:4:"from";s:17:"mfcj307@gmail.com";s:9:"from_name";s:14:"Booking system";s:7:"subject";s:11:"New booking";s:7:"content";s:271:"You need to approve a new booking [bookingtype] for: [dates]<br/><br/> Person detail information:<br/> [content]<br/><br/> Currently a new booking is waiting for approval. Please visit the moderation panel [moderatelink]<br/><br/>Thank you, Vino Con Sentido<br/>[siteurl]";s:14:"header_content";s:0:"";s:14:"footer_content";s:0:"";s:13:"template_file";s:5:"plain";s:10:"base_color";s:7:"#557da1";s:16:"background_color";s:7:"#f5f5f5";s:10:"body_color";s:7:"#fdfdfd";s:10:"text_color";s:7:"#505050";s:18:"email_content_type";s:4:"html";}', 'yes'),
(287, 'booking_email_new_visitor', 'a:13:{s:7:"enabled";s:2:"On";s:4:"from";s:17:"mfcj307@gmail.com";s:9:"from_name";s:14:"Booking system";s:7:"subject";s:11:"New booking";s:7:"content";s:170:"Your reservation [bookingtype] for: [dates] is processing now! We will send confirmation by email. <br/><br/>[content]<br/><br/> Thank you, Vino Con Sentido<br/>[siteurl]";s:14:"header_content";s:0:"";s:14:"footer_content";s:0:"";s:13:"template_file";s:5:"plain";s:10:"base_color";s:7:"#557da1";s:16:"background_color";s:7:"#f5f5f5";s:10:"body_color";s:7:"#fdfdfd";s:10:"text_color";s:7:"#505050";s:18:"email_content_type";s:4:"html";}', 'yes'),
(288, 'booking_email_approved', 'a:16:{s:7:"enabled";s:2:"On";s:13:"copy_to_admin";s:3:"Off";s:2:"to";s:17:"mfcj307@gmail.com";s:7:"to_name";s:14:"Booking system";s:4:"from";s:17:"mfcj307@gmail.com";s:9:"from_name";s:14:"Booking system";s:7:"subject";s:30:"Your booking has been approved";s:7:"content";s:128:"Your booking [bookingtype] for: [dates] has been approved.<br/><br/>[content]<br/><br/>Thank you, Vino Con Sentido<br/>[siteurl]";s:14:"header_content";s:0:"";s:14:"footer_content";s:0:"";s:13:"template_file";s:5:"plain";s:10:"base_color";s:7:"#557da1";s:16:"background_color";s:7:"#f5f5f5";s:10:"body_color";s:7:"#fdfdfd";s:10:"text_color";s:7:"#505050";s:18:"email_content_type";s:4:"html";}', 'yes'),
(289, 'booking_email_deleted', 'a:16:{s:7:"enabled";s:2:"On";s:13:"copy_to_admin";s:3:"Off";s:2:"to";s:17:"mfcj307@gmail.com";s:7:"to_name";s:14:"Booking system";s:4:"from";s:17:"mfcj307@gmail.com";s:9:"from_name";s:14:"Booking system";s:7:"subject";s:30:"Your booking has been declined";s:7:"content";s:147:"Your booking [bookingtype] for: [dates] has been  canceled. <br/>[denyreason]<br/><br/>[content]<br/><br/>Thank you, Vino Con Sentido<br/>[siteurl]";s:14:"header_content";s:0:"";s:14:"footer_content";s:0:"";s:13:"template_file";s:5:"plain";s:10:"base_color";s:7:"#557da1";s:16:"background_color";s:7:"#f5f5f5";s:10:"body_color";s:7:"#fdfdfd";s:10:"text_color";s:7:"#505050";s:18:"email_content_type";s:4:"html";}', 'yes'),
(290, 'booking_email_deny', 'a:16:{s:7:"enabled";s:2:"On";s:13:"copy_to_admin";s:3:"Off";s:2:"to";s:17:"mfcj307@gmail.com";s:7:"to_name";s:14:"Booking system";s:4:"from";s:17:"mfcj307@gmail.com";s:9:"from_name";s:14:"Booking system";s:7:"subject";s:30:"Your booking has been declined";s:7:"content";s:147:"Your booking [bookingtype] for: [dates] has been  canceled. <br/>[denyreason]<br/><br/>[content]<br/><br/>Thank you, Vino Con Sentido<br/>[siteurl]";s:14:"header_content";s:0:"";s:14:"footer_content";s:0:"";s:13:"template_file";s:5:"plain";s:10:"base_color";s:7:"#557da1";s:16:"background_color";s:7:"#f5f5f5";s:10:"body_color";s:7:"#fdfdfd";s:10:"text_color";s:7:"#505050";s:18:"email_content_type";s:4:"html";}', 'yes'),
(291, 'booking_email_trash', 'a:16:{s:7:"enabled";s:2:"On";s:13:"copy_to_admin";s:3:"Off";s:2:"to";s:17:"mfcj307@gmail.com";s:7:"to_name";s:14:"Booking system";s:4:"from";s:17:"mfcj307@gmail.com";s:9:"from_name";s:14:"Booking system";s:7:"subject";s:30:"Your booking has been declined";s:7:"content";s:147:"Your booking [bookingtype] for: [dates] has been  canceled. <br/>[denyreason]<br/><br/>[content]<br/><br/>Thank you, Vino Con Sentido<br/>[siteurl]";s:14:"header_content";s:0:"";s:14:"footer_content";s:0:"";s:13:"template_file";s:5:"plain";s:10:"base_color";s:7:"#557da1";s:16:"background_color";s:7:"#f5f5f5";s:10:"body_color";s:7:"#fdfdfd";s:10:"text_color";s:7:"#505050";s:18:"email_content_type";s:4:"html";}', 'yes'),
(292, 'booking_form_structure_type', 'vertical', 'yes'),
(293, 'booking_menu_go_pro', 'show', 'yes'),
(294, 'booking_form', '<div class="wpbc_booking_form_structure wpbc_vertical">\n  <div class="wpbc_structure_calendar">\n    [calendar]\n  </div>\n  <div class="wpbc_structure_form">\n     <p>First Name*:<br />[text* name]</p>\n     <p>Last Name*:<br />[text* secondname]</p>\n     <p>Email*:<br />[email* email]</p>\n     <p>Phone:<br />[text phone]</p>\n     <p>Details:<br />[textarea details]</p>\n     <p>[captcha]</p>\n     <p>[submit class:btn "Send"]</p>\n  </div>\n</div>\n<div class="wpbc_booking_form_footer"></div>', 'yes'),
(295, 'booking_form_show', '<div style="text-align:left;word-wrap: break-word;">\n  <strong>First Name</strong>: <span class="fieldvalue">[name]</span><br/>\n  <strong>Last Name</strong>: <span class="fieldvalue">[secondname]</span><br/>\n  <strong>Email</strong>: <span class="fieldvalue">[email]</span><br/>\n  <strong>Phone</strong>: <span class="fieldvalue">[phone]</span><br/>\n  <strong>Details</strong>: <span class="fieldvalue">[details]</span><br/>\n</div>', 'yes'),
(296, 'booking_form_visual', 'a:9:{i:0;a:2:{s:4:"type";s:8:"calendar";s:10:"obligatory";s:2:"On";}i:1;a:6:{s:4:"type";s:4:"text";s:4:"name";s:4:"name";s:10:"obligatory";s:3:"Off";s:6:"active";s:2:"On";s:8:"required";s:2:"On";s:5:"label";s:10:"First Name";}i:2;a:6:{s:4:"type";s:4:"text";s:4:"name";s:10:"secondname";s:10:"obligatory";s:3:"Off";s:6:"active";s:2:"On";s:8:"required";s:2:"On";s:5:"label";s:9:"Last Name";}i:3;a:6:{s:4:"type";s:5:"email";s:4:"name";s:5:"email";s:10:"obligatory";s:2:"On";s:6:"active";s:2:"On";s:8:"required";s:2:"On";s:5:"label";s:5:"Email";}i:4;a:7:{s:4:"type";s:6:"select";s:4:"name";s:8:"visitors";s:10:"obligatory";s:3:"Off";s:6:"active";s:3:"Off";s:8:"required";s:3:"Off";s:5:"label";s:8:"Visitors";s:5:"value";s:7:"1\n2\n3\n4";}i:5;a:6:{s:4:"type";s:4:"text";s:4:"name";s:5:"phone";s:10:"obligatory";s:3:"Off";s:6:"active";s:2:"On";s:8:"required";s:3:"Off";s:5:"label";s:5:"Phone";}i:6;a:6:{s:4:"type";s:8:"textarea";s:4:"name";s:7:"details";s:10:"obligatory";s:3:"Off";s:6:"active";s:2:"On";s:8:"required";s:3:"Off";s:5:"label";s:7:"Details";}i:7;a:6:{s:4:"type";s:7:"captcha";s:4:"name";s:7:"captcha";s:10:"obligatory";s:2:"On";s:6:"active";s:3:"Off";s:8:"required";s:2:"On";s:5:"label";s:0:"";}i:8;a:6:{s:4:"type";s:6:"submit";s:4:"name";s:6:"submit";s:10:"obligatory";s:2:"On";s:6:"active";s:2:"On";s:8:"required";s:2:"On";s:5:"label";s:4:"Send";}}', 'yes'),
(297, 'booking_gcal_feed', '', 'yes'),
(298, 'booking_gcal_events_from', 'month-start', 'yes'),
(299, 'booking_gcal_events_from_offset', '', 'yes'),
(300, 'booking_gcal_events_from_offset_type', '', 'yes'),
(301, 'booking_gcal_events_until', 'any', 'yes'),
(302, 'booking_gcal_events_until_offset', '', 'yes'),
(303, 'booking_gcal_events_until_offset_type', '', 'yes'),
(304, 'booking_gcal_events_max', '25', 'yes'),
(305, 'booking_gcal_api_key', '', 'yes'),
(306, 'booking_gcal_timezone', '', 'yes'),
(307, 'booking_gcal_is_send_email', 'Off', 'yes'),
(308, 'booking_gcal_auto_import_is_active', 'Off', 'yes'),
(309, 'booking_gcal_auto_import_time', '24', 'yes'),
(310, 'booking_gcal_events_form_fields', 's:101:"a:3:{s:5:"title";s:9:"text^name";s:11:"description";s:16:"textarea^details";s:5:"where";s:5:"text^";}";', 'yes'),
(311, 'booking_version_num', '8.3.2', 'yes'),
(314, 'widget_bookingwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(315, 'booking_activation_redirect_for_version', '8.3.2', 'yes'),
(320, 'widget_gce_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(325, 'simple-calendar_version', '3.1.19', 'yes'),
(326, 'calendar_feed_children', 'a:0:{}', 'yes'),
(327, 'calendar_type_children', 'a:0:{}', 'yes'),
(328, 'simple-calendar_admin_notices', 'a:1:{s:11:"calendar_37";a:1:{s:21:"google-error-response";O:27:"SimpleCalendar\\Admin\\Notice":9:{s:2:"id";a:1:{s:11:"calendar_37";s:21:"google-error-response";}s:4:"type";s:5:"error";s:5:"class";s:0:"";s:10:"capability";s:0:"";s:6:"screen";a:1:{i:0;s:8:"calendar";}s:4:"post";a:1:{i:0;i:37;}s:11:"dismissible";b:1;s:7:"visible";b:1;s:7:"content";s:596:"<p><i class="simcal-icon-warning"></i> While trying to retrieve events, Google returned an error:<br><blockquote>Error calling GET https://www.googleapis.com/calendar/v3/calendars/bWZjajMwN0BnbWFpbC5jb20/events?singleEvents=true&amp;maxResults=2500&amp;timeZone=UTC&amp;timeMin=2018-08-02T00%3A00%3A00%2B00%3A00&amp;timeMax=2019-08-31T23%3A59%3A59%2B00%3A00&amp;orderBy=startTime&amp;key=AIzaSyA2FEZvb9gpL_jDWrWlMlXZMvtlWM6uuqI: (400) Bad Request</blockquote><br>Please ensure that both your Google Calendar ID and API Key are valid and that the Google Calendar you want to display is public.</p>";}}}', 'yes'),
(329, '_transient_timeout__simple-calendar_feed_ids', '1536444436', 'no'),
(330, '_transient__simple-calendar_feed_ids', 'a:1:{i:37;s:5:"Catas";}', 'no'),
(332, 'simple-calendar_settings_feeds', 'a:1:{s:6:"google";a:1:{s:7:"api_key";s:39:"AIzaSyA2FEZvb9gpL_jDWrWlMlXZMvtlWM6uuqI";}}', 'yes'),
(335, 'calendar_category_children', 'a:0:{}', 'yes'),
(340, '_site_transient_timeout_theme_roots', '1536117355', 'no'),
(341, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:14:"vinoconsentido";s:7:"/themes";}', 'no'),
(343, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1536115563;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";s:14:"vinoconsentido";s:3:"1.0";}s:8:"response";a:1:{s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.7";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip";}}s:12:"translations";a:0:{}}', 'no'),
(344, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1536115570;s:7:"checked";a:5:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:19:"akismet/akismet.php";s:5:"4.0.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.3";s:9:"hello.php";s:3:"1.7";s:49:"google-calendar-events/google-calendar-events.php";s:6:"3.1.19";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.8";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":13:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.4";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:228:"<p>This is a security and maintenance release and we strongly encourage you to update to it immediately. For more information, refer to the <a href="https://contactform7.com/category/releases/">release announcement post</a>.</p>";s:6:"tested";s:5:"4.9.8";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:49:"google-calendar-events/google-calendar-events.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/google-calendar-events";s:4:"slug";s:22:"google-calendar-events";s:6:"plugin";s:49:"google-calendar-events/google-calendar-events.php";s:11:"new_version";s:6:"3.1.19";s:3:"url";s:53:"https://wordpress.org/plugins/google-calendar-events/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/google-calendar-events.3.1.19.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/google-calendar-events/assets/icon-256x256.png?rev=1263960";s:2:"1x";s:75:"https://ps.w.org/google-calendar-events/assets/icon-128x128.png?rev=1263960";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/google-calendar-events/assets/banner-1544x500.png?rev=1263982";s:2:"1x";s:77:"https://ps.w.org/google-calendar-events/assets/banner-772x250.png?rev=1263982";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(4, 5, '_mail', 'a:8:{s:7:"subject";s:33:"Vino Con Sentido "[your-subject]"";s:6:"sender";s:31:"[your-name] <mfcj307@gmail.com>";s:4:"body";s:179:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Vino Con Sentido (http://localhost/vinoweb)";s:9:"recipient";s:17:"mfcj307@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:33:"Vino Con Sentido "[your-subject]"";s:6:"sender";s:36:"Vino Con Sentido <mfcj307@gmail.com>";s:4:"body";s:121:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Vino Con Sentido (http://localhost/vinoweb)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:27:"Reply-To: mfcj307@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(6, 5, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(7, 5, '_additional_settings', NULL),
(8, 5, '_locale', 'en_US'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1535595158:1'),
(11, 9, '_wp_page_template', 'front-page.php'),
(12, 11, '_edit_last', '1'),
(13, 11, 'field_5b870090accb4', 'a:11:{s:3:"key";s:19:"field_5b870090accb4";s:5:"label";s:10:"Background";s:4:"name";s:10:"background";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(15, 11, 'position', 'normal'),
(16, 11, 'layout', 'no_box'),
(17, 11, 'hide_on_screen', ''),
(18, 11, '_edit_lock', '1535594484:1'),
(19, 11, 'field_5b870142a204d', 'a:11:{s:3:"key";s:19:"field_5b870142a204d";s:5:"label";s:4:"Logo";s:4:"name";s:4:"logo";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(21, 12, '_wp_attached_file', '2018/08/Dapper-1.png'),
(22, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:20:"2018/08/Dapper-1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Dapper-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"Dapper-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Dapper-1-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:22:"Dapper-1-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(23, 13, '_wp_attached_file', '2018/08/home_bar2_slider_bg.jpg'),
(24, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:820;s:4:"file";s:31:"2018/08/home_bar2_slider_bg.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"home_bar2_slider_bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"home_bar2_slider_bg-300x128.jpg";s:5:"width";i:300;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"home_bar2_slider_bg-768x328.jpg";s:5:"width";i:768;s:6:"height";i:328;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"home_bar2_slider_bg-1024x437.jpg";s:5:"width";i:1024;s:6:"height";i:437;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 14, 'logo', '12'),
(26, 14, '_logo', 'field_5b870142a204d'),
(27, 14, 'background', '13'),
(28, 14, '_background', 'field_5b870090accb4'),
(29, 9, 'logo', '18'),
(30, 9, '_logo', 'field_5b870142a204d'),
(31, 9, 'background', '13'),
(32, 9, '_background', 'field_5b870090accb4'),
(33, 15, '_menu_item_type', 'custom'),
(34, 15, '_menu_item_menu_item_parent', '0'),
(35, 15, '_menu_item_object_id', '15'),
(36, 15, '_menu_item_object', 'custom'),
(37, 15, '_menu_item_target', ''),
(38, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 15, '_menu_item_xfn', ''),
(40, 15, '_menu_item_url', '#'),
(42, 16, '_menu_item_type', 'custom'),
(43, 16, '_menu_item_menu_item_parent', '0'),
(44, 16, '_menu_item_object_id', '16'),
(45, 16, '_menu_item_object', 'custom'),
(46, 16, '_menu_item_target', ''),
(47, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 16, '_menu_item_xfn', ''),
(49, 16, '_menu_item_url', '#'),
(51, 17, '_menu_item_type', 'custom'),
(52, 17, '_menu_item_menu_item_parent', '0'),
(53, 17, '_menu_item_object_id', '17'),
(54, 17, '_menu_item_object', 'custom'),
(55, 17, '_menu_item_target', ''),
(56, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 17, '_menu_item_xfn', ''),
(58, 17, '_menu_item_url', '#'),
(60, 18, '_wp_attached_file', '2018/08/Dapper-2.png'),
(61, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:20:"2018/08/Dapper-2.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Dapper-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"Dapper-2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Dapper-2-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:22:"Dapper-2-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(62, 19, 'logo', '18'),
(63, 19, '_logo', 'field_5b870142a204d'),
(64, 19, 'background', '13'),
(65, 19, '_background', 'field_5b870090accb4'),
(66, 11, 'field_5b8710d323ddb', 'a:11:{s:3:"key";s:19:"field_5b8710d323ddb";s:5:"label";s:20:"Imagen quienes somos";s:4:"name";s:20:"imagen_quienes_somos";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(68, 20, '_wp_attached_file', '2018/08/La-cata-de-vinos-1024x682.jpg'),
(69, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:682;s:4:"file";s:37:"2018/08/La-cata-de-vinos-1024x682.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"La-cata-de-vinos-1024x682-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"La-cata-de-vinos-1024x682-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"La-cata-de-vinos-1024x682-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"La-cata-de-vinos-1024x682-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(70, 21, 'logo', '18'),
(71, 21, '_logo', 'field_5b870142a204d'),
(72, 21, 'background', '13'),
(73, 21, '_background', 'field_5b870090accb4'),
(74, 21, 'imagen_quienes_somos', '20'),
(75, 21, '_imagen_quienes_somos', 'field_5b8710d323ddb'),
(76, 9, 'imagen_quienes_somos', '20'),
(77, 9, '_imagen_quienes_somos', 'field_5b8710d323ddb'),
(78, 22, '_edit_last', '1'),
(79, 22, 'field_5b8713ba9dfaf', 'a:11:{s:3:"key";s:19:"field_5b8713ba9dfaf";s:5:"label";s:22:"Terminos y Condiciones";s:4:"name";s:22:"terminos_y_condiciones";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(81, 22, 'position', 'normal'),
(82, 22, 'layout', 'no_box'),
(83, 22, 'hide_on_screen', ''),
(84, 22, '_edit_lock', '1535595389:1'),
(85, 22, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:9:"terms.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(86, 23, '_edit_last', '1'),
(87, 23, '_edit_lock', '1535595388:1'),
(88, 23, '_wp_page_template', 'terms.php'),
(89, 24, 'terminos_y_condiciones', 'Al pagar la inscripción que le dará acceso a un evento de Vino Con-Sentido, usted acepta y\r\nqueda conforme irrevocablemente, sin existir restricción alguna a los términos y condiciones\r\ncontenidos en el presente documento. Este documento estará a su entera disposición para\r\nconsultarlo en todo momento en la página web: www.Vinoconsentido.com. En caso de que\r\nusted no esté de acuerdo con alguno de los términos o condiciones establecidos en el\r\npresente documento y que lo obligan a sujetarse a estos, por favor absténgase de continuar\r\ncon el proceso de inscripción. En caso de ser necesario, Vino Con Sentido, en calidad de\r\norganizador y promotor de los eventos se reserva el derecho de modificar los términos y\r\ncondiciones del presente documento ya sea de manera parcial o total. En caso de que se\r\nrealicen modificaciones a los términos y condiciones con posterioridad a la inscripción, dichos\r\ncambios serán enviados por escrito a los correos electrónicos que hayan proporcionado las\r\nmismas en su información de contacto. En caso de que las personas ya inscritas no estén de\r\nacuerdo con los cambios hechos a los términos y condiciones podrán pedir el reembolso del\r\nvalor de la inscripción que hubieran pagado teniendo como límite los 5 días calendario a aquel\r\nen el que la información se les haya enviado sin responsabilidad adicional para el organizador\r\ndel evento.\r\nI. Todos los participantes de las catas o eventos propuestos deben ser mayores de edad;\r\nsi contrata los servicios de Vino Con Sentido para una tercera persona, es de su\r\nresponsabilidad verificar la edad de las personas que inscribe.\r\nII. Vino Con Sentido se reserva el derecho de admisión de las solicitudes de participación a los\r\neventos. En particular, no permitirá el acceso a personas en estado de ebriedad o bajo el\r\nefecto de drogas. En ninguno de estos casos se hará la devolución del monto pagado.\r\nIII. Toda anulación de su participación a un evento es posible; esta será sin costo cinco (5) días\r\ncalendario; si la cancelación se hace pasado este plazo se pierde la totalidad del monto\r\npagado.\r\nIV. Vino Con Sentido promueve el consumo moderado de vino. Al adquirir su entrada y participar\r\nen los eventos, los participantes se comprometen a no presentar reclamación alguna ante\r\nVino Con Sentido, Rubén Gallego, sus aliados comerciales o patrocinadores del Evento, en\r\ncaso de sufrir accidentes después de una cata o evento.\r\nV. Vino Con Sentido, sus aliados comerciales o Rubén Gallego NO se harán responsable de\r\nhurtos o robos de materiales o de cualquier otro objeto o elemento personal, ya sean estos\r\nconsumibles, no consumibles o de cualquier otra índole, de los participantes en los eventos.\r\nPor lo tanto, recomienda no dejar sin vigilancia ninguna de sus pertenencias desde su entrada\r\na los eventos hasta su salida de los mismos. Al adquirir su entrada y participar en los eventos,\r\nlos participantes expresan y aceptan irrevocablemente la anterior regulación y se\r\ncomprometen a no presentar reclamación alguna ante Vino Con Sentido, sus aliados\r\ncomerciales o Rubén Gallego, en caso de sufrir la pérdida de los bienes que ingresen a los\r\neventos.\r\nVI. Los datos personales recogidos serán incorporados a una lista de datos, cuyo responsable es\r\nVino Con Sentido. En ningún caso, Vino Con Sentido utilizará los datos personales de los\r\nparticipantes para fines distintos de los descritos en los presentes términos.\r\nVII. La finalidad de la recopilación y el tratamiento de los datos personales de los participantes\r\nincluye el uso de dicha información con fines informativos de Vino Con Sentido, el envío de\r\npublicidad y de información relacionada con los eventos, que se podrá realizar a través de\r\ncorreo electrónico o por cualquier otro medio.\r\n\r\nEl Usuario manifiesta que ha leído y ha entendido la información facilitada en esta página web\r\npor lo que acepta en su totalidad el contenido de la misma.'),
(90, 24, '_terminos_y_condiciones', 'field_5b8713ba9dfaf'),
(91, 23, 'terminos_y_condiciones', 'Al pagar la inscripción que le dará acceso a un evento de Vino Con-Sentido, usted acepta y queda conforme irrevocablemente, sin existir restricción alguna a los términos y condiciones contenidos en el presente documento. Este documento estará a su entera disposición para consultarlo en todo momento en la página web: www.Vinoconsentido.com. En caso de que usted no esté de acuerdo con alguno de los términos o condiciones establecidos en el presente documento y que lo obligan a sujetarse a estos, por favor absténgase de continuar con el proceso de inscripción. En caso de ser necesario, Vino Con Sentido, en calidad de organizador y promotor de los eventos se reserva el derecho de modificar los términos y condiciones del presente documento ya sea de manera parcial o total. En caso de que se realicen modificaciones a los términos y condiciones con posterioridad a la inscripción, dichos cambios serán enviados por escrito a los correos electrónicos que hayan proporcionado las mismas en su información de contacto. En caso de que las personas ya inscritas no estén de acuerdo con los cambios hechos a los términos y condiciones podrán pedir el reembolso del valor de la inscripción que hubieran pagado teniendo como límite los 5 días calendario a aquel en el que la información se les haya enviado sin responsabilidad adicional para el organizador del evento.\r\n\r\n&nbsp;\r\n<ul>\r\n 	<li>I. Todos los participantes de las catas o eventos propuestos deben ser mayores de edad; si contrata los servicios de Vino Con Sentido para una tercera persona, es de su responsabilidad verificar la edad de las personas que inscribe.</li>\r\n 	<li>II. Vino Con Sentido se reserva el derecho de admisión de las solicitudes de participación a los eventos. En particular, no permitirá el acceso a personas en estado de ebriedad o bajo el efecto de drogas. En ninguno de estos casos se hará la devolución del monto pagado.</li>\r\n 	<li>III. Toda anulación de su participación a un evento es posible; esta será sin costo cinco (5) días calendario; si la cancelación se hace pasado este plazo se pierde la totalidad del monto pagado.</li>\r\n 	<li>IV. Vino Con Sentido promueve el consumo moderado de vino. Al adquirir su entrada y participar en los eventos, los participantes se comprometen a no presentar reclamación alguna ante Vino Con Sentido, Rubén Gallego, sus aliados comerciales o patrocinadores del Evento, en caso de sufrir accidentes después de una cata o evento.</li>\r\n 	<li>V. Vino Con Sentido, sus aliados comerciales o Rubén Gallego NO se harán responsable de hurtos o robos de materiales o de cualquier otro objeto o elemento personal, ya sean estos consumibles, no consumibles o de cualquier otra índole, de los participantes en los eventos. Por lo tanto, recomienda no dejar sin vigilancia ninguna de sus pertenencias desde su entrada a los eventos hasta su salida de los mismos. Al adquirir su entrada y participar en los eventos, los participantes expresan y aceptan irrevocablemente la anterior regulación y se comprometen a no presentar reclamación alguna ante Vino Con Sentido, sus aliados comerciales o Rubén Gallego, en caso de sufrir la pérdida de los bienes que ingresen a los eventos.</li>\r\n 	<li>VI. Los datos personales recogidos serán incorporados a una lista de datos, cuyo responsable es Vino Con Sentido. En ningún caso, Vino Con Sentido utilizará los datos personales de los participantes para fines distintos de los descritos en los presentes términos.</li>\r\n 	<li>VII. La finalidad de la recopilación y el tratamiento de los datos personales de los participantes incluye el uso de dicha información con fines informativos de Vino Con Sentido, el envío de publicidad y de información relacionada con los eventos, que se podrá realizar a través de correo electrónico o por cualquier otro medio.</li>\r\n</ul>\r\nEl Usuario manifiesta que ha leído y ha entendido la información facilitada en esta página web por lo que acepta en su totalidad el contenido de la misma.\r\n\r\n&nbsp;'),
(92, 23, '_terminos_y_condiciones', 'field_5b8713ba9dfaf'),
(93, 25, 'terminos_y_condiciones', 'Al pagar la inscripción que le dará acceso a un evento de Vino Con-Sentido, usted acepta y queda conforme irrevocablemente, sin existir restricción alguna a los términos y condiciones contenidos en el presente documento. Este documento estará a su entera disposición para consultarlo en todo momento en la página web: www.Vinoconsentido.com. En caso de que usted no esté de acuerdo con alguno de los términos o condiciones establecidos en el presente documento y que lo obligan a sujetarse a estos, por favor absténgase de continuar con el proceso de inscripción. En caso de ser necesario, Vino Con Sentido, en calidad de organizador y promotor de los eventos se reserva el derecho de modificar los términos y condiciones del presente documento ya sea de manera parcial o total. En caso de que se realicen modificaciones a los términos y condiciones con posterioridad a la inscripción, dichos cambios serán enviados por escrito a los correos electrónicos que hayan proporcionado las mismas en su información de contacto. En caso de que las personas ya inscritas no estén de acuerdo con los cambios hechos a los términos y condiciones podrán pedir el reembolso del valor de la inscripción que hubieran pagado teniendo como límite los 5 días calendario a aquel en el que la información se les haya enviado sin responsabilidad adicional para el organizador del evento.\r\n\r\n&nbsp;\r\n<ul>\r\n 	<li>I. Todos los participantes de las catas o eventos propuestos deben ser mayores de edad; si contrata los servicios de Vino Con Sentido para una tercera persona, es de su responsabilidad verificar la edad de las personas que inscribe.</li>\r\n 	<li>II. Vino Con Sentido se reserva el derecho de admisión de las solicitudes de participación a los eventos. En particular, no permitirá el acceso a personas en estado de ebriedad o bajo el efecto de drogas. En ninguno de estos casos se hará la devolución del monto pagado.</li>\r\n 	<li>III. Toda anulación de su participación a un evento es posible; esta será sin costo cinco (5) días calendario; si la cancelación se hace pasado este plazo se pierde la totalidad del monto pagado.</li>\r\n 	<li>IV. Vino Con Sentido promueve el consumo moderado de vino. Al adquirir su entrada y participar en los eventos, los participantes se comprometen a no presentar reclamación alguna ante Vino Con Sentido, Rubén Gallego, sus aliados comerciales o patrocinadores del Evento, en caso de sufrir accidentes después de una cata o evento.</li>\r\n 	<li>V. Vino Con Sentido, sus aliados comerciales o Rubén Gallego NO se harán responsable de hurtos o robos de materiales o de cualquier otro objeto o elemento personal, ya sean estos consumibles, no consumibles o de cualquier otra índole, de los participantes en los eventos. Por lo tanto, recomienda no dejar sin vigilancia ninguna de sus pertenencias desde su entrada a los eventos hasta su salida de los mismos. Al adquirir su entrada y participar en los eventos, los participantes expresan y aceptan irrevocablemente la anterior regulación y se comprometen a no presentar reclamación alguna ante Vino Con Sentido, sus aliados comerciales o Rubén Gallego, en caso de sufrir la pérdida de los bienes que ingresen a los eventos.</li>\r\n 	<li>VI. Los datos personales recogidos serán incorporados a una lista de datos, cuyo responsable es Vino Con Sentido. En ningún caso, Vino Con Sentido utilizará los datos personales de los participantes para fines distintos de los descritos en los presentes términos.</li>\r\n 	<li>VII. La finalidad de la recopilación y el tratamiento de los datos personales de los participantes incluye el uso de dicha información con fines informativos de Vino Con Sentido, el envío de publicidad y de información relacionada con los eventos, que se podrá realizar a través de correo electrónico o por cualquier otro medio.</li>\r\n</ul>\r\nEl Usuario manifiesta que ha leído y ha entendido la información facilitada en esta página web por lo que acepta en su totalidad el contenido de la misma.\r\n\r\n&nbsp;'),
(94, 25, '_terminos_y_condiciones', 'field_5b8713ba9dfaf'),
(95, 26, '_edit_last', '1'),
(96, 26, '_wp_page_template', 'default'),
(97, 26, '_edit_lock', '1535579829:1'),
(98, 11, 'field_5b8717cd56374', 'a:11:{s:3:"key";s:19:"field_5b8717cd56374";s:5:"label";s:20:"Background servicios";s:4:"name";s:20:"background_servicios";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(100, 11, 'field_5b87333097c1d', 'a:11:{s:3:"key";s:19:"field_5b87333097c1d";s:5:"label";s:16:"Servicio empresa";s:4:"name";s:16:"servicio_empresa";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(101, 11, 'field_5b87333f97c1e', 'a:11:{s:3:"key";s:19:"field_5b87333f97c1e";s:5:"label";s:17:"Servicio familiar";s:4:"name";s:17:"servicio_familiar";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(102, 11, 'field_5b87334d97c1f', 'a:11:{s:3:"key";s:19:"field_5b87334d97c1f";s:5:"label";s:18:"Servicio domicilio";s:4:"name";s:18:"servicio_domicilio";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(103, 11, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:14:"front-page.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(104, 29, '_wp_attached_file', '2018/08/3010201411324486273o.jpg'),
(105, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:575;s:6:"height";i:323;s:4:"file";s:32:"2018/08/3010201411324486273o.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"3010201411324486273o-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"3010201411324486273o-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(106, 30, '_wp_attached_file', '2018/08/Bin526-Charleston-Wine-Classes.jpg'),
(107, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:750;s:6:"height";i:395;s:4:"file";s:42:"2018/08/Bin526-Charleston-Wine-Classes.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"Bin526-Charleston-Wine-Classes-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"Bin526-Charleston-Wine-Classes-300x158.jpg";s:5:"width";i:300;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(108, 31, '_wp_attached_file', '2018/08/cata-vino-02.jpg'),
(109, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1295;s:6:"height";i:810;s:4:"file";s:24:"2018/08/cata-vino-02.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"cata-vino-02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"cata-vino-02-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"cata-vino-02-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cata-vino-02-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:12:"Getty Images";s:6:"camera";s:21:"Canon EOS 5D Mark III";s:7:"caption";s:175:"Closeup side view of group of adults tasting different wines at a local winery. They are using wine charts and writing down their impressions. There are two men and two women.";s:17:"created_timestamp";s:10:"1483725201";s:9:"copyright";s:7:"gilaxia";s:12:"focal_length";s:3:"187";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:19:"Wine tasting event.";s:11:"orientation";s:1:"1";s:8:"keywords";a:54:{i:0;s:9:"Sommelier";i:1;s:6:"Travel";i:2;s:11:"Male Beauty";i:3;s:16:"People Traveling";i:4;s:7:"Tourism";i:5;s:11:"Wine Bottle";i:6;s:22:"Medium Group Of People";i:7;s:15:"Group Of People";i:8;s:6:"Winery";i:9;s:10:"Copy Space";i:10;s:11:"Celebration";i:11;s:11:"Winetasting";i:12;s:5:"Swirl";i:13;s:7:"Scented";i:14;s:10:"Winemaking";i:15;s:9:"Wineglass";i:16;s:9:"Rose Wine";i:17;s:8:"Red Wine";i:18;s:11:"30-39 Years";i:19;s:11:"40-49 Years";i:20;s:5:"Adult";i:21;s:8:"Drinking";i:22;s:7:"Tasting";i:23;s:9:"Analyzing";i:24;s:19:"Caucasian Ethnicity";i:25;s:5:"Scale";i:26;s:9:"Expertise";i:27;s:8:"Scrutiny";i:28;s:10:"Comparison";i:29;s:12:"Togetherness";i:30;s:15:"Focus - Concept";i:31;s:10:"Friendship";i:32;s:8:"Elegance";i:33;s:9:"Education";i:34;s:11:"Agriculture";i:35;s:9:"Vacations";i:36;s:10:"Lifestyles";i:37;s:10:"Horizontal";i:38;s:8:"Close-up";i:39;s:14:"Low Angle View";i:40;s:8:"Mustache";i:41;s:5:"Beard";i:42;s:7:"Redhead";i:43;s:10:"Human Hand";i:44;s:25:"Bar - Drink Establishment";i:45;s:4:"Cafe";i:46;s:10:"Restaurant";i:47;s:5:"Chart";i:48;s:17:"Celebratory Toast";i:49;s:20:"Party - Social Event";i:50;s:4:"Wine";i:51;s:7:"Alcohol";i:52;s:5:"Drink";i:53;s:12:"Well-dressed";}}}'),
(110, 32, '_wp_attached_file', '2018/08/home_bar2_sectionbg3.png'),
(111, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:419;s:4:"file";s:32:"2018/08/home_bar2_sectionbg3.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"home_bar2_sectionbg3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"home_bar2_sectionbg3-300x65.png";s:5:"width";i:300;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:32:"home_bar2_sectionbg3-768x168.png";s:5:"width";i:768;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:33:"home_bar2_sectionbg3-1024x223.png";s:5:"width";i:1024;s:6:"height";i:223;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(112, 33, 'logo', '18'),
(113, 33, '_logo', 'field_5b870142a204d'),
(114, 33, 'background', '13'),
(115, 33, '_background', 'field_5b870090accb4'),
(116, 33, 'imagen_quienes_somos', '20'),
(117, 33, '_imagen_quienes_somos', 'field_5b8710d323ddb'),
(118, 33, 'background_servicios', ''),
(119, 33, '_background_servicios', 'field_5b8717cd56374'),
(120, 33, 'servicio_empresa', '31'),
(121, 33, '_servicio_empresa', 'field_5b87333097c1d'),
(122, 33, 'servicio_familiar', '30'),
(123, 33, '_servicio_familiar', 'field_5b87333f97c1e'),
(124, 33, 'servicio_domicilio', '29'),
(125, 33, '_servicio_domicilio', 'field_5b87334d97c1f'),
(126, 9, 'background_servicios', '34'),
(127, 9, '_background_servicios', 'field_5b8717cd56374'),
(128, 9, 'servicio_empresa', '31'),
(129, 9, '_servicio_empresa', 'field_5b87333097c1d'),
(130, 9, 'servicio_familiar', '30'),
(131, 9, '_servicio_familiar', 'field_5b87333f97c1e'),
(132, 9, 'servicio_domicilio', '29'),
(133, 9, '_servicio_domicilio', 'field_5b87334d97c1f'),
(134, 34, '_wp_attached_file', '2018/08/home_bar2_sectionbg3-1.png'),
(135, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:419;s:4:"file";s:34:"2018/08/home_bar2_sectionbg3-1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"home_bar2_sectionbg3-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"home_bar2_sectionbg3-1-300x65.png";s:5:"width";i:300;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:34:"home_bar2_sectionbg3-1-768x168.png";s:5:"width";i:768;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:35:"home_bar2_sectionbg3-1-1024x223.png";s:5:"width";i:1024;s:6:"height";i:223;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(136, 35, 'logo', '18'),
(137, 35, '_logo', 'field_5b870142a204d'),
(138, 35, 'background', '13'),
(139, 35, '_background', 'field_5b870090accb4'),
(140, 35, 'imagen_quienes_somos', '20'),
(141, 35, '_imagen_quienes_somos', 'field_5b8710d323ddb'),
(142, 35, 'background_servicios', '34'),
(143, 35, '_background_servicios', 'field_5b8717cd56374'),
(144, 35, 'servicio_empresa', '31'),
(145, 35, '_servicio_empresa', 'field_5b87333097c1d'),
(146, 35, 'servicio_familiar', '30'),
(147, 35, '_servicio_familiar', 'field_5b87333f97c1e'),
(148, 35, 'servicio_domicilio', '29'),
(149, 35, '_servicio_domicilio', 'field_5b87334d97c1f'),
(152, 37, '_edit_last', '1'),
(153, 37, '_calendar_view', 'a:1:{s:16:"default-calendar";s:4:"grid";}'),
(154, 37, '_calendar_begins', 'this_month'),
(155, 37, '_calendar_begins_nth', '1'),
(156, 37, '_calendar_begins_custom_date', ''),
(157, 37, '_feed_earliest_event_date', 'months_before'),
(158, 37, '_feed_earliest_event_date_range', '1'),
(159, 37, '_feed_latest_event_date', 'years_after'),
(160, 37, '_feed_latest_event_date_range', '1'),
(161, 37, '_calendar_is_static', 'no'),
(162, 37, '_no_events_message', ''),
(163, 37, '_event_formatting', 'preserve_linebreaks'),
(164, 37, '_poweredby', 'no'),
(165, 37, '_feed_timezone_setting', 'use_site'),
(166, 37, '_feed_timezone', 'UTC'),
(167, 37, '_calendar_date_format_setting', 'use_site'),
(168, 37, '_calendar_date_format', 'l, d F Y'),
(169, 37, '_calendar_date_format_php', 'F j, Y'),
(170, 37, '_calendar_time_format_setting', 'use_site'),
(171, 37, '_calendar_time_format', 'G:i a'),
(172, 37, '_calendar_time_format_php', 'g:i a'),
(173, 37, '_calendar_datetime_separator', ''),
(174, 37, '_calendar_datetime_separator_spacing', ''),
(175, 37, '_calendar_week_starts_on_setting', 'use_site'),
(176, 37, '_calendar_week_starts_on', '0'),
(177, 37, '_feed_cache_user_amount', '2'),
(178, 37, '_feed_cache_user_unit', '3600'),
(179, 37, '_feed_cache', '7200'),
(180, 37, '_calendar_version', '3.1.19'),
(181, 37, '_google_calendar_id', 'YldaamFqTXdOMEJuYldGcGJDNWpiMjA='),
(182, 37, '_google_events_search_query', ''),
(183, 37, '_google_events_recurring', 'show'),
(184, 37, '_google_events_max_results', '2500'),
(185, 37, '_grouped_calendars_source', 'ids'),
(186, 37, '_grouped_calendars_ids', ''),
(187, 37, '_grouped_calendars_category', ''),
(188, 37, '_default_calendar_style_theme', 'light'),
(189, 37, '_default_calendar_style_today', '#1e73be'),
(190, 37, '_default_calendar_style_days_events', '#000000'),
(191, 37, '_default_calendar_list_range_span', '1'),
(192, 37, '_default_calendar_list_range_type', 'monthly'),
(193, 37, '_default_calendar_list_header', 'no'),
(194, 37, '_default_calendar_compact_list', 'no'),
(195, 37, '_default_calendar_limit_visible_events', 'no'),
(196, 37, '_default_calendar_visible_events', '3'),
(197, 37, '_default_calendar_event_bubble_trigger', 'hover'),
(198, 37, '_default_calendar_trim_titles', 'no'),
(199, 37, '_default_calendar_trim_titles_chars', '20'),
(200, 37, '_default_calendar_expand_multi_day_events', 'yes'),
(201, 37, '_edit_lock', '1535841274:1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-29 19:18:20', '2018-08-29 19:18:20', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-08-29 19:18:20', '2018-08-29 19:18:20', '', 0, 'http://localhost/vinoweb/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-29 19:18:20', '2018-08-29 19:18:20', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/vinoweb/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-08-29 19:18:20', '2018-08-29 19:18:20', '', 0, 'http://localhost/vinoweb/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-29 19:18:20', '2018-08-29 19:18:20', '<h2>Who we are</h2><p>Our website address is: http://localhost/vinoweb.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-29 19:18:20', '2018-08-29 19:18:20', '', 0, 'http://localhost/vinoweb/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-08-29 19:18:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-29 19:18:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/vinoweb/?p=4', 0, 'post', '', 0),
(5, 1, '2018-08-29 20:17:08', '2018-08-29 20:17:08', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nVino Con Sentido "[your-subject]"\n[your-name] <mfcj307@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Vino Con Sentido (http://localhost/vinoweb)\nmfcj307@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nVino Con Sentido "[your-subject]"\nVino Con Sentido <mfcj307@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Vino Con Sentido (http://localhost/vinoweb)\n[your-email]\nReply-To: mfcj307@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-08-29 20:17:08', '2018-08-29 20:17:08', '', 0, 'http://localhost/vinoweb/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2018-08-29 20:18:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-29 20:18:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/vinoweb/?post_type=acf&p=6', 0, 'acf', '', 0),
(7, 1, '2018-08-29 20:20:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-29 20:20:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/vinoweb/?post_type=acf&p=7', 0, 'acf', '', 0),
(8, 1, '2018-08-29 20:21:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-29 20:21:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/vinoweb/?post_type=acf&p=8', 0, 'acf', '', 0),
(9, 1, '2018-08-29 20:21:53', '2018-08-29 20:21:53', '', 'Landing', '', 'publish', 'closed', 'closed', '', 'landing', '', '', '2018-08-30 00:03:24', '2018-08-30 00:03:24', '', 0, 'http://localhost/vinoweb/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-08-29 20:21:53', '2018-08-29 20:21:53', '', 'Landing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-08-29 20:21:53', '2018-08-29 20:21:53', '', 9, 'http://localhost/vinoweb/index.php/2018/08/29/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-08-29 20:23:11', '2018-08-29 20:23:11', '', 'Landing', '', 'publish', 'closed', 'closed', '', 'acf_landing', '', '', '2018-08-29 23:59:24', '2018-08-29 23:59:24', '', 0, 'http://localhost/vinoweb/?post_type=acf&#038;p=11', 0, 'acf', '', 0),
(12, 1, '2018-08-29 20:26:28', '2018-08-29 20:26:28', '', 'Dapper (1)', '', 'inherit', 'open', 'closed', '', 'dapper-1', '', '', '2018-08-29 20:26:28', '2018-08-29 20:26:28', '', 9, 'http://localhost/vinoweb/wp-content/uploads/2018/08/Dapper-1.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2018-08-29 20:26:43', '2018-08-29 20:26:43', '', 'home_bar2_slider_bg', '', 'inherit', 'open', 'closed', '', 'home_bar2_slider_bg', '', '', '2018-08-29 20:26:43', '2018-08-29 20:26:43', '', 9, 'http://localhost/vinoweb/wp-content/uploads/2018/08/home_bar2_slider_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-08-29 20:26:49', '2018-08-29 20:26:49', '', 'Landing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-08-29 20:26:49', '2018-08-29 20:26:49', '', 9, 'http://localhost/vinoweb/index.php/2018/08/29/9-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-08-29 20:33:36', '2018-08-29 20:33:36', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-29 20:33:36', '2018-08-29 20:33:36', '', 0, 'http://localhost/vinoweb/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2018-08-29 20:33:37', '2018-08-29 20:33:37', '', 'Reserva', '', 'publish', 'closed', 'closed', '', 'reserva', '', '', '2018-08-29 20:33:37', '2018-08-29 20:33:37', '', 0, 'http://localhost/vinoweb/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2018-08-29 20:33:37', '2018-08-29 20:33:37', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2018-08-29 20:33:37', '2018-08-29 20:33:37', '', 0, 'http://localhost/vinoweb/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2018-08-29 21:11:08', '2018-08-29 21:11:08', '', 'Dapper (2)', '', 'inherit', 'open', 'closed', '', 'dapper-2', '', '', '2018-08-29 21:11:08', '2018-08-29 21:11:08', '', 9, 'http://localhost/vinoweb/wp-content/uploads/2018/08/Dapper-2.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2018-08-29 21:11:13', '2018-08-29 21:11:13', '', 'Landing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-08-29 21:11:13', '2018-08-29 21:11:13', '', 9, 'http://localhost/vinoweb/index.php/2018/08/29/9-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-08-29 21:32:56', '2018-08-29 21:32:56', '', 'La-cata-de-vinos-1024x682', '', 'inherit', 'open', 'closed', '', 'la-cata-de-vinos-1024x682', '', '', '2018-08-29 21:32:56', '2018-08-29 21:32:56', '', 9, 'http://localhost/vinoweb/wp-content/uploads/2018/08/La-cata-de-vinos-1024x682.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-08-29 21:33:01', '2018-08-29 21:33:01', '', 'Landing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-08-29 21:33:01', '2018-08-29 21:33:01', '', 9, 'http://localhost/vinoweb/index.php/2018/08/29/9-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-08-29 21:44:41', '2018-08-29 21:44:41', '', 'Terminos y condiciones', '', 'publish', 'closed', 'closed', '', 'acf_terminos-y-condiciones', '', '', '2018-08-29 21:46:29', '2018-08-29 21:46:29', '', 0, 'http://localhost/vinoweb/?post_type=acf&#038;p=22', 0, 'acf', '', 0),
(23, 1, '2018-08-29 21:47:06', '2018-08-29 21:47:06', '', 'Términos y Condiciones', '', 'publish', 'closed', 'closed', '', 'terminos-y-condiciones', '', '', '2018-08-29 21:57:34', '2018-08-29 21:57:34', '', 0, 'http://localhost/vinoweb/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-08-29 21:47:06', '2018-08-29 21:47:06', '', 'Términos y Condiciones', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-08-29 21:47:06', '2018-08-29 21:47:06', '', 23, 'http://localhost/vinoweb/index.php/2018/08/29/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-08-29 21:57:34', '2018-08-29 21:57:34', '', 'Términos y Condiciones', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-08-29 21:57:34', '2018-08-29 21:57:34', '', 23, 'http://localhost/vinoweb/index.php/2018/08/29/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-08-29 21:59:28', '2018-08-29 21:59:28', '', 'dsfs', '', 'publish', 'closed', 'closed', '', 'dsfs', '', '', '2018-08-29 21:59:28', '2018-08-29 21:59:28', '', 0, 'http://localhost/vinoweb/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-08-29 21:59:28', '2018-08-29 21:59:28', '', 'dsfs', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-08-29 21:59:28', '2018-08-29 21:59:28', '', 26, 'http://localhost/vinoweb/index.php/2018/08/29/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-08-29 23:58:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-29 23:58:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/vinoweb/?post_type=acf&p=28', 0, 'acf', '', 0),
(29, 1, '2018-08-30 00:00:04', '2018-08-30 00:00:04', '', '3010201411324486273o', '', 'inherit', 'open', 'closed', '', '3010201411324486273o', '', '', '2018-08-30 00:00:04', '2018-08-30 00:00:04', '', 0, 'http://localhost/vinoweb/wp-content/uploads/2018/08/3010201411324486273o.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-08-30 00:00:04', '2018-08-30 00:00:04', '', 'Bin526-Charleston-Wine-Classes', '', 'inherit', 'open', 'closed', '', 'bin526-charleston-wine-classes', '', '', '2018-08-30 00:00:04', '2018-08-30 00:00:04', '', 0, 'http://localhost/vinoweb/wp-content/uploads/2018/08/Bin526-Charleston-Wine-Classes.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-08-30 00:00:05', '2018-08-30 00:00:05', '', 'Wine tasting event.', 'Closeup side view of group of adults tasting different wines at a local winery. They are using wine charts and writing down their impressions. There are two men and two women.', 'inherit', 'open', 'closed', '', 'wine-tasting-event', '', '', '2018-08-30 00:00:05', '2018-08-30 00:00:05', '', 0, 'http://localhost/vinoweb/wp-content/uploads/2018/08/cata-vino-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-08-30 00:00:12', '2018-08-30 00:00:12', '', 'home_bar2_sectionbg3', '', 'inherit', 'open', 'closed', '', 'home_bar2_sectionbg3', '', '', '2018-08-30 00:00:12', '2018-08-30 00:00:12', '', 0, 'http://localhost/vinoweb/wp-content/uploads/2018/08/home_bar2_sectionbg3.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2018-08-30 00:01:19', '2018-08-30 00:01:19', '', 'Landing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-08-30 00:01:19', '2018-08-30 00:01:19', '', 9, 'http://localhost/vinoweb/index.php/2018/08/30/9-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-08-30 00:03:19', '2018-08-30 00:03:19', '', 'home_bar2_sectionbg3', '', 'inherit', 'open', 'closed', '', 'home_bar2_sectionbg3-2', '', '', '2018-08-30 00:03:19', '2018-08-30 00:03:19', '', 9, 'http://localhost/vinoweb/wp-content/uploads/2018/08/home_bar2_sectionbg3-1.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-08-30 00:03:24', '2018-08-30 00:03:24', '', 'Landing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-08-30 00:03:24', '2018-08-30 00:03:24', '', 9, 'http://localhost/vinoweb/index.php/2018/08/30/9-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-09-01 22:07:15', '2018-09-01 22:07:15', '<strong>[title]</strong>\r\n\r\n[when]\r\n[location]\r\n<div>[description]</div>\r\n[link newwindow="yes"]See more details[/link]', 'Catas', '', 'publish', 'closed', 'closed', '', 'catas', '', '', '2018-09-01 22:07:15', '2018-09-01 22:07:15', '', 0, 'http://localhost/vinoweb/?post_type=calendar&#038;p=37', 0, 'calendar', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'google', 'google', 0),
(4, 'default-calendar', 'default-calendar', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(37, 3, 0),
(37, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'calendar_feed', '', 0, 1),
(4, 4, 'calendar_type', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"dcd65031bbe53e466995dfe8fd7f9ac17aacdc92b2a066cc814f51cc376ecff6";a:4:{s:10:"expiration";i:1536011088;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36";s:5:"login";i:1535838288;}s:64:"7d1a1fb7d38e5b616c1a39bec8923ddaf9338e249d5ff889278ed92c54e98b17";a:4:{s:10:"expiration";i:1536012003;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36";s:5:"login";i:1535839203;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1535587275'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BGxrbypgTUdSdlEYmrkoA6UQrMc0Te/', 'admin', 'mfcj307@gmail.com', '', '2018-08-29 19:18:20', '', 0, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_booking`
--
ALTER TABLE `wp_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indices de la tabla `wp_bookingdates`
--
ALTER TABLE `wp_bookingdates`
  ADD UNIQUE KEY `booking_id_dates` (`booking_id`,`booking_date`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_booking`
--
ALTER TABLE `wp_booking`
  MODIFY `booking_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;
--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
