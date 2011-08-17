-- phpMyAdmin SQL Dump
-- version 3.3.7deb6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2011 at 03:20 AM
-- Server version: 5.1.58
-- PHP Version: 5.3.6-6~dotdeb.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gfw_lite`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL DEFAULT '',
  `state_id` int(10) unsigned DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id` (`country_id`,`state_id`,`city_name`),
  KEY `state_id` (`state_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `state_id`, `country_id`) VALUES
(13, '', 0, 0),
(14, 'Kochi', NULL, 99),
(15, 'Kochi', 0, 0),
(16, 'cochin', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE IF NOT EXISTS `configurations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `configuration_name` varchar(255) NOT NULL,
  `page_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL,
  `configurationtype_id` int(11) NOT NULL,
  `publish` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`language_id`),
  KEY `configurationtype_id` (`configurationtype_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `configuration_name`, `page_id`, `value`, `description`, `language_id`, `configurationtype_id`, `publish`) VALUES
(1, 'g_msg_unauthorized_request ', 10, '<strong>Unauthorized Page Request</strong><br/> <br/> You are not authorized to access this page. This attempt will be reported to the system Administrator. ', 'Message for Unauthorized Page Request', 1, 3, 0),
(2, 'g_msg_unauthorized_request_redirect_page', 10, 'index.php', 'Unauthorized Page Request Delfault redirect page', 1, 6, 0),
(3, 'g_orgname', 10, 'Le Greens', 'This is Organisation Name', 1, 6, 0),
(4, 'obj_select_default_text', 10, 'Choose from list..', 'This is Select object default text', 1, 6, 0),
(5, 'g_menu_Login', 10, 'Login', '', 1, 5, 0),
(6, 'g_menu_Logout', 10, 'Logout', '', 1, 5, 0),
(7, 'g_menu_Logout_page', 10, 'logout.php', '', 1, 5, 0),
(8, 'g_menu_home', 20, 'Home', '', 1, 5, 0),
(9, 'g_menu_GFW Menu', 20, 'GFW Menu', '', 1, 5, 0),
(10, 'g_menu_user_menu', 20, 'User Menu', '', 1, 5, 0),
(11, 'g_menu_guestbook', 20, 'Guest Book', '', 1, 5, 0),
(12, 'g_menu_download', 20, 'Downloads', '', 1, 5, 0),
(13, 'g_menu_Sign Up', 20, 'Sign Up', '', 1, 5, 0),
(14, 'g_menu_Search Conf', 20, 'Search Conf', '', 1, 5, 0),
(15, 'g_menu_Publish Conf (ALL)', 20, 'Publish Conf (ALL)', '', 1, 5, 0),
(16, 'g_menu_Import Conf', 20, 'Import Conf', '', 1, 5, 0),
(17, 'g_menu_Settings', 20, 'Settings', '', 1, 5, 0),
(18, 'g_menu_Languages', 20, 'Languages', '', 1, 5, 0),
(19, 'g_menu_Add Language', 20, 'Add Language', '', 1, 5, 0),
(20, 'g_menu_Images', 20, 'Images', '', 1, 5, 0),
(21, 'g_backup', 20, 'Backup Data', '', 1, 5, 0),
(22, 'g_restore', 20, 'Restore Data', '', 1, 5, 0),
(23, 'g_menu_Profile', 20, 'Profile', '', 1, 5, 0),
(24, 'g_menu_Change Password', 20, 'Change Password', '', 1, 5, 0),
(25, 'g_menu_Add Security Question', 20, 'Add Security Question', '', 1, 5, 0),
(26, 'g_menu_Search Security Question', 20, 'Search Security Question', '', 1, 5, 0),
(27, 'g_menu_Add User', 20, 'Add User', '', 1, 5, 0),
(28, 'g_menu_User List', 20, 'User List', '', 1, 5, 0),
(29, 'download_menu_source', 20, 'Download Source', '', 1, 5, 0),
(30, 'download_menu_db', 20, 'Download DB', '', 1, 5, 0),
(31, 'guestbook_menu_admin_list_guestbooks', 20, 'List Guest Book', '', 1, 5, 0),
(32, 'index_content', 6, 'Hi <br/><br/><br />\n<br />\nThis is <A href="http://www.legreensolutions.com" target="_blank">LegreenSolutions</A> first attempt to create simple FrameWork called <strong>"Green FrameWork"</strong>. This is not a complete frame work like CAKE PHP, CI, etc... Here we try to separate presentation layer from coding, there by simplifying programmers and designers jobs. We tried to create a system which help the administrator to edit the static text, messages (both info and error) online. No need to edit the code !!!. <strong>"Green FrameWork"</strong> also support multi-language (for static text and messages only)<br/><br />\n<br />\nThis project is under testing. We would like to invite your suggestion to make this effort successful.<br/><br/><br />\n<br />\n<br />\nPlease clone Git Repository for testing<br/><br />\n---------------------------------------<br/> <br/><br />\ngit clone git://github.com/pramodgmenon/GreenFrameWork.git<br/> <br/><br />\n<br />\n<strong>Other Products used:</strong><br/> <br/><br />\n<br />\n1)&nbsp;<A href="http://gurtom.com/products/menus/js" target="_blank">Gurt JavaScript Menu</A><br/><br />\n2)&nbsp;<A href="http://tinymce.moxiecode.com" target="_blank">TinyMCE Javascript Content Editor</A><br/><br/><br/><br />\n<br />\nRegards,<br/><br />\nTeam LegreenSolutions.<br />\n', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `configurationtypes`
--

CREATE TABLE IF NOT EXISTS `configurationtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `configurationtype_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `configurationtypes`
--

INSERT INTO `configurationtypes` (`id`, `configurationtype_name`, `description`) VALUES
(1, 'Text', 'Text content- can provide link - html editor'),
(2, 'Dynamic Text', 'Text content- no html editor, no link'),
(3, 'Messages', 'Text Messages (Error, Info ...) - can have link - html editor'),
(4, 'Captions', 'Html Elements Captions - can have link - html editor'),
(5, 'Object Captions', 'HTML object caption - no html editor, no link is attaced'),
(6, 'System Conf', 'System Configuration - no link , no html editor');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(100) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `iso2` char(2) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numericcode` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_name` (`country_name`),
  UNIQUE KEY `iso2` (`iso2`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=240 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `country_name`, `iso2`, `iso3`, `numericcode`) VALUES
(1, 'AFGHANISTAN', 'Afghanistan', 'AF', 'AFG', 4),
(2, 'ALBANIA', 'Albania', 'AL', 'ALB', 8),
(3, 'ALGERIA', 'Algeria', 'DZ', 'DZA', 12),
(4, 'AMERICAN SAMOA', 'American Samoa', 'AS', 'ASM', 16),
(5, 'ANDORRA', 'Andorra', 'AD', 'AND', 20),
(6, 'ANGOLA', 'Angola', 'AO', 'AGO', 24),
(7, 'ANGUILLA', 'Anguilla', 'AI', 'AIA', 660),
(8, 'ANTARCTICA', 'Antarctica', 'AQ', NULL, NULL),
(9, 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'AG', 'ATG', 28),
(10, 'ARGENTINA', 'Argentina', 'AR', 'ARG', 32),
(11, 'ARMENIA', 'Armenia', 'AM', 'ARM', 51),
(12, 'ARUBA', 'Aruba', 'AW', 'ABW', 533),
(13, 'AUSTRALIA', 'Australia', 'AU', 'AUS', 36),
(14, 'AUSTRIA', 'Austria', 'AT', 'AUT', 40),
(15, 'AZERBAIJAN', 'Azerbaijan', 'AZ', 'AZE', 31),
(16, 'BAHAMAS', 'Bahamas', 'BS', 'BHS', 44),
(17, 'BAHRAIN', 'Bahrain', 'BH', 'BHR', 48),
(18, 'BANGLADESH', 'Bangladesh', 'BD', 'BGD', 50),
(19, 'BARBADOS', 'Barbados', 'BB', 'BRB', 52),
(20, 'BELARUS', 'Belarus', 'BY', 'BLR', 112),
(21, 'BELGIUM', 'Belgium', 'BE', 'BEL', 56),
(22, 'BELIZE', 'Belize', 'BZ', 'BLZ', 84),
(23, 'BENIN', 'Benin', 'BJ', 'BEN', 204),
(24, 'BERMUDA', 'Bermuda', 'BM', 'BMU', 60),
(25, 'BHUTAN', 'Bhutan', 'BT', 'BTN', 64),
(26, 'BOLIVIA', 'Bolivia', 'BO', 'BOL', 68),
(27, 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BA', 'BIH', 70),
(28, 'BOTSWANA', 'Botswana', 'BW', 'BWA', 72),
(29, 'BOUVET ISLAND', 'Bouvet Island', 'BV', NULL, NULL),
(30, 'BRAZIL', 'Brazil', 'BR', 'BRA', 76),
(31, 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', 'IO', NULL, NULL),
(32, 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BN', 'BRN', 96),
(33, 'BULGARIA', 'Bulgaria', 'BG', 'BGR', 100),
(34, 'BURKINA FASO', 'Burkina Faso', 'BF', 'BFA', 854),
(35, 'BURUNDI', 'Burundi', 'BI', 'BDI', 108),
(36, 'CAMBODIA', 'Cambodia', 'KH', 'KHM', 116),
(37, 'CAMEROON', 'Cameroon', 'CM', 'CMR', 120),
(38, 'CANADA', 'Canada', 'CA', 'CAN', 124),
(39, 'CAPE VERDE', 'Cape Verde', 'CV', 'CPV', 132),
(40, 'CAYMAN ISLANDS', 'Cayman Islands', 'KY', 'CYM', 136),
(41, 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CF', 'CAF', 140),
(42, 'CHAD', 'Chad', 'TD', 'TCD', 148),
(43, 'CHILE', 'Chile', 'CL', 'CHL', 152),
(44, 'CHINA', 'China', 'CN', 'CHN', 156),
(45, 'CHRISTMAS ISLAND', 'Christmas Island', 'CX', NULL, NULL),
(46, 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', 'CC', NULL, NULL),
(47, 'COLOMBIA', 'Colombia', 'CO', 'COL', 170),
(48, 'COMOROS', 'Comoros', 'KM', 'COM', 174),
(49, 'CONGO', 'Congo', 'CG', 'COG', 178),
(50, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'CD', 'COD', 180),
(51, 'COOK ISLANDS', 'Cook Islands', 'CK', 'COK', 184),
(52, 'COSTA RICA', 'Costa Rica', 'CR', 'CRI', 188),
(53, 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CI', 'CIV', 384),
(54, 'CROATIA', 'Croatia', 'HR', 'HRV', 191),
(55, 'CUBA', 'Cuba', 'CU', 'CUB', 192),
(56, 'CYPRUS', 'Cyprus', 'CY', 'CYP', 196),
(57, 'CZECH REPUBLIC', 'Czech Republic', 'CZ', 'CZE', 203),
(58, 'DENMARK', 'Denmark', 'DK', 'DNK', 208),
(59, 'DJIBOUTI', 'Djibouti', 'DJ', 'DJI', 262),
(60, 'DOMINICA', 'Dominica', 'DM', 'DMA', 212),
(61, 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DO', 'DOM', 214),
(62, 'ECUADOR', 'Ecuador', 'EC', 'ECU', 218),
(63, 'EGYPT', 'Egypt', 'EG', 'EGY', 818),
(64, 'EL SALVADOR', 'El Salvador', 'SV', 'SLV', 222),
(65, 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GQ', 'GNQ', 226),
(66, 'ERITREA', 'Eritrea', 'ER', 'ERI', 232),
(67, 'ESTONIA', 'Estonia', 'EE', 'EST', 233),
(68, 'ETHIOPIA', 'Ethiopia', 'ET', 'ETH', 231),
(69, 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FK', 'FLK', 238),
(70, 'FAROE ISLANDS', 'Faroe Islands', 'FO', 'FRO', 234),
(71, 'FIJI', 'Fiji', 'FJ', 'FJI', 242),
(72, 'FINLAND', 'Finland', 'FI', 'FIN', 246),
(73, 'FRANCE', 'France', 'FR', 'FRA', 250),
(74, 'FRENCH GUIANA', 'French Guiana', 'GF', 'GUF', 254),
(75, 'FRENCH POLYNESIA', 'French Polynesia', 'PF', 'PYF', 258),
(76, 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', 'TF', NULL, NULL),
(77, 'GABON', 'Gabon', 'GA', 'GAB', 266),
(78, 'GAMBIA', 'Gambia', 'GM', 'GMB', 270),
(79, 'GEORGIA', 'Georgia', 'GE', 'GEO', 268),
(80, 'GERMANY', 'Germany', 'DE', 'DEU', 276),
(81, 'GHANA', 'Ghana', 'GH', 'GHA', 288),
(82, 'GIBRALTAR', 'Gibraltar', 'GI', 'GIB', 292),
(83, 'GREECE', 'Greece', 'GR', 'GRC', 300),
(84, 'GREENLAND', 'Greenland', 'GL', 'GRL', 304),
(85, 'GRENADA', 'Grenada', 'GD', 'GRD', 308),
(86, 'GUADELOUPE', 'Guadeloupe', 'GP', 'GLP', 312),
(87, 'GUAM', 'Guam', 'GU', 'GUM', 316),
(88, 'GUATEMALA', 'Guatemala', 'GT', 'GTM', 320),
(89, 'GUINEA', 'Guinea', 'GN', 'GIN', 324),
(90, 'GUINEA-BISSAU', 'Guinea-Bissau', 'GW', 'GNB', 624),
(91, 'GUYANA', 'Guyana', 'GY', 'GUY', 328),
(92, 'HAITI', 'Haiti', 'HT', 'HTI', 332),
(93, 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', 'HM', NULL, NULL),
(94, 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VA', 'VAT', 336),
(95, 'HONDURAS', 'Honduras', 'HN', 'HND', 340),
(96, 'HONG KONG', 'Hong Kong', 'HK', 'HKG', 344),
(97, 'HUNGARY', 'Hungary', 'HU', 'HUN', 348),
(98, 'ICELAND', 'Iceland', 'IS', 'ISL', 352),
(99, 'INDIA', 'India', 'IN', 'IND', 356),
(100, 'INDONESIA', 'Indonesia', 'ID', 'IDN', 360),
(101, 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IR', 'IRN', 364),
(102, 'IRAQ', 'Iraq', 'IQ', 'IRQ', 368),
(103, 'IRELAND', 'Ireland', 'IE', 'IRL', 372),
(104, 'ISRAEL', 'Israel', 'IL', 'ISR', 376),
(105, 'ITALY', 'Italy', 'IT', 'ITA', 380),
(106, 'JAMAICA', 'Jamaica', 'JM', 'JAM', 388),
(107, 'JAPAN', 'Japan', 'JP', 'JPN', 392),
(108, 'JORDAN', 'Jordan', 'JO', 'JOR', 400),
(109, 'KAZAKHSTAN', 'Kazakhstan', 'KZ', 'KAZ', 398),
(110, 'KENYA', 'Kenya', 'KE', 'KEN', 404),
(111, 'KIRIBATI', 'Kiribati', 'KI', 'KIR', 296),
(112, 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'KP', 'PRK', 408),
(113, 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KR', 'KOR', 410),
(114, 'KUWAIT', 'Kuwait', 'KW', 'KWT', 414),
(115, 'KYRGYZSTAN', 'Kyrgyzstan', 'KG', 'KGZ', 417),
(116, 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LA', 'LAO', 418),
(117, 'LATVIA', 'Latvia', 'LV', 'LVA', 428),
(118, 'LEBANON', 'Lebanon', 'LB', 'LBN', 422),
(119, 'LESOTHO', 'Lesotho', 'LS', 'LSO', 426),
(120, 'LIBERIA', 'Liberia', 'LR', 'LBR', 430),
(121, 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LY', 'LBY', 434),
(122, 'LIECHTENSTEIN', 'Liechtenstein', 'LI', 'LIE', 438),
(123, 'LITHUANIA', 'Lithuania', 'LT', 'LTU', 440),
(124, 'LUXEMBOURG', 'Luxembourg', 'LU', 'LUX', 442),
(125, 'MACAO', 'Macao', 'MO', 'MAC', 446),
(126, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MK', 'MKD', 807),
(127, 'MADAGASCAR', 'Madagascar', 'MG', 'MDG', 450),
(128, 'MALAWI', 'Malawi', 'MW', 'MWI', 454),
(129, 'MALAYSIA', 'Malaysia', 'MY', 'MYS', 458),
(130, 'MALDIVES', 'Maldives', 'MV', 'MDV', 462),
(131, 'MALI', 'Mali', 'ML', 'MLI', 466),
(132, 'MALTA', 'Malta', 'MT', 'MLT', 470),
(133, 'MARSHALL ISLANDS', 'Marshall Islands', 'MH', 'MHL', 584),
(134, 'MARTINIQUE', 'Martinique', 'MQ', 'MTQ', 474),
(135, 'MAURITANIA', 'Mauritania', 'MR', 'MRT', 478),
(136, 'MAURITIUS', 'Mauritius', 'MU', 'MUS', 480),
(137, 'MAYOTTE', 'Mayotte', 'YT', NULL, NULL),
(138, 'MEXICO', 'Mexico', 'MX', 'MEX', 484),
(139, 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FM', 'FSM', 583),
(140, 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MD', 'MDA', 498),
(141, 'MONACO', 'Monaco', 'MC', 'MCO', 492),
(142, 'MONGOLIA', 'Mongolia', 'MN', 'MNG', 496),
(143, 'MONTSERRAT', 'Montserrat', 'MS', 'MSR', 500),
(144, 'MOROCCO', 'Morocco', 'MA', 'MAR', 504),
(145, 'MOZAMBIQUE', 'Mozambique', 'MZ', 'MOZ', 508),
(146, 'MYANMAR', 'Myanmar', 'MM', 'MMR', 104),
(147, 'NAMIBIA', 'Namibia', 'NA', 'NAM', 516),
(148, 'NAURU', 'Nauru', 'NR', 'NRU', 520),
(149, 'NEPAL', 'Nepal', 'NP', 'NPL', 524),
(150, 'NETHERLANDS', 'Netherlands', 'NL', 'NLD', 528),
(151, 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'AN', 'ANT', 530),
(152, 'NEW CALEDONIA', 'New Caledonia', 'NC', 'NCL', 540),
(153, 'NEW ZEALAND', 'New Zealand', 'NZ', 'NZL', 554),
(154, 'NICARAGUA', 'Nicaragua', 'NI', 'NIC', 558),
(155, 'NIGER', 'Niger', 'NE', 'NER', 562),
(156, 'NIGERIA', 'Nigeria', 'NG', 'NGA', 566),
(157, 'NIUE', 'Niue', 'NU', 'NIU', 570),
(158, 'NORFOLK ISLAND', 'Norfolk Island', 'NF', 'NFK', 574),
(159, 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MP', 'MNP', 580),
(160, 'NORWAY', 'Norway', 'NO', 'NOR', 578),
(161, 'OMAN', 'Oman', 'OM', 'OMN', 512),
(162, 'PAKISTAN', 'Pakistan', 'PK', 'PAK', 586),
(163, 'PALAU', 'Palau', 'PW', 'PLW', 585),
(164, 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', 'PS', NULL, NULL),
(165, 'PANAMA', 'Panama', 'PA', 'PAN', 591),
(166, 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PG', 'PNG', 598),
(167, 'PARAGUAY', 'Paraguay', 'PY', 'PRY', 600),
(168, 'PERU', 'Peru', 'PE', 'PER', 604),
(169, 'PHILIPPINES', 'Philippines', 'PH', 'PHL', 608),
(170, 'PITCAIRN', 'Pitcairn', 'PN', 'PCN', 612),
(171, 'POLAND', 'Poland', 'PL', 'POL', 616),
(172, 'PORTUGAL', 'Portugal', 'PT', 'PRT', 620),
(173, 'PUERTO RICO', 'Puerto Rico', 'PR', 'PRI', 630),
(174, 'QATAR', 'Qatar', 'QA', 'QAT', 634),
(175, 'REUNION', 'Reunion', 'RE', 'REU', 638),
(176, 'ROMANIA', 'Romania', 'RO', 'ROM', 642),
(177, 'RUSSIAN FEDERATION', 'Russian Federation', 'RU', 'RUS', 643),
(178, 'RWANDA', 'Rwanda', 'RW', 'RWA', 646),
(179, 'SAINT HELENA', 'Saint Helena', 'SH', 'SHN', 654),
(180, 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KN', 'KNA', 659),
(181, 'SAINT LUCIA', 'Saint Lucia', 'LC', 'LCA', 662),
(182, 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'PM', 'SPM', 666),
(183, 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VC', 'VCT', 670),
(184, 'SAMOA', 'Samoa', 'WS', 'WSM', 882),
(185, 'SAN MARINO', 'San Marino', 'SM', 'SMR', 674),
(186, 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'ST', 'STP', 678),
(187, 'SAUDI ARABIA', 'Saudi Arabia', 'SA', 'SAU', 682),
(188, 'SENEGAL', 'Senegal', 'SN', 'SEN', 686),
(189, 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', 'CS', NULL, NULL),
(190, 'SEYCHELLES', 'Seychelles', 'SC', 'SYC', 690),
(191, 'SIERRA LEONE', 'Sierra Leone', 'SL', 'SLE', 694),
(192, 'SINGAPORE', 'Singapore', 'SG', 'SGP', 702),
(193, 'SLOVAKIA', 'Slovakia', 'SK', 'SVK', 703),
(194, 'SLOVENIA', 'Slovenia', 'SI', 'SVN', 705),
(195, 'SOLOMON ISLANDS', 'Solomon Islands', 'SB', 'SLB', 90),
(196, 'SOMALIA', 'Somalia', 'SO', 'SOM', 706),
(197, 'SOUTH AFRICA', 'South Africa', 'ZA', 'ZAF', 710),
(198, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', 'GS', NULL, NULL),
(199, 'SPAIN', 'Spain', 'ES', 'ESP', 724),
(200, 'SRI LANKA', 'Sri Lanka', 'LK', 'LKA', 144),
(201, 'SUDAN', 'Sudan', 'SD', 'SDN', 736),
(202, 'SURINAME', 'Suriname', 'SR', 'SUR', 740),
(203, 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJ', 'SJM', 744),
(204, 'SWAZILAND', 'Swaziland', 'SZ', 'SWZ', 748),
(205, 'SWEDEN', 'Sweden', 'SE', 'SWE', 752),
(206, 'SWITZERLAND', 'Switzerland', 'CH', 'CHE', 756),
(207, 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SY', 'SYR', 760),
(208, 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TW', 'TWN', 158),
(209, 'TAJIKISTAN', 'Tajikistan', 'TJ', 'TJK', 762),
(210, 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZ', 'TZA', 834),
(211, 'THAILAND', 'Thailand', 'TH', 'THA', 764),
(212, 'TIMOR-LESTE', 'Timor-Leste', 'TL', NULL, NULL),
(213, 'TOGO', 'Togo', 'TG', 'TGO', 768),
(214, 'TOKELAU', 'Tokelau', 'TK', 'TKL', 772),
(215, 'TONGA', 'Tonga', 'TO', 'TON', 776),
(216, 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TT', 'TTO', 780),
(217, 'TUNISIA', 'Tunisia', 'TN', 'TUN', 788),
(218, 'TURKEY', 'Turkey', 'TR', 'TUR', 792),
(219, 'TURKMENISTAN', 'Turkmenistan', 'TM', 'TKM', 795),
(220, 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TC', 'TCA', 796),
(221, 'TUVALU', 'Tuvalu', 'TV', 'TUV', 798),
(222, 'UGANDA', 'Uganda', 'UG', 'UGA', 800),
(223, 'UKRAINE', 'Ukraine', 'UA', 'UKR', 804),
(224, 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'AE', 'ARE', 784),
(225, 'UNITED KINGDOM', 'United Kingdom', 'GB', 'GBR', 826),
(226, 'UNITED STATES', 'United States', 'US', 'USA', 840),
(227, 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', 'UM', NULL, NULL),
(228, 'URUGUAY', 'Uruguay', 'UY', 'URY', 858),
(229, 'UZBEKISTAN', 'Uzbekistan', 'UZ', 'UZB', 860),
(230, 'VANUATU', 'Vanuatu', 'VU', 'VUT', 548),
(231, 'VENEZUELA', 'Venezuela', 'VE', 'VEN', 862),
(232, 'VIET NAM', 'Viet Nam', 'VN', 'VNM', 704),
(233, 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VG', 'VGB', 92),
(234, 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VI', 'VIR', 850),
(235, 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WF', 'WLF', 876),
(236, 'WESTERN SAHARA', 'Western Sahara', 'EH', 'ESH', 732),
(237, 'YEMEN', 'Yemen', 'YE', 'YEM', 887),
(238, 'ZAMBIA', 'Zambia', 'ZM', 'ZMB', 894),
(239, 'ZIMBABWE', 'Zimbabwe', 'ZW', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(255) NOT NULL,
  `publish` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `publish`) VALUES
(1, 'English', 1),
(6, '&#2361;&#2367;&#2344;&#2381;&#2342;&#2368;', 1),
(7, 'français', 1),
(8, 'Deutsch', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentmessage_id` int(11) DEFAULT NULL,
  `fromuser_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `phone` int(11) NOT NULL DEFAULT '0',
  `emailid` text NOT NULL,
  `ipaddress` text NOT NULL,
  `touser_id` int(11) NOT NULL DEFAULT '0',
  `submit_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` text NOT NULL,
  `content` text NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `messagetype_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `messagetypes`
--

CREATE TABLE IF NOT EXISTS `messagetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messagetype_name` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `messagetypes`
--

INSERT INTO `messagetypes` (`id`, `messagetype_name`, `description`) VALUES
(1, 'Guestbook', ''),
(2, 'Messageboard', ''),
(3, 'Quickcontact', ''),
(4, 'Forum', '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`) VALUES
(1, 'gsconf_search'),
(2, 'gsconf_update'),
(3, 'gfwflash'),
(4, 'login'),
(5, 'g_confpage'),
(6, 'index'),
(7, 'profile'),
(8, 'change_passwd'),
(9, 'gsconf_settings'),
(10, 'g_pageconf'),
(11, 'get_passwd'),
(12, 'change_password'),
(13, 'securityquestion'),
(14, 'sec_que_search'),
(15, 'signup'),
(16, 'get_password'),
(17, 'language_search'),
(18, 'language'),
(19, 'gsconf_publishall'),
(20, 'g_menuconf'),
(21, 'image_upload'),
(22, 'language_import'),
(23, 'searchquestion'),
(24, 'gsconf_import'),
(25, 'restore'),
(26, 'add_user'),
(27, 'user_list'),
(28, 'download'),
(29, 'guestbook'),
(30, 'admin_list_guestbooks'),
(31, 'admin_list_guestbookst'),
(32, 'admin_view_books'),
(33, 'aboutus');

-- --------------------------------------------------------

--
-- Table structure for table `securityquestions`
--

CREATE TABLE IF NOT EXISTS `securityquestions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `securityquestions`
--

INSERT INTO `securityquestions` (`id`, `question`) VALUES
(1, 'What is your pet''s name?'),
(2, 'What is your favourite food? '),
(3, 'who is your favourite celebrity?'),
(4, 'I hate ?');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL DEFAULT '',
  `statecode` char(3) DEFAULT NULL,
  `country_id` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `state_name` (`state_name`,`country_id`),
  KEY `country_id` (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `statecode`, `country_id`) VALUES
(1, 'Alabama', 'AL', 226),
(2, 'Alaska', 'AK', 226),
(3, 'Arizona', 'AZ', 226),
(4, 'Arkansas', 'AR', 226),
(5, 'California', 'CA', 226),
(6, 'Colorado', 'CO', 226),
(7, 'Connecticut', 'CT', 226),
(8, 'Delaware', 'DE', 226),
(9, 'Florida', 'FL', 226),
(10, 'Georgia', 'GA', 226),
(11, 'Hawaii', 'HI', 226),
(12, 'Idaho', 'ID', 226),
(13, 'Illinois', 'IL', 226),
(14, 'Indiana', 'IN', 226),
(15, 'Iowa', 'IA', 226),
(16, 'Kansas', 'KS', 226),
(17, 'Kentucky', 'KY', 226),
(18, 'Louisiana', 'LA', 226),
(19, 'Maine', 'ME', 226),
(20, 'Maryland', 'MD', 226),
(21, 'Massachusetts', 'MA', 226),
(22, 'Michigan', 'MI', 226),
(23, 'Minnesota', 'MN', 226),
(24, 'Mississippi', 'MS', 226),
(25, 'Missouri', 'MO', 226),
(26, 'Montana', 'MT', 226),
(27, 'Nebraska', 'NE', 226),
(28, 'Nevada', 'NV', 226),
(29, 'New Hampshire', 'NH', 226),
(30, 'New Jersey', 'NJ', 226),
(31, 'New Mexico', 'NM', 226),
(32, 'New York', 'NY', 226),
(33, 'North Carolina', 'NC', 226),
(34, 'North Dakota', 'ND', 226),
(35, 'Ohio', 'OH', 226),
(36, 'Oklahoma', 'OK', 226),
(37, 'Oregon', 'OR', 226),
(38, 'Pennsylvania', 'PA', 226),
(39, 'Rhode Island', 'RI', 226),
(40, 'South Carolina', 'SC', 226),
(41, 'South Dakota', 'SD', 226),
(42, 'Tennessee', 'TN', 226),
(43, 'Texas', 'TX', 226),
(44, 'Utah', 'UT', 226),
(45, 'Vermont', 'VT', 226),
(46, 'Virginia', 'VA', 226),
(47, 'Washington', 'WA', 226),
(48, 'West Virginia', 'WV', 226),
(49, 'Wisconsin', 'WI', 226),
(50, 'Wyoming', 'WY', 226);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `userpassword` varchar(32) NOT NULL DEFAULT '',
  `usertype_id` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `firstname` varchar(100) NOT NULL DEFAULT '',
  `lastname` varchar(100) NOT NULL DEFAULT '',
  `emailid` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(255) DEFAULT NULL,
  `city_id` varchar(100) DEFAULT NULL,
  `state_id` int(10) unsigned DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `ipaddress` varchar(16) DEFAULT NULL,
  `registrationdate` datetime NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `userstatus_id` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `image` varchar(255) DEFAULT NULL,
  `securityquestion_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `usertype_id` (`usertype_id`),
  KEY `userstatus_id` (`userstatus_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `userpassword`, `usertype_id`, `firstname`, `lastname`, `emailid`, `address`, `city_id`, `state_id`, `country_id`, `ipaddress`, `registrationdate`, `lastlogin`, `userstatus_id`, `image`, `securityquestion_id`, `answer`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'Admin', '', '', '', '16', 0, 99, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', 1, 'neelan');

-- --------------------------------------------------------

--
-- Table structure for table `userstatuses`
--

CREATE TABLE IF NOT EXISTS `userstatuses` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `userstatus_name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userstatus_name` (`userstatus_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `userstatuses`
--

INSERT INTO `userstatuses` (`id`, `userstatus_name`, `description`) VALUES
(1, 'Active', 'Active'),
(2, 'To be activated', 'Email activation required'),
(3, 'Suspended', 'Suspended'),
(4, 'Disabled', 'Disabled');

-- --------------------------------------------------------

--
-- Table structure for table `usertypes`
--

CREATE TABLE IF NOT EXISTS `usertypes` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `usertype_name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `loggedin_page` varchar(255) NOT NULL DEFAULT 'profile.php',
  PRIMARY KEY (`id`),
  UNIQUE KEY `usertype_name` (`usertype_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `usertypes`
--

INSERT INTO `usertypes` (`id`, `usertype_name`, `description`, `loggedin_page`) VALUES
(1, 'Admin', 'Administrator', 'profile.php'),
(2, 'Employee', 'Employee', 'profile.php'),
(3, 'User', 'Registered User', 'profile.php');
