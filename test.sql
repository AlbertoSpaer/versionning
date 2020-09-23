-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  mer. 23 sep. 2020 à 15:34
-- Version du serveur :  5.7.28
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `ossn_annotations`
--

DROP TABLE IF EXISTS `ossn_annotations`;
CREATE TABLE IF NOT EXISTS `ossn_annotations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner_guid` bigint(20) NOT NULL,
  `subject_guid` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `subject_guid` (`subject_guid`),
  KEY `time_created` (`time_created`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ossn_annotations`
--

INSERT INTO `ossn_annotations` (`id`, `owner_guid`, `subject_guid`, `type`, `time_created`) VALUES
(1, 1, 2, 'messagetypingstatus', 1600517414),
(2, 2, 1, 'messagetypingstatus', 1600517456),
(3, 2, 6, 'comments:post', 1600517551),
(4, 2, 5, 'comments:post', 1600517607),
(5, 1, 5, 'comments:post', 1600517686);

-- --------------------------------------------------------

--
-- Structure de la table `ossn_components`
--

DROP TABLE IF EXISTS `ossn_components`;
CREATE TABLE IF NOT EXISTS `ossn_components` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `com_id` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ossn_components`
--

INSERT INTO `ossn_components` (`id`, `com_id`, `active`) VALUES
(1, 'OssnProfile', 1),
(2, 'OssnWall', 1),
(3, 'OssnComments', 1),
(4, 'OssnLikes', 1),
(5, 'OssnPhotos', 1),
(6, 'OssnNotifications', 1),
(7, 'OssnSearch', 1),
(8, 'OssnMessages', 1),
(9, 'OssnAds', 1),
(10, 'OssnGroups', 1),
(11, 'OssnSitePages', 1),
(12, 'OssnBlock', 1),
(13, 'OssnChat', 1),
(14, 'OssnPoke', 1),
(15, 'OssnInvite', 1),
(16, 'OssnEmbed', 1),
(17, 'OssnSmilies', 1),
(18, 'OssnSounds', 1),
(19, 'OssnAutoPagination', 1),
(20, 'OssnMessageTyping', 1),
(21, 'OssnRealTimeComments', 1),
(22, 'OssnPostBackground', 1),
(23, 'AdsInserter', 1),
(24, 'TextareaSupport', 1),
(25, 'WhoIsOnline', 1),
(26, 'ReduceImagesSize', 1),
(27, 'Hangout', 1),
(28, 'GroupInvite', 1),
(29, 'Members', 1),
(30, 'Blog', 1),
(31, 'bio', 1),
(32, 'ProfileViews', 1),
(33, 'OssnServices', 1),
(34, 'MentionUsers', 1),
(35, 'MemberAvatars', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ossn_entities`
--

DROP TABLE IF EXISTS `ossn_entities`;
CREATE TABLE IF NOT EXISTS `ossn_entities` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner_guid` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) DEFAULT NULL,
  `permission` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `owner_guid` (`owner_guid`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`),
  KEY `active` (`active`),
  KEY `permission` (`permission`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `eky_ts` (`type`,`subtype`),
  KEY `eky_tso` (`type`,`subtype`,`owner_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ossn_entities`
--

INSERT INTO `ossn_entities` (`guid`, `owner_guid`, `type`, `subtype`, `time_created`, `time_updated`, `permission`, `active`) VALUES
(1, 1, 'user', 'birthdate', 1600512696, 0, 2, 1),
(2, 1, 'user', 'gender', 1600512696, 0, 2, 1),
(3, 1, 'user', 'password_algorithm', 1600512696, 0, 2, 1),
(4, 1, 'user', 'cover_time', 1600513945, 1600513988, 2, 1),
(5, 1, 'user', 'file:profile:cover', 1600513987, 0, 2, 1),
(6, 1, 'user', 'cover_guid', 1600513988, 0, 2, 1),
(7, 1, 'object', 'item_type', 1600513988, 0, 2, 1),
(8, 1, 'object', 'item_guid', 1600513988, 0, 2, 1),
(9, 1, 'object', 'poster_guid', 1600513988, 0, 2, 1),
(10, 1, 'object', 'access', 1600513988, 0, 2, 1),
(11, 1, 'object', 'time_updated', 1600513988, 0, 2, 1),
(12, 1, 'user', 'file:profile:photo', 1600514005, 0, 2, 1),
(13, 1, 'user', 'icon_time', 1600514005, 0, 2, 1),
(14, 1, 'user', 'icon_guid', 1600514005, 0, 2, 1),
(15, 2, 'object', 'item_type', 1600514005, 0, 2, 1),
(16, 2, 'object', 'item_guid', 1600514005, 0, 2, 1),
(17, 2, 'object', 'poster_guid', 1600514005, 0, 2, 1),
(18, 2, 'object', 'access', 1600514005, 0, 2, 1),
(19, 2, 'object', 'time_updated', 1600514005, 0, 2, 1),
(20, 3, 'object', 'access', 1600514126, 0, 2, 1),
(21, 3, 'object', 'file:ossn:aphoto', 1600514205, 0, 2, 1),
(22, 3, 'object', 'file:ossn:aphoto', 1600514205, 0, 2, 1),
(23, 3, 'object', 'file:ossn:aphoto', 1600514205, 0, 2, 1),
(24, 3, 'object', 'file:ossn:aphoto', 1600514205, 0, 2, 1),
(25, 4, 'object', 'photos_guids', 1600514205, 0, 2, 1),
(26, 4, 'object', 'item_type', 1600514205, 0, 2, 1),
(27, 4, 'object', 'item_guid', 1600514205, 0, 2, 1),
(28, 4, 'object', 'poster_guid', 1600514205, 0, 2, 1),
(29, 4, 'object', 'access', 1600514205, 0, 2, 1),
(30, 4, 'object', 'time_updated', 1600514205, 0, 2, 1),
(31, 5, 'object', 'item_type', 1600514256, 0, 2, 1),
(32, 5, 'object', 'item_guid', 1600514256, 0, 2, 1),
(33, 5, 'object', 'poster_guid', 1600514256, 0, 2, 1),
(34, 5, 'object', 'access', 1600514256, 0, 2, 1),
(35, 5, 'object', 'time_updated', 1600514256, 0, 2, 1),
(36, 5, 'object', 'postbackground_type', 1600514256, 0, 2, 1),
(37, 6, 'object', 'item_type', 1600514332, 0, 2, 1),
(38, 6, 'object', 'item_guid', 1600514332, 0, 2, 1),
(39, 6, 'object', 'poster_guid', 1600514332, 0, 2, 1),
(40, 6, 'object', 'access', 1600514332, 0, 2, 1),
(41, 6, 'object', 'time_updated', 1600514332, 0, 2, 1),
(42, 7, 'object', 'membership', 1600514349, 0, 2, 1),
(43, 7, 'object', 'file:cover', 1600514381, 0, 2, 1),
(44, 8, 'object', 'site_url', 1600514584, 0, 2, 1),
(45, 8, 'object', 'file:ossnads', 1600514584, 0, 2, 1),
(46, 17, 'component', 'compatibility_mode', 1600514605, 0, 2, 1),
(47, 17, 'component', 'close_anywhere', 1600514605, 0, 2, 1),
(48, 1, 'user', 'cover_position', 1600514727, 1600521836, 2, 1),
(49, 2, 'user', 'birthdate', 1600515286, 0, 2, 1),
(50, 2, 'user', 'gender', 1600515286, 0, 2, 1),
(51, 2, 'user', 'password_algorithm', 1600515286, 0, 2, 1),
(52, 10, 'object', 'item_type', 1600516384, 0, 2, 1),
(53, 10, 'object', 'item_guid', 1600516384, 0, 2, 1),
(54, 10, 'object', 'poster_guid', 1600516384, 0, 2, 1),
(55, 10, 'object', 'access', 1600516384, 0, 2, 1),
(56, 10, 'object', 'time_updated', 1600516384, 0, 2, 1),
(57, 9, 'object', 'access', 1600516385, 0, 2, 1),
(58, 9, 'object', 'poster_guid', 1600516385, 0, 2, 1),
(59, 9, 'object', 'blog', 1600516385, 0, 2, 1),
(60, 2, 'user', 'cover_time', 1600516506, 0, 2, 1),
(61, 1, 'annotation', 'status_time_updated', 1600517414, 1600522133, 2, 1),
(62, 1, 'annotation', 'messagetypingstatus', 1600517414, 1600522133, 2, 1),
(63, 1, 'message', 'is_deleted_from', 1600517422, 0, 2, 1),
(64, 1, 'message', 'is_deleted_to', 1600517422, 0, 2, 1),
(65, 2, 'message', 'is_deleted_from', 1600517451, 0, 2, 1),
(66, 2, 'message', 'is_deleted_to', 1600517451, 0, 2, 1),
(67, 2, 'annotation', 'status_time_updated', 1600517456, 1600522137, 2, 1),
(68, 2, 'annotation', 'messagetypingstatus', 1600517456, 1600522137, 2, 1),
(69, 3, 'message', 'is_deleted_from', 1600517520, 0, 2, 1),
(70, 3, 'message', 'is_deleted_to', 1600517520, 0, 2, 1),
(71, 3, 'annotation', 'comments:post', 1600517551, 0, 2, 1),
(72, 4, 'annotation', 'comments:post', 1600517607, 0, 2, 1),
(73, 5, 'annotation', 'comments:post', 1600517686, 0, 2, 1),
(90, 13, 'object', 'item_guid', 1600522241, 0, 2, 1),
(89, 13, 'object', 'item_type', 1600522241, 0, 2, 1),
(88, 4, 'message', 'is_deleted_to', 1600522088, 0, 2, 1),
(87, 4, 'message', 'is_deleted_from', 1600522088, 0, 2, 1),
(84, 3, 'user', 'birthdate', 1600519823, 0, 2, 1),
(85, 3, 'user', 'gender', 1600519823, 0, 2, 1),
(86, 3, 'user', 'password_algorithm', 1600519823, 0, 2, 1),
(91, 13, 'object', 'poster_guid', 1600522241, 0, 2, 1),
(92, 13, 'object', 'access', 1600522241, 0, 2, 1),
(93, 13, 'object', 'time_updated', 1600522241, 0, 2, 1),
(94, 3, 'user', 'cover_time', 1600523573, 0, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ossn_entities_metadata`
--

DROP TABLE IF EXISTS `ossn_entities_metadata`;
CREATE TABLE IF NOT EXISTS `ossn_entities_metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `guid` bigint(20) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guid` (`guid`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ossn_entities_metadata`
--

INSERT INTO `ossn_entities_metadata` (`id`, `guid`, `value`) VALUES
(1, 1, '04/01/1997'),
(2, 2, 'male'),
(3, 3, 'bcrypt'),
(4, 4, '1600513988'),
(5, 5, 'profile/cover/8a7d46b4615d59b04afc280c37636fdc.jpg'),
(6, 6, '5'),
(7, 7, 'cover:photo'),
(8, 8, '5'),
(9, 9, '1'),
(10, 10, '2'),
(11, 11, '0'),
(12, 12, 'profile/photo/1c54181fe6bd95011755bf4058ba95cb.jpg'),
(13, 13, '1600514005'),
(14, 14, '12'),
(15, 15, 'profile:photo'),
(16, 16, '12'),
(17, 17, '1'),
(18, 18, '2'),
(19, 19, '0'),
(20, 20, '2'),
(21, 21, 'album/photos/3501def6ca8354edac551bbe100bea80.jpg'),
(22, 22, 'album/photos/b22e99b95f6006e3338c513998d0656e.jpg'),
(23, 23, 'album/photos/21da1948a05a5d49c11bb4a86826ea38.jpg'),
(24, 24, 'album/photos/2fdf4d59587c964fa128399389075edd.jpg'),
(25, 25, '21,22,23,24'),
(26, 26, 'album:photos:wall'),
(27, 27, '3'),
(28, 28, '1'),
(29, 29, '2'),
(30, 30, '0'),
(31, 31, ''),
(32, 32, ''),
(33, 33, '1'),
(34, 34, '2'),
(35, 35, '0'),
(36, 36, 'pbg5'),
(37, 37, ''),
(38, 38, ''),
(39, 39, '1'),
(40, 40, '2'),
(41, 41, '0'),
(42, 42, '2'),
(43, 43, 'cover/ca3aaf9ff012002c28c543b1bc730100.jpg'),
(44, 44, 'https://www.facebook.com/job_opening/640899326850474/?source=ads'),
(45, 45, 'ossnads/images/fb0ac7bb0f8ebfd2e6ab09b1347889a1.jpg'),
(46, 46, 'on'),
(47, 47, 'on'),
(48, 48, '[\"-102px\",\"-37px\"]'),
(49, 49, '19/09/2000'),
(50, 50, 'female'),
(51, 51, 'bcrypt'),
(52, 52, 'blog:created'),
(53, 53, '9'),
(54, 54, '1'),
(55, 55, '2'),
(56, 56, '0'),
(57, 57, '2'),
(58, 58, '1'),
(59, 59, '9'),
(60, 60, '1600516506'),
(61, 61, '1600522133'),
(62, 62, 'no'),
(63, 63, ''),
(64, 64, ''),
(65, 65, ''),
(66, 66, ''),
(67, 67, '1600522137'),
(68, 68, 'no'),
(69, 69, ''),
(70, 70, ''),
(71, 71, 'excelllent post &#x1f600;'),
(72, 72, '&#x1f981;'),
(73, 73, 'lol'),
(91, 91, '1'),
(90, 90, ''),
(89, 89, ''),
(88, 88, ''),
(87, 87, ''),
(84, 84, '13/04/1999'),
(85, 85, 'male'),
(86, 86, 'bcrypt'),
(92, 92, '2'),
(93, 93, '0'),
(94, 94, '1600523573');

-- --------------------------------------------------------

--
-- Structure de la table `ossn_likes`
--

DROP TABLE IF EXISTS `ossn_likes`;
CREATE TABLE IF NOT EXISTS `ossn_likes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) NOT NULL,
  `guid` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `subtype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subtype` (`subtype`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ossn_likes`
--

INSERT INTO `ossn_likes` (`id`, `subject_id`, `guid`, `type`, `subtype`) VALUES
(1, 6, 2, 'post', 'love'),
(2, 5, 2, 'post', 'haha');

-- --------------------------------------------------------

--
-- Structure de la table `ossn_messages`
--

DROP TABLE IF EXISTS `ossn_messages`;
CREATE TABLE IF NOT EXISTS `ossn_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_from` bigint(20) NOT NULL,
  `message_to` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `viewed` varchar(1) DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_to` (`message_to`),
  KEY `message_from` (`message_from`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ossn_messages`
--

INSERT INTO `ossn_messages` (`id`, `message_from`, `message_to`, `message`, `viewed`, `time`) VALUES
(1, 2, 1, 'Bonjour Alberto', '1', 1600517422),
(2, 2, 1, 'comment va tu?', '1', 1600517451),
(3, 1, 2, 'moi ca va je te remerci', '1', 1600517520),
(4, 1, 2, 'bonjour', '1', 1600522088);

-- --------------------------------------------------------

--
-- Structure de la table `ossn_notifications`
--

DROP TABLE IF EXISTS `ossn_notifications`;
CREATE TABLE IF NOT EXISTS `ossn_notifications` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `poster_guid` bigint(20) NOT NULL,
  `owner_guid` bigint(20) NOT NULL,
  `subject_guid` bigint(20) NOT NULL,
  `viewed` varchar(1) DEFAULT NULL,
  `time_created` int(11) NOT NULL,
  `item_guid` bigint(20) NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `poster_guid` (`poster_guid`),
  KEY `owner_guid` (`owner_guid`),
  KEY `subject_guid` (`subject_guid`),
  KEY `time_created` (`time_created`),
  KEY `item_guid` (`item_guid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ossn_notifications`
--

INSERT INTO `ossn_notifications` (`guid`, `type`, `poster_guid`, `owner_guid`, `subject_guid`, `viewed`, `time_created`, `item_guid`) VALUES
(1, 'comments:post', 2, 1, 6, '', 1600517551, 3),
(2, 'like:post', 2, 1, 6, '', 1600517586, 6),
(3, 'like:post', 2, 1, 5, '', 1600517591, 5),
(4, 'comments:post', 2, 1, 5, '', 1600517607, 4);

-- --------------------------------------------------------

--
-- Structure de la table `ossn_object`
--

DROP TABLE IF EXISTS `ossn_object`;
CREATE TABLE IF NOT EXISTS `ossn_object` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner_guid` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `time_created` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `subtype` varchar(30) NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `owner_guid` (`owner_guid`),
  KEY `time_created` (`time_created`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `oky_ts` (`type`,`subtype`),
  KEY `oky_tsg` (`type`,`subtype`,`guid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ossn_object`
--

INSERT INTO `ossn_object` (`guid`, `owner_guid`, `type`, `time_created`, `title`, `description`, `subtype`) VALUES
(1, 1, 'user', 1600513988, '', '{\"post\":\"null:data\"}', 'wall'),
(2, 1, 'user', 1600514005, '', '{\"post\":\"null:data\"}', 'wall'),
(3, 1, 'user', 1600514126, 'Voyage', '', 'ossn:album'),
(4, 1, 'user', 1600514205, '', '{\"post\":\"null:data\"}', 'wall'),
(5, 1, 'user', 1600514256, '', '{\"post\":\"test 2020\"}', 'wall'),
(6, 1, 'user', 1600514332, '', '{\"post\":\"Documentaire d&amp;#039;afrique\\r\\nhttps:\\/\\/youtu.be\\/NL3QjGeNKG4\"}', 'wall'),
(7, 1, 'user', 1600514349, 'group de test', '', 'ossngroup'),
(8, 1, 'site', 1600514584, 'test ads', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'ossnads'),
(9, 1, 'user', 1600516470, 'Du Sénégal à l’Ethiopie, des pluies diluviennes ravagent la bande sahélienne', '&amp;lt;p&amp;gt;&amp;lt;span style=&amp;quot;color: #2a303b; font-family: &amp;#039;Marr Sans&amp;#039;, Helvetica, Arial, Roboto, sans-serif; font-size: 18px; letter-spacing: 0.09px; background-color: #ffffff;&amp;quot;&amp;gt;Cette ann&amp;amp;eacute;e, la saison de la mousson est d&amp;amp;rsquo;une rare violence. Les morts et les disparus se comptent par centaines, les d&amp;amp;eacute;plac&amp;amp;eacute;s par centaines de milliers.&amp;lt;/span&amp;gt;&amp;lt;/p&amp;gt;\r\n&amp;lt;p&amp;gt;&amp;lt;span class=&amp;quot;meta__author&amp;quot; style=&amp;quot;box-sizing: inherit; color: #717b8e; font-family: &amp;#039;Marr Sans&amp;#039;, Helvetica, Arial, Roboto, sans-serif; font-size: 14px; letter-spacing: 0.2px; background-color: #ffffff;&amp;quot;&amp;gt;Par&amp;amp;nbsp;&amp;lt;a class=&amp;quot;article__author-link&amp;quot; style=&amp;quot;box-sizing: inherit; font-family: inherit; text-decoration-line: none; border-bottom: 0px;&amp;quot; href=&amp;quot;https://www.lemonde.fr/signataires/sandrine-berthaud-clair/&amp;quot;&amp;gt;Sandrine Berthaud-Clair&amp;lt;/a&amp;gt;&amp;lt;/span&amp;gt;&amp;lt;span style=&amp;quot;color: #717b8e; font-family: &amp;#039;Marr Sans&amp;#039;, Helvetica, Arial, Roboto, sans-serif; font-size: 14px; letter-spacing: 0.2px; background-color: #ffffff;&amp;quot;&amp;gt;&amp;amp;nbsp;&amp;lt;/span&amp;gt;&amp;lt;span class=&amp;quot;meta__date&amp;quot; style=&amp;quot;box-sizing: inherit; color: #717b8e; font-family: &amp;#039;Marr Sans&amp;#039;, Helvetica, Arial, Roboto, sans-serif; font-size: 14px; letter-spacing: 0.2px; background-color: #ffffff;&amp;quot;&amp;gt;Publi&amp;amp;eacute; hier &amp;amp;agrave; 19h00, mis &amp;amp;agrave; jour &amp;amp;agrave; 05h52&amp;lt;/span&amp;gt;&amp;lt;/p&amp;gt;\r\n&amp;lt;p&amp;gt;&amp;lt;span style=&amp;quot;color: #383f4e; font-family: &amp;#039;The Antiqua B&amp;#039;, Georgia, Droid-serif, serif; font-size: 18px; background-color: #ffffff;&amp;quot;&amp;gt;Des habitants sur des radeaux de fortune, d&amp;amp;rsquo;autres qui sauvent &amp;amp;agrave; bout de bras quelques affaires ou regardent impuissant les v&amp;amp;eacute;hicules flotter dans les torrents de boue. Dakar, Abidjan, Nouakchott, Ouagadougou, Accra, Cotonou, Niamey, Douala, Khartoum ont les pieds dans l&amp;amp;rsquo;eau. Depuis la fin juin, les images de destruction se succ&amp;amp;egrave;dent au rythme des pluies diluviennes qui ont frapp&amp;amp;eacute; douze pays d&amp;amp;rsquo;Afrique de la bande sah&amp;amp;eacute;lienne. Du S&amp;amp;eacute;n&amp;amp;eacute;gal &amp;amp;agrave; l&amp;amp;rsquo;Ethiopie, la saison de la mousson est, cette ann&amp;amp;eacute;e, d&amp;amp;rsquo;une rare violence. Les morts et les disparus se comptent par centaines.&amp;lt;/span&amp;gt;&amp;lt;/p&amp;gt;', 'blog'),
(13, 1, 'user', 1600522241, '', '{\"post\":\"flguflflufluflufluflufl\\r\\nhttps:\\/\\/youtu.be\\/7uG6E6bVKU0\"}', 'wall'),
(10, 1, 'user', 1600516384, '', '{\"post\":\"null:data\"}', 'wall');

-- --------------------------------------------------------

--
-- Structure de la table `ossn_relationships`
--

DROP TABLE IF EXISTS `ossn_relationships`;
CREATE TABLE IF NOT EXISTS `ossn_relationships` (
  `relation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `relation_from` bigint(20) NOT NULL,
  `relation_to` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`),
  KEY `relation_to` (`relation_to`),
  KEY `relation_from` (`relation_from`),
  KEY `time` (`time`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ossn_relationships`
--

INSERT INTO `ossn_relationships` (`relation_id`, `relation_from`, `relation_to`, `type`, `time`) VALUES
(1, 1, 7, 'group:join', 1600514349),
(2, 7, 1, 'group:join:approve', 1600514349),
(3, 1, 1, 'profile:viewed', 1600516481),
(4, 1, 2, 'profile:viewed', 1600516506),
(5, 1, 2, 'friend:request', 1600516532),
(6, 2, 2, 'profile:viewed', 1600517300),
(7, 2, 1, 'friend:request', 1600517322),
(8, 2, 6, 'rtctypingpost', 1600517549),
(9, 2, 5, 'rtctypingpost', 1600517607),
(10, 1, 5, 'rtctypingpost', 1600517696),
(12, 2, 1, 'profile:viewed', 1600520138),
(13, 1, 3, 'profile:viewed', 1600523573);

-- --------------------------------------------------------

--
-- Structure de la table `ossn_site_settings`
--

DROP TABLE IF EXISTS `ossn_site_settings`;
CREATE TABLE IF NOT EXISTS `ossn_site_settings` (
  `setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ossn_site_settings`
--

INSERT INTO `ossn_site_settings` (`setting_id`, `name`, `value`) VALUES
(1, 'theme', 'goblue'),
(2, 'site_name', 'afrika'),
(3, 'language', 'fr'),
(4, 'cache', '0'),
(5, 'owner_email', 'albertospaer@gmail.com'),
(6, 'notification_email', 'albertospaer@gmail.com'),
(7, 'upgrades', '[\"1410545706.php\",\"1411396351.php\", \"1412353569.php\",\"1415553653.php\",\"1415819862.php\", \"1423419053.php\", \"1423419054.php\", \"1439295894.php\", \"1440716428.php\", \"1440867331.php\", \"1440603377.php\", \"1443202118.php\", \"1443211017.php\", \"1443545762.php\", \"1443617470.php\", \"1446311454.php\", \"1448807613.php\", \"1453676400.php\", \"1459411815.php\", \"1468010638.php\", \"1470127853.php\", \"1480759958.php\", \"1495366993.php\", \"1513524535.php\", \"1513603766.php\", \"1513783390.php\", \"1542223614.php\", \"1564080285.php\", \"1577836800.php\", \"1597058454.php\", \"1597734806.php\", \"1598389337.php\"]'),
(9, 'display_errors', 'off'),
(10, 'site_key', '1bae5198'),
(11, 'last_cache', '0'),
(12, 'site_version', '5.5');

-- --------------------------------------------------------

--
-- Structure de la table `ossn_users`
--
-- Erreur de lecture de structure pour la table test.ossn_users : #145 - La table '.\test\ossn_users' est marquée 'crashed' et devrait être réparée
-- Erreur de lecture des données pour la table test.ossn_users : #1064 - Erreur de syntaxe près de 'FROM `test`.`ossn_users`' à la ligne 1

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ossn_entities_metadata`
--
ALTER TABLE `ossn_entities_metadata` ADD FULLTEXT KEY `value` (`value`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
