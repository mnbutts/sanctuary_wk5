# WordPress MySQL database migration
#
# Generated: Monday 29. February 2016 01:32 UTC
# Hostname: localhost
# Database: `sanctuary_db`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-02-21 05:18:30', '2016-02-21 05:18:30', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://sanctuary.michellebutts.net', 'yes'),
(2, 'home', 'http://sanctuary.michellebutts.net', 'yes'),
(3, 'blogname', 'Sanctuary', 'yes'),
(4, 'blogdescription', 'ECO-RETREAT for PROFESSIONAL ARTISTS', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mbutts@mcad.edu', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:47:"show-current-template/show-current-template.php";i:2;s:48:"showid-for-postpagecategorytagcomment/showid.php";i:3;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'sanctuary_wk5', 'yes'),
(40, 'stylesheet', 'sanctuary_wk5', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '2', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1456723110;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1456723127;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1456779105;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'nonce_key', 'M%]g@=vPAKuu1cYfST1xCvpz1ne?ntH39_[ypiq$^jr8@R/^*Hydb3wAe$*X}+(1', 'yes'),
(107, 'nonce_salt', 'vaq]H9/HJU]9rkc[t6jlc<!::l|6@<fjyzcS[)h)LKKo@g@+A<e5>`*LWy  kag-', 'yes'),
(116, 'auth_key', '.if*:5T1HAMe#YIbSS8h/K-Y>eI^35wo$`8|M8]Bswe?}F(-(i!T:8^N;^!<t~u`', 'yes'),
(117, 'auth_salt', '2)S_r;4E5+ #IoD(Z~PWh>*OMvjs[mPj->}*s4V@HegDk,S(#:Y}(hwWz@uCtm7/', 'yes'),
(118, 'logged_in_key', 'kJ`Q(-h9<&ZK5OjGYyX/9OC,ibO#T/g7kA##u&dNkyW(>RLD%|2K9t#WF<ij?$*h', 'yes'),
(119, 'logged_in_salt', '!f?ethpurbz;Uk2Bw}d [vG1]z[0L]:bzf%#PYaTvP-1d$^ENr#<1}).328gB{-e', 'yes'),
(123, 'can_compress_scripts', '1', 'yes'),
(140, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1456031936;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(141, 'current_theme', 'sanctuary_wk5', 'yes'),
(142, 'theme_mods_sanctuary_wk5', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(151, 'recently_activated', 'a:1:{s:27:"wp-fullpage/wp-fullpage.php";i:1456666601;}', 'yes'),
(152, 'acf_version', '4.4.5', 'yes'),
(242, 'WPLANG', '', 'yes'),
(245, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(284, 'rewrite_rules', 'a:148:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:11:"fullpage/?$";s:28:"index.php?post_type=fullpage";s:41:"fullpage/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=fullpage&feed=$matches[1]";s:36:"fullpage/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=fullpage&feed=$matches[1]";s:28:"fullpage/page/([0-9]{1,})/?$";s:46:"index.php?post_type=fullpage&paged=$matches[1]";s:19:"fullpage-section/?$";s:36:"index.php?post_type=fullpage-section";s:49:"fullpage-section/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=fullpage-section&feed=$matches[1]";s:44:"fullpage-section/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=fullpage-section&feed=$matches[1]";s:36:"fullpage-section/page/([0-9]{1,})/?$";s:54:"index.php?post_type=fullpage-section&paged=$matches[1]";s:17:"fullpage-slide/?$";s:34:"index.php?post_type=fullpage-slide";s:47:"fullpage-slide/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=fullpage-slide&feed=$matches[1]";s:42:"fullpage-slide/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=fullpage-slide&feed=$matches[1]";s:34:"fullpage-slide/page/([0-9]{1,})/?$";s:52:"index.php?post_type=fullpage-slide&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:36:"fullpage/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"fullpage/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"fullpage/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"fullpage/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"fullpage/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"fullpage/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"fullpage/([^/]+)/embed/?$";s:41:"index.php?fullpage=$matches[1]&embed=true";s:29:"fullpage/([^/]+)/trackback/?$";s:35:"index.php?fullpage=$matches[1]&tb=1";s:49:"fullpage/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?fullpage=$matches[1]&feed=$matches[2]";s:44:"fullpage/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?fullpage=$matches[1]&feed=$matches[2]";s:37:"fullpage/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?fullpage=$matches[1]&paged=$matches[2]";s:44:"fullpage/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?fullpage=$matches[1]&cpage=$matches[2]";s:33:"fullpage/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?fullpage=$matches[1]&page=$matches[2]";s:25:"fullpage/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"fullpage/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"fullpage/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"fullpage/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"fullpage/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"fullpage/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"fullpage-section/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"fullpage-section/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"fullpage-section/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"fullpage-section/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"fullpage-section/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"fullpage-section/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"fullpage-section/([^/]+)/embed/?$";s:49:"index.php?fullpage-section=$matches[1]&embed=true";s:37:"fullpage-section/([^/]+)/trackback/?$";s:43:"index.php?fullpage-section=$matches[1]&tb=1";s:57:"fullpage-section/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?fullpage-section=$matches[1]&feed=$matches[2]";s:52:"fullpage-section/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?fullpage-section=$matches[1]&feed=$matches[2]";s:45:"fullpage-section/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?fullpage-section=$matches[1]&paged=$matches[2]";s:52:"fullpage-section/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?fullpage-section=$matches[1]&cpage=$matches[2]";s:41:"fullpage-section/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?fullpage-section=$matches[1]&page=$matches[2]";s:33:"fullpage-section/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"fullpage-section/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"fullpage-section/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"fullpage-section/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"fullpage-section/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"fullpage-section/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"fullpage-slide/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"fullpage-slide/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"fullpage-slide/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"fullpage-slide/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"fullpage-slide/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"fullpage-slide/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"fullpage-slide/([^/]+)/embed/?$";s:47:"index.php?fullpage-slide=$matches[1]&embed=true";s:35:"fullpage-slide/([^/]+)/trackback/?$";s:41:"index.php?fullpage-slide=$matches[1]&tb=1";s:55:"fullpage-slide/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?fullpage-slide=$matches[1]&feed=$matches[2]";s:50:"fullpage-slide/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?fullpage-slide=$matches[1]&feed=$matches[2]";s:43:"fullpage-slide/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?fullpage-slide=$matches[1]&paged=$matches[2]";s:50:"fullpage-slide/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?fullpage-slide=$matches[1]&cpage=$matches[2]";s:39:"fullpage-slide/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?fullpage-slide=$matches[1]&page=$matches[2]";s:31:"fullpage-slide/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"fullpage-slide/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"fullpage-slide/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"fullpage-slide/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"fullpage-slide/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"fullpage-slide/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(305, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'template-parts/home.php'),
(2, 2, '_edit_lock', '1456678181:1'),
(3, 5, '_wp_attached_file', '2016/02/SanctuarySite-home.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:864;s:4:"file";s:30:"2016/02/SanctuarySite-home.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"SanctuarySite-home-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"SanctuarySite-home-300x270.jpg";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"SanctuarySite-home-768x691.jpg";s:5:"width";i:768;s:6:"height";i:691;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 2, '_edit_last', '1'),
(25, 10, '_menu_item_type', 'post_type'),
(26, 10, '_menu_item_menu_item_parent', '0'),
(27, 10, '_menu_item_object_id', '2'),
(28, 10, '_menu_item_object', 'page'),
(29, 10, '_menu_item_target', ''),
(30, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(31, 10, '_menu_item_xfn', ''),
(32, 10, '_menu_item_url', ''),
(33, 10, '_menu_item_orphaned', '1456606864'),
(34, 11, '_menu_item_type', 'post_type'),
(35, 11, '_menu_item_menu_item_parent', '0'),
(36, 11, '_menu_item_object_id', '2'),
(37, 11, '_menu_item_object', 'page'),
(38, 11, '_menu_item_target', ''),
(39, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(40, 11, '_menu_item_xfn', ''),
(41, 11, '_menu_item_url', ''),
(42, 11, '_menu_item_orphaned', '1456606864'),
(43, 12, '_menu_item_type', 'custom'),
(44, 12, '_menu_item_menu_item_parent', '0'),
(45, 12, '_menu_item_object_id', '12'),
(46, 12, '_menu_item_object', 'custom'),
(47, 12, '_menu_item_target', ''),
(48, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 12, '_menu_item_xfn', ''),
(50, 12, '_menu_item_url', 'http://#'),
(52, 13, '_menu_item_type', 'custom'),
(53, 13, '_menu_item_menu_item_parent', '0'),
(54, 13, '_menu_item_object_id', '13'),
(55, 13, '_menu_item_object', 'custom'),
(56, 13, '_menu_item_target', ''),
(57, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 13, '_menu_item_xfn', ''),
(59, 13, '_menu_item_url', 'http://#'),
(61, 14, '_menu_item_type', 'custom'),
(62, 14, '_menu_item_menu_item_parent', '0'),
(63, 14, '_menu_item_object_id', '14'),
(64, 14, '_menu_item_object', 'custom'),
(65, 14, '_menu_item_target', ''),
(66, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(67, 14, '_menu_item_xfn', ''),
(68, 14, '_menu_item_url', 'http://#'),
(70, 15, '_menu_item_type', 'custom'),
(71, 15, '_menu_item_menu_item_parent', '0'),
(72, 15, '_menu_item_object_id', '15'),
(73, 15, '_menu_item_object', 'custom'),
(74, 15, '_menu_item_target', ''),
(75, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(76, 15, '_menu_item_xfn', ''),
(77, 15, '_menu_item_url', 'http://#'),
(79, 16, '_menu_item_type', 'custom'),
(80, 16, '_menu_item_menu_item_parent', '0'),
(81, 16, '_menu_item_object_id', '16'),
(82, 16, '_menu_item_object', 'custom'),
(83, 16, '_menu_item_target', ''),
(84, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 16, '_menu_item_xfn', ''),
(86, 16, '_menu_item_url', 'http://#'),
(88, 17, '_menu_item_type', 'custom'),
(89, 17, '_menu_item_menu_item_parent', '0'),
(90, 17, '_menu_item_object_id', '17'),
(91, 17, '_menu_item_object', 'custom'),
(92, 17, '_menu_item_target', ''),
(93, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(94, 17, '_menu_item_xfn', ''),
(95, 17, '_menu_item_url', 'http://#'),
(97, 22, '_edit_last', '1'),
(98, 22, 'field_56d28beab1eaf', 'a:14:{s:3:"key";s:19:"field_56d28beab1eaf";s:5:"label";s:12:"page section";s:4:"name";s:12:"page_section";s:4:"type";s:4:"text";s:12:"instructions";s:34:"Enter the name of the page section";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(99, 22, 'field_56d28de7b1eb0', 'a:14:{s:3:"key";s:19:"field_56d28de7b1eb0";s:5:"label";s:16:"page description";s:4:"name";s:16:"page_description";s:4:"type";s:4:"text";s:12:"instructions";s:26:"Enter the page description";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(101, 22, 'position', 'normal'),
(102, 22, 'layout', 'no_box'),
(103, 22, 'hide_on_screen', ''),
(104, 22, '_edit_lock', '1456677350:1'),
(107, 23, 'page_section', 'A PLACE TO WORK'),
(108, 23, '_page_section', 'field_56d28beab1eaf'),
(109, 23, 'page_description', 'without distraction'),
(110, 23, '_page_description', 'field_56d28de7b1eb0'),
(111, 2, 'page_section', 'A PLACE TO WORK'),
(112, 2, '_page_section', 'field_56d28beab1eaf'),
(113, 2, 'page_description', 'without distraction'),
(114, 2, '_page_description', 'field_56d28de7b1eb0'),
(115, 24, '_edit_last', '1'),
(116, 24, '_edit_lock', '1456678318:1'),
(117, 24, '_wp_page_template', 'template-parts/home.php'),
(118, 25, 'page_section', 'MONASTIC ENVIRONMENT'),
(119, 25, '_page_section', 'field_56d28beab1eaf'),
(120, 25, 'page_description', 'Wisconsin woodlands, natural waterfall'),
(121, 25, '_page_description', 'field_56d28de7b1eb0'),
(122, 24, 'page_section', 'MONASTIC ENVIRONMENT'),
(123, 24, '_page_section', 'field_56d28beab1eaf'),
(124, 24, 'page_description', 'Wisconsin woodlands, natural waterfall'),
(125, 24, '_page_description', 'field_56d28de7b1eb0'),
(126, 26, '_edit_last', '1'),
(127, 26, '_edit_lock', '1456666237:1'),
(128, 26, '_wp_page_template', 'default') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(129, 27, 'page_section', 'WORK/LIVE STUDIO CABINS'),
(130, 27, '_page_section', 'field_56d28beab1eaf'),
(131, 27, 'page_description', 'designed for specific art practices'),
(132, 27, '_page_description', 'field_56d28de7b1eb0'),
(133, 26, 'page_section', 'WORK/LIVE STUDIO CABINS'),
(134, 26, '_page_section', 'field_56d28beab1eaf'),
(135, 26, 'page_description', 'designed for specific art practices'),
(136, 26, '_page_description', 'field_56d28de7b1eb0'),
(137, 28, 'page_section', 'WORK/LIVE STUDIO CABINS'),
(138, 28, '_page_section', 'field_56d28beab1eaf'),
(139, 28, 'page_description', 'designed for specific art practices'),
(140, 28, '_page_description', 'field_56d28de7b1eb0'),
(141, 29, '_wp_attached_file', '2016/02/homepage1.jpg'),
(142, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:864;s:4:"file";s:21:"2016/02/homepage1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"homepage1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"homepage1-300x270.jpg";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"homepage1-768x691.jpg";s:5:"width";i:768;s:6:"height";i:691;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(144, 2, 'wpfp_fullpage_pt_fullpage_options', 'a:52:{s:12:"isItFullpage";s:3:"yes";s:6:"resize";s:2:"no";s:13:"fixedElements";s:0:"";s:15:"responsiveWidth";s:1:"0";s:16:"responsiveHeight";s:1:"0";s:13:"bgLoadingMode";s:11:"all-at-once";s:10:"paddingTop";s:0:"";s:13:"paddingBottom";s:0:"";s:13:"fullpageColor";s:0:"";s:14:"fullNavigation";s:3:"yes";s:25:"fullNavigationOrientation";s:10:"horizontal";s:10:"navigation";s:3:"yes";s:18:"navigationPosition";s:4:"left";s:16:"slidesNavigation";s:3:"yes";s:17:"slidesNavPosition";s:3:"top";s:11:"lockAnchors";s:2:"no";s:29:"fullNavigationBackgroundColor";s:24:"rgba(255, 255, 255, 0.8)";s:23:"fullNavigationTextColor";s:7:"#666666";s:35:"fullNavigationActiveBackgroundColor";s:24:"rgba(130, 130, 130, 0.8)";s:29:"fullNavigationActiveTextColor";s:7:"#ffffff";s:23:"sectionsNavigationColor";s:7:"#333333";s:29:"sectionsNavigationActiveColor";s:7:"#666666";s:12:"tooltipColor";s:7:"#ffffff";s:14:"tooltipBgColor";s:7:"#333333";s:4:"css3";s:3:"yes";s:8:"parallax";s:2:"no";s:14:"scrollingSpeed";s:3:"700";s:6:"easing";s:10:"easeInQuad";s:10:"easingCss3";s:6:"linear";s:10:"loopBottom";s:3:"yes";s:7:"loopTop";s:3:"yes";s:14:"loopHorizontal";s:3:"yes";s:13:"autoScrolling";s:3:"yes";s:14:"scrollOverflow";s:3:"yes";s:20:"normalScrollElements";s:0:"";s:33:"normalScrollElementTouchThreshold";s:1:"5";s:18:"continuousVertical";s:3:"yes";s:16:"touchSensitivity";s:2:"15";s:12:"fitToSection";s:3:"yes";s:17:"fitToSectionDelay";s:4:"1000";s:9:"scrollBar";s:2:"no";s:17:"keyboardScrolling";s:3:"yes";s:13:"animateAnchor";s:3:"yes";s:13:"recordHistory";s:3:"yes";s:7:"onLeave";s:0:"";s:9:"afterLoad";s:0:"";s:11:"afterRender";s:0:"";s:11:"afterResize";s:0:"";s:14:"afterSlideLoad";s:0:"";s:12:"onSlideLeave";s:0:"";s:10:"onDomReady";s:0:"";s:11:"verboseMode";s:2:"no";}'),
(145, 2, 'wpfp_fullpage_pt_sections_options', 'a:21:{s:12:"sectionsType";s:8:"sections";s:8:"sections";s:0:"";s:8:"taxonomy";s:8:"category";s:4:"term";s:0:"";s:13:"category-term";s:1:"1";s:15:"includeChildren";s:2:"no";s:8:"postType";s:4:"post";s:13:"includedPosts";s:0:"";s:22:"includedPostsCategory1";s:0:"";s:17:"includedPostsPost";s:0:"";s:17:"includedPostsPage";s:0:"";s:13:"excludedPosts";s:0:"";s:22:"excludedPostsCategory1";s:0:"";s:17:"excludedPostsPost";s:0:"";s:17:"excludedPostsPage";s:0:"";s:12:"sectionColor";s:0:"";s:8:"navTitle";s:0:"";s:21:"slidesNavigationColor";s:7:"#333333";s:27:"slidesNavigationActiveColor";s:7:"#666666";s:21:"navigationArrowsColor";s:7:"#333333";s:26:"navigationArrowsHoverColor";s:7:"#666666";}'),
(146, 2, 'wpfp_fullpage_pt_slides_options', 'a:14:{s:16:"verticalPosition";s:6:"middle";s:18:"horizontalPosition";s:6:"center";s:10:"slideColor";s:0:"";s:12:"displayTitle";s:3:"yes";s:19:"displaySectionTitle";s:2:"no";s:11:"displayDate";s:2:"no";s:13:"displayAuthor";s:2:"no";s:12:"contentWidth";s:2:"50";s:19:"contentInnerHMargin";s:2:"10";s:19:"contentInnerVMargin";s:1:"5";s:22:"contentBackgroundColor";s:0:"";s:12:"contentStyle";s:0:"";s:17:"innerContentStyle";s:0:"";s:14:"slidesNavTitle";s:0:"";}'),
(147, 2, 'wpfp_fullpage_pt_custom_options', 'a:6:{s:13:"teaserDisplay";s:3:"yes";s:12:"teaserLength";s:3:"100";s:10:"countPosts";s:2:"10";s:7:"orderBy";s:4:"date";s:19:"orderByMetaValueKey";s:0:"";s:5:"order";s:3:"ASC";}'),
(148, 2, 'wpfp_slide_pt_slide_options', 'a:14:{s:16:"verticalPosition";s:7:"inherit";s:18:"horizontalPosition";s:7:"inherit";s:10:"slideColor";s:0:"";s:12:"displayTitle";s:7:"inherit";s:19:"displaySectionTitle";s:7:"inherit";s:11:"displayDate";s:7:"inherit";s:13:"displayAuthor";s:7:"inherit";s:12:"contentWidth";s:1:"0";s:19:"contentInnerHMargin";s:1:"0";s:19:"contentInnerVMargin";s:1:"0";s:22:"contentBackgroundColor";s:0:"";s:12:"contentStyle";s:0:"";s:17:"innerContentStyle";s:0:"";s:14:"slidesNavTitle";s:0:"";}'),
(149, 30, 'page_section', 'A PLACE TO WORK'),
(150, 30, '_page_section', 'field_56d28beab1eaf'),
(151, 30, 'page_description', 'without distraction'),
(152, 30, '_page_description', 'field_56d28de7b1eb0'),
(156, 31, 'page_section', 'A PLACE TO WORK'),
(157, 31, '_page_section', 'field_56d28beab1eaf'),
(158, 31, 'page_description', 'without distraction'),
(159, 31, '_page_description', 'field_56d28de7b1eb0'),
(160, 31, 'page_section2', 'MONASTIC ENVIRONMENT'),
(161, 31, '_page_section2', 'field_56d30019bc56b'),
(162, 31, 'page_description2', 'Wisconsin woodlands, natural waterfall'),
(163, 31, '_page_description2', 'field_56d30050bc56c'),
(164, 2, 'page_section2', ''),
(165, 2, '_page_section2', 'field_56d30019bc56b'),
(166, 2, 'page_description2', ''),
(167, 2, '_page_description2', 'field_56d30050bc56c'),
(176, 33, '_edit_last', '1'),
(177, 33, '_edit_lock', '1456670902:1'),
(178, 33, '_wp_page_template', 'default'),
(179, 34, 'page_section', 'GOURMET ORGANIC'),
(180, 34, '_page_section', 'field_56d28beab1eaf'),
(181, 34, 'page_description', 'meals brought daily to your private studio cabin'),
(182, 34, '_page_description', 'field_56d28de7b1eb0'),
(183, 34, 'page_section2', ''),
(184, 34, '_page_section2', 'field_56d30019bc56b'),
(185, 34, 'page_description2', ''),
(186, 34, '_page_description2', 'field_56d30050bc56c'),
(187, 33, 'page_section', 'GOURMET ORGANIC'),
(188, 33, '_page_section', 'field_56d28beab1eaf'),
(189, 33, 'page_description', 'meals brought daily to your private studio cabin'),
(190, 33, '_page_description', 'field_56d28de7b1eb0'),
(191, 33, 'page_section2', ''),
(192, 33, '_page_section2', 'field_56d30019bc56b'),
(193, 33, 'page_description2', ''),
(194, 33, '_page_description2', 'field_56d30050bc56c'),
(195, 35, '_edit_last', '1'),
(196, 35, '_edit_lock', '1456670987:1'),
(197, 35, '_wp_page_template', 'default'),
(198, 36, 'page_section', 'ENGAGING COMMUNITY'),
(199, 36, '_page_section', 'field_56d28beab1eaf'),
(200, 36, 'page_description', 'live music, lectures, group dinner'),
(201, 36, '_page_description', 'field_56d28de7b1eb0'),
(202, 36, 'page_section2', ''),
(203, 36, '_page_section2', 'field_56d30019bc56b'),
(204, 36, 'page_description2', ''),
(205, 36, '_page_description2', 'field_56d30050bc56c'),
(206, 35, 'page_section', 'ENGAGING COMMUNITY'),
(207, 35, '_page_section', 'field_56d28beab1eaf'),
(208, 35, 'page_description', 'live music, lectures, group dinner'),
(209, 35, '_page_description', 'field_56d28de7b1eb0'),
(210, 35, 'page_section2', ''),
(211, 35, '_page_section2', 'field_56d30019bc56b'),
(212, 35, 'page_description2', ''),
(213, 35, '_page_description2', 'field_56d30050bc56c'),
(214, 37, 'page_section', 'A PLACE TO WORK'),
(215, 37, '_page_section', 'field_56d28beab1eaf'),
(216, 37, 'page_description', 'without distraction'),
(217, 37, '_page_description', 'field_56d28de7b1eb0'),
(218, 37, 'page_section2', ''),
(219, 37, '_page_section2', 'field_56d30019bc56b'),
(220, 37, 'page_description2', ''),
(221, 37, '_page_description2', 'field_56d30050bc56c'),
(222, 22, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(223, 38, '_wp_attached_file', '2016/02/homepage2.jpg'),
(224, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:864;s:4:"file";s:21:"2016/02/homepage2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"homepage2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"homepage2-300x270.jpg";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"homepage2-768x691.jpg";s:5:"width";i:768;s:6:"height";i:691;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(225, 39, '_wp_attached_file', '2016/02/homepage3.jpg'),
(226, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:864;s:4:"file";s:21:"2016/02/homepage3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"homepage3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"homepage3-300x270.jpg";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"homepage3-768x691.jpg";s:5:"width";i:768;s:6:"height";i:691;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(227, 40, '_wp_attached_file', '2016/02/homepage4.jpg'),
(228, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:724;s:4:"file";s:21:"2016/02/homepage4.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"homepage4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"homepage4-300x226.jpg";s:5:"width";i:300;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"homepage4-768x579.jpg";s:5:"width";i:768;s:6:"height";i:579;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(229, 41, '_wp_attached_file', '2016/02/homepage5.jpg'),
(230, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:724;s:4:"file";s:21:"2016/02/homepage5.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"homepage5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"homepage5-300x226.jpg";s:5:"width";i:300;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"homepage5-768x579.jpg";s:5:"width";i:768;s:6:"height";i:579;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-02-21 05:18:30', '2016-02-21 05:18:30', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-02-21 05:18:30', '2016-02-21 05:18:30', '', 0, 'http://sanctuary.michellebutts.net/?p=1', 0, 'post', '', 1),
(2, 1, '2016-02-21 05:18:30', '2016-02-21 05:18:30', '', 'Full Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-02-28 16:37:30', '2016-02-28 16:37:30', '', 0, 'http://sanctuary.michellebutts.net/?page_id=2', 0, 'page', '', 0),
(5, 1, '2016-02-22 22:40:45', '2016-02-22 22:40:45', '', 'SanctuarySite-home', '', 'inherit', 'open', 'closed', '', 'sanctuarysite-home', '', '', '2016-02-22 22:40:45', '2016-02-22 22:40:45', '', 2, 'http://sanctuary.michellebutts.net/wp-content/uploads/2016/02/SanctuarySite-home.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2016-02-22 22:40:57', '2016-02-22 22:40:57', 'This is a test.', 'Sanctuary', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-22 22:40:57', '2016-02-22 22:40:57', '', 2, 'http://sanctuary.michellebutts.net/2016/02/22/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-02-27 20:51:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-02-27 20:51:45', '0000-00-00 00:00:00', '', 0, 'http://sanctuary.michellebutts.net/?post_type=acf&p=7', 0, 'acf', '', 0),
(10, 1, '2016-02-27 21:01:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-27 21:01:04', '0000-00-00 00:00:00', '', 0, 'http://sanctuary.michellebutts.net/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2016-02-27 21:01:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-27 21:01:04', '0000-00-00 00:00:00', '', 0, 'http://sanctuary.michellebutts.net/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 'STUDIO CABINS', '', 'publish', 'closed', 'closed', '', 'studio-cabins', '', '', '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 0, 'http://sanctuary.michellebutts.net/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 'APPLY', '', 'publish', 'closed', 'closed', '', 'apply', '', '', '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 0, 'http://sanctuary.michellebutts.net/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 'MEALS', '', 'publish', 'closed', 'closed', '', 'meals', '', '', '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 0, 'http://sanctuary.michellebutts.net/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 'EVENTS', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 0, 'http://sanctuary.michellebutts.net/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 'LOCATION', '', 'publish', 'closed', 'closed', '', 'location', '', '', '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 0, 'http://sanctuary.michellebutts.net/?p=16', 5, 'nav_menu_item', '', 0),
(17, 1, '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 'ABOUT', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2016-02-27 21:03:06', '2016-02-27 21:03:06', '', 0, 'http://sanctuary.michellebutts.net/?p=17', 6, 'nav_menu_item', '', 0),
(18, 1, '2016-02-27 21:04:23', '2016-02-27 21:04:23', 'live music, lectures, group dinners', 'ENGAGING COMMUNITY', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-27 21:04:23', '2016-02-27 21:04:23', '', 2, 'http://sanctuary.michellebutts.net/2016/02/27/2-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-02-28 00:31:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-02-28 00:31:42', '0000-00-00 00:00:00', '', 0, 'http://sanctuary.michellebutts.net/?page_id=19', 0, 'page', '', 0),
(21, 1, '2016-02-28 05:41:18', '2016-02-28 05:41:18', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-28 05:41:18', '2016-02-28 05:41:18', '', 2, 'http://sanctuary.michellebutts.net/2016/02/28/2-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-02-28 06:05:18', '2016-02-28 06:05:18', '', 'Sections', '', 'publish', 'closed', 'closed', '', 'acf_sections', '', '', '2016-02-28 16:38:11', '2016-02-28 16:38:11', '', 0, 'http://sanctuary.michellebutts.net/?post_type=acf&#038;p=22', 0, 'acf', '', 0),
(23, 1, '2016-02-28 06:09:36', '2016-02-28 06:09:36', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-28 06:09:36', '2016-02-28 06:09:36', '', 2, 'http://sanctuary.michellebutts.net/2016/02/28/2-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-02-28 13:11:01', '2016-02-28 13:11:01', '', 'Home 2', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2016-02-28 13:11:01', '2016-02-28 13:11:01', '', 0, 'http://sanctuary.michellebutts.net/?page_id=24', 0, 'page', '', 0),
(25, 1, '2016-02-28 13:11:01', '2016-02-28 13:11:01', '', 'Home 2', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-02-28 13:11:01', '2016-02-28 13:11:01', '', 24, 'http://sanctuary.michellebutts.net/2016/02/28/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-02-28 13:13:05', '2016-02-28 13:13:05', '', 'Home 3', '', 'publish', 'closed', 'closed', '', 'home-3', '', '', '2016-02-28 13:13:05', '2016-02-28 13:13:05', '', 0, 'http://sanctuary.michellebutts.net/?page_id=26', 0, 'page', '', 0),
(27, 1, '2016-02-28 13:12:45', '2016-02-28 13:12:45', '', 'Home 3', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-02-28 13:12:45', '2016-02-28 13:12:45', '', 26, 'http://sanctuary.michellebutts.net/2016/02/28/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-02-28 13:13:05', '2016-02-28 13:13:05', '', 'Home 3', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-02-28 13:13:05', '2016-02-28 13:13:05', '', 26, 'http://sanctuary.michellebutts.net/2016/02/28/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-02-28 13:35:25', '2016-02-28 13:35:25', '', 'homepage1', '', 'inherit', 'open', 'closed', '', 'homepage1', '', '', '2016-02-28 13:35:25', '2016-02-28 13:35:25', '', 2, 'http://sanctuary.michellebutts.net/wp-content/uploads/2016/02/homepage1.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2016-02-28 14:11:09', '2016-02-28 14:11:09', '', 'Full Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-28 14:11:09', '2016-02-28 14:11:09', '', 2, 'http://sanctuary.michellebutts.net/2016/02/28/2-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2016-02-28 14:15:13', '2016-02-28 14:15:13', '', 'Full Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-28 14:15:13', '2016-02-28 14:15:13', '', 2, 'http://sanctuary.michellebutts.net/2016/02/28/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-02-28 14:50:40', '2016-02-28 14:50:40', '', 'home 4', '', 'publish', 'closed', 'closed', '', 'home-4', '', '', '2016-02-28 14:50:40', '2016-02-28 14:50:40', '', 0, 'http://sanctuary.michellebutts.net/?page_id=33', 0, 'page', '', 0),
(34, 1, '2016-02-28 14:50:40', '2016-02-28 14:50:40', '', 'home 4', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-02-28 14:50:40', '2016-02-28 14:50:40', '', 33, 'http://sanctuary.michellebutts.net/2016/02/28/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-02-28 14:52:09', '2016-02-28 14:52:09', '', 'home 5', '', 'publish', 'closed', 'closed', '', 'home-5', '', '', '2016-02-28 14:52:09', '2016-02-28 14:52:09', '', 0, 'http://sanctuary.michellebutts.net/?page_id=35', 0, 'page', '', 0),
(36, 1, '2016-02-28 14:52:09', '2016-02-28 14:52:09', '', 'home 5', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-02-28 14:52:09', '2016-02-28 14:52:09', '', 35, 'http://sanctuary.michellebutts.net/2016/02/28/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-02-28 16:37:30', '2016-02-28 16:37:30', '', 'Full Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-28 16:37:30', '2016-02-28 16:37:30', '', 2, 'http://sanctuary.michellebutts.net/2016/02/28/2-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-02-29 00:28:37', '2016-02-29 00:28:37', '', 'homepage2', '', 'inherit', 'open', 'closed', '', 'homepage2', '', '', '2016-02-29 00:28:37', '2016-02-29 00:28:37', '', 0, 'http://sanctuary.michellebutts.net/wp-content/uploads/2016/02/homepage2.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2016-02-29 00:28:38', '2016-02-29 00:28:38', '', 'homepage3', '', 'inherit', 'open', 'closed', '', 'homepage3', '', '', '2016-02-29 00:28:38', '2016-02-29 00:28:38', '', 0, 'http://sanctuary.michellebutts.net/wp-content/uploads/2016/02/homepage3.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2016-02-29 00:28:38', '2016-02-29 00:28:38', '', 'homepage4', '', 'inherit', 'open', 'closed', '', 'homepage4', '', '', '2016-02-29 00:28:38', '2016-02-29 00:28:38', '', 0, 'http://sanctuary.michellebutts.net/wp-content/uploads/2016/02/homepage4.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2016-02-29 00:28:39', '2016-02-29 00:28:39', '', 'homepage5', '', 'inherit', 'open', 'closed', '', 'homepage5', '', '', '2016-02-29 00:28:39', '2016-02-29 00:28:39', '', 0, 'http://sanctuary.michellebutts.net/wp-content/uploads/2016/02/homepage5.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-02-29 01:30:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-02-29 01:30:28', '0000-00-00 00:00:00', '', 0, 'http://sanctuary.michellebutts.net/?p=42', 0, 'post', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 3, 0),
(13, 3, 0),
(14, 3, 0),
(15, 3, 0),
(16, 3, 0),
(17, 3, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 6) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'main nav', 'main-nav', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sanctuary_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '42'),
(16, 1, 'wp_user-settings', 'libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1456180852'),
(18, 1, 'session_tokens', 'a:2:{s:64:"85512e078500b7c38945a83c0a7f3e1d9a4023fed1cba01b4299c9c768391877";a:4:{s:10:"expiration";i:1456714409;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36";s:5:"login";i:1456541609;}s:64:"bdae33b0b15961f63bb6fcefa0ed1bbde7e96c4e7dfedb1c8b0d31fc6e2e70c3";a:4:{s:10:"expiration";i:1456714469;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36";s:5:"login";i:1456541669;}}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sanctuary_admin', '$P$BgEkbdSbiB4wFP3cVSlawVcYra9J5q0', 'sanctuary_admin', 'mbutts@mcad.edu', '', '2016-02-21 05:18:30', '', 0, 'sanctuary_admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

