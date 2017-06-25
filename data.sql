-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 25 Juin 2017 à 15:52
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog-project`
--

-- --------------------------------------------------------

--
-- Structure de la table `acl_classes`
--

CREATE TABLE `acl_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acl_classes`
--

INSERT INTO `acl_classes` (`id`, `class_type`) VALUES
(9, 'Application\\Sonata\\UserBundle\\Entity\\Group'),
(3, 'BlogBundle\\Admin\\CommentAdmin'),
(1, 'BlogBundle\\Admin\\PostAdmin'),
(2, 'BlogBundle\\Admin\\PostCategoryAdmin'),
(8, 'BlogBundle\\Entity\\Comment'),
(7, 'BlogBundle\\Entity\\Post'),
(6, 'BlogBundle\\Entity\\PostCategory'),
(5, 'Sonata\\UserBundle\\Admin\\Entity\\GroupAdmin'),
(4, 'Sonata\\UserBundle\\Admin\\Entity\\UserAdmin');

-- --------------------------------------------------------

--
-- Structure de la table `acl_entries`
--

CREATE TABLE `acl_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `object_identity_id` int(10) UNSIGNED DEFAULT NULL,
  `security_identity_id` int(10) UNSIGNED NOT NULL,
  `field_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ace_order` smallint(5) UNSIGNED NOT NULL,
  `mask` int(11) NOT NULL,
  `granting` tinyint(1) NOT NULL,
  `granting_strategy` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `audit_success` tinyint(1) NOT NULL,
  `audit_failure` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acl_entries`
--

INSERT INTO `acl_entries` (`id`, `class_id`, `object_identity_id`, `security_identity_id`, `field_name`, `ace_order`, `mask`, `granting`, `granting_strategy`, `audit_success`, `audit_failure`) VALUES
(1, 1, NULL, 1, NULL, 0, 64, 1, 'all', 0, 0),
(2, 1, NULL, 2, NULL, 1, 8224, 1, 'all', 0, 0),
(3, 1, NULL, 3, NULL, 2, 4098, 1, 'all', 0, 0),
(4, 1, NULL, 4, NULL, 3, 4096, 1, 'all', 0, 0),
(5, 2, NULL, 5, NULL, 0, 64, 1, 'all', 0, 0),
(6, 2, NULL, 6, NULL, 1, 8224, 1, 'all', 0, 0),
(7, 2, NULL, 7, NULL, 2, 4098, 1, 'all', 0, 0),
(8, 2, NULL, 8, NULL, 3, 4096, 1, 'all', 0, 0),
(9, 3, NULL, 9, NULL, 0, 64, 1, 'all', 0, 0),
(10, 3, NULL, 10, NULL, 1, 8224, 1, 'all', 0, 0),
(11, 3, NULL, 11, NULL, 2, 4098, 1, 'all', 0, 0),
(12, 3, NULL, 12, NULL, 3, 4096, 1, 'all', 0, 0),
(13, 4, NULL, 13, NULL, 0, 64, 1, 'all', 0, 0),
(14, 4, NULL, 14, NULL, 1, 8224, 1, 'all', 0, 0),
(15, 4, NULL, 15, NULL, 2, 4098, 1, 'all', 0, 0),
(16, 4, NULL, 16, NULL, 3, 4096, 1, 'all', 0, 0),
(17, 5, NULL, 17, NULL, 0, 64, 1, 'all', 0, 0),
(18, 5, NULL, 18, NULL, 1, 8224, 1, 'all', 0, 0),
(19, 5, NULL, 19, NULL, 2, 4098, 1, 'all', 0, 0),
(20, 5, NULL, 20, NULL, 3, 4096, 1, 'all', 0, 0),
(21, 6, NULL, 5, NULL, 0, 64, 1, 'all', 0, 0),
(22, 6, NULL, 6, NULL, 1, 32, 1, 'all', 0, 0),
(23, 6, NULL, 7, NULL, 2, 4, 1, 'all', 0, 0),
(24, 6, NULL, 8, NULL, 3, 1, 1, 'all', 0, 0),
(25, 6, 6, 21, NULL, 0, 128, 1, 'all', 0, 0),
(26, 6, 7, 21, NULL, 0, 128, 1, 'all', 0, 0),
(27, 6, 8, 21, NULL, 0, 128, 1, 'all', 0, 0),
(28, 6, 9, 21, NULL, 0, 128, 1, 'all', 0, 0),
(29, 7, NULL, 1, NULL, 0, 64, 1, 'all', 0, 0),
(30, 7, NULL, 2, NULL, 1, 32, 1, 'all', 0, 0),
(31, 7, NULL, 3, NULL, 2, 4, 1, 'all', 0, 0),
(32, 7, NULL, 4, NULL, 3, 1, 1, 'all', 0, 0),
(33, 7, 10, 21, NULL, 0, 128, 1, 'all', 0, 0),
(34, 7, 11, 21, NULL, 0, 128, 1, 'all', 0, 0),
(35, 7, 12, 21, NULL, 0, 128, 1, 'all', 0, 0),
(36, 7, 13, 21, NULL, 0, 128, 1, 'all', 0, 0),
(37, 7, 14, 21, NULL, 0, 128, 1, 'all', 0, 0),
(38, 7, 15, 21, NULL, 0, 128, 1, 'all', 0, 0),
(39, 8, NULL, 9, NULL, 0, 64, 1, 'all', 0, 0),
(40, 8, NULL, 10, NULL, 1, 32, 1, 'all', 0, 0),
(41, 8, NULL, 11, NULL, 2, 4, 1, 'all', 0, 0),
(42, 8, NULL, 12, NULL, 3, 1, 1, 'all', 0, 0),
(43, 8, 16, 21, NULL, 0, 128, 1, 'all', 0, 0),
(44, 8, 17, 21, NULL, 0, 128, 1, 'all', 0, 0),
(45, 8, 18, 21, NULL, 0, 128, 1, 'all', 0, 0),
(46, 8, 19, 21, NULL, 0, 128, 1, 'all', 0, 0),
(47, 8, 20, 21, NULL, 0, 128, 1, 'all', 0, 0),
(48, 8, 21, 21, NULL, 0, 128, 1, 'all', 0, 0),
(49, 9, NULL, 17, NULL, 0, 64, 1, 'all', 0, 0),
(50, 9, NULL, 18, NULL, 1, 32, 1, 'all', 0, 0),
(51, 9, NULL, 19, NULL, 2, 4, 1, 'all', 0, 0),
(52, 9, NULL, 20, NULL, 3, 1, 1, 'all', 0, 0),
(53, 9, 22, 22, NULL, 0, 128, 1, 'all', 0, 0),
(54, 9, 23, 22, NULL, 0, 128, 1, 'all', 0, 0),
(55, 9, 24, 22, NULL, 0, 128, 1, 'all', 0, 0),
(56, 7, 25, 22, NULL, 0, 128, 1, 'all', 0, 0),
(57, 7, 26, 22, NULL, 0, 128, 1, 'all', 0, 0),
(58, 7, 27, 22, NULL, 0, 128, 1, 'all', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `acl_object_identities`
--

CREATE TABLE `acl_object_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_object_identity_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `object_identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entries_inheriting` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acl_object_identities`
--

INSERT INTO `acl_object_identities` (`id`, `parent_object_identity_id`, `class_id`, `object_identifier`, `entries_inheriting`) VALUES
(1, NULL, 1, 'admin.post', 1),
(2, NULL, 2, 'admin.postCategory', 1),
(3, NULL, 3, 'admin.comment', 1),
(4, NULL, 4, 'sonata.user.admin.user', 1),
(5, NULL, 5, 'sonata.user.admin.group', 1),
(6, NULL, 6, '1', 1),
(7, NULL, 6, '2', 1),
(8, NULL, 6, '3', 1),
(9, NULL, 6, '4', 1),
(10, NULL, 7, '1', 1),
(11, NULL, 7, '2', 1),
(12, NULL, 7, '3', 1),
(13, NULL, 7, '4', 1),
(14, NULL, 7, '5', 1),
(15, NULL, 7, '6', 1),
(16, NULL, 8, '1', 1),
(17, NULL, 8, '2', 1),
(18, NULL, 8, '3', 1),
(19, NULL, 8, '4', 1),
(20, NULL, 8, '5', 1),
(21, NULL, 8, '6', 1),
(22, NULL, 9, '1', 1),
(23, NULL, 9, '2', 1),
(24, NULL, 9, '3', 1),
(25, NULL, 7, '7', 1),
(26, NULL, 7, '8', 1),
(27, NULL, 7, '9', 1),
(28, NULL, 8, '7', 1);

-- --------------------------------------------------------

--
-- Structure de la table `acl_object_identity_ancestors`
--

CREATE TABLE `acl_object_identity_ancestors` (
  `object_identity_id` int(10) UNSIGNED NOT NULL,
  `ancestor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acl_object_identity_ancestors`
--

INSERT INTO `acl_object_identity_ancestors` (`object_identity_id`, `ancestor_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28);

-- --------------------------------------------------------

--
-- Structure de la table `acl_security_identities`
--

CREATE TABLE `acl_security_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acl_security_identities`
--

INSERT INTO `acl_security_identities` (`id`, `identifier`, `username`) VALUES
(22, 'Application\\Sonata\\UserBundle\\Entity\\User-admin', 1),
(21, 'Application\\Sonata\\UserBundle\\Entity\\User-editor', 1),
(9, 'ROLE_ADMIN_COMMENT_ADMIN', 0),
(10, 'ROLE_ADMIN_COMMENT_EDITOR', 0),
(12, 'ROLE_ADMIN_COMMENT_GUEST', 0),
(11, 'ROLE_ADMIN_COMMENT_STAFF', 0),
(1, 'ROLE_ADMIN_POST_ADMIN', 0),
(2, 'ROLE_ADMIN_POST_EDITOR', 0),
(4, 'ROLE_ADMIN_POST_GUEST', 0),
(3, 'ROLE_ADMIN_POST_STAFF', 0),
(5, 'ROLE_ADMIN_POSTCATEGORY_ADMIN', 0),
(6, 'ROLE_ADMIN_POSTCATEGORY_EDITOR', 0),
(8, 'ROLE_ADMIN_POSTCATEGORY_GUEST', 0),
(7, 'ROLE_ADMIN_POSTCATEGORY_STAFF', 0),
(17, 'ROLE_SONATA_USER_ADMIN_GROUP_ADMIN', 0),
(18, 'ROLE_SONATA_USER_ADMIN_GROUP_EDITOR', 0),
(20, 'ROLE_SONATA_USER_ADMIN_GROUP_GUEST', 0),
(19, 'ROLE_SONATA_USER_ADMIN_GROUP_STAFF', 0),
(13, 'ROLE_SONATA_USER_ADMIN_USER_ADMIN', 0),
(14, 'ROLE_SONATA_USER_ADMIN_USER_EDITOR', 0),
(16, 'ROLE_SONATA_USER_ADMIN_USER_GUEST', 0),
(15, 'ROLE_SONATA_USER_ADMIN_USER_STAFF', 0);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `pubDate` datetime NOT NULL,
  `lastUpdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `author_id`, `content`, `pubDate`, `lastUpdate`) VALUES
(1, 1, 1, 'Cras et facilisis nibh', '2017-06-25 17:44:28', '2017-06-25 17:44:28'),
(2, 6, 3, 'Curabitur nulla odio', '2017-06-25 17:44:51', '2017-06-25 17:44:51'),
(3, 6, 2, 'Pellentesque ultrices massa non purus luctus, id mattis turpis faucibus', '2017-06-25 17:45:10', '2017-06-25 17:45:10'),
(4, 1, 2, 'in laoreet sem mauris vel risus', '2017-06-25 17:45:26', '2017-06-25 17:45:26'),
(5, 3, 1, 'Nunc venenatis quam diam, a tincidunt nisl rutrum nec.', '2017-06-25 17:45:40', '2017-06-25 17:45:40'),
(6, 6, 3, 'Donec sem urna, congue eu urna quis', '2017-06-25 17:45:54', '2017-06-25 17:45:54'),
(7, 9, 1, 'Suspendisse pulvinar tincidunt lacus', '2017-06-25 17:51:05', '2017-06-25 17:51:05');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fos_user_group`
--

CREATE TABLE `fos_user_group` (
  `id` int(11) NOT NULL,
  `name` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user_group`
--

INSERT INTO `fos_user_group` (`id`, `name`, `roles`) VALUES
(1, 'User', 'a:1:{i:0;s:9:"ROLE_USER";}'),
(2, 'Editor', 'a:1:{i:0;s:11:"ROLE_EDITOR";}'),
(3, 'Admin', 'a:1:{i:0;s:10:"ROLE_ADMIN";}');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user_user_group`
--

CREATE TABLE `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `pubDate` datetime NOT NULL,
  `lastUpdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `post`
--

INSERT INTO `post` (`id`, `author_id`, `title`, `slug`, `content`, `pubDate`, `lastUpdate`) VALUES
(1, 2, 'Phasellus eu lectus diam', 'phasellus-eu-lectus-diam', 'Nam interdum eleifend nunc, sit amet euismod sapien ultricies et. Nunc condimentum at eros a venenatis. Proin vel fringilla diam, sit amet posuere leo. Morbi vitae ligula bibendum, pellentesque nibh vitae, convallis sem. Vestibulum eget sem purus. Aliquam pellentesque, felis ut ullamcorper tempus, ligula justo egestas augue, sed finibus ipsum nibh vitae sem. Etiam tempus placerat lacus ac aliquam. Fusce id rhoncus urna, eu varius elit. Fusce cursus maximus velit euismod volutpat. Nulla bibendum fringilla vestibulum. Ut tristique condimentum placerat. Duis nisi odio, blandit eget risus sit amet, ornare ullamcorper nunc. Nunc rutrum nunc sit amet orci iaculis aliquam.', '2017-06-25 17:36:10', '2017-06-25 17:36:10'),
(2, 3, 'Morbi augue dui, posuere in cursus eu', 'morbi-augue-dui-posuere-in-cursus-eu', 'Aenean at turpis vitae lectus consectetur hendrerit non sed tellus. Praesent tempus interdum sapien id consequat. In quis lorem eu velit ultrices dignissim. Donec eget semper tellus. Curabitur at ullamcorper odio. Suspendisse lacinia rhoncus facilisis. Nulla auctor, elit ut vulputate malesuada, quam enim dignissim augue, nec posuere purus eros eu ipsum. Etiam nec nisi lectus.', '2017-06-25 17:36:34', '2017-06-25 17:36:34'),
(3, 2, 'Fusce at aliquam velit. Morbi condimentum sodales', 'fusce-at-aliquam-velit-morbi-condimentum-sodales', 'Pellentesque luctus magna enim, non hendrerit neque ullamcorper eu. Phasellus leo sem, tincidunt a massa a, gravida malesuada justo. Etiam et blandit lectus. Aliquam erat volutpat. In diam lectus, suscipit id fermentum sit amet, vehicula quis orci. Aliquam erat volutpat. Suspendisse pretium neque ut purus pretium gravida. Maecenas tortor urna, sollicitudin nec feugiat at, facilisis nec lorem. Sed porttitor mauris risus, vitae egestas nunc tincidunt porttitor. Duis congue dui at urna facilisis, id tempor dolor rutrum. Donec tristique eros elit, ac posuere velit volutpat a. Cras lobortis quis augue eget pharetra. Vivamus facilisis in ligula tincidunt placerat.', '2017-06-25 17:36:57', '2017-06-25 17:36:57'),
(4, 2, 'Maecenas euismod in lacus vel varius', 'maecenas-euismod-in-lacus-vel-varius', 'Pellentesque nec nulla leo. Nunc vulputate ante a urna rutrum pellentesque. Integer varius id metus dapibus congue. Mauris porttitor suscipit nulla, in imperdiet ligula mattis sit amet. Sed congue egestas tristique. Nulla diam metus, aliquam tincidunt congue a, tristique sit amet neque.', '2017-06-25 17:37:28', '2017-06-25 17:37:28'),
(5, 2, 'Phasellus eu semper odio, id tincidunt erat', 'phasellus-eu-semper-odio-id-tincidunt-erat', 'Suspendisse vehicula nisl ante, non hendrerit ligula lacinia ut. Pellentesque sit amet est in nulla vulputate ullamcorper quis in enim. Aliquam non ex quis neque cursus rhoncus. Suspendisse pulvinar blandit nunc eget euismod. Aliquam at volutpat lacus. Donec sed orci enim. Quisque aliquet scelerisque felis, nec interdum nisi consectetur quis. Nunc imperdiet turpis at odio ullamcorper rutrum. Nulla id odio id lorem fringilla convallis vitae ut neque. Nulla quis lectus lorem.', '2017-06-25 17:38:28', '2017-06-25 17:38:28'),
(6, 3, 'Aenean luctus tortor rutrum lorem maximus', 'aenean-luctus-tortor-rutrum-lorem-maximus', 'Nunc venenatis quam diam, a tincidunt nisl rutrum nec. Donec cursus urna vel ante bibendum, vitae semper lacus feugiat. Suspendisse at purus elit. Etiam accumsan quam eu placerat aliquam. Donec elit augue, laoreet quis leo a, iaculis ullamcorper neque. Nam vulputate vehicula urna id iaculis. Fusce hendrerit elit sed dui scelerisque, non tristique augue semper. Morbi venenatis id ante sit amet ornare. Nunc arcu orci, efficitur vitae diam a, vulputate cursus lorem. In vulputate nunc neque. Maecenas at pellentesque augue. Aliquam tempus justo a mauris blandit, sed tristique urna scelerisque. Sed venenatis non eros nec auctor. Vivamus vehicula rhoncus lorem, id ullamcorper lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', '2017-06-25 17:38:51', '2017-06-25 17:38:51'),
(7, 3, 'Integer quis urna quam', 'integer-quis-urna-quam', 'Etiam hendrerit enim convallis, interdum nisl ac, vestibulum nunc. Sed mollis purus nibh, id aliquet neque fringilla a. Proin ullamcorper orci ullamcorper feugiat porttitor. Nunc lobortis lacus et orci tincidunt elementum. Nulla interdum eros eu metus sagittis, eu molestie tortor laoreet. Etiam in elit ut lacus rutrum bibendum id et dolor. Aliquam volutpat porta tortor a fringilla. Curabitur facilisis euismod egestas. Sed eu nisi eget diam ultricies faucibus. Suspendisse vitae ligula sit amet augue posuere mollis ut non lectus. Mauris nec nisl ligula. Sed sagittis eget ligula id auctor.', '2017-06-25 17:49:07', '2017-06-25 17:49:07'),
(8, 2, 'Suspendisse fringilla nulla tortor', 'suspendisse-fringilla-nulla-tortor', 'quis ullamcorper nisl posuere quis. Integer ac congue ante. Suspendisse nec malesuada purus, vel maximus sapien. Curabitur semper nibh at libero sodales convallis. Donec ipsum velit, consectetur vitae mollis tincidunt, venenatis id libero. Proin rutrum, dolor ac facilisis suscipit, ligula enim ultricies neque, sed dictum ligula purus a augue. Duis et dolor nibh. Sed eget sagittis velit, at viverra lectus. Mauris eget rhoncus lacus, in rutrum nibh', '2017-06-25 17:49:30', '2017-06-25 17:49:30'),
(9, 2, 'Quisque faucibus dui eu laoreet pulvinar', 'quisque-faucibus-dui-eu-laoreet-pulvinar', 'Pellentesque pretium metus viverra laoreet tristique. Pellentesque suscipit aliquam sapien nec commodo. Etiam feugiat sagittis tortor sit amet mollis. Nulla pellentesque, orci eget sollicitudin auctor, augue leo tristique mi, a bibendum justo purus sed dolor. Nulla vitae egestas elit. Nulla ipsum dui, consequat vel consectetur nec, hendrerit quis leo. Maecenas pulvinar vestibulum justo. Nulla facilisi. Donec in nunc in nisi facilisis malesuada in eu tortor. In laoreet elit tempor enim finibus, a pharetra augue aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus sed maximus risus.', '2017-06-25 17:49:56', '2017-06-25 17:49:56');

-- --------------------------------------------------------

--
-- Structure de la table `posts_categories`
--

CREATE TABLE `posts_categories` (
  `post_id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `posts_categories`
--

INSERT INTO `posts_categories` (`post_id`, `post_category_id`) VALUES
(1, 1),
(1, 2),
(2, 4),
(3, 3),
(3, 4),
(4, 1),
(5, 3),
(6, 4),
(7, 4),
(8, 4),
(9, 4);

-- --------------------------------------------------------

--
-- Structure de la table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `post_category`
--

INSERT INTO `post_category` (`id`, `name`, `slug`) VALUES
(1, 'Technology', 'technology'),
(2, 'Culture', 'culture'),
(3, 'Travel', 'travel'),
(4, 'Business', 'business');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `created_at`, `updated_at`, `date_of_birth`, `firstname`, `lastname`, `website`, `biography`, `gender`, `locale`, `timezone`, `phone`, `facebook_uid`, `facebook_name`, `facebook_data`, `twitter_uid`, `twitter_name`, `twitter_data`, `gplus_uid`, `gplus_name`, `gplus_data`, `token`, `two_step_code`) VALUES
(1, 'user', 'user', 'user@blog.com', 'user@blog.com', 1, NULL, '$2y$13$pgRwtkzo1VTAf4eQpI5i3uabAgFJDSDiSKQAIhBnE1/NqbtdNG8SC', '2017-06-25 15:50:47', NULL, NULL, 'a:0:{}', '2017-06-25 15:24:10', '2017-06-25 15:50:47', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(2, 'editor', 'editor', 'editor@blog.com', 'editor@blog.com', 1, NULL, '$2y$13$hiuGAEsHGXjpXnt8hrlSt.o5MTYXUQdMyQyw6gfZr6l309oP54VIy', '2017-06-25 15:51:19', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_EDITOR";}', '2017-06-25 15:25:18', '2017-06-25 15:51:19', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(3, 'admin', 'admin', 'admin@blog.com', 'admin@blog.com', 1, NULL, '$2y$13$Zp2P8GflSeMJ3pC0BXEAd.4a0R9pqmRDopWWqe5IG3EZMIWv76HDS', '2017-06-25 15:46:12', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', '2017-06-25 15:25:56', '2017-06-25 15:46:12', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `acl_classes`
--
ALTER TABLE `acl_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_69DD750638A36066` (`class_type`);

--
-- Index pour la table `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_46C8B806EA000B103D9AB4A64DEF17BCE4289BF4` (`class_id`,`object_identity_id`,`field_name`,`ace_order`),
  ADD KEY `IDX_46C8B806EA000B103D9AB4A6DF9183C9` (`class_id`,`object_identity_id`,`security_identity_id`),
  ADD KEY `IDX_46C8B806EA000B10` (`class_id`),
  ADD KEY `IDX_46C8B8063D9AB4A6` (`object_identity_id`),
  ADD KEY `IDX_46C8B806DF9183C9` (`security_identity_id`);

--
-- Index pour la table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9407E5494B12AD6EA000B10` (`object_identifier`,`class_id`),
  ADD KEY `IDX_9407E54977FA751A` (`parent_object_identity_id`);

--
-- Index pour la table `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD PRIMARY KEY (`object_identity_id`,`ancestor_id`),
  ADD KEY `IDX_825DE2993D9AB4A6` (`object_identity_id`),
  ADD KEY `IDX_825DE299C671CEA1` (`ancestor_id`);

--
-- Index pour la table `acl_security_identities`
--
ALTER TABLE `acl_security_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8835EE78772E836AF85E0677` (`identifier`,`username`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C4B89032C` (`post_id`),
  ADD KEY `IDX_9474526CF675F31B` (`author_id`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Index pour la table `fos_user_group`
--
ALTER TABLE `fos_user_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_583D1F3E5E237E06` (`name`);

--
-- Index pour la table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `IDX_B3C77447A76ED395` (`user_id`),
  ADD KEY `IDX_B3C77447FE54D947` (`group_id`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A8A6C8DF675F31B` (`author_id`);

--
-- Index pour la table `posts_categories`
--
ALTER TABLE `posts_categories`
  ADD PRIMARY KEY (`post_id`,`post_category_id`),
  ADD KEY `IDX_A8C3AA464B89032C` (`post_id`),
  ADD KEY `IDX_A8C3AA46FE0617CD` (`post_category_id`);

--
-- Index pour la table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_1483A5E9A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_1483A5E9C05FB297` (`confirmation_token`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `acl_classes`
--
ALTER TABLE `acl_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `acl_entries`
--
ALTER TABLE `acl_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT pour la table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `acl_security_identities`
--
ALTER TABLE `acl_security_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fos_user_group`
--
ALTER TABLE `fos_user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD CONSTRAINT `FK_46C8B8063D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806DF9183C9` FOREIGN KEY (`security_identity_id`) REFERENCES `acl_security_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806EA000B10` FOREIGN KEY (`class_id`) REFERENCES `acl_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD CONSTRAINT `FK_9407E54977FA751A` FOREIGN KEY (`parent_object_identity_id`) REFERENCES `acl_object_identities` (`id`);

--
-- Contraintes pour la table `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD CONSTRAINT `FK_825DE2993D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_825DE299C671CEA1` FOREIGN KEY (`ancestor_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_user_group` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8DF675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `posts_categories`
--
ALTER TABLE `posts_categories`
  ADD CONSTRAINT `FK_A8C3AA464B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A8C3AA46FE0617CD` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
