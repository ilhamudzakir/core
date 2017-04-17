-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2017 at 10:43 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `core_decode`
--

-- --------------------------------------------------------

--
-- Table structure for table `dc_appearance`
--

CREATE TABLE `dc_appearance` (
  `id` int(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `logo` text NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `id_creator` int(250) NOT NULL,
  `id_modifier` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_appearance`
--

INSERT INTO `dc_appearance` (`id`, `name`, `logo`, `date_created`, `date_modified`, `id_creator`, `id_modifier`) VALUES
(1, 'Decode', 'logo.png', '0000-00-00 00:00:00', '2017-04-17 15:25:23', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_default`
--

CREATE TABLE `dc_default` (
  `id` int(100) NOT NULL,
  `name_group` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `id_creator` int(250) NOT NULL,
  `id_modifier` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dc_groups`
--

CREATE TABLE `dc_groups` (
  `id` int(100) NOT NULL,
  `name_group` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `id_creator` int(250) NOT NULL,
  `id_modifier` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_groups`
--

INSERT INTO `dc_groups` (`id`, `name_group`, `date_created`, `date_modified`, `id_creator`, `id_modifier`) VALUES
(1, 'Super Admin', '2017-04-13 12:29:39', NULL, 1, NULL),
(5, 'Admin', '2017-04-13 15:24:27', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dc_icons`
--

CREATE TABLE `dc_icons` (
  `id` int(100) NOT NULL,
  `name_icons` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `id_creator` int(250) NOT NULL,
  `id_modifier` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_icons`
--

INSERT INTO `dc_icons` (`id`, `name_icons`, `date_created`, `date_modified`, `id_creator`, `id_modifier`) VALUES
(1, 'fa fa-file-text', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(2, 'icon-custom-home', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(3, 'icon-custom-thumb', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(4, 'icon-custom-settings', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(5, 'fa fa-adjust', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(6, 'fa fa-anchor', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(7, 'fa fa-archive', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(8, 'fa fa-arrows', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(9, 'fa fa-arrows-h', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(10, 'fa fa-arrows-v', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(11, 'fa fa-asterisk', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(12, 'fa fa-ban', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(13, 'fa fa-bar-chart-o', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(14, 'fa fa-barcode', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(15, 'fa fa-bars', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(16, 'fa fa-beer', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(17, 'fa fa-bell', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(18, 'fa fa-bell-o', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(19, 'fa fa-bolt', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(20, 'fa fa-book', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(21, 'fa fa-bookmark', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(22, 'fa fa-bookmark-o', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(23, 'fa fa-briefcase', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(24, 'fa fa-bug', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(25, 'fa fa-building-o', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(26, 'fa fa-bullhorn', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(27, 'fa fa-bullseye', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(28, 'fa fa-calendar', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(29, 'fa fa-calendar-o', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(30, 'fa fa-camera', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_menu`
--

CREATE TABLE `dc_menu` (
  `id` int(100) NOT NULL,
  `name_menu` varchar(1000) NOT NULL,
  `sub_menu` varchar(100) NOT NULL,
  `target` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `position` int(100) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `id_creator` int(250) NOT NULL,
  `id_modifier` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_menu`
--

INSERT INTO `dc_menu` (`id`, `name_menu`, `sub_menu`, `target`, `icon`, `position`, `date_created`, `date_modified`, `id_creator`, `id_modifier`) VALUES
(1, 'Content', '0', 'admin_content', 'icon-custom-thumb', 1, '0000-00-00 00:00:00', '2017-04-13 11:13:46', 0, 1),
(2, 'Static Page', '1', 'static_page', '', 1, '2017-04-06 10:24:25', '2017-04-06 12:29:26', 1, 1),
(3, 'Settings System', '0', 'setting_system', 'icon-custom-settings', 2, '2017-04-13 00:00:00', '0000-00-00 00:00:00', 1, 0),
(4, 'Menu', '3', 'menu', '', 1, '2017-04-13 00:00:00', '2017-04-13 00:00:00', 1, 0),
(6, 'User Accsess', '3', 'user_accsess', 'fa fa-bars', 3, '0000-00-00 00:00:00', '2017-04-13 11:15:14', 0, 1),
(7, 'User Groups', '3', 'user_groups', 'none', 4, '2017-04-13 11:15:03', NULL, 1, NULL),
(8, 'User', '3', 'user', 'none', 2, '2017-04-16 18:04:14', NULL, 1, NULL),
(9, 'News', '1', 'news', 'none', 2, '2017-04-17 13:23:58', NULL, 1, NULL),
(10, 'appearance', '3', 'appearance', 'none', 5, '2017-04-17 14:31:03', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dc_menu_accsess`
--

CREATE TABLE `dc_menu_accsess` (
  `id` int(100) NOT NULL,
  `id_menu` int(100) NOT NULL,
  `id_group` int(100) NOT NULL,
  `accsess` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_menu_accsess`
--

INSERT INTO `dc_menu_accsess` (`id`, `id_menu`, `id_group`, `accsess`) VALUES
(12, 1, 0, 0),
(13, 2, 0, 1),
(14, 3, 0, 0),
(15, 4, 0, 0),
(16, 6, 0, 0),
(17, 7, 0, 0),
(18, 1, 1, 1),
(19, 2, 1, 1),
(20, 3, 1, 1),
(21, 4, 1, 1),
(22, 6, 1, 1),
(23, 7, 1, 1),
(24, 1, 5, 1),
(25, 2, 5, 1),
(26, 3, 5, 0),
(27, 4, 5, 0),
(28, 6, 5, 0),
(29, 7, 5, 0),
(30, 8, 1, 1),
(31, 9, 1, 1),
(32, 9, 5, 1),
(33, 8, 5, 0),
(34, 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_news`
--

CREATE TABLE `dc_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(225) NOT NULL,
  `images` text NOT NULL,
  `content` text NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `id_creator` int(11) NOT NULL,
  `id_modifier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_news`
--

INSERT INTO `dc_news` (`id`, `title`, `images`, `content`, `date_created`, `date_modified`, `id_creator`, `id_modifier`) VALUES
(1, 'hahahahaha', '16425967_1841753219434351_4459195754176750756_n.jpg', '<p>dasdsa<br></p>', '2017-04-17 13:29:43', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dc_static_content`
--

CREATE TABLE `dc_static_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(225) NOT NULL,
  `images` text NOT NULL,
  `content` text NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `id_creator` int(11) NOT NULL,
  `id_modifier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_static_content`
--

INSERT INTO `dc_static_content` (`id`, `title`, `images`, `content`, `date_created`, `date_modified`, `id_creator`, `id_modifier`) VALUES
(15, 'd adasd as', '16425967_1841753219434351_4459195754176750756_n.jpg', '<p><img style="width: 321px;" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAgAAAQABAAD/7QCcUGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAIAcAmcAFHg1MjdkNVAwM0JySkJRRlI3V1I3HAIoAGJGQk1EMDEwMDBhYmMwMzAwMDAwYzA5MDAwMDA5MTQwMDAwYzYxNDAwMDBlNDE1MDAwMGQ4MWYwMDAwOWEyZjAwMDBjNDMwMDAwMDAxMzIwMDAwOTczMzAwMDBkNTQ5MDAwMP/iAhxJQ0NfUFJPRklMRQABAQAAAgxsY21zAhAAAG1udHJSR0IgWFlaIAfcAAEAGQADACkAOWFjc3BBUFBMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD21gABAAAAANMtbGNtcwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACmRlc2MAAAD8AAAAXmNwcnQAAAFcAAAAC3d0cHQAAAFoAAAAFGJrcHQAAAF8AAAAFHJYWVoAAAGQAAAAFGdYWVoAAAGkAAAAFGJYWVoAAAG4AAAAFHJUUkMAAAHMAAAAQGdUUkMAAAHMAAAAQGJUUkMAAAHMAAAAQGRlc2MAAAAAAAAAA2MyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHRleHQAAAAARkIAAFhZWiAAAAAAAAD21gABAAAAANMtWFlaIAAAAAAAAAMWAAADMwAAAqRYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9jdXJ2AAAAAAAAABoAAADLAckDYwWSCGsL9hA/FVEbNCHxKZAyGDuSRgVRd13ta3B6BYmxmnysab9908PpMP///9sAQwAJBgcIBwYJCAgICgoJCw4XDw4NDQ4cFBURFyIeIyMhHiAgJSo1LSUnMiggIC4/LzI3OTw8PCQtQkZBOkY1Ozw5/9sAQwEKCgoODA4bDw8bOSYgJjk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5/8IAEQgA8wFBAwAiAAERAQIRAf/EABsAAAIDAQEBAAAAAAAAAAAAAAQFAQIDAAYH/8QAFwEBAQEBAAAAAAAAAAAAAAAAAQACA//EABcBAQEBAQAAAAAAAAAAAAAAAAEAAgP/2gAMAwAAARECEQAAAfNielT8sryNi9KSzEsl2zkPnI+Np1MWNXeVPk6VkNZkGANWw2gEgu4rbtsKX1NihIN6hJZdK8lg7XyNWAetVwbaEpl1UlPegpKO7q4+I7btZ9HqDny5bXCtrU3vOAWxF6027FnsBW6uDVMx0AkZk5qnKTGUmX3NUUOstRidjWkTrLiVeu8n6ABy8J0rWgJNXVX7LWt7468RWctaa3Lw3X7rzYmLSefGlqjaWcYa4jcermIzB1orfPq0H3CZqNfsAsHPOur3WmvXWs0yrWKydjSldU8tu+8fAOkr9z2Q2AmScBjdtcNxm+Vcuos4V5fu7ryJKphciysu5t74cF61zo0bHZjNg8crHGdyjMy2cd6bz2vbqvkK7tkADpl0c5MpGUl+ec+kVs+3eKh8k3nf1aJrz0yA3wxqwm9KLD2qI1iLN4zr915kEX7PO0aWyYkgHRkEyEXPVu/Hy43rFYr9tnOELmokr7ZCdFr5yF+73hfzXYfdYeIYMVjg6hn5IqtYFqHiKX+TTGh9qUx0tnfs166lpeF9t3i+z7pzcdxOML7MtYSuPRnaljDfjUWjKZqnPNXsMTz11a2IdB6TLd5JT6bz/TAt7ytNJ5nKTqOTCF+lYlFnc9E6cNz1tW0m7RFavuumyZUcnV4jp7pz9s6nSKdr1UDP5ZtPBApC7Ol7xfY1qMwFy9wY+JjmMLqhR6dbs8/FI3nUbmSYi+yVitewTm6a9ncTjTKTXO834bahBGcGd8spTyXV7vz+r2pmOumOka93VM1ioQvQcvC+Z9WayOxAym5kBZQBTwdUv0zfV4V6RKLN9NgJLGLzqAjA5B37NMLB7NaKE5r3x1zSvgyCSFm+8eT6O65+qRPZa2iza2y1qM7UkS/nXeXzSn1Hj9TYxBQvUn+GLn3QsMMw/nCPPp7TIZxnotJoJZtVZVXWY1cukC00bU2sVC9VnJN8/c7qHbEK8hfSFrPmOr3XH1ic7jW4IZOZ86Uac0rKJWNdRXeF+i/PW7RkVXn6uVKexdfNvU018L7TzdHk5Ec9jU1pNtl5FEwsMyzjrI4GSryZLmO/UFf3wmuK57ZpbGdZ8d1O6Y+p2zrnS3NsNjVOkrDnJWdnO1xVt4n2oWpZxlzN1bbXd4TRkr2OTUPpMOmmW2N4iErW7ZXCFsrH8tBX0EyrR2g3SzcjEDYAusJvT1z3jhtbV4nu7rj6SsJSc9eoy2Cy8yA1ykZkBtec71cEsSgcDcEFbhEoy+f++Xdc+PaqNZ9WjxAzaHK3tLMHjHCMKwA57VXNw6BGoRMsb1LyxfCNk2tVxncQGvP9Xtnt11gMa9QNQXn1a6icY9IrNXpemMDeu9IAzLI64V3KWaGOy5m3i2lmDLtWOQDlkFSsx1MJb1jarG/ce+OJkFXraQNalN5ovPwshF0o3muz7pn2Pm/T+Vxv1ei4rj3I4bY57nAd0znXfDWdgqMdCopgua4Zpjef6vpE8HV82TyHp8zeTfO4do7OITbsCa0kWgnXUHloEPFE64RVt14/OI4YPcq7u65eg+gPz081oz89nTJ74X12cNErxdmGnz43fPonHkzaZ0p2XmS/ehGQ9KgqRqrtnoWVTLxiCwhuEJssjkxS1lAtcDeiE2zK5q8ew6Err7so6O3krl3KyzAsPa4dqZVXzmMHzht9BJljUHjRsBxTDRZYiaiw5KkWKOkGGZQBBMJWzLCV3UdQPkMqNWDNll63rjWzsUBpVupwf//EACoQAAICAgEDBQACAgMBAAAAAAECAAMEERITFCEFECIxMhVBICMkMzRC/9oACAEAAAEFAhhnjZTwbpy3H6a8IK9ztGluD0kFXg1alVHUb+O+dnp3AnBgwvAwfD4pSdAQUbPZw4vlcMmNicZ2y77WdrFxAYMTZ7Pz/GNP4+diIfTwB2c7Cfx8Hp8/j9T+On8bOnP/AKtBd61Jl+zOiplVYqrrISZVnWOigJ+OIvF1estl2ps3bKOvG20b5IY3k1AbLLsFeLPsbnjkTA8biSvHjj9MvdfURZZOZBFiwCfU3FHxMG4D4gTcy1BqpAQ2AM2l6jNp7CzHGTzYnJ6LExa8iyuo4bLcmRf067NirOStcr1XQXM6fHIU8ct0syPTcevpU5NWQcKveZbXVk4/pJVrcgq9+x/F4w6dzr/yKVqHqHEM3pmOl1lF6ZGRjVJWa/xBBBDOPtfYd7cKLBOopGMBCqs//ZBqs6Es/XqFlTVYVlS4z04orvyKxX6h0LpZ0Muu++m3JrfHF2SBl30axhi9tinFatbMTL3KDVXkmnGE50j02oBbbWpfI69JzqsqvuMW+nFyE7XHuWxLTXvp6moBPM+5/Us1EYdO6vZrqiuGLO6xTxDb5ggBCHhAIoUGOiB/EpxkUXqGPHhK8c32lelSFGuCwqpmVSvKjToGRjZRXbMyh62XjTRkuxsqsDQKIKxFVVq8GD28RQIx8k79vO+WwXgYiU+IPlEQBN/H7bZErlexLTyf/wCk+M1sN8q8KnpVX2ccxWBgaMfGQ+zWbGB8BjxV+FtNjgTiLU8yln0jxiO34nfJgZubMf6Hsh2A+1Wvwqo00CUBQkbgXahgoMR+MqbT5HyYJCpKjaDBTqXzKu3km1kdsiusW5e4quHUN1F0X7xmvG0s9TwijbIJMpfzUq8OmwpReRvySWryQQda0FJZnHCz26Y48hrG4mO0DcGWwtG+M3OXkOIfyHnUlepUCzWhXNeqmyclqBdf3NdbGyl6QDUK1NWPY7X/ABrdxVjY45XAdXOy8vpZV1AvjDicNQoRt3WvzjoeIrCRaUB8rNQ1OBWvjxOG4te4g4QjZT9j4x1hMVCV6ThhUQn6bjxlfyiHgH5PGViMXLCjLGNbXh5XbOna5EFdSC7LopFFneTPc9XCTnZWVpquZnai5kDJ1le1memlizcSz/KBdD+wvyK6KWrpq1b28CK3yPmeVn91v4dgUFbuase8mvF+L4cfCsQpU9jJjIsC8RaLYj3c8lOQRnIZSpG9dR9THv6RyG6j4V9IrzF4PkWJZXo6xHKoBTfNarC8RufJgsX95CbIGm5fKfqP4SctBdk04djirCRAK1WAexnMCfZ9+A3ftHI6a3fsfU+oGUTmgxAZy2GeoY7DiMR/9oq86m5qATRmobWIZwYNH2BEFD2QYNsT052OPi11TXn3bcymIPDiu26gnPz7WKhGSlE1tZqa8LpZbZ1G9huKjXjFoWobPGvlYeKxTo/cJMVwxe4bDRW4jcow1rijiCxE6qwOs6x6qnY9mPk7tyv0D4llnCC1RHsGlaXN8Ti1s16hH8aBELfH7lmOUrEHyVMccUDcidwwan3Nz+/qXFtVsXlaKsZjuKPPvxE4j2Im5zBSkcKqsgWRNMLUhBhbRNvi61QuI/Or1JBw34+pvZNYsnAcbMMM/bVrAdSqzlLPE+UOiWOpyAjMYB8R8oxrxw3Uti1PPPvym/8AARvrM2iUMDXfQ3OnJR5y3B5axeKlPlkIWmG5VrAttdtfC1KQlBoqmPS9RQ7UCEK4PgXOazY/wr5mO0S8AWq7MbOIAZ47Kq8STXZ053C637GLqD/Ek6uXnSuQ+NbRlJaLseu6NRkJDXqZDME6nxvyOSem0nk3+t8zF6loA1pQ9wt3QngxvoNLODB+OkRkewTgrHwJ2xZ7sgVjpkMtQRa15x1CV+2p/YM37mW5SVSpua+r1cbFYxM26uL6o0HqqmJm0vE4uHx67G6tdQysvnbjuLEOLxNY0xgy6q53qu7vsr85Z01j2oo6q6Wsqx+0q4xrlMuY2WYmuLkGL4jab/AiAQD2M/r1L9YnjH9W/wDOvvqUMiPWLHrSlakz6jyfyVr6NVbclYtsniTwdcfHsErZllnLhkIQEXjYvTLCrmRWlUyLeoAvKY9cPFV5BmVNqQ6e+pqCcgJsH39QTcq/6s4cqBAOUWqwzXmen5nURjPUXFWPjjlc9lYNdnxZLEYgWQKtahzrkNkKSo3Zka1Wn+pAMevIY2SpX5qLGetBWLXXeOmy50zfIe+TkCkV5PIEu7KSgrbksyBtavxkj/Uw0+JWoDH4NWt1TIVZGKtiZgY+pKLcb01fn268woVA1u0bcu5NZxdi3NTossSrZd1ql9pi7MqXqFQEBeZFgd6/jUu2d7Pluf3La+ta9fTVV0qrzgXpQkksNhBxFq8xZQRcu62sxmfIWvUy8ZiPoqZjZBlFJpA3CDtjqWAqysAXyNJjIx9lp2brOCsSx+e6/myDgsyfxTQWIHFXPhF9jFaIsyP0Zjy1oPY2eQZkJylaKh/LlgbaX+XqWOyXgRDxapuSsnMM+wW8X5BJqtisGlNtM0NO25wMK6hUmU1isQnUNfOKoUeSX8lfqb8M5DV/m37aY4+Fn7+p9gKoniN9vyJLNpGJlKkNcilclOncDMW0Bj8VycgWVNYxnSbouFZaQzHHxxVMq75WMwFeQyzvNAZe4pnHyqwkCF4v1x8kqJuK3xVueV+U3uHyKGO2XUYbg8CN7OI8UhojasZSxzsQWp9QHUstd4/2CVOI3OWYnUNVKUJY25omGkWQ4kWjhGfnKF+J0ITucdwViO6qHtOgWPtvxg/+rJsitFlZ1Y35/uE6hO59RFORcKedeLUXqqqFhfnXKa7ba7wRkY2HXdjJh1tiYNPd13UiiNjLWymw5K1G3Jrxu5hq1UKU10UnSWdBdgaHATQE5BY1haWITAYF0JdtZhtxvHyK2Hq8oT5rPJG/T7gBlaebiJg/+of8unGVuGAN33DjeWFVvrVHG/0ra4G2s9MqXtvT89DbS79N2HbZ1dXTycEWLXl1oaBvj7hZoCMw2V3Naln1XXqF+T+Zf5RP+xD8VCj3SxoatIW0e44wZqx8lWjFXKUIkKVpHA6dPOZD+GZiOTCKzmYmN8DVXOhVBUonSrENNRK1opnifc8CNYFj27lY3LRxWnzH46DcoPh7P+fp6j4LaVG5rxnErL3Q3lMRExaaLabO1DZeBT0nw8WqjISoYNtdChsOvuL7V5nCxnX0uqqzI7CtMzorLa61WuqtpjohxOlXXj8MY3rVX3+PTj3MuMFemqu7HsRVSiihq6kD5RCrauxGYmBwpss5HYUNbyMsYk2Y1ixLPD2Dhi2CIJqZnJVzHoOJgW1JjuuNurLpW8ZFLUVNVdh321Na2YndlcPvUza+6p7arMxcxUi2DoWHHtrosrS7VSY/Uqtq+Nd4sxRfjugqXMV8WlxXfaQ9py6xk3nGOYP0Nz7lycVq8y3W28PMen4almGjnIoaohuLYd6uu/F0uq0eUxm0a2DytFnHcCpoBQCqkU4qCHioOjPG14zUAAjeSJobmxNbjcTGKiPrSmbiCZNvJl3A3JzV7DNyBDnZMGfkgWZV1gLHa3WIRnZMbMyDO5u01jNFtdYL7FBzcjQy79DKundXTvL9nOydHKuhyLZ17J3FsGXfBmXzvcid7kTvcid7kTvMid7ka7u+dzdO5u13Fs7q6d7ka6zk9ezS2MCMm2cjP//EAB0RAAIDAQEBAQEAAAAAAAAAAAABEBESIAIwITH/2gAIAQIRAT8BuL5ssvlFFFGTJXyoooooUeV1fLLEIoooqEL5IceULlnld3xRkzNmiy489UZMlCRQpaEipSF8vPNTRkXdfGxooXbfws0aLF1cuUihdp91DnyPihwosXLfKGLhwhsUKLLHChCUeZb6tibFL4Qv5DdGjRZcqLNC9D9l9L1+GhlGTBgwZMmTJkyZKi5XK+Lhi4//xAAiEQACAwEBAQACAgMAAAAAAAAAAQIQERIgIRMwAzEyQWH/2gAIAQERAT8BUzo7F/JLRSHJnUjqRshzZ2zpnTOmKTNY2ztnZ0zWL5ekJHSZqNRtfDFSt07cT/Rl6aaR+jNF4Y6dsYxIwwdRGq2lUvCp2mOmJCM05FEwRo3aF70ZomK0Mb/W/CQq07HLzpH6Z6y0Icjd8YMf0Sw30xf0cnJycj8t4fZMjHkYkZWmmjImit+Oj/IXy1bEaJm1GnWGEmZosXhXIQ6ZgqaEqlMX/RYOlWWxErijPPKMQ7Rorf8AYyK0/GfjMzxJiRyYzg4ObV4OAvgmOWHZ0dneiZ0dnR0dG6MURfrz9D8f/8QANBAAAQMCBAQEBQQCAwEAAAAAAQACESExAxASQSIyUaETIDNhIzBCcYEEFJGiUmKCkrHh/9oACAEAAAY/ApLo9oUTk06pn2yohW61HE/EK6uoDlpOL2Q+LP8AxXq1+y9Tsp8TsuZc/ZRq7ITiR+FGqfwuaPwvU7KPE7Kj5/C5+y9Tsufso8Tsh8TsvW/qvW/qvV/qvU7L1Oy9XsvU7L1P6r1f6r1f6q+RKPVNBXMp+oriNlwWUOULVKBLkIdK9keio5DqjsESro1V7ZUuqIBXR1GENREKGuCK9lU5T5K51QYwcSDcuGy1OsqWXEvZPaWaiXUosGcJsPvRYrm4bKHhWjGwWDENaLBczAYXOvRNOEGgtuFhQ1oBqv02prWteeIpowsJj8LcIBjdMNgp2O9oMJxOAKChhN4epIWKGMALT0Ra5oMtmoWKKCtFr8Nuqyw6A1sUxowWeGbp+Gxg0kbrGGLgsGEPqT3mrWWCxMB2G3QLUX6nDIB01lT8jS25UroUa1U9UXRZUEBfdQbprLAm6Y7DxQSzZO1YoDndkdWPrxOqw9ONVlwN0MXDf8ToEwYj/DexYWHE4LN1qw/1Olou3ZB2FyC7uqdhYvIbFOaMWZqsXGdicbrJ4x8RvSAE53iDQOVYzi8Pc/l9l4Xi1iVhHFdpWHij9TRosN0cXVpAH8rFY/F1MdaU9jfRf9Sfj+MDq2WPiPe/DLrD283tn77riUtRc7ZRCIi6ia5E/UjK1NaEKSqiFYKXOC0xXqoQbFroNbRRdcoXKEHtEOC1FgCMMU6QFxcuyFiVMyoKIVlUeWcrq6l38KSKZHIndE7lVUbKig2W4Kk5SVrRJq5VHEbrS7ljyNwtyvCmgNSgxuRORM1yuqpk0UtcreeSVpNlNyrLhynUgrVVEZy4coaq2Wo1Asj1TXFun6aof47qSbrThEx1XiOJ9lUQxylR9Ca6eda8OS0rpkJqnSBJsEGYkQLIYnK1pR0sBaFDqFUKLqo6brjIyBNlZe6Iaio8ornJ2XstI2Q6bonSXSiHt04gqtUS3f2U6lSXFanck2UqdyhqtumgcrEGmNEVWrBFStJonYhZq6IF1PZc8xsqOgLSDUqYqvuoVAjqdXK+R917qCjSZUqFIVlXZABEbLStOlcLLIhwMQvBxtrKsarhHdhuFq4SVZoXNJ9kWuOn2Rw7BqpaU/FduU7FdutMrxHXCgUATcSbI0qhNAqKig5QVIytVGNl7Km6kroMuFqjTDQuI1XC+JRcFBbGUBUcneJWi1jmF1DqjKiq8/zkHVWp26GE9sf7BQ3E1YZsmhg5cpoQuNmiN1DY1bq63J2QMARnPVQbKhorr7KNsoVFXhCi6oBnM5T5J6IiwNlQ3Xt5IiVqGGNW/spmFC0tHEbqv4QojI4dlCgL3VV7KUB0yoFbKjVZcVAqDzNE0KHRD/Hy8UEKh28sq1lbKpUETFkTFSi47KtlRTEqUStSi2VspNTl7KyuiCKKfJ7NUZClMqZcKLi4wdlpAhuZya4VkZCNKY5or9SOrKvmOkQqhS5e3ltRW8riEXRM1hdD0zqqBWjOdx5GvZZ1x0UBCKdUGqG0RopF1Lo9lKpUZUUrSgBVcNvmAtQqvFwrjZV4X7hVsjClTMq1AqbL23RatLorVVui6aKAV7onfJu2yEK9FSyEXKkH8IaoVLdVDKuRLjJylX+URuiNpshsVO/ULSx8sNyuEqIQ4StIEHdayqIPbQbqDxhQRRDRy7rU6+WoLiooO60rmgLhP3QBoVR0rU/lWlivK1KVS/yocgQg8bqhVDKq1cTVdcNQid1pJsgRyhf6lEWYqfyiAVxcy0sbVBjandE0opcUNIqtUS9apoVIWpyjUv8AUWUubVR81qny8YkLw8AaGdVFzuUMTYqFhQa75RZRKeSJ6IvLT7KACtLaGU1ky43XxbqgRgyFqcQuF1lJChVyMoz8oOQTsqKYoq5eG+6HRHUJBTZ6rQ2qIbstfMFBsqfhVoOisqp1LWK5ZlNwxKjL3WiFCrurcKp5tSnZSpzCcii934UuIb1TQwGVpKDhcINxUd904n8o1UtFu6dWi6bJmkwQiuKp2AQJor0U7BQLqxJVoVBZQqoNUNUuUDyVsgMozjKFp2JTWtr1Wl/LdGBAVpOZYeIOpVHutLrqtgvZarqTWEV4hqSui1Eqi17qtlAVMw7OfIShnHl+yb4hugwG5qei/wBAi2hlF2mGnKVTe6EOoFWkL2WhgH3XEiXWQDTVBxVCq2znc51sqecfJKaNNOqiiArKBIAP3RDhKIyg2KdptdBgEG6gEwi6KroVAEqt0Bsm1qrq0qNGdfJJzhRlOWlT5IyhClFqaIQFyV7KW8yjfIVP2VlKcHGq4RCgXRJMLiCrQqjlN1DRVVyjyUVciioHyIGTmeJo0jonOfjkNBi11iHxi0N9lhO/ccbuWi1DH1lroI6oP/cEe0J+q81TsU4rhpvC/ceM5OLn6dPsjhmD0cmfHq+1F+316CPqG6fg+KabxdP1Yh0YRgECqOK3H1aTEKYvlZT59PkJKLirZBSiqKubzsGwsRmIA0tdRfqNcB1rrCAFW81bLFgS9x4arAwtBJG8rxhyuWK6B+U7ha13QIa2ai91YKY5kauiwAWtjc9E1xcC0m/RPxnPboiViPw3tEu5CmvMMxJoAhN/lSoHkHk0hTKuFVXyEHiVXHrdX7r/ABjdREtUDm6yquP2lcx/lQ1zv5XxXF35USf+yr/6jSZ6q8+0r/6pmT7lbK4VCFU+SirlGZGQ8koHFksDVhYjsOA9Yh8LUWn+VhN8GHl0OavgthwMJz9HEwJmK3DOp8L9ORheotPhfCDalacBulpoAnNDfiQn4eMzUh8PVhP7LGcxkAFYJwxDn1WMcRuotqsRz2y5qY/9RqfiOtCwmN4gbp2FoOgUvusUHDjQ6FjDFBfpEtKcRhxijaUwAFuNGpxmyw/EHG5spuDi2bIWI1tpp8ii1QoUStOXsqWWGxmO1zmd0/Xjtw3v7LBd+4DsQOq5Yk4o0moWMHYonEKbgYzvCc2oWA1rvhYf1JpH6geFFQhijGaG3hPnFw9AFFiYrcYQ5Pbiv4QeFx3WIWi7lhM/cNboWKB6D/q6I4GDi+I9+/RNZiv8LFZum4mBLw3mKP6jxZdHIsfXiaH4hkDoizEMYkR91hue7wxo33TuMeG93OmaXsGHCbjDHobwnQdQmhyjzcV8pFFXKt8ii4CmRMI0EBWFUQuLmVgjwqyiFsrq2VIVpytVbSqwpKE2VlbOVp8seJ2C9TsF6n9QuJ8/jLhMfhep2Cq/sFzdlUqhVHdlz9gufsufsufsufsF6nYLn7Ln7LmXN2XP2XP2C9TsF6nYL1OwXqdgufsF6nYLn7Lm7Lm7Lm7Ln7L1OwRMrm7K6HF2V1//xAAnEAEAAgICAgIBBQEBAQAAAAABABEhMUFRYXGB8KEQkbHB0eHxIP/aAAgBAAABPyFwsnyM5DfVS11f4meXTHtEVJfiF96HhLnO45fzEbfwm4WPUpqi+IKgBer/ANysGTun9wC6+n3LL0xsizzaqdwU9Tradk7UuDirxUw199xEF2+uZaByeJyVWmXM2oa1lnuUaPv8y0LH35gUUj9dzccHn/3El9Prmfd/1LBd9f8AUroy8/8AcG1hTuPp/wC4q9av7uNVv2+YZdPrueP2+Z9KiBg65g3caFlaC5AWbrMCKL1LAzhPEoqmEo0TGFLKKC/UAF8GVpvRMGvQnBJysYhLpSospzqf7yVBXlqoS7dcxFMzqWgr4TM4RwxKI5fm41FgXZMNuXNOPJMTWjqfOgw5mBPddzOH11DvKiFwj7RxqxqE5vDqHs8TJpMTcHx8QtwUY8X9Li9swGmWYRessQiwGqsbgGljFEdV1jNlg1Ap3X9ocnebCRUqjDJRVEIrJijli4qpLmMFTPVAgqVhxzrr/wBgqGdDEtf0NDWlV3A5UaviXSlGZKC45M0TdOxjMxkiGzr940eADUuQamdGIq6LR8kUQCt0b9R1uwg0yrVcUhu6zamRlL7VB5m4cZ/yGz8o7W5sx0YuBTO5hmaXcqGwIWuT2wBY+yVtcUrB/iIREBavKSwxdKDzMnK4OpRQ7hcExkCKbNQw3j5RyyuFx8Sr+w6CUs21ye4uuwYs9M8IxVvu0FyxqjC8R29xuusy6bjJgldy0uaOJQ3GgCzuF1QwDuPZJBUWmlRZm84lAQNr/EoSUloEwUNsBoJuzEVlcngytdidWYPh214f3MATwRemGOJRNpTsYTBa8SyKxJoMIdX8QFaeBDwYGmKgLe/EDAPTqWXUAyRcaGFjW0jawzKFVVkeYgofUL5MmBZkUVsj+lvtKlJvVxakMkQ6yLCZOBrmY6x+ptv2ZSR+yiNQNwCKjmpl3kckqqLuUqLdbvmXZRWupiQHg7lSmc7KoYbAduYcDV8wW9kqjJU0xuWrIzpYmWYSoaHcukVgI1MbTTMOd9y5tcEdqbWp+RtE78dRsxtBLxlXdhA9jw65lB0R0p1xByfURR2MQMswe5TVVZcxU0rBBHOIFVctsPxLf2ykie9ynzZJYZz28zBAnJ0kcbeaPEqLAag7Zs1APZ8zOOISrDPNkuGF08ymE/MWzvEVjEcQ0ROIN3C23+ZXqInyJkGu0BNjohVYJLgXslpOssyLH1AzucyhAO/iWQN7uMEeKg5BR7gSp7l2/mZALGAf+oD26e9MNIz4T04nL7cBgFMHrKtENBS2uYcsLw8wgpBeOGWt2jqKxQ1BjpRtVHUYntDphdlo4ia/iBWHLjmW3mluEkdlzsNrKnuprdyiQbLh+CZCUFGltsKrb1UqApAuI63oxWrgQBZTctCGoHjll3WCe0yy4g6rLNzR4iDQTTXHEpbM/lK0NPNkrkZVK+tUtSzg0rUPTLLgYDCqqu1NiTrkh2sVBsgxQRiolTiqBcUnTqDobzCHrhTTzgI7CoaTmNhXDiIRtwHUt6cg2e42ycT2w3yBl2W7OYNjvSN0HMoWKZxPB/QLDhAofiDdWdIiBmADWpoHQYyWfiXlT5lMFICF25ybt6iCTMdsg/M1qgYhXBvE5qEdNERIFryZmAbBhIuMY8liNDV1LgF7mIDhIv4hSeExpcqMJZyL6nKsZgC+HqU4yslT5/K5hteMQPgeExHJtrcNOApOJ+SwLqcssELu+GVYFai137SjqJyiGv4sxNRSFw0rlKVbr/eJnwaZxG7yzI6vUuSIRlZcTO28gzPwdkJurtgIVcsZAGqLC1VggGdaERUUu4g65jyKq5lur9pdZu4dJhx3ERtrxxBbH5JmtmoddxcxVPc2S2AacwYs+C4MWCAbS5tL0xFb4CKwRwid6fEdBlSYI4amd+g0i+VfEQhAW3uZrcrlX3fEAC/xL1k7eZdRbeYRhev0ES2MqGytyyibhe0nhiFRQ6wMBVSgV5FkZ5spcRUAQLnlEeBmKlHwFyJnwJlLGSed0URb8LhKchgKFngkwwcxN43zcFeJrc/2mjiLGCFTjUIiWUkdjglx71ymUSOy4TKZ4IYZU5Z8EYYJcVMQPIXJC4u6cxECFjMRhVzeaolbl7PYSV2vg26Zz6adwHrU3Kjq43MF667jilAUEL1Ba41+YANh6mFINpkqxZiVhULjJLmlVMs8hLU0olai0zUY5Y4iiSxBSqzE8iWlGNv4giBKDCxkpR7iNCIIAc/oaz9DucQY7/DOlqZKlpWdGFBVRDURqtIqBHmckQUjX27mOziAZQieJn+EwUbGuIiynxbP6gmTgFD+JiAA1U4VPxMsWrqOijVahXh7lThvxzBunPTLp58S1ACIB85DbM8XLWixLmYswQiDjKMdBnAkKrplhKGGJC0y0WoL6+oXrMsGiUX1CCA+JVWM0MExobgVHupUsTRRAKFIqLpTuKG6Tcr3WIOUKFqab1LwQWpWIWKUxEw6dxAQw1UHBPRxE4uDFQFj/REReTioRKb5Y+AT3ENPO4OeTgZcEeUG5uev6XWJvUOH/wALFQ3QlEkOSMPTiUCUWYtAV7sTBha/iUrmtS0B8xqWQHtyfoyVhngjX2LxLwgIDklRFVcVByaGSZsW5zipSZ+UAB5TMxZcQaybSqhdF3OrXuVlGxlqZoWaZhqNwNIGW+UrQ8CwkiDS2JYLlO37S/EdsovGYP1JZLyyG35Q+q7lMqHQzJsL3SgsTyhETysvxV2Qrmn1MyorA2vPMRXheYbK39kGXsqnknAY3iEAGEpTJrbFjqCrxBFT2JmEdiclRWKmRKzB2S9vH0iwuYSaLkOe5vL2hMt8xsSxLY4eHzKdtRkCM9n7Tf6OUaHDn9GcWcks16EuasG1Quwn8gYdxvPzN0HqDZB7iv0TqXQodSjDXCMLTh7lfaR0wLDoqA7leLGCCqFX7/cDqy+OCcqXPEXuF6Q4atJWpdSmA4XFQreKrUsMm0gBPvHmaxcsWA3LEDZGbrOYaI+CUOsTYaomJcslmmKcxFmiKWcpSobiyOILfIYmN6uOsQ7kIPAwB5Bwz/RQnAuJjPK5hIJRygZ8iQ+MAwWVC9sViS+zDQEIVQ7eWLELwd9tBc4GI1Kv8EcVw8uCAtgdx0WHQI5sFcw1BkiogJoYtxMYNOpUMs1npK6dx3moZA3FmwgnkGdTiVrxOkRVw3Mako7JYN8+YANQ1AEBk0x+HCB7mLWsnGplIrxDbEcZRaqZviK5ngnEC1F17xmc0QMEyvmC7ULLk4YJE1guk1C5WtygW7ysLdrwQWHwZSCrmpW0LRxnzBm5gbZjwu58QcwZkrmWMZEgUmAASOFmVZQHsgF3JKj5meB4dwiqOAwAo5tiockdHJFEoHcBhKFJaRdFQizQq7YJV8IaDRcRLWW2IQgRZHpVUEwiNfQlgTwIAiJ8IhIl2V1BIPgIlvZFqq7StN9wbVUQydytdbUuAlW/L9S6guYDVKR5mIYiRqK+cy3ZiXoIEJ0su42CGjGuHRA+V4PiagUAvcx2gcR0sG73BZYMOEBNrlEaBBhFbgRKI/CVz8CMRoI9SxqyXjuh3Mhm/wC0rBeiZcYlRPhBzmx+I9GncOjCLmVujSRqZzAA1iEYSl8pfiaQckK05guSonJqFiNY+4WNRHxBN1TygQnSnLMM1ZF0hvFBiuY1oRZxmAsJ44gauVlNZm0UcmYYks3BZfffMRRimbjnCe8DJg8xlKX/ABKGkYIGgWZqaglxPa1HtjEx5iY8vkmb3PkTAygOYS/ClaOoun6WZ3PmXyQWWoHcLaG8AigndAI4aIlKsSoFTrqKy97OItal+YIOc7wEASUrYcQzbfqXunlBgbRkKuXj6zLUuI07Rol+EHCczf8AWpl863HLqUvEBNmdxbNg7gaN3Eq6XuoDkHMLGp0wmkh6Isv0QWpT9AQTmpeatyyV+g3Go4sso1Dgll1FZlHDiM0WjeOYSljyxmHU9yzmFZ2ZUs0jI8SJdZXKFVBvcDCXHpLlVdQsbxM5hcSyaBizll2b19wyjbVQuorxf9zvxN/5ZsdJra0dy+yU4sr45hMpEWoxYRe0z4mWXUY2hcA5PU4mLN3ADMZaLl+l7Mr2NxGtx5MWFDJ8zlo0P9ISVuqa4i5WzFdft5lK0I0Kh8XdUUfiFGnBKziaQyoY1X/IeUgBBqMl0tHEOcOQf8l3gd0X9YjpczKLUGrkAiFguBAWaplAFYvbieBY01ANQXBhbascMMypliFEtW9Tj7h52YjuTqGiiuUQgwhTEpQJkHUdUaiRbiy1cRsyhXMyw9o+5qjyriyU4t9DLEjJaDfCSvc1WMEV5vMbDI5ruDKBVCHJMzcdwwMAitOoOQrWeafpAQuiJn4lrz3LPtEvRyDuFNaMIQrwh5LfUuSmGZcOe40RFlHMwhOxEYEuUNwsrliqepXSGx8T9m4QB1EV7mLsilZikTcFkb8xkKvmGukANi5yZb+YJVJ2MCqw8M4XvdcPMTcy1DXxGndcv+yrMpxs/vKAzpQGoM5Ib+JMJzwcgpmNS+U/BMNpRqLa12QIUgc8JlQW8YF/7D5p64HxLMZ9rl/ifMKWUkosBD8v/s/cS+3HthVtQ2K6iW4SqcEuMfGiq+5T0S8YdhC7u4ICNQ8UODVzzE3xHUngDcfjXggr1ok8ypFDec3AhEHqd/wg9wlGQUdrLFHkBhx6383Ce01fiV+oMeX0mYKsA6I6molcBK8MFH7o3fHH8Q4qqyr0SnKN20+Yliaz7P7l+BmLCBlBc1F1cjt1AbAQhwpmL3ATvCd+4KaHFHlljeoyzuNgcQumW4cSo7+ErMhuAG1dxyAuUy+YLxDGLlfR9QWk6gwQmSZeZ8l8wRVQjqXKQQdla/ibdIHFn1lbT4LNlx6b4mXU+O5dD5ADPzcdVdgOFxGRcrCPrM5ianxc52AveIKDqNhe54ahyCIE6K1AJmnyQm2adr9TMkOoxUIKLg8fpvT3DpGw8YCHHmrZTH+LrX3xK32lOSo1r8xuw/Ee1K/RBo1CUFS4VEZQ4JZ5jp/KUe1PMY6ckEioYiOWJmdIsCW0i45lwWxmE30RcUGPgpmYP2Gf0oSiVVCyl11A01czDBifBdyxog6F9Qsupr4uUzCmoKKAKJmKbcxRyi7Mx4YQLrwZhrU+EuACdQqyf2lFDxAEpMIjDiVCkSSOZiYZgcf8p9C/qPK+z1K/+0Ru0uH7JL33fiC1b9uotWtV1/yFH8BBEpE6Jrl8IwdftqCp/F/kv/4/5M/+EMvf7cRFfu+Ixb/BKf8AhD/xkx/5QF1x6QJR93qH0X9Qv+r8R+6/qH0X9R+2/qZxpX2xGv8Ay/yfaJmf1TP/AJQP/jND6viWhn6JkHLwlkPwI1Gvp+m//9oADAMAAAERAhEAABBNHD5m8CatSmHupqWfEE4IGQQQ0ZnL4YQ2wKi+V6IPzczdBIsyrMdRWxOJHnUCw73yekkOD3mDUCuiTNMe1Py4j3k5/gHLrftbJLthHmD4LoE54EHyhGCzpDbHawuYJqHx+ZSwla+O1h9qYILR8/onpL/nK4IWCY4IMngClHKElhSLiuGUk5VoKVO3hpzOjX4w39i47wazNIApyIAD9GQ/NB3F1i+oSVWR4AZUQ2689Kwwl9gzgvfw8HggTTBnyGoCIZOYL/ghwaGFvoL/ABBawABCQAxxgSAsOKckv9QsBHUUpBg4ZTXVVtbeJsOI/wAG3BKPgtr1A7ziZ3m6P//EABwRAQEBAQEBAQEBAAAAAAAAAAEAERAhMSBBUf/aAAgBAhEBPxA1b5EXyFiW1DtWtra2t6sQHkFixFnkE82bINh2+GagzrJtkEnnAyPwDbxGow86PB8vdgtOPzmWfhZe4MvD2USecb1eVkRL5b1sGwTBZfFj8vkRmb0QQYJifnXp48FtEEknDCYnvPCOWdfnCAsJ9vHB4z52fJhMOGW2yzLwjwIh4bMeMtOB+PZ3jba228II84I8fRJHGOGGNllpOYcbObzI4cyzLJ8cW8/l9chZJwMIvqXJihtkg4Lbtlnkb5vU23yenFjbS8g49hdH8Hjs+7B9kh9mHy1TjZa8tkvLSclMW3iV+N/BMxYbMtsv9tJEYseBufbIOaZY4nTLZhuK8MyH8fBx4hn1La8HCb5j7wmOH39B+9//xAAdEQEBAQEBAQEBAQEAAAAAAAABABEhEDFBUSBh/9oACAEBEQE/EFVJwzgkY/LRivJ3jfI/aC/P8v8A+mKD4K95dM9Nl2+csWPAdNsNzfB+E52z+xntZQ9tsuR+JBBrZkRUPZKnjbly2DY4SyWyyg75hfAWT14i+b9rC0fIPA+BlLnjZbJfPDTZGNjGE3El/kM+zgtvFhDtlq2WW25NVw+Dt8WWE7AGS+ZEfbZO+vjZLO+bxzxwQLSZNsnk/wAwV4Xv+GcS+K4d8OUR4cSCXwWqMNt+/wCOLqYZP5cPkRYZDEIkwWCXbd8P2ceSdXBfeEpJeSjx4zi65Zy2yeeL32cSXEPZeHkCwtuLrCmCWB2xvrz9lfUIbEa7FI+WhZfZP24f9irs4ZAsBurIFk/Z9ljL4w2aXCIFjJZaTXLy62NweV59bXhhxjqJy5GxfJH5Klv++WnysLJ1fZmyVmJqjZJr+W7B5P3Yf8hfy3bh/wA8NDB9gHmGyd8w2Aks5YbIbAsLCwkLCAiBASHn/8QAJhABAAICAgICAgMBAQEAAAAAAQARITFBUWFxgZGh8LHB0RDh8f/aAAgBAAABPxDiToWPzGz3k/2mRZY8Q6jBemvzLX17qXOC4qNhjQlk+LgKL7X+iEnQYUYJtw/uMGfCH5lpg1cRUbHbhflDxYGqan3CtUdBtfmaOLoW35iihGr5fmZMALcE8bmMgnF7/mVoc1u/9ymecmEOKOxYIAuoX/qFtLAt/wDYYCDkf+5c0NmgPzLMDHzh6EDQu0OBDY5kUFAdkWb/AAw14F9wrHwY2xT4Uxd6tjj+Zo4WPzjCrbBJwQWwVFoXMM8onf8AzSsJvlbIpAt2ELWBsTUpck06jESbiiHPzI7mYhg4gOgxnmALdFrEdVJG6WX7gzrHQ2fiC1Rhsea6mITilcV8SpMpfIfUNIHSrAC2pIgCFRlJaHC9TG0M0YPmqfuZcYURoz/krTzxleiU51wtB9kMrzKJysXAymKYfZE4Botta3LrcDfF6/2X0KNquPOo3KhAeVnFS4AX+AusSho2zdPCwzQE0QExIHlbq/mC7B0x9ygZdvD3EqhwIzcds8MRc9ja9SrYMBUu3iedtZ1NAY+vuZBZt4RSVUriju4vNhgG5d9oq4Jpy5GEGm6NuRvVMDA3QeTfZ8O5luMAhRfjma/3JswpWJaQguVVefmA0IKD4CJy2pR2MdzC3d5eyC8w4IqNev6RxW5BFVi5hsAY0dmJWwd57CfvccnVHOh2TGzggPjUNDbWNkw1FWkKlWKHHiVNK9KEL2dwop4+4uBAOed3KngZArCKMCtOVGHiY5PG6NEUDu1N9RLCHIK1pr4gnNKja38xMGgyxekFQZckK7iGwIxZuq1Mz90AoINbLmGgp8oPoLWOCYOR5JiTeFH42DcEhHCmD9BoAwxLVq8obxMBwigDXthFMoBySgq47LZc+YD1Wl51GLhnKNuqXeLRQE70iqfnMKAoE1Jh9FG2y4yfNEJohUZuP8mTzLsXZmCQ0c5FeXEIrZHaEsLvcIYXWwfV3LOgpVCuBfglEIbvAxZ/McGTCp0vmqlnldi86/Eu0XMAhhS/EIQZwANPbn7mlpTBU07/ANlU33BfGTXUHSchI1jfmAJS34fg3BX0NDCcdfiAqKgg5WQ3mDbCVZzUJYP1MbSELXPExyReKjtJsWGEHh/wEe2WjjxDIo9wW6vswrSpIxtWXMEbzIZSMsH8plsFJy+4kLloiNrc5hSQ6alWYIDY7lBoMjBClMuw+JeKWK5JzWA2SFerqFHuC47AYJipEDQYtlRSak73/bEG6J6XLFVba+lSwRsIAq4lpjgayPMbkuvsiJSNI0QCBcTN9XXxEEfRtLClsWx6Sxt66K/WZWgApT65+I3RuMbZqU+FhlirXBuW1KG2XKyxeYizfKFSw0EyLt4zAMLpZXpPLgBs4lmBaAYYOb4eyM2nO9rnGxWq1Nc5RZaBu1ygqWhqm4r2SpNsMKUxKyAV2u4LIF6hDYUOSnMWV0xUYlNXIsBZ/MIFVq3TB58Ty9CMVneAuiZiOolb/wDIgWPDRMKxNt7g4SdM3OEiN5qrid4hMJ8QElGLmWMYrTGQHmK1UK2XoTjdVmod8LA5YqlwWcTYGwxbSArXMxaH1GVbIPIPEp9GVh7hqZTI8uCYlyaEnSYNcRRAxmxU95Rpa7OpnoWuzMjcyOCLu94i4uREg8BKdJMfQLhShgJhdkf0nhcwLK2E5jUUaJjoVjbEQUAPCOW2ekZoYq3iNHtvP4S+Er+0MCeBjt5jLgHBryYwi5hcHuMpohLrzDGJe2uiIEA2aVwvEY6amC96nluFheQ58x2UO7R5BECEeYuX6CqjDhaw+UCsiyCKwg0L9ckKMZcm3xDaSzSrpB1CTEwWYQ0dhbADY8sCJVeZnrI4CVaTltLdELOOiXcAhQWuyBJQZDmMAQbjKK6lZqVXdcrqDmzkjS8S95ibMwY8TEtmxiMv8CPwUau4JXJ+D3EvEbOo5WW0HiL6DISivExWKMYSVJGKCk6slIwUKAtx7jWxS0Gmvkjy1GhFQsJGqLCXXmUHfqDGWhnqIoKbtv8A+QJpO47TBjr6H7Z9wJAVReaax8Ep0L1GfEtBxBwghMFQg+47BS7j0/iOSuFYyweUKA/BcsS6m7jpa4gxDYb8EWols3GtpNrMoA+CVD1Lmm8x4LXVuIwWZSly7I4lggVY5qAaIyHiKc5+RBbRcwrISomwHggnlaZ+UNNZ0EHEBleUYtkBnaxYsYVtDoxSkMETEbB4mcM2YP8A7L7W6Jod9y6XGJ9NfEy2A5B8S0OcUzFqEcpYKQykb9pxZEhlIXlB0SjUbYPKW6D7jcQefDTic5SMLjtsepl/DANQPL5hLitvlO/uIxAq53zNsYZdvEFjRcl1FtjtqZhbqotnn8ccWHapWxUfuZeYrdswyarPEWErnzBMIqeksL5hz9IKkWwyMGuXGStK5MCwmwuLl7ucOhD7RciO2AUbWUZDVO4Pb6yvDLRUJheIg4TZRUsIKnLbj+GHl0U2d+4DiEQGMYzsgPQbrvxBWzWApUAhLx+jCzIhwu5a4Fbdrxmf8eTlxDJDIWTNKlSbOx4shLVlWqdwzSjJXMqhVm3FYbMFG3FxPBYXfqZoNvkhrLTj78zlrAj3gelwxlabVmpoDAS1GzbW4JiONzP/AMTIxynntDhLVVPrApG1ZJkgTBdgV0LuU+wRBgUtsjIYAHDpCQE9wRLD3H/Ac6jjC3DmLAQjVgMavBRMWV8QhJZm8MUovDlSZAKIC6gSqqrOoEe2YwaVHMdIIFGQ3mWhq2PsAmeYmJDYcwxbseoIfZVoJehmCRGA8RwbmnxBIfID3A3RTa6gQz8vKMoRLlSA47e+EU4BECs7u5hE3HtZiNWyKJUxaf8AIClX1DieBoJg9R1SXxcPqBzpcVDLSG4VBT4OpnjdQlW7g1eA4jujzC1BC3uJmhbtAQtHEpdtdxYtHYQ/2kbKq75lAIM2KmxEXwRUQIgQE3cQN+w5mVjMsK8j1HYbp5MFopK8dsoaVXWrmORUzWk3LVBp8znpaq/qO/QDQnAxA4jAV7jtmqLRXbEBVNHECQvwwLVonJHULXHbK6grVXLiNtXzAf0T0TmI+DEVQk6i3lVS2wuxCwU3qa+9Awx7Yl/xNXEEGvFx6WhAHmoadaaVjaV1FtKcEposWYlxM8SovHVy5gHHuIEba5fiUFgx09wYFHhETyaO4Wrq6QwJm8L1K/MMNvMuIGcDJByAaTBX3E2vLGKzb+PqceT8UVoAzGATxXcDxQ4VL9/C24rzkQ6ZT0RILtjlOYsJc4dVYY8uajKNctjxPRiaMhkQ5xMLgthyLOWA7II0X3BRZTgOKi2gJKiLgq5e4WC9xRCmjbLlSxCyhaNuQ5riUeCKyRGAOdqiWJ5GHtBvzF1Xz0zkPttOfIWBOoawGkxHPWgYfmLYQYXYxFMQvTbxMtDoZTPZWgv5IcWAteYRzXzhxqVAC+e2eJ1oFyW/8m0B129pkI9uDMtzLvmMhUL0VK2LWd1T5mPN8REhrn0xUC5IjyzkRXTFSvunEuJt/e4EZA7laBt6gpgQwNAXOpdkCybCZUqnPmNDFTuhi0yf4QdMiowl6IZUF0hmYpQbL9M/mc8Ggv3K4MvwgLPW6rEQBUWoDLKsnZD+x5N3DzhdtCMANOiNkZ8XXcUFNi2xte6PM4lde98MRoKAo/1AUmtqeWUtIaNB3G4vwd3X+S6qVWm/EAmFdBZfS6AIPpZs5hUhQy5IGqFqFR6LG4hZG93UumCs+YoC/wCMWt/XMyNLxAgRhiZhnHmV/wAPqtgjwVioqV0p6h0DyEWOEyYhVY6rqB/cwcFRoaM63L0vJknQOV3cWlSZWK1gwEzDXhGiBhKZLwQjw7fC8QH4QejWWZitE7MuWIRyzguWTKZx+YVuIVmViBeKx9wIA0LH2NiAbSQviAxlZGAYwTDpHEUcOQOeorl6gvdLiOsZvgrsgtqQXu5qNeS3H110zACU75lxE4eIYuebitmkg3uWgioB3c3gFFsJemaSHW6ZfOZsscO0NFTsZwiNW1E60tgcMUtq9MEEFI0haPMZVrhitqhfDF7lYEcDcJeFW5SlIPNqGnkNazDuX/USXXPTLgBi+rlWPsja17uEyCGM1DVI11gjEhRhWoLNQwXiEubQYwlGGbRKRO56eIAaKrzyTCkWg8HH5ioakA1DbN0DFEAdQrdTNO/4j4VqDeJacEA0lwXMA2Zm3Ean9eYbRSfuGJGHOyXwWBvrNSlhaiRoIXguZND7jl0b3/NTnYj+IivZLRtUQgsYRACGA0UrZ3CLHT5TUWAXliAUIBpmbxL7t3NIagZPHqIXEcuPcBgXKfAeJW2tPA55laOFmtSoAwe8E+FqZPcO5qphPnwJhZMjZLZoVTTv/YAPIjFhAMQFzw4RhkiGu4aENFoQr/dxFqiqclmHgcRLCvLCqa8MUGi7i6CSkV3mZ0ba1MB3X95bK4dRuFsMorG3EJU8JjFA45QXrgri5axsHKQyHOV8IJAHFtSsTYQrvBESRveb8kWFjsy5lFBP9owzFYHby/kmX4aIyz9FB1Hfjq9Sr9X4GUbiF7EHJN2svaZxeQMyuS5YuI8Rj6Eha6OWhCiZrKnM4thEdynpjkhtdXKrgS4/E/2Vimo8aOncQ8c/iLgvwmFRzmLhXuU3swHAoLI0yVw8R4BxXHISitwk2nTCCm3a+A8wYH0DY9wnNlf+x3BkQWWI7xmxjOM7uX0DYGMOYCDCBmcph4MXfDzsRO4pRQ4Fx3IcuK7mJG68h5mMwbHPkxp1M9HuIjrYczhwW4iOvYiLBrgxPRt3klTFma5jUR2aZZUJrB2xBcb+JTII3iY9UwXAoChTX/EVg/dxUyYYL5jTU17XcDCWl4hxFe4WCx5QKMOoOFplhtYlIAlYlriiiKDpV80JW/RMkXsh7QKoVV2Xq50JMUkJZo6jTKOS5IVOo8V1LafrXzUO1JtvBcRUA57TSg55vcbNaHZMMV5JB0ip3lDEyNAflNdwvu8QmxrSEsQfBqYTI2ZYTEDYS4fKy2y1FzIbCEIDLf6RfNnKJ3d5qG1b5f8AAOdX+sqM5NFzHC1e4AaumoFZ1MGgnqIwF1epdtGGxFIqGrmK2CLphJicWPoYlIKb3moY5Pv0/wBuZNLCyr0fzM+MnGcjAcPcbDLgrcO4aD2ICyFq5+IEVDPUcQULHDqBoc+ytTDGLXuKyH1ikulAlHm0gE2hYDFGtN0lw0YLqIXJ5Q3BoeQ0MRUqEIXSrgmKq2qBHSsVzDJ5HcYbVTUsSYEvxLtM2WZiIOqu5m+ZcfCqbqObNFSpas2gKmeuZirR1BVhfmXVKjWIirPEsFCtuG2om0Mv5k8Lchpz4I9ADAK35nIyN3KQF+EJrzOREDsQeI8KeMfEGkFXxUf8Sk4IeYBoM9vOZlMvlGCGixKO8bSrD1MoAYKrGmGdhX6XqKBiZKfiKqKMUzABMky0lkQG/BC+7g4aDzCqVhzAqmTUvLTW4iuSVni+f+FKDXlfMpqDur3MGgRXqGyd4zKDdLFvA4YoWYC2zALPHmBCl+4OM+ILLWS5N266c9spheKFXP4lpwohgExaIljb6JYyjzhINnOM7l2JIOqX13HWl6fHHzMnIsNYaY6gtAoxRCgBVMWyiMBts/WMaUwNPIsozvy1buPRTXGpxAwhki7NQYYI2YwRwQqOqTAznvcNdZ2VUPjqFdDNEgwhtd7qBshUFRfMBD1lKdIywDxP1mFBsP7iogZtgo2xZFyXg5uFZYcRDNozUlRmrVwu3qUOV+ICgbZgw4H3Bl0vqFao8y0qoQYartj8xwqgrJZslckrkehcUP6Jj2BfY1RRGTD2qdZtO+cLRg/HxGlTDFWGs/EdCbXrUdMI4e8AO6mFGZK27Pr7lrws8j10l7KkMOvIh8IBQCoZFmsamZBR4oC4CncyuyIWCsBvK4lQACD+YxLSepi6Hqp4d3xNYBN1zDJBeFiEFtcnUaaSA2y2fMVwXLnYy4tq0/2lYNSvmOg0aJetLAvSKyFJDPk0uc8Wg0J3A6E9QTj9wubCXDLdKBdGsw3jmmLDkr1GiZxDYXaeJlLnUCjT16h1zCpVvtQx4YiZroy9NS1Ba6tKdHsi6TKOJRuNymad7f3D6AOyLysgUfc81GfMCIfNhVW85+ouyTADWfCF/ON1V1UcYKinX5ajEQKoxNN2QXkRqOuoI36gR5qJqbD1A9WjHWcRiIPMqiimDOZjttrxqDtxuYxRBmeV9wxNG1eY0ZB7BX6QQnlibEwy+XrUbd6SwCraqmL6dO0sWlq6N14lTENbujtjBm15PbERJRNPEzCrJCz/AHuVVshFGXZzzNZXswPhuD6QCpaf0myFoUM6gFX2+Q85mf8A2FhXeGo3qHkP8oeRPg5UdqHLorjMvw1cGBc5plGosGoXjOviXYXa6tXjPuIMYyFgVVa+ETkFHYattxe1yhoL+8/iYragLKZtnmWKj1V8wIPlssY0ANbMe00zOHJF3fWZdTPGZnFZuV4YfcAuouIGHJmWl6w4fcvDX+5em2m4QuAl23DUQsqbgaQ5lMEgEWEahZyvy+45lpMAFB7lKmluxNZZQFuQZUn1C+kPUX/MB4xRuhv+4iFGaKDet4hMJaQxsV9/cG8Si5THxsj82Ca8jKmhcen/AMRSdDdBbUFma9qU/wB/cRwOBQN/dXEsMGOhugi32JXQrp+X3MY022nHoqHOiIIceUOZQOgun0zEePZFcFV9kXvXkhgHueZV1sWtdQ0IwVjSOPUJuLcccscIxdMap/KVljcF/wCRHjcUQuHylL6lcZfUyeurqX4rh/wN5WwD3lUZgwoPEuFGsw7Bduoecqv3AMw9swGC20uoNgCrlprXqJdabbcMP4lVCiBQty8QsyhOmfnDNz15WEHp/hL2zEwFYVk4UL1i3b0UCSyCwsvRtfOfqbeIWMDffglOQEUvVfBGNMN+gbiS6BsjLR7puXKNwiy1r9SzwoZMSlGcQ8kq205WPzEy22/KFX3EXMifay6sigzqbF2RTen8/wBggUNcFoMfwRytxisTCe7h0IMrbXKuRL7xmNMuPXzCeiKKBWBua1Vuu2xeLuKV/bFtcFAPuBdLuGWAbvuEQYo3cOJZNS0tCfCZT0vWT9uVFdsQhhbA6gjN8ZOI0fMblelbSmq7mcpXu523mmJ2oaNLggVnbkM4jrYrRTExIuQYqFQAy4PN/wBs2k6cHzDA4ECdEIeEZmRt++Jqt4J5uJAtgowx6lUCfOpSH4BM+VZkTZ9wOwDn1AY1C3B0TNYo1EeaSmZZJHDCkrNCrr9uEAOMvEyYA4jp3tMcf5HrCFeRnf3FoK4QC634l1z5PEDnDy7lEqreYdvOa9QzFrupXRh5XuqxWoZUzFPe4jlOOLP+CKFu+iChoqsn8kAA0JGdE7gYJFpEgEvgv4IUageb8QEALvf/ACQHTQxxRRVC9TXLS1IgwmY/viDIEQwlUDdY/vxFi1+niLu0/t1AkFT9eIzgfr4h+iBUBSzKC5doFuZi9iSlVak7LZEFIaTXLZf36igJr9+I3HZ/XUqKGP11M/RUDau7b/8AKGFK2P8AwioY3f7EYYthx/1POn//2Q==" data-filename="16425967_1841753219434351_4459195754176750756_n.jpg">dadas asd asd asf</p>', '0000-00-00 00:00:00', '2017-04-17 13:21:33', 0, 1),
(19, 'aaaaa', '15542421_10207569375424826_3732113234742429599_n.jpg', '<p>dasds<br></p>', '2017-04-17 13:13:04', NULL, 1, NULL),
(20, 'asd', '15542421_10207569375424826_3732113234742429599_n.jpg', '<p><b>dsadas sad as<br></b></p>', '2017-04-17 13:13:23', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dc_user`
--

CREATE TABLE `dc_user` (
  `id` int(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `photo` text NOT NULL,
  `user_group` int(10) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `id_creator` int(10) NOT NULL,
  `id_modifier` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_user`
--

INSERT INTO `dc_user` (`id`, `username`, `password`, `email`, `first_name`, `last_name`, `photo`, `user_group`, `date_created`, `date_modified`, `id_creator`, `id_modifier`) VALUES
(1, 'admins', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'admin', 'webei', '16807164_1234243823400398_1687302977082263434_n.jpg', 1, '0000-00-00 00:00:00', '2017-04-17 00:12:22', 0, 1),
(2, 'ilhamudzakir', '81dc9bdb52d04dc20036dbd8313ed055', 'ilhamudzakir@gmail.com', 'ilham', 'mudzakir', '20161201_6435.jpg', 5, '2017-04-17 01:54:09', NULL, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dc_appearance`
--
ALTER TABLE `dc_appearance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_default`
--
ALTER TABLE `dc_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_groups`
--
ALTER TABLE `dc_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_icons`
--
ALTER TABLE `dc_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_menu`
--
ALTER TABLE `dc_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_menu_accsess`
--
ALTER TABLE `dc_menu_accsess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_news`
--
ALTER TABLE `dc_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_static_content`
--
ALTER TABLE `dc_static_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_user`
--
ALTER TABLE `dc_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dc_appearance`
--
ALTER TABLE `dc_appearance`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dc_default`
--
ALTER TABLE `dc_default`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dc_groups`
--
ALTER TABLE `dc_groups`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dc_icons`
--
ALTER TABLE `dc_icons`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `dc_menu`
--
ALTER TABLE `dc_menu`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dc_menu_accsess`
--
ALTER TABLE `dc_menu_accsess`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `dc_news`
--
ALTER TABLE `dc_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dc_static_content`
--
ALTER TABLE `dc_static_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `dc_user`
--
ALTER TABLE `dc_user`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
