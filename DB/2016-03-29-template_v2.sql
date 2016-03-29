-- Adminer 4.2.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `AreaLayoutColumns`;
CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AreaLayoutColumns` (`arLayoutColumnID`, `arLayoutID`, `arLayoutColumnIndex`, `arID`, `arLayoutColumnDisplayID`) VALUES
(1,	1,	0,	34,	1),
(2,	1,	1,	35,	2),
(3,	2,	0,	36,	3),
(4,	2,	1,	37,	4),
(5,	3,	0,	34,	1),
(6,	3,	1,	35,	2),
(7,	4,	0,	36,	3),
(8,	4,	1,	37,	4),
(9,	5,	0,	102,	5),
(10,	5,	1,	103,	6),
(11,	6,	0,	104,	7),
(12,	6,	1,	105,	8),
(13,	7,	0,	136,	9),
(14,	7,	1,	137,	10),
(15,	8,	0,	136,	9),
(16,	8,	1,	137,	10),
(17,	9,	0,	188,	11),
(18,	9,	1,	189,	12),
(19,	10,	0,	190,	13),
(20,	10,	1,	191,	14),
(21,	11,	0,	192,	15),
(22,	11,	1,	193,	16),
(23,	12,	0,	194,	17),
(24,	12,	1,	195,	18),
(25,	12,	2,	196,	19),
(26,	13,	0,	197,	20),
(27,	13,	1,	198,	21),
(28,	14,	0,	207,	22),
(29,	14,	1,	208,	23),
(30,	15,	0,	255,	24),
(31,	15,	1,	256,	25);

DROP TABLE IF EXISTS `AreaLayoutCustomColumns`;
CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AreaLayoutCustomColumns` (`arLayoutColumnID`, `arLayoutColumnWidth`) VALUES
(1,	'240'),
(2,	'753'),
(3,	'735'),
(4,	'258'),
(5,	'200'),
(6,	'793'),
(7,	'689'),
(8,	'304'),
(9,	'723'),
(10,	'270'),
(11,	'0'),
(12,	'0'),
(13,	'719'),
(14,	'274'),
(15,	'715'),
(16,	'278'),
(17,	'183'),
(18,	'810'),
(19,	'183'),
(20,	'810'),
(21,	'183'),
(22,	'810'),
(23,	'0'),
(24,	'0'),
(25,	'0'),
(26,	'214'),
(27,	'779'),
(28,	'196'),
(29,	'797'),
(30,	'0'),
(31,	'0');

DROP TABLE IF EXISTS `AreaLayoutPresets`;
CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `AreaLayouts`;
CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AreaLayouts` (`arLayoutID`, `arLayoutSpacing`, `arLayoutIsCustom`, `arLayoutIsPreset`, `arLayoutMaxColumns`, `arLayoutUsesThemeGridFramework`) VALUES
(1,	20,	1,	0,	0,	0),
(2,	20,	1,	0,	0,	0),
(3,	20,	1,	0,	0,	0),
(4,	20,	1,	0,	0,	0),
(5,	0,	1,	0,	0,	0),
(6,	10,	0,	0,	0,	0),
(7,	10,	1,	0,	0,	0),
(8,	30,	1,	0,	0,	0),
(9,	20,	1,	0,	0,	0),
(10,	20,	1,	0,	0,	0),
(11,	20,	1,	0,	0,	0),
(12,	10,	0,	0,	0,	0),
(13,	10,	1,	0,	0,	0),
(14,	10,	1,	0,	0,	0),
(15,	10,	0,	0,	0,	0);

DROP TABLE IF EXISTS `AreaLayoutsUsingPresets`;
CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) unsigned NOT NULL,
  `preset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `AreaLayoutThemeGridColumns`;
CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `AreaPermissionAssignments`;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AreaPermissionAssignments` (`cID`, `arHandle`, `pkID`, `paID`) VALUES
(163,	'Titulo',	23,	1),
(166,	'Titulo : 5',	23,	1),
(163,	'Titulo',	24,	2),
(166,	'Titulo : 5',	24,	2),
(163,	'Titulo',	27,	105),
(163,	'Titulo',	29,	105),
(166,	'Titulo : 5',	27,	105),
(166,	'Titulo : 5',	29,	105),
(163,	'Titulo',	21,	106),
(166,	'Titulo : 5',	21,	106),
(163,	'Titulo',	25,	122),
(166,	'Titulo : 5',	25,	122),
(163,	'Titulo',	22,	123),
(166,	'Titulo : 5',	22,	123),
(163,	'Titulo',	26,	124),
(166,	'Titulo : 5',	26,	124),
(163,	'Titulo',	28,	125),
(166,	'Titulo : 5',	28,	125);

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Areas`;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`, `arParentID`) VALUES
(1,	127,	'Main',	0,	0,	0,	0),
(2,	128,	'Primary',	0,	0,	0,	0),
(3,	128,	'Secondary 1',	0,	0,	0,	0),
(4,	128,	'Secondary 2',	0,	0,	0,	0),
(5,	128,	'Secondary 3',	0,	0,	0,	0),
(6,	128,	'Secondary 4',	0,	0,	0,	0),
(7,	128,	'Secondary 5',	0,	0,	0,	0),
(8,	145,	'Main',	0,	0,	0,	0),
(9,	146,	'Main',	0,	0,	0,	0),
(10,	1,	'Header Site Title',	0,	0,	1,	0),
(11,	147,	'Main',	0,	0,	0,	0),
(12,	1,	'Header Navigation',	0,	0,	1,	0),
(13,	1,	'Main',	0,	0,	0,	0),
(14,	1,	'Page Footer',	0,	0,	0,	0),
(15,	148,	'Main',	0,	0,	0,	0),
(16,	1,	'Footer Legal',	0,	0,	1,	0),
(17,	149,	'Main',	0,	0,	0,	0),
(18,	1,	'Footer Navigation',	0,	0,	1,	0),
(19,	150,	'Main',	0,	0,	0,	0),
(20,	1,	'Footer Contact',	0,	0,	1,	0),
(21,	154,	'Header Site Title',	0,	0,	1,	0),
(22,	155,	'Main',	0,	0,	0,	0),
(23,	154,	'Search',	0,	0,	1,	0),
(24,	154,	'Header Navigation',	0,	0,	1,	0),
(25,	154,	'Titulo',	0,	0,	0,	0),
(26,	154,	'Contenido',	0,	0,	0,	0),
(27,	154,	'Footer Contact',	0,	0,	1,	0),
(28,	154,	'Footer Navigation',	0,	0,	1,	0),
(29,	154,	'Footer Legal',	0,	0,	1,	0),
(30,	1,	'Search',	0,	0,	1,	0),
(31,	1,	'Slider',	0,	0,	0,	0),
(32,	1,	'Contenido A',	0,	0,	0,	0),
(33,	1,	'Contenido B',	0,	0,	0,	0),
(34,	1,	'Slider : 1',	0,	0,	0,	31),
(35,	1,	'Slider : 2',	0,	0,	0,	31),
(36,	1,	'Contenido A : 3',	0,	0,	0,	32),
(37,	1,	'Contenido A : 4',	0,	0,	0,	32),
(38,	156,	'Header Site Title',	0,	0,	1,	0),
(39,	156,	'Search',	0,	0,	1,	0),
(40,	156,	'Header Navigation',	0,	0,	1,	0),
(41,	156,	'Titulo',	0,	0,	0,	0),
(42,	156,	'Contenido',	0,	0,	0,	0),
(43,	156,	'Footer Contact',	0,	0,	1,	0),
(44,	156,	'Footer Navigation',	0,	0,	1,	0),
(45,	156,	'Footer Legal',	0,	0,	1,	0),
(46,	157,	'Header Site Title',	0,	0,	1,	0),
(47,	157,	'Search',	0,	0,	1,	0),
(48,	157,	'Header Navigation',	0,	0,	1,	0),
(49,	157,	'Titulo',	0,	0,	0,	0),
(50,	157,	'Contenido',	0,	0,	0,	0),
(51,	157,	'Footer Contact',	0,	0,	1,	0),
(52,	157,	'Footer Navigation',	0,	0,	1,	0),
(53,	157,	'Footer Legal',	0,	0,	1,	0),
(54,	158,	'Header Site Title',	0,	0,	1,	0),
(55,	158,	'Search',	0,	0,	1,	0),
(56,	158,	'Header Navigation',	0,	0,	1,	0),
(57,	158,	'Titulo',	0,	0,	0,	0),
(58,	158,	'Contenido',	0,	0,	0,	0),
(59,	158,	'Footer Contact',	0,	0,	1,	0),
(60,	158,	'Footer Navigation',	0,	0,	1,	0),
(61,	158,	'Footer Legal',	0,	0,	1,	0),
(78,	161,	'Header Site Title',	0,	0,	1,	0),
(79,	161,	'Search',	0,	0,	1,	0),
(80,	161,	'Header Navigation',	0,	0,	1,	0),
(81,	161,	'Titulo',	0,	0,	0,	0),
(82,	161,	'Contenido',	0,	0,	0,	0),
(83,	161,	'Footer Contact',	0,	0,	1,	0),
(84,	161,	'Footer Navigation',	0,	0,	1,	0),
(85,	161,	'Footer Legal',	0,	0,	1,	0),
(86,	162,	'Header Site Title',	0,	0,	1,	0),
(87,	162,	'Search',	0,	0,	1,	0),
(88,	162,	'Header Navigation',	0,	0,	1,	0),
(89,	162,	'Titulo',	0,	0,	0,	0),
(90,	162,	'Contenido',	0,	0,	0,	0),
(91,	162,	'Footer Contact',	0,	0,	1,	0),
(92,	162,	'Footer Navigation',	0,	0,	1,	0),
(93,	162,	'Footer Legal',	0,	0,	1,	0),
(94,	163,	'Header Site Title',	0,	0,	1,	0),
(95,	163,	'Search',	0,	0,	1,	0),
(96,	163,	'Header Navigation',	0,	0,	1,	0),
(97,	163,	'Titulo',	1,	0,	0,	0),
(98,	163,	'Contenido',	0,	0,	0,	0),
(99,	163,	'Footer Contact',	0,	0,	1,	0),
(100,	163,	'Footer Navigation',	0,	0,	1,	0),
(101,	163,	'Footer Legal',	0,	0,	1,	0),
(102,	163,	'Titulo : 5',	0,	0,	0,	97),
(103,	163,	'Titulo : 6',	0,	0,	0,	97),
(104,	162,	'Contenido : 7',	0,	0,	0,	90),
(105,	162,	'Contenido : 8',	0,	0,	0,	90),
(136,	158,	'Contenido : 9',	0,	0,	0,	58),
(137,	158,	'Contenido : 10',	0,	0,	0,	58),
(148,	168,	'Header Site Title',	0,	0,	1,	0),
(149,	168,	'Search',	0,	0,	1,	0),
(150,	168,	'Header Navigation',	0,	0,	1,	0),
(151,	168,	'Titulo',	0,	0,	0,	0),
(152,	168,	'Contenido',	0,	0,	0,	0),
(153,	168,	'Footer Contact',	0,	0,	1,	0),
(154,	168,	'Footer Navigation',	0,	0,	1,	0),
(155,	168,	'Footer Legal',	0,	0,	1,	0),
(156,	169,	'Titulo',	0,	0,	0,	0),
(157,	169,	'Header Site Title',	0,	0,	1,	0),
(158,	169,	'Search',	0,	0,	1,	0),
(159,	169,	'Header Navigation',	0,	0,	1,	0),
(160,	169,	'Contenido',	0,	0,	0,	0),
(161,	169,	'Footer Contact',	0,	0,	1,	0),
(162,	169,	'Footer Navigation',	0,	0,	1,	0),
(163,	169,	'Footer Legal',	0,	0,	1,	0),
(164,	177,	'Header Site Title',	0,	0,	1,	0),
(165,	177,	'Search',	0,	0,	1,	0),
(166,	177,	'Header Navigation',	0,	0,	1,	0),
(167,	177,	'Titulo',	0,	0,	0,	0),
(168,	177,	'Contenido',	0,	0,	0,	0),
(169,	177,	'Footer Contact',	0,	0,	1,	0),
(170,	177,	'Footer Navigation',	0,	0,	1,	0),
(171,	177,	'Footer Legal',	0,	0,	1,	0),
(172,	178,	'Header Site Title',	0,	0,	1,	0),
(173,	178,	'Search',	0,	0,	1,	0),
(174,	178,	'Header Navigation',	0,	0,	1,	0),
(175,	178,	'Titulo',	0,	0,	0,	0),
(176,	178,	'Contenido',	0,	0,	0,	0),
(177,	178,	'Footer Contact',	0,	0,	1,	0),
(178,	178,	'Footer Navigation',	0,	0,	1,	0),
(179,	178,	'Footer Legal',	0,	0,	1,	0),
(180,	179,	'Header Site Title',	0,	0,	1,	0),
(181,	179,	'Search',	0,	0,	1,	0),
(182,	179,	'Header Navigation',	0,	0,	1,	0),
(183,	179,	'Titulo',	0,	0,	0,	0),
(184,	179,	'Contenido',	0,	0,	0,	0),
(185,	179,	'Footer Contact',	0,	0,	1,	0),
(186,	179,	'Footer Navigation',	0,	0,	1,	0),
(187,	179,	'Footer Legal',	0,	0,	1,	0),
(188,	157,	'Contenido : 11',	0,	0,	0,	50),
(189,	157,	'Contenido : 12',	0,	0,	0,	50),
(190,	178,	'Contenido : 13',	0,	0,	0,	176),
(191,	178,	'Contenido : 14',	0,	0,	0,	176),
(192,	179,	'Contenido : 15',	0,	0,	0,	184),
(193,	179,	'Contenido : 16',	0,	0,	0,	184),
(194,	157,	'Contenido : 12 : 17',	0,	0,	0,	189),
(195,	157,	'Contenido : 12 : 18',	0,	0,	0,	189),
(196,	157,	'Contenido : 12 : 19',	0,	0,	0,	189),
(197,	156,	'Contenido : 20',	0,	0,	0,	42),
(198,	156,	'Contenido : 21',	0,	0,	0,	42),
(199,	180,	'Header Site Title',	0,	0,	1,	0),
(200,	180,	'Search',	0,	0,	1,	0),
(201,	180,	'Header Navigation',	0,	0,	1,	0),
(202,	180,	'Titulo',	0,	0,	0,	0),
(203,	180,	'Contenido',	0,	0,	0,	0),
(204,	180,	'Footer Contact',	0,	0,	1,	0),
(205,	180,	'Footer Navigation',	0,	0,	1,	0),
(206,	180,	'Footer Legal',	0,	0,	1,	0),
(207,	180,	'Contenido : 22',	0,	0,	0,	203),
(208,	180,	'Contenido : 23',	0,	0,	0,	203),
(209,	181,	'Header Site Title',	0,	0,	1,	0),
(210,	181,	'Search',	0,	0,	1,	0),
(211,	181,	'Header Navigation',	0,	0,	1,	0),
(212,	181,	'Titulo',	0,	0,	0,	0),
(213,	181,	'Contenido',	0,	0,	0,	0),
(214,	181,	'Footer Contact',	0,	0,	1,	0),
(215,	181,	'Footer Navigation',	0,	0,	1,	0),
(216,	181,	'Footer Legal',	0,	0,	1,	0),
(217,	142,	'Main',	0,	0,	0,	0),
(227,	185,	'Header Site Title',	0,	0,	1,	0),
(228,	185,	'Search',	0,	0,	1,	0),
(229,	185,	'Header Navigation',	0,	0,	1,	0),
(230,	185,	'Titulo',	0,	0,	0,	0),
(231,	185,	'Contenido',	0,	0,	0,	0),
(232,	185,	'Footer Contact',	0,	0,	1,	0),
(233,	185,	'Footer Navigation',	0,	0,	1,	0),
(234,	185,	'Footer Legal',	0,	0,	1,	0),
(255,	163,	'Contenido : 24',	0,	0,	0,	98),
(256,	163,	'Contenido : 25',	0,	0,	0,	98),
(257,	188,	'Contenido',	0,	0,	0,	0),
(258,	188,	'Header Site Title',	0,	0,	1,	0),
(259,	188,	'Search',	0,	0,	1,	0),
(260,	188,	'Header Navigation',	0,	0,	1,	0),
(261,	188,	'Titulo',	0,	163,	0,	0),
(262,	188,	'Titulo : 5',	0,	0,	0,	261),
(263,	188,	'Titulo : 6',	0,	0,	0,	261),
(264,	188,	'Contenido : 24',	0,	0,	0,	257),
(265,	188,	'Contenido : 25',	0,	0,	0,	257),
(266,	188,	'Footer Contact',	0,	0,	1,	0),
(267,	188,	'Footer Navigation',	0,	0,	1,	0),
(268,	188,	'Footer Legal',	0,	0,	1,	0),
(269,	189,	'Contenido',	0,	0,	0,	0),
(270,	189,	'Header Site Title',	0,	0,	1,	0),
(271,	189,	'Search',	0,	0,	1,	0),
(272,	189,	'Header Navigation',	0,	0,	1,	0),
(273,	189,	'Titulo',	0,	163,	0,	0),
(274,	189,	'Titulo : 5',	0,	0,	0,	273),
(275,	189,	'Titulo : 6',	0,	0,	0,	273),
(276,	189,	'Contenido : 24',	0,	0,	0,	269),
(277,	189,	'Contenido : 25',	0,	0,	0,	269),
(278,	189,	'Footer Contact',	0,	0,	1,	0),
(279,	189,	'Footer Navigation',	0,	0,	1,	0),
(280,	189,	'Footer Legal',	0,	0,	1,	0),
(281,	190,	'Contenido',	0,	0,	0,	0),
(282,	190,	'Header Site Title',	0,	0,	1,	0),
(283,	190,	'Search',	0,	0,	1,	0),
(284,	190,	'Header Navigation',	0,	0,	1,	0),
(285,	190,	'Titulo',	0,	163,	0,	0),
(286,	190,	'Titulo : 5',	0,	0,	0,	285),
(287,	190,	'Titulo : 6',	0,	0,	0,	285),
(288,	190,	'Contenido : 24',	0,	0,	0,	281),
(289,	190,	'Contenido : 25',	0,	0,	0,	281),
(290,	190,	'Footer Contact',	0,	0,	1,	0),
(291,	190,	'Footer Navigation',	0,	0,	1,	0),
(292,	190,	'Footer Legal',	0,	0,	1,	0);

DROP TABLE IF EXISTS `atAddress`;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atAddressCustomCountries`;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atAddressSettings`;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` tinyint(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atBoolean`;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atBoolean` (`avID`, `value`) VALUES
(9,	1),
(16,	1),
(18,	1),
(28,	1),
(29,	1),
(30,	1),
(31,	1),
(32,	1),
(33,	1),
(34,	1),
(35,	1),
(42,	1),
(43,	1),
(47,	1),
(51,	1),
(99,	1),
(107,	1),
(108,	1),
(109,	1),
(145,	0),
(153,	0),
(157,	0),
(161,	0),
(167,	0),
(169,	0),
(172,	0),
(173,	0),
(174,	0),
(175,	0),
(176,	0),
(177,	0),
(178,	0),
(182,	0),
(186,	0),
(190,	0),
(194,	0),
(199,	0),
(200,	1),
(201,	1),
(202,	1),
(203,	1),
(204,	1),
(231,	1),
(235,	0),
(236,	0),
(237,	0),
(238,	0),
(241,	0),
(244,	1);

DROP TABLE IF EXISTS `atBooleanSettings`;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atBooleanSettings` (`akID`, `akCheckedByDefault`) VALUES
(5,	0),
(6,	0),
(9,	0),
(10,	0),
(11,	0),
(12,	1),
(13,	1);

DROP TABLE IF EXISTS `atDateTime`;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atDateTimeSettings`;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atDefault`;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atDefault` (`avID`, `value`) VALUES
(1,	'fa fa-th-large'),
(2,	'pages, add page, delete page, copy, move, alias'),
(3,	'pages, add page, delete page, copy, move, alias'),
(4,	'pages, add page, delete page, copy, move, alias, bulk'),
(5,	'find page, search page, search, find, pages, sitemap'),
(6,	'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
(7,	'file, file attributes, title, attribute, description, rename'),
(8,	'files, category, categories'),
(10,	'new file set'),
(11,	'users, groups, people, find, delete user, remove user, change password, password'),
(12,	'find, search, people, delete user, remove user, change password, password'),
(13,	'user, group, people, permissions, expire, badges'),
(14,	'user attributes, user data, gather data, registration data'),
(15,	'new user, create'),
(17,	'new user group, new group, group, create'),
(19,	'group set'),
(20,	'community, points, karma'),
(21,	'action, community actions'),
(22,	'forms, log, error, email, mysql, exception, survey'),
(23,	'forms, questions, response, data'),
(24,	'questions, quiz, response'),
(25,	'forms, log, error, email, mysql, exception, survey, history'),
(26,	'new theme, theme, active theme, change theme, template, css'),
(27,	'page types'),
(36,	'page attributes, custom'),
(37,	'single, page, custom, application'),
(38,	'atom, rss, feed, syndication'),
(39,	'icon-bullhorn'),
(40,	'add workflow, remove workflow'),
(41,	'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
(44,	'edit stacks, view stacks, all stacks'),
(45,	'block, refresh, custom'),
(46,	'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks'),
(48,	'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
(49,	'update, upgrade'),
(50,	'concrete5.org, my account, marketplace'),
(52,	'buy theme, new theme, marketplace, template'),
(53,	'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
(54,	'dashboard, configuration'),
(55,	'website name, title'),
(56,	'accessibility, easy mode'),
(57,	'sharing, facebook, twitter'),
(58,	'logo, favicon, iphone, icon, bookmark'),
(59,	'tinymce, content block, fonts, editor, content, overlay'),
(60,	'translate, translation, internationalization, multilingual'),
(61,	'timezone, profile, locale'),
(62,	'multilingual, localization, internationalization, i18n'),
(63,	'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view'),
(64,	'bulk, seo, change keywords, engine, optimization, search'),
(65,	'traffic, statistics, google analytics, quant, pageviews, hits'),
(66,	'pretty, slug'),
(67,	'configure search, site search, search option'),
(68,	'file options, file manager, upload, modify'),
(69,	'security, files, media, extension, manager, upload'),
(70,	'images, picture, responsive, retina'),
(71,	'uploading, upload, images, image, resizing, manager'),
(72,	'security, alternate storage, hide files'),
(73,	'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
(74,	'cache option, turn off cache, no cache, page cache, caching'),
(75,	'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
(76,	'queries, database, mysql'),
(77,	'editors, hide site, offline, private, public, access'),
(78,	'security, actions, administrator, admin, package, marketplace, search'),
(79,	'security, lock ip, lock out, block ip, address, restrict, access'),
(80,	'security, registration'),
(81,	'antispam, block spam, security'),
(82,	'lock site, under construction, hide, hidden'),
(83,	'profile, login, redirect, specific, dashboard, administrators'),
(84,	'member profile, member page, community, forums, social, avatar'),
(85,	'signup, new user, community, public registration, public, registration'),
(86,	'auth, authentication, types, oauth, facebook, login, registration'),
(87,	'smtp, mail settings'),
(88,	'email server, mail settings, mail configuration, external, internal'),
(89,	'test smtp, test mail'),
(90,	'email server, mail settings, mail configuration, private message, message system, import, email, message'),
(91,	'conversations'),
(92,	'conversations'),
(93,	'conversations ratings, ratings, community, community points'),
(94,	'conversations bad words, banned words, banned, bad words, bad, words, list'),
(95,	'attribute configuration'),
(96,	'attributes, sets'),
(97,	'attributes, types'),
(98,	'topics, tags, taxonomy'),
(100,	'overrides, system info, debug, support, help'),
(101,	'errors, exceptions, develop, support, help'),
(102,	'email, logging, logs, smtp, pop, errors, mysql, log'),
(103,	'network, proxy server'),
(104,	'database, entities, doctrine, orm'),
(105,	'export, backup, database, sql, mysql, encryption, restore'),
(106,	'upgrade, new version, update'),
(110,	'fa fa-edit'),
(111,	'fa fa-trash-o'),
(112,	'fa fa-th'),
(113,	'fa fa-briefcase'),
(142,	''),
(143,	''),
(144,	''),
(150,	''),
(151,	''),
(152,	''),
(154,	'Template SENATICs'),
(155,	''),
(156,	''),
(158,	'Template SENATICs'),
(159,	''),
(160,	''),
(164,	'Template SENATICs'),
(165,	''),
(166,	''),
(179,	'Template SENATICs'),
(180,	''),
(181,	''),
(183,	'Template SENATICs'),
(184,	''),
(185,	''),
(187,	'Template SENATICs'),
(188,	''),
(189,	''),
(191,	'Template SENATICs'),
(192,	''),
(193,	''),
(196,	'Template SENATICs'),
(197,	''),
(198,	'');

DROP TABLE IF EXISTS `atFile`;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atFile` (`avID`, `fID`) VALUES
(209,	0),
(245,	0),
(246,	0),
(278,	0),
(211,	2),
(222,	2),
(213,	3),
(217,	3),
(219,	3),
(232,	3),
(284,	3),
(287,	3),
(215,	5),
(228,	5),
(207,	6),
(225,	6),
(251,	15),
(281,	15),
(249,	16),
(250,	16),
(254,	16),
(258,	16),
(263,	16),
(266,	16),
(269,	16),
(272,	16),
(275,	16),
(168,	17),
(195,	18);

DROP TABLE IF EXISTS `atNumber`;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atNumber` (`avID`, `value`) VALUES
(114,	400.0000),
(115,	140.0000),
(116,	1000.0000),
(117,	672.0000),
(118,	1000.0000),
(119,	672.0000),
(120,	2072.0000),
(121,	1242.0000),
(122,	1000.0000),
(123,	672.0000),
(124,	1000.0000),
(125,	672.0000),
(126,	244.0000),
(127,	95.0000),
(128,	1027.0000),
(129,	710.0000),
(130,	244.0000),
(131,	95.0000),
(132,	700.0000),
(133,	175.0000),
(134,	300.0000),
(135,	150.0000),
(136,	300.0000),
(137,	150.0000),
(138,	300.0000),
(139,	150.0000),
(140,	300.0000),
(141,	150.0000),
(146,	1000.0000),
(147,	450.0000),
(148,	1000.0000),
(149,	450.0000),
(162,	100.0000),
(163,	100.0000),
(170,	100.0000),
(171,	100.0000),
(205,	700.0000),
(206,	150.0000),
(239,	512.0000),
(240,	512.0000),
(242,	300.0000),
(243,	64.0000);

DROP TABLE IF EXISTS `atSelectedTopics`;
CREATE TABLE `atSelectedTopics` (
  `avID` int(10) unsigned NOT NULL,
  `TopicNodeID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`TopicNodeID`),
  KEY `TopicNodeID` (`TopicNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atSelectedTopics` (`avID`, `TopicNodeID`) VALUES
(220,	7),
(226,	7),
(229,	7),
(233,	7),
(252,	7),
(267,	7),
(276,	7),
(279,	7),
(282,	7),
(285,	7),
(288,	7),
(223,	8),
(259,	8),
(270,	8),
(273,	8),
(223,	9),
(226,	9),
(255,	9),
(259,	9),
(270,	9),
(273,	9);

DROP TABLE IF EXISTS `atSelectOptions`;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `akID` (`akID`,`displayOrder`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atSelectOptions` (`ID`, `akID`, `value`, `displayOrder`, `isEndUserAdded`) VALUES
(7,	8,	'smartphone',	0,	1),
(8,	8,	'TICs',	1,	1),
(9,	8,	'Gobierno Electrónico',	2,	1),
(10,	8,	'Tecnología',	3,	1);

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`),
  KEY `atSelectOptionID` (`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atSelectOptionsSelected` (`avID`, `atSelectOptionID`) VALUES
(268,	7),
(277,	7),
(280,	8),
(283,	8),
(286,	8),
(289,	8),
(280,	9),
(283,	9),
(286,	9),
(289,	9),
(280,	10),
(283,	10),
(286,	10),
(289,	10);

DROP TABLE IF EXISTS `atSelectSettings`;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atSelectSettings` (`akID`, `akSelectAllowMultipleValues`, `akSelectOptionDisplayOrder`, `akSelectAllowOtherValues`) VALUES
(8,	1,	'display_asc',	1);

DROP TABLE IF EXISTS `atSocialLinks`;
CREATE TABLE `atSocialLinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `avID` (`avID`,`avsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atTextareaSettings`;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akTextareaDisplayModeCustomOptions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atTextareaSettings` (`akID`, `akTextareaDisplayMode`, `akTextareaDisplayModeCustomOptions`) VALUES
(2,	'',	''),
(3,	'',	''),
(4,	'',	''),
(7,	'',	'');

DROP TABLE IF EXISTS `atTopicSettings`;
CREATE TABLE `atTopicSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTopicParentNodeID` int(11) DEFAULT NULL,
  `akTopicTreeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`akID`),
  KEY `akTopicTreeID` (`akTopicTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atTopicSettings` (`akID`, `akTopicParentNodeID`, `akTopicTreeID`) VALUES
(20,	6,	2);

DROP TABLE IF EXISTS `AttributeKeyCategories`;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` smallint(6) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  KEY `pkgID` (`pkgID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeKeyCategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1,	'collection',	1,	NULL),
(2,	'user',	1,	NULL),
(3,	'file',	1,	NULL);

DROP TABLE IF EXISTS `AttributeKeys`;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`),
  KEY `atID` (`atID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeKeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
(1,	'meta_title',	'Meta Title',	1,	1,	1,	0,	0,	1,	1,	1,	0),
(2,	'meta_description',	'Meta Description',	1,	1,	1,	0,	0,	1,	2,	1,	0),
(3,	'meta_keywords',	'Meta Keywords',	1,	1,	1,	0,	0,	1,	2,	1,	0),
(4,	'icon_dashboard',	'Dashboard Icon',	0,	0,	1,	1,	0,	1,	2,	1,	0),
(5,	'exclude_nav',	'Exclude From Nav',	1,	1,	1,	0,	0,	1,	3,	1,	0),
(6,	'exclude_page_list',	'Exclude From Page List',	1,	1,	1,	0,	0,	1,	3,	1,	0),
(7,	'header_extra_content',	'Header Extra Content',	1,	1,	1,	0,	0,	1,	2,	1,	0),
(8,	'tags',	'Tags',	1,	1,	1,	0,	0,	1,	8,	1,	0),
(9,	'is_featured',	'Is Featured',	1,	0,	1,	0,	0,	1,	3,	1,	0),
(10,	'exclude_search_index',	'Exclude From Search Index',	1,	1,	1,	0,	0,	1,	3,	1,	0),
(11,	'exclude_sitemapxml',	'Exclude From sitemap.xml',	1,	1,	1,	0,	0,	1,	3,	1,	0),
(12,	'profile_private_messages_enabled',	'I would like to receive private messages.',	1,	0,	0,	0,	0,	1,	3,	2,	0),
(13,	'profile_private_messages_notification_enabled',	'Send me email notifications when I receive a private message.',	1,	0,	0,	0,	0,	1,	3,	2,	0),
(14,	'width',	'Width',	1,	1,	1,	0,	0,	1,	6,	3,	0),
(15,	'height',	'Height',	1,	1,	1,	0,	0,	1,	6,	3,	0),
(16,	'account_profile_links',	'Personal Links',	0,	0,	0,	0,	0,	1,	11,	2,	0),
(17,	'duration',	'Duration',	1,	1,	1,	0,	0,	1,	6,	3,	0),
(18,	'icon',	'Icono',	1,	1,	0,	0,	0,	1,	5,	1,	0),
(19,	'thumbnail',	'Imagen en miniatura',	1,	0,	0,	0,	0,	1,	5,	1,	0),
(20,	'temas',	'Categoria',	1,	1,	0,	0,	0,	1,	10,	1,	0);

DROP TABLE IF EXISTS `AttributeSetKeys`;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`),
  KEY `asID` (`asID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeSetKeys` (`akID`, `asID`, `displayOrder`) VALUES
(1,	1,	1),
(2,	1,	2),
(7,	1,	3),
(11,	1,	4),
(9,	2,	1),
(5,	2,	2),
(6,	2,	3),
(10,	2,	4),
(8,	2,	5),
(18,	2,	6),
(20,	2,	7);

DROP TABLE IF EXISTS `AttributeSets`;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` tinyint(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `asHandle` (`asHandle`),
  KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`),
  KEY `pkgID` (`pkgID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeSets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
(1,	'SEO',	'seo',	1,	0,	0,	0),
(2,	'Navigation and Indexing',	'navigation',	1,	0,	0,	1);

DROP TABLE IF EXISTS `AttributeTypeCategories`;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeTypeCategories` (`atID`, `akCategoryID`) VALUES
(1,	1),
(2,	1),
(3,	1),
(4,	1),
(5,	1),
(6,	1),
(7,	1),
(8,	1),
(10,	1),
(1,	2),
(2,	2),
(3,	2),
(4,	2),
(6,	2),
(8,	2),
(9,	2),
(10,	2),
(11,	2),
(1,	3),
(2,	3),
(3,	3),
(4,	3),
(6,	3),
(7,	3),
(8,	3),
(10,	3);

DROP TABLE IF EXISTS `AttributeTypes`;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `atHandle` (`atHandle`),
  KEY `pkgID` (`pkgID`,`atID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeTypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1,	'text',	'Text',	0),
(2,	'textarea',	'Text Area',	0),
(3,	'boolean',	'Checkbox',	0),
(4,	'date_time',	'Date/Time',	0),
(5,	'image_file',	'Image/File',	0),
(6,	'number',	'Number',	0),
(7,	'rating',	'Rating',	0),
(8,	'select',	'Select',	0),
(9,	'address',	'Address',	0),
(10,	'topics',	'Topics',	0),
(11,	'social_links',	'Social Links',	0);

DROP TABLE IF EXISTS `AttributeValues`;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `akID` (`akID`),
  KEY `uID` (`uID`),
  KEY `atID` (`atID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeValues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1,	4,	'2016-02-18 13:34:37',	1,	2),
(2,	3,	'2016-02-18 13:34:37',	1,	2),
(3,	3,	'2016-02-18 13:34:37',	1,	2),
(4,	3,	'2016-02-18 13:34:38',	1,	2),
(5,	3,	'2016-02-18 13:34:38',	1,	2),
(6,	3,	'2016-02-18 13:34:38',	1,	2),
(7,	3,	'2016-02-18 13:34:38',	1,	2),
(8,	3,	'2016-02-18 13:34:38',	1,	2),
(9,	5,	'2016-02-18 13:34:38',	1,	3),
(10,	3,	'2016-02-18 13:34:38',	1,	2),
(11,	3,	'2016-02-18 13:34:39',	1,	2),
(12,	3,	'2016-02-18 13:34:39',	1,	2),
(13,	3,	'2016-02-18 13:34:39',	1,	2),
(14,	3,	'2016-02-18 13:34:39',	1,	2),
(15,	3,	'2016-02-18 13:34:39',	1,	2),
(16,	5,	'2016-02-18 13:34:39',	1,	3),
(17,	3,	'2016-02-18 13:34:39',	1,	2),
(18,	5,	'2016-02-18 13:34:40',	1,	3),
(19,	3,	'2016-02-18 13:34:40',	1,	2),
(20,	3,	'2016-02-18 13:34:40',	1,	2),
(21,	3,	'2016-02-18 13:34:40',	1,	2),
(22,	3,	'2016-02-18 13:34:40',	1,	2),
(23,	3,	'2016-02-18 13:34:40',	1,	2),
(24,	3,	'2016-02-18 13:34:40',	1,	2),
(25,	3,	'2016-02-18 13:34:40',	1,	2),
(26,	3,	'2016-02-18 13:34:41',	1,	2),
(27,	3,	'2016-02-18 13:34:41',	1,	2),
(28,	5,	'2016-02-18 13:34:41',	1,	3),
(29,	5,	'2016-02-18 13:34:41',	1,	3),
(30,	5,	'2016-02-18 13:34:41',	1,	3),
(31,	5,	'2016-02-18 13:34:41',	1,	3),
(32,	5,	'2016-02-18 13:34:41',	1,	3),
(33,	5,	'2016-02-18 13:34:41',	1,	3),
(34,	5,	'2016-02-18 13:34:41',	1,	3),
(35,	5,	'2016-02-18 13:34:42',	1,	3),
(36,	3,	'2016-02-18 13:34:42',	1,	2),
(37,	3,	'2016-02-18 13:34:42',	1,	2),
(38,	3,	'2016-02-18 13:34:42',	1,	2),
(39,	4,	'2016-02-18 13:34:42',	1,	2),
(40,	3,	'2016-02-18 13:34:42',	1,	2),
(41,	3,	'2016-02-18 13:34:42',	1,	2),
(42,	5,	'2016-02-18 13:34:42',	1,	3),
(43,	10,	'2016-02-18 13:34:43',	1,	3),
(44,	3,	'2016-02-18 13:34:43',	1,	2),
(45,	3,	'2016-02-18 13:34:43',	1,	2),
(46,	3,	'2016-02-18 13:34:43',	1,	2),
(47,	5,	'2016-02-18 13:34:44',	1,	3),
(48,	3,	'2016-02-18 13:34:44',	1,	2),
(49,	3,	'2016-02-18 13:34:44',	1,	2),
(50,	3,	'2016-02-18 13:34:44',	1,	2),
(51,	5,	'2016-02-18 13:34:44',	1,	3),
(52,	3,	'2016-02-18 13:34:44',	1,	2),
(53,	3,	'2016-02-18 13:34:45',	1,	2),
(54,	3,	'2016-02-18 13:34:45',	1,	2),
(55,	3,	'2016-02-18 13:34:45',	1,	2),
(56,	3,	'2016-02-18 13:34:45',	1,	2),
(57,	3,	'2016-02-18 13:34:45',	1,	2),
(58,	3,	'2016-02-18 13:34:45',	1,	2),
(59,	3,	'2016-02-18 13:34:45',	1,	2),
(60,	3,	'2016-02-18 13:34:45',	1,	2),
(61,	3,	'2016-02-18 13:34:46',	1,	2),
(62,	3,	'2016-02-18 13:34:46',	1,	2),
(63,	3,	'2016-02-18 13:34:46',	1,	2),
(64,	3,	'2016-02-18 13:34:46',	1,	2),
(65,	3,	'2016-02-18 13:34:46',	1,	2),
(66,	3,	'2016-02-18 13:34:46',	1,	2),
(67,	3,	'2016-02-18 13:34:46',	1,	2),
(68,	3,	'2016-02-18 13:34:47',	1,	2),
(69,	3,	'2016-02-18 13:34:47',	1,	2),
(70,	3,	'2016-02-18 13:34:47',	1,	2),
(71,	3,	'2016-02-18 13:34:47',	1,	2),
(72,	3,	'2016-02-18 13:34:47',	1,	2),
(73,	3,	'2016-02-18 13:34:47',	1,	2),
(74,	3,	'2016-02-18 13:34:48',	1,	2),
(75,	3,	'2016-02-18 13:34:48',	1,	2),
(76,	3,	'2016-02-18 13:34:48',	1,	2),
(77,	3,	'2016-02-18 13:34:48',	1,	2),
(78,	3,	'2016-02-18 13:34:48',	1,	2),
(79,	3,	'2016-02-18 13:34:48',	1,	2),
(80,	3,	'2016-02-18 13:34:48',	1,	2),
(81,	3,	'2016-02-18 13:34:48',	1,	2),
(82,	3,	'2016-02-18 13:34:48',	1,	2),
(83,	3,	'2016-02-18 13:34:49',	1,	2),
(84,	3,	'2016-02-18 13:34:49',	1,	2),
(85,	3,	'2016-02-18 13:34:49',	1,	2),
(86,	3,	'2016-02-18 13:34:49',	1,	2),
(87,	3,	'2016-02-18 13:34:49',	1,	2),
(88,	3,	'2016-02-18 13:34:49',	1,	2),
(89,	3,	'2016-02-18 13:34:49',	1,	2),
(90,	3,	'2016-02-18 13:34:49',	1,	2),
(91,	3,	'2016-02-18 13:34:49',	1,	2),
(92,	3,	'2016-02-18 13:34:50',	1,	2),
(93,	3,	'2016-02-18 13:34:50',	1,	2),
(94,	3,	'2016-02-18 13:34:50',	1,	2),
(95,	3,	'2016-02-18 13:34:50',	1,	2),
(96,	3,	'2016-02-18 13:34:50',	1,	2),
(97,	3,	'2016-02-18 13:34:50',	1,	2),
(98,	3,	'2016-02-18 13:34:50',	1,	2),
(99,	10,	'2016-02-18 13:34:50',	1,	3),
(100,	3,	'2016-02-18 13:34:50',	1,	2),
(101,	3,	'2016-02-18 13:34:51',	1,	2),
(102,	3,	'2016-02-18 13:34:51',	1,	2),
(103,	3,	'2016-02-18 13:34:51',	1,	2),
(104,	3,	'2016-02-18 13:34:51',	1,	2),
(105,	3,	'2016-02-18 13:34:51',	1,	2),
(106,	3,	'2016-02-18 13:34:51',	1,	2),
(107,	5,	'2016-02-18 13:34:52',	1,	3),
(108,	5,	'2016-02-18 13:34:53',	1,	3),
(109,	10,	'2016-02-18 13:34:53',	1,	3),
(110,	4,	'2016-02-18 13:34:59',	1,	2),
(111,	4,	'2016-02-18 13:34:59',	1,	2),
(112,	4,	'2016-02-18 13:35:00',	1,	2),
(113,	4,	'2016-02-18 13:35:00',	1,	2),
(114,	14,	'2016-02-18 17:04:09',	1,	6),
(115,	15,	'2016-02-18 17:04:10',	1,	6),
(116,	14,	'2016-02-18 17:05:00',	1,	6),
(117,	15,	'2016-02-18 17:05:00',	1,	6),
(118,	14,	'2016-02-18 17:05:01',	1,	6),
(119,	15,	'2016-02-18 17:05:01',	1,	6),
(120,	14,	'2016-02-18 17:05:02',	1,	6),
(121,	15,	'2016-02-18 17:05:02',	1,	6),
(122,	14,	'2016-02-18 17:05:03',	1,	6),
(123,	15,	'2016-02-18 17:05:03',	1,	6),
(124,	14,	'2016-02-18 17:05:04',	1,	6),
(125,	15,	'2016-02-18 17:05:04',	1,	6),
(126,	14,	'2016-02-18 17:05:12',	1,	6),
(127,	15,	'2016-02-18 17:05:12',	1,	6),
(128,	14,	'2016-02-18 17:06:08',	1,	6),
(129,	15,	'2016-02-18 17:06:08',	1,	6),
(130,	14,	'2016-02-18 17:06:49',	1,	6),
(131,	15,	'2016-02-18 17:06:50',	1,	6),
(132,	14,	'2016-02-18 17:08:30',	1,	6),
(133,	15,	'2016-02-18 17:08:30',	1,	6),
(134,	14,	'2016-02-18 17:10:55',	1,	6),
(135,	15,	'2016-02-18 17:10:55',	1,	6),
(136,	14,	'2016-02-18 17:10:56',	1,	6),
(137,	15,	'2016-02-18 17:10:56',	1,	6),
(138,	14,	'2016-02-18 17:10:57',	1,	6),
(139,	15,	'2016-02-18 17:10:57',	1,	6),
(140,	14,	'2016-02-18 17:10:57',	1,	6),
(141,	15,	'2016-02-18 17:10:57',	1,	6),
(142,	1,	'2016-02-18 17:13:53',	1,	1),
(143,	2,	'2016-02-18 17:13:53',	1,	2),
(144,	7,	'2016-02-18 17:13:53',	1,	2),
(145,	11,	'2016-02-18 17:13:53',	1,	3),
(146,	14,	'2016-02-18 17:16:25',	1,	6),
(147,	15,	'2016-02-18 17:16:25',	1,	6),
(148,	14,	'2016-02-18 17:16:26',	1,	6),
(149,	15,	'2016-02-18 17:16:27',	1,	6),
(150,	1,	'2016-02-18 17:20:02',	1,	1),
(151,	2,	'2016-02-18 17:20:02',	1,	2),
(152,	7,	'2016-02-18 17:20:02',	1,	2),
(153,	11,	'2016-02-18 17:20:02',	1,	3),
(154,	1,	'2016-02-18 17:20:29',	1,	1),
(155,	2,	'2016-02-18 17:20:29',	1,	2),
(156,	7,	'2016-02-18 17:20:29',	1,	2),
(157,	11,	'2016-02-18 17:20:29',	1,	3),
(158,	1,	'2016-02-18 17:22:39',	1,	1),
(159,	2,	'2016-02-18 17:22:39',	1,	2),
(160,	7,	'2016-02-18 17:22:39',	1,	2),
(161,	11,	'2016-02-18 17:22:39',	1,	3),
(162,	14,	'2016-02-18 17:26:24',	1,	6),
(163,	15,	'2016-02-18 17:26:24',	1,	6),
(164,	1,	'2016-02-18 17:26:38',	1,	1),
(165,	2,	'2016-02-18 17:26:38',	1,	2),
(166,	7,	'2016-02-18 17:26:38',	1,	2),
(167,	11,	'2016-02-18 17:26:39',	1,	3),
(168,	18,	'2016-02-18 17:26:39',	1,	5),
(169,	5,	'2016-02-18 17:27:17',	1,	3),
(170,	14,	'2016-02-18 17:27:53',	1,	6),
(171,	15,	'2016-02-18 17:27:53',	1,	6),
(172,	5,	'2016-02-18 17:29:58',	1,	3),
(173,	5,	'2016-02-18 17:30:33',	1,	3),
(174,	5,	'2016-02-18 17:30:51',	1,	3),
(175,	5,	'2016-02-18 17:31:07',	1,	3),
(176,	5,	'2016-02-18 17:31:24',	1,	3),
(177,	5,	'2016-02-18 17:31:41',	1,	3),
(178,	5,	'2016-02-18 17:31:51',	1,	3),
(179,	1,	'2016-02-18 17:36:12',	1,	1),
(180,	2,	'2016-02-18 17:36:13',	1,	2),
(181,	7,	'2016-02-18 17:36:13',	1,	2),
(182,	11,	'2016-02-18 17:36:13',	1,	3),
(183,	1,	'2016-02-18 17:36:39',	1,	1),
(184,	2,	'2016-02-18 17:36:39',	1,	2),
(185,	7,	'2016-02-18 17:36:39',	1,	2),
(186,	11,	'2016-02-18 17:36:39',	1,	3),
(187,	1,	'2016-02-18 17:37:16',	1,	1),
(188,	2,	'2016-02-18 17:37:17',	1,	2),
(189,	7,	'2016-02-18 17:37:17',	1,	2),
(190,	11,	'2016-02-18 17:37:17',	1,	3),
(191,	1,	'2016-02-18 17:37:42',	1,	1),
(192,	2,	'2016-02-18 17:37:42',	1,	2),
(193,	7,	'2016-02-18 17:37:42',	1,	2),
(194,	11,	'2016-02-18 17:37:42',	1,	3),
(195,	18,	'2016-02-18 17:37:42',	1,	5),
(196,	1,	'2016-02-18 17:38:01',	1,	1),
(197,	2,	'2016-02-18 17:38:01',	1,	2),
(198,	7,	'2016-02-18 17:38:01',	1,	2),
(199,	11,	'2016-02-18 17:38:01',	1,	3),
(200,	5,	'2016-02-19 10:13:27',	1,	3),
(201,	12,	'2016-02-19 10:17:50',	1,	3),
(202,	13,	'2016-02-19 10:17:50',	1,	3),
(203,	12,	'2016-02-19 10:19:29',	1,	3),
(204,	13,	'2016-02-19 10:19:29',	1,	3),
(205,	14,	'2016-02-19 11:00:28',	1,	6),
(206,	15,	'2016-02-19 11:00:29',	1,	6),
(207,	19,	'2016-02-19 11:03:57',	1,	5),
(208,	8,	'2016-02-19 11:03:58',	1,	8),
(209,	19,	'2016-02-19 11:06:06',	1,	5),
(210,	8,	'2016-02-19 11:06:06',	1,	8),
(211,	19,	'2016-02-19 11:07:42',	1,	5),
(212,	8,	'2016-02-19 11:07:42',	1,	8),
(213,	19,	'2016-02-19 11:08:00',	1,	5),
(214,	8,	'2016-02-19 11:08:00',	1,	8),
(215,	19,	'2016-02-19 11:11:39',	1,	5),
(216,	8,	'2016-02-19 11:11:39',	1,	8),
(217,	19,	'2016-02-19 11:15:26',	1,	5),
(218,	8,	'2016-02-19 11:15:27',	1,	8),
(219,	19,	'2016-02-19 11:19:47',	1,	5),
(220,	20,	'2016-02-19 11:19:47',	1,	10),
(221,	8,	'2016-02-19 11:19:47',	1,	8),
(222,	19,	'2016-02-19 11:20:01',	1,	5),
(223,	20,	'2016-02-19 11:20:02',	1,	10),
(224,	8,	'2016-02-19 11:20:02',	1,	8),
(225,	19,	'2016-02-19 11:20:13',	1,	5),
(226,	20,	'2016-02-19 11:20:13',	1,	10),
(227,	8,	'2016-02-19 11:20:13',	1,	8),
(228,	19,	'2016-02-19 11:20:26',	1,	5),
(229,	20,	'2016-02-19 11:20:26',	1,	10),
(230,	8,	'2016-02-19 11:20:26',	1,	8),
(231,	5,	'2016-02-19 11:40:03',	1,	3),
(232,	19,	'2016-02-19 11:43:37',	3,	5),
(233,	20,	'2016-02-19 11:43:37',	3,	10),
(234,	8,	'2016-02-19 11:43:37',	3,	8),
(235,	5,	'2016-02-19 11:54:07',	1,	3),
(236,	5,	'2016-02-19 14:12:19',	1,	3),
(237,	5,	'2016-02-24 11:15:21',	1,	3),
(238,	5,	'2016-02-24 11:15:41',	1,	3),
(239,	14,	'2016-02-24 12:18:16',	1,	6),
(240,	15,	'2016-02-24 12:18:17',	1,	6),
(241,	5,	'2016-03-01 12:48:58',	1,	3),
(242,	14,	'2016-03-01 13:31:01',	1,	6),
(243,	15,	'2016-03-01 13:31:01',	1,	6),
(244,	5,	'2016-03-01 13:32:09',	1,	3),
(245,	19,	'2016-03-01 13:38:16',	3,	5),
(246,	19,	'2016-03-01 13:39:40',	3,	5),
(247,	20,	'2016-03-01 13:39:40',	3,	10),
(248,	8,	'2016-03-01 13:39:40',	3,	8),
(249,	19,	'2016-03-01 13:42:39',	3,	5),
(250,	19,	'2016-03-01 13:52:54',	3,	5),
(251,	19,	'2016-03-01 13:57:59',	3,	5),
(252,	20,	'2016-03-01 13:57:59',	3,	10),
(253,	8,	'2016-03-01 13:57:59',	3,	8),
(254,	19,	'2016-03-01 14:04:50',	3,	5),
(255,	20,	'2016-03-01 14:04:50',	3,	10),
(256,	8,	'2016-03-01 14:04:50',	3,	8),
(257,	8,	'2016-03-01 14:09:00',	1,	8),
(258,	19,	'2016-03-01 14:10:26',	3,	5),
(259,	20,	'2016-03-01 14:10:27',	3,	10),
(260,	8,	'2016-03-01 14:10:27',	3,	8),
(261,	8,	'2016-03-01 14:11:59',	3,	8),
(262,	8,	'2016-03-01 14:13:41',	1,	8),
(263,	19,	'2016-03-01 14:31:29',	3,	5),
(264,	20,	'2016-03-01 14:31:29',	3,	10),
(265,	8,	'2016-03-01 14:31:29',	3,	8),
(266,	19,	'2016-03-01 14:33:51',	3,	5),
(267,	20,	'2016-03-01 14:33:51',	3,	10),
(268,	8,	'2016-03-01 14:33:51',	3,	8),
(269,	19,	'2016-03-01 14:38:38',	3,	5),
(270,	20,	'2016-03-01 14:38:38',	3,	10),
(271,	8,	'2016-03-01 14:38:38',	3,	8),
(272,	19,	'2016-03-01 14:38:51',	3,	5),
(273,	20,	'2016-03-01 14:38:52',	3,	10),
(274,	8,	'2016-03-01 14:38:52',	3,	8),
(275,	19,	'2016-03-01 14:39:08',	3,	5),
(276,	20,	'2016-03-01 14:39:09',	3,	10),
(277,	8,	'2016-03-01 14:39:09',	3,	8),
(278,	19,	'2016-03-01 14:39:23',	3,	5),
(279,	20,	'2016-03-01 14:39:23',	3,	10),
(280,	8,	'2016-03-01 14:39:24',	3,	8),
(281,	19,	'2016-03-01 14:41:13',	3,	5),
(282,	20,	'2016-03-01 14:41:13',	3,	10),
(283,	8,	'2016-03-01 14:41:14',	3,	8),
(284,	19,	'2016-03-01 14:41:25',	3,	5),
(285,	20,	'2016-03-01 14:41:25',	3,	10),
(286,	8,	'2016-03-01 14:41:25',	3,	8),
(287,	19,	'2016-03-01 14:41:42',	3,	5),
(288,	20,	'2016-03-01 14:41:43',	3,	10),
(289,	8,	'2016-03-01 14:41:43',	3,	8);

DROP TABLE IF EXISTS `AuthenticationTypes`;
CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AuthenticationTypes` (`authTypeID`, `authTypeHandle`, `authTypeName`, `authTypeIsEnabled`, `authTypeDisplayOrder`, `pkgID`) VALUES
(1,	'concrete',	'Standard',	1,	0,	0),
(2,	'community',	'concrete5.org',	0,	0,	0),
(3,	'facebook',	'Facebook',	0,	0,	0),
(4,	'twitter',	'Twitter',	0,	0,	0),
(5,	'google',	'Google',	0,	0,	0);

DROP TABLE IF EXISTS `authTypeConcreteCookieMap`;
CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BannedWords`;
CREATE TABLE `BannedWords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BannedWords` (`bwID`, `bannedWord`) VALUES
(1,	'mierda'),
(2,	'puta'),
(3,	'puto'),
(4,	'maricon'),
(5,	'idiota');

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BlockFeatureAssignments`;
CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BlockFeatureAssignments` (`cID`, `cvID`, `bID`, `faID`) VALUES
(146,	2,	12,	1),
(155,	2,	13,	2),
(155,	3,	13,	2),
(155,	4,	13,	2),
(155,	5,	13,	2),
(155,	6,	13,	2),
(150,	2,	18,	3),
(150,	3,	18,	3),
(150,	4,	25,	4),
(150,	5,	26,	5),
(178,	3,	193,	6),
(150,	6,	212,	7),
(146,	3,	417,	8);

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BlockRelations`;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`brID`),
  KEY `bID` (`bID`),
  KEY `originalBID` (`originalBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BlockRelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
(1,	15,	14,	'DUPLICATE'),
(2,	22,	21,	'DUPLICATE'),
(3,	23,	17,	'DUPLICATE'),
(4,	25,	18,	'DUPLICATE'),
(5,	26,	25,	'DUPLICATE'),
(6,	30,	16,	'DUPLICATE'),
(7,	32,	31,	'DUPLICATE'),
(8,	33,	20,	'DUPLICATE'),
(9,	34,	32,	'DUPLICATE'),
(11,	117,	107,	'DUPLICATE'),
(12,	119,	118,	'DUPLICATE'),
(13,	120,	108,	'DUPLICATE'),
(14,	125,	119,	'DUPLICATE'),
(16,	133,	106,	'DUPLICATE'),
(17,	134,	15,	'DUPLICATE'),
(26,	191,	188,	'DUPLICATE'),
(27,	192,	188,	'DUPLICATE'),
(28,	203,	202,	'DUPLICATE'),
(29,	204,	203,	'DUPLICATE'),
(33,	212,	26,	'DUPLICATE'),
(36,	282,	271,	'DUPLICATE'),
(37,	283,	258,	'DUPLICATE'),
(56,	373,	372,	'DUPLICATE'),
(57,	375,	374,	'DUPLICATE'),
(58,	376,	375,	'DUPLICATE'),
(59,	377,	376,	'DUPLICATE'),
(60,	378,	377,	'DUPLICATE'),
(61,	379,	378,	'DUPLICATE'),
(62,	380,	379,	'DUPLICATE'),
(63,	381,	380,	'DUPLICATE'),
(64,	382,	381,	'DUPLICATE'),
(65,	383,	382,	'DUPLICATE'),
(66,	385,	384,	'DUPLICATE'),
(68,	389,	388,	'DUPLICATE'),
(70,	394,	393,	'DUPLICATE'),
(71,	396,	395,	'DUPLICATE'),
(72,	397,	396,	'DUPLICATE'),
(73,	398,	397,	'DUPLICATE'),
(74,	399,	398,	'DUPLICATE'),
(75,	400,	399,	'DUPLICATE'),
(76,	401,	400,	'DUPLICATE'),
(77,	402,	401,	'DUPLICATE'),
(78,	404,	402,	'DUPLICATE'),
(79,	405,	404,	'DUPLICATE'),
(80,	406,	405,	'DUPLICATE'),
(81,	407,	406,	'DUPLICATE'),
(82,	408,	407,	'DUPLICATE'),
(83,	409,	408,	'DUPLICATE'),
(84,	411,	409,	'DUPLICATE'),
(85,	412,	411,	'DUPLICATE'),
(86,	413,	412,	'DUPLICATE'),
(87,	414,	413,	'DUPLICATE'),
(88,	415,	414,	'DUPLICATE'),
(89,	416,	19,	'DUPLICATE'),
(90,	417,	12,	'DUPLICATE'),
(91,	418,	24,	'DUPLICATE'),
(92,	419,	418,	'DUPLICATE'),
(93,	420,	22,	'DUPLICATE'),
(94,	421,	420,	'DUPLICATE'),
(95,	422,	421,	'DUPLICATE'),
(96,	423,	419,	'DUPLICATE'),
(97,	424,	423,	'DUPLICATE');

DROP TABLE IF EXISTS `Blocks`;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1,	'',	'2016-02-18 13:34:51',	'2016-02-18 13:34:51',	NULL,	'0',	12,	1,	NULL),
(2,	'',	'2016-02-18 13:34:52',	'2016-02-18 13:34:52',	NULL,	'0',	9,	1,	NULL),
(3,	'',	'2016-02-18 13:34:52',	'2016-02-18 13:34:52',	NULL,	'0',	10,	1,	NULL),
(4,	'',	'2016-02-18 13:34:52',	'2016-02-18 13:34:52',	NULL,	'0',	8,	1,	NULL),
(5,	'',	'2016-02-18 13:34:52',	'2016-02-18 13:34:52',	NULL,	'0',	8,	1,	NULL),
(6,	'',	'2016-02-18 13:34:52',	'2016-02-18 13:34:52',	NULL,	'0',	7,	1,	NULL),
(7,	'',	'2016-02-18 13:34:53',	'2016-02-18 13:34:53',	NULL,	'0',	6,	1,	NULL),
(8,	'',	'2016-02-18 13:34:53',	'2016-02-18 13:34:53',	NULL,	'0',	8,	1,	NULL),
(9,	'',	'2016-02-18 13:35:02',	'2016-02-18 13:35:02',	NULL,	'0',	2,	1,	NULL),
(10,	'',	'2016-02-18 17:02:17',	'2016-02-18 17:02:17',	NULL,	'0',	18,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjEwIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtzOjE6IjAiO3M6OToidGl0bGVUZXh0IjtzOjIzOiJbVMOtdHVsbyBkZSBsYSBQw6FnaW5hXSI7czoxMDoiZm9ybWF0dGluZyI7czoyOiJoNCI7fQ=='),
(11,	'',	'2016-02-18 17:02:43',	'2016-02-18 17:02:51',	'Camino de Miga.php',	'0',	11,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czoyOiIxMSI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtzOjE6IjAiO3M6MjM6ImRpc3BsYXlQYWdlc0luY2x1ZGVTZWxmIjtzOjE6IjAiO3M6MTU6ImRpc3BsYXlTdWJQYWdlcyI7czoxOToicmVsZXZhbnRfYnJlYWRjcnVtYiI7czoyMDoiZGlzcGxheVN1YlBhZ2VMZXZlbHMiO3M6MzoiYWxsIjtzOjIzOiJkaXNwbGF5U3ViUGFnZUxldmVsc051bSI7czoxOiIwIjtzOjIzOiJkaXNwbGF5VW5hdmFpbGFibGVQYWdlcyI7czoxOiIwIjtzOjE4OiJkaXNwbGF5U3lzdGVtUGFnZXMiO3M6MToiMCI7fQ=='),
(12,	'',	'2016-02-18 17:04:14',	'2016-02-18 17:04:14',	NULL,	'0',	27,	1,	NULL),
(13,	'',	'2016-02-18 17:06:53',	'2016-02-18 17:06:53',	NULL,	'0',	27,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiIxMyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7czoxOiI5IjtzOjEwOiJmT25zdGF0ZUlEIjtzOjE6IjAiO3M6ODoibWF4V2lkdGgiO3M6MToiMCI7czo5OiJtYXhIZWlnaHQiO3M6MToiMCI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtzOjE6IjAiO3M6NzoiYWx0VGV4dCI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjt9'),
(14,	'',	'2016-02-18 17:07:06',	'2016-02-18 17:07:12',	'Estilo A',	'0',	32,	1,	NULL),
(15,	'',	'2016-02-18 17:07:18',	'2016-02-18 17:07:18',	'Estilo A',	'1',	32,	1,	NULL),
(16,	'',	'2016-02-18 17:07:31',	'2016-02-18 17:07:37',	'SENATICs.php',	'0',	11,	1,	NULL),
(17,	'',	'2016-02-18 17:07:50',	'2016-02-18 17:07:50',	NULL,	'0',	1,	1,	NULL),
(18,	'',	'2016-02-18 17:08:56',	'2016-02-18 17:09:02',	'',	'0',	27,	1,	NULL),
(19,	'',	'2016-02-18 17:09:42',	'2016-02-18 17:09:42',	NULL,	'0',	12,	1,	NULL),
(20,	'',	'2016-02-18 17:09:58',	'2016-02-18 17:09:58',	NULL,	'0',	1,	1,	NULL),
(21,	'',	'2016-02-18 17:10:21',	'2016-02-18 17:10:21',	NULL,	'0',	25,	1,	NULL),
(22,	'',	'2016-02-18 17:11:28',	'2016-02-18 17:13:07',	NULL,	'1',	25,	1,	NULL),
(23,	'',	'2016-02-18 17:13:21',	'2016-02-18 17:13:21',	NULL,	'1',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIzIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiIzIjt9'),
(24,	'',	'2016-02-18 17:17:04',	'2016-02-18 17:17:04',	NULL,	'0',	42,	1,	NULL),
(25,	'',	'2016-02-18 17:17:25',	'2016-02-18 17:17:25',	'',	'1',	27,	1,	NULL),
(26,	'',	'2016-02-18 17:17:40',	'2016-02-18 17:17:40',	'',	'1',	27,	1,	NULL),
(27,	'',	'2016-02-18 17:18:42',	'2016-02-18 17:18:42',	NULL,	'0',	46,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI3IjtzOjk6IgAqAF90YWJsZSI7czoxODoiYnRMZXlUcmFuc3BhcmVuY2lhIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO3M6MToiMCI7fQ=='),
(28,	'',	'2016-02-18 17:19:09',	'2016-02-18 17:19:09',	NULL,	'0',	25,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI4IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo3Mjg6IjxkaXYgaWQ9ImZiLXJvb3QiPjwvZGl2Pg0KPHNjcmlwdD4oZnVuY3Rpb24oZCwgcywgaWQpIHsNCiAgdmFyIGpzLCBmanMgPSBkLmdldEVsZW1lbnRzQnlUYWdOYW1lKHMpWzBdOw0KICBpZiAoZC5nZXRFbGVtZW50QnlJZChpZCkpIHJldHVybjsNCiAganMgPSBkLmNyZWF0ZUVsZW1lbnQocyk7IGpzLmlkID0gaWQ7DQogIGpzLnNyYyA9ICIvL2Nvbm5lY3QuZmFjZWJvb2submV0L2VzX0xBL3Nkay5qcyN4ZmJtbD0xJnZlcnNpb249djIuNCI7DQogIGZqcy5wYXJlbnROb2RlLmluc2VydEJlZm9yZShqcywgZmpzKTsNCn0oZG9jdW1lbnQsICdzY3JpcHQnLCAnZmFjZWJvb2stanNzZGsnKSk7PC9zY3JpcHQ+DQo8ZGl2IGNsYXNzPSJmYi1wYWdlIiBkYXRhLWhyZWY9Imh0dHBzOi8vd3d3LmZhY2Vib29rLmNvbS9TRU5BVElDc1B5IiBkYXRhLXNtYWxsLWhlYWRlcj0idHJ1ZSIgZGF0YS1hZGFwdC1jb250YWluZXItd2lkdGg9InRydWUiIGRhdGEtaGlkZS1jb3Zlcj0idHJ1ZSIgZGF0YS1zaG93LWZhY2VwaWxlPSJ0cnVlIiBkYXRhLXNob3ctcG9zdHM9InRydWUiPjxkaXYgY2xhc3M9ImZiLXhmYm1sLXBhcnNlLWlnbm9yZSI+PGJsb2NrcXVvdGUgY2l0ZT0iaHR0cHM6Ly93d3cuZmFjZWJvb2suY29tL1NFTkFUSUNzUHkiPjxhIGhyZWY9Imh0dHBzOi8vd3d3LmZhY2Vib29rLmNvbS9TRU5BVElDc1B5Ij5TRU5BVElDcyBQYXJhZ3VheTwvYT48L2Jsb2NrcXVvdGU+PC9kaXY+PC9kaXY+Ijt9'),
(29,	'',	'2016-02-18 17:19:51',	'2016-02-18 17:19:51',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI5IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo5NToiPGgzPjxpIGNsYXNzPSJtYXRlcmlhbC1pY29ucyBsZWZ0IHNtYWxsIiBzdHlsZT0ibWFyZ2luLXRvcDotM3B4OyI+ZGVzY3JpcHRpb248L2k+IE5vdGljaWFzPC9oMz4iO30='),
(30,	'',	'2016-02-18 17:20:57',	'2016-02-18 17:20:57',	'Arbol.php',	'1',	11,	1,	NULL),
(31,	'',	'2016-02-18 17:21:59',	'2016-02-18 17:22:07',	'responsive_header_navigation',	'0',	11,	1,	NULL),
(32,	'',	'2016-02-18 17:22:29',	'2016-02-18 17:25:31',	'SENATICs_icon.php',	'1',	11,	1,	NULL),
(33,	'',	'2016-02-18 17:35:01',	'2016-02-18 17:35:01',	NULL,	'1',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjMzIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI0Ijt9'),
(34,	'',	'2016-02-18 17:37:08',	'2016-02-18 17:37:08',	'SENATICs.php',	'1',	11,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czoyOiIzNCI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtzOjE6IjAiO3M6MjM6ImRpc3BsYXlQYWdlc0luY2x1ZGVTZWxmIjtzOjE6IjAiO3M6MTU6ImRpc3BsYXlTdWJQYWdlcyI7czozOiJhbGwiO3M6MjA6ImRpc3BsYXlTdWJQYWdlTGV2ZWxzIjtzOjM6ImFsbCI7czoyMzoiZGlzcGxheVN1YlBhZ2VMZXZlbHNOdW0iO3M6MToiMCI7czoyMzoiZGlzcGxheVVuYXZhaWxhYmxlUGFnZXMiO3M6MToiMCI7czoxODoiZGlzcGxheVN5c3RlbVBhZ2VzIjtzOjE6IjAiO30='),
(35,	'',	'2016-02-19 10:08:12',	'2016-02-19 10:08:12',	NULL,	'0',	1,	1,	NULL),
(36,	'',	'2016-02-19 10:08:26',	'2016-02-19 10:08:43',	NULL,	'0',	16,	1,	NULL),
(37,	'',	'2016-02-19 10:08:55',	'2016-02-19 10:08:55',	NULL,	'0',	18,	1,	NULL),
(38,	'',	'2016-02-19 10:09:10',	'2016-02-19 10:09:27',	'Camino de Miga.php',	'0',	11,	1,	NULL),
(39,	'',	'2016-02-19 10:09:41',	'2016-02-19 10:09:41',	NULL,	'0',	2,	1,	NULL),
(40,	'',	'2016-02-19 10:09:44',	'2016-02-19 10:09:44',	NULL,	'0',	26,	1,	NULL),
(41,	'',	'2016-02-19 10:10:10',	'2016-02-19 10:10:22',	'',	'0',	23,	1,	NULL),
(42,	'',	'2016-02-19 10:11:24',	'2016-02-19 10:13:01',	'',	'0',	12,	1,	NULL),
(43,	'',	'2016-02-19 10:12:20',	'2016-02-19 11:21:07',	'SENATICs Estilo E [3 col] (Estilo Albumes-Slide)',	'0',	30,	1,	NULL),
(44,	'',	'2016-02-19 10:58:02',	'2016-02-19 10:58:02',	NULL,	'0',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjQ0IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI2Ijt9'),
(45,	'',	'2016-02-19 10:59:30',	'2016-02-19 10:59:30',	NULL,	'0',	17,	1,	NULL),
(46,	'',	'2016-02-19 11:02:12',	'2016-02-19 11:02:12',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjQ2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozNjU6IjxwIGRhdGEtcmVkYWN0b3ItaW5zZXJ0ZWQtaW1hZ2U9InRydWUiPjxjb25jcmV0ZS1waWN0dXJlIGZJRD0iMTkiIGlkPSJpbWFnZS1tYXJrZXIiIHdpZHRoPSI0MjUiIGhlaWdodD0iOTEiIHN0eWxlPSJ3aWR0aDogNDI1cHg7IGhlaWdodDogOTFweDsiIC8+PC9wPjxoNT5TZWNyZXRhcsOtYSBOYWNpb25hbCBkZSBUZWNub2xvZ8OtYSBkZSBsYSBJbmZvcm1hY2nDs24geSBDb211bmljYWNpw7NuPC9oNT48aDY+RGllY2Npw7NuOiBDb21wbGVqbyBTYW50b3MgRTIgLSBHcmFsLiBTYW50b3MgMTE3MCBjLyBDb25jb3JkaWE8L2g2PjxoNj5UZWxlZm9ubzogKCs1OTUgMjEpIDIxNy05MDAwPC9oNj48aDY+QXN1bmNpb24gLSBQYXJhZ3VheTwvaDY+Ijt9'),
(47,	'',	'2016-02-19 11:03:37',	'2016-02-19 11:03:47',	'SENATICs Estilo C [img small] (Lista Horizontal)',	'0',	30,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjMyOntzOjM6ImJJRCI7czoyOiI0NyI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjQiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtzOjE6IjAiO3M6NToiY1RoaXMiO3M6MToiMCI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIwIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7czowOiIiO3M6MTM6InBhZ2VMaXN0VGl0bGUiO3M6MDoiIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czoxOToiZmlsdGVyQnlDdXN0b21Ub3BpYyI7czoxOiIwIjtzOjE2OiJmaWx0ZXJEYXRlT3B0aW9uIjtzOjA6IiI7czoxNDoiZmlsdGVyRGF0ZURheXMiO3M6MToiMCI7czoxNToiZmlsdGVyRGF0ZVN0YXJ0IjtOO3M6MTM6ImZpbHRlckRhdGVFbmQiO047czozMDoicmVsYXRlZFRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyOToiY3VzdG9tVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjIxOiJjdXN0b21Ub3BpY1RyZWVOb2RlSUQiO3M6MToiMCI7czoxMToiaW5jbHVkZU5hbWUiO3M6MToiMSI7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjEiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjEiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIwIjtzOjg6InBhZ2luYXRlIjtzOjE6IjAiO3M6MTQ6ImRpc3BsYXlBbGlhc2VzIjtzOjE6IjAiO3M6MjM6ImVuYWJsZUV4dGVybmFsRmlsdGVyaW5nIjtzOjE6IjAiO3M6NDoicHRJRCI7czoxOiI4IjtzOjQ6InBmSUQiO3M6MToiMCI7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMSI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtzOjE5OiJObyBoYXkgcHVibGljYWNpw7NuIjtzOjE2OiJkaXNwbGF5VGh1bWJuYWlsIjtzOjE6IjEiO3M6MTM6InRydW5jYXRlQ2hhcnMiO3M6MzoiMzAwIjt9'),
(106,	'',	'2016-02-19 11:09:51',	'2016-02-19 11:09:51',	NULL,	'0',	1,	1,	NULL),
(107,	'',	'2016-02-19 11:10:14',	'2016-02-19 11:10:14',	NULL,	'0',	13,	1,	NULL),
(108,	'',	'2016-02-19 11:11:11',	'2016-02-19 11:11:19',	'SENATICs Estilo C [img big] (Lista Horizontal)',	'0',	30,	1,	NULL),
(117,	'',	'2016-02-19 11:12:58',	'2016-02-19 11:12:59',	NULL,	'1',	13,	1,	NULL),
(118,	'',	'2016-02-19 11:13:45',	'2016-02-19 11:13:45',	NULL,	'0',	20,	1,	NULL),
(119,	'',	'2016-02-19 11:15:07',	'2016-02-19 11:15:07',	NULL,	'1',	20,	1,	NULL),
(120,	'',	'2016-02-19 11:15:13',	'2016-02-19 11:15:13',	'SENATICs Estilo C [img big] (Lista Horizontal)',	'1',	30,	1,	NULL),
(125,	'',	'2016-02-19 11:19:28',	'2016-02-19 11:19:28',	NULL,	'1',	20,	1,	NULL),
(126,	'',	'2016-02-19 11:19:33',	'2016-02-19 11:19:33',	NULL,	'0',	26,	1,	NULL),
(133,	'',	'2016-02-19 11:21:50',	'2016-02-19 11:21:50',	NULL,	'1',	1,	1,	NULL),
(134,	'',	'2016-02-19 11:40:39',	'2016-02-19 11:40:39',	'Estilo A',	'1',	32,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjEzNCI7czo5OiIAKgBfdGFibGUiO3M6ODoiYnRTZWFyY2giO3M6NToidGl0bGUiO3M6MDoiIjtzOjEwOiJidXR0b25UZXh0IjtzOjA6IiI7czoxNDoiYmFzZVNlYXJjaFBhdGgiO3M6MDoiIjtzOjEwOiJwb3N0VG9fY0lEIjtzOjM6IjE2OCI7czoxMDoicmVzdWx0c1VSTCI7czowOiIiO30='),
(135,	'',	'2016-02-19 11:40:55',	'2016-02-19 11:41:02',	'Estilo A',	'0',	32,	1,	NULL),
(136,	'',	'2016-02-19 11:40:55',	'2016-02-19 11:40:55',	NULL,	'0',	32,	1,	NULL),
(175,	'',	'2016-02-19 14:02:21',	'2016-02-19 14:06:25',	NULL,	'0',	49,	1,	NULL),
(176,	'',	'2016-02-19 14:12:45',	'2016-02-19 14:12:45',	NULL,	'0',	3,	1,	NULL),
(181,	'',	'2016-02-24 11:40:25',	'2016-02-24 11:40:25',	NULL,	'0',	1,	1,	NULL),
(182,	'',	'2016-02-24 11:40:37',	'2016-02-24 11:40:46',	'Menu lateral.php',	'0',	11,	1,	NULL),
(183,	'',	'2016-02-24 11:41:21',	'2016-02-24 11:41:21',	NULL,	'0',	1,	1,	NULL),
(184,	'',	'2016-02-24 11:41:28',	'2016-02-24 11:41:28',	NULL,	'0',	3,	1,	NULL),
(185,	'',	'2016-02-24 11:41:50',	'2016-02-24 11:41:50',	NULL,	'0',	1,	1,	NULL),
(186,	'',	'2016-02-24 11:41:55',	'2016-02-24 11:41:55',	NULL,	'0',	3,	1,	NULL),
(187,	'',	'2016-02-24 12:14:44',	'2016-02-24 12:14:44',	NULL,	'0',	1,	1,	NULL),
(188,	'',	'2016-02-24 12:15:39',	'2016-02-24 12:15:46',	'Estilo A',	'0',	19,	1,	NULL),
(191,	'',	'2016-02-24 12:16:15',	'2016-02-24 12:16:15',	'Estilo A',	'1',	19,	1,	NULL),
(192,	'',	'2016-02-24 12:16:33',	'2016-02-24 12:16:33',	'Estilo A',	'1',	19,	1,	NULL),
(193,	'',	'2016-02-24 12:17:02',	'2016-02-24 12:17:02',	NULL,	'0',	27,	1,	NULL),
(194,	'',	'2016-02-24 12:19:35',	'2016-02-24 12:19:41',	'',	'0',	22,	1,	NULL),
(195,	'',	'2016-03-01 12:47:31',	'2016-03-01 12:47:52',	'SENATICs Estilo B (Lista Horizontal - Simple)',	'0',	30,	1,	NULL),
(196,	'',	'2016-03-01 12:48:20',	'2016-03-01 12:48:20',	NULL,	'0',	1,	1,	NULL),
(197,	'',	'2016-03-01 12:49:45',	'2016-03-01 12:49:45',	NULL,	'0',	1,	1,	NULL),
(198,	'',	'2016-03-01 12:50:06',	'2016-03-01 12:50:06',	NULL,	'0',	3,	1,	NULL),
(200,	'',	'2016-03-01 12:51:00',	'2016-03-01 12:51:00',	NULL,	'0',	12,	1,	NULL),
(201,	'',	'2016-03-01 12:55:42',	'2016-03-01 12:55:42',	NULL,	'0',	15,	1,	NULL),
(202,	'',	'2016-03-01 12:58:47',	'2016-03-01 12:58:47',	NULL,	'0',	41,	1,	NULL),
(203,	'',	'2016-03-01 12:59:33',	'2016-03-01 13:00:02',	'',	'1',	41,	1,	NULL),
(204,	'',	'2016-03-01 13:00:59',	'2016-03-01 13:00:59',	'',	'1',	41,	1,	NULL),
(208,	'',	'2016-03-01 13:25:23',	'2016-03-01 13:25:23',	NULL,	'0',	18,	1,	NULL),
(210,	'',	'2016-03-01 13:28:36',	'2016-03-01 13:28:37',	'lightbox',	'0',	51,	1,	NULL),
(211,	'',	'2016-03-01 13:29:05',	'2016-03-01 13:29:27',	'Camino de Miga.php',	'0',	11,	1,	NULL),
(212,	'',	'2016-03-01 13:31:20',	'2016-03-01 13:31:21',	'',	'1',	27,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiIyMTIiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRJbWFnZSI7czozOiJmSUQiO3M6MjoiMjIiO3M6MTA6ImZPbnN0YXRlSUQiO3M6MToiMCI7czo4OiJtYXhXaWR0aCI7czoxOiIwIjtzOjk6Im1heEhlaWdodCI7czoyOiI4NSI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjI2OiJodHRwOi8vd3d3LnNlbmF0aWNzLmdvdi5weSI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtzOjE6IjAiO3M6NzoiYWx0VGV4dCI7czo4OiJTRU5BVElDcyI7czo1OiJ0aXRsZSI7czo4OiJTRU5BVElDcyI7fQ=='),
(214,	'',	'2016-03-01 13:51:03',	'2016-03-01 13:51:27',	'SENATICs Estilo D [3 col] (Estilo Albumes)',	'0',	30,	1,	NULL),
(258,	'',	'2016-03-01 14:04:14',	'2016-03-01 14:36:15',	'Estilo-A.php',	'0',	20,	1,	NULL),
(271,	'',	'2016-03-01 14:09:00',	'2016-03-01 14:11:43',	NULL,	'0',	36,	1,	NULL),
(272,	'',	'2016-03-01 14:09:40',	'2016-03-01 14:09:40',	NULL,	'0',	1,	1,	NULL),
(281,	'',	'2016-03-01 14:11:09',	'2016-03-01 14:11:09',	NULL,	'0',	12,	3,	NULL),
(282,	'',	'2016-03-01 14:11:59',	'2016-03-01 14:11:59',	NULL,	'1',	36,	1,	NULL),
(283,	'',	'2016-03-01 14:12:45',	'2016-03-01 14:26:58',	'view.php',	'1',	20,	1,	NULL),
(284,	'',	'2016-03-01 14:13:40',	'2016-03-01 14:13:47',	NULL,	'0',	36,	1,	NULL),
(300,	'',	'2016-03-01 14:34:52',	'2016-03-01 14:34:52',	NULL,	'0',	12,	3,	NULL),
(304,	'',	'2016-03-01 14:38:50',	'2016-03-01 14:38:50',	NULL,	'0',	12,	3,	NULL),
(305,	'',	'2016-03-01 14:38:52',	'2016-03-01 14:38:52',	NULL,	'0',	12,	3,	NULL),
(308,	'',	'2016-03-01 14:39:17',	'2016-03-01 14:39:17',	NULL,	'0',	12,	3,	NULL),
(326,	'',	'2016-03-01 14:40:51',	'2016-03-01 14:40:51',	NULL,	'0',	12,	3,	NULL),
(327,	'',	'2016-03-01 14:41:14',	'2016-03-01 14:41:14',	NULL,	'0',	12,	3,	NULL),
(330,	'',	'2016-03-01 14:41:31',	'2016-03-01 14:41:31',	NULL,	'0',	12,	3,	NULL),
(338,	'',	'2016-03-01 14:42:13',	'2016-03-01 14:42:13',	NULL,	'0',	12,	3,	NULL),
(340,	'',	'2016-03-18 12:19:45',	'2016-03-18 12:19:45',	NULL,	'0',	24,	1,	NULL),
(342,	'',	'2016-03-18 18:02:16',	'2016-03-18 18:02:16',	NULL,	'0',	58,	1,	NULL),
(347,	'',	'2016-03-18 18:18:57',	'2016-03-18 18:18:57',	NULL,	'0',	58,	1,	NULL),
(372,	'',	'2016-03-21 18:47:18',	'2016-03-21 18:47:18',	NULL,	'0',	61,	1,	NULL),
(373,	'',	'2016-03-21 18:49:09',	'2016-03-21 18:51:26',	NULL,	'1',	61,	1,	NULL),
(374,	'',	'2016-03-22 11:23:50',	'2016-03-22 11:23:50',	NULL,	'0',	61,	1,	NULL),
(375,	'',	'2016-03-22 11:24:30',	'2016-03-22 11:24:30',	NULL,	'1',	61,	1,	NULL),
(376,	'',	'2016-03-22 11:37:15',	'2016-03-22 11:50:44',	NULL,	'1',	61,	1,	NULL),
(377,	'',	'2016-03-22 12:09:47',	'2016-03-22 12:09:47',	NULL,	'1',	61,	1,	NULL),
(378,	'',	'2016-03-22 12:12:35',	'2016-03-22 12:12:35',	NULL,	'1',	61,	1,	NULL),
(379,	'',	'2016-03-22 13:32:51',	'2016-03-22 13:32:51',	NULL,	'1',	61,	1,	NULL),
(380,	'',	'2016-03-22 14:50:38',	'2016-03-22 14:59:03',	NULL,	'1',	61,	1,	NULL),
(381,	'',	'2016-03-22 15:01:14',	'2016-03-22 15:01:14',	NULL,	'1',	61,	1,	NULL),
(382,	'',	'2016-03-22 15:01:34',	'2016-03-22 15:33:22',	NULL,	'1',	61,	1,	NULL),
(383,	'',	'2016-03-22 15:34:51',	'2016-03-22 15:34:51',	NULL,	'1',	61,	1,	NULL),
(384,	'',	'2016-03-28 08:28:09',	'2016-03-28 08:28:28',	NULL,	'0',	61,	1,	NULL),
(385,	'',	'2016-03-28 08:31:25',	'2016-03-28 08:31:26',	NULL,	'1',	61,	1,	NULL),
(387,	'',	'2016-03-28 09:21:48',	'2016-03-28 09:21:48',	NULL,	'0',	61,	1,	NULL),
(388,	'',	'2016-03-28 09:31:19',	'2016-03-28 09:31:57',	NULL,	'0',	61,	1,	NULL),
(389,	'',	'2016-03-28 09:32:31',	'2016-03-28 09:32:32',	NULL,	'1',	61,	1,	NULL),
(390,	'',	'2016-03-28 09:36:28',	'2016-03-28 09:36:28',	NULL,	'1',	61,	1,	NULL),
(393,	'',	'2016-03-28 10:14:28',	'2016-03-28 10:14:28',	NULL,	'0',	61,	1,	NULL),
(394,	'',	'2016-03-28 10:17:33',	'2016-03-28 10:17:33',	NULL,	'1',	61,	1,	NULL),
(395,	'',	'2016-03-28 10:24:55',	'2016-03-28 10:25:19',	NULL,	'0',	61,	1,	NULL),
(396,	'',	'2016-03-28 10:25:44',	'2016-03-28 10:25:44',	NULL,	'1',	61,	1,	NULL),
(397,	'',	'2016-03-28 10:27:19',	'2016-03-28 10:27:19',	NULL,	'1',	61,	1,	NULL),
(398,	'',	'2016-03-28 10:30:58',	'2016-03-28 10:30:59',	NULL,	'1',	61,	1,	NULL),
(399,	'',	'2016-03-28 10:35:49',	'2016-03-28 10:35:50',	NULL,	'1',	61,	1,	NULL),
(400,	'',	'2016-03-28 10:38:33',	'2016-03-28 10:41:44',	NULL,	'1',	61,	1,	NULL),
(401,	'',	'2016-03-28 10:42:37',	'2016-03-28 10:42:37',	NULL,	'1',	61,	1,	NULL),
(402,	'',	'2016-03-28 10:43:12',	'2016-03-28 10:43:12',	NULL,	'1',	61,	1,	NULL),
(403,	'',	'2016-03-28 10:50:36',	'2016-03-28 10:50:36',	NULL,	'0',	61,	1,	NULL),
(404,	'',	'2016-03-28 11:16:27',	'2016-03-28 11:16:28',	NULL,	'1',	61,	1,	NULL),
(405,	'',	'2016-03-28 11:49:38',	'2016-03-28 11:49:39',	NULL,	'1',	61,	1,	NULL),
(406,	'',	'2016-03-28 11:50:45',	'2016-03-28 11:50:45',	NULL,	'1',	61,	1,	NULL),
(407,	'',	'2016-03-28 11:51:14',	'2016-03-28 11:51:14',	NULL,	'1',	61,	1,	NULL),
(408,	'',	'2016-03-28 11:51:58',	'2016-03-28 11:51:59',	NULL,	'1',	61,	1,	NULL),
(409,	'',	'2016-03-28 11:53:04',	'2016-03-28 11:53:04',	NULL,	'1',	61,	1,	NULL),
(410,	'',	'2016-03-28 12:54:27',	'2016-03-28 12:54:27',	NULL,	'0',	24,	1,	NULL),
(411,	'',	'2016-03-28 14:02:16',	'2016-03-28 14:02:16',	NULL,	'1',	61,	1,	NULL),
(412,	'',	'2016-03-28 14:12:22',	'2016-03-28 14:12:22',	NULL,	'1',	61,	1,	NULL),
(413,	'',	'2016-03-28 14:12:48',	'2016-03-28 14:12:48',	NULL,	'1',	61,	1,	NULL),
(414,	'',	'2016-03-28 14:13:11',	'2016-03-28 14:13:11',	NULL,	'1',	61,	1,	NULL),
(415,	'',	'2016-03-29 08:16:29',	'2016-03-29 08:16:29',	NULL,	'1',	61,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjQxNSI7czo5OiIAKgBfdGFibGUiO3M6NzoiYnRNYXBhcyI7czoxMToidGl0dWxvX21hcGEiO3M6NzoibWkgdGVzdCI7czo0OiJ6b29tIjtzOjI6IjEzIjtzOjU6IndpZHRoIjtzOjQ6IjEwMCUiO3M6NjoiaGVpZ2h0IjtzOjU6IjQwMHB4IjtzOjExOiJzY3JvbGx3aGVlbCI7czoxOiIxIjt9'),
(416,	'',	'2016-03-29 08:19:22',	'2016-03-29 08:19:23',	NULL,	'1',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQxNiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTk4OiI8cD5Qb3J0YWwgY29uc3RydWlkbyBjb25qdW50YW1lbnRlIGNvbiBsYSA8YSBocmVmPSJodHRwOi8vd3d3LnNlbmF0aWNzLmdvdi5weSIgdGFyZ2V0PSJfYmxhbmsiPlNFTkFUSUNzPC9hPg0KPC9wPjxwPjIwMTYgU2VjcmV0YXLDrWEgTmFjaW9uYWwgZGUgVGVjbm9sb2fDrWFzIGRlIGxhIEluZm9ybWFjacOzbiB5IENvbXVuaWNhY2nDs24NCjwvcD4iO30='),
(417,	'',	'2016-03-29 08:22:18',	'2016-03-29 08:22:18',	NULL,	'1',	27,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiI0MTciO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRJbWFnZSI7czozOiJmSUQiO3M6MToiMSI7czoxMDoiZk9uc3RhdGVJRCI7czoxOiIwIjtzOjg6Im1heFdpZHRoIjtzOjE6IjAiO3M6OToibWF4SGVpZ2h0IjtzOjE6IjAiO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7czoxOiIxIjtzOjc6ImFsdFRleHQiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7fQ=='),
(418,	'',	'2016-03-29 08:23:23',	'2016-03-29 08:23:23',	NULL,	'1',	42,	1,	NULL),
(419,	'',	'2016-03-29 08:24:03',	'2016-03-29 08:24:03',	NULL,	'1',	42,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjY6e3M6MzoiYklEIjtzOjM6IjQxOSI7czo5OiIAKgBfdGFibGUiO3M6ODoiYnRTbGlkZXIiO3M6MTQ6Im5hdmlnYXRpb25UeXBlIjtzOjE6IjAiO3M6MTQ6Im5hdmVnYXRpb25TaG93IjtzOjE6IjEiO3M6OToidGltZVNsaWRlIjtzOjE6IjYiO3M6MTA6ImF1dG9IZWlnaHQiO3M6MToiMCI7fQ=='),
(420,	'',	'2016-03-29 08:28:23',	'2016-03-29 08:28:23',	NULL,	'1',	25,	1,	NULL),
(421,	'',	'2016-03-29 08:28:55',	'2016-03-29 08:28:55',	NULL,	'1',	25,	1,	NULL),
(422,	'',	'2016-03-29 08:29:47',	'2016-03-29 08:29:47',	NULL,	'1',	25,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQyMiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6ODg2OiI8ZGl2IGNsYXNzPSJyb3ciPg0KICAgIDxkaXYgY2xhc3M9ImNvbCBsMTIgczYiPjxhIGhyZWY9Ii90ZW1wbGF0ZS1jb25jcmV0ZTUvaW5kZXgucGhwL3RyYW5zcGFyZW5jaWEiIHRhcmdldD0iX3NlbGYiPjxpbWcgc3JjPSIvdGVtcGxhdGUtY29uY3JldGU1L2FwcGxpY2F0aW9uL2ZpbGVzLzExMTQvNTU4MS81NDU1L2FjY2Vzb19pbmZvcm1hY2lvbl9wdWJsaWNhX2J0bi1HUkFMLnBuZyIgc3R5bGU9IndpZHRoOjEwMCUiPjwvYT48L2Rpdj4NCiAgICA8ZGl2IGNsYXNzPSJjb2wgbDEyIHM2Ij48YSBocmVmPSJodHRwOi8vaW5mb3JtYWNpb25wdWJsaWNhLnBhcmFndWF5Lmdvdi5weS8iIHRhcmdldD0iX2JsYW5rIj48aW1nIHNyYz0iL3RlbXBsYXRlLWNvbmNyZXRlNS9hcHBsaWNhdGlvbi9maWxlcy84NTE0LzU1ODEvNTQ1Ny9pbmZvcm1hY2lvbl9wdWJsaWNhX2J0bi1HUkFMLnBuZyIgc3R5bGU9IndpZHRoOjEwMCUiPjwvYT48L2Rpdj4NCiAgICA8ZGl2IGNsYXNzPSJjb2wgbDEyIHM2Ij48YSBocmVmPSJodHRwOi8vd3d3LmRlbnVuY2lhcy5nb3YucHkvc3Nwcy8iIHRhcmdldD0iX2JsYW5rIj48aW1nIHNyYz0iL3RlbXBsYXRlLWNvbmNyZXRlNS9hcHBsaWNhdGlvbi9maWxlcy80ODE0LzU1ODEvNTQ1Ni9kZW51bmNpYXNfYnRuLnBuZyIgc3R5bGU9IndpZHRoOjEwMCUiPjwvYT48L2Rpdj4NCiAgICA8ZGl2IGNsYXNzPSJjb2wgbDEyIHM2Ij48YSBocmVmPSJodHRwOi8vd3d3LnBhcmFndWF5Lmdvdi5weS8iIHRhcmdldD0iX2JsYW5rIj48aW1nIHNyYz0iL3RlbXBsYXRlLWNvbmNyZXRlNS9hcHBsaWNhdGlvbi9maWxlcy8zMDE0LzU1ODEvNTQ1Ni9wb3J0YWxfcGFyYXVheV9idG4yLnBuZyIgc3R5bGU9IndpZHRoOjEwMCUiPjwvYT48L2Rpdj4NCjwvZGl2Pg0KIjt9'),
(423,	'',	'2016-03-29 08:56:04',	'2016-03-29 08:56:04',	NULL,	'1',	42,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjY6e3M6MzoiYklEIjtzOjM6IjQyMyI7czo5OiIAKgBfdGFibGUiO3M6ODoiYnRTbGlkZXIiO3M6MTQ6Im5hdmlnYXRpb25UeXBlIjtzOjE6IjAiO3M6MTQ6Im5hdmVnYXRpb25TaG93IjtzOjE6IjEiO3M6OToidGltZVNsaWRlIjtzOjE6IjYiO3M6MTA6ImF1dG9IZWlnaHQiO3M6MToiMCI7fQ=='),
(424,	'',	'2016-03-29 08:56:18',	'2016-03-29 08:56:18',	NULL,	'1',	42,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjY6e3M6MzoiYklEIjtzOjM6IjQyNCI7czo5OiIAKgBfdGFibGUiO3M6ODoiYnRTbGlkZXIiO3M6MTQ6Im5hdmlnYXRpb25UeXBlIjtzOjE6IjAiO3M6MTQ6Im5hdmVnYXRpb25TaG93IjtzOjE6IjEiO3M6OToidGltZVNsaWRlIjtzOjE6IjYiO3M6MTA6ImF1dG9IZWlnaHQiO3M6MToiMCI7fQ==');

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BlockTypes`;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` text COLLATE utf8_unicode_ci,
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineAdd` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineEdit` tinyint(1) NOT NULL DEFAULT '0',
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`),
  KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BlockTypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btSupportsInlineAdd`, `btSupportsInlineEdit`, `btIgnorePageThemeGridFrameworkContainer`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
(1,	'core_area_layout',	'Area Layout',	'Proxy block for area layouts.',	0,	0,	1,	1,	1,	0,	0,	400,	400,	0),
(2,	'core_page_type_composer_control_output',	'Composer Control',	'Proxy block for blocks that need to be output through composer.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(3,	'core_scrapbook_display',	'Scrapbook Display',	'Proxy block for blocks pasted through the scrapbook.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(4,	'core_stack_display',	'Stack Display',	'Proxy block for stacks added through the UI.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(5,	'core_conversation',	'Conversation',	'Displays conversations on a page.',	1,	0,	0,	0,	0,	0,	28,	400,	400,	0),
(6,	'dashboard_featured_addon',	'Dashboard Featured Add-On',	'Features an add-on from concrete5.org.',	0,	0,	1,	0,	0,	0,	0,	300,	100,	0),
(7,	'dashboard_featured_theme',	'Dashboard Featured Theme',	'Features a theme from concrete5.org.',	0,	0,	1,	0,	0,	0,	0,	300,	100,	0),
(8,	'dashboard_newsflow_latest',	'Dashboard Newsflow Latest',	'Grabs the latest newsflow data from concrete5.org.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(9,	'dashboard_app_status',	'Dashboard App Status',	'Displays update and welcome back information on your dashboard.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(10,	'dashboard_site_activity',	'Dashboard Site Activity',	'Displays a summary of website activity.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(11,	'autonav',	'Auto-Nav',	'Creates navigation trees and sitemaps.',	0,	0,	0,	0,	0,	0,	27,	800,	350,	0),
(12,	'content',	'Content',	'HTML/WYSIWYG Editor Content.',	0,	0,	0,	1,	1,	0,	29,	600,	465,	0),
(13,	'date_navigation',	'Date Navigation',	'Displays a list of months to filter a page list by.',	0,	0,	0,	0,	0,	0,	30,	400,	450,	0),
(14,	'external_form',	'External Form',	'Include external forms in the filesystem and place them on pages.',	0,	0,	0,	0,	0,	0,	40,	370,	175,	0),
(15,	'file',	'File',	'Link to files stored in the asset library.',	0,	0,	0,	0,	0,	0,	39,	300,	320,	0),
(16,	'page_attribute_display',	'Page Attribute Display',	'Displays the value of a page attribute for the current page.',	0,	0,	0,	0,	0,	0,	38,	500,	365,	0),
(17,	'form',	'Form',	'Build simple forms and surveys.',	0,	0,	0,	0,	0,	0,	37,	420,	430,	0),
(18,	'page_title',	'Page Title',	'Displays a Page\'s Title',	0,	0,	0,	0,	0,	0,	36,	400,	400,	0),
(19,	'feature',	'Feature',	'Displays an icon, a title, and a short paragraph description.',	0,	0,	0,	0,	0,	0,	35,	400,	520,	0),
(20,	'topic_list',	'Topic List',	'Displays a list of your site\'s topics, allowing you to click on them to filter a page list.',	0,	0,	0,	0,	0,	0,	34,	400,	400,	0),
(21,	'social_links',	'Social Links',	'Allows users to add social icons to their website',	0,	0,	0,	0,	0,	0,	33,	400,	400,	0),
(22,	'testimonial',	'Testimonial',	'Displays a quote or paragraph next to biographical information and a person\'s picture.',	0,	0,	0,	0,	0,	0,	32,	450,	560,	0),
(23,	'share_this_page',	'Share This Page',	'Allows users to share this page with social networks.',	0,	0,	0,	0,	0,	0,	31,	400,	400,	0),
(24,	'google_map',	'Google Map',	'Enter an address and a Google Map of that location will be placed in your page.',	0,	0,	0,	0,	0,	0,	26,	400,	320,	0),
(25,	'html',	'HTML',	'For adding HTML by hand.',	0,	0,	0,	0,	0,	1,	25,	600,	500,	0),
(26,	'horizontal_rule',	'Horizontal Rule',	'Adds a thin hairline horizontal divider to the page.',	0,	0,	0,	0,	0,	1,	24,	400,	400,	0),
(27,	'image',	'Image',	'Adds images and onstates from the library to pages.',	0,	0,	0,	0,	0,	0,	12,	400,	550,	0),
(28,	'faq',	'FAQ',	'Frequently Asked Questions Block',	0,	0,	0,	0,	0,	0,	11,	600,	465,	0),
(29,	'next_previous',	'Next & Previous Nav',	'Navigate through sibling pages.',	0,	0,	0,	0,	0,	0,	10,	430,	400,	0),
(30,	'page_list',	'Page List',	'List pages based on type, area.',	0,	0,	0,	0,	0,	0,	9,	800,	350,	0),
(31,	'rss_displayer',	'RSS Displayer',	'Fetch, parse and display the contents of an RSS or Atom feed.',	0,	0,	0,	0,	0,	0,	8,	400,	550,	0),
(32,	'search',	'Search',	'Add a search box to your site.',	0,	0,	0,	0,	0,	0,	7,	400,	420,	0),
(33,	'image_slider',	'Image Slider',	'Display your images and captions in an attractive slideshow format.',	0,	0,	0,	0,	0,	1,	6,	600,	550,	0),
(34,	'survey',	'Survey',	'Provide a simple survey, along with results in a pie chart format.',	0,	0,	0,	0,	0,	0,	5,	420,	400,	0),
(35,	'switch_language',	'Switch Language',	'Adds a front-end language switcher to your website.',	0,	0,	0,	0,	0,	0,	4,	500,	150,	0),
(36,	'tags',	'Tags',	'List pages based on type, area.',	0,	0,	0,	0,	0,	0,	3,	450,	439,	0),
(37,	'video',	'Video Player',	'Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.',	0,	0,	0,	0,	0,	0,	13,	320,	270,	0),
(38,	'youtube',	'YouTube Video',	'Embeds a YouTube Video in your web page.',	0,	0,	0,	0,	0,	0,	14,	400,	490,	0),
(39,	'transparenciaactiva',	'Transparencia Activa',	'Administrador de Transparencia Activa permite insertar por cada bloque un conjunto de archivos del mismo tema, y asociarle un Autor del mismo como asi tambien indicar a que mes corresponde',	0,	0,	0,	0,	0,	0,	23,	1024,	600,	0),
(40,	'listaritems',	'Galería de Fotos',	'Despliega una lista de Imagenes Dinamicas!!',	0,	0,	0,	0,	0,	1,	22,	1024,	600,	0),
(41,	'boton',	'Boton',	'Agrega un Boton al sitio web',	0,	0,	0,	0,	0,	0,	21,	950,	400,	0),
(42,	'agregarslider',	'Slider de Fotos',	'Despliega tus imagenes o noticias en un Slider de Fotos!!',	0,	0,	0,	0,	0,	1,	20,	700,	500,	0),
(43,	'generarcalendario',	'Calendario',	'Administrador del Calendario',	0,	0,	0,	0,	0,	0,	19,	1024,	750,	0),
(45,	'iframe',	'Iframe Popup',	'Agrega un Popup con Iframe',	0,	0,	0,	0,	0,	0,	18,	400,	550,	0),
(46,	'leytransparencia',	'Ley 5189/14',	'Administrador de la Ley Transparencia 5189/14',	0,	0,	0,	0,	0,	0,	17,	600,	500,	0),
(47,	'listartramites',	'Lista de Tramites',	'Despliega una lista de Trámites que la Institución Ofrece!!',	0,	0,	0,	0,	0,	1,	16,	1024,	750,	0),
(49,	'event_calendar',	'Event Calendar',	'',	0,	0,	0,	0,	0,	0,	15,	400,	200,	2),
(50,	'sb_breadcrumb_trail',	'Breadcrumb Trail',	'Add breadcrumb trail links to your website',	0,	0,	0,	0,	0,	0,	2,	400,	100,	3),
(51,	'vivid_thumb_gallery',	'Thumb Gallery',	'Add a Gallery of Images',	0,	0,	0,	0,	0,	0,	1,	800,	465,	4),
(61,	'mapas',	'Mapas Senatics',	'Introduzca una dirección y un mapa de Google de la ubicación Que se colocará en su página.',	0,	0,	0,	0,	0,	0,	0,	1050,	500,	0);

DROP TABLE IF EXISTS `BlockTypeSetBlockTypes`;
CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BlockTypeSetBlockTypes` (`btID`, `btsID`, `displayOrder`) VALUES
(12,	1,	0),
(25,	1,	1),
(27,	1,	2),
(15,	1,	3),
(26,	1,	4),
(19,	1,	5),
(11,	2,	0),
(18,	2,	1),
(28,	2,	2),
(30,	2,	3),
(29,	2,	4),
(13,	2,	5),
(36,	2,	6),
(20,	2,	7),
(31,	2,	8),
(35,	2,	9),
(50,	2,	10),
(17,	3,	0),
(32,	3,	1),
(14,	3,	2),
(34,	4,	0),
(5,	4,	1),
(21,	4,	2),
(22,	4,	3),
(23,	4,	4),
(16,	5,	0),
(33,	5,	1),
(37,	5,	2),
(38,	5,	3),
(24,	5,	4);

DROP TABLE IF EXISTS `BlockTypeSets`;
CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BlockTypeSets` (`btsID`, `btsName`, `btsHandle`, `pkgID`, `btsDisplayOrder`) VALUES
(1,	'Basic',	'basic',	0,	0),
(2,	'Navigation',	'navigation',	0,	0),
(3,	'Forms',	'form',	0,	0),
(4,	'Social Networking',	'social',	0,	0),
(5,	'Multimedia',	'multimedia',	0,	0);

DROP TABLE IF EXISTS `btBoton`;
CREATE TABLE `btBoton` (
  `bID` int(10) unsigned NOT NULL,
  `texto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alineacion_icono` tinyint(1) DEFAULT '1',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `target` smallint(5) unsigned DEFAULT '0',
  `tamanho_fuente` smallint(5) unsigned DEFAULT '12',
  `color_fuente` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#FFF',
  `alineacion_fuente` tinyint(1) DEFAULT '1',
  `color_fondo` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#428bca',
  `padding` smallint(5) unsigned DEFAULT '10',
  `ancho` varchar(5) COLLATE utf8_unicode_ci DEFAULT 'auto',
  `ancho_formato` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'px',
  `alineacion_boton` tinyint(1) DEFAULT '1',
  `fID` int(10) unsigned DEFAULT NULL,
  `color_fuente_hover` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#FFF',
  `color_fondo_hover` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#5A9FdF',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btBoton` (`bID`, `texto`, `icon`, `alineacion_icono`, `externalLink`, `internalLinkCID`, `target`, `tamanho_fuente`, `color_fuente`, `alineacion_fuente`, `color_fondo`, `padding`, `ancho`, `ancho_formato`, `alineacion_boton`, `fID`, `color_fuente_hover`, `color_fondo_hover`) VALUES
(202,	'Descargar Documentos',	'download',	0,	'',	0,	0,	10,	'#f2f2f2',	0,	'#d71e1e',	5,	'',	'px',	0,	21,	'#000000',	'#e65757'),
(203,	'Descargar Documentos',	'download',	0,	'',	0,	0,	20,	'#f2f2f2',	0,	'#d71e1e',	7,	'',	'px',	0,	21,	'#000000',	'#e65757'),
(204,	'Descargar Documentos',	'download',	0,	'',	0,	1,	20,	'#f2f2f2',	0,	'#d71e1e',	7,	'',	'px',	2,	21,	'#080808',	'#e65757');

DROP TABLE IF EXISTS `btCalendario`;
CREATE TABLE `btCalendario` (
  `bID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btCalendarioEntries`;
CREATE TABLE `btCalendarioEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `titulo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horaInicio` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `horaFin` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lugar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btContentFile`;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btContentFile` (`bID`, `fID`, `fileLinkText`, `filePassword`, `forceDownload`) VALUES
(201,	21,	'Descargar Documentos del Marco Legal',	NULL,	1);

DROP TABLE IF EXISTS `btContentIframe`;
CREATE TABLE `btContentIframe` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btContentImage`;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btContentImage` (`bID`, `fID`, `fOnstateID`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `altText`, `title`) VALUES
(12,	1,	0,	0,	0,	'',	0,	'',	''),
(13,	9,	0,	0,	0,	'',	0,	'',	''),
(18,	10,	0,	0,	0,	'http://www.senatics.gov.py',	0,	'SENATICs',	'SENATICs'),
(25,	10,	0,	0,	150,	'http://www.senatics.gov.py',	0,	'SENATICs',	'SENATICs'),
(26,	10,	0,	0,	85,	'http://www.senatics.gov.py',	0,	'SENATICs',	'SENATICs'),
(193,	4,	0,	0,	0,	'',	0,	'',	''),
(212,	22,	0,	0,	85,	'http://www.senatics.gov.py',	0,	'SENATICs',	'SENATICs'),
(417,	1,	0,	0,	0,	'',	1,	'',	'');

DROP TABLE IF EXISTS `btContentLocal`;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btContentLocal` (`bID`, `content`) VALUES
(1,	'<div style=\"padding: 40px; text-align: center\">\n<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/VB-R71zk06U\" frameborder=\"0\" allowfullscreen></iframe>\n                                    </div>'),
(19,	'<p>Portal construido conjuntamente con la <a href=\"http://www.senatics.gov.py\" target=\"_blank\">SENATICs</a>\r\n</p>\r\n<p>2015 Secretaría Nacional de Tecnologías de la Información y Comunicación\r\n</p>'),
(21,	'<div class=\"row\">\r\n    <div class=\"col l12 s6\"><a href=\"\" target=\"_blank\"><img src=\"/application/files/8214/5553/8044/acceso_informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://informacionpublica.paraguay.gov.py/\" target=\"_blank\"><img src=\"/application/files/5514/5553/8063/informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.denuncias.gov.py/ssps/\" target=\"_blank\"><img src=\"/application/files/9714/5553/8250/denuncias_btn.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.paraguay.gov.py/\" target=\"_blank\"><img src=\"/application/files/5814/5553/8250/portal_parauay_btn2.png\" style=\"width:100%\"></a></div>\r\n</div>\r\n'),
(22,	'<div class=\"row\">\r\n    <div class=\"col l12 s6\"><a href=\"\" target=\"_blank\"><img src=\"/template-concrete5/application/files/1114/5581/5455/acceso_informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://informacionpublica.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/8514/5581/5457/informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.denuncias.gov.py/ssps/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/4814/5581/5456/denuncias_btn.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/3014/5581/5456/portal_parauay_btn2.png\" style=\"width:100%\"></a></div>\r\n</div>\r\n'),
(28,	'<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div>'),
(29,	'<h3><i class=\"material-icons left small\" style=\"margin-top:-3px;\">description</i> Noticias</h3>'),
(42,	'<h4 style=\"text-align: center;\">Últimas publicaciones</h4>'),
(46,	'<p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"19\" id=\"image-marker\" width=\"425\" height=\"91\" style=\"width: 425px; height: 91px;\" /></p><h5>Secretaría Nacional de Tecnología de la Información y Comunicación</h5><h6>Diección: Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6>Telefono: (+595 21) 217-9000</h6><h6>Asuncion - Paraguay</h6>'),
(200,	'<p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p>'),
(281,	'<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p>'),
(300,	'<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p>'),
(304,	'<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p>'),
(305,	'<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p>'),
(308,	'<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p>'),
(326,	'<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p>'),
(327,	'<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p>'),
(330,	'<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p>'),
(338,	'<p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"3\" id=\"image-marker\" width=\"518\" height=\"346\" alt=\"\" style=\"width: 518px; height: 346px; float: left; margin: 0px 10px 10px 0px;\" /></p><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32<br></p><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32<span class=\"redactor-invisible-space\"><br></span></p>'),
(416,	'<p>Portal construido conjuntamente con la <a href=\"http://www.senatics.gov.py\" target=\"_blank\">SENATICs</a>\r\n</p><p>2016 Secretaría Nacional de Tecnologías de la Información y Comunicación\r\n</p>'),
(420,	'<div class=\"row\">\r\n    <div class=\"col l12 s6\"><a href=\"/transparencia\" target=\"_blank\"><img src=\"/template-concrete5/application/files/1114/5581/5455/acceso_informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://informacionpublica.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/8514/5581/5457/informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.denuncias.gov.py/ssps/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/4814/5581/5456/denuncias_btn.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/3014/5581/5456/portal_parauay_btn2.png\" style=\"width:100%\"></a></div>\r\n</div>\r\n'),
(421,	'<div class=\"row\">\r\n    <div class=\"col l12 s6\"><a href=\"/transparencia\" target=\"_self\"><img src=\"/template-concrete5/application/files/1114/5581/5455/acceso_informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://informacionpublica.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/8514/5581/5457/informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.denuncias.gov.py/ssps/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/4814/5581/5456/denuncias_btn.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/3014/5581/5456/portal_parauay_btn2.png\" style=\"width:100%\"></a></div>\r\n</div>\r\n'),
(422,	'<div class=\"row\">\r\n    <div class=\"col l12 s6\"><a href=\"/template-concrete5/index.php/transparencia\" target=\"_self\"><img src=\"/template-concrete5/application/files/1114/5581/5455/acceso_informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://informacionpublica.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/8514/5581/5457/informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.denuncias.gov.py/ssps/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/4814/5581/5456/denuncias_btn.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/3014/5581/5456/portal_parauay_btn2.png\" style=\"width:100%\"></a></div>\r\n</div>\r\n');

DROP TABLE IF EXISTS `btCoreAreaLayout`;
CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btCoreAreaLayout` (`bID`, `arLayoutID`) VALUES
(17,	1),
(20,	2),
(23,	3),
(33,	4),
(35,	5),
(44,	6),
(106,	7),
(133,	8),
(181,	9),
(183,	10),
(185,	11),
(187,	12),
(196,	13),
(197,	14),
(272,	15);

DROP TABLE IF EXISTS `btCoreConversation`;
CREATE TABLE `btCoreConversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btCorePageTypeComposerControlOutput`;
CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btCorePageTypeComposerControlOutput` (`bID`, `ptComposerOutputControlID`) VALUES
(9,	1),
(39,	4);

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btCoreScrapbookDisplay` (`bID`, `bOriginalID`) VALUES
(176,	175),
(184,	182),
(186,	182),
(198,	182);

DROP TABLE IF EXISTS `btCoreStackDisplay`;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btDashboardNewsflowLatest` (`bID`, `slot`) VALUES
(4,	'A'),
(5,	'B'),
(8,	'C');

DROP TABLE IF EXISTS `btDateNavigation`;
CREATE TABLE `btDateNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btDateNavigation` (`bID`, `title`, `filterByParent`, `redirectToResults`, `cParentID`, `cTargetID`, `ptID`) VALUES
(107,	'Archivos',	0,	0,	0,	0,	8),
(117,	'Archivos / Biblioteca',	0,	0,	0,	0,	8);

DROP TABLE IF EXISTS `btEventCalendar`;
CREATE TABLE `btEventCalendar` (
  `bID` int(10) unsigned NOT NULL,
  `calendarID` int(10) unsigned DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `contentHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btEventCalendar` (`bID`, `calendarID`, `lang`, `typeID`, `contentHeight`) VALUES
(175,	1,	'es',	'1',	'');

DROP TABLE IF EXISTS `btExternalForm`;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btFaq`;
CREATE TABLE `btFaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btFaqEntries`;
CREATE TABLE `btFaqEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btFeature`;
CREATE TABLE `btFeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btFeature` (`bID`, `icon`, `title`, `paragraph`, `externalLink`, `internalLinkCID`) VALUES
(188,	'bookmark',	'Misión',	'<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.</p>',	'',	0),
(191,	'binoculars',	'Visión',	'<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.</p>',	'',	0),
(192,	'cubes',	'Misión',	'<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.</p>',	'',	0);

DROP TABLE IF EXISTS `btForm`;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btForm` (`bID`, `questionSetId`, `surveyName`, `submitText`, `thankyouMsg`, `notifyMeOnSubmission`, `recipientEmail`, `displayCaptcha`, `redirectCID`, `addFilesToSet`) VALUES
(45,	1455879504,	'Contacto',	'Enviar mensaje',	'Gracias, nos pondremos en contacto contigo lo antes posible!',	0,	'',	1,	0,	0);

DROP TABLE IF EXISTS `btFormAnswers`;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btFormAnswerSet`;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btFormQuestions`;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btFormQuestions` (`qID`, `msqID`, `bID`, `questionSetId`, `question`, `inputType`, `options`, `position`, `width`, `height`, `defaultDate`, `required`) VALUES
(1,	1,	45,	1455879504,	'Nombre y Apellido',	'field',	'',	1000,	50,	3,	'',	0),
(2,	2,	45,	1455879504,	'Correo Electrónico',	'email',	'a:1:{s:22:\"send_notification_from\";i:0;}',	1000,	50,	3,	'',	0),
(3,	3,	45,	1455879504,	'Mensaje',	'text',	'',	1000,	50,	3,	'',	0);

DROP TABLE IF EXISTS `btGoogleMap`;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btGoogleMap` (`bID`, `title`, `location`, `latitude`, `longitude`, `zoom`, `width`, `height`, `scrollwheel`) VALUES
(340,	'Mi mapa',	'Asunción, Paraguay',	-25.26373989999999,	-57.57592599999998,	14,	'100%',	'400px',	1),
(410,	'',	'Secretaría Nacional de Tecnologías de la Información y Comunicación - SENATICs, Avenida General Máximo Santos, Asunción, Paraguay',	-25.2799849,	-57.60878560000003,	14,	'100%',	'400px',	1);

DROP TABLE IF EXISTS `btImageSlider`;
CREATE TABLE `btImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  `timeout` int(10) unsigned DEFAULT NULL,
  `speed` int(10) unsigned DEFAULT NULL,
  `noAnimate` int(10) unsigned DEFAULT NULL,
  `pause` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btImageSliderEntries`;
CREATE TABLE `btImageSliderEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btLeyTransparencia`;
CREATE TABLE `btLeyTransparencia` (
  `bID` int(10) unsigned NOT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btLeyTransparencia` (`bID`, `internalLinkCID`) VALUES
(27,	0);

DROP TABLE IF EXISTS `btLeyTransparenciaEntries`;
CREATE TABLE `btLeyTransparenciaEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btListaItems`;
CREATE TABLE `btListaItems` (
  `bID` int(10) unsigned NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantItemsPag` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btListaItemsEntries`;
CREATE TABLE `btListaItemsEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btListarTramites`;
CREATE TABLE `btListarTramites` (
  `bID` int(10) unsigned NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantItemsPag` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btListarTramitesEntries`;
CREATE TABLE `btListarTramitesEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sitio_web` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `institucion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_servicio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producto` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canal` text COLLATE utf8_unicode_ci,
  `area_servicio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `audiencia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tramite` text COLLATE utf8_unicode_ci,
  `etiqueta` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentacion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tiempo_estimado` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forma_pago` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `atencion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo_servicio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formulario` text COLLATE utf8_unicode_ci,
  `online` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btMapas`;
CREATE TABLE `btMapas` (
  `bID` int(10) unsigned NOT NULL,
  `titulo_mapa` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zoom` int(11) DEFAULT '14',
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` longblob NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btMapas` (`bID`, `titulo_mapa`, `zoom`, `width`, `height`, `scrollwheel`) VALUES
(415,	'mi test',	13,	'100%',	'400px',	'1');

DROP TABLE IF EXISTS `btMapasEntries`;
CREATE TABLE `btMapasEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `icono` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btMapasEntries` (`id`, `bID`, `titulo`, `location`, `descripcion`, `latitud`, `longitud`, `orden`, `icono`) VALUES
(308,	415,	'punto 1',	NULL,	'&lt;p&gt;&lt;img id=&quot;image-marker&quot; src=&quot;http://localhost/template-concrete5/index.php/download_file/view_inline/20&quot; width=&quot;101&quot; height=&quot;100&quot; alt=&quot;&quot; style=&quot;width: 101px; height: 100px; float: left; margin: 0px 10px 10px 0px;&quot;&gt;&lt;/p&gt;&lt;p&gt;mi &lt;a href=&quot;http://localhost/template-concrete5/index.php/download_file/view/21&quot; target=&quot;_blank&quot;&gt;enlace&lt;/a&gt; &lt;/p&gt;',	-25.2799849,	-57.6373037,	0,	2),
(309,	415,	'Punto 2',	NULL,	'&lt;p&gt;descripcion&lt;/p&gt;',	-25.2711849,	-57.6067856,	1,	1),
(310,	415,	'punto 3',	NULL,	'&lt;p&gt;descripcion&lt;/p&gt;&lt;p data-redactor-inserted-image=&quot;true&quot;&gt;&lt;img id=&quot;image-marker&quot; src=&quot;http://localhost/template-concrete5/index.php/download_file/view_inline/15&quot; width=&quot;246&quot; height=&quot;110&quot; style=&quot;width: 246px; height: 110px;&quot;&gt;&lt;/p&gt;',	-25.2711849,	-57.6185856,	2,	4);

DROP TABLE IF EXISTS `btNavigation`;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0',
  `displaySystemPages` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btNavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`, `displaySystemPages`) VALUES
(11,	'display_asc',	'top',	0,	0,	'relevant_breadcrumb',	'all',	0,	0,	0),
(16,	'display_asc',	'top',	0,	0,	'all',	'all',	0,	0,	0),
(30,	'display_asc',	'top',	0,	0,	'all',	'all',	0,	0,	0),
(31,	'display_asc',	'top',	0,	0,	'all',	'all',	0,	0,	0),
(32,	'display_asc',	'top',	0,	0,	'all',	'all',	0,	0,	0),
(34,	'display_asc',	'top',	0,	0,	'all',	'all',	0,	0,	0),
(38,	'display_asc',	'top',	0,	0,	'relevant_breadcrumb',	'all',	0,	0,	0),
(182,	'display_asc',	'second_level',	0,	0,	'none',	'enough',	0,	0,	0),
(211,	'display_asc',	'top',	0,	0,	'relevant_breadcrumb',	'enough',	0,	0,	0);

DROP TABLE IF EXISTS `btNextPrevious`;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btPageAttributeDisplay`;
CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btPageAttributeDisplay` (`bID`, `attributeHandle`, `attributeTitleText`, `displayTag`, `dateFormat`, `thumbnailHeight`, `thumbnailWidth`) VALUES
(36,	'rpv_pageDateCreated',	'Publicado: ',	'blockquote',	'm/d/y h:i:a',	250,	250);

DROP TABLE IF EXISTS `btPageList`;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) unsigned NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btPageList` (`bID`, `num`, `orderBy`, `cParentID`, `cThis`, `useButtonForLink`, `buttonLinkText`, `pageListTitle`, `filterByRelated`, `filterByCustomTopic`, `filterDateOption`, `filterDateDays`, `filterDateStart`, `filterDateEnd`, `relatedTopicAttributeKeyHandle`, `customTopicAttributeKeyHandle`, `customTopicTreeNodeID`, `includeName`, `includeDescription`, `includeDate`, `includeAllDescendents`, `paginate`, `displayAliases`, `enableExternalFiltering`, `ptID`, `pfID`, `truncateSummaries`, `displayFeaturedOnly`, `noResultsMessage`, `displayThumbnail`, `truncateChars`) VALUES
(43,	6,	'chrono_desc',	0,	0,	1,	'ver info',	'',	0,	0,	'',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	0,	0,	0,	0,	0,	8,	0,	0,	0,	'No hay publicaciones',	1,	0),
(47,	4,	'chrono_desc',	0,	0,	0,	'',	'',	0,	0,	'',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	0,	0,	0,	0,	8,	0,	1,	0,	'No hay publicación',	1,	300),
(108,	10,	'chrono_desc',	0,	0,	0,	'',	'',	1,	0,	'',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	0,	1,	0,	1,	8,	0,	0,	0,	'No hay Publicación',	1,	0),
(120,	10,	'chrono_desc',	0,	0,	0,	'',	'',	1,	0,	'',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	0,	1,	0,	1,	8,	0,	0,	0,	'No hay Publicación',	1,	0),
(195,	0,	'display_asc',	156,	1,	0,	'',	'',	0,	0,	'',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	'',	0,	0),
(214,	8,	'chrono_desc',	0,	0,	1,	'Abrir Álbum',	'',	0,	0,	'all',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	0,	1,	0,	0,	9,	0,	0,	0,	'No hay álbum disponible!',	1,	0);

DROP TABLE IF EXISTS `btPageTitle`;
CREATE TABLE `btPageTitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btPageTitle` (`bID`, `useCustomTitle`, `titleText`, `formatting`) VALUES
(10,	0,	'[Título de la Página]',	'h4'),
(37,	0,	'[Título de la Página]',	'h5'),
(208,	0,	'[Título de la Página]',	'h4');

DROP TABLE IF EXISTS `btRssDisplay`;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btSbBreadcrumbTrail`;
CREATE TABLE `btSbBreadcrumbTrail` (
  `bID` int(10) unsigned NOT NULL,
  `delimiter` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btSearch`;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btSearch` (`bID`, `title`, `buttonText`, `baseSearchPath`, `postTo_cID`, `resultsURL`) VALUES
(14,	'',	'Buscar',	'',	'',	''),
(15,	'',	'',	'',	'',	''),
(134,	'',	'',	'',	'168',	''),
(135,	'',	'Buscar',	'',	'',	''),
(136,	'',	'Buscar',	'',	'',	'');

DROP TABLE IF EXISTS `btShareThisPage`;
CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btShareThisPage` (`btShareThisPageID`, `bID`, `service`, `displayOrder`) VALUES
(1,	41,	'facebook',	0),
(2,	41,	'twitter',	1),
(3,	41,	'linkedin',	2),
(4,	41,	'reddit',	3),
(5,	41,	'pinterest',	4),
(6,	41,	'google_plus',	5),
(7,	41,	'print',	6),
(8,	41,	'email',	7);

DROP TABLE IF EXISTS `btSlider`;
CREATE TABLE `btSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  `navegationShow` int(10) unsigned DEFAULT '0',
  `timeSlide` int(10) unsigned DEFAULT '7',
  `autoHeight` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btSlider` (`bID`, `navigationType`, `navegationShow`, `timeSlide`, `autoHeight`) VALUES
(24,	0,	1,	6,	0),
(418,	0,	1,	6,	0),
(419,	0,	1,	6,	0),
(423,	0,	1,	6,	0),
(424,	0,	1,	6,	0);

DROP TABLE IF EXISTS `btSliderEntries`;
CREATE TABLE `btSliderEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` longtext COLLATE utf8_unicode_ci,
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btSliderEntries` (`id`, `bID`, `cID`, `fID`, `linkURL`, `title`, `description`, `sortOrder`) VALUES
(1,	24,	0,	15,	'',	'Titulo del Slide',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>',	0),
(2,	24,	0,	16,	'',	'',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>',	1),
(5,	418,	0,	15,	'',	'Titulo del Slide',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las <a href=\"http://localhost/template-concrete5/index.php?cID=169\">industrias</a> desde el año 1500</p>',	0),
(6,	418,	0,	16,	'',	'',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>',	1),
(9,	419,	0,	15,	'',	'Titulo del Slide',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>',	0),
(10,	419,	0,	16,	'',	'',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>',	1),
(13,	423,	0,	15,	'',	'Titulo del Slide1',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>',	0),
(14,	423,	0,	16,	'',	'',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>',	1),
(17,	424,	0,	15,	'',	'Titulo del Slide',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>',	0),
(18,	424,	0,	16,	'',	'',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>',	1);

DROP TABLE IF EXISTS `btSocialLinks`;
CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btSurvey`;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btSurveyOptions`;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btSurveyResults`;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btSwitchLanguage`;
CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btTags`;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btTags` (`bID`, `title`, `targetCID`, `displayMode`, `cloudCount`) VALUES
(271,	'Etiquetas:',	158,	'page',	0),
(282,	'Etiquetas:',	158,	'page',	0),
(284,	'Etiquetas',	158,	'cloud',	20);

DROP TABLE IF EXISTS `btTestimonial`;
CREATE TABLE `btTestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btTestimonial` (`bID`, `fID`, `name`, `position`, `company`, `companyURL`, `paragraph`) VALUES
(194,	20,	'Nombre de la Persona',	'Cargo / Ocupación',	'Nombre de la Institución',	'',	'Biografía / ​informaciones de contacto.\r\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.');

DROP TABLE IF EXISTS `btTopicList`;
CREATE TABLE `btTopicList` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btTopicList` (`bID`, `mode`, `topicAttributeKeyHandle`, `topicTreeID`, `cParentID`, `title`) VALUES
(118,	'P',	'',	0,	0,	'Temas / Etiquetas'),
(119,	'S',	'',	2,	0,	'Temas / Etiquetas'),
(125,	'S',	'temas',	2,	0,	'Temas / Categorías'),
(258,	'P',	'temas',	2,	158,	'Categorías:'),
(283,	'P',	'temas',	2,	158,	'Categorías:');

DROP TABLE IF EXISTS `btTransparenciaActiva`;
CREATE TABLE `btTransparenciaActiva` (
  `bID` int(10) unsigned NOT NULL,
  `titulo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `resumen` text COLLATE utf8_unicode_ci,
  `autor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btTransparenciaActivaEntries`;
CREATE TABLE `btTransparenciaActivaEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `texto_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btVideo`;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btVividThumbGallery`;
CREATE TABLE `btVividThumbGallery` (
  `bID` int(10) unsigned NOT NULL,
  `fileset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbWidth` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbHeight` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageWidth` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageHeight` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zoomType` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cols` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `colsMobile` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btVividThumbGallery` (`bID`, `fileset`, `thumbWidth`, `thumbHeight`, `imageWidth`, `imageHeight`, `zoomType`, `cols`, `colsMobile`) VALUES
(210,	'1',	'300',	'220',	'800',	'600',	'lightbox',	'4',	'2');

DROP TABLE IF EXISTS `btVividThumbGalleryThumb`;
CREATE TABLE `btVividThumbGalleryThumb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btVividThumbGalleryThumb` (`id`, `bID`, `fID`, `sort`) VALUES
(1,	210,	5,	0),
(2,	210,	3,	1),
(3,	210,	2,	2),
(4,	210,	6,	3);

DROP TABLE IF EXISTS `btYouTube`;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizing` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoplay` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controls` int(10) unsigned DEFAULT NULL,
  `iv_load_policy` int(10) unsigned DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT '0',
  `modestbranding` tinyint(1) NOT NULL DEFAULT '0',
  `rel` tinyint(1) NOT NULL DEFAULT '0',
  `showinfo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `CollectionAttributeValues`;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionAttributeValues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(2,	1,	4,	1),
(3,	1,	3,	2),
(4,	1,	3,	3),
(5,	1,	3,	4),
(6,	1,	3,	5),
(8,	1,	3,	6),
(9,	1,	3,	7),
(10,	1,	3,	8),
(11,	1,	5,	9),
(11,	1,	3,	10),
(12,	1,	3,	11),
(13,	1,	3,	12),
(14,	1,	3,	13),
(15,	1,	3,	14),
(16,	1,	3,	15),
(16,	1,	5,	16),
(17,	1,	3,	17),
(17,	1,	5,	18),
(19,	1,	3,	19),
(20,	1,	3,	20),
(22,	1,	3,	21),
(23,	1,	3,	22),
(24,	1,	3,	23),
(25,	1,	3,	24),
(26,	1,	3,	25),
(28,	1,	3,	26),
(29,	1,	3,	27),
(29,	1,	5,	28),
(31,	1,	5,	29),
(32,	1,	5,	30),
(33,	1,	5,	31),
(34,	1,	5,	32),
(35,	1,	5,	33),
(36,	1,	5,	34),
(38,	1,	5,	35),
(39,	1,	3,	36),
(40,	1,	3,	37),
(41,	1,	3,	38),
(43,	1,	4,	39),
(44,	1,	3,	40),
(48,	1,	3,	41),
(50,	1,	5,	42),
(50,	1,	10,	43),
(50,	1,	3,	44),
(51,	1,	3,	45),
(52,	1,	3,	46),
(53,	1,	5,	47),
(54,	1,	3,	48),
(55,	1,	3,	49),
(56,	1,	3,	50),
(56,	1,	5,	51),
(57,	1,	3,	52),
(58,	1,	3,	53),
(59,	1,	3,	54),
(61,	1,	3,	55),
(62,	1,	3,	56),
(63,	1,	3,	57),
(64,	1,	3,	58),
(65,	1,	3,	59),
(66,	1,	3,	60),
(67,	1,	3,	61),
(68,	1,	3,	62),
(74,	1,	3,	63),
(75,	1,	3,	64),
(76,	1,	3,	65),
(77,	1,	3,	66),
(78,	1,	3,	67),
(80,	1,	3,	68),
(81,	1,	3,	69),
(82,	1,	3,	70),
(83,	1,	3,	71),
(84,	1,	3,	72),
(86,	1,	3,	73),
(87,	1,	3,	74),
(88,	1,	3,	75),
(89,	1,	3,	76),
(91,	1,	3,	77),
(92,	1,	3,	78),
(95,	1,	3,	79),
(96,	1,	3,	80),
(97,	1,	3,	81),
(98,	1,	3,	82),
(100,	1,	3,	83),
(101,	1,	3,	84),
(102,	1,	3,	85),
(103,	1,	3,	86),
(104,	1,	3,	87),
(105,	1,	3,	88),
(106,	1,	3,	89),
(107,	1,	3,	90),
(108,	1,	3,	91),
(109,	1,	3,	92),
(110,	1,	3,	93),
(111,	1,	3,	94),
(113,	1,	3,	95),
(114,	1,	3,	96),
(115,	1,	3,	97),
(116,	1,	3,	98),
(118,	1,	10,	99),
(119,	1,	3,	100),
(120,	1,	3,	101),
(121,	1,	3,	102),
(122,	1,	3,	103),
(123,	1,	3,	104),
(124,	1,	3,	105),
(126,	1,	3,	106),
(127,	1,	5,	107),
(128,	1,	5,	108),
(128,	1,	10,	109),
(129,	1,	4,	110),
(130,	1,	4,	111),
(131,	1,	4,	112),
(134,	1,	4,	113),
(1,	5,	1,	142),
(1,	6,	1,	142),
(1,	7,	1,	142),
(1,	8,	1,	142),
(1,	5,	2,	143),
(1,	6,	2,	143),
(1,	7,	2,	143),
(1,	8,	2,	143),
(1,	5,	7,	144),
(1,	6,	7,	144),
(1,	7,	7,	144),
(1,	8,	7,	144),
(1,	5,	11,	145),
(1,	6,	11,	145),
(1,	7,	11,	145),
(1,	8,	11,	145),
(1,	9,	1,	150),
(1,	9,	2,	151),
(1,	9,	7,	152),
(1,	9,	11,	153),
(1,	10,	1,	154),
(1,	11,	1,	154),
(1,	10,	2,	155),
(1,	11,	2,	155),
(1,	10,	7,	156),
(1,	11,	7,	156),
(1,	10,	11,	157),
(1,	11,	11,	157),
(1,	12,	1,	158),
(1,	13,	1,	158),
(1,	12,	2,	159),
(1,	13,	2,	159),
(1,	12,	7,	160),
(1,	13,	7,	160),
(1,	12,	11,	161),
(1,	13,	11,	161),
(1,	14,	1,	164),
(1,	15,	1,	164),
(1,	14,	2,	165),
(1,	15,	2,	165),
(1,	14,	7,	166),
(1,	15,	7,	166),
(1,	14,	11,	167),
(1,	15,	11,	167),
(1,	14,	18,	168),
(1,	15,	18,	168),
(1,	16,	18,	168),
(1,	17,	18,	168),
(1,	18,	18,	168),
(156,	1,	5,	169),
(156,	2,	5,	169),
(157,	1,	5,	172),
(157,	2,	5,	172),
(157,	3,	5,	172),
(158,	1,	5,	173),
(158,	2,	5,	173),
(158,	3,	5,	173),
(158,	4,	5,	173),
(158,	5,	5,	173),
(158,	6,	5,	173),
(158,	7,	5,	173),
(158,	8,	5,	173),
(158,	9,	5,	173),
(161,	1,	5,	176),
(162,	1,	5,	177),
(162,	2,	5,	178),
(162,	3,	5,	178),
(162,	4,	5,	178),
(162,	5,	5,	178),
(162,	6,	5,	178),
(162,	7,	5,	178),
(162,	8,	5,	178),
(162,	9,	5,	178),
(162,	10,	5,	178),
(162,	11,	5,	178),
(162,	12,	5,	178),
(162,	13,	5,	178),
(162,	14,	5,	178),
(162,	15,	5,	178),
(162,	16,	5,	178),
(162,	17,	5,	178),
(162,	18,	5,	178),
(162,	19,	5,	178),
(162,	20,	5,	178),
(162,	21,	5,	178),
(162,	22,	5,	178),
(162,	23,	5,	178),
(162,	24,	5,	178),
(162,	25,	5,	178),
(162,	26,	5,	178),
(162,	27,	5,	178),
(162,	28,	5,	178),
(162,	29,	5,	178),
(162,	30,	5,	178),
(162,	31,	5,	178),
(162,	32,	5,	178),
(162,	33,	5,	178),
(162,	34,	5,	178),
(162,	35,	5,	178),
(162,	36,	5,	178),
(162,	37,	5,	178),
(162,	38,	5,	178),
(162,	39,	5,	178),
(162,	40,	5,	178),
(162,	41,	5,	178),
(162,	42,	5,	178),
(162,	43,	5,	178),
(162,	44,	5,	178),
(162,	45,	5,	178),
(162,	46,	5,	178),
(162,	47,	5,	178),
(162,	48,	5,	178),
(162,	49,	5,	178),
(162,	50,	5,	178),
(162,	51,	5,	178),
(162,	52,	5,	178),
(162,	53,	5,	178),
(162,	54,	5,	178),
(162,	55,	5,	178),
(162,	56,	5,	178),
(162,	57,	5,	178),
(162,	58,	5,	178),
(162,	59,	5,	178),
(162,	60,	5,	178),
(162,	61,	5,	178),
(162,	62,	5,	178),
(162,	63,	5,	178),
(162,	64,	5,	178),
(162,	65,	5,	178),
(162,	66,	5,	178),
(162,	67,	5,	178),
(162,	68,	5,	178),
(162,	69,	5,	178),
(162,	70,	5,	178),
(162,	71,	5,	178),
(162,	72,	5,	178),
(162,	73,	5,	178),
(162,	74,	5,	178),
(162,	75,	5,	178),
(162,	76,	5,	178),
(162,	77,	5,	178),
(162,	78,	5,	178),
(162,	79,	5,	178),
(162,	80,	5,	178),
(162,	81,	5,	178),
(162,	82,	5,	178),
(162,	83,	5,	178),
(162,	84,	5,	178),
(162,	85,	5,	178),
(162,	86,	5,	178),
(162,	87,	5,	178),
(162,	88,	5,	178),
(162,	89,	5,	178),
(162,	90,	5,	178),
(162,	91,	5,	178),
(162,	92,	5,	178),
(162,	93,	5,	178),
(162,	94,	5,	178),
(1,	16,	1,	179),
(1,	16,	2,	180),
(1,	16,	7,	181),
(1,	16,	11,	182),
(1,	17,	1,	183),
(1,	17,	2,	184),
(1,	17,	7,	185),
(1,	17,	11,	186),
(1,	18,	1,	187),
(1,	18,	2,	188),
(1,	18,	7,	189),
(1,	18,	11,	190),
(1,	19,	1,	191),
(1,	19,	2,	192),
(1,	19,	7,	193),
(1,	19,	11,	194),
(1,	19,	18,	195),
(1,	20,	1,	196),
(1,	21,	1,	196),
(1,	22,	1,	196),
(1,	23,	1,	196),
(1,	24,	1,	196),
(1,	25,	1,	196),
(1,	26,	1,	196),
(1,	27,	1,	196),
(1,	28,	1,	196),
(1,	29,	1,	196),
(1,	30,	1,	196),
(1,	31,	1,	196),
(1,	20,	2,	197),
(1,	21,	2,	197),
(1,	22,	2,	197),
(1,	23,	2,	197),
(1,	24,	2,	197),
(1,	25,	2,	197),
(1,	26,	2,	197),
(1,	27,	2,	197),
(1,	28,	2,	197),
(1,	29,	2,	197),
(1,	30,	2,	197),
(1,	31,	2,	197),
(1,	20,	7,	198),
(1,	21,	7,	198),
(1,	22,	7,	198),
(1,	23,	7,	198),
(1,	24,	7,	198),
(1,	25,	7,	198),
(1,	26,	7,	198),
(1,	27,	7,	198),
(1,	28,	7,	198),
(1,	29,	7,	198),
(1,	30,	7,	198),
(1,	31,	7,	198),
(1,	20,	11,	199),
(1,	21,	11,	199),
(1,	22,	11,	199),
(1,	23,	11,	199),
(1,	24,	11,	199),
(1,	25,	11,	199),
(1,	26,	11,	199),
(1,	27,	11,	199),
(1,	28,	11,	199),
(1,	29,	11,	199),
(1,	30,	11,	199),
(1,	31,	11,	199),
(163,	1,	5,	200),
(188,	1,	5,	200),
(188,	2,	5,	200),
(188,	3,	5,	200),
(188,	4,	5,	200),
(188,	5,	5,	200),
(188,	6,	5,	200),
(189,	1,	5,	200),
(189,	2,	5,	200),
(190,	1,	5,	200),
(190,	2,	5,	200),
(190,	3,	5,	200),
(190,	4,	5,	200),
(168,	1,	5,	231),
(168,	2,	5,	231),
(168,	3,	5,	231),
(168,	4,	5,	231),
(169,	1,	5,	235),
(169,	2,	5,	235),
(169,	3,	5,	235),
(169,	4,	5,	235),
(169,	5,	5,	235),
(169,	6,	5,	235),
(169,	7,	5,	235),
(169,	8,	5,	235),
(169,	9,	5,	235),
(169,	10,	5,	235),
(169,	11,	5,	235),
(169,	12,	5,	235),
(169,	13,	5,	235),
(169,	14,	5,	235),
(169,	15,	5,	235),
(169,	16,	5,	235),
(169,	17,	5,	235),
(169,	18,	5,	235),
(169,	19,	5,	235),
(177,	1,	5,	236),
(177,	2,	5,	236),
(177,	3,	5,	236),
(178,	1,	5,	237),
(178,	2,	5,	237),
(178,	3,	5,	237),
(179,	1,	5,	238),
(179,	2,	5,	238),
(179,	3,	5,	238),
(180,	1,	5,	241),
(180,	2,	5,	241),
(180,	3,	5,	241),
(180,	4,	5,	241),
(180,	5,	5,	241),
(180,	6,	5,	241),
(181,	1,	5,	244),
(185,	1,	5,	244),
(185,	1,	19,	250),
(163,	1,	8,	257),
(188,	1,	19,	258),
(188,	2,	19,	258),
(188,	3,	19,	258),
(188,	4,	19,	258),
(188,	1,	20,	259),
(188,	2,	20,	259),
(188,	3,	20,	259),
(188,	4,	20,	259),
(188,	1,	8,	260),
(188,	2,	8,	261),
(188,	3,	8,	261),
(188,	4,	8,	261),
(158,	8,	8,	262),
(158,	9,	8,	262),
(189,	1,	19,	266),
(189,	1,	20,	267),
(189,	1,	8,	268),
(188,	5,	19,	269),
(188,	5,	20,	270),
(188,	6,	19,	272),
(188,	6,	20,	273),
(189,	2,	19,	275),
(189,	2,	20,	276),
(189,	2,	8,	277),
(190,	1,	20,	279),
(190,	1,	8,	280),
(190,	2,	19,	281),
(190,	2,	20,	282),
(190,	2,	8,	283),
(190,	3,	19,	284),
(190,	3,	20,	285),
(190,	3,	8,	286),
(190,	4,	19,	287),
(190,	4,	20,	288),
(190,	4,	8,	289);

DROP TABLE IF EXISTS `Collections`;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1,	'2016-02-18 13:33:16',	'2016-03-29 08:56:21',	'home'),
(2,	'2016-02-18 13:33:45',	'2016-02-18 13:33:45',	'dashboard'),
(3,	'2016-02-18 13:33:46',	'2016-02-18 13:33:46',	'sitemap'),
(4,	'2016-02-18 13:33:46',	'2016-02-18 13:33:46',	'full'),
(5,	'2016-02-18 13:33:46',	'2016-02-18 13:33:46',	'explore'),
(6,	'2016-02-18 13:33:47',	'2016-02-18 13:33:47',	'search'),
(7,	'2016-02-18 13:33:47',	'2016-02-18 13:33:47',	'files'),
(8,	'2016-02-18 13:33:47',	'2016-02-18 13:33:48',	'search'),
(9,	'2016-02-18 13:33:48',	'2016-02-18 13:33:48',	'attributes'),
(10,	'2016-02-18 13:33:48',	'2016-02-18 13:33:48',	'sets'),
(11,	'2016-02-18 13:33:48',	'2016-02-18 13:33:49',	'add_set'),
(12,	'2016-02-18 13:33:49',	'2016-02-18 13:33:49',	'users'),
(13,	'2016-02-18 13:33:49',	'2016-02-18 13:33:49',	'search'),
(14,	'2016-02-18 13:33:49',	'2016-02-18 13:33:50',	'groups'),
(15,	'2016-02-18 13:33:50',	'2016-02-18 13:33:50',	'attributes'),
(16,	'2016-02-18 13:33:50',	'2016-02-18 13:33:50',	'add'),
(17,	'2016-02-18 13:33:50',	'2016-02-18 13:33:51',	'add_group'),
(18,	'2016-02-18 13:33:51',	'2016-02-18 13:33:51',	'bulkupdate'),
(19,	'2016-02-18 13:33:51',	'2016-02-18 13:33:51',	'group_sets'),
(20,	'2016-02-18 13:33:52',	'2016-02-18 13:33:52',	'points'),
(21,	'2016-02-18 13:33:52',	'2016-02-18 13:33:52',	'assign'),
(22,	'2016-02-18 13:33:52',	'2016-02-18 13:33:52',	'actions'),
(23,	'2016-02-18 13:33:53',	'2016-02-18 13:33:53',	'reports'),
(24,	'2016-02-18 13:33:53',	'2016-02-18 13:33:53',	'forms'),
(25,	'2016-02-18 13:33:53',	'2016-02-18 13:33:54',	'surveys'),
(26,	'2016-02-18 13:33:54',	'2016-02-18 13:33:54',	'logs'),
(27,	'2016-02-18 13:33:54',	'2016-02-18 13:33:55',	'pages'),
(28,	'2016-02-18 13:33:55',	'2016-02-18 13:33:55',	'themes'),
(29,	'2016-02-18 13:33:55',	'2016-02-18 13:33:55',	'inspect'),
(30,	'2016-02-18 13:33:56',	'2016-02-18 13:33:56',	'types'),
(31,	'2016-02-18 13:33:56',	'2016-02-18 13:33:56',	'organize'),
(32,	'2016-02-18 13:33:56',	'2016-02-18 13:33:56',	'add'),
(33,	'2016-02-18 13:33:56',	'2016-02-18 13:33:57',	'form'),
(34,	'2016-02-18 13:33:57',	'2016-02-18 13:33:57',	'output'),
(35,	'2016-02-18 13:33:57',	'2016-02-18 13:33:57',	'attributes'),
(36,	'2016-02-18 13:33:58',	'2016-02-18 13:33:58',	'permissions'),
(37,	'2016-02-18 13:33:58',	'2016-02-18 13:33:58',	'templates'),
(38,	'2016-02-18 13:33:58',	'2016-02-18 13:33:58',	'add'),
(39,	'2016-02-18 13:33:59',	'2016-02-18 13:33:59',	'attributes'),
(40,	'2016-02-18 13:33:59',	'2016-02-18 13:33:59',	'single'),
(41,	'2016-02-18 13:33:59',	'2016-02-18 13:34:00',	'feeds'),
(42,	'2016-02-18 13:34:00',	'2016-02-18 13:34:00',	'conversations'),
(43,	'2016-02-18 13:34:00',	'2016-02-18 13:34:01',	'messages'),
(44,	'2016-02-18 13:34:01',	'2016-02-18 13:34:01',	'workflow'),
(45,	'2016-02-18 13:34:01',	'2016-02-18 13:34:01',	'me'),
(46,	'2016-02-18 13:34:01',	'2016-02-18 13:34:02',	'workflows'),
(47,	'2016-02-18 13:34:02',	'2016-02-18 13:34:02',	'blocks'),
(48,	'2016-02-18 13:34:03',	'2016-02-18 13:34:03',	'stacks'),
(49,	'2016-02-18 13:34:03',	'2016-02-18 13:34:03',	'permissions'),
(50,	'2016-02-18 13:34:03',	'2016-02-18 13:34:03',	'list'),
(51,	'2016-02-18 13:34:04',	'2016-02-18 13:34:04',	'types'),
(52,	'2016-02-18 13:34:04',	'2016-02-18 13:34:04',	'extend'),
(53,	'2016-02-18 13:34:04',	'2016-02-18 13:34:05',	'news'),
(54,	'2016-02-18 13:34:05',	'2016-02-18 13:34:05',	'install'),
(55,	'2016-02-18 13:34:05',	'2016-02-18 13:34:06',	'update'),
(56,	'2016-02-18 13:34:06',	'2016-02-18 13:34:06',	'connect'),
(57,	'2016-02-18 13:34:06',	'2016-02-18 13:34:07',	'themes'),
(58,	'2016-02-18 13:34:07',	'2016-02-18 13:34:07',	'addons'),
(59,	'2016-02-18 13:34:07',	'2016-02-18 13:34:08',	'system'),
(60,	'2016-02-18 13:34:08',	'2016-02-18 13:34:08',	'basics'),
(61,	'2016-02-18 13:34:08',	'2016-02-18 13:34:08',	'name'),
(62,	'2016-02-18 13:34:08',	'2016-02-18 13:34:09',	'accessibility'),
(63,	'2016-02-18 13:34:09',	'2016-02-18 13:34:09',	'social'),
(64,	'2016-02-18 13:34:09',	'2016-02-18 13:34:09',	'icons'),
(65,	'2016-02-18 13:34:10',	'2016-02-18 13:34:10',	'editor'),
(66,	'2016-02-18 13:34:10',	'2016-02-18 13:34:11',	'multilingual'),
(67,	'2016-02-18 13:34:11',	'2016-02-18 13:34:11',	'timezone'),
(68,	'2016-02-18 13:34:11',	'2016-02-18 13:34:12',	'multilingual'),
(69,	'2016-02-18 13:34:12',	'2016-02-18 13:34:12',	'setup'),
(70,	'2016-02-18 13:34:12',	'2016-02-18 13:34:12',	'copy'),
(71,	'2016-02-18 13:34:12',	'2016-02-18 13:34:13',	'page_report'),
(72,	'2016-02-18 13:34:13',	'2016-02-18 13:34:13',	'translate_interface'),
(73,	'2016-02-18 13:34:13',	'2016-02-18 13:34:13',	'seo'),
(74,	'2016-02-18 13:34:13',	'2016-02-18 13:34:14',	'urls'),
(75,	'2016-02-18 13:34:14',	'2016-02-18 13:34:14',	'bulk'),
(76,	'2016-02-18 13:34:14',	'2016-02-18 13:34:14',	'codes'),
(77,	'2016-02-18 13:34:15',	'2016-02-18 13:34:15',	'excluded'),
(78,	'2016-02-18 13:34:15',	'2016-02-18 13:34:15',	'searchindex'),
(79,	'2016-02-18 13:34:15',	'2016-02-18 13:34:16',	'files'),
(80,	'2016-02-18 13:34:16',	'2016-02-18 13:34:16',	'permissions'),
(81,	'2016-02-18 13:34:16',	'2016-02-18 13:34:16',	'filetypes'),
(82,	'2016-02-18 13:34:16',	'2016-02-18 13:34:17',	'thumbnails'),
(83,	'2016-02-18 13:34:17',	'2016-02-18 13:34:17',	'image_uploading'),
(84,	'2016-02-18 13:34:17',	'2016-02-18 13:34:18',	'storage'),
(85,	'2016-02-18 13:34:18',	'2016-02-18 13:34:18',	'optimization'),
(86,	'2016-02-18 13:34:18',	'2016-02-18 13:34:18',	'cache'),
(87,	'2016-02-18 13:34:18',	'2016-02-18 13:34:19',	'clearcache'),
(88,	'2016-02-18 13:34:19',	'2016-02-18 13:34:19',	'jobs'),
(89,	'2016-02-18 13:34:19',	'2016-02-18 13:34:19',	'query_log'),
(90,	'2016-02-18 13:34:19',	'2016-02-18 13:34:20',	'permissions'),
(91,	'2016-02-18 13:34:20',	'2016-02-18 13:34:20',	'site'),
(92,	'2016-02-18 13:34:20',	'2016-02-18 13:34:20',	'tasks'),
(93,	'2016-02-18 13:34:20',	'2016-02-18 13:34:21',	'users'),
(94,	'2016-02-18 13:34:21',	'2016-02-18 13:34:21',	'advanced'),
(95,	'2016-02-18 13:34:21',	'2016-02-18 13:34:22',	'blacklist'),
(96,	'2016-02-18 13:34:22',	'2016-02-18 13:34:22',	'captcha'),
(97,	'2016-02-18 13:34:22',	'2016-02-18 13:34:23',	'antispam'),
(98,	'2016-02-18 13:34:23',	'2016-02-18 13:34:23',	'maintenance'),
(99,	'2016-02-18 13:34:23',	'2016-02-18 13:34:24',	'registration'),
(100,	'2016-02-18 13:34:24',	'2016-02-18 13:34:24',	'postlogin'),
(101,	'2016-02-18 13:34:24',	'2016-02-18 13:34:24',	'profiles'),
(102,	'2016-02-18 13:34:24',	'2016-02-18 13:34:25',	'open'),
(103,	'2016-02-18 13:34:25',	'2016-02-18 13:34:25',	'authentication'),
(104,	'2016-02-18 13:34:25',	'2016-02-18 13:34:26',	'mail'),
(105,	'2016-02-18 13:34:26',	'2016-02-18 13:34:26',	'method'),
(106,	'2016-02-18 13:34:26',	'2016-02-18 13:34:26',	'test'),
(107,	'2016-02-18 13:34:26',	'2016-02-18 13:34:27',	'importers'),
(108,	'2016-02-18 13:34:27',	'2016-02-18 13:34:27',	'conversations'),
(109,	'2016-02-18 13:34:27',	'2016-02-18 13:34:28',	'settings'),
(110,	'2016-02-18 13:34:28',	'2016-02-18 13:34:28',	'points'),
(111,	'2016-02-18 13:34:28',	'2016-02-18 13:34:28',	'bannedwords'),
(112,	'2016-02-18 13:34:28',	'2016-02-18 13:34:29',	'permissions'),
(113,	'2016-02-18 13:34:29',	'2016-02-18 13:34:29',	'attributes'),
(114,	'2016-02-18 13:34:29',	'2016-02-18 13:34:29',	'sets'),
(115,	'2016-02-18 13:34:30',	'2016-02-18 13:34:30',	'types'),
(116,	'2016-02-18 13:34:30',	'2016-02-18 13:34:30',	'topics'),
(117,	'2016-02-18 13:34:30',	'2016-02-18 13:34:30',	'add'),
(118,	'2016-02-18 13:34:30',	'2016-02-18 13:34:31',	'environment'),
(119,	'2016-02-18 13:34:31',	'2016-02-18 13:34:31',	'info'),
(120,	'2016-02-18 13:34:31',	'2016-02-18 13:34:32',	'debug'),
(121,	'2016-02-18 13:34:32',	'2016-02-18 13:34:32',	'logging'),
(122,	'2016-02-18 13:34:32',	'2016-02-18 13:34:33',	'proxy'),
(123,	'2016-02-18 13:34:33',	'2016-02-18 13:34:33',	'entities'),
(124,	'2016-02-18 13:34:33',	'2016-02-18 13:34:34',	'backup'),
(125,	'2016-02-18 13:34:34',	'2016-02-18 13:34:34',	'backup'),
(126,	'2016-02-18 13:34:34',	'2016-02-18 13:34:34',	'update'),
(127,	'2016-02-18 13:34:37',	'2016-02-18 13:34:37',	'welcome'),
(128,	'2016-02-18 13:34:37',	'2016-02-18 13:34:37',	'home'),
(129,	'2016-02-18 13:34:53',	'2016-02-18 13:34:54',	'!drafts'),
(130,	'2016-02-18 13:34:54',	'2016-02-18 13:34:54',	'!trash'),
(131,	'2016-02-18 13:34:54',	'2016-02-18 13:34:55',	'!stacks'),
(132,	'2016-02-18 13:34:55',	'2016-02-18 13:34:55',	'login'),
(133,	'2016-02-18 13:34:55',	'2016-02-18 13:34:56',	'register'),
(134,	'2016-02-18 13:34:56',	'2016-02-18 13:34:56',	'account'),
(135,	'2016-02-18 13:34:56',	'2016-02-18 13:34:56',	'edit_profile'),
(136,	'2016-02-18 13:34:56',	'2016-02-18 13:34:57',	'avatar'),
(137,	'2016-02-18 13:34:57',	'2016-02-18 13:34:57',	'messages'),
(138,	'2016-02-18 13:34:57',	'2016-02-18 13:34:57',	'inbox'),
(139,	'2016-02-18 13:34:57',	'2016-02-18 13:34:57',	'members'),
(140,	'2016-02-18 13:34:57',	'2016-02-18 13:34:58',	'profile'),
(141,	'2016-02-18 13:34:58',	'2016-02-18 13:34:58',	'directory'),
(142,	'2016-02-18 13:34:58',	'2016-02-18 13:34:58',	'page_not_found'),
(143,	'2016-02-18 13:34:58',	'2016-02-18 13:34:59',	'page_forbidden'),
(144,	'2016-02-18 13:34:59',	'2016-02-18 13:34:59',	'download_file'),
(145,	'2016-02-18 13:35:02',	'2016-02-18 13:35:02',	NULL),
(146,	'2016-02-18 13:36:00',	'2016-03-29 08:22:21',	'header-site-title'),
(147,	'2016-02-18 13:36:00',	'2016-02-18 17:37:19',	'header-navigation'),
(148,	'2016-02-18 13:36:01',	'2016-03-29 08:19:26',	'footer-legal'),
(149,	'2016-02-18 13:36:01',	'2016-02-18 13:36:01',	'footer-navigation'),
(150,	'2016-02-18 13:36:01',	'2016-03-01 13:31:25',	'footer-contact'),
(154,	'2016-02-18 17:02:02',	'2016-02-18 17:02:02',	NULL),
(155,	'2016-02-18 17:02:02',	'2016-02-19 11:40:42',	'search'),
(156,	'2016-02-18 17:27:16',	'2016-03-01 12:48:31',	''),
(157,	'2016-02-18 17:29:58',	'2016-02-24 12:16:39',	''),
(158,	'2016-02-18 17:30:32',	'2016-03-22 14:46:40',	''),
(161,	'2016-02-18 17:31:23',	'2016-02-18 17:31:37',	''),
(162,	'2016-02-18 17:31:41',	'2016-03-29 08:16:32',	''),
(163,	'2016-02-19 10:08:01',	'2016-02-19 10:08:01',	NULL),
(168,	'2016-02-19 11:40:03',	'2016-02-19 11:41:18',	''),
(169,	'2016-02-19 11:54:07',	'2016-03-01 13:51:32',	''),
(170,	'2016-02-19 13:49:01',	'2016-02-19 13:49:01',	'event_calendar'),
(171,	'2016-02-19 13:49:02',	'2016-02-19 13:49:02',	'list_calendar'),
(172,	'2016-02-19 13:49:02',	'2016-02-19 13:49:02',	'list_event'),
(173,	'2016-02-19 13:49:02',	'2016-02-19 13:49:03',	'calendar'),
(174,	'2016-02-19 13:49:03',	'2016-02-19 13:49:03',	'event'),
(175,	'2016-02-19 13:49:03',	'2016-02-19 13:49:04',	'types'),
(176,	'2016-02-19 13:49:04',	'2016-02-19 13:49:04',	'settings'),
(177,	'2016-02-19 14:12:18',	'2016-02-19 14:14:32',	''),
(178,	'2016-02-24 11:15:20',	'2016-02-24 12:17:07',	''),
(179,	'2016-02-24 11:15:41',	'2016-02-24 12:19:43',	''),
(180,	'2016-03-01 12:48:58',	'2016-03-01 13:01:03',	''),
(181,	'2016-03-01 13:25:03',	'2016-03-01 13:25:03',	NULL),
(185,	'2016-03-01 13:52:53',	'2016-03-01 13:53:37',	''),
(188,	'2016-03-01 14:10:26',	'2016-03-01 14:38:53',	''),
(189,	'2016-03-01 14:33:50',	'2016-03-01 14:39:17',	''),
(190,	'2016-03-01 14:39:23',	'2016-03-01 14:42:14',	'');

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` longtext COLLATE utf8_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8_unicode_ci,
  `ak_icon_dashboard` longtext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8_unicode_ci,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  `ak_icon` int(11) DEFAULT '0',
  `ak_thumbnail` int(11) DEFAULT '0',
  `ak_temas` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionSearchIndexAttributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_tags`, `ak_is_featured`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`, `ak_icon`, `ak_thumbnail`, `ak_temas`) VALUES
(1,	'Template SENATICs',	'',	NULL,	NULL,	0,	0,	'',	NULL,	0,	0,	0,	0,	0,	NULL),
(2,	NULL,	NULL,	NULL,	'fa fa-th-large',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(3,	NULL,	NULL,	'pages, add page, delete page, copy, move, alias',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(4,	NULL,	NULL,	'pages, add page, delete page, copy, move, alias',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(5,	NULL,	NULL,	'pages, add page, delete page, copy, move, alias, bulk',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(6,	NULL,	NULL,	'find page, search page, search, find, pages, sitemap',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(8,	NULL,	NULL,	'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(9,	NULL,	NULL,	'file, file attributes, title, attribute, description, rename',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(10,	NULL,	NULL,	'files, category, categories',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(11,	NULL,	NULL,	'new file set',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(12,	NULL,	NULL,	'users, groups, people, find, delete user, remove user, change password, password',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(13,	NULL,	NULL,	'find, search, people, delete user, remove user, change password, password',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(14,	NULL,	NULL,	'user, group, people, permissions, expire, badges',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(15,	NULL,	NULL,	'user attributes, user data, gather data, registration data',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(16,	NULL,	NULL,	'new user, create',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(17,	NULL,	NULL,	'new user group, new group, group, create',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(19,	NULL,	NULL,	'group set',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(20,	NULL,	NULL,	'community, points, karma',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(22,	NULL,	NULL,	'action, community actions',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(23,	NULL,	NULL,	'forms, log, error, email, mysql, exception, survey',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(24,	NULL,	NULL,	'forms, questions, response, data',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(25,	NULL,	NULL,	'questions, quiz, response',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(26,	NULL,	NULL,	'forms, log, error, email, mysql, exception, survey, history',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(28,	NULL,	NULL,	'new theme, theme, active theme, change theme, template, css',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(29,	NULL,	NULL,	'page types',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(31,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(32,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(33,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(34,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(35,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(36,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(38,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(39,	NULL,	NULL,	'page attributes, custom',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(40,	NULL,	NULL,	'single, page, custom, application',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(41,	NULL,	NULL,	'atom, rss, feed, syndication',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(43,	NULL,	NULL,	NULL,	'icon-bullhorn',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(44,	NULL,	NULL,	'add workflow, remove workflow',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(48,	NULL,	NULL,	'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(50,	NULL,	NULL,	'edit stacks, view stacks, all stacks',	NULL,	1,	0,	NULL,	NULL,	0,	1,	0,	0,	0,	NULL),
(51,	NULL,	NULL,	'block, refresh, custom',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(52,	NULL,	NULL,	'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(53,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(54,	NULL,	NULL,	'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(55,	NULL,	NULL,	'update, upgrade',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(56,	NULL,	NULL,	'concrete5.org, my account, marketplace',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(57,	NULL,	NULL,	'buy theme, new theme, marketplace, template',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(58,	NULL,	NULL,	'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(59,	NULL,	NULL,	'dashboard, configuration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(61,	NULL,	NULL,	'website name, title',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(62,	NULL,	NULL,	'accessibility, easy mode',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(63,	NULL,	NULL,	'sharing, facebook, twitter',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(64,	NULL,	NULL,	'logo, favicon, iphone, icon, bookmark',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(65,	NULL,	NULL,	'tinymce, content block, fonts, editor, content, overlay',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(66,	NULL,	NULL,	'translate, translation, internationalization, multilingual',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(67,	NULL,	NULL,	'timezone, profile, locale',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(68,	NULL,	NULL,	'multilingual, localization, internationalization, i18n',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(74,	NULL,	NULL,	'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(75,	NULL,	NULL,	'bulk, seo, change keywords, engine, optimization, search',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(76,	NULL,	NULL,	'traffic, statistics, google analytics, quant, pageviews, hits',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(77,	NULL,	NULL,	'pretty, slug',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(78,	NULL,	NULL,	'configure search, site search, search option',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(80,	NULL,	NULL,	'file options, file manager, upload, modify',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(81,	NULL,	NULL,	'security, files, media, extension, manager, upload',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(82,	NULL,	NULL,	'images, picture, responsive, retina',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(83,	NULL,	NULL,	'uploading, upload, images, image, resizing, manager',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(84,	NULL,	NULL,	'security, alternate storage, hide files',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(86,	NULL,	NULL,	'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(87,	NULL,	NULL,	'cache option, turn off cache, no cache, page cache, caching',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(88,	NULL,	NULL,	'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(89,	NULL,	NULL,	'queries, database, mysql',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(91,	NULL,	NULL,	'editors, hide site, offline, private, public, access',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(92,	NULL,	NULL,	'security, actions, administrator, admin, package, marketplace, search',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(95,	NULL,	NULL,	'security, lock ip, lock out, block ip, address, restrict, access',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(96,	NULL,	NULL,	'security, registration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(97,	NULL,	NULL,	'antispam, block spam, security',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(98,	NULL,	NULL,	'lock site, under construction, hide, hidden',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(100,	NULL,	NULL,	'profile, login, redirect, specific, dashboard, administrators',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(101,	NULL,	NULL,	'member profile, member page, community, forums, social, avatar',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(102,	NULL,	NULL,	'signup, new user, community, public registration, public, registration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(103,	NULL,	NULL,	'auth, authentication, types, oauth, facebook, login, registration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(104,	NULL,	NULL,	'smtp, mail settings',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(105,	NULL,	NULL,	'email server, mail settings, mail configuration, external, internal',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(106,	NULL,	NULL,	'test smtp, test mail',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(107,	NULL,	NULL,	'email server, mail settings, mail configuration, private message, message system, import, email, message',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(108,	NULL,	NULL,	'conversations',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(109,	NULL,	NULL,	'conversations',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(110,	NULL,	NULL,	'conversations ratings, ratings, community, community points',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(111,	NULL,	NULL,	'conversations bad words, banned words, banned, bad words, bad, words, list',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(113,	NULL,	NULL,	'attribute configuration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(114,	NULL,	NULL,	'attributes, sets',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(115,	NULL,	NULL,	'attributes, types',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(116,	NULL,	NULL,	'topics, tags, taxonomy',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(118,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	1,	0,	0,	0,	NULL),
(119,	NULL,	NULL,	'overrides, system info, debug, support, help',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(120,	NULL,	NULL,	'errors, exceptions, develop, support, help',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(121,	NULL,	NULL,	'email, logging, logs, smtp, pop, errors, mysql, log',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(122,	NULL,	NULL,	'network, proxy server',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(123,	NULL,	NULL,	'database, entities, doctrine, orm',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(124,	NULL,	NULL,	'export, backup, database, sql, mysql, encryption, restore',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(126,	NULL,	NULL,	'upgrade, new version, update',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(127,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(128,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	1,	0,	0,	0,	NULL),
(129,	NULL,	NULL,	NULL,	'fa fa-edit',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(130,	NULL,	NULL,	NULL,	'fa fa-trash-o',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(131,	NULL,	NULL,	NULL,	'fa fa-th',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(134,	NULL,	NULL,	NULL,	'fa fa-briefcase',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(146,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(147,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(148,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(150,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(155,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(156,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(157,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(158,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	'',	0,	0,	0,	0,	0,	NULL),
(161,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(162,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(168,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(169,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(177,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(178,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(179,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(180,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	0,	NULL),
(185,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	16,	NULL),
(188,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	16,	'||/Salud||/Cultura||'),
(189,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	'\nsmartphone\n',	0,	0,	0,	0,	16,	'||/Informática||'),
(190,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	'\nTICs\nGobierno Electrónico\nTecnología\n',	0,	0,	0,	0,	3,	'||/Informática||');

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `CollectionVersionBlocks`;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersionBlocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`, `cbOverrideBlockTypeCacheSettings`, `cbOverrideBlockTypeContainerSettings`, `cbEnableBlockContainer`) VALUES
(1,	3,	17,	'Slider',	0,	1,	0,	0,	0,	0,	0),
(1,	3,	20,	'Contenido A',	0,	1,	0,	0,	0,	0,	0),
(1,	3,	21,	'Slider : 1',	0,	1,	0,	0,	0,	0,	0),
(1,	4,	20,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	4,	22,	'Slider : 1',	0,	1,	0,	0,	0,	0,	0),
(1,	4,	23,	'Slider',	0,	1,	0,	0,	0,	0,	0),
(1,	5,	20,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	5,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	5,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	6,	20,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	6,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	6,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	6,	24,	'Slider : 2',	0,	1,	0,	0,	0,	0,	0),
(1,	7,	20,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	7,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	7,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	7,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	8,	20,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	8,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	8,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	8,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	8,	27,	'Contenido A : 4',	0,	1,	0,	0,	0,	0,	0),
(1,	8,	28,	'Contenido A : 4',	1,	1,	0,	0,	0,	0,	0),
(1,	9,	20,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	9,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	9,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	9,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	9,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	9,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	9,	29,	'Contenido A : 3',	0,	1,	0,	0,	0,	0,	0),
(1,	10,	20,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	10,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	10,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	10,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	10,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	10,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	10,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	11,	20,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	11,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	11,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	11,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	11,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	11,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	11,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	20,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	12,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	20,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	13,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	20,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	14,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	15,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	33,	'Contenido A',	0,	1,	0,	0,	0,	0,	0),
(1,	16,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	16,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	17,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	18,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	19,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	20,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	21,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	47,	'Contenido A : 3',	1,	1,	0,	0,	0,	0,	0),
(1,	22,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	22,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	47,	'Contenido A : 3',	1,	0,	0,	0,	0,	0,	0),
(1,	23,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	23,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	47,	'Contenido A : 3',	1,	0,	0,	0,	0,	0,	0),
(1,	24,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	24,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	24,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	47,	'Contenido A : 3',	1,	0,	0,	0,	0,	0,	0),
(1,	25,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	25,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	47,	'Contenido A : 3',	1,	0,	0,	0,	0,	0,	0),
(1,	25,	418,	'Slider : 2',	0,	1,	0,	0,	0,	0,	0),
(1,	26,	22,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	26,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	47,	'Contenido A : 3',	1,	0,	0,	0,	0,	0,	0),
(1,	26,	419,	'Slider : 2',	0,	1,	0,	0,	0,	0,	0),
(1,	27,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	27,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	47,	'Contenido A : 3',	1,	0,	0,	0,	0,	0,	0),
(1,	27,	419,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	420,	'Slider : 1',	0,	1,	0,	0,	0,	0,	0),
(1,	28,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	28,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	47,	'Contenido A : 3',	1,	0,	0,	0,	0,	0,	0),
(1,	28,	419,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	421,	'Slider : 1',	0,	1,	0,	0,	0,	0,	0),
(1,	29,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	29,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	47,	'Contenido A : 3',	1,	0,	0,	0,	0,	0,	0),
(1,	29,	419,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	422,	'Slider : 1',	0,	1,	0,	0,	0,	0,	0),
(1,	30,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	30,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	47,	'Contenido A : 3',	1,	0,	0,	0,	0,	0,	0),
(1,	30,	422,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	423,	'Slider : 2',	0,	1,	0,	0,	0,	0,	0),
(1,	31,	23,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	27,	'Contenido A : 4',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	28,	'Contenido A : 4',	1,	0,	0,	0,	0,	0,	0),
(1,	31,	29,	'Contenido A : 3',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	33,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	47,	'Contenido A : 3',	1,	0,	0,	0,	0,	0,	0),
(1,	31,	422,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	424,	'Slider : 2',	0,	1,	0,	0,	0,	0,	0),
(127,	1,	1,	'Main',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	2,	'Primary',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	3,	'Primary',	1,	1,	0,	0,	0,	0,	0),
(128,	1,	4,	'Secondary 1',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	5,	'Secondary 2',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	6,	'Secondary 3',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	7,	'Secondary 4',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	8,	'Secondary 5',	0,	1,	0,	0,	0,	0,	0),
(145,	1,	9,	'Main',	0,	1,	0,	0,	0,	0,	0),
(146,	2,	12,	'Main',	0,	1,	0,	0,	0,	0,	0),
(146,	3,	417,	'Main',	0,	1,	0,	0,	0,	0,	0),
(147,	2,	16,	'Main',	0,	1,	0,	0,	0,	0,	0),
(147,	3,	16,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	4,	30,	'Main',	0,	1,	0,	0,	0,	0,	0),
(147,	6,	31,	'Main',	0,	1,	0,	0,	0,	0,	0),
(147,	7,	31,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	8,	32,	'Main',	0,	1,	0,	0,	0,	0,	0),
(147,	9,	32,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	10,	34,	'Main',	0,	1,	0,	0,	0,	0,	0),
(148,	2,	19,	'Main',	0,	1,	0,	0,	0,	0,	0),
(148,	3,	416,	'Main',	0,	1,	0,	0,	0,	0,	0),
(150,	2,	18,	'Main',	0,	1,	0,	0,	0,	0,	0),
(150,	3,	18,	'Main',	0,	0,	0,	0,	0,	0,	0),
(150,	4,	25,	'Main',	0,	1,	0,	0,	0,	0,	0),
(150,	5,	26,	'Main',	0,	1,	0,	0,	0,	0,	0),
(150,	6,	212,	'Main',	0,	1,	0,	0,	0,	0,	0),
(154,	1,	10,	'Titulo',	0,	1,	0,	0,	0,	0,	0),
(154,	1,	11,	'Titulo',	1,	1,	0,	0,	0,	0,	0),
(155,	2,	13,	'Main',	0,	1,	0,	0,	0,	0,	0),
(155,	3,	13,	'Main',	0,	0,	0,	0,	0,	0,	0),
(155,	3,	14,	'Main',	1,	1,	0,	0,	0,	0,	0),
(155,	4,	13,	'Main',	0,	0,	0,	0,	0,	0,	0),
(155,	4,	14,	'Main',	1,	0,	0,	0,	0,	0,	0),
(155,	5,	13,	'Main',	0,	0,	0,	0,	0,	0,	0),
(155,	5,	15,	'Main',	1,	1,	0,	0,	0,	0,	0),
(155,	6,	13,	'Main',	0,	0,	0,	0,	0,	0,	0),
(155,	6,	134,	'Main',	1,	1,	0,	0,	0,	0,	0),
(156,	1,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(156,	1,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(156,	2,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(156,	2,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(156,	2,	195,	'Contenido : 20',	0,	1,	0,	0,	0,	0,	0),
(156,	2,	196,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(157,	1,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(157,	1,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(157,	2,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(157,	2,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(157,	2,	181,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(157,	2,	182,	'Contenido : 11',	0,	1,	0,	0,	0,	0,	0),
(157,	3,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(157,	3,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(157,	3,	181,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(157,	3,	182,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(157,	3,	187,	'Contenido : 12',	0,	1,	0,	0,	0,	0,	0),
(157,	3,	188,	'Contenido : 12 : 17',	0,	1,	0,	0,	0,	0,	0),
(157,	3,	191,	'Contenido : 12 : 18',	0,	1,	0,	0,	0,	0,	0),
(157,	3,	192,	'Contenido : 12 : 19',	0,	1,	0,	0,	0,	0,	0),
(158,	1,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(158,	1,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(158,	2,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(158,	2,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(158,	2,	106,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(158,	2,	107,	'Contenido : 10',	0,	1,	0,	0,	0,	0,	0),
(158,	2,	108,	'Contenido : 9',	0,	1,	0,	0,	0,	0,	0),
(158,	3,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(158,	3,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(158,	3,	106,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(158,	3,	108,	'Contenido : 9',	0,	0,	0,	0,	0,	0,	0),
(158,	3,	117,	'Contenido : 10',	0,	1,	0,	0,	0,	0,	0),
(158,	4,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(158,	4,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(158,	4,	106,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(158,	4,	108,	'Contenido : 9',	0,	0,	0,	0,	0,	0,	0),
(158,	4,	117,	'Contenido : 10',	0,	0,	0,	0,	0,	0,	0),
(158,	4,	118,	'Contenido : 10',	1,	1,	0,	0,	0,	0,	0),
(158,	5,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(158,	5,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(158,	5,	106,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(158,	5,	117,	'Contenido : 10',	0,	0,	0,	0,	0,	0,	0),
(158,	5,	119,	'Contenido : 10',	1,	1,	0,	0,	0,	0,	0),
(158,	5,	120,	'Contenido : 9',	0,	1,	0,	0,	0,	0,	0),
(158,	6,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(158,	6,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(158,	6,	106,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(158,	6,	117,	'Contenido : 10',	0,	0,	0,	0,	0,	0,	0),
(158,	6,	120,	'Contenido : 9',	0,	0,	0,	0,	0,	0,	0),
(158,	6,	125,	'Contenido : 10',	2,	1,	0,	0,	0,	0,	0),
(158,	6,	126,	'Contenido : 10',	1,	1,	0,	0,	0,	0,	0),
(158,	7,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(158,	7,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(158,	7,	117,	'Contenido : 10',	0,	0,	0,	0,	0,	0,	0),
(158,	7,	120,	'Contenido : 9',	0,	0,	0,	0,	0,	0,	0),
(158,	7,	125,	'Contenido : 10',	2,	0,	0,	0,	0,	0,	0),
(158,	7,	126,	'Contenido : 10',	1,	0,	0,	0,	0,	0,	0),
(158,	7,	133,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(158,	8,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(158,	8,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(158,	8,	117,	'Contenido : 10',	0,	0,	0,	0,	0,	0,	0),
(158,	8,	120,	'Contenido : 9',	0,	0,	0,	0,	0,	0,	0),
(158,	8,	125,	'Contenido : 10',	2,	0,	0,	0,	0,	0,	0),
(158,	8,	126,	'Contenido : 10',	1,	0,	0,	0,	0,	0,	0),
(158,	8,	133,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(158,	8,	284,	'Contenido : 10',	3,	1,	0,	0,	0,	0,	0),
(158,	9,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(158,	9,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(158,	9,	117,	'Contenido : 10',	3,	0,	0,	0,	0,	0,	0),
(158,	9,	120,	'Contenido : 9',	0,	0,	0,	0,	0,	0,	0),
(158,	9,	125,	'Contenido : 10',	1,	0,	0,	0,	0,	0,	0),
(158,	9,	126,	'Contenido : 10',	0,	0,	0,	0,	0,	0,	0),
(158,	9,	133,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(158,	9,	284,	'Contenido : 10',	2,	0,	0,	0,	0,	0,	0),
(161,	1,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(161,	1,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	1,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	1,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	2,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	2,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	3,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	3,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	3,	44,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(162,	3,	45,	'Contenido : 7',	0,	1,	0,	0,	0,	0,	0),
(162,	3,	46,	'Contenido : 8',	0,	1,	0,	0,	0,	0,	0),
(162,	4,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	4,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	4,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	4,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	4,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	5,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	5,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	5,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	5,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	5,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	6,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	6,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	6,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	6,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	6,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	7,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	7,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	7,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	7,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	7,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	8,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	8,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	8,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	8,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	8,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	9,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	9,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	9,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	9,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	9,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	10,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	10,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	10,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	10,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	10,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	11,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	11,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	11,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	11,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	11,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	12,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	12,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	12,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	12,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	12,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	13,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	13,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	13,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	13,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	13,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	14,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	14,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	14,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	14,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	14,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	15,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	15,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	15,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	15,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	15,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	16,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	16,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	16,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	16,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	16,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	17,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	17,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	17,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	17,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	17,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	17,	340,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	18,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	18,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	18,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	18,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	18,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	19,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	19,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	19,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	19,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	19,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	20,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	20,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	20,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	20,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	20,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	21,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	21,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	21,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	21,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	21,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	22,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	22,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	22,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	22,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	22,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	23,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	23,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	23,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	23,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	23,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	24,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	24,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	24,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	24,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	24,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	25,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	25,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	25,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	25,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	25,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	26,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	26,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	26,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	26,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	26,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	27,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	27,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	27,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	27,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	27,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	28,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	28,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	28,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	28,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	28,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	29,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	29,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	29,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	29,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	29,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	30,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	30,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	30,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	30,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	30,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	31,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	31,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	31,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	31,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	31,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	32,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	32,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	32,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	32,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	32,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	33,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	33,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	33,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	33,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	33,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	34,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	34,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	34,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	34,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	34,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	35,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	35,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	35,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	35,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	35,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	36,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	36,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	36,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	36,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	36,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	37,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	37,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	37,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	37,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	37,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	38,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	38,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	38,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	38,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	38,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	39,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	39,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	39,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	39,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	39,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	40,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	40,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	40,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	40,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	40,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	41,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	41,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	41,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	41,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	41,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	42,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	42,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	42,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	42,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	42,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	43,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	43,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	43,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	43,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	43,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	44,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	44,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	44,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	44,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	44,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	45,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	45,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	45,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	45,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	45,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	46,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	46,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	46,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	46,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	46,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	46,	372,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	47,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	47,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	47,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	47,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	47,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	47,	373,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	48,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	48,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	48,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	48,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	48,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	49,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	49,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	49,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	49,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	49,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	49,	374,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	50,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	50,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	50,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	50,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	50,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	50,	375,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	51,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	51,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	51,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	51,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	51,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	51,	376,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	52,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	52,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	52,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	52,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	52,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	52,	377,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	53,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	53,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	53,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	53,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	53,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	53,	378,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	54,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	54,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	54,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	54,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	54,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	54,	379,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	55,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	55,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	55,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	55,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	55,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	55,	380,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	56,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	56,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	56,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	56,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	56,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	56,	381,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	57,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	57,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	57,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	57,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	57,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	57,	382,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	58,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	58,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	58,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	58,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	58,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	58,	383,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	59,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	59,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	59,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	59,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	59,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	60,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	60,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	60,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	60,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	60,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	60,	384,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	61,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	61,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	61,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	61,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	61,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	61,	385,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	62,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	62,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	62,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	62,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	62,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	63,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	63,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	63,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	63,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	63,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	63,	387,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	64,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	64,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	64,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	64,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	64,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	65,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	65,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	65,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	65,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	65,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	65,	388,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	66,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	66,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	66,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	66,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	66,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	66,	389,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	67,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	67,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	67,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	67,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	67,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	68,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	68,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	68,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	68,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	68,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	69,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	69,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	69,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	69,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	69,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	69,	393,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	70,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	70,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	70,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	70,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	70,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	70,	394,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	71,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	71,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	71,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	71,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	71,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	72,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	72,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	72,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	72,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	72,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	72,	395,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	73,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	73,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	73,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	73,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	73,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	73,	396,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	74,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	74,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	74,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	74,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	74,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	74,	397,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	75,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	75,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	75,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	75,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	75,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	75,	398,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	76,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	76,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	76,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	76,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	76,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	76,	399,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	77,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	77,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	77,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	77,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	77,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	77,	400,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	78,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	78,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	78,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	78,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	78,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	78,	401,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	79,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	79,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	79,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	79,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	79,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	79,	402,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	80,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	80,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	80,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	80,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	80,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	80,	402,	'Contenido : 8',	1,	0,	0,	0,	0,	0,	0),
(162,	80,	403,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(162,	81,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	81,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	81,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	81,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	81,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	81,	404,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	82,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	82,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	82,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	82,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	82,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	82,	405,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	83,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	83,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	83,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	83,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	83,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	83,	406,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	84,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	84,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	84,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	84,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	84,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	84,	407,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	85,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	85,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	85,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	85,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	85,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	85,	408,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	86,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	86,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	86,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	86,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	86,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	86,	409,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	87,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	87,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	87,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	87,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	87,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	87,	409,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(162,	88,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	88,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	88,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	88,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	88,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	88,	409,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(162,	88,	410,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(162,	89,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	89,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	89,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	89,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	89,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	89,	409,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(162,	90,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	90,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	90,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	90,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	90,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	90,	411,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(162,	91,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	91,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	91,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	91,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	91,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	91,	412,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(162,	92,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	92,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	92,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	92,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	92,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	92,	413,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(162,	93,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	93,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	93,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	93,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	93,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	93,	414,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(162,	94,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	94,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(162,	94,	44,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(162,	94,	45,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(162,	94,	46,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(162,	94,	415,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(163,	1,	35,	'Titulo',	0,	1,	0,	0,	0,	0,	0),
(163,	1,	36,	'Titulo : 6',	0,	1,	0,	0,	0,	0,	0),
(163,	1,	37,	'Titulo : 5',	0,	1,	0,	0,	0,	0,	0),
(163,	1,	38,	'Titulo : 5',	1,	1,	0,	0,	0,	0,	0),
(163,	1,	39,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(163,	1,	40,	'Contenido',	2,	1,	0,	0,	0,	0,	0),
(163,	1,	41,	'Contenido',	3,	1,	0,	0,	0,	0,	0),
(163,	1,	42,	'Contenido',	4,	1,	0,	0,	0,	0,	0),
(163,	1,	43,	'Contenido',	5,	1,	0,	0,	0,	0,	0),
(163,	1,	258,	'Contenido : 24',	0,	1,	0,	0,	0,	0,	0),
(163,	1,	271,	'Contenido : 25',	0,	1,	0,	0,	0,	0,	0),
(163,	1,	272,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(168,	1,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(168,	1,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(168,	2,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(168,	2,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(168,	3,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(168,	3,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(168,	3,	135,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(168,	3,	136,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(168,	4,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(168,	4,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(168,	4,	135,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(169,	1,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	1,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	2,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	2,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	3,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	3,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	4,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	4,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	5,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	5,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	6,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	6,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	7,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	7,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	8,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	8,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	9,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	9,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	9,	175,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(169,	10,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	10,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	11,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	11,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	12,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	12,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	13,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	13,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	14,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	14,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	15,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	15,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	16,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	16,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	17,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	17,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	18,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	18,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	19,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	19,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	19,	214,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(177,	1,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(177,	1,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(177,	2,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(177,	2,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(177,	2,	176,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(177,	3,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(177,	3,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(177,	3,	176,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(178,	1,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(178,	1,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(178,	2,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(178,	2,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(178,	2,	183,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(178,	2,	184,	'Contenido : 13',	0,	1,	0,	0,	0,	0,	0),
(178,	3,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(178,	3,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(178,	3,	183,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(178,	3,	184,	'Contenido : 13',	0,	0,	0,	0,	0,	0,	0),
(178,	3,	193,	'Contenido : 14',	0,	1,	0,	0,	0,	0,	0),
(179,	1,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(179,	1,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(179,	2,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(179,	2,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(179,	2,	185,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(179,	2,	186,	'Contenido : 15',	0,	1,	0,	0,	0,	0,	0),
(179,	3,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(179,	3,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(179,	3,	185,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(179,	3,	186,	'Contenido : 15',	0,	0,	0,	0,	0,	0,	0),
(179,	3,	194,	'Contenido : 16',	0,	1,	0,	0,	0,	0,	0),
(180,	1,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(180,	1,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(180,	2,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(180,	2,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(180,	2,	197,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(180,	2,	198,	'Contenido : 22',	0,	1,	0,	0,	0,	0,	0),
(180,	2,	200,	'Contenido : 23',	0,	1,	0,	0,	0,	0,	0),
(180,	3,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(180,	3,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(180,	3,	197,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(180,	3,	198,	'Contenido : 22',	0,	0,	0,	0,	0,	0,	0),
(180,	3,	200,	'Contenido : 23',	0,	0,	0,	0,	0,	0,	0),
(180,	3,	201,	'Contenido : 23',	1,	1,	0,	0,	0,	0,	0),
(180,	4,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(180,	4,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(180,	4,	197,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(180,	4,	198,	'Contenido : 22',	0,	0,	0,	0,	0,	0,	0),
(180,	4,	200,	'Contenido : 23',	0,	0,	0,	0,	0,	0,	0),
(180,	4,	201,	'Contenido : 23',	2,	0,	0,	0,	0,	0,	0),
(180,	4,	202,	'Contenido : 23',	1,	1,	0,	0,	0,	0,	0),
(180,	5,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(180,	5,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(180,	5,	197,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(180,	5,	198,	'Contenido : 22',	0,	0,	0,	0,	0,	0,	0),
(180,	5,	200,	'Contenido : 23',	0,	0,	0,	0,	0,	0,	0),
(180,	5,	203,	'Contenido : 23',	1,	1,	0,	0,	0,	0,	0),
(180,	6,	10,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(180,	6,	11,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(180,	6,	197,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(180,	6,	198,	'Contenido : 22',	0,	0,	0,	0,	0,	0,	0),
(180,	6,	200,	'Contenido : 23',	0,	0,	0,	0,	0,	0,	0),
(180,	6,	204,	'Contenido : 23',	1,	1,	0,	0,	0,	0,	0),
(181,	1,	208,	'Titulo',	0,	1,	0,	0,	0,	0,	0),
(181,	1,	210,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(181,	1,	211,	'Titulo',	1,	1,	0,	0,	0,	0,	0),
(185,	1,	208,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(185,	1,	210,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(185,	1,	211,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(188,	1,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(188,	1,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(188,	1,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(188,	1,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(188,	1,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(188,	1,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(188,	1,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(188,	1,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(188,	1,	258,	'Contenido : 24',	0,	0,	0,	0,	0,	0,	0),
(188,	1,	271,	'Contenido : 25',	0,	0,	0,	0,	0,	0,	0),
(188,	1,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(188,	1,	281,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(188,	2,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(188,	2,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(188,	2,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(188,	2,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(188,	2,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(188,	2,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(188,	2,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(188,	2,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(188,	2,	258,	'Contenido : 24',	0,	0,	0,	0,	0,	0,	0),
(188,	2,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(188,	2,	281,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(188,	2,	282,	'Contenido : 25',	0,	1,	0,	0,	0,	0,	0),
(188,	3,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(188,	3,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(188,	3,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(188,	3,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(188,	3,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(188,	3,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(188,	3,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(188,	3,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(188,	3,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(188,	3,	281,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(188,	3,	282,	'Contenido : 25',	0,	0,	0,	0,	0,	0,	0),
(188,	3,	283,	'Contenido : 24',	0,	1,	0,	0,	0,	0,	0),
(188,	4,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(188,	4,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(188,	4,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(188,	4,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(188,	4,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(188,	4,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(188,	4,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(188,	4,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(188,	4,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(188,	4,	281,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(188,	4,	282,	'Contenido : 25',	0,	0,	0,	0,	0,	0,	0),
(188,	4,	283,	'Contenido : 24',	0,	0,	0,	0,	0,	0,	0),
(188,	5,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(188,	5,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(188,	5,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(188,	5,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(188,	5,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(188,	5,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(188,	5,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(188,	5,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(188,	5,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(188,	5,	282,	'Contenido : 25',	0,	0,	0,	0,	0,	0,	0),
(188,	5,	283,	'Contenido : 24',	0,	0,	0,	0,	0,	0,	0),
(188,	5,	304,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(188,	6,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(188,	6,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(188,	6,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(188,	6,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(188,	6,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(188,	6,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(188,	6,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(188,	6,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(188,	6,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(188,	6,	282,	'Contenido : 25',	0,	0,	0,	0,	0,	0,	0),
(188,	6,	283,	'Contenido : 24',	0,	0,	0,	0,	0,	0,	0),
(188,	6,	305,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(189,	1,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(189,	1,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(189,	1,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(189,	1,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(189,	1,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(189,	1,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(189,	1,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(189,	1,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(189,	1,	258,	'Contenido : 24',	0,	0,	0,	0,	0,	0,	0),
(189,	1,	271,	'Contenido : 25',	0,	0,	0,	0,	0,	0,	0),
(189,	1,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(189,	1,	300,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(189,	2,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(189,	2,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(189,	2,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(189,	2,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(189,	2,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(189,	2,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(189,	2,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(189,	2,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(189,	2,	258,	'Contenido : 24',	0,	0,	0,	0,	0,	0,	0),
(189,	2,	271,	'Contenido : 25',	0,	0,	0,	0,	0,	0,	0),
(189,	2,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(189,	2,	308,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(190,	1,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	1,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(190,	1,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(190,	1,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(190,	1,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(190,	1,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(190,	1,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(190,	1,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(190,	1,	258,	'Contenido : 24',	0,	0,	0,	0,	0,	0,	0),
(190,	1,	271,	'Contenido : 25',	0,	0,	0,	0,	0,	0,	0),
(190,	1,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(190,	1,	326,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(190,	2,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	2,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(190,	2,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(190,	2,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(190,	2,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(190,	2,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(190,	2,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(190,	2,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(190,	2,	258,	'Contenido : 24',	0,	0,	0,	0,	0,	0,	0),
(190,	2,	271,	'Contenido : 25',	0,	0,	0,	0,	0,	0,	0),
(190,	2,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(190,	2,	327,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(190,	3,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	3,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(190,	3,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(190,	3,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(190,	3,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(190,	3,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(190,	3,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(190,	3,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(190,	3,	258,	'Contenido : 24',	0,	0,	0,	0,	0,	0,	0),
(190,	3,	271,	'Contenido : 25',	0,	0,	0,	0,	0,	0,	0),
(190,	3,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(190,	3,	330,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(190,	4,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	4,	36,	'Titulo : 6',	0,	0,	0,	0,	0,	0,	0),
(190,	4,	37,	'Titulo : 5',	0,	0,	0,	0,	0,	0,	0),
(190,	4,	38,	'Titulo : 5',	1,	0,	0,	0,	0,	0,	0),
(190,	4,	40,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(190,	4,	41,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(190,	4,	42,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(190,	4,	43,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(190,	4,	258,	'Contenido : 24',	0,	0,	0,	0,	0,	0,	0),
(190,	4,	271,	'Contenido : 25',	0,	0,	0,	0,	0,	0,	0),
(190,	4,	272,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(190,	4,	338,	'Contenido',	0,	1,	0,	0,	0,	0,	0);

DROP TABLE IF EXISTS `CollectionVersionBlocksCacheSettings`;
CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersionBlocksOutputCache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1,	29,	13,	'Search',	'<img src=\"/template-concrete5/application/files/9214/5581/5209/Gobierno-Logo-Espanol---Guarani-SM-claro-V2.png\" alt=\"Gobierno-Logo-Espanol---Guarani-SM-claro-V2.png\" width=\"244\" height=\"95\" class=\"ccm-image-block img-responsive bID-13\">\n',	1617022535),
(1,	29,	28,	'Contenido A : 4',	'\n<div id=\"HTMLBlock28\" class=\"HTMLBlock\">\n<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div></div>',	1617022535),
(1,	29,	212,	'Footer Contact',	'<a href=\"http://www.senatics.gov.py\"><img src=\"/template-concrete5/application/files/cache/482987386e225605b24db6d65038a2e0.png\" alt=\"SENATICs\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-212\" title=\"SENATICs\"></a>\n',	1617022535),
(1,	29,	417,	'Header Site Title',	'<a href=\"http://localhost/template-concrete5/index.php\"><img src=\"/template-concrete5/application/files/7314/5581/5049/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-417\"></a>\n',	1617022534),
(1,	29,	422,	'Slider : 1',	'\n<div id=\"HTMLBlock422\" class=\"HTMLBlock\">\n<div class=\"row\">\r\n    <div class=\"col l12 s6\"><a href=\"/template-concrete5/index.php/transparencia\" target=\"_self\"><img src=\"/template-concrete5/application/files/1114/5581/5455/acceso_informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://informacionpublica.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/8514/5581/5457/informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.denuncias.gov.py/ssps/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/4814/5581/5456/denuncias_btn.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/3014/5581/5456/portal_parauay_btn2.png\" style=\"width:100%\"></a></div>\r\n</div>\r\n</div>',	1617022535),
(1,	30,	13,	'Search',	'<img src=\"/template-concrete5/application/files/9214/5581/5209/Gobierno-Logo-Espanol---Guarani-SM-claro-V2.png\" alt=\"Gobierno-Logo-Espanol---Guarani-SM-claro-V2.png\" width=\"244\" height=\"95\" class=\"ccm-image-block img-responsive bID-13\">\n',	1617022568),
(1,	30,	28,	'Contenido A : 4',	'\n<div id=\"HTMLBlock28\" class=\"HTMLBlock\">\n<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div></div>',	1617022568),
(1,	30,	212,	'Footer Contact',	'<a href=\"http://www.senatics.gov.py\"><img src=\"/template-concrete5/application/files/cache/482987386e225605b24db6d65038a2e0.png\" alt=\"SENATICs\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-212\" title=\"SENATICs\"></a>\n',	1617022568),
(1,	30,	417,	'Header Site Title',	'<a href=\"http://localhost/template-concrete5/index.php\"><img src=\"/template-concrete5/application/files/7314/5581/5049/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-417\"></a>\n',	1617022568),
(1,	30,	422,	'Slider : 1',	'\n<div id=\"HTMLBlock422\" class=\"HTMLBlock\">\n<div class=\"row\">\r\n    <div class=\"col l12 s6\"><a href=\"/template-concrete5/index.php/transparencia\" target=\"_self\"><img src=\"/template-concrete5/application/files/1114/5581/5455/acceso_informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://informacionpublica.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/8514/5581/5457/informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.denuncias.gov.py/ssps/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/4814/5581/5456/denuncias_btn.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/3014/5581/5456/portal_parauay_btn2.png\" style=\"width:100%\"></a></div>\r\n</div>\r\n</div>',	1617022568),
(1,	31,	13,	'Search',	'<img src=\"/template-concrete5/application/files/9214/5581/5209/Gobierno-Logo-Espanol---Guarani-SM-claro-V2.png\" alt=\"Gobierno-Logo-Espanol---Guarani-SM-claro-V2.png\" width=\"244\" height=\"95\" class=\"ccm-image-block img-responsive bID-13\">\n',	1617022581),
(1,	31,	28,	'Contenido A : 4',	'\n<div id=\"HTMLBlock28\" class=\"HTMLBlock\">\n<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div></div>',	1617022581),
(1,	31,	212,	'Footer Contact',	'<a href=\"http://www.senatics.gov.py\"><img src=\"/template-concrete5/application/files/cache/482987386e225605b24db6d65038a2e0.png\" alt=\"SENATICs\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-212\" title=\"SENATICs\"></a>\n',	1617022581),
(1,	31,	417,	'Header Site Title',	'<a href=\"http://localhost/template-concrete5/index.php\"><img src=\"/template-concrete5/application/files/7314/5581/5049/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-417\"></a>\n',	1617022581),
(1,	31,	422,	'Slider : 1',	'\n<div id=\"HTMLBlock422\" class=\"HTMLBlock\">\n<div class=\"row\">\r\n    <div class=\"col l12 s6\"><a href=\"/template-concrete5/index.php/transparencia\" target=\"_self\"><img src=\"/template-concrete5/application/files/1114/5581/5455/acceso_informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://informacionpublica.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/8514/5581/5457/informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.denuncias.gov.py/ssps/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/4814/5581/5456/denuncias_btn.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.paraguay.gov.py/\" target=\"_blank\"><img src=\"/template-concrete5/application/files/3014/5581/5456/portal_parauay_btn2.png\" style=\"width:100%\"></a></div>\r\n</div>\r\n</div>',	1617022581),
(162,	94,	13,	'Search',	'<img src=\"/template-concrete5/application/files/9214/5581/5209/Gobierno-Logo-Espanol---Guarani-SM-claro-V2.png\" alt=\"Gobierno-Logo-Espanol---Guarani-SM-claro-V2.png\" width=\"244\" height=\"95\" class=\"ccm-image-block img-responsive bID-13\">\n',	1617022530),
(162,	94,	212,	'Footer Contact',	'<a href=\"http://www.senatics.gov.py\"><img src=\"/template-concrete5/application/files/cache/482987386e225605b24db6d65038a2e0.png\" alt=\"SENATICs\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-212\" title=\"SENATICs\"></a>\n',	1617022530),
(162,	94,	417,	'Header Site Title',	'<a href=\"http://localhost/template-concrete5/index.php\"><img src=\"/template-concrete5/application/files/7314/5581/5049/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-417\"></a>\n',	1617022530);

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersionBlockStyles` (`cID`, `cvID`, `bID`, `arHandle`, `issID`) VALUES
(163,	1,	41,	'Contenido',	1),
(188,	1,	41,	'Contenido',	1),
(188,	2,	41,	'Contenido',	1),
(188,	3,	41,	'Contenido',	1),
(188,	4,	41,	'Contenido',	1),
(188,	5,	41,	'Contenido',	1),
(188,	6,	41,	'Contenido',	1),
(189,	1,	41,	'Contenido',	1),
(189,	2,	41,	'Contenido',	1),
(190,	1,	41,	'Contenido',	1),
(190,	2,	41,	'Contenido',	1),
(190,	3,	41,	'Contenido',	1),
(190,	4,	41,	'Contenido',	1),
(163,	1,	42,	'Contenido',	3),
(188,	1,	42,	'Contenido',	3),
(188,	2,	42,	'Contenido',	3),
(188,	3,	42,	'Contenido',	3),
(188,	4,	42,	'Contenido',	3),
(188,	5,	42,	'Contenido',	3),
(188,	6,	42,	'Contenido',	3),
(189,	1,	42,	'Contenido',	3),
(189,	2,	42,	'Contenido',	3),
(190,	1,	42,	'Contenido',	3),
(190,	2,	42,	'Contenido',	3),
(190,	3,	42,	'Contenido',	3),
(190,	4,	42,	'Contenido',	3);

DROP TABLE IF EXISTS `CollectionVersionFeatureAssignments`;
CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersionFeatureAssignments` (`cID`, `cvID`, `faID`) VALUES
(146,	2,	1),
(155,	2,	2),
(155,	3,	2),
(155,	4,	2),
(155,	5,	2),
(155,	6,	2),
(150,	2,	3),
(150,	3,	3),
(150,	4,	4),
(150,	5,	5),
(178,	3,	6),
(150,	6,	7),
(146,	3,	8);

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `CollectionVersions`;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `pThemeID`, `pTemplateID`, `cvActivateDatetime`) VALUES
(1,	1,	'Home',	'home',	'',	'2016-02-18 13:33:16',	'2016-02-18 13:33:16',	'Initial Version',	0,	0,	1,	NULL,	2,	5,	NULL),
(1,	2,	'Home',	'home',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:00:14',	'Nueva Versión 2',	0,	0,	1,	1,	2,	6,	NULL),
(1,	3,	'Home',	'home',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:04:14',	'Version 3',	0,	0,	1,	1,	2,	6,	NULL),
(1,	4,	'Home',	'home',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:11:28',	'Version 4',	0,	0,	1,	1,	2,	6,	NULL),
(1,	5,	'Home',	'portada',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:13:52',	'Version 5',	0,	0,	1,	1,	2,	6,	NULL),
(1,	6,	'Home',	'portada',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:17:04',	'Version 6',	0,	0,	1,	1,	2,	6,	NULL),
(1,	7,	'Home',	'portada',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:17:24',	'Version 7',	0,	0,	1,	1,	2,	6,	NULL),
(1,	8,	'Home',	'portada',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:18:41',	'Version 8',	0,	0,	1,	1,	2,	6,	NULL),
(1,	9,	'Portada',	'portada',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:19:51',	'Version 9',	0,	0,	1,	1,	2,	6,	NULL),
(1,	10,	'',	'portada',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:20:28',	'Version 10',	0,	0,	1,	1,	2,	6,	NULL),
(1,	11,	'',	'portada',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:20:56',	'Version 11',	0,	0,	1,	1,	2,	6,	NULL),
(1,	12,	'Portada',	'portada',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:22:29',	'Version 12',	0,	0,	1,	1,	2,	6,	NULL),
(1,	13,	'Portada',	'portada',	'',	'2016-02-18 13:33:16',	'2016-02-18 17:25:31',	'Version 13',	0,	0,	1,	1,	2,	6,	NULL),
(1,	14,	'',	'portada',	'',	'2016-02-18 13:33:00',	'2016-02-18 17:26:38',	'Version 14',	0,	0,	1,	1,	2,	6,	NULL),
(1,	15,	'',	'portada',	'',	'2016-02-18 13:33:00',	'2016-02-18 17:35:00',	'Version 15',	0,	0,	1,	1,	2,	6,	NULL),
(1,	16,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-02-18 17:36:12',	'Nueva Versión 16',	0,	0,	1,	1,	2,	6,	NULL),
(1,	17,	'',	'portada',	'',	'2016-02-18 13:33:00',	'2016-02-18 17:36:38',	'Nueva Versión 17',	0,	0,	1,	1,	2,	6,	NULL),
(1,	18,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-02-18 17:37:08',	'Version 18',	0,	0,	1,	1,	2,	6,	NULL),
(1,	19,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-02-18 17:37:42',	'Version 19',	0,	0,	1,	1,	2,	6,	NULL),
(1,	20,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-02-18 17:38:00',	'Version 20',	0,	0,	1,	1,	2,	6,	NULL),
(1,	21,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-02-19 11:03:36',	'Version 21',	0,	0,	1,	1,	2,	6,	NULL),
(1,	22,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-03-01 13:31:20',	'Version 22',	0,	0,	1,	1,	2,	6,	NULL),
(1,	23,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-03-29 08:19:22',	'Version 23',	0,	0,	1,	1,	2,	6,	NULL),
(1,	24,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-03-29 08:22:17',	'Version 24',	0,	0,	1,	1,	2,	6,	NULL),
(1,	25,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-03-29 08:23:22',	'Version 25',	0,	0,	1,	1,	2,	6,	NULL),
(1,	26,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-03-29 08:24:02',	'Version 26',	0,	0,	1,	1,	2,	6,	NULL),
(1,	27,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-03-29 08:28:22',	'Version 27',	0,	0,	1,	1,	2,	6,	NULL),
(1,	28,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-03-29 08:28:54',	'Version 28',	0,	0,	1,	1,	2,	6,	NULL),
(1,	29,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-03-29 08:29:47',	'Version 29',	0,	0,	1,	1,	2,	6,	NULL),
(1,	30,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-03-29 08:56:03',	'Version 30',	0,	0,	1,	1,	2,	6,	NULL),
(1,	31,	'Portada',	'portada',	'',	'2016-02-18 13:33:00',	'2016-03-29 08:56:18',	'Version 31',	1,	0,	1,	1,	2,	6,	NULL),
(2,	1,	'Dashboard',	'dashboard',	'',	'2016-02-18 13:33:45',	'2016-02-18 13:33:45',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(3,	1,	'Sitemap',	'sitemap',	'Whole world at a glance.',	'2016-02-18 13:33:46',	'2016-02-18 13:33:46',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(4,	1,	'Full Sitemap',	'full',	'',	'2016-02-18 13:33:46',	'2016-02-18 13:33:46',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(5,	1,	'Flat View',	'explore',	'',	'2016-02-18 13:33:46',	'2016-02-18 13:33:46',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(6,	1,	'Page Search',	'search',	'',	'2016-02-18 13:33:47',	'2016-02-18 13:33:47',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(7,	1,	'Files',	'files',	'All documents and images.',	'2016-02-18 13:33:47',	'2016-02-18 13:33:47',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(8,	1,	'File Manager',	'search',	'',	'2016-02-18 13:33:47',	'2016-02-18 13:33:47',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(9,	1,	'Attributes',	'attributes',	'',	'2016-02-18 13:33:48',	'2016-02-18 13:33:48',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(10,	1,	'File Sets',	'sets',	'',	'2016-02-18 13:33:48',	'2016-02-18 13:33:48',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(11,	1,	'Add File Set',	'add_set',	'',	'2016-02-18 13:33:48',	'2016-02-18 13:33:48',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(12,	1,	'Members',	'users',	'Add and manage the user accounts and groups on your website.',	'2016-02-18 13:33:49',	'2016-02-18 13:33:49',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(13,	1,	'Search Users',	'search',	'',	'2016-02-18 13:33:49',	'2016-02-18 13:33:49',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(14,	1,	'User Groups',	'groups',	'',	'2016-02-18 13:33:49',	'2016-02-18 13:33:49',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(15,	1,	'Attributes',	'attributes',	'',	'2016-02-18 13:33:50',	'2016-02-18 13:33:50',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(16,	1,	'Add User',	'add',	'',	'2016-02-18 13:33:50',	'2016-02-18 13:33:50',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(17,	1,	'Add Group',	'add_group',	'',	'2016-02-18 13:33:50',	'2016-02-18 13:33:50',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(18,	1,	'Move Multiple Groups',	'bulkupdate',	'',	'2016-02-18 13:33:51',	'2016-02-18 13:33:51',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(19,	1,	'Group Sets',	'group_sets',	'',	'2016-02-18 13:33:51',	'2016-02-18 13:33:51',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(20,	1,	'Community Points',	'points',	NULL,	'2016-02-18 13:33:52',	'2016-02-18 13:33:52',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(21,	1,	'Assign Points',	'assign',	NULL,	'2016-02-18 13:33:52',	'2016-02-18 13:33:52',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(22,	1,	'Actions',	'actions',	NULL,	'2016-02-18 13:33:52',	'2016-02-18 13:33:52',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(23,	1,	'Reports',	'reports',	'Get data from forms and logs.',	'2016-02-18 13:33:53',	'2016-02-18 13:33:53',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(24,	1,	'Form Results',	'forms',	'Get submission data.',	'2016-02-18 13:33:53',	'2016-02-18 13:33:53',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(25,	1,	'Surveys',	'surveys',	'',	'2016-02-18 13:33:53',	'2016-02-18 13:33:53',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(26,	1,	'Logs',	'logs',	'',	'2016-02-18 13:33:54',	'2016-02-18 13:33:54',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(27,	1,	'Pages & Themes',	'pages',	'Reskin your site.',	'2016-02-18 13:33:54',	'2016-02-18 13:33:54',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(28,	1,	'Themes',	'themes',	'Reskin your site.',	'2016-02-18 13:33:55',	'2016-02-18 13:33:55',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(29,	1,	'Inspect',	'inspect',	'',	'2016-02-18 13:33:55',	'2016-02-18 13:33:55',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(30,	1,	'Page Types',	'types',	'',	'2016-02-18 13:33:56',	'2016-02-18 13:33:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(31,	1,	'Organize Page Type Order',	'organize',	'',	'2016-02-18 13:33:56',	'2016-02-18 13:33:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(32,	1,	'Add Page Type',	'add',	'',	'2016-02-18 13:33:56',	'2016-02-18 13:33:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(33,	1,	'Compose Form',	'form',	'',	'2016-02-18 13:33:56',	'2016-02-18 13:33:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(34,	1,	'Defaults and Output',	'output',	'',	'2016-02-18 13:33:57',	'2016-02-18 13:33:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(35,	1,	'Page Type Attributes',	'attributes',	'',	'2016-02-18 13:33:57',	'2016-02-18 13:33:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(36,	1,	'Page Type Permissions',	'permissions',	'',	'2016-02-18 13:33:58',	'2016-02-18 13:33:58',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(37,	1,	'Page Templates',	'templates',	'Form factors for pages in your site.',	'2016-02-18 13:33:58',	'2016-02-18 13:33:58',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(38,	1,	'Add Page Template',	'add',	'Add page templates to your site.',	'2016-02-18 13:33:58',	'2016-02-18 13:33:58',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(39,	1,	'Attributes',	'attributes',	'',	'2016-02-18 13:33:59',	'2016-02-18 13:33:59',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(40,	1,	'Single Pages',	'single',	'',	'2016-02-18 13:33:59',	'2016-02-18 13:33:59',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(41,	1,	'RSS Feeds',	'feeds',	'',	'2016-02-18 13:33:59',	'2016-02-18 13:33:59',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(42,	1,	'Conversations',	'conversations',	'',	'2016-02-18 13:34:00',	'2016-02-18 13:34:00',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(43,	1,	'Messages',	'messages',	'',	'2016-02-18 13:34:00',	'2016-02-18 13:34:00',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(44,	1,	'Workflow',	'workflow',	'',	'2016-02-18 13:34:01',	'2016-02-18 13:34:01',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(45,	1,	'Waiting for Me',	'me',	'',	'2016-02-18 13:34:01',	'2016-02-18 13:34:01',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(46,	1,	'Workflow List',	'workflows',	'',	'2016-02-18 13:34:01',	'2016-02-18 13:34:01',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(47,	1,	'Stacks & Blocks',	'blocks',	'Manage sitewide content and administer block types.',	'2016-02-18 13:34:02',	'2016-02-18 13:34:02',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(48,	1,	'Stacks',	'stacks',	'Share content across your site.',	'2016-02-18 13:34:03',	'2016-02-18 13:34:03',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(49,	1,	'Block & Stack Permissions',	'permissions',	'Control who can add blocks and stacks on your site.',	'2016-02-18 13:34:03',	'2016-02-18 13:34:03',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(50,	1,	'Stack List',	'list',	'',	'2016-02-18 13:34:03',	'2016-02-18 13:34:03',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(51,	1,	'Block Types',	'types',	'Manage the installed block types in your site.',	'2016-02-18 13:34:04',	'2016-02-18 13:34:04',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(52,	1,	'Extend concrete5',	'extend',	'',	'2016-02-18 13:34:04',	'2016-02-18 13:34:04',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(53,	1,	'Dashboard',	'news',	'',	'2016-02-18 13:34:04',	'2016-02-18 13:34:04',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(54,	1,	'Add Functionality',	'install',	'Install add-ons & themes.',	'2016-02-18 13:34:05',	'2016-02-18 13:34:05',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(55,	1,	'Update Add-Ons',	'update',	'Update your installed packages.',	'2016-02-18 13:34:05',	'2016-02-18 13:34:05',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(56,	1,	'Connect to the Community',	'connect',	'Connect to the concrete5 community.',	'2016-02-18 13:34:06',	'2016-02-18 13:34:06',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(57,	1,	'Get More Themes',	'themes',	'Download themes from concrete5.org.',	'2016-02-18 13:34:06',	'2016-02-18 13:34:06',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(58,	1,	'Get More Add-Ons',	'addons',	'Download add-ons from concrete5.org.',	'2016-02-18 13:34:07',	'2016-02-18 13:34:07',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(59,	1,	'System & Settings',	'system',	'Secure and setup your site.',	'2016-02-18 13:34:07',	'2016-02-18 13:34:07',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(60,	1,	'Basics',	'basics',	'Basic information about your website.',	'2016-02-18 13:34:08',	'2016-02-18 13:34:08',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(61,	1,	'Site Name',	'name',	'',	'2016-02-18 13:34:08',	'2016-02-18 13:34:08',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(62,	1,	'Accessibility',	'accessibility',	'',	'2016-02-18 13:34:08',	'2016-02-18 13:34:08',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(63,	1,	'Social Links',	'social',	'',	'2016-02-18 13:34:09',	'2016-02-18 13:34:09',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(64,	1,	'Bookmark Icons',	'icons',	'Bookmark icon and mobile home screen icon setup.',	'2016-02-18 13:34:09',	'2016-02-18 13:34:09',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(65,	1,	'Rich Text Editor',	'editor',	'',	'2016-02-18 13:34:10',	'2016-02-18 13:34:10',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(66,	1,	'Languages',	'multilingual',	'',	'2016-02-18 13:34:10',	'2016-02-18 13:34:10',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(67,	1,	'Time Zone',	'timezone',	'',	'2016-02-18 13:34:11',	'2016-02-18 13:34:11',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(68,	1,	'Multilingual',	'multilingual',	'Run your site in multiple languages.',	'2016-02-18 13:34:11',	'2016-02-18 13:34:11',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(69,	1,	'Multilingual Setup',	'setup',	'',	'2016-02-18 13:34:12',	'2016-02-18 13:34:12',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(70,	1,	'Copy Languages',	'copy',	'',	'2016-02-18 13:34:12',	'2016-02-18 13:34:12',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(71,	1,	'Page Report',	'page_report',	'',	'2016-02-18 13:34:12',	'2016-02-18 13:34:12',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(72,	1,	'Translate Site Interface',	'translate_interface',	'',	'2016-02-18 13:34:13',	'2016-02-18 13:34:13',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(73,	1,	'SEO & Statistics',	'seo',	'Enable pretty URLs and tracking codes.',	'2016-02-18 13:34:13',	'2016-02-18 13:34:13',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(74,	1,	'URLs and Redirection',	'urls',	'',	'2016-02-18 13:34:13',	'2016-02-18 13:34:13',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(75,	1,	'Bulk SEO Updater',	'bulk',	'',	'2016-02-18 13:34:14',	'2016-02-18 13:34:14',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(76,	1,	'Tracking Codes',	'codes',	'',	'2016-02-18 13:34:14',	'2016-02-18 13:34:14',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(77,	1,	'Excluded URL Word List',	'excluded',	'',	'2016-02-18 13:34:15',	'2016-02-18 13:34:15',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(78,	1,	'Search Index',	'searchindex',	'',	'2016-02-18 13:34:15',	'2016-02-18 13:34:15',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(79,	1,	'Files',	'files',	'',	'2016-02-18 13:34:15',	'2016-02-18 13:34:15',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(80,	1,	'File Manager Permissions',	'permissions',	'',	'2016-02-18 13:34:16',	'2016-02-18 13:34:16',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(81,	1,	'Allowed File Types',	'filetypes',	'',	'2016-02-18 13:34:16',	'2016-02-18 13:34:16',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(82,	1,	'Thumbnails',	'thumbnails',	'',	'2016-02-18 13:34:16',	'2016-02-18 13:34:16',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(83,	1,	'Image Uploading',	'image_uploading',	'',	'2016-02-18 13:34:17',	'2016-02-18 13:34:17',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(84,	1,	'File Storage Locations',	'storage',	'',	'2016-02-18 13:34:17',	'2016-02-18 13:34:17',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(85,	1,	'Optimization',	'optimization',	'Keep your site running well.',	'2016-02-18 13:34:18',	'2016-02-18 13:34:18',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(86,	1,	'Cache & Speed Settings',	'cache',	'',	'2016-02-18 13:34:18',	'2016-02-18 13:34:18',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(87,	1,	'Clear Cache',	'clearcache',	'',	'2016-02-18 13:34:18',	'2016-02-18 13:34:18',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(88,	1,	'Automated Jobs',	'jobs',	'',	'2016-02-18 13:34:19',	'2016-02-18 13:34:19',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(89,	1,	'Database Query Log',	'query_log',	'',	'2016-02-18 13:34:19',	'2016-02-18 13:34:19',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(90,	1,	'Permissions & Access',	'permissions',	'Control who sees and edits your site.',	'2016-02-18 13:34:19',	'2016-02-18 13:34:19',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(91,	1,	'Site Access',	'site',	'',	'2016-02-18 13:34:20',	'2016-02-18 13:34:20',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(92,	1,	'Task Permissions',	'tasks',	'',	'2016-02-18 13:34:20',	'2016-02-18 13:34:20',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(93,	1,	'User Permissions',	'users',	'',	'2016-02-18 13:34:20',	'2016-02-18 13:34:20',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(94,	1,	'Advanced Permissions',	'advanced',	'',	'2016-02-18 13:34:21',	'2016-02-18 13:34:21',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(95,	1,	'IP Blacklist',	'blacklist',	'',	'2016-02-18 13:34:21',	'2016-02-18 13:34:21',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(96,	1,	'Captcha Setup',	'captcha',	'',	'2016-02-18 13:34:22',	'2016-02-18 13:34:22',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(97,	1,	'Spam Control',	'antispam',	'',	'2016-02-18 13:34:22',	'2016-02-18 13:34:22',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(98,	1,	'Maintenance Mode',	'maintenance',	'',	'2016-02-18 13:34:23',	'2016-02-18 13:34:23',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(99,	1,	'Login & Registration',	'registration',	'Change login behaviors and setup public profiles.',	'2016-02-18 13:34:23',	'2016-02-18 13:34:23',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(100,	1,	'Login Destination',	'postlogin',	'',	'2016-02-18 13:34:24',	'2016-02-18 13:34:24',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(101,	1,	'Public Profiles',	'profiles',	'',	'2016-02-18 13:34:24',	'2016-02-18 13:34:24',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(102,	1,	'Public Registration',	'open',	'',	'2016-02-18 13:34:24',	'2016-02-18 13:34:24',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(103,	1,	'Authentication Types',	'authentication',	'',	'2016-02-18 13:34:25',	'2016-02-18 13:34:25',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(104,	1,	'Email',	'mail',	'Control how your site send and processes mail.',	'2016-02-18 13:34:25',	'2016-02-18 13:34:25',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(105,	1,	'SMTP Method',	'method',	'',	'2016-02-18 13:34:26',	'2016-02-18 13:34:26',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(106,	1,	'Test Mail Settings',	'test',	'',	'2016-02-18 13:34:26',	'2016-02-18 13:34:26',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(107,	1,	'Email Importers',	'importers',	'',	'2016-02-18 13:34:26',	'2016-02-18 13:34:26',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(108,	1,	'Conversations',	'conversations',	'Manage your conversations settings',	'2016-02-18 13:34:27',	'2016-02-18 13:34:27',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(109,	1,	'Settings',	'settings',	'',	'2016-02-18 13:34:27',	'2016-02-18 13:34:27',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(110,	1,	'Community Points',	'points',	'',	'2016-02-18 13:34:28',	'2016-02-18 13:34:28',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(111,	1,	'Banned Words',	'bannedwords',	'',	'2016-02-18 13:34:28',	'2016-02-18 13:34:28',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(112,	1,	'Conversation Permissions',	'permissions',	'',	'2016-02-18 13:34:28',	'2016-02-18 13:34:28',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(113,	1,	'Attributes',	'attributes',	'Setup attributes for pages, users, files and more.',	'2016-02-18 13:34:29',	'2016-02-18 13:34:29',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(114,	1,	'Sets',	'sets',	'Group attributes into sets for easier organization',	'2016-02-18 13:34:29',	'2016-02-18 13:34:29',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(115,	1,	'Types',	'types',	'Choose which attribute types are available for different items.',	'2016-02-18 13:34:30',	'2016-02-18 13:34:30',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(116,	1,	'Topics',	'topics',	'',	'2016-02-18 13:34:30',	'2016-02-18 13:34:30',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(117,	1,	'Add Topic Tree',	'add',	'',	'2016-02-18 13:34:30',	'2016-02-18 13:34:30',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(118,	1,	'Environment',	'environment',	'Advanced settings for web developers.',	'2016-02-18 13:34:30',	'2016-02-18 13:34:30',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(119,	1,	'Environment Information',	'info',	'',	'2016-02-18 13:34:31',	'2016-02-18 13:34:31',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(120,	1,	'Debug Settings',	'debug',	'',	'2016-02-18 13:34:31',	'2016-02-18 13:34:31',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(121,	1,	'Logging Settings',	'logging',	'',	'2016-02-18 13:34:32',	'2016-02-18 13:34:32',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(122,	1,	'Proxy Server',	'proxy',	'',	'2016-02-18 13:34:32',	'2016-02-18 13:34:32',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(123,	1,	'Database Entities',	'entities',	'',	'2016-02-18 13:34:33',	'2016-02-18 13:34:33',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(124,	1,	'Backup & Restore',	'backup',	'Backup or restore your website.',	'2016-02-18 13:34:33',	'2016-02-18 13:34:33',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(125,	1,	'Backup Database',	'backup',	'',	'2016-02-18 13:34:34',	'2016-02-18 13:34:34',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(126,	1,	'Update concrete5',	'update',	'',	'2016-02-18 13:34:34',	'2016-02-18 13:34:34',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(127,	1,	'Welcome to concrete5',	'welcome',	'Learn about how to use concrete5, how to develop for concrete5, and get general help.',	'2016-02-18 13:34:37',	'2016-02-18 13:34:37',	'Initial Version',	1,	0,	1,	NULL,	2,	4,	NULL),
(128,	1,	'Customize Dashboard Home',	'home',	'',	'2016-02-18 13:34:37',	'2016-02-18 13:34:37',	'Initial Version',	1,	0,	1,	NULL,	2,	2,	NULL),
(129,	1,	'Drafts',	'!drafts',	'',	'2016-02-18 13:34:53',	'2016-02-18 13:34:53',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(130,	1,	'Trash',	'!trash',	'',	'2016-02-18 13:34:54',	'2016-02-18 13:34:54',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(131,	1,	'Stacks',	'!stacks',	'',	'2016-02-18 13:34:54',	'2016-02-18 13:34:54',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(132,	1,	'Login',	'login',	'',	'2016-02-18 13:34:55',	'2016-02-18 13:34:55',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(133,	1,	'Register',	'register',	'',	'2016-02-18 13:34:55',	'2016-02-18 13:34:55',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(134,	1,	'My Account',	'account',	'',	'2016-02-18 13:34:56',	'2016-02-18 13:34:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(135,	1,	'Edit Profile',	'edit_profile',	'Edit your user profile and change password.',	'2016-02-18 13:34:56',	'2016-02-18 13:34:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(136,	1,	'Profile Picture',	'avatar',	'Specify a new image attached to posts or edits.',	'2016-02-18 13:34:56',	'2016-02-18 13:34:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(137,	1,	'Messages',	'messages',	'Inbox for site-specific messages.',	'2016-02-18 13:34:57',	'2016-02-18 13:34:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(138,	1,	'Inbox',	'inbox',	'',	'2016-02-18 13:34:57',	'2016-02-18 13:34:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(139,	1,	'Members',	'members',	'',	'2016-02-18 13:34:57',	'2016-02-18 13:34:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(140,	1,	'View Profile',	'profile',	'',	'2016-02-18 13:34:57',	'2016-02-18 13:34:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(141,	1,	'Directory',	'directory',	'',	'2016-02-18 13:34:58',	'2016-02-18 13:34:58',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(142,	1,	'Page Not Found',	'page_not_found',	'',	'2016-02-18 13:34:58',	'2016-02-18 13:34:58',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(143,	1,	'Page Forbidden',	'page_forbidden',	'',	'2016-02-18 13:34:58',	'2016-02-18 13:34:58',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(144,	1,	'Download File',	'download_file',	'',	'2016-02-18 13:34:59',	'2016-02-18 13:34:59',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(145,	1,	'',	NULL,	NULL,	'2016-02-18 13:35:02',	'2016-02-18 13:35:02',	'Initial Version',	1,	0,	NULL,	NULL,	0,	5,	NULL),
(146,	1,	'Header Site Title',	'header-site-title',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 13:36:00',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(146,	2,	'Header Site Title',	'header-site-title',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 17:04:14',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(146,	3,	'Header Site Title',	'header-site-title',	NULL,	'2016-02-18 13:36:00',	'2016-03-29 08:22:17',	'Nueva Versión 3',	1,	0,	1,	1,	2,	0,	NULL),
(147,	1,	'Header Navigation',	'header-navigation',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 13:36:00',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(147,	2,	'Header Navigation',	'header-navigation',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 17:07:31',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(147,	3,	'Header Navigation',	'header-navigation',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 17:07:37',	'Nueva Versión 3',	0,	0,	1,	1,	2,	0,	NULL),
(147,	4,	'Header Navigation',	'header-navigation',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 17:20:56',	'Nueva Versión 4',	0,	0,	1,	1,	2,	0,	NULL),
(147,	5,	'Header Navigation',	'header-navigation',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 17:21:41',	'Nueva Versión 5',	0,	0,	1,	1,	2,	0,	NULL),
(147,	6,	'Header Navigation',	'header-navigation',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 17:21:58',	'Nueva Versión 6',	0,	0,	1,	1,	2,	0,	NULL),
(147,	7,	'Header Navigation',	'header-navigation',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 17:22:07',	'Nueva Versión 7',	0,	0,	1,	1,	2,	0,	NULL),
(147,	8,	'Header Navigation',	'header-navigation',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 17:22:29',	'Nueva Versión 8',	0,	0,	1,	1,	2,	0,	NULL),
(147,	9,	'Header Navigation',	'header-navigation',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 17:25:31',	'Nueva Versión 9',	0,	0,	1,	1,	2,	0,	NULL),
(147,	10,	'Header Navigation',	'header-navigation',	NULL,	'2016-02-18 13:36:00',	'2016-02-18 17:37:08',	'Nueva Versión 10',	1,	0,	1,	1,	2,	0,	NULL),
(148,	1,	'Footer Legal',	'footer-legal',	NULL,	'2016-02-18 13:36:01',	'2016-02-18 13:36:01',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(148,	2,	'Footer Legal',	'footer-legal',	NULL,	'2016-02-18 13:36:01',	'2016-02-18 17:09:42',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(148,	3,	'Footer Legal',	'footer-legal',	NULL,	'2016-02-18 13:36:01',	'2016-03-29 08:19:22',	'Nueva Versión 3',	1,	0,	1,	1,	2,	0,	NULL),
(149,	1,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-02-18 13:36:01',	'2016-02-18 13:36:01',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(150,	1,	'Footer Contact',	'footer-contact',	NULL,	'2016-02-18 13:36:01',	'2016-02-18 13:36:01',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(150,	2,	'Footer Contact',	'footer-contact',	NULL,	'2016-02-18 13:36:01',	'2016-02-18 17:08:56',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(150,	3,	'Footer Contact',	'footer-contact',	NULL,	'2016-02-18 13:36:01',	'2016-02-18 17:09:02',	'Nueva Versión 3',	0,	0,	1,	1,	2,	0,	NULL),
(150,	4,	'Footer Contact',	'footer-contact',	NULL,	'2016-02-18 13:36:01',	'2016-02-18 17:17:24',	'Nueva Versión 4',	0,	0,	1,	1,	2,	0,	NULL),
(150,	5,	'Footer Contact',	'footer-contact',	NULL,	'2016-02-18 13:36:01',	'2016-02-18 17:17:39',	'Nueva Versión 5',	0,	0,	1,	1,	2,	0,	NULL),
(150,	6,	'Footer Contact',	'footer-contact',	NULL,	'2016-02-18 13:36:01',	'2016-03-01 13:31:20',	'Nueva Versión 6',	1,	0,	1,	1,	2,	0,	NULL),
(154,	1,	'',	NULL,	NULL,	'2016-02-18 17:02:02',	'2016-02-18 17:02:02',	'Initial Version',	1,	0,	NULL,	NULL,	0,	7,	NULL),
(155,	1,	'Search',	'search',	NULL,	'2016-02-18 17:02:02',	'2016-02-18 17:02:02',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(155,	2,	'Search',	'search',	NULL,	'2016-02-18 17:02:02',	'2016-02-18 17:06:53',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(155,	3,	'Search',	'search',	NULL,	'2016-02-18 17:02:02',	'2016-02-18 17:07:05',	'Nueva Versión 3',	0,	0,	1,	1,	2,	0,	NULL),
(155,	4,	'Search',	'search',	NULL,	'2016-02-18 17:02:02',	'2016-02-18 17:07:12',	'Nueva Versión 4',	0,	0,	1,	1,	2,	0,	NULL),
(155,	5,	'Search',	'search',	NULL,	'2016-02-18 17:02:02',	'2016-02-18 17:07:18',	'Nueva Versión 5',	0,	0,	1,	1,	2,	0,	NULL),
(155,	6,	'Search',	'search',	NULL,	'2016-02-18 17:02:02',	'2016-02-19 11:40:38',	'Nueva Versión 6',	1,	0,	1,	1,	2,	0,	NULL),
(156,	1,	'Institución',	'institucion',	NULL,	'2016-02-18 17:27:16',	'2016-02-18 17:27:16',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(156,	2,	'Institución',	'institucion',	NULL,	'2016-02-18 17:27:16',	'2016-03-01 12:47:31',	'Version 2',	1,	0,	1,	1,	2,	7,	NULL),
(157,	1,	'Misión y Visión',	'mision-y-vision',	NULL,	'2016-02-18 17:29:58',	'2016-02-18 17:29:58',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(157,	2,	'Misión y Visión',	'mision-y-vision',	NULL,	'2016-02-18 17:29:58',	'2016-02-24 11:40:25',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(157,	3,	'Misión y Visión',	'mision-y-vision',	NULL,	'2016-02-18 17:29:58',	'2016-02-24 12:14:44',	'Version 3',	1,	0,	1,	1,	2,	7,	NULL),
(158,	1,	'Noticias',	'noticias',	NULL,	'2016-02-18 17:30:32',	'2016-02-18 17:30:32',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(158,	2,	'Noticias',	'noticias',	NULL,	'2016-02-18 17:30:32',	'2016-02-19 11:09:51',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(158,	3,	'Noticias',	'noticias',	NULL,	'2016-02-18 17:30:32',	'2016-02-19 11:12:58',	'Version 3',	0,	0,	1,	1,	2,	7,	NULL),
(158,	4,	'Noticias',	'noticias',	NULL,	'2016-02-18 17:30:32',	'2016-02-19 11:13:45',	'Version 4',	0,	0,	1,	1,	2,	7,	NULL),
(158,	5,	'Noticias',	'noticias',	NULL,	'2016-02-18 17:30:32',	'2016-02-19 11:15:07',	'Version 5',	0,	0,	1,	1,	2,	7,	NULL),
(158,	6,	'Noticias',	'noticias',	NULL,	'2016-02-18 17:30:32',	'2016-02-19 11:19:28',	'Version 6',	0,	0,	1,	1,	2,	7,	NULL),
(158,	7,	'Noticias',	'noticias',	NULL,	'2016-02-18 17:30:32',	'2016-02-19 11:21:49',	'Version 7',	0,	0,	1,	1,	2,	7,	NULL),
(158,	8,	'Noticias',	'noticias',	NULL,	'2016-02-18 17:30:32',	'2016-03-01 14:13:40',	'Version 8',	0,	0,	1,	1,	2,	7,	NULL),
(158,	9,	'Noticias',	'noticias',	NULL,	'2016-02-18 17:30:32',	'2016-03-22 14:46:34',	'Version 9',	1,	0,	1,	1,	2,	7,	NULL),
(161,	1,	'Transparencia',	'transparencia',	NULL,	'2016-02-18 17:31:23',	'2016-02-18 17:31:23',	'Initial Version',	1,	0,	1,	1,	2,	7,	NULL),
(162,	1,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-02-18 17:31:41',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(162,	2,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-02-18 17:31:51',	'Nueva Versión 2',	0,	0,	1,	1,	2,	7,	NULL),
(162,	3,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-02-19 10:58:02',	'Version 3',	0,	0,	1,	1,	2,	7,	NULL),
(162,	4,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-01 14:45:04',	'Version 4',	0,	0,	1,	1,	2,	7,	NULL),
(162,	5,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-01 14:48:11',	'Version 5',	0,	0,	1,	1,	2,	7,	NULL),
(162,	6,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-01 14:51:36',	'Version 6',	0,	0,	1,	1,	2,	7,	NULL),
(162,	7,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-02 17:16:47',	'Version 7',	0,	0,	1,	1,	2,	7,	NULL),
(162,	8,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-02 17:26:43',	'Version 8',	0,	0,	1,	1,	2,	7,	NULL),
(162,	9,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-02 17:28:03',	'Version 9',	0,	0,	1,	1,	2,	7,	NULL),
(162,	10,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-02 17:28:54',	'Version 10',	0,	0,	1,	1,	2,	7,	NULL),
(162,	11,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-02 17:30:21',	'Version 11',	0,	0,	1,	1,	2,	7,	NULL),
(162,	12,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-02 17:31:18',	'Version 12',	0,	0,	1,	1,	2,	7,	NULL),
(162,	13,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-02 17:38:49',	'Version 13',	0,	0,	1,	1,	2,	7,	NULL),
(162,	14,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-02 17:39:30',	'Version 14',	0,	0,	1,	1,	2,	7,	NULL),
(162,	15,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-04 11:37:45',	'Version 15',	0,	0,	1,	1,	2,	7,	NULL),
(162,	16,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-18 11:38:16',	'Version 16',	0,	0,	1,	1,	2,	7,	NULL),
(162,	17,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-18 12:19:45',	'Version 17',	0,	0,	1,	1,	2,	7,	NULL),
(162,	18,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-18 12:56:57',	'Version 18',	0,	0,	1,	1,	2,	7,	NULL),
(162,	19,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-18 13:34:53',	'Version 19',	0,	0,	1,	1,	2,	7,	NULL),
(162,	20,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-18 13:36:17',	'Version 20',	0,	0,	1,	1,	2,	7,	NULL),
(162,	21,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-18 18:02:16',	'Version 21',	0,	0,	1,	1,	2,	7,	NULL),
(162,	22,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-18 18:10:14',	'Version 22',	0,	0,	1,	1,	2,	7,	NULL),
(162,	23,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-18 18:41:03',	'Version 23',	0,	0,	1,	1,	2,	7,	NULL),
(162,	24,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 11:13:34',	'Version 24',	0,	0,	1,	1,	2,	7,	NULL),
(162,	25,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 12:17:15',	'Version 25',	0,	0,	1,	1,	2,	7,	NULL),
(162,	26,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 12:29:20',	'Version 26',	0,	0,	1,	1,	2,	7,	NULL),
(162,	27,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 12:55:51',	'Version 27',	0,	0,	1,	1,	2,	7,	NULL),
(162,	28,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 14:40:22',	'Version 28',	0,	0,	1,	1,	2,	7,	NULL),
(162,	29,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 16:30:04',	'Version 29',	0,	0,	1,	1,	2,	7,	NULL),
(162,	30,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 16:36:11',	'Version 30',	0,	0,	1,	1,	2,	7,	NULL),
(162,	31,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 16:46:29',	'Version 31',	0,	0,	1,	1,	2,	7,	NULL),
(162,	32,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 17:07:46',	'Version 32',	0,	0,	1,	1,	2,	7,	NULL),
(162,	33,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 17:08:17',	'Version 33',	0,	0,	1,	1,	2,	7,	NULL),
(162,	34,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 17:14:25',	'Version 34',	0,	0,	1,	1,	2,	7,	NULL),
(162,	35,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 17:14:44',	'Version 35',	0,	0,	1,	1,	2,	7,	NULL),
(162,	36,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 17:20:44',	'Version 36',	0,	0,	1,	1,	2,	7,	NULL),
(162,	37,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 17:38:09',	'Version 37',	0,	0,	1,	1,	2,	7,	NULL),
(162,	38,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 17:49:20',	'Version 38',	0,	0,	1,	1,	2,	7,	NULL),
(162,	39,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 17:59:15',	'Version 39',	0,	0,	1,	1,	2,	7,	NULL),
(162,	40,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 18:18:24',	'Version 40',	0,	0,	1,	1,	2,	7,	NULL),
(162,	41,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 18:23:31',	'Version 41',	0,	0,	1,	1,	2,	7,	NULL),
(162,	42,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 18:27:30',	'Version 42',	0,	0,	1,	1,	2,	7,	NULL),
(162,	43,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 18:30:41',	'Version 43',	0,	0,	1,	1,	2,	7,	NULL),
(162,	44,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 18:40:03',	'Version 44',	0,	0,	1,	1,	2,	7,	NULL),
(162,	45,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 18:42:25',	'Version 45',	0,	0,	1,	1,	2,	7,	NULL),
(162,	46,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 18:47:18',	'Version 46',	0,	0,	1,	1,	2,	7,	NULL),
(162,	47,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 18:49:09',	'Version 47',	0,	0,	1,	1,	2,	7,	NULL),
(162,	48,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-21 18:51:40',	'Version 48',	0,	0,	1,	1,	2,	7,	NULL),
(162,	49,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-22 11:23:49',	'Version 49',	0,	0,	1,	1,	2,	7,	NULL),
(162,	50,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-22 11:24:30',	'Version 50',	0,	0,	1,	1,	2,	7,	NULL),
(162,	51,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-22 11:37:14',	'Version 51',	0,	0,	1,	1,	2,	7,	NULL),
(162,	52,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-22 12:09:46',	'Version 52',	0,	0,	1,	1,	2,	7,	NULL),
(162,	53,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-22 12:12:33',	'Version 53',	0,	0,	1,	1,	2,	7,	NULL),
(162,	54,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-22 13:32:51',	'Version 54',	0,	0,	1,	1,	2,	7,	NULL),
(162,	55,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-22 14:50:38',	'Version 55',	0,	0,	1,	1,	2,	7,	NULL),
(162,	56,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-22 15:01:14',	'Version 56',	0,	0,	1,	1,	2,	7,	NULL),
(162,	57,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-22 15:01:34',	'Version 57',	0,	0,	1,	1,	2,	7,	NULL),
(162,	58,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-22 15:34:51',	'Version 58',	0,	0,	1,	1,	2,	7,	NULL),
(162,	59,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-22 15:35:29',	'Version 59',	0,	0,	1,	1,	2,	7,	NULL),
(162,	60,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 08:28:09',	'Version 60',	0,	0,	1,	1,	2,	7,	NULL),
(162,	61,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 08:31:25',	'Version 61',	0,	0,	1,	1,	2,	7,	NULL),
(162,	62,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 08:32:56',	'Version 62',	0,	0,	1,	1,	2,	7,	NULL),
(162,	63,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 09:21:47',	'Nueva Versión 63',	0,	0,	1,	1,	2,	7,	NULL),
(162,	64,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 09:30:36',	'Version 64',	0,	0,	1,	1,	2,	7,	NULL),
(162,	65,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 09:31:19',	'Version 65',	0,	0,	1,	1,	2,	7,	NULL),
(162,	66,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 09:32:31',	'Version 66',	0,	0,	1,	1,	2,	7,	NULL),
(162,	67,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 09:36:28',	'Version 67',	0,	0,	1,	1,	2,	7,	NULL),
(162,	68,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 09:40:10',	'Version 68',	0,	0,	1,	1,	2,	7,	NULL),
(162,	69,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:14:27',	'Version 69',	0,	0,	1,	1,	2,	7,	NULL),
(162,	70,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:17:32',	'Version 70',	0,	0,	1,	1,	2,	7,	NULL),
(162,	71,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:24:18',	'Version 71',	0,	0,	1,	1,	2,	7,	NULL),
(162,	72,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:24:55',	'Version 72',	0,	0,	1,	1,	2,	7,	NULL),
(162,	73,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:25:43',	'Version 73',	0,	0,	1,	1,	2,	7,	NULL),
(162,	74,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:27:18',	'Version 74',	0,	0,	1,	1,	2,	7,	NULL),
(162,	75,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:30:58',	'Version 75',	0,	0,	1,	1,	2,	7,	NULL),
(162,	76,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:35:49',	'Version 76',	0,	0,	1,	1,	2,	7,	NULL),
(162,	77,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:38:32',	'Version 77',	0,	0,	1,	1,	2,	7,	NULL),
(162,	78,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:42:37',	'Version 78',	0,	0,	1,	1,	2,	7,	NULL),
(162,	79,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:43:12',	'Version 79',	0,	0,	1,	1,	2,	7,	NULL),
(162,	80,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 10:50:36',	'Version 80',	0,	0,	1,	1,	2,	7,	NULL),
(162,	81,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 11:16:22',	'Version 81',	0,	0,	1,	1,	2,	7,	NULL),
(162,	82,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 11:49:38',	'Version 82',	0,	0,	1,	1,	2,	7,	NULL),
(162,	83,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 11:50:45',	'Version 83',	0,	0,	1,	1,	2,	7,	NULL),
(162,	84,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 11:51:14',	'Version 84',	0,	0,	1,	1,	2,	7,	NULL),
(162,	85,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 11:51:58',	'Version 85',	0,	0,	1,	1,	2,	7,	NULL),
(162,	86,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 11:53:04',	'Version 86',	0,	0,	1,	1,	2,	7,	NULL),
(162,	87,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 11:53:40',	'Version 87',	0,	0,	1,	1,	2,	7,	NULL),
(162,	88,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 12:54:27',	'Version 88',	0,	0,	1,	1,	2,	7,	NULL),
(162,	89,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 12:55:19',	'Version 89',	0,	0,	1,	1,	2,	7,	NULL),
(162,	90,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 14:02:15',	'Version 90',	0,	0,	1,	1,	2,	7,	NULL),
(162,	91,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 14:12:22',	'Version 91',	0,	0,	1,	1,	2,	7,	NULL),
(162,	92,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 14:12:47',	'Version 92',	0,	0,	1,	1,	2,	7,	NULL),
(162,	93,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-28 14:13:11',	'Version 93',	0,	0,	1,	1,	2,	7,	NULL),
(162,	94,	'Contacto',	'contacto',	NULL,	'2016-02-18 17:31:41',	'2016-03-29 08:16:29',	'Version 94',	1,	0,	1,	1,	2,	7,	NULL),
(163,	1,	'',	NULL,	NULL,	'2016-02-19 10:08:01',	'2016-02-19 10:08:01',	'Initial Version',	1,	0,	NULL,	NULL,	0,	7,	NULL),
(168,	1,	'Buscador',	'buscador',	NULL,	'2016-02-19 11:40:03',	'2016-02-19 11:40:03',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(168,	2,	'Buscador',	'buscador',	NULL,	'2016-02-19 11:40:03',	'2016-02-19 11:40:38',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(168,	3,	'Buscador',	'buscador',	NULL,	'2016-02-19 11:40:03',	'2016-02-19 11:40:55',	'Version 3',	0,	0,	1,	1,	2,	7,	NULL),
(168,	4,	'Buscador',	'buscador',	NULL,	'2016-02-19 11:40:03',	'2016-02-19 11:41:16',	'Version 4',	1,	0,	1,	1,	2,	7,	NULL),
(169,	1,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 11:54:07',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(169,	2,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 11:56:39',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(169,	3,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 11:57:55',	'Version 3',	0,	0,	1,	1,	2,	7,	NULL),
(169,	4,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 11:58:10',	'Version 4',	0,	0,	1,	1,	2,	7,	NULL),
(169,	5,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 11:58:26',	'Version 5',	0,	0,	1,	1,	2,	7,	NULL),
(169,	6,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 11:58:55',	'Version 6',	0,	0,	1,	1,	2,	7,	NULL),
(169,	7,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 11:59:43',	'Version 7',	0,	0,	1,	1,	2,	7,	NULL),
(169,	8,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 12:08:31',	'Version 8',	0,	0,	1,	1,	2,	7,	NULL),
(169,	9,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 14:02:20',	'Version 9',	0,	0,	1,	1,	2,	7,	NULL),
(169,	10,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 14:12:08',	'Version 10',	0,	0,	1,	1,	2,	7,	NULL),
(169,	11,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 17:57:32',	'Version 11',	0,	0,	1,	1,	2,	7,	NULL),
(169,	12,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 17:58:06',	'Version 12',	0,	0,	1,	1,	2,	7,	NULL),
(169,	13,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 17:58:21',	'Version 13',	0,	0,	1,	1,	2,	7,	NULL),
(169,	14,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-19 17:58:49',	'Nueva Versión 14',	0,	0,	1,	1,	2,	7,	NULL),
(169,	15,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-02-24 12:20:25',	'Version 15',	0,	0,	1,	1,	2,	7,	NULL),
(169,	16,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-03-01 13:19:18',	'Version 16',	0,	0,	1,	1,	2,	7,	NULL),
(169,	17,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-03-01 13:20:00',	'Version 17',	0,	0,	1,	1,	2,	7,	NULL),
(169,	18,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-03-01 13:20:25',	'Version 18',	0,	0,	1,	1,	2,	7,	NULL),
(169,	19,	'Galería',	'galeria',	NULL,	'2016-02-19 11:54:07',	'2016-03-01 13:51:03',	'Version 19',	1,	0,	1,	1,	2,	7,	NULL),
(170,	1,	'Event Calendar',	'event_calendar',	NULL,	'2016-02-19 13:49:01',	'2016-02-19 13:49:01',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(171,	1,	'Calendars list',	'list_calendar',	'',	'2016-02-19 13:49:02',	'2016-02-19 13:49:02',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(172,	1,	'Events list',	'list_event',	'',	'2016-02-19 13:49:02',	'2016-02-19 13:49:02',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(173,	1,	'Add / edit calendar',	'calendar',	'',	'2016-02-19 13:49:02',	'2016-02-19 13:49:02',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(174,	1,	'Add / edit event',	'event',	'',	'2016-02-19 13:49:03',	'2016-02-19 13:49:03',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(175,	1,	'Type of events',	'types',	'',	'2016-02-19 13:49:03',	'2016-02-19 13:49:03',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(176,	1,	'Settings',	'settings',	'',	'2016-02-19 13:49:04',	'2016-02-19 13:49:04',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(177,	1,	'Agenda',	'agenda',	NULL,	'2016-02-19 14:12:18',	'2016-02-19 14:12:18',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(177,	2,	'Agenda',	'agenda',	NULL,	'2016-02-19 14:12:18',	'2016-02-19 14:12:45',	'Nueva Versión 2',	0,	0,	1,	1,	2,	7,	NULL),
(177,	3,	'Agenda',	'agenda',	NULL,	'2016-02-19 14:12:18',	'2016-02-19 14:13:43',	'Version 3',	1,	0,	1,	1,	2,	7,	NULL),
(178,	1,	'Organigrama',	'organigrama',	NULL,	'2016-02-24 11:15:20',	'2016-02-24 11:15:20',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(178,	2,	'Organigrama',	'organigrama',	NULL,	'2016-02-24 11:15:20',	'2016-02-24 11:41:21',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(178,	3,	'Organigrama',	'organigrama',	NULL,	'2016-02-24 11:15:20',	'2016-02-24 12:17:02',	'Version 3',	1,	0,	1,	1,	2,	7,	NULL),
(179,	1,	'Autoridades',	'autoridades',	NULL,	'2016-02-24 11:15:41',	'2016-02-24 11:15:41',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(179,	2,	'Autoridades',	'autoridades',	NULL,	'2016-02-24 11:15:41',	'2016-02-24 11:41:50',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(179,	3,	'Autoridades',	'autoridades',	NULL,	'2016-02-24 11:15:41',	'2016-02-24 12:19:35',	'Version 3',	1,	0,	1,	1,	2,	7,	NULL),
(180,	1,	'Marco Legal',	'marco-legal',	NULL,	'2016-03-01 12:48:58',	'2016-03-01 12:48:58',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(180,	2,	'Marco Legal',	'marco-legal',	NULL,	'2016-03-01 12:48:58',	'2016-03-01 12:49:45',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(180,	3,	'Marco Legal',	'marco-legal',	NULL,	'2016-03-01 12:48:58',	'2016-03-01 12:55:41',	'Version 3',	0,	0,	1,	1,	2,	7,	NULL),
(180,	4,	'Marco Legal',	'marco-legal',	NULL,	'2016-03-01 12:48:58',	'2016-03-01 12:58:46',	'Version 4',	0,	0,	1,	1,	2,	7,	NULL),
(180,	5,	'Marco Legal',	'marco-legal',	NULL,	'2016-03-01 12:48:58',	'2016-03-01 12:59:33',	'Version 5',	0,	0,	1,	1,	2,	7,	NULL),
(180,	6,	'Marco Legal',	'marco-legal',	NULL,	'2016-03-01 12:48:58',	'2016-03-01 13:00:59',	'Version 6',	1,	0,	1,	1,	2,	7,	NULL),
(181,	1,	'',	NULL,	NULL,	'2016-03-01 13:25:03',	'2016-03-01 13:25:03',	'Initial Version',	1,	0,	NULL,	NULL,	0,	7,	NULL),
(185,	1,	'Galería de Fotos',	'galeria-de-fotos',	'Descripción',	'2016-03-01 13:52:53',	'2016-03-01 13:52:53',	'Initial Version',	1,	0,	3,	3,	2,	7,	NULL),
(188,	1,	'Titulo de Noticia 6',	'titulo-de-noticia-6',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:10:00',	'2016-03-01 14:10:26',	'Initial Version',	0,	0,	3,	3,	2,	7,	NULL),
(188,	2,	'Titulo de Noticia 6',	'titulo-de-noticia-6',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:10:00',	'2016-03-01 14:11:58',	'Version 2',	0,	0,	3,	3,	2,	7,	NULL),
(188,	3,	'Titulo de Noticia 6',	'titulo-de-noticia-6',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:10:00',	'2016-03-01 14:12:44',	'Version 3',	0,	0,	3,	3,	2,	7,	NULL),
(188,	4,	'Titulo de Noticia 6',	'titulo-de-noticia-6',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:10:00',	'2016-03-01 14:26:57',	'Version 4',	0,	0,	3,	3,	2,	7,	NULL),
(188,	5,	'Titulo de la Noticia 1',	'titulo-de-la-noticia-1',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:10:00',	'2016-03-01 14:38:37',	'Nueva Versión 5',	0,	0,	3,	3,	2,	7,	NULL),
(188,	6,	'Titulo de la Noticia 1',	'titulo-de-la-noticia-1',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:10:00',	'2016-03-01 14:38:51',	'Nueva Versión 6',	1,	0,	3,	3,	2,	7,	NULL),
(189,	1,	'Titulo Noticia 2',	'titulo-noticia-2',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:33:00',	'2016-03-01 14:33:50',	'Initial Version',	0,	0,	3,	3,	2,	7,	NULL),
(189,	2,	'Titulo de la Noticia 2',	'titulo-de-la-noticia-2',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:33:00',	'2016-03-01 14:39:08',	'Nueva Versión 2',	1,	0,	3,	3,	2,	7,	NULL),
(190,	1,	'Titulo de la Noticia 3',	'titulo-de-la-noticia-3',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:39:00',	'2016-03-01 14:39:23',	'Initial Version',	0,	0,	3,	3,	2,	7,	NULL),
(190,	2,	'Titulo de la Noticia 3',	'titulo-de-la-noticia-3',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:39:00',	'2016-03-01 14:41:13',	'Nueva Versión 2',	0,	0,	3,	3,	2,	7,	NULL),
(190,	3,	'Titulo de la Noticia 3',	'titulo-de-la-noticia-3',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:39:00',	'2016-03-01 14:41:24',	'Nueva Versión 3',	0,	0,	3,	3,	2,	7,	NULL),
(190,	4,	'Titulo de la Noticia 3',	'titulo-de-la-noticia-3',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'2016-03-01 14:39:00',	'2016-03-01 14:41:42',	'Nueva Versión 4',	1,	0,	3,	3,	2,	7,	NULL);

DROP TABLE IF EXISTS `CollectionVersionThemeCustomStyles`;
CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Config`;
CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Config` (`configNamespace`, `configGroup`, `configItem`, `configValue`) VALUES
('',	'concrete',	'security.token.encryption',	'y9uRCCAJzIf2wtkAETvoPPy7KrDGSefY90Uh4XMInMfhjSPkRpEFix5lCusz6oxm'),
('',	'concrete',	'security.token.jobs',	'4tcUGoqWNcUMZIuDCyPEKNFkn8ApL15tWSctp52AO5HLuQx1qGXGVjLNnED9cNl8'),
('',	'concrete',	'security.token.validation',	'bUOjqmBKObMKW9w5ZFHYkwk7eFgclhavkUAHSbqL0HTrZBe6ogAnR0X2EMmVu5hG');

DROP TABLE IF EXISTS `ConfigStore`;
CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConfigStore` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('MAIN_HELP_LAST_VIEWED',	'2016-02-18 13:36:02',	'1455802562',	1,	0),
('MAIN_HELP_LAST_VIEWED',	'2016-02-19 11:36:04',	'1455881764',	3,	0),
('NEWSFLOW_LAST_VIEWED',	'2016-02-18 13:35:04',	'1459253702',	1,	0);

DROP TABLE IF EXISTS `ConversationDiscussions`;
CREATE TABLE `ConversationDiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationEditors`;
CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConversationEditors` (`cnvEditorID`, `cnvEditorHandle`, `cnvEditorName`, `cnvEditorIsActive`, `pkgID`) VALUES
(1,	'plain_text',	'Plain Text',	1,	0),
(2,	'markdown',	'Markdown',	0,	0),
(3,	'redactor',	'Redactor',	0,	0);

DROP TABLE IF EXISTS `ConversationFeatureDetailAssignments`;
CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationFlaggedMessages`;
CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationFlaggedMessageTypes`;
CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConversationFlaggedMessageTypes` (`cnvMessageFlagTypeID`, `cnvMessageFlagTypeHandle`) VALUES
(1,	'spam');

DROP TABLE IF EXISTS `ConversationMessageAttachments`;
CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationMessageRatings`;
CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationMessages`;
CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0',
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationPermissionAddMessageAccessList`;
CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationPermissionAssignments`;
CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConversationPermissionAssignments` (`cnvID`, `pkID`, `paID`) VALUES
(0,	66,	94),
(0,	67,	95),
(0,	70,	96),
(0,	69,	97),
(0,	71,	98),
(0,	68,	99),
(0,	72,	100),
(0,	73,	101);

DROP TABLE IF EXISTS `ConversationRatingTypes`;
CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConversationRatingTypes` (`cnvRatingTypeID`, `cnvRatingTypeHandle`, `cnvRatingTypeName`, `cnvRatingTypeCommunityPoints`, `pkgID`) VALUES
(1,	'up_vote',	'Up Vote',	1,	0),
(2,	'down_vote',	'Down Vote',	0,	0);

DROP TABLE IF EXISTS `Conversations`;
CREATE TABLE `Conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationSubscriptions`;
CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`cnvID`,`uID`),
  KEY `cnvID` (`cnvID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConversationSubscriptions` (`cnvID`, `uID`, `type`) VALUES
(0,	1,	'S');

DROP TABLE IF EXISTS `DownloadStatistics`;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `DownloadStatistics` (`dsID`, `fID`, `fvID`, `uID`, `rcID`, `timestamp`) VALUES
(1,	21,	1,	1,	180,	'2016-03-01 12:55:56'),
(2,	21,	1,	1,	180,	'2016-03-01 12:56:03'),
(3,	21,	1,	1,	0,	'2016-03-01 13:00:17'),
(4,	21,	1,	1,	0,	'2016-03-01 13:01:11'),
(5,	21,	1,	1,	0,	'2016-03-28 14:41:59'),
(6,	21,	1,	1,	0,	'2016-03-28 14:44:11'),
(7,	21,	1,	1,	0,	'2016-03-28 15:17:13'),
(8,	21,	1,	1,	0,	'2016-03-28 15:54:44');

DROP TABLE IF EXISTS `dsEventCalendar`;
CREATE TABLE `dsEventCalendar` (
  `calendarID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`calendarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsEventCalendar` (`calendarID`, `title`) VALUES
(1,	'Agenda');

DROP TABLE IF EXISTS `dsEventCalendarEvents`;
CREATE TABLE `dsEventCalendarEvents` (
  `eventID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calendarID` int(10) unsigned DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `allDayEvent` int(11) DEFAULT '0',
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsEventCalendarEvents` (`eventID`, `calendarID`, `date`, `end`, `type`, `title`, `description`, `url`, `allDayEvent`) VALUES
(3,	1,	'2016-02-20 00:00:00',	'2016-02-21 00:00:00',	1,	'Concrete5',	'Salon multiuso s1',	'',	1),
(4,	1,	'2016-02-23 00:00:00',	'2016-02-24 00:00:00',	2,	'Reunion de Comite de Interoperabilidad',	'',	'',	1),
(5,	1,	'2016-03-11 00:00:00',	'2016-03-13 00:00:00',	1,	'Evento de la Institución',	'Prueba de Evento de la Institución',	'',	1);

DROP TABLE IF EXISTS `dsEventCalendarSettings`;
CREATE TABLE `dsEventCalendarSettings` (
  `settingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`settingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsEventCalendarSettings` (`settingID`, `opt`, `value`) VALUES
(1,	'lang',	'es'),
(2,	'lang_datepicker',	'es'),
(3,	'formatEvent',	'DD MMMM YYYY'),
(4,	'startFrom',	'1'),
(5,	'eventsInDay',	'3'),
(6,	'default_color',	'#808080'),
(7,	'timeFormat',	'HH:mm'),
(8,	'scrollTime',	'1'),
(9,	'scrollMonth',	'1'),
(10,	'scrollInput',	'1');

DROP TABLE IF EXISTS `dsEventCalendarTypes`;
CREATE TABLE `dsEventCalendarTypes` (
  `typeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsEventCalendarTypes` (`typeID`, `type`, `color`) VALUES
(1,	'Capacitacion',	'#1cd968'),
(2,	'Reunion',	'#f51616');

DROP TABLE IF EXISTS `FeatureAssignments`;
CREATE TABLE `FeatureAssignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FeatureAssignments` (`faID`, `feID`, `fcID`, `fdObject`) VALUES
(1,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:65:\"/template-concrete5/application/files/7314/5581/5049/Logotipo.png\";s:8:\"\0*\0width\";d:400;s:9:\"\0*\0height\";d:140;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(2,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:100:\"/template-concrete5/application/files/9214/5581/5209/Gobierno-Logo-Espanol---Guarani-SM-claro-V2.png\";s:8:\"\0*\0width\";d:244;s:9:\"\0*\0height\";d:95;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(3,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:79:\"/template-concrete5/application/files/4214/5581/5310/Logo-SENATICs-SM-claro.png\";s:8:\"\0*\0width\";d:700;s:9:\"\0*\0height\";d:175;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(4,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:79:\"/template-concrete5/application/files/4214/5581/5310/Logo-SENATICs-SM-claro.png\";s:8:\"\0*\0width\";d:700;s:9:\"\0*\0height\";d:175;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(5,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:79:\"/template-concrete5/application/files/4214/5581/5310/Logo-SENATICs-SM-claro.png\";s:8:\"\0*\0width\";d:700;s:9:\"\0*\0height\";d:175;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(6,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:68:\"/template-concrete5/application/files/1714/5581/5102/Organigrama.jpg\";s:8:\"\0*\0width\";d:2072;s:9:\"\0*\0height\";d:1242;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(7,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:79:\"/template-concrete5/application/files/4214/5581/5310/Logo-SENATICs-SM-claro.png\";s:8:\"\0*\0width\";d:700;s:9:\"\0*\0height\";d:175;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(8,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:65:\"/template-concrete5/application/files/7314/5581/5049/Logotipo.png\";s:8:\"\0*\0width\";d:400;s:9:\"\0*\0height\";d:140;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}');

DROP TABLE IF EXISTS `FeatureCategories`;
CREATE TABLE `FeatureCategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FeatureCategories` (`fcID`, `fcHandle`, `pkgID`) VALUES
(1,	'collection_version',	0),
(2,	'gathering_item',	0);

DROP TABLE IF EXISTS `Features`;
CREATE TABLE `Features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Features` (`feID`, `feHandle`, `feScore`, `feHasCustomClass`, `pkgID`) VALUES
(1,	'title',	1,	0,	0),
(2,	'link',	1,	0,	0),
(3,	'author',	1,	0,	0),
(4,	'date_time',	1,	0,	0),
(5,	'image',	500,	1,	0),
(6,	'conversation',	10,	1,	0),
(7,	'description',	1,	0,	0),
(8,	'featured',	1000,	0,	0);

DROP TABLE IF EXISTS `FileAttributeValues`;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileAttributeValues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1,	1,	14,	114),
(1,	1,	15,	115),
(2,	1,	14,	116),
(2,	1,	15,	117),
(3,	1,	14,	118),
(3,	1,	15,	119),
(4,	1,	14,	120),
(4,	1,	15,	121),
(5,	1,	14,	122),
(5,	1,	15,	123),
(6,	1,	14,	124),
(6,	1,	15,	125),
(7,	1,	14,	126),
(7,	1,	15,	127),
(8,	1,	14,	128),
(8,	1,	15,	129),
(9,	1,	14,	130),
(9,	1,	15,	131),
(10,	1,	14,	132),
(10,	1,	15,	133),
(11,	1,	14,	134),
(11,	1,	15,	135),
(12,	1,	14,	136),
(12,	1,	15,	137),
(13,	1,	14,	138),
(13,	1,	15,	139),
(14,	1,	14,	140),
(14,	1,	15,	141),
(15,	1,	14,	146),
(15,	1,	15,	147),
(16,	1,	14,	148),
(16,	1,	15,	149),
(17,	1,	14,	162),
(17,	1,	15,	163),
(18,	1,	14,	170),
(18,	1,	15,	171),
(19,	1,	14,	205),
(19,	1,	15,	206),
(20,	1,	14,	239),
(20,	1,	15,	240),
(22,	1,	14,	242),
(22,	1,	15,	243);

DROP TABLE IF EXISTS `FileImageThumbnailTypes`;
CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeWidth` int(11) NOT NULL DEFAULT '0',
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileImageThumbnailTypes` (`ftTypeID`, `ftTypeHandle`, `ftTypeName`, `ftTypeWidth`, `ftTypeHeight`, `ftTypeIsRequired`) VALUES
(1,	'file_manager_listing',	'File Manager Thumbnails',	60,	60,	1),
(2,	'file_manager_detail',	'File Manager Detail Thumbnails',	400,	NULL,	1);

DROP TABLE IF EXISTS `FilePermissionAssignments`;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `FilePermissionFileTypes`;
CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Files`;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
(1,	'2016-02-18 17:04:09',	1,	1,	0,	0,	NULL),
(2,	'2016-02-18 17:05:00',	1,	1,	0,	0,	NULL),
(3,	'2016-02-18 17:05:01',	1,	1,	0,	0,	NULL),
(4,	'2016-02-18 17:05:02',	1,	1,	0,	0,	NULL),
(5,	'2016-02-18 17:05:03',	1,	1,	0,	0,	NULL),
(6,	'2016-02-18 17:05:04',	1,	1,	0,	0,	NULL),
(7,	'2016-02-18 17:05:12',	1,	1,	0,	0,	NULL),
(8,	'2016-02-18 17:06:07',	1,	1,	0,	0,	NULL),
(9,	'2016-02-18 17:06:49',	1,	1,	0,	0,	NULL),
(10,	'2016-02-18 17:08:30',	1,	1,	0,	0,	NULL),
(11,	'2016-02-18 17:10:55',	1,	1,	0,	0,	NULL),
(12,	'2016-02-18 17:10:56',	1,	1,	0,	0,	NULL),
(13,	'2016-02-18 17:10:56',	1,	1,	0,	0,	NULL),
(14,	'2016-02-18 17:10:57',	1,	1,	0,	0,	NULL),
(15,	'2016-02-18 17:16:25',	1,	1,	0,	0,	NULL),
(16,	'2016-02-18 17:16:26',	1,	1,	0,	0,	NULL),
(17,	'2016-02-18 17:26:24',	1,	1,	0,	0,	NULL),
(18,	'2016-02-18 17:27:53',	1,	1,	0,	0,	NULL),
(19,	'2016-02-19 11:00:28',	1,	1,	0,	0,	NULL),
(20,	'2016-02-24 12:18:16',	1,	1,	0,	0,	NULL),
(21,	'2016-03-01 12:54:16',	1,	1,	0,	0,	NULL),
(22,	'2016-03-01 13:31:01',	1,	1,	0,	0,	NULL),
(23,	'2016-03-18 15:59:37',	1,	1,	0,	0,	NULL);

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileSearchIndexAttributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1,	400.0000,	140.0000,	0.0000),
(2,	1000.0000,	672.0000,	0.0000),
(3,	1000.0000,	672.0000,	0.0000),
(4,	2072.0000,	1242.0000,	0.0000),
(5,	1000.0000,	672.0000,	0.0000),
(6,	1000.0000,	672.0000,	0.0000),
(7,	244.0000,	95.0000,	0.0000),
(8,	1027.0000,	710.0000,	0.0000),
(9,	244.0000,	95.0000,	0.0000),
(10,	700.0000,	175.0000,	0.0000),
(11,	300.0000,	150.0000,	0.0000),
(12,	300.0000,	150.0000,	0.0000),
(13,	300.0000,	150.0000,	0.0000),
(14,	300.0000,	150.0000,	0.0000),
(15,	1000.0000,	450.0000,	0.0000),
(16,	1000.0000,	450.0000,	0.0000),
(17,	100.0000,	100.0000,	0.0000),
(18,	100.0000,	100.0000,	0.0000),
(19,	700.0000,	150.0000,	0.0000),
(20,	512.0000,	512.0000,	0.0000),
(21,	0.0000,	0.0000,	0.0000),
(22,	300.0000,	64.0000,	0.0000),
(23,	0.0000,	0.0000,	0.0000);

DROP TABLE IF EXISTS `FileSetFiles`;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileSetFiles` (`fsfID`, `fID`, `fsID`, `timestamp`, `fsDisplayOrder`) VALUES
(1,	6,	1,	'2016-02-19 14:55:57',	0),
(2,	2,	1,	'2016-02-19 14:56:03',	1),
(3,	3,	1,	'2016-02-19 14:56:07',	2),
(4,	5,	1,	'2016-02-19 14:56:12',	3);

DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileSetPermissionAssignments` (`fsID`, `pkID`, `paID`) VALUES
(0,	46,	39),
(0,	39,	118),
(0,	40,	119),
(0,	41,	119),
(0,	42,	119),
(0,	43,	119),
(0,	44,	119),
(0,	45,	119),
(0,	47,	119);

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `FileSets`;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileSets` (`fsID`, `fsName`, `uID`, `fsType`, `fsOverrideGlobalPermissions`) VALUES
(1,	'Galería A',	1,	1,	0);

DROP TABLE IF EXISTS `FileSetSavedSearches`;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `FileStorageLocations`;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileStorageLocations` (`fslID`, `fslName`, `fslConfiguration`, `fslIsDefault`) VALUES
(1,	'Default',	'O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}',	1);

DROP TABLE IF EXISTS `FileStorageLocationTypes`;
CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslTypeID`),
  UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileStorageLocationTypes` (`fslTypeID`, `fslTypeHandle`, `fslTypeName`, `pkgID`) VALUES
(1,	'default',	'Default',	0),
(2,	'local',	'Local',	0);

DROP TABLE IF EXISTS `FileVersionLog`;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileVersionLog` (`fvlID`, `fID`, `fvID`, `fvUpdateTypeID`, `fvUpdateTypeAttributeID`) VALUES
(1,	1,	1,	5,	14),
(2,	1,	1,	5,	15),
(3,	2,	1,	5,	14),
(4,	2,	1,	5,	15),
(5,	3,	1,	5,	14),
(6,	3,	1,	5,	15),
(7,	4,	1,	5,	14),
(8,	4,	1,	5,	15),
(9,	5,	1,	5,	14),
(10,	5,	1,	5,	15),
(11,	6,	1,	5,	14),
(12,	6,	1,	5,	15),
(13,	7,	1,	5,	14),
(14,	7,	1,	5,	15),
(15,	8,	1,	5,	14),
(16,	8,	1,	5,	15),
(17,	9,	1,	5,	14),
(18,	9,	1,	5,	15),
(19,	10,	1,	5,	14),
(20,	10,	1,	5,	15),
(21,	11,	1,	5,	14),
(22,	11,	1,	5,	15),
(23,	12,	1,	5,	14),
(24,	12,	1,	5,	15),
(25,	13,	1,	5,	14),
(26,	13,	1,	5,	15),
(27,	14,	1,	5,	14),
(28,	14,	1,	5,	15),
(29,	15,	1,	5,	14),
(30,	15,	1,	5,	15),
(31,	16,	1,	5,	14),
(32,	16,	1,	5,	15),
(33,	17,	1,	5,	14),
(34,	17,	1,	5,	15),
(35,	18,	1,	1,	0),
(36,	18,	1,	5,	14),
(37,	18,	1,	5,	15),
(38,	19,	1,	6,	0),
(39,	19,	1,	5,	14),
(40,	19,	1,	5,	15),
(41,	19,	1,	5,	14),
(42,	19,	1,	5,	15),
(43,	20,	1,	6,	0),
(44,	20,	1,	5,	14),
(45,	20,	1,	5,	15),
(46,	20,	1,	5,	14),
(47,	20,	1,	5,	15),
(48,	22,	1,	6,	0),
(49,	22,	1,	5,	14),
(50,	22,	1,	5,	15),
(51,	22,	1,	5,	14),
(52,	22,	1,	5,	15);

DROP TABLE IF EXISTS `FileVersions`;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvGenericType` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(10) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` text COLLATE utf8_unicode_ci,
  `fvTags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvHasDetailThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  KEY `fvFilename` (`fvFilename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileVersions` (`fID`, `fvID`, `fvFilename`, `fvPrefix`, `fvGenericType`, `fvSize`, `fvTitle`, `fvDescription`, `fvTags`, `fvIsApproved`, `fvDateAdded`, `fvApproverUID`, `fvAuthorUID`, `fvActivateDatetime`, `fvHasListingThumbnail`, `fvHasDetailThumbnail`, `fvExtension`, `fvType`) VALUES
(1,	1,	'Logotipo.png',	'731455815049',	0,	3424,	'Logotipo.png',	'',	'',	1,	'2016-02-18 17:04:09',	1,	1,	'2016-02-18 17:04:09',	1,	0,	'png',	1),
(2,	1,	'2.png',	'481455815100',	0,	610187,	'2.png',	'',	'',	1,	'2016-02-18 17:05:00',	1,	1,	'2016-02-18 17:05:00',	1,	1,	'png',	1),
(3,	1,	'3.jpg',	'451455815101',	0,	450200,	'3.jpg',	'',	'',	1,	'2016-02-18 17:05:01',	1,	1,	'2016-02-18 17:05:01',	1,	1,	'jpg',	1),
(4,	1,	'Organigrama.jpg',	'171455815102',	0,	386183,	'Organigrama.jpg',	'',	'',	1,	'2016-02-18 17:05:02',	1,	1,	'2016-02-18 17:05:02',	1,	1,	'jpg',	1),
(5,	1,	'4.jpg',	'421455815103',	0,	435349,	'4.jpg',	'',	'',	1,	'2016-02-18 17:05:03',	1,	1,	'2016-02-18 17:05:03',	1,	1,	'jpg',	1),
(6,	1,	'1.png',	'741455815104',	0,	702106,	'1.png',	'',	'',	1,	'2016-02-18 17:05:04',	1,	1,	'2016-02-18 17:05:04',	1,	1,	'png',	1),
(7,	1,	'Gobierno-Logo-Espanol---Guarani-SM-oscuro-V2.png',	'201455815112',	0,	14792,	'Gobierno-Logo-Espanol---Guarani-SM-oscuro-V2.png',	'',	'',	1,	'2016-02-18 17:05:12',	1,	1,	'2016-02-18 17:05:12',	1,	0,	'png',	1),
(8,	1,	'Captura3.PNG',	'361455815167',	0,	136712,	'Captura3.PNG',	'',	'',	1,	'2016-02-18 17:06:07',	1,	1,	'2016-02-18 17:06:07',	1,	1,	'PNG',	1),
(9,	1,	'Gobierno-Logo-Espanol---Guarani-SM-claro-V2.png',	'921455815209',	0,	14774,	'Gobierno-Logo-Español---Guarani-SM-claro-V2.png',	'',	'',	1,	'2016-02-18 17:06:49',	1,	1,	'2016-02-18 17:06:49',	1,	0,	'png',	1),
(10,	1,	'Logo-SENATICs-SM-claro.png',	'421455815310',	0,	33156,	'Logo-SENATICs-SM-claro.png',	'',	'',	1,	'2016-02-18 17:08:30',	1,	1,	'2016-02-18 17:08:30',	1,	1,	'png',	1),
(11,	1,	'acceso_informacion_publica_btn-GRAL.png',	'111455815455',	0,	25458,	'acceso_informacion_publica_btn-GRAL.png',	'',	'',	1,	'2016-02-18 17:10:55',	1,	1,	'2016-02-18 17:10:55',	1,	0,	'png',	1),
(12,	1,	'denuncias_btn.png',	'481455815456',	0,	23136,	'denuncias_btn.png',	'',	'',	1,	'2016-02-18 17:10:56',	1,	1,	'2016-02-18 17:10:56',	1,	0,	'png',	1),
(13,	1,	'portal_parauay_btn2.png',	'301455815456',	0,	45969,	'portal_parauay_btn2.png',	'',	'',	1,	'2016-02-18 17:10:56',	1,	1,	'2016-02-18 17:10:56',	1,	0,	'png',	1),
(14,	1,	'informacion_publica_btn-GRAL.png',	'851455815457',	0,	30758,	'informacion_publica_btn-GRAL.png',	'',	'',	1,	'2016-02-18 17:10:57',	1,	1,	'2016-02-18 17:10:57',	1,	0,	'png',	1),
(15,	1,	'Slide1.png',	'821455815785',	0,	640565,	'Slide1.png',	'',	'',	1,	'2016-02-18 17:16:25',	1,	1,	'2016-02-18 17:16:25',	1,	1,	'png',	1),
(16,	1,	'Slide2.png',	'371455815786',	0,	581465,	'Slide2.png',	'',	'',	1,	'2016-02-18 17:16:26',	1,	1,	'2016-02-18 17:16:26',	1,	1,	'png',	1),
(17,	1,	'home.png',	'561455816384',	0,	3635,	'home.png',	'',	'',	1,	'2016-02-18 17:26:24',	1,	1,	'2016-02-18 17:26:24',	1,	0,	'png',	1),
(18,	1,	'home.png',	'391455816473',	0,	3635,	'home.png',	'',	'',	1,	'2016-02-18 17:26:24',	1,	1,	'2016-02-18 17:26:24',	1,	0,	'png',	1),
(19,	1,	'Logo-SENATICs.png',	'381455879628',	0,	21559,	'Logo-SENATICs.png',	'',	'',	1,	'2016-02-19 11:00:28',	1,	1,	'2016-02-19 11:00:28',	1,	1,	'png',	1),
(20,	1,	'icon_user.png',	'831456316296',	0,	5828,	'icon_user.png',	'',	'',	1,	'2016-02-24 12:18:16',	1,	1,	'2016-02-24 12:18:16',	1,	1,	'png',	1),
(21,	1,	'pdfDePrueba.pdf',	'691456836856',	0,	22625,	'pdfDePrueba.pdf',	'',	'',	1,	'2016-03-01 12:54:16',	1,	1,	'2016-03-01 12:54:16',	0,	0,	'pdf',	5),
(22,	1,	'Logo-de-la-SENATICS-en-alfacolor.png',	'391456839061',	0,	10832,	'Logo-de-la-SENATICS-en-alfacolor.png',	'',	'',	1,	'2016-03-01 13:31:01',	1,	1,	'2016-03-01 13:31:01',	1,	0,	'png',	1),
(23,	1,	'icono_gobierno.ico',	'991458316777',	0,	509,	'icono_gobierno.ico',	'',	'',	1,	'2016-03-18 15:59:37',	1,	1,	'2016-03-18 15:59:37',	0,	0,	'ico',	1);

DROP TABLE IF EXISTS `gaPage`;
CREATE TABLE `gaPage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GatheringConfiguredDataSources`;
CREATE TABLE `GatheringConfiguredDataSources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GatheringDataSources`;
CREATE TABLE `GatheringDataSources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `GatheringDataSources` (`gasID`, `gasName`, `gasHandle`, `pkgID`, `gasDisplayOrder`) VALUES
(1,	'Site Page',	'page',	0,	0),
(2,	'RSS Feed',	'rss_feed',	0,	1),
(3,	'Flickr Feed',	'flickr_feed',	0,	2),
(4,	'Twitter',	'twitter',	0,	3);

DROP TABLE IF EXISTS `GatheringItemFeatureAssignments`;
CREATE TABLE `GatheringItemFeatureAssignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GatheringItems`;
CREATE TABLE `GatheringItems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GatheringItemSelectedTemplates`;
CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GatheringItemTemplateFeatures`;
CREATE TABLE `GatheringItemTemplateFeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `GatheringItemTemplateFeatures` (`gfeID`, `gatID`, `feID`) VALUES
(4,	1,	1),
(10,	2,	1),
(13,	3,	1),
(16,	4,	1),
(19,	5,	1),
(23,	7,	1),
(29,	11,	1),
(33,	12,	1),
(37,	13,	1),
(42,	14,	1),
(47,	15,	1),
(53,	17,	1),
(56,	18,	1),
(63,	21,	1),
(64,	22,	1),
(3,	1,	2),
(9,	2,	2),
(12,	3,	2),
(15,	4,	2),
(18,	5,	2),
(21,	6,	2),
(25,	8,	2),
(27,	9,	2),
(41,	13,	3),
(46,	14,	3),
(51,	16,	3),
(55,	17,	3),
(62,	20,	3),
(66,	22,	3),
(2,	1,	4),
(8,	2,	4),
(14,	4,	4),
(17,	5,	4),
(31,	11,	4),
(35,	12,	4),
(39,	13,	4),
(44,	14,	4),
(61,	20,	4),
(5,	1,	5),
(22,	6,	5),
(24,	8,	5),
(26,	9,	5),
(28,	10,	5),
(32,	11,	5),
(36,	12,	5),
(40,	13,	5),
(45,	14,	5),
(49,	15,	5),
(50,	16,	5),
(59,	19,	5),
(65,	22,	5),
(20,	5,	6),
(1,	1,	7),
(7,	2,	7),
(11,	3,	7),
(30,	11,	7),
(34,	12,	7),
(38,	13,	7),
(43,	14,	7),
(48,	15,	7),
(52,	16,	7),
(54,	17,	7),
(57,	18,	7),
(58,	19,	7),
(60,	20,	7),
(6,	1,	8);

DROP TABLE IF EXISTS `GatheringItemTemplates`;
CREATE TABLE `GatheringItemTemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `GatheringItemTemplates` (`gatID`, `gatHandle`, `gatName`, `gatHasCustomClass`, `gatFixedSlotWidth`, `gatFixedSlotHeight`, `gatForceDefault`, `pkgID`, `gatTypeID`) VALUES
(1,	'featured',	'Featured Item',	0,	6,	2,	1,	0,	1),
(2,	'title_date_description',	'Title Date & Description',	0,	0,	0,	0,	0,	1),
(3,	'title_description',	'Title & Description',	0,	0,	0,	0,	0,	1),
(4,	'title_date',	'Title & Date',	0,	0,	0,	0,	0,	1),
(5,	'title_date_comments',	'Title, Date & Comments',	1,	0,	0,	0,	0,	1),
(6,	'thumbnail',	'Thumbnail',	0,	0,	0,	0,	0,	1),
(7,	'basic',	'Basic',	0,	0,	0,	0,	0,	2),
(8,	'image_sharing_link',	'Image Sharing Link',	0,	0,	0,	0,	0,	2),
(9,	'image_conversation',	'Image Conversation',	0,	0,	0,	0,	0,	2),
(10,	'image',	'Large Image',	0,	0,	0,	0,	0,	2),
(11,	'masthead_image_left',	'Masthead Image Left',	0,	0,	0,	0,	0,	1),
(12,	'masthead_image_right',	'Masthead Image Right',	0,	0,	0,	0,	0,	1),
(13,	'masthead_image_byline_right',	'Masthead Image Byline Right',	0,	0,	0,	0,	0,	1),
(14,	'masthead_image_byline_left',	'Masthead Image Byline Left',	0,	0,	0,	0,	0,	1),
(15,	'image_masthead_description_center',	'Image Masthead Description Center',	0,	0,	0,	0,	0,	1),
(16,	'image_byline_description_center',	'Image Byline Description Center',	0,	0,	0,	0,	0,	1),
(17,	'masthead_byline_description',	'Masthead Byline Description',	0,	0,	0,	0,	0,	1),
(18,	'masthead_description',	'Masthead Description',	0,	0,	0,	0,	0,	1),
(19,	'thumbnail_description_center',	'Thumbnail & Description Center',	0,	0,	0,	0,	0,	1),
(20,	'tweet',	'Tweet',	0,	0,	0,	0,	0,	1),
(21,	'vimeo',	'Vimeo',	0,	0,	0,	0,	0,	1),
(22,	'image_overlay_headline',	'Image Overlay Headline',	0,	0,	0,	0,	0,	1);

DROP TABLE IF EXISTS `GatheringItemTemplateTypes`;
CREATE TABLE `GatheringItemTemplateTypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `GatheringItemTemplateTypes` (`gatTypeID`, `gatTypeHandle`, `pkgID`) VALUES
(1,	'tile',	0),
(2,	'detail',	0);

DROP TABLE IF EXISTS `GatheringPermissionAssignments`;
CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Gatherings`;
CREATE TABLE `Gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Groups`;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`, `gIsBadge`, `gBadgeFID`, `gBadgeDescription`, `gBadgeCommunityPointValue`, `gIsAutomated`, `gCheckAutomationOnRegister`, `gCheckAutomationOnLogin`, `gCheckAutomationOnJobRun`, `gPath`, `pkgID`) VALUES
(1,	'Guest',	'The guest group represents unregistered visitors to your site.',	0,	NULL,	NULL,	0,	NULL,	0,	0,	NULL,	0,	0,	0,	0,	0,	'/Guest',	0),
(2,	'Registered Users',	'The registered users group represents all user accounts.',	0,	NULL,	NULL,	0,	NULL,	0,	0,	NULL,	0,	0,	0,	0,	0,	'/Registered Users',	0),
(3,	'Administrators',	'',	0,	NULL,	NULL,	0,	NULL,	0,	0,	NULL,	0,	0,	0,	0,	0,	'/Administrators',	0),
(4,	'Prensa',	'Encargado de la publicación y gestión de las Noticias',	0,	NULL,	NULL,	0,	NULL,	0,	0,	NULL,	0,	0,	0,	0,	0,	'/Prensa',	0);

DROP TABLE IF EXISTS `GroupSetGroups`;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GroupSets`;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Jobs`;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1,	'Index Search Engine - Updates',	'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.',	'2016-02-18 13:33:45',	NULL,	0,	NULL,	0,	'ENABLED',	'index_search',	1,	0,	'days',	0),
(2,	'Index Search Engine - All',	'Empties the page search index and reindexes all pages.',	'2016-02-18 13:33:45',	NULL,	0,	NULL,	0,	'ENABLED',	'index_search_all',	1,	0,	'days',	0),
(3,	'Check Automated Groups',	'Automatically add users to groups and assign badges.',	'2016-02-18 13:33:45',	NULL,	0,	NULL,	0,	'ENABLED',	'check_automated_groups',	0,	0,	'days',	0),
(4,	'Generate the sitemap.xml file',	'Generate the sitemap.xml file that search engines use to crawl your site.',	'2016-02-18 13:33:45',	NULL,	0,	NULL,	0,	'ENABLED',	'generate_sitemap',	0,	0,	'days',	0),
(5,	'Process Email Posts',	'Polls an email account and grabs private messages/postings that are sent there..',	'2016-02-18 13:33:45',	NULL,	0,	NULL,	0,	'ENABLED',	'process_email',	0,	0,	'days',	0),
(6,	'Remove Old Page Versions',	'Removes all except the 10 most recent page versions for each page.',	'2016-02-18 13:33:45',	NULL,	0,	NULL,	0,	'ENABLED',	'remove_old_page_versions',	0,	0,	'days',	0),
(7,	'Update Gatherings',	'Loads new items into gatherings.',	'2016-02-18 13:33:45',	NULL,	0,	NULL,	0,	'ENABLED',	'update_gatherings',	0,	0,	'days',	0);

DROP TABLE IF EXISTS `JobSetJobs`;
CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `JobSetJobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1,	1,	0),
(1,	4,	0),
(1,	5,	0),
(1,	6,	0),
(1,	7,	0);

DROP TABLE IF EXISTS `JobSets`;
CREATE TABLE `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `JobSets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1,	'Default',	0,	NULL,	0,	'days',	0);

DROP TABLE IF EXISTS `JobsLog`;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Logs`;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Logs` (`logID`, `channel`, `time`, `message`, `uID`, `level`) VALUES
(1,	'application',	1455814832,	'Página \"\" en ruta \"\" eliminado',	1,	100),
(2,	'application',	1455814832,	'Página \"\" en ruta \"\" eliminado',	1,	100),
(3,	'application',	1455814833,	'Página \"\" en ruta \"\" eliminado',	1,	100),
(4,	'exceptions',	1455882810,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/File/FileList.php:147 Call to a member function getFileSetID() on a non-object (1)\n',	1,	600),
(5,	'exceptions',	1455882815,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/File/FileList.php:147 Call to a member function getFileSetID() on a non-object (1)\n',	1,	600),
(6,	'exceptions',	1455882817,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/File/FileList.php:147 Call to a member function getFileSetID() on a non-object (1)\n',	1,	600),
(7,	'exceptions',	1455882826,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/File/FileList.php:147 Call to a member function getFileSetID() on a non-object (1)\n',	1,	600),
(8,	'application',	1455882838,	'Página \"Galería\" en ruta \"/galeria\" movido a la papelera',	1,	100),
(9,	'exceptions',	1455882914,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/File/FileList.php:147 Call to a member function getFileSetID() on a non-object (1)\n',	1,	600),
(10,	'application',	1455887648,	'Página \"Trámites\" en ruta \"/tramites\" movido a la papelera',	1,	100),
(11,	'exceptions',	1456838788,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/File/FileList.php:147 Call to a member function getFileSetID() on a non-object (1)\n',	1,	600),
(12,	'exceptions',	1456838795,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/File/FileList.php:147 Call to a member function getFileSetID() on a non-object (1)\n',	1,	600),
(13,	'exceptions',	1456838796,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/File/FileList.php:147 Call to a member function getFileSetID() on a non-object (1)\n',	1,	600),
(14,	'exceptions',	1456838808,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/File/FileList.php:147 Call to a member function getFileSetID() on a non-object (1)\n',	1,	600),
(15,	'exceptions',	1456840346,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/File/FileList.php:147 Call to a member function getFileSetID() on a non-object (1)\n',	3,	600),
(16,	'application',	1456840365,	'Página \"Album 1\" en ruta \"/galeria/album-1\" movido a la papelera',	1,	100),
(17,	'application',	1456842715,	'Página \"Titulo de la Noticia 1\" en ruta \"/noticias/titulo-de-la-noticia-1\" movido a la papelera',	3,	100),
(18,	'application',	1456842719,	'Página \"Titulo de la Noticia 2\" en ruta \"/noticias/titulo-de-la-noticia-2\" movido a la papelera',	3,	100),
(19,	'application',	1456842723,	'Página \"Titulo de la Noticia 3\" en ruta \"/noticias/titulo-de-la-noticia-3\" movido a la papelera',	3,	100),
(20,	'application',	1456842729,	'Página \"Titulo de la Noticia 0\" en ruta \"/noticias/titulo-de-la-noticia-0\" movido a la papelera',	3,	100),
(21,	'application',	1456842732,	'Página \"Titulo de la Noticia 4\" en ruta \"/noticias/titulo-de-la-noticia-4\" movido a la papelera',	3,	100),
(22,	'application',	1456842736,	'Página \"Titulo de la noticia 5\" en ruta \"/noticias/titulo-de-la-noticia-5\" movido a la papelera',	3,	100),
(23,	'exceptions',	1456939500,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/generarmapa/view.php:112 Call to undefined function base_url() (1)\n',	1,	600),
(24,	'exceptions',	1456939519,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/generarmapa/view.php:112 Call to undefined function base_url() (1)\n',	1,	600),
(25,	'exceptions',	1457004093,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/Block/BlockType/BlockTypeList.php:95 Class \'\\Application\\Block\\DsEventCalendar\\Controller\' not found (1)\n',	1,	600),
(26,	'exceptions',	1458308102,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/Block/BlockType/BlockTypeList.php:95 Class \'\\Application\\Block\\Mapas\\Controller\' not found (1)\n',	1,	600),
(27,	'exceptions',	1458309227,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:37 syntax error, unexpected \'}\' (4)\n',	1,	600),
(28,	'exceptions',	1458309926,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:62 Invalid argument supplied for foreach() (2)\n',	1,	600),
(29,	'exceptions',	1458309936,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:84 syntax error, unexpected \'[\' (4)\n',	1,	600),
(30,	'exceptions',	1458309962,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:93 syntax error, unexpected \'}\' (4)\n',	1,	600),
(31,	'exceptions',	1459171358,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:122 Class \'LinkAbstractor\' not found (1)\n',	1,	600),
(32,	'exceptions',	1459171364,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:122 Class \'LinkAbstractor\' not found (1)\n',	1,	600),
(33,	'exceptions',	1459171372,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:122 Class \'LinkAbstractor\' not found (1)\n',	1,	600),
(34,	'exceptions',	1459171373,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:122 Class \'LinkAbstractor\' not found (1)\n',	1,	600),
(35,	'exceptions',	1459171522,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:122 Class \'LinkAbstractor\' not found (1)\n',	1,	600),
(36,	'exceptions',	1459171528,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:122 Class \'LinkAbstractor\' not found (1)\n',	1,	600),
(37,	'exceptions',	1459171535,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:122 Class \'LinkAbstractor\' not found (1)\n',	1,	600),
(38,	'exceptions',	1459171555,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:122 Class \'LinkAbstractor\' not found (1)\n',	1,	600),
(39,	'exceptions',	1459171562,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:122 Class \'LinkAbstractor\' not found (1)\n',	1,	600),
(40,	'exceptions',	1459171563,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/view.php:122 Class \'LinkAbstractor\' not found (1)\n',	1,	600),
(41,	'exceptions',	1459171597,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/controller.php:93 syntax error, unexpected \'use\' (T_USE) (4)\n',	1,	600),
(42,	'exceptions',	1459172188,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/application/blocks/mapas/controller.php:200 Call to undefined function Application\\Block\\Mapas\\getDescripcion() (1)\n',	1,	600),
(43,	'exceptions',	1459172260,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/src/Block/View/BlockView.php:42 Call to a member function getPackageHandle() on a non-object (1)\n',	1,	600),
(44,	'application',	1459255954,	'Página \"\" en ruta \"/!drafts/183\" movido a la papelera',	1,	100),
(45,	'application',	1459255959,	'Página \"\" en ruta \"/!drafts/182\" movido a la papelera',	1,	100),
(46,	'application',	1459255970,	'Página \"Titulo de la Noticia 4\" en ruta \"/!trash/titulo-de-la-noticia-4\" eliminado',	1,	100),
(47,	'application',	1459255971,	'Página \"Titulo de la noticia 5\" en ruta \"/!trash/titulo-de-la-noticia-5\" eliminado',	1,	100),
(48,	'application',	1459255973,	'Página \"\" en ruta \"/!trash/183\" eliminado',	1,	100),
(49,	'application',	1459255974,	'Página \"\" en ruta \"/!trash/182\" eliminado',	1,	100),
(50,	'application',	1459255975,	'Página \"Titulo de la Noticia 0\" en ruta \"/!trash/titulo-de-la-noticia-0\" eliminado',	1,	100),
(51,	'application',	1459255977,	'Página \"Titulo de la Noticia 3\" en ruta \"/!trash/titulo-de-la-noticia-3\" eliminado',	1,	100),
(52,	'application',	1459255980,	'Página \"Trámites\" en ruta \"/!trash/tramites\" eliminado',	1,	100),
(53,	'application',	1459255980,	'Página \"Album 1\" en ruta \"/!trash/album-1\" eliminado',	1,	100),
(54,	'application',	1459255981,	'Página \"Titulo de la Noticia 1\" en ruta \"/!trash/titulo-de-la-noticia-1\" eliminado',	1,	100),
(55,	'application',	1459255982,	'Página \"Titulo de la Noticia 2\" en ruta \"/!trash/titulo-de-la-noticia-2\" eliminado',	1,	100),
(56,	'application',	1459255985,	'Página \"Galería\" en ruta \"/!trash/galeria\" eliminado',	1,	100);

DROP TABLE IF EXISTS `MailImporters`;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `MailImporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1,	'private_message',	'',	NULL,	NULL,	NULL,	0,	'',	0,	0,	'POP');

DROP TABLE IF EXISTS `MailValidationHashes`;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `MultilingualPageRelations`;
CREATE TABLE `MultilingualPageRelations` (
  `mpRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`,`mpLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `MultilingualSections`;
CREATE TABLE `MultilingualSections` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msNumPlurals` int(11) NOT NULL DEFAULT '2',
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '(n != 1)',
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `MultilingualTranslations`;
CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci,
  `msgstr` text COLLATE utf8_unicode_ci,
  `msgstrPlurals` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `OauthUserMap`;
CREATE TABLE `OauthUserMap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Packages`;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgDescription` text COLLATE utf8_unicode_ci,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Packages` (`pkgID`, `pkgName`, `pkgHandle`, `pkgDescription`, `pkgDateInstalled`, `pkgIsInstalled`, `pkgVersion`, `pkgAvailableVersion`) VALUES
(2,	'Event Calendar',	'dsEventCalendar',	'Event Calendar - you can add, edit and remove one day events on your page',	'2016-02-19 13:49:00',	1,	'3.3.5',	NULL),
(3,	'Breadcrumb Trail Page Links',	'sb_breadcrumb_trail',	'Adds a breadcrumb trail navigation',	'2016-02-19 14:13:09',	1,	'1.1',	NULL),
(4,	'Thumb Gallery',	'vivid_thumb_gallery',	'Add a Gallery of Thumbnails to your Site',	'2016-03-01 13:28:09',	1,	'1.0.3',	NULL);

DROP TABLE IF EXISTS `PageFeeds`;
CREATE TABLE `PageFeeds` (
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `pfContentToDisplay` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pfDisplayAliases` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) DEFAULT '0',
  `iconFID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pfID`),
  UNIQUE KEY `pfHandle` (`pfHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PagePaths`;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`),
  KEY `cPath` (`cPath`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PagePaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`, `ppGeneratedFromURLSlugs`) VALUES
(1,	2,	'/dashboard',	'1',	1),
(2,	3,	'/dashboard/sitemap',	'1',	1),
(3,	4,	'/dashboard/sitemap/full',	'1',	1),
(4,	5,	'/dashboard/sitemap/explore',	'1',	1),
(5,	6,	'/dashboard/sitemap/search',	'1',	1),
(6,	7,	'/dashboard/files',	'1',	1),
(7,	8,	'/dashboard/files/search',	'1',	1),
(8,	9,	'/dashboard/files/attributes',	'1',	1),
(9,	10,	'/dashboard/files/sets',	'1',	1),
(10,	11,	'/dashboard/files/add_set',	'1',	1),
(11,	12,	'/dashboard/users',	'1',	1),
(12,	13,	'/dashboard/users/search',	'1',	1),
(13,	14,	'/dashboard/users/groups',	'1',	1),
(14,	15,	'/dashboard/users/attributes',	'1',	1),
(15,	16,	'/dashboard/users/add',	'1',	1),
(16,	17,	'/dashboard/users/add_group',	'1',	1),
(17,	18,	'/dashboard/users/groups/bulkupdate',	'1',	1),
(18,	19,	'/dashboard/users/group_sets',	'1',	1),
(19,	20,	'/dashboard/users/points',	'1',	1),
(20,	21,	'/dashboard/users/points/assign',	'1',	1),
(21,	22,	'/dashboard/users/points/actions',	'1',	1),
(22,	23,	'/dashboard/reports',	'1',	1),
(23,	24,	'/dashboard/reports/forms',	'1',	1),
(24,	25,	'/dashboard/reports/surveys',	'1',	1),
(25,	26,	'/dashboard/reports/logs',	'1',	1),
(26,	27,	'/dashboard/pages',	'1',	1),
(27,	28,	'/dashboard/pages/themes',	'1',	1),
(28,	29,	'/dashboard/pages/themes/inspect',	'1',	1),
(29,	30,	'/dashboard/pages/types',	'1',	1),
(30,	31,	'/dashboard/pages/types/organize',	'1',	1),
(31,	32,	'/dashboard/pages/types/add',	'1',	1),
(32,	33,	'/dashboard/pages/types/form',	'1',	1),
(33,	34,	'/dashboard/pages/types/output',	'1',	1),
(34,	35,	'/dashboard/pages/types/attributes',	'1',	1),
(35,	36,	'/dashboard/pages/types/permissions',	'1',	1),
(36,	37,	'/dashboard/pages/templates',	'1',	1),
(37,	38,	'/dashboard/pages/templates/add',	'1',	1),
(38,	39,	'/dashboard/pages/attributes',	'1',	1),
(39,	40,	'/dashboard/pages/single',	'1',	1),
(40,	41,	'/dashboard/pages/feeds',	'1',	1),
(41,	42,	'/dashboard/conversations',	'1',	1),
(42,	43,	'/dashboard/conversations/messages',	'1',	1),
(43,	44,	'/dashboard/workflow',	'1',	1),
(44,	45,	'/dashboard/workflow/me',	'1',	1),
(45,	46,	'/dashboard/workflow/workflows',	'1',	1),
(46,	47,	'/dashboard/blocks',	'1',	1),
(47,	48,	'/dashboard/blocks/stacks',	'1',	1),
(48,	49,	'/dashboard/blocks/permissions',	'1',	1),
(49,	50,	'/dashboard/blocks/stacks/list',	'1',	1),
(50,	51,	'/dashboard/blocks/types',	'1',	1),
(51,	52,	'/dashboard/extend',	'1',	1),
(52,	53,	'/dashboard/news',	'1',	1),
(53,	54,	'/dashboard/extend/install',	'1',	1),
(54,	55,	'/dashboard/extend/update',	'1',	1),
(55,	56,	'/dashboard/extend/connect',	'1',	1),
(56,	57,	'/dashboard/extend/themes',	'1',	1),
(57,	58,	'/dashboard/extend/addons',	'1',	1),
(58,	59,	'/dashboard/system',	'1',	1),
(59,	60,	'/dashboard/system/basics',	'1',	1),
(60,	61,	'/dashboard/system/basics/name',	'1',	1),
(61,	62,	'/dashboard/system/basics/accessibility',	'1',	1),
(62,	63,	'/dashboard/system/basics/social',	'1',	1),
(63,	64,	'/dashboard/system/basics/icons',	'1',	1),
(64,	65,	'/dashboard/system/basics/editor',	'1',	1),
(65,	66,	'/dashboard/system/basics/multilingual',	'1',	1),
(66,	67,	'/dashboard/system/basics/timezone',	'1',	1),
(67,	68,	'/dashboard/system/multilingual',	'1',	1),
(68,	69,	'/dashboard/system/multilingual/setup',	'1',	1),
(69,	70,	'/dashboard/system/multilingual/copy',	'1',	1),
(70,	71,	'/dashboard/system/multilingual/page_report',	'1',	1),
(71,	72,	'/dashboard/system/multilingual/translate_interface',	'1',	1),
(72,	73,	'/dashboard/system/seo',	'1',	1),
(73,	74,	'/dashboard/system/seo/urls',	'1',	1),
(74,	75,	'/dashboard/system/seo/bulk',	'1',	1),
(75,	76,	'/dashboard/system/seo/codes',	'1',	1),
(76,	77,	'/dashboard/system/seo/excluded',	'1',	1),
(77,	78,	'/dashboard/system/seo/searchindex',	'1',	1),
(78,	79,	'/dashboard/system/files',	'1',	1),
(79,	80,	'/dashboard/system/files/permissions',	'1',	1),
(80,	81,	'/dashboard/system/files/filetypes',	'1',	1),
(81,	82,	'/dashboard/system/files/thumbnails',	'1',	1),
(82,	83,	'/dashboard/system/files/image_uploading',	'1',	1),
(83,	84,	'/dashboard/system/files/storage',	'1',	1),
(84,	85,	'/dashboard/system/optimization',	'1',	1),
(85,	86,	'/dashboard/system/optimization/cache',	'1',	1),
(86,	87,	'/dashboard/system/optimization/clearcache',	'1',	1),
(87,	88,	'/dashboard/system/optimization/jobs',	'1',	1),
(88,	89,	'/dashboard/system/optimization/query_log',	'1',	1),
(89,	90,	'/dashboard/system/permissions',	'1',	1),
(90,	91,	'/dashboard/system/permissions/site',	'1',	1),
(91,	92,	'/dashboard/system/permissions/tasks',	'1',	1),
(92,	93,	'/dashboard/system/permissions/users',	'1',	1),
(93,	94,	'/dashboard/system/permissions/advanced',	'1',	1),
(94,	95,	'/dashboard/system/permissions/blacklist',	'1',	1),
(95,	96,	'/dashboard/system/permissions/captcha',	'1',	1),
(96,	97,	'/dashboard/system/permissions/antispam',	'1',	1),
(97,	98,	'/dashboard/system/permissions/maintenance',	'1',	1),
(98,	99,	'/dashboard/system/registration',	'1',	1),
(99,	100,	'/dashboard/system/registration/postlogin',	'1',	1),
(100,	101,	'/dashboard/system/registration/profiles',	'1',	1),
(101,	102,	'/dashboard/system/registration/open',	'1',	1),
(102,	103,	'/dashboard/system/registration/authentication',	'1',	1),
(103,	104,	'/dashboard/system/mail',	'1',	1),
(104,	105,	'/dashboard/system/mail/method',	'1',	1),
(105,	106,	'/dashboard/system/mail/method/test',	'1',	1),
(106,	107,	'/dashboard/system/mail/importers',	'1',	1),
(107,	108,	'/dashboard/system/conversations',	'1',	1),
(108,	109,	'/dashboard/system/conversations/settings',	'1',	1),
(109,	110,	'/dashboard/system/conversations/points',	'1',	1),
(110,	111,	'/dashboard/system/conversations/bannedwords',	'1',	1),
(111,	112,	'/dashboard/system/conversations/permissions',	'1',	1),
(112,	113,	'/dashboard/system/attributes',	'1',	1),
(113,	114,	'/dashboard/system/attributes/sets',	'1',	1),
(114,	115,	'/dashboard/system/attributes/types',	'1',	1),
(115,	116,	'/dashboard/system/attributes/topics',	'1',	1),
(116,	117,	'/dashboard/system/attributes/topics/add',	'1',	1),
(117,	118,	'/dashboard/system/environment',	'1',	1),
(118,	119,	'/dashboard/system/environment/info',	'1',	1),
(119,	120,	'/dashboard/system/environment/debug',	'1',	1),
(120,	121,	'/dashboard/system/environment/logging',	'1',	1),
(121,	122,	'/dashboard/system/environment/proxy',	'1',	1),
(122,	123,	'/dashboard/system/environment/entities',	'1',	1),
(123,	124,	'/dashboard/system/backup',	'1',	1),
(124,	125,	'/dashboard/system/backup/backup',	'1',	1),
(125,	126,	'/dashboard/system/backup/update',	'1',	1),
(126,	127,	'/dashboard/welcome',	'1',	1),
(127,	128,	'/dashboard/home',	'1',	1),
(128,	129,	'/!drafts',	'1',	1),
(129,	130,	'/!trash',	'1',	1),
(130,	131,	'/!stacks',	'1',	1),
(131,	132,	'/login',	'1',	1),
(132,	133,	'/register',	'1',	1),
(133,	134,	'/account',	'1',	1),
(134,	135,	'/account/edit_profile',	'1',	1),
(135,	136,	'/account/avatar',	'1',	1),
(136,	137,	'/account/messages',	'1',	1),
(137,	138,	'/account/messages/inbox',	'1',	1),
(138,	139,	'/members',	'1',	1),
(139,	140,	'/members/profile',	'1',	1),
(140,	141,	'/members/directory',	'1',	1),
(141,	142,	'/page_not_found',	'1',	1),
(142,	143,	'/page_forbidden',	'1',	1),
(143,	144,	'/download_file',	'1',	1),
(144,	146,	'/!stacks/header-site-title',	'1',	1),
(145,	147,	'/!stacks/header-navigation',	'1',	1),
(146,	148,	'/!stacks/footer-legal',	'1',	1),
(147,	149,	'/!stacks/footer-navigation',	'1',	1),
(148,	150,	'/!stacks/footer-contact',	'1',	1),
(149,	155,	'/!stacks/search',	'1',	1),
(150,	156,	'/institucion',	'1',	1),
(151,	157,	'/institucion/mision-y-vision',	'1',	1),
(152,	158,	'/noticias',	'1',	1),
(155,	161,	'/transparencia',	'1',	1),
(156,	162,	'/contacto',	'1',	1),
(161,	168,	'/buscador',	'1',	1),
(162,	169,	'/galeria',	'1',	1),
(163,	170,	'/dashboard/event_calendar',	'1',	1),
(164,	171,	'/dashboard/event_calendar/list_calendar',	'1',	1),
(165,	172,	'/dashboard/event_calendar/list_event',	'1',	1),
(166,	173,	'/dashboard/event_calendar/calendar',	'1',	1),
(167,	174,	'/dashboard/event_calendar/event',	'1',	1),
(168,	175,	'/dashboard/event_calendar/types',	'1',	1),
(169,	176,	'/dashboard/event_calendar/settings',	'1',	1),
(170,	177,	'/agenda',	'1',	1),
(171,	178,	'/institucion/organigrama',	'1',	1),
(172,	179,	'/institucion/autoridades',	'1',	1),
(173,	180,	'/institucion/marco-legal',	'1',	1),
(177,	185,	'/galeria/galeria-de-fotos',	'1',	1),
(180,	188,	'/noticias/titulo-de-la-noticia-1',	'1',	1),
(181,	189,	'/noticias/titulo-de-la-noticia-2',	'1',	1),
(182,	190,	'/noticias/titulo-de-la-noticia-3',	'1',	1);

DROP TABLE IF EXISTS `PagePermissionAssignments`;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PagePermissionAssignments` (`cID`, `pkID`, `paID`) VALUES
(1,	1,	42),
(2,	1,	109),
(12,	1,	110),
(23,	1,	111),
(27,	1,	112),
(42,	1,	113),
(44,	1,	114),
(47,	1,	115),
(52,	1,	116),
(59,	1,	117),
(129,	1,	63),
(132,	1,	60),
(133,	1,	61),
(146,	1,	42),
(158,	1,	42),
(163,	1,	106),
(169,	1,	42),
(181,	1,	136),
(1,	2,	43),
(129,	2,	141),
(146,	2,	43),
(158,	2,	43),
(163,	2,	108),
(169,	2,	43),
(181,	2,	128),
(1,	3,	145),
(129,	3,	140),
(146,	3,	44),
(158,	3,	147),
(163,	3,	108),
(169,	3,	146),
(181,	3,	128),
(1,	4,	45),
(129,	4,	66),
(146,	4,	45),
(158,	4,	45),
(163,	4,	108),
(169,	4,	45),
(181,	4,	128),
(1,	5,	46),
(129,	5,	141),
(146,	5,	46),
(158,	5,	46),
(163,	5,	108),
(169,	5,	46),
(181,	5,	128),
(1,	6,	47),
(129,	6,	141),
(146,	6,	47),
(158,	6,	47),
(163,	6,	108),
(169,	6,	47),
(181,	6,	128),
(1,	7,	48),
(129,	7,	69),
(146,	7,	48),
(158,	7,	48),
(163,	7,	108),
(169,	7,	48),
(181,	7,	128),
(1,	8,	50),
(129,	8,	71),
(146,	8,	50),
(158,	8,	50),
(163,	8,	105),
(169,	8,	50),
(181,	8,	129),
(1,	9,	51),
(129,	9,	142),
(146,	9,	51),
(158,	9,	51),
(163,	9,	105),
(169,	9,	51),
(181,	9,	130),
(1,	10,	52),
(129,	10,	142),
(146,	10,	52),
(158,	10,	52),
(163,	10,	105),
(169,	10,	52),
(181,	10,	131),
(1,	11,	53),
(129,	11,	74),
(146,	11,	53),
(158,	11,	53),
(163,	11,	105),
(169,	11,	53),
(181,	11,	132),
(1,	12,	54),
(129,	12,	142),
(146,	12,	54),
(158,	12,	54),
(163,	12,	108),
(169,	12,	54),
(181,	12,	128),
(1,	13,	55),
(129,	13,	142),
(146,	13,	55),
(158,	13,	55),
(163,	13,	105),
(169,	13,	55),
(181,	13,	133),
(1,	14,	56),
(129,	14,	142),
(146,	14,	56),
(158,	14,	56),
(163,	14,	108),
(169,	14,	56),
(181,	14,	128),
(1,	15,	57),
(129,	15,	143),
(146,	15,	57),
(158,	15,	148),
(163,	15,	108),
(169,	15,	144),
(181,	15,	128),
(1,	16,	58),
(129,	16,	79),
(146,	16,	58),
(158,	16,	58),
(163,	16,	108),
(169,	16,	58),
(181,	16,	128),
(1,	17,	59),
(129,	17,	80),
(146,	17,	59),
(158,	17,	59),
(163,	17,	105),
(169,	17,	59),
(181,	17,	135),
(1,	18,	49),
(129,	18,	70),
(146,	18,	49),
(158,	18,	49),
(163,	18,	105),
(169,	18,	49),
(181,	18,	128);

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PagePermissionPageTypeAccessList` (`paID`, `peID`, `permission`, `externalLink`) VALUES
(104,	1,	'A',	1),
(139,	1,	'A',	1),
(139,	2,	'A',	1),
(143,	1,	'A',	1),
(144,	1,	'A',	1),
(144,	7,	'A',	1),
(148,	1,	'A',	1),
(148,	7,	'A',	1);

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PagePermissionThemeAccessList` (`paID`, `peID`, `permission`) VALUES
(129,	1,	'A');

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PagePermissionThemeAccessListCustom` (`paID`, `peID`, `pThemeID`) VALUES
(129,	1,	1),
(129,	1,	2);

DROP TABLE IF EXISTS `Pages`;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Pages` (`cID`, `ptID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cDraftTargetParentPageID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	18,	0,	0,	0,	0,	-1,	'0',	0,	0),
(2,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'OVERRIDE',	'/dashboard/view.php',	0,	NULL,	0,	1,	14,	0,	0,	0,	0,	-1,	'0',	0,	1),
(3,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/sitemap/view.php',	0,	NULL,	0,	1,	3,	0,	2,	0,	0,	-1,	'0',	0,	1),
(4,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/sitemap/full.php',	0,	NULL,	0,	1,	0,	0,	3,	0,	0,	-1,	'0',	0,	1),
(5,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/sitemap/explore.php',	0,	NULL,	0,	1,	0,	1,	3,	0,	0,	-1,	'0',	0,	1),
(6,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/sitemap/search.php',	0,	NULL,	0,	1,	0,	2,	3,	0,	0,	-1,	'0',	0,	1),
(7,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/files/view.php',	0,	NULL,	0,	1,	4,	1,	2,	0,	0,	-1,	'0',	0,	1),
(8,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/files/search.php',	0,	NULL,	0,	1,	0,	0,	7,	0,	0,	-1,	'0',	0,	1),
(9,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/files/attributes.php',	0,	NULL,	0,	1,	0,	1,	7,	0,	0,	-1,	'0',	0,	1),
(10,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/files/sets.php',	0,	NULL,	0,	1,	0,	2,	7,	0,	0,	-1,	'0',	0,	1),
(11,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/files/add_set.php',	0,	NULL,	0,	1,	0,	3,	7,	0,	0,	-1,	'0',	0,	1),
(12,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'OVERRIDE',	'/dashboard/users/view.php',	0,	NULL,	0,	1,	7,	2,	2,	0,	0,	-1,	'0',	0,	1),
(13,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/search.php',	0,	NULL,	0,	1,	0,	0,	12,	0,	0,	-1,	'0',	0,	1),
(14,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/groups.php',	0,	NULL,	0,	1,	1,	1,	12,	0,	0,	-1,	'0',	0,	1),
(15,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/attributes.php',	0,	NULL,	0,	1,	0,	2,	12,	0,	0,	-1,	'0',	0,	1),
(16,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/add.php',	0,	NULL,	0,	1,	0,	3,	12,	0,	0,	-1,	'0',	0,	1),
(17,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/add_group.php',	0,	NULL,	0,	1,	0,	4,	12,	0,	0,	-1,	'0',	0,	1),
(18,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/groups/bulkupdate.php',	0,	NULL,	0,	1,	0,	0,	14,	0,	0,	-1,	'0',	0,	1),
(19,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/group_sets.php',	0,	NULL,	0,	1,	0,	5,	12,	0,	0,	-1,	'0',	0,	1),
(20,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/points/view.php',	0,	NULL,	0,	1,	2,	6,	12,	0,	0,	-1,	'0',	0,	1),
(21,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/points/assign.php',	0,	NULL,	0,	1,	0,	0,	20,	0,	0,	-1,	'0',	0,	1),
(22,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/points/actions.php',	0,	NULL,	0,	1,	0,	1,	20,	0,	0,	-1,	'0',	0,	1),
(23,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	23,	'OVERRIDE',	'/dashboard/reports.php',	0,	NULL,	0,	1,	3,	3,	2,	0,	0,	-1,	'0',	0,	1),
(24,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	23,	'PARENT',	'/dashboard/reports/forms.php',	0,	NULL,	0,	1,	0,	0,	23,	0,	0,	-1,	'0',	0,	1),
(25,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	23,	'PARENT',	'/dashboard/reports/surveys.php',	0,	NULL,	0,	1,	0,	1,	23,	0,	0,	-1,	'0',	0,	1),
(26,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	23,	'PARENT',	'/dashboard/reports/logs.php',	0,	NULL,	0,	1,	0,	2,	23,	0,	0,	-1,	'0',	0,	1),
(27,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'OVERRIDE',	'/dashboard/pages/view.php',	0,	NULL,	0,	1,	6,	4,	2,	0,	0,	-1,	'0',	0,	1),
(28,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/themes/view.php',	0,	NULL,	0,	1,	1,	0,	27,	0,	0,	-1,	'0',	0,	1),
(29,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/themes/inspect.php',	0,	NULL,	0,	1,	0,	0,	28,	0,	0,	-1,	'0',	0,	1),
(30,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/view.php',	0,	NULL,	0,	1,	6,	1,	27,	0,	0,	-1,	'0',	0,	1),
(31,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/organize.php',	0,	NULL,	0,	1,	0,	0,	30,	0,	0,	-1,	'0',	0,	1),
(32,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/add.php',	0,	NULL,	0,	1,	0,	1,	30,	0,	0,	-1,	'0',	0,	1),
(33,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/form.php',	0,	NULL,	0,	1,	0,	2,	30,	0,	0,	-1,	'0',	0,	1),
(34,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/output.php',	0,	NULL,	0,	1,	0,	3,	30,	0,	0,	-1,	'0',	0,	1),
(35,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/attributes.php',	0,	NULL,	0,	1,	0,	4,	30,	0,	0,	-1,	'0',	0,	1),
(36,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/permissions.php',	0,	NULL,	0,	1,	0,	5,	30,	0,	0,	-1,	'0',	0,	1),
(37,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/templates/view.php',	0,	NULL,	0,	1,	1,	2,	27,	0,	0,	-1,	'0',	0,	1),
(38,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/templates/add.php',	0,	NULL,	0,	1,	0,	0,	37,	0,	0,	-1,	'0',	0,	1),
(39,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/attributes.php',	0,	NULL,	0,	1,	0,	3,	27,	0,	0,	-1,	'0',	0,	1),
(40,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/single.php',	0,	NULL,	0,	1,	0,	4,	27,	0,	0,	-1,	'0',	0,	1),
(41,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/feeds.php',	0,	NULL,	0,	1,	0,	5,	27,	0,	0,	-1,	'0',	0,	1),
(42,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	42,	'OVERRIDE',	'/dashboard/conversations/view.php',	0,	NULL,	0,	1,	1,	5,	2,	0,	0,	-1,	'0',	0,	1),
(43,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	42,	'PARENT',	'/dashboard/conversations/messages.php',	0,	NULL,	0,	1,	0,	0,	42,	0,	0,	-1,	'0',	0,	1),
(44,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	44,	'OVERRIDE',	'/dashboard/workflow/view.php',	0,	NULL,	0,	1,	2,	6,	2,	0,	0,	-1,	'0',	0,	1),
(45,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	44,	'PARENT',	'/dashboard/workflow/me.php',	0,	NULL,	0,	1,	0,	0,	44,	0,	0,	-1,	'0',	0,	1),
(46,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	44,	'PARENT',	'/dashboard/workflow/workflows.php',	0,	NULL,	0,	1,	0,	1,	44,	0,	0,	-1,	'0',	0,	1),
(47,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	47,	'OVERRIDE',	'/dashboard/blocks/view.php',	0,	NULL,	0,	1,	3,	7,	2,	0,	0,	-1,	'0',	0,	1),
(48,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	47,	'PARENT',	'/dashboard/blocks/stacks/view.php',	0,	NULL,	0,	1,	1,	0,	47,	0,	0,	-1,	'0',	0,	1),
(49,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	47,	'PARENT',	'/dashboard/blocks/permissions.php',	0,	NULL,	0,	1,	0,	1,	47,	0,	0,	-1,	'0',	0,	1),
(50,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	47,	'PARENT',	'/dashboard/blocks/stacks/list/view.php',	0,	NULL,	0,	1,	0,	0,	48,	0,	0,	-1,	'0',	0,	1),
(51,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	47,	'PARENT',	'/dashboard/blocks/types/view.php',	0,	NULL,	0,	1,	0,	2,	47,	0,	0,	-1,	'0',	0,	1),
(52,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'OVERRIDE',	'/dashboard/extend/view.php',	0,	NULL,	0,	1,	5,	8,	2,	0,	0,	-1,	'0',	0,	1),
(53,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/news.php',	0,	NULL,	0,	1,	0,	9,	2,	0,	0,	-1,	'0',	0,	1),
(54,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'PARENT',	'/dashboard/extend/install.php',	0,	NULL,	0,	1,	0,	0,	52,	0,	0,	-1,	'0',	0,	1),
(55,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'PARENT',	'/dashboard/extend/update.php',	0,	NULL,	0,	1,	0,	1,	52,	0,	0,	-1,	'0',	0,	1),
(56,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'PARENT',	'/dashboard/extend/connect.php',	0,	NULL,	0,	1,	0,	2,	52,	0,	0,	-1,	'0',	0,	1),
(57,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'PARENT',	'/dashboard/extend/themes.php',	0,	NULL,	0,	1,	0,	3,	52,	0,	0,	-1,	'0',	0,	1),
(58,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'PARENT',	'/dashboard/extend/addons.php',	0,	NULL,	0,	1,	0,	4,	52,	0,	0,	-1,	'0',	0,	1),
(59,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'OVERRIDE',	'/dashboard/system/view.php',	0,	NULL,	0,	1,	12,	10,	2,	0,	0,	-1,	'0',	0,	1),
(60,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/view.php',	0,	NULL,	0,	1,	7,	0,	59,	0,	0,	-1,	'0',	0,	1),
(61,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/name.php',	0,	NULL,	0,	1,	0,	0,	60,	0,	0,	-1,	'0',	0,	1),
(62,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/accessibility.php',	0,	NULL,	0,	1,	0,	1,	60,	0,	0,	-1,	'0',	0,	1),
(63,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/social.php',	0,	NULL,	0,	1,	0,	2,	60,	0,	0,	-1,	'0',	0,	1),
(64,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/icons.php',	0,	NULL,	0,	1,	0,	3,	60,	0,	0,	-1,	'0',	0,	1),
(65,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/editor.php',	0,	NULL,	0,	1,	0,	4,	60,	0,	0,	-1,	'0',	0,	1),
(66,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/multilingual/view.php',	0,	NULL,	0,	1,	0,	5,	60,	0,	0,	-1,	'0',	0,	1),
(67,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/timezone.php',	0,	NULL,	0,	1,	0,	6,	60,	0,	0,	-1,	'0',	0,	1),
(68,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/multilingual/view.php',	0,	NULL,	0,	1,	4,	1,	59,	0,	0,	-1,	'0',	0,	1),
(69,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/multilingual/setup.php',	0,	NULL,	0,	1,	0,	0,	68,	0,	0,	-1,	'0',	0,	1),
(70,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/multilingual/copy.php',	0,	NULL,	0,	1,	0,	1,	68,	0,	0,	-1,	'0',	0,	1),
(71,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/multilingual/page_report.php',	0,	NULL,	0,	1,	0,	2,	68,	0,	0,	-1,	'0',	0,	1),
(72,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/multilingual/translate_interface.php',	0,	NULL,	0,	1,	0,	3,	68,	0,	0,	-1,	'0',	0,	1),
(73,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/view.php',	0,	NULL,	0,	1,	5,	2,	59,	0,	0,	-1,	'0',	0,	1),
(74,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/urls.php',	0,	NULL,	0,	1,	0,	0,	73,	0,	0,	-1,	'0',	0,	1),
(75,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/bulk.php',	0,	NULL,	0,	1,	0,	1,	73,	0,	0,	-1,	'0',	0,	1),
(76,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/codes.php',	0,	NULL,	0,	1,	0,	2,	73,	0,	0,	-1,	'0',	0,	1),
(77,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/excluded.php',	0,	NULL,	0,	1,	0,	3,	73,	0,	0,	-1,	'0',	0,	1),
(78,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/searchindex.php',	0,	NULL,	0,	1,	0,	4,	73,	0,	0,	-1,	'0',	0,	1),
(79,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/view.php',	0,	NULL,	0,	1,	5,	3,	59,	0,	0,	-1,	'0',	0,	1),
(80,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/permissions.php',	0,	NULL,	0,	1,	0,	0,	79,	0,	0,	-1,	'0',	0,	1),
(81,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/filetypes.php',	0,	NULL,	0,	1,	0,	1,	79,	0,	0,	-1,	'0',	0,	1),
(82,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/thumbnails.php',	0,	NULL,	0,	1,	0,	2,	79,	0,	0,	-1,	'0',	0,	1),
(83,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/image_uploading.php',	0,	NULL,	0,	1,	0,	3,	79,	0,	0,	-1,	'0',	0,	1),
(84,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/storage.php',	0,	NULL,	0,	1,	0,	4,	79,	0,	0,	-1,	'0',	0,	1),
(85,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/optimization/view.php',	0,	NULL,	0,	1,	4,	4,	59,	0,	0,	-1,	'0',	0,	1),
(86,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/optimization/cache.php',	0,	NULL,	0,	1,	0,	0,	85,	0,	0,	-1,	'0',	0,	1),
(87,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/optimization/clearcache.php',	0,	NULL,	0,	1,	0,	1,	85,	0,	0,	-1,	'0',	0,	1),
(88,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/optimization/jobs.php',	0,	NULL,	0,	1,	0,	2,	85,	0,	0,	-1,	'0',	0,	1),
(89,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/optimization/query_log.php',	0,	NULL,	0,	1,	0,	3,	85,	0,	0,	-1,	'0',	0,	1),
(90,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/view.php',	0,	NULL,	0,	1,	8,	5,	59,	0,	0,	-1,	'0',	0,	1),
(91,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/site.php',	0,	NULL,	0,	1,	0,	0,	90,	0,	0,	-1,	'0',	0,	1),
(92,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/tasks.php',	0,	NULL,	0,	1,	0,	1,	90,	0,	0,	-1,	'0',	0,	1),
(93,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/users.php',	0,	NULL,	0,	1,	0,	2,	90,	0,	0,	-1,	'0',	0,	1),
(94,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/advanced.php',	0,	NULL,	0,	1,	0,	3,	90,	0,	0,	-1,	'0',	0,	1),
(95,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/blacklist.php',	0,	NULL,	0,	1,	0,	4,	90,	0,	0,	-1,	'0',	0,	1),
(96,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/captcha.php',	0,	NULL,	0,	1,	0,	5,	90,	0,	0,	-1,	'0',	0,	1),
(97,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/antispam.php',	0,	NULL,	0,	1,	0,	6,	90,	0,	0,	-1,	'0',	0,	1),
(98,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/maintenance.php',	0,	NULL,	0,	1,	0,	7,	90,	0,	0,	-1,	'0',	0,	1),
(99,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/registration/view.php',	0,	NULL,	0,	1,	4,	6,	59,	0,	0,	-1,	'0',	0,	1),
(100,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/registration/postlogin.php',	0,	NULL,	0,	1,	0,	0,	99,	0,	0,	-1,	'0',	0,	1),
(101,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/registration/profiles.php',	0,	NULL,	0,	1,	0,	1,	99,	0,	0,	-1,	'0',	0,	1),
(102,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/registration/open.php',	0,	NULL,	0,	1,	0,	2,	99,	0,	0,	-1,	'0',	0,	1),
(103,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/registration/authentication.php',	0,	NULL,	0,	1,	0,	3,	99,	0,	0,	-1,	'0',	0,	1),
(104,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/mail/view.php',	0,	NULL,	0,	1,	2,	7,	59,	0,	0,	-1,	'0',	0,	1),
(105,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/mail/method.php',	0,	NULL,	0,	1,	1,	0,	104,	0,	0,	-1,	'0',	0,	1),
(106,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/mail/method/test.php',	0,	NULL,	0,	1,	0,	0,	105,	0,	0,	-1,	'0',	0,	1),
(107,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/mail/importers.php',	0,	NULL,	0,	1,	0,	1,	104,	0,	0,	-1,	'0',	0,	1),
(108,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/conversations/view.php',	0,	NULL,	0,	1,	4,	8,	59,	0,	0,	-1,	'0',	0,	1),
(109,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/conversations/settings.php',	0,	NULL,	0,	1,	0,	0,	108,	0,	0,	-1,	'0',	0,	1),
(110,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/conversations/points.php',	0,	NULL,	0,	1,	0,	1,	108,	0,	0,	-1,	'0',	0,	1),
(111,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/conversations/bannedwords.php',	0,	NULL,	0,	1,	0,	2,	108,	0,	0,	-1,	'0',	0,	1),
(112,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/conversations/permissions.php',	0,	NULL,	0,	1,	0,	3,	108,	0,	0,	-1,	'0',	0,	1),
(113,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/attributes/view.php',	0,	NULL,	0,	1,	3,	9,	59,	0,	0,	-1,	'0',	0,	1),
(114,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/attributes/sets.php',	0,	NULL,	0,	1,	0,	0,	113,	0,	0,	-1,	'0',	0,	1),
(115,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/attributes/types.php',	0,	NULL,	0,	1,	0,	1,	113,	0,	0,	-1,	'0',	0,	1),
(116,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/attributes/topics/view.php',	0,	NULL,	0,	1,	1,	2,	113,	0,	0,	-1,	'0',	0,	1),
(117,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/attributes/topics/add.php',	0,	NULL,	0,	1,	0,	0,	116,	0,	0,	-1,	'0',	0,	1),
(118,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/view.php',	0,	NULL,	0,	1,	5,	10,	59,	0,	0,	-1,	'0',	0,	1),
(119,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/info.php',	0,	NULL,	0,	1,	0,	0,	118,	0,	0,	-1,	'0',	0,	1),
(120,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/debug.php',	0,	NULL,	0,	1,	0,	1,	118,	0,	0,	-1,	'0',	0,	1),
(121,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/logging.php',	0,	NULL,	0,	1,	0,	2,	118,	0,	0,	-1,	'0',	0,	1),
(122,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/proxy.php',	0,	NULL,	0,	1,	0,	3,	118,	0,	0,	-1,	'0',	0,	1),
(123,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/entities.php',	0,	NULL,	0,	1,	0,	4,	118,	0,	0,	-1,	'0',	0,	1),
(124,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/backup/view.php',	0,	NULL,	0,	1,	2,	11,	59,	0,	0,	-1,	'0',	0,	1),
(125,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/backup/backup.php',	0,	NULL,	0,	1,	0,	0,	124,	0,	0,	-1,	'0',	0,	1),
(126,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/backup/update.php',	0,	NULL,	0,	1,	0,	1,	124,	0,	0,	-1,	'0',	0,	1),
(127,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	11,	2,	0,	0,	-1,	'0',	0,	1),
(128,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	12,	2,	0,	0,	-1,	'0',	0,	1),
(129,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	129,	'OVERRIDE',	'/!drafts/view.php',	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	1),
(130,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/!trash/view.php',	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	1),
(131,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/!stacks/view.php',	0,	NULL,	0,	1,	6,	0,	0,	0,	0,	-1,	'0',	0,	1),
(132,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	132,	'OVERRIDE',	'/login.php',	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	1),
(133,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	133,	'OVERRIDE',	'/register.php',	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	1),
(134,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/account/view.php',	0,	NULL,	0,	1,	3,	0,	0,	0,	0,	-1,	'0',	0,	1),
(135,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/account/edit_profile.php',	0,	NULL,	0,	1,	0,	0,	134,	0,	0,	-1,	'0',	0,	1),
(136,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/account/avatar.php',	0,	NULL,	0,	1,	0,	1,	134,	0,	0,	-1,	'0',	0,	1),
(137,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/account/messages/view.php',	0,	NULL,	0,	1,	1,	2,	134,	0,	0,	-1,	'0',	0,	1),
(138,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/account/messages/inbox.php',	0,	NULL,	0,	1,	0,	0,	137,	0,	0,	-1,	'0',	0,	1),
(139,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/members/view.php',	0,	NULL,	0,	1,	2,	0,	1,	0,	0,	-1,	'0',	0,	1),
(140,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/members/profile.php',	0,	NULL,	0,	1,	0,	0,	139,	0,	0,	-1,	'0',	0,	1),
(141,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/members/directory.php',	0,	NULL,	0,	1,	0,	1,	139,	0,	0,	-1,	'0',	0,	1),
(142,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/page_not_found.php',	0,	NULL,	0,	1,	0,	1,	0,	0,	0,	-1,	'0',	0,	1),
(143,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/page_forbidden.php',	0,	NULL,	0,	1,	0,	1,	0,	0,	0,	-1,	'0',	0,	1),
(144,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/download_file.php',	0,	NULL,	0,	1,	0,	1,	1,	0,	0,	-1,	'0',	0,	1),
(145,	6,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	145,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(146,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	146,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	131,	0,	0,	-1,	'0',	0,	1),
(147,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	1,	131,	0,	0,	-1,	'0',	0,	1),
(148,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	2,	131,	0,	0,	-1,	'0',	0,	1),
(149,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	3,	131,	0,	0,	-1,	'0',	0,	1),
(150,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	4,	131,	0,	0,	-1,	'0',	0,	1),
(154,	7,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	154,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(155,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	5,	131,	0,	0,	-1,	'0',	0,	1),
(156,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	4,	0,	1,	0,	1,	-1,	'0',	0,	0),
(157,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	0,	156,	0,	156,	-1,	'0',	0,	0),
(158,	7,	0,	1,	0,	NULL,	NULL,	NULL,	0,	158,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	3,	1,	1,	0,	1,	-1,	'0',	0,	0),
(161,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	4,	1,	0,	1,	-1,	'0',	0,	0),
(162,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	5,	1,	0,	1,	-1,	'0',	0,	0),
(163,	8,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	163,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(168,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	6,	1,	0,	1,	-1,	'0',	0,	0),
(169,	7,	0,	1,	0,	NULL,	NULL,	NULL,	0,	169,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	1,	3,	1,	0,	1,	-1,	'0',	0,	0),
(170,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/view.php',	0,	NULL,	0,	1,	6,	13,	2,	2,	0,	-1,	'0',	0,	1),
(171,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/list_calendar.php',	0,	NULL,	0,	1,	0,	0,	170,	2,	0,	-1,	'0',	0,	1),
(172,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/list_event.php',	0,	NULL,	0,	1,	0,	1,	170,	2,	0,	-1,	'0',	0,	1),
(173,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/calendar.php',	0,	NULL,	0,	1,	0,	2,	170,	2,	0,	-1,	'0',	0,	1),
(174,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/event.php',	0,	NULL,	0,	1,	0,	3,	170,	2,	0,	-1,	'0',	0,	1),
(175,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/types.php',	0,	NULL,	0,	1,	0,	4,	170,	2,	0,	-1,	'0',	0,	1),
(176,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/settings.php',	0,	NULL,	0,	1,	0,	5,	170,	2,	0,	-1,	'0',	0,	1),
(177,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	2,	1,	0,	1,	-1,	'0',	0,	0),
(178,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	1,	156,	0,	156,	-1,	'0',	0,	0),
(179,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	3,	156,	0,	156,	-1,	'0',	0,	0),
(180,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	2,	156,	0,	156,	-1,	'0',	0,	0),
(181,	9,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	181,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(185,	9,	0,	3,	0,	NULL,	NULL,	NULL,	1,	181,	'TEMPLATE',	NULL,	0,	NULL,	0,	1,	0,	3,	169,	0,	169,	-1,	'0',	0,	0),
(188,	8,	0,	3,	0,	NULL,	NULL,	NULL,	1,	163,	'TEMPLATE',	NULL,	0,	NULL,	0,	1,	0,	7,	158,	0,	158,	-1,	'0',	0,	0),
(189,	8,	0,	3,	0,	NULL,	NULL,	NULL,	1,	163,	'TEMPLATE',	NULL,	0,	NULL,	0,	1,	0,	8,	158,	0,	158,	-1,	'0',	0,	0),
(190,	8,	0,	3,	0,	NULL,	NULL,	NULL,	1,	163,	'TEMPLATE',	NULL,	0,	NULL,	0,	1,	0,	9,	158,	0,	158,	-1,	'0',	0,	0);

DROP TABLE IF EXISTS `PageSearchIndex`;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageSearchIndex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(2,	'',	'Dashboard',	'',	'/dashboard',	'2016-02-18 13:33:45',	'2016-02-18 13:34:37',	NULL,	0),
(3,	'',	'Sitemap',	'Whole world at a glance.',	'/dashboard/sitemap',	'2016-02-18 13:33:46',	'2016-02-18 13:34:37',	NULL,	0),
(4,	'',	'Full Sitemap',	'',	'/dashboard/sitemap/full',	'2016-02-18 13:33:46',	'2016-02-18 13:34:38',	NULL,	0),
(5,	'',	'Flat View',	'',	'/dashboard/sitemap/explore',	'2016-02-18 13:33:46',	'2016-02-18 13:34:38',	NULL,	0),
(6,	'',	'Page Search',	'',	'/dashboard/sitemap/search',	'2016-02-18 13:33:47',	'2016-02-18 13:34:38',	NULL,	0),
(8,	'',	'File Manager',	'',	'/dashboard/files/search',	'2016-02-18 13:33:47',	'2016-02-18 13:34:38',	NULL,	0),
(9,	'',	'Attributes',	'',	'/dashboard/files/attributes',	'2016-02-18 13:33:48',	'2016-02-18 13:34:38',	NULL,	0),
(10,	'',	'File Sets',	'',	'/dashboard/files/sets',	'2016-02-18 13:33:48',	'2016-02-18 13:34:38',	NULL,	0),
(11,	'',	'Add File Set',	'',	'/dashboard/files/add_set',	'2016-02-18 13:33:48',	'2016-02-18 13:34:39',	NULL,	0),
(12,	'',	'Members',	'Add and manage the user accounts and groups on your website.',	'/dashboard/users',	'2016-02-18 13:33:49',	'2016-02-18 13:34:39',	NULL,	0),
(13,	'',	'Search Users',	'',	'/dashboard/users/search',	'2016-02-18 13:33:49',	'2016-02-18 13:34:39',	NULL,	0),
(14,	'',	'User Groups',	'',	'/dashboard/users/groups',	'2016-02-18 13:33:49',	'2016-02-18 13:34:39',	NULL,	0),
(15,	'',	'Attributes',	'',	'/dashboard/users/attributes',	'2016-02-18 13:33:50',	'2016-02-18 13:34:39',	NULL,	0),
(16,	'',	'Add User',	'',	'/dashboard/users/add',	'2016-02-18 13:33:50',	'2016-02-18 13:34:39',	NULL,	0),
(17,	'',	'Add Group',	'',	'/dashboard/users/add_group',	'2016-02-18 13:33:50',	'2016-02-18 13:34:40',	NULL,	0),
(19,	'',	'Group Sets',	'',	'/dashboard/users/group_sets',	'2016-02-18 13:33:51',	'2016-02-18 13:34:40',	NULL,	0),
(20,	'',	'Community Points',	NULL,	'/dashboard/users/points',	'2016-02-18 13:33:52',	'2016-02-18 13:34:40',	NULL,	0),
(22,	'',	'Actions',	NULL,	'/dashboard/users/points/actions',	'2016-02-18 13:33:52',	'2016-02-18 13:34:40',	NULL,	0),
(23,	'',	'Reports',	'Get data from forms and logs.',	'/dashboard/reports',	'2016-02-18 13:33:53',	'2016-02-18 13:34:40',	NULL,	0),
(24,	'',	'Form Results',	'Get submission data.',	'/dashboard/reports/forms',	'2016-02-18 13:33:53',	'2016-02-18 13:34:40',	NULL,	0),
(25,	'',	'Surveys',	'',	'/dashboard/reports/surveys',	'2016-02-18 13:33:53',	'2016-02-18 13:34:40',	NULL,	0),
(26,	'',	'Logs',	'',	'/dashboard/reports/logs',	'2016-02-18 13:33:54',	'2016-02-18 13:34:41',	NULL,	0),
(28,	'',	'Themes',	'Reskin your site.',	'/dashboard/pages/themes',	'2016-02-18 13:33:55',	'2016-02-18 13:34:41',	NULL,	0),
(29,	'',	'Inspect',	'',	'/dashboard/pages/themes/inspect',	'2016-02-18 13:33:55',	'2016-02-18 13:34:41',	NULL,	0),
(31,	'',	'Organize Page Type Order',	'',	'/dashboard/pages/types/organize',	'2016-02-18 13:33:56',	'2016-02-18 13:34:41',	NULL,	0),
(32,	'',	'Add Page Type',	'',	'/dashboard/pages/types/add',	'2016-02-18 13:33:56',	'2016-02-18 13:34:41',	NULL,	0),
(33,	'',	'Compose Form',	'',	'/dashboard/pages/types/form',	'2016-02-18 13:33:56',	'2016-02-18 13:34:41',	NULL,	0),
(34,	'',	'Defaults and Output',	'',	'/dashboard/pages/types/output',	'2016-02-18 13:33:57',	'2016-02-18 13:34:41',	NULL,	0),
(35,	'',	'Page Type Attributes',	'',	'/dashboard/pages/types/attributes',	'2016-02-18 13:33:57',	'2016-02-18 13:34:41',	NULL,	0),
(36,	'',	'Page Type Permissions',	'',	'/dashboard/pages/types/permissions',	'2016-02-18 13:33:58',	'2016-02-18 13:34:42',	NULL,	0),
(38,	'',	'Add Page Template',	'Add page templates to your site.',	'/dashboard/pages/templates/add',	'2016-02-18 13:33:58',	'2016-02-18 13:34:42',	NULL,	0),
(39,	'',	'Attributes',	'',	'/dashboard/pages/attributes',	'2016-02-18 13:33:59',	'2016-02-18 13:34:42',	NULL,	0),
(40,	'',	'Single Pages',	'',	'/dashboard/pages/single',	'2016-02-18 13:33:59',	'2016-02-18 13:34:42',	NULL,	0),
(41,	'',	'RSS Feeds',	'',	'/dashboard/pages/feeds',	'2016-02-18 13:33:59',	'2016-02-18 13:34:42',	NULL,	0),
(43,	'',	'Messages',	'',	'/dashboard/conversations/messages',	'2016-02-18 13:34:00',	'2016-02-18 13:34:42',	NULL,	0),
(44,	'',	'Workflow',	'',	'/dashboard/workflow',	'2016-02-18 13:34:01',	'2016-02-18 13:34:42',	NULL,	0),
(48,	'',	'Stacks',	'Share content across your site.',	'/dashboard/blocks/stacks',	'2016-02-18 13:34:03',	'2016-02-18 13:34:42',	NULL,	0),
(50,	'',	'Stack List',	'',	'/dashboard/blocks/stacks/list',	'2016-02-18 13:34:03',	'2016-02-18 13:34:43',	NULL,	0),
(51,	'',	'Block Types',	'Manage the installed block types in your site.',	'/dashboard/blocks/types',	'2016-02-18 13:34:04',	'2016-02-18 13:34:43',	NULL,	0),
(52,	'',	'Extend concrete5',	'',	'/dashboard/extend',	'2016-02-18 13:34:04',	'2016-02-18 13:34:44',	NULL,	0),
(53,	'',	'Dashboard',	'',	'/dashboard/news',	'2016-02-18 13:34:04',	'2016-02-18 13:34:44',	NULL,	0),
(54,	'',	'Add Functionality',	'Install add-ons & themes.',	'/dashboard/extend/install',	'2016-02-18 13:34:05',	'2016-02-18 13:34:44',	NULL,	0),
(55,	'',	'Update Add-Ons',	'Update your installed packages.',	'/dashboard/extend/update',	'2016-02-18 13:34:05',	'2016-02-18 13:34:44',	NULL,	0),
(56,	'',	'Connect to the Community',	'Connect to the concrete5 community.',	'/dashboard/extend/connect',	'2016-02-18 13:34:06',	'2016-02-18 13:34:44',	NULL,	0),
(57,	'',	'Get More Themes',	'Download themes from concrete5.org.',	'/dashboard/extend/themes',	'2016-02-18 13:34:06',	'2016-02-18 13:34:45',	NULL,	0),
(58,	'',	'Get More Add-Ons',	'Download add-ons from concrete5.org.',	'/dashboard/extend/addons',	'2016-02-18 13:34:07',	'2016-02-18 13:34:45',	NULL,	0),
(59,	'',	'System & Settings',	'Secure and setup your site.',	'/dashboard/system',	'2016-02-18 13:34:07',	'2016-02-18 13:34:45',	NULL,	0),
(61,	'',	'Site Name',	'',	'/dashboard/system/basics/name',	'2016-02-18 13:34:08',	'2016-02-18 13:34:45',	NULL,	0),
(62,	'',	'Accessibility',	'',	'/dashboard/system/basics/accessibility',	'2016-02-18 13:34:08',	'2016-02-18 13:34:45',	NULL,	0),
(63,	'',	'Social Links',	'',	'/dashboard/system/basics/social',	'2016-02-18 13:34:09',	'2016-02-18 13:34:45',	NULL,	0),
(64,	'',	'Bookmark Icons',	'Bookmark icon and mobile home screen icon setup.',	'/dashboard/system/basics/icons',	'2016-02-18 13:34:09',	'2016-02-18 13:34:45',	NULL,	0),
(65,	'',	'Rich Text Editor',	'',	'/dashboard/system/basics/editor',	'2016-02-18 13:34:10',	'2016-02-18 13:34:45',	NULL,	0),
(66,	'',	'Languages',	'',	'/dashboard/system/basics/multilingual',	'2016-02-18 13:34:10',	'2016-02-18 13:34:46',	NULL,	0),
(67,	'',	'Time Zone',	'',	'/dashboard/system/basics/timezone',	'2016-02-18 13:34:11',	'2016-02-18 13:34:46',	NULL,	0),
(68,	'',	'Multilingual',	'Run your site in multiple languages.',	'/dashboard/system/multilingual',	'2016-02-18 13:34:11',	'2016-02-18 13:34:46',	NULL,	0),
(74,	'',	'URLs and Redirection',	'',	'/dashboard/system/seo/urls',	'2016-02-18 13:34:13',	'2016-02-18 13:34:46',	NULL,	0),
(75,	'',	'Bulk SEO Updater',	'',	'/dashboard/system/seo/bulk',	'2016-02-18 13:34:14',	'2016-02-18 13:34:46',	NULL,	0),
(76,	'',	'Tracking Codes',	'',	'/dashboard/system/seo/codes',	'2016-02-18 13:34:14',	'2016-02-18 13:34:46',	NULL,	0),
(77,	'',	'Excluded URL Word List',	'',	'/dashboard/system/seo/excluded',	'2016-02-18 13:34:15',	'2016-02-18 13:34:46',	NULL,	0),
(78,	'',	'Search Index',	'',	'/dashboard/system/seo/searchindex',	'2016-02-18 13:34:15',	'2016-02-18 13:34:47',	NULL,	0),
(80,	'',	'File Manager Permissions',	'',	'/dashboard/system/files/permissions',	'2016-02-18 13:34:16',	'2016-02-18 13:34:47',	NULL,	0),
(81,	'',	'Allowed File Types',	'',	'/dashboard/system/files/filetypes',	'2016-02-18 13:34:16',	'2016-02-18 13:34:47',	NULL,	0),
(82,	'',	'Thumbnails',	'',	'/dashboard/system/files/thumbnails',	'2016-02-18 13:34:16',	'2016-02-18 13:34:47',	NULL,	0),
(83,	'',	'Image Uploading',	'',	'/dashboard/system/files/image_uploading',	'2016-02-18 13:34:17',	'2016-02-18 13:34:47',	NULL,	0),
(84,	'',	'File Storage Locations',	'',	'/dashboard/system/files/storage',	'2016-02-18 13:34:17',	'2016-02-18 13:34:47',	NULL,	0),
(86,	'',	'Cache & Speed Settings',	'',	'/dashboard/system/optimization/cache',	'2016-02-18 13:34:18',	'2016-02-18 13:34:48',	NULL,	0),
(87,	'',	'Clear Cache',	'',	'/dashboard/system/optimization/clearcache',	'2016-02-18 13:34:18',	'2016-02-18 13:34:48',	NULL,	0),
(88,	'',	'Automated Jobs',	'',	'/dashboard/system/optimization/jobs',	'2016-02-18 13:34:19',	'2016-02-18 13:34:48',	NULL,	0),
(89,	'',	'Database Query Log',	'',	'/dashboard/system/optimization/query_log',	'2016-02-18 13:34:19',	'2016-02-18 13:34:48',	NULL,	0),
(91,	'',	'Site Access',	'',	'/dashboard/system/permissions/site',	'2016-02-18 13:34:20',	'2016-02-18 13:34:48',	NULL,	0),
(92,	'',	'Task Permissions',	'',	'/dashboard/system/permissions/tasks',	'2016-02-18 13:34:20',	'2016-02-18 13:34:48',	NULL,	0),
(95,	'',	'IP Blacklist',	'',	'/dashboard/system/permissions/blacklist',	'2016-02-18 13:34:21',	'2016-02-18 13:34:48',	NULL,	0),
(96,	'',	'Captcha Setup',	'',	'/dashboard/system/permissions/captcha',	'2016-02-18 13:34:22',	'2016-02-18 13:34:48',	NULL,	0),
(97,	'',	'Spam Control',	'',	'/dashboard/system/permissions/antispam',	'2016-02-18 13:34:22',	'2016-02-18 13:34:48',	NULL,	0),
(98,	'',	'Maintenance Mode',	'',	'/dashboard/system/permissions/maintenance',	'2016-02-18 13:34:23',	'2016-02-18 13:34:49',	NULL,	0),
(100,	'',	'Login Destination',	'',	'/dashboard/system/registration/postlogin',	'2016-02-18 13:34:24',	'2016-02-18 13:34:49',	NULL,	0),
(101,	'',	'Public Profiles',	'',	'/dashboard/system/registration/profiles',	'2016-02-18 13:34:24',	'2016-02-18 13:34:49',	NULL,	0),
(102,	'',	'Public Registration',	'',	'/dashboard/system/registration/open',	'2016-02-18 13:34:24',	'2016-02-18 13:34:49',	NULL,	0),
(103,	'',	'Authentication Types',	'',	'/dashboard/system/registration/authentication',	'2016-02-18 13:34:25',	'2016-02-18 13:34:49',	NULL,	0),
(104,	'',	'Email',	'Control how your site send and processes mail.',	'/dashboard/system/mail',	'2016-02-18 13:34:25',	'2016-02-18 13:34:49',	NULL,	0),
(105,	'',	'SMTP Method',	'',	'/dashboard/system/mail/method',	'2016-02-18 13:34:26',	'2016-02-18 13:34:49',	NULL,	0),
(106,	'',	'Test Mail Settings',	'',	'/dashboard/system/mail/method/test',	'2016-02-18 13:34:26',	'2016-02-18 13:34:49',	NULL,	0),
(107,	'',	'Email Importers',	'',	'/dashboard/system/mail/importers',	'2016-02-18 13:34:26',	'2016-02-18 13:34:49',	NULL,	0),
(108,	'',	'Conversations',	'Manage your conversations settings',	'/dashboard/system/conversations',	'2016-02-18 13:34:27',	'2016-02-18 13:34:50',	NULL,	0),
(109,	'',	'Settings',	'',	'/dashboard/system/conversations/settings',	'2016-02-18 13:34:27',	'2016-02-18 13:34:50',	NULL,	0),
(110,	'',	'Community Points',	'',	'/dashboard/system/conversations/points',	'2016-02-18 13:34:28',	'2016-02-18 13:34:50',	NULL,	0),
(111,	'',	'Banned Words',	'',	'/dashboard/system/conversations/bannedwords',	'2016-02-18 13:34:28',	'2016-02-18 13:34:50',	NULL,	0),
(113,	'',	'Attributes',	'Setup attributes for pages, users, files and more.',	'/dashboard/system/attributes',	'2016-02-18 13:34:29',	'2016-02-18 13:34:50',	NULL,	0),
(114,	'',	'Sets',	'Group attributes into sets for easier organization',	'/dashboard/system/attributes/sets',	'2016-02-18 13:34:29',	'2016-02-18 13:34:50',	NULL,	0),
(115,	'',	'Types',	'Choose which attribute types are available for different items.',	'/dashboard/system/attributes/types',	'2016-02-18 13:34:30',	'2016-02-18 13:34:50',	NULL,	0),
(116,	'',	'Topics',	'',	'/dashboard/system/attributes/topics',	'2016-02-18 13:34:30',	'2016-02-18 13:34:50',	NULL,	0),
(118,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(119,	'',	'Environment Information',	'',	'/dashboard/system/environment/info',	'2016-02-18 13:34:31',	'2016-02-18 13:34:51',	NULL,	0),
(120,	'',	'Debug Settings',	'',	'/dashboard/system/environment/debug',	'2016-02-18 13:34:31',	'2016-02-18 13:34:51',	NULL,	0),
(121,	'',	'Logging Settings',	'',	'/dashboard/system/environment/logging',	'2016-02-18 13:34:32',	'2016-02-18 13:34:51',	NULL,	0),
(122,	'',	'Proxy Server',	'',	'/dashboard/system/environment/proxy',	'2016-02-18 13:34:32',	'2016-02-18 13:34:51',	NULL,	0),
(123,	'',	'Database Entities',	'',	'/dashboard/system/environment/entities',	'2016-02-18 13:34:33',	'2016-02-18 13:34:51',	NULL,	0),
(124,	'',	'Backup & Restore',	'Backup or restore your website.',	'/dashboard/system/backup',	'2016-02-18 13:34:33',	'2016-02-18 13:34:51',	NULL,	0),
(126,	'',	'Update concrete5',	'',	'/dashboard/system/backup/update',	'2016-02-18 13:34:34',	'2016-02-18 13:34:51',	NULL,	0),
(127,	'\n\n                                      ',	'Welcome to concrete5',	'Learn about how to use concrete5, how to develop for concrete5, and get general help.',	'/dashboard/welcome',	'2016-02-18 13:34:37',	'2016-02-18 13:34:52',	NULL,	0),
(128,	'',	'Customize Dashboard Home',	'',	'/dashboard/home',	'2016-02-18 13:34:37',	'2016-02-18 13:34:53',	NULL,	0),
(129,	'',	'Drafts',	'',	'/!drafts',	'2016-02-18 13:34:53',	'2016-02-18 13:34:59',	NULL,	0),
(130,	'',	'Trash',	'',	'/!trash',	'2016-02-18 13:34:54',	'2016-02-18 13:35:00',	NULL,	0),
(131,	'',	'Stacks',	'',	'/!stacks',	'2016-02-18 13:34:54',	'2016-02-18 13:35:00',	NULL,	0),
(134,	'',	'My Account',	'',	'/account',	'2016-02-18 13:34:56',	'2016-02-18 13:35:00',	NULL,	0),
(1,	' \r\n(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));\r\nSENATICs Paraguay   description Noticias \r\n     \r\n     \r\n     \r\n     \r\n \r\n Titulo del Slide  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500    Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500   ',	'Portada',	'',	NULL,	'2016-02-18 13:33:00',	'2016-03-29 08:56:22',	NULL,	0),
(146,	'',	'Header Site Title',	NULL,	'/!stacks/header-site-title',	'2016-02-18 13:36:00',	'2016-03-29 08:22:21',	NULL,	0),
(147,	'',	'Header Navigation',	NULL,	'/!stacks/header-navigation',	'2016-02-18 13:36:00',	'2016-02-18 17:37:19',	NULL,	0),
(148,	' Portal construido conjuntamente con la SENATICs\r\n  2016 Secretaría Nacional de Tecnologías de la Información y Comunicación\r\n  ',	'Footer Legal',	NULL,	'/!stacks/footer-legal',	'2016-02-18 13:36:01',	'2016-03-29 08:19:27',	NULL,	0),
(150,	'',	'Footer Contact',	NULL,	'/!stacks/footer-contact',	'2016-02-18 13:36:01',	'2016-03-01 13:31:26',	NULL,	0),
(155,	'',	'Search',	NULL,	'/!stacks/search',	'2016-02-18 17:02:02',	'2016-02-19 11:40:42',	NULL,	0),
(156,	'',	'Institución',	NULL,	'/institucion',	'2016-02-18 17:27:16',	'2016-03-01 12:48:32',	NULL,	0),
(157,	'Misión  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.  Visión  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.  Misión  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.  ',	'Misión y Visión',	NULL,	'/institucion/mision-y-vision',	'2016-02-18 17:29:58',	'2016-02-24 12:16:40',	NULL,	0),
(158,	'',	'Noticias',	NULL,	'/noticias',	'2016-02-18 17:30:32',	'2016-03-22 14:46:41',	NULL,	0),
(161,	'',	'Transparencia',	NULL,	'/transparencia',	'2016-02-18 17:31:23',	'2016-02-18 17:31:38',	NULL,	0),
(162,	' Secretaría Nacional de Tecnología de la Información y ComunicaciónDiección: Complejo Santos E2 - Gral. Santos 1170 c/ ConcordiaTelefono: (+595 21) 217-9000Asuncion - Paraguay ',	'Contacto',	NULL,	'/contacto',	'2016-02-18 17:31:41',	'2016-03-29 08:16:34',	NULL,	0),
(168,	'',	'Buscador',	NULL,	'/buscador',	'2016-02-19 11:40:03',	'2016-02-19 11:41:20',	NULL,	0),
(169,	'',	'Galería',	NULL,	'/galeria',	'2016-02-19 11:54:07',	'2016-03-01 13:51:33',	NULL,	0),
(177,	'',	'Agenda',	NULL,	'/agenda',	'2016-02-19 14:12:18',	'2016-02-19 14:15:28',	NULL,	0),
(178,	'',	'Organigrama',	NULL,	'/institucion/organigrama',	'2016-02-24 11:15:20',	'2016-02-24 12:17:08',	NULL,	0),
(179,	'Nombre de la Persona\nCargo / Ocupación\nNombre de la Institución\nBiografía / ​informaciones de contacto.\r\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. ',	'Autoridades',	NULL,	'/institucion/autoridades',	'2016-02-24 11:15:41',	'2016-02-24 12:19:45',	NULL,	0),
(180,	' Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.  ',	'Marco Legal',	NULL,	'/institucion/marco-legal',	'2016-03-01 12:48:58',	'2016-03-01 13:01:05',	NULL,	0),
(185,	'',	'Galería de Fotos',	'Descripción',	'/galeria/galeria-de-fotos',	'2016-03-01 13:52:53',	'2016-03-01 13:53:38',	NULL,	0),
(188,	'Últimas publicaciones  Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32  ',	'Titulo de la Noticia 1',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'/noticias/titulo-de-la-noticia-1',	'2016-03-01 14:10:00',	'2016-03-01 14:38:54',	NULL,	0),
(189,	'Últimas publicaciones  Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32  ',	'Titulo de la Noticia 2',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'/noticias/titulo-de-la-noticia-2',	'2016-03-01 14:33:00',	'2016-03-01 14:39:19',	NULL,	0),
(190,	'Últimas publicaciones   Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32  Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32   Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32   ',	'Titulo de la Noticia 3',	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\n',	'/noticias/titulo-de-la-noticia-3',	'2016-03-01 14:39:00',	'2016-03-01 14:42:15',	NULL,	0);

DROP TABLE IF EXISTS `PageTemplates`;
CREATE TABLE `PageTemplates` (
  `pTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplateName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pTemplateID`),
  UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTemplates` (`pTemplateID`, `pTemplateHandle`, `pTemplateIcon`, `pTemplateName`, `pTemplateIsInternal`, `pkgID`) VALUES
(1,	'core_stack',	'',	'Stack',	1,	0),
(2,	'dashboard_primary_five',	'',	'Dashboard Primary + Five',	1,	0),
(3,	'dashboard_header_four_col',	'',	'Dashboard Header + Four Column',	1,	0),
(4,	'dashboard_full',	'',	'Dashboard Full',	1,	0),
(6,	'index',	'full.png',	'Index',	0,	0),
(7,	'pagina',	'full.png',	'Pagina',	0,	0);

DROP TABLE IF EXISTS `PageThemeCustomStyles`;
CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageThemeCustomStyles` (`pThemeID`, `scvlID`, `preset`, `sccRecordID`) VALUES
(2,	2,	'',	2);

DROP TABLE IF EXISTS `PageThemes`;
CREATE TABLE `PageThemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageThemes` (`pThemeID`, `pThemeHandle`, `pThemeName`, `pThemeDescription`, `pkgID`, `pThemeHasCustomClass`) VALUES
(1,	'elemental',	'Elemental',	'Elegant, spacious theme with support for blogs, portfolios, layouts and more.',	0,	1),
(2,	'TemplateV2',	'SENATICs-UI - V2',	'Template SENATICs',	0,	0);

DROP TABLE IF EXISTS `PageTypeComposerControlTypes`;
CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypeComposerControlTypes` (`ptComposerControlTypeID`, `ptComposerControlTypeHandle`, `ptComposerControlTypeName`, `pkgID`) VALUES
(1,	'core_page_property',	'Built-In Property',	0),
(2,	'collection_attribute',	'Custom Attribute',	0),
(3,	'block',	'Block',	0);

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSetControls`;
CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypeComposerFormLayoutSetControls` (`ptComposerFormLayoutSetControlID`, `ptComposerFormLayoutSetID`, `ptComposerControlTypeID`, `ptComposerControlObject`, `ptComposerFormLayoutSetControlDisplayOrder`, `ptComposerFormLayoutSetControlCustomLabel`, `ptComposerFormLayoutSetControlCustomTemplate`, `ptComposerFormLayoutSetControlDescription`, `ptComposerFormLayoutSetControlRequired`) VALUES
(7,	3,	1,	'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:53:\"/template-concrete5/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	0,	NULL,	NULL,	NULL,	1),
(8,	3,	1,	'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:53:\"/template-concrete5/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	1,	NULL,	NULL,	NULL,	0),
(9,	3,	1,	'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:59:\"/template-concrete5/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	2,	NULL,	NULL,	NULL,	0),
(10,	3,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:1:\"5\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:1:\"5\";s:24:\"\0*\0ptComposerControlName\";s:15:\"Excluir del Nav\";s:27:\"\0*\0ptComposerControlIconSRC\";s:56:\"/template-concrete5/concrete/attributes/boolean/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	3,	'Excluir del Menú principal',	'',	'',	0),
(11,	4,	1,	'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:53:\"/template-concrete5/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	0,	NULL,	NULL,	NULL,	1),
(12,	4,	1,	'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:53:\"/template-concrete5/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	1,	NULL,	NULL,	NULL,	0),
(13,	4,	1,	'O:82:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:9:\"date_time\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:9:\"date_time\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:58:\"/template-concrete5/concrete/attributes/date_time/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	4,	NULL,	NULL,	NULL,	0),
(14,	4,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:1:\"8\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:1:\"8\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Etiquetas\";s:27:\"\0*\0ptComposerControlIconSRC\";s:55:\"/template-concrete5/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	6,	'',	'',	'Palabras claves que son utilizadas para que por medio de una búsqueda pueda ser encontrada esta pblicación',	0),
(15,	4,	1,	'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:57:\"/template-concrete5/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	2,	'Descripción corta',	'',	'',	0),
(16,	4,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"19\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"19\";s:24:\"\0*\0ptComposerControlName\";s:19:\"Imagen en miniatura\";s:27:\"\0*\0ptComposerControlIconSRC\";s:59:\"/template-concrete5/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	3,	NULL,	NULL,	NULL,	0),
(17,	4,	3,	'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":12:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:9:\"Contenido\";s:27:\"\0*\0ptComposerControlIconSRC\";s:52:\"/template-concrete5/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	7,	'La Noticia',	'',	'',	0),
(18,	4,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"20\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"20\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Categoria\";s:27:\"\0*\0ptComposerControlIconSRC\";s:55:\"/template-concrete5/concrete/attributes/topics/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	5,	'Categorías',	'',	'Define a que agrupación corresponde para luego poder ser filtrado por una o varias categoria',	0),
(19,	5,	1,	'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:53:\"/template-concrete5/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	0,	'Título del Album',	'',	'',	1),
(20,	5,	1,	'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:57:\"/template-concrete5/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	1,	NULL,	NULL,	NULL,	0),
(22,	5,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"19\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"19\";s:24:\"\0*\0ptComposerControlName\";s:19:\"Imagen en miniatura\";s:27:\"\0*\0ptComposerControlIconSRC\";s:59:\"/template-concrete5/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',	2,	'Portada del Album',	'',	'',	1);

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSets`;
CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypeComposerFormLayoutSets` (`ptComposerFormLayoutSetID`, `ptID`, `ptComposerFormLayoutSetName`, `ptComposerFormLayoutSetDescription`, `ptComposerFormLayoutSetDisplayOrder`) VALUES
(3,	7,	'Publicador de nueva Página en el sitio',	'',	0),
(4,	8,	'Publicador de nueva Noticia',	'',	0),
(5,	9,	'Publicador de Galería',	'Complete el formulario',	0);

DROP TABLE IF EXISTS `PageTypeComposerOutputBlocks`;
CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypeComposerOutputBlocks` (`ptComposerOutputBlockID`, `cID`, `arHandle`, `cbDisplayOrder`, `ptComposerFormLayoutSetControlID`, `bID`) VALUES
(73,	165,	'Contenido',	5,	17,	129),
(74,	164,	'Contenido',	5,	17,	130),
(75,	167,	'Contenido',	5,	17,	131),
(106,	166,	'Contenido',	5,	17,	167),
(107,	183,	'Contenido',	5,	17,	213),
(149,	186,	'Contenido',	5,	17,	257),
(172,	187,	'Contenido',	6,	17,	287),
(190,	188,	'Contenido',	6,	17,	305),
(193,	189,	'Contenido',	6,	17,	308),
(223,	190,	'Contenido',	6,	17,	338);

DROP TABLE IF EXISTS `PageTypeComposerOutputControls`;
CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypeComposerOutputControls` (`ptComposerOutputControlID`, `pTemplateID`, `ptID`, `ptComposerFormLayoutSetControlID`) VALUES
(4,	7,	8,	17);

DROP TABLE IF EXISTS `PageTypePageTemplateDefaultPages`;
CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypePageTemplateDefaultPages` (`pTemplateID`, `ptID`, `cID`) VALUES
(5,	6,	151),
(6,	6,	152),
(7,	6,	153),
(7,	7,	154),
(7,	8,	163),
(7,	9,	181);

DROP TABLE IF EXISTS `PageTypePageTemplates`;
CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypePageTemplates` (`ptID`, `pTemplateID`) VALUES
(7,	7),
(8,	7),
(9,	7);

DROP TABLE IF EXISTS `PageTypePermissionAssignments`;
CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypePermissionAssignments` (`ptID`, `pkID`, `paID`) VALUES
(1,	59,	9),
(2,	59,	9),
(3,	59,	9),
(4,	59,	9),
(5,	59,	9),
(6,	59,	9),
(7,	59,	9),
(8,	59,	138),
(9,	59,	137),
(1,	60,	9),
(2,	60,	9),
(3,	60,	9),
(4,	60,	9),
(5,	60,	9),
(6,	60,	9),
(7,	60,	9),
(8,	60,	9),
(9,	60,	9),
(1,	61,	9),
(2,	61,	9),
(3,	61,	9),
(4,	61,	9),
(5,	61,	9),
(6,	61,	9),
(7,	61,	9),
(8,	61,	9),
(9,	61,	9),
(1,	62,	9),
(2,	62,	9),
(3,	62,	9),
(4,	62,	9),
(5,	62,	9),
(6,	62,	9),
(7,	62,	9),
(8,	62,	9),
(9,	62,	9),
(1,	63,	26),
(2,	63,	27),
(3,	63,	28),
(4,	63,	29),
(5,	63,	30),
(6,	63,	31),
(7,	63,	102),
(8,	63,	103),
(9,	63,	126);

DROP TABLE IF EXISTS `PageTypePublishTargetTypes`;
CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypePublishTargetTypes` (`ptPublishTargetTypeID`, `ptPublishTargetTypeHandle`, `ptPublishTargetTypeName`, `pkgID`) VALUES
(1,	'parent_page',	'Always publish below a certain page',	0),
(2,	'page_type',	'Choose from pages of a certain type',	0),
(3,	'all',	'Choose from all pages when publishing',	0);

DROP TABLE IF EXISTS `PageTypes`;
CREATE TABLE `PageTypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypes` (`ptID`, `ptName`, `ptHandle`, `ptPublishTargetTypeID`, `ptDefaultPageTemplateID`, `ptAllowedPageTemplates`, `ptIsInternal`, `ptIsFrequentlyAdded`, `ptDisplayOrder`, `ptLaunchInComposer`, `pkgID`, `ptPublishTargetObject`) VALUES
(1,	'Stack',	'core_stack',	3,	0,	'A',	1,	0,	0,	0,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),
(2,	'Stack Category',	'core_stack_category',	3,	0,	'A',	1,	0,	1,	0,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),
(3,	'Dashboard Primary + Five',	'dashboard_primary_five',	3,	0,	'A',	1,	0,	2,	0,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),
(4,	'Dashboard Header + Four Column',	'dashboard_header_four_col',	3,	0,	'A',	1,	0,	3,	0,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),
(5,	'Dashboard Full',	'dashboard_full',	3,	0,	'A',	1,	0,	4,	0,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),
(7,	'Crear Página en Blanco',	'pagina',	3,	7,	'C',	0,	1,	0,	1,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}'),
(8,	'Publicar Noticia',	'noticia',	1,	7,	'C',	0,	1,	1,	1,	0,	'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"158\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}'),
(9,	'Publicador Galería',	'galery',	1,	7,	'C',	0,	1,	2,	1,	0,	'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"169\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}');

DROP TABLE IF EXISTS `PageWorkflowProgress`;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PermissionAccess`;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccess` (`paID`, `paIsInUse`) VALUES
(1,	1),
(2,	1),
(3,	1),
(4,	1),
(5,	1),
(6,	1),
(7,	1),
(8,	1),
(9,	1),
(10,	1),
(11,	1),
(12,	1),
(13,	1),
(14,	1),
(15,	1),
(16,	1),
(17,	1),
(18,	1),
(19,	1),
(20,	1),
(21,	1),
(22,	1),
(23,	1),
(24,	1),
(25,	1),
(26,	1),
(27,	1),
(28,	1),
(29,	1),
(30,	1),
(31,	1),
(32,	1),
(33,	1),
(34,	1),
(35,	1),
(36,	1),
(37,	1),
(38,	1),
(39,	1),
(40,	1),
(41,	1),
(42,	1),
(43,	1),
(44,	1),
(45,	1),
(46,	1),
(47,	1),
(48,	1),
(49,	1),
(50,	1),
(51,	1),
(52,	1),
(53,	1),
(54,	1),
(55,	1),
(56,	1),
(57,	1),
(58,	1),
(59,	1),
(60,	1),
(61,	1),
(62,	1),
(63,	1),
(64,	1),
(65,	1),
(66,	1),
(67,	1),
(68,	1),
(69,	1),
(70,	1),
(71,	1),
(72,	1),
(73,	1),
(74,	1),
(75,	1),
(76,	1),
(77,	1),
(78,	1),
(79,	1),
(80,	1),
(81,	1),
(82,	1),
(83,	1),
(84,	1),
(85,	1),
(86,	1),
(87,	1),
(88,	1),
(89,	1),
(90,	1),
(91,	1),
(92,	1),
(93,	1),
(94,	1),
(95,	1),
(96,	1),
(97,	1),
(98,	1),
(99,	1),
(100,	1),
(101,	1),
(102,	1),
(103,	1),
(104,	1),
(105,	1),
(106,	1),
(107,	0),
(108,	1),
(109,	1),
(110,	1),
(111,	1),
(112,	1),
(113,	1),
(114,	1),
(115,	1),
(116,	1),
(117,	1),
(118,	1),
(119,	1),
(120,	1),
(121,	1),
(122,	1),
(123,	1),
(124,	1),
(125,	1),
(126,	1),
(127,	0),
(128,	1),
(129,	1),
(130,	1),
(131,	1),
(132,	1),
(133,	1),
(134,	0),
(135,	1),
(136,	1),
(137,	1),
(138,	1),
(139,	1),
(140,	1),
(141,	1),
(142,	1),
(143,	1),
(144,	1),
(145,	1),
(146,	1),
(147,	1),
(148,	1);

DROP TABLE IF EXISTS `PermissionAccessEntities`;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccessEntities` (`peID`, `petID`) VALUES
(1,	1),
(3,	1),
(5,	1),
(7,	1),
(2,	5),
(6,	6),
(4,	7);

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccessEntityGroups` (`pegID`, `peID`, `gID`) VALUES
(1,	1,	3),
(2,	3,	1),
(3,	5,	2),
(4,	7,	4);

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccessEntityTypeCategories` (`petID`, `pkCategoryID`) VALUES
(1,	1),
(2,	1),
(3,	1),
(4,	1),
(5,	1),
(1,	4),
(2,	4),
(3,	4),
(4,	4),
(1,	5),
(2,	5),
(3,	5),
(4,	5),
(6,	5),
(1,	6),
(2,	6),
(3,	6),
(4,	6),
(6,	6),
(1,	7),
(2,	7),
(3,	7),
(4,	7),
(1,	8),
(2,	8),
(3,	8),
(4,	8),
(1,	9),
(2,	9),
(3,	9),
(4,	9),
(1,	10),
(2,	10),
(3,	10),
(4,	10),
(1,	11),
(2,	11),
(3,	11),
(4,	11),
(1,	12),
(2,	12),
(3,	12),
(4,	12),
(1,	13),
(2,	13),
(3,	13),
(4,	13),
(1,	14),
(2,	14),
(3,	14),
(4,	14),
(5,	14),
(1,	15),
(2,	15),
(3,	15),
(4,	15),
(1,	16),
(2,	16),
(3,	16),
(4,	16),
(1,	17),
(2,	17),
(3,	17),
(4,	17),
(1,	18),
(2,	18),
(3,	18),
(4,	18),
(1,	19),
(2,	19),
(3,	19),
(4,	19),
(7,	19),
(1,	20),
(2,	20),
(3,	20),
(4,	20),
(7,	20),
(1,	21),
(2,	21),
(4,	21);

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccessEntityTypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1,	'group',	'Group',	0),
(2,	'user',	'User',	0),
(3,	'group_set',	'Group Set',	0),
(4,	'group_combination',	'Group Combination',	0),
(5,	'page_owner',	'Page Owner',	0),
(6,	'file_uploader',	'File Uploader',	0),
(7,	'conversation_message_author',	'Message Author',	0);

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PermissionAccessList`;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccessList` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1,	1,	0,	10),
(2,	1,	0,	10),
(3,	1,	0,	10),
(4,	1,	0,	10),
(5,	1,	0,	10),
(6,	1,	0,	10),
(7,	1,	0,	10),
(8,	1,	0,	10),
(9,	1,	0,	10),
(10,	1,	0,	10),
(11,	1,	0,	10),
(12,	1,	0,	10),
(13,	1,	0,	10),
(14,	1,	0,	10),
(15,	1,	0,	10),
(16,	1,	0,	10),
(17,	1,	0,	10),
(18,	1,	0,	10),
(19,	1,	0,	10),
(20,	1,	0,	10),
(21,	1,	0,	10),
(22,	1,	0,	10),
(23,	1,	0,	10),
(24,	1,	0,	10),
(25,	1,	0,	10),
(26,	2,	0,	10),
(27,	2,	0,	10),
(28,	2,	0,	10),
(29,	2,	0,	10),
(30,	2,	0,	10),
(31,	2,	0,	10),
(32,	3,	0,	10),
(33,	1,	0,	10),
(33,	3,	0,	10),
(34,	1,	0,	10),
(35,	1,	0,	10),
(36,	1,	0,	10),
(37,	1,	0,	10),
(38,	1,	0,	10),
(39,	1,	0,	10),
(40,	1,	0,	10),
(41,	1,	0,	10),
(42,	3,	0,	10),
(43,	1,	0,	10),
(44,	1,	0,	10),
(45,	1,	0,	10),
(46,	1,	0,	10),
(47,	1,	0,	10),
(48,	1,	0,	10),
(49,	1,	0,	10),
(50,	1,	0,	10),
(51,	1,	0,	10),
(52,	1,	0,	10),
(53,	1,	0,	10),
(54,	1,	0,	10),
(55,	1,	0,	10),
(56,	1,	0,	10),
(57,	1,	0,	10),
(58,	1,	0,	10),
(59,	1,	0,	10),
(60,	3,	0,	10),
(61,	3,	0,	10),
(62,	1,	0,	10),
(63,	3,	0,	10),
(64,	1,	0,	10),
(65,	1,	0,	10),
(66,	1,	0,	10),
(67,	1,	0,	10),
(68,	1,	0,	10),
(69,	1,	0,	10),
(70,	1,	0,	10),
(71,	1,	0,	10),
(72,	1,	0,	10),
(73,	1,	0,	10),
(74,	1,	0,	10),
(75,	1,	0,	10),
(76,	1,	0,	10),
(77,	1,	0,	10),
(78,	1,	0,	10),
(79,	1,	0,	10),
(80,	1,	0,	10),
(81,	1,	0,	10),
(81,	2,	0,	10),
(82,	1,	0,	10),
(82,	2,	0,	10),
(83,	1,	0,	10),
(83,	2,	0,	10),
(84,	1,	0,	10),
(84,	2,	0,	10),
(85,	1,	0,	10),
(85,	2,	0,	10),
(86,	1,	0,	10),
(86,	2,	0,	10),
(87,	1,	0,	10),
(87,	2,	0,	10),
(88,	1,	0,	10),
(88,	2,	0,	10),
(89,	1,	0,	10),
(90,	1,	0,	10),
(91,	1,	0,	10),
(92,	1,	0,	10),
(93,	1,	0,	10),
(94,	3,	0,	10),
(95,	3,	0,	10),
(96,	1,	0,	10),
(96,	4,	0,	10),
(97,	1,	0,	10),
(97,	4,	0,	10),
(98,	1,	0,	10),
(98,	5,	0,	10),
(99,	1,	0,	10),
(100,	1,	0,	10),
(101,	1,	0,	10),
(102,	2,	0,	10),
(103,	2,	0,	10),
(104,	1,	0,	10),
(105,	1,	0,	10),
(106,	1,	0,	10),
(106,	3,	0,	10),
(107,	1,	0,	10),
(108,	1,	0,	10),
(108,	7,	0,	10),
(109,	1,	0,	10),
(109,	7,	0,	10),
(110,	1,	0,	10),
(111,	1,	0,	10),
(112,	1,	0,	10),
(113,	1,	0,	10),
(114,	1,	0,	10),
(115,	1,	0,	10),
(116,	1,	0,	10),
(117,	1,	0,	10),
(118,	1,	0,	10),
(118,	3,	0,	10),
(118,	7,	0,	10),
(119,	1,	0,	10),
(119,	7,	0,	10),
(120,	1,	0,	10),
(120,	7,	0,	10),
(121,	3,	0,	10),
(122,	1,	0,	10),
(123,	1,	0,	10),
(124,	1,	0,	10),
(125,	1,	0,	10),
(126,	2,	0,	10),
(127,	7,	0,	10),
(128,	1,	0,	10),
(128,	7,	0,	10),
(129,	1,	0,	10),
(130,	1,	0,	10),
(131,	1,	0,	10),
(132,	1,	0,	10),
(133,	1,	0,	10),
(134,	1,	0,	10),
(134,	7,	0,	10),
(135,	1,	0,	10),
(136,	1,	0,	10),
(136,	2,	0,	10),
(136,	3,	0,	10),
(136,	7,	0,	10),
(137,	1,	0,	10),
(137,	7,	0,	10),
(138,	1,	0,	10),
(138,	7,	0,	10),
(139,	1,	0,	10),
(139,	2,	0,	10),
(140,	1,	0,	10),
(141,	1,	0,	10),
(141,	2,	0,	10),
(141,	7,	0,	10),
(142,	1,	0,	10),
(142,	2,	0,	10),
(142,	7,	0,	10),
(143,	1,	0,	10),
(144,	1,	0,	10),
(144,	7,	0,	10),
(145,	1,	0,	10),
(145,	7,	0,	10),
(146,	1,	0,	10),
(146,	7,	0,	10),
(147,	1,	0,	10),
(147,	7,	0,	10),
(148,	1,	0,	10),
(148,	7,	0,	10);

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PermissionAssignments`;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAssignments` (`paID`, `pkID`) VALUES
(1,	19),
(2,	20),
(3,	74),
(4,	75),
(5,	76),
(6,	78),
(7,	79),
(8,	80),
(9,	86),
(10,	87),
(120,	89),
(12,	90),
(13,	91),
(14,	92),
(15,	93),
(16,	94),
(17,	95),
(120,	96),
(19,	97),
(20,	98),
(21,	99),
(22,	100),
(23,	101),
(24,	102),
(25,	103);

DROP TABLE IF EXISTS `PermissionDurationObjects`;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PermissionKeyCategories`;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionKeyCategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1,	'page',	NULL),
(2,	'single_page',	NULL),
(3,	'stack',	NULL),
(4,	'user',	NULL),
(5,	'file_set',	NULL),
(6,	'file',	NULL),
(7,	'area',	NULL),
(8,	'block_type',	NULL),
(9,	'block',	NULL),
(10,	'admin',	NULL),
(11,	'sitemap',	NULL),
(12,	'marketplace_newsflow',	NULL),
(13,	'basic_workflow',	NULL),
(14,	'page_type',	NULL),
(15,	'gathering',	NULL),
(16,	'group_tree_node',	NULL),
(17,	'topic_category_tree_node',	NULL),
(18,	'topic_tree_node',	NULL),
(19,	'conversation',	NULL),
(20,	'conversation_message',	NULL),
(21,	'multilingual_section',	NULL);

DROP TABLE IF EXISTS `PermissionKeys`;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionKeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1,	'view_page',	'View',	0,	0,	'Can see a page exists and read its content.',	1,	0),
(2,	'view_page_versions',	'View Versions',	0,	0,	'Can view the page versions dialog and read past versions of a page.',	1,	0),
(3,	'view_page_in_sitemap',	'View Page in Sitemap',	0,	0,	'Controls whether a user can see a page in the sitemap or intelligent search.',	1,	0),
(4,	'preview_page_as_user',	'Preview Page As User',	0,	0,	'Ability to see what this page will look like at a specific time in the future as a specific user.',	1,	0),
(5,	'edit_page_properties',	'Edit Properties',	0,	1,	'Ability to change anything in the Page Properties menu.',	1,	0),
(6,	'edit_page_contents',	'Edit Contents',	0,	0,	'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',	1,	0),
(7,	'edit_page_speed_settings',	'Edit Speed Settings',	0,	0,	'Ability to change caching settings.',	1,	0),
(8,	'edit_page_theme',	'Change Theme',	0,	1,	'Ability to change just the theme for this page.',	1,	0),
(9,	'edit_page_template',	'Change Page Template',	0,	0,	'Ability to change just the page template for this page.',	1,	0),
(10,	'edit_page_page_type',	'Edit Page Type',	0,	0,	'Change the type of an existing page.',	1,	0),
(11,	'edit_page_permissions',	'Edit Permissions',	1,	0,	'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',	1,	0),
(12,	'delete_page',	'Delete',	1,	0,	'Ability to move this page to the site\'s Trash.',	1,	0),
(13,	'delete_page_versions',	'Delete Versions',	1,	0,	'Ability to remove old versions of this page.',	1,	0),
(14,	'approve_page_versions',	'Approve Changes',	1,	0,	'Can publish an unapproved version of the page.',	1,	0),
(15,	'add_subpage',	'Add Sub-Page',	0,	1,	'Can add a page beneath the current page.',	1,	0),
(16,	'move_or_copy_page',	'Move or Copy Page',	1,	0,	'Can move or copy this page to another location.',	1,	0),
(17,	'schedule_page_contents_guest_access',	'Schedule Guest Access',	0,	0,	'Can control scheduled guest access to this page.',	1,	0),
(18,	'edit_page_multilingual_settings',	'Edit Multilingual Settings',	0,	0,	'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.',	1,	0),
(19,	'add_block',	'Add Block',	0,	1,	'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',	8,	0),
(20,	'add_stack',	'Add Stack',	0,	0,	'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',	8,	0),
(21,	'view_area',	'View Area',	0,	0,	'Can view the area and its contents.',	7,	0),
(22,	'edit_area_contents',	'Edit Area Contents',	0,	0,	'Can edit blocks within this area.',	7,	0),
(23,	'add_block_to_area',	'Add Block to Area',	0,	1,	'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',	7,	0),
(24,	'add_stack_to_area',	'Add Stack to Area',	0,	0,	'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',	7,	0),
(25,	'add_layout_to_area',	'Add Layouts to Area',	0,	0,	'Controls whether users get the ability to add layouts to a particular area.',	7,	0),
(26,	'edit_area_design',	'Edit Area Design',	0,	0,	'Controls whether users see design controls and can modify an area\'s custom CSS.',	7,	0),
(27,	'edit_area_permissions',	'Edit Area Permissions',	0,	0,	'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',	7,	0),
(28,	'delete_area_contents',	'Delete Area Contents',	0,	0,	'Controls whether users can delete blocks from this area.',	7,	0),
(29,	'schedule_area_contents_guest_access',	'Schedule Guest Access',	0,	0,	'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',	7,	0),
(30,	'view_block',	'View Block',	0,	0,	'Controls whether users can view this block in the page.',	9,	0),
(31,	'edit_block',	'Edit Block',	0,	0,	'Controls whether users can edit this block. This overrides any area or page permissions.',	9,	0),
(32,	'edit_block_custom_template',	'Change Custom Template',	0,	0,	'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',	9,	0),
(33,	'edit_block_cache_settings',	'Edit Cache Settings',	0,	0,	'Controls whether users can change the block cache settings for this block instance.',	9,	0),
(34,	'edit_block_name',	'Edit Name',	0,	0,	'Controls whether users can change the block\'s name (rarely used.)',	9,	0),
(35,	'delete_block',	'Delete Block',	0,	0,	'Controls whether users can delete this block. This overrides any area or page permissions.',	9,	0),
(36,	'edit_block_design',	'Edit Design',	0,	0,	'Controls whether users can set custom design properties or CSS on this block.',	9,	0),
(37,	'edit_block_permissions',	'Edit Permissions',	0,	0,	'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',	9,	0),
(38,	'schedule_guest_access',	'Schedule Guest Access',	0,	0,	'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',	9,	0),
(39,	'view_file_set_file',	'View Files',	0,	0,	'Can view and download files in the site.',	5,	0),
(40,	'search_file_set',	'Search Files in File Manager',	0,	0,	'Can access the file manager',	5,	0),
(41,	'edit_file_set_file_properties',	'Edit File Properties',	0,	0,	'Can edit a file\'s properties.',	5,	0),
(42,	'edit_file_set_file_contents',	'Edit File Contents',	0,	0,	'Can edit or replace files in set.',	5,	0),
(43,	'copy_file_set_files',	'Copy File',	0,	0,	'Can copy files in file set.',	5,	0),
(44,	'edit_file_set_permissions',	'Edit File Access',	0,	0,	'Can edit access to file sets.',	5,	0),
(45,	'delete_file_set',	'Delete File Set',	0,	0,	'Can delete file set.',	5,	0),
(46,	'delete_file_set_files',	'Delete File',	0,	0,	'Can delete files in set.',	5,	0),
(47,	'add_file',	'Add File',	0,	1,	'Can add files to set.',	5,	0),
(48,	'view_file',	'View Files',	0,	0,	'Can view and download files.',	6,	0),
(49,	'view_file_in_file_manager',	'View File in File Manager',	0,	0,	'Can access the File Manager.',	6,	0),
(50,	'edit_file_properties',	'Edit File Properties',	0,	0,	'Can edit a file\'s properties.',	6,	0),
(51,	'edit_file_contents',	'Edit File Contents',	0,	0,	'Can edit or replace files.',	6,	0),
(52,	'copy_file',	'Copy File',	0,	0,	'Can copy file.',	6,	0),
(53,	'edit_file_permissions',	'Edit File Access',	0,	0,	'Can edit access to file.',	6,	0),
(54,	'delete_file',	'Delete File',	0,	0,	'Can delete file.',	6,	0),
(55,	'approve_basic_workflow_action',	'Approve or Deny',	0,	0,	'Grant ability to approve workflow.',	13,	0),
(56,	'notify_on_basic_workflow_entry',	'Notify on Entry',	0,	0,	'Notify approvers that a change has entered the workflow.',	13,	0),
(57,	'notify_on_basic_workflow_approve',	'Notify on Approve',	0,	0,	'Notify approvers that a change has been approved.',	13,	0),
(58,	'notify_on_basic_workflow_deny',	'Notify on Deny',	0,	0,	'Notify approvers that a change has been denied.',	13,	0),
(59,	'add_page_type',	'Add Pages of This Type',	0,	0,	'',	14,	0),
(60,	'edit_page_type',	'Edit Page Type',	0,	0,	'',	14,	0),
(61,	'delete_page_type',	'Delete Page Type',	0,	0,	'',	14,	0),
(62,	'edit_page_type_permissions',	'Edit Page Type Permissions',	0,	0,	'',	14,	0),
(63,	'edit_page_type_drafts',	'Edit Page Type Drafts',	0,	0,	'',	14,	0),
(64,	'view_topic_tree_node',	'View Topic Tree Node',	0,	0,	'',	18,	0),
(65,	'view_topic_category_tree_node',	'View Topic Category Tree Node',	0,	0,	'',	17,	0),
(66,	'add_conversation_message',	'Add Message to Conversation',	0,	1,	'',	19,	0),
(67,	'add_conversation_message_attachments',	'Add Message Attachments',	0,	0,	'',	19,	0),
(68,	'edit_conversation_permissions',	'Edit Conversation Permissions',	0,	0,	'',	19,	0),
(69,	'delete_conversation_message',	'Delete Message',	0,	0,	'',	19,	0),
(70,	'edit_conversation_message',	'Edit Message',	0,	0,	'',	19,	0),
(71,	'rate_conversation_message',	'Rate Message',	0,	0,	'',	19,	0),
(72,	'flag_conversation_message',	'Flag Message',	0,	0,	'',	19,	0),
(73,	'approve_conversation_message',	'Approve Message',	0,	0,	'',	19,	0),
(74,	'edit_user_properties',	'Edit User Details',	0,	1,	NULL,	4,	0),
(75,	'view_user_attributes',	'View User Attributes',	0,	1,	NULL,	4,	0),
(76,	'activate_user',	'Activate/Deactivate User',	0,	0,	NULL,	4,	0),
(77,	'sudo',	'Sign in as User',	0,	0,	NULL,	4,	0),
(78,	'upgrade',	'Upgrade concrete5',	0,	0,	NULL,	10,	0),
(79,	'access_group_search',	'Access Group Search',	0,	0,	NULL,	4,	0),
(80,	'delete_user',	'Delete User',	0,	0,	NULL,	4,	0),
(81,	'search_users_in_group',	'Search User Group',	0,	0,	NULL,	16,	0),
(82,	'edit_group',	'Edit Group',	0,	0,	NULL,	16,	0),
(83,	'assign_group',	'Assign Group',	0,	0,	NULL,	16,	0),
(84,	'add_sub_group',	'Add Child Group',	0,	0,	NULL,	16,	0),
(85,	'edit_group_permissions',	'Edit Group Permissions',	0,	0,	NULL,	16,	0),
(86,	'access_page_type_permissions',	'Access Page Type Permissions',	0,	0,	NULL,	10,	0),
(87,	'backup',	'Perform Backups',	0,	0,	NULL,	10,	0),
(88,	'access_task_permissions',	'Access Task Permissions',	0,	0,	NULL,	10,	0),
(89,	'access_sitemap',	'Access Sitemap',	0,	0,	NULL,	11,	0),
(90,	'access_page_defaults',	'Access Page Type Defaults',	0,	0,	NULL,	10,	0),
(91,	'customize_themes',	'Customize Themes',	0,	0,	NULL,	10,	0),
(92,	'manage_layout_presets',	'Manage Layout Presets',	0,	0,	NULL,	10,	0),
(93,	'empty_trash',	'Empty Trash',	0,	0,	NULL,	10,	0),
(94,	'add_topic_tree',	'Add Topic Tree',	0,	0,	NULL,	10,	0),
(95,	'remove_topic_tree',	'Remove Topic Tree',	0,	0,	NULL,	10,	0),
(96,	'view_in_maintenance_mode',	'View Site in Maintenance Mode',	0,	0,	'Ability to see and use the website when concrete5 is in maintenance mode.',	10,	0),
(97,	'uninstall_packages',	'Uninstall Packages',	0,	0,	NULL,	12,	0),
(98,	'install_packages',	'Install Packages',	0,	0,	NULL,	12,	0),
(99,	'view_newsflow',	'View Newsflow',	0,	0,	NULL,	12,	0),
(100,	'access_user_search_export',	'Export Site Users',	0,	0,	'Controls whether a user can export site users or not',	4,	0),
(101,	'access_user_search',	'Access User Search',	0,	0,	'Controls whether a user can view the search user interface.',	4,	0),
(102,	'edit_gatherings',	'Edit Gatherings',	0,	0,	'Can edit the footprint and items in all gatherings.',	10,	0),
(103,	'edit_gathering_items',	'Edit Gathering Items',	0,	0,	'',	15,	0);

DROP TABLE IF EXISTS `PileContents`;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PileContents` (`pcID`, `pID`, `itemID`, `itemType`, `quantity`, `timestamp`, `displayOrder`) VALUES
(1,	1,	175,	'BLOCK',	1,	'2016-02-19 14:12:05',	1),
(2,	1,	182,	'BLOCK',	1,	'2016-02-24 11:40:51',	2),
(3,	1,	188,	'BLOCK',	1,	'2016-02-24 12:15:48',	3),
(4,	1,	182,	'BLOCK',	1,	'2016-03-01 12:49:57',	4),
(5,	1,	396,	'BLOCK',	1,	'2016-03-28 14:25:59',	5);

DROP TABLE IF EXISTS `Piles`;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
(1,	1,	1,	'2016-02-18 17:02:07',	NULL,	'READY');

DROP TABLE IF EXISTS `QueueMessages`;
CREATE TABLE `QueueMessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `QueueMessages_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `QueuePageDuplicationRelations`;
CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Queues`;
CREATE TABLE `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Sessions`;
CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `SignupRequests`;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ipFrom` (`ipFrom`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `SignupRequests` (`id`, `ipFrom`, `date_access`) VALUES
(1,	'0afffe4a',	'2016-02-18 19:57:41'),
(2,	'0afffe5d',	'2016-02-19 14:35:51'),
(3,	'00000000000000000000000000000001',	'2016-02-19 15:01:23'),
(4,	'00000000000000000000000000000001',	'2016-02-19 15:01:26'),
(5,	'00000000000000000000000000000001',	'2016-02-19 15:01:33'),
(6,	'00000000000000000000000000000001',	'2016-02-19 15:01:48'),
(7,	'00000000000000000000000000000001',	'2016-02-19 15:01:57'),
(8,	'00000000000000000000000000000001',	'2016-02-19 15:30:05'),
(9,	'00000000000000000000000000000001',	'2016-02-19 15:30:16'),
(10,	'00000000000000000000000000000001',	'2016-02-24 15:40:47'),
(11,	'00000000000000000000000000000001',	'2016-02-25 14:27:20'),
(12,	'00000000000000000000000000000001',	'2016-02-25 14:27:32'),
(13,	'00000000000000000000000000000001',	'2016-02-25 14:27:37'),
(14,	'00000000000000000000000000000001',	'2016-02-25 14:27:50'),
(15,	'00000000000000000000000000000001',	'2016-02-25 14:27:59'),
(16,	'00000000000000000000000000000001',	'2016-03-01 15:44:35'),
(17,	'00000000000000000000000000000001',	'2016-03-01 15:44:39'),
(18,	'00000000000000000000000000000001',	'2016-03-01 15:44:55'),
(19,	'00000000000000000000000000000001',	'2016-03-01 15:45:08'),
(20,	'00000000000000000000000000000001',	'2016-03-18 14:36:47');

DROP TABLE IF EXISTS `SocialLinks`;
CREATE TABLE `SocialLinks` (
  `slID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`slID`),
  UNIQUE KEY `ssHandle` (`ssHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Stacks`;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Stacks` (`stID`, `stName`, `stType`, `cID`, `stMultilingualSection`) VALUES
(1,	'Header Site Title',	20,	146,	0),
(2,	'Header Navigation',	20,	147,	0),
(3,	'Footer Legal',	20,	148,	0),
(4,	'Footer Navigation',	20,	149,	0),
(5,	'Footer Contact',	20,	150,	0),
(6,	'Search',	20,	155,	0);

DROP TABLE IF EXISTS `StyleCustomizerCustomCssRecords`;
CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `sccRecordID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `StyleCustomizerCustomCssRecords` (`sccRecordID`, `value`) VALUES
(1,	'.hola {\n    height:47px !important;\n}'),
(2,	'.hola {\n    margin-bottom:-10px;\n}');

DROP TABLE IF EXISTS `StyleCustomizerInlineStylePresets`;
CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `StyleCustomizerInlineStyleSets`;
CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) DEFAULT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundPosition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `StyleCustomizerInlineStyleSets` (`issID`, `backgroundColor`, `backgroundImageFileID`, `backgroundRepeat`, `backgroundSize`, `backgroundPosition`, `borderWidth`, `borderColor`, `borderStyle`, `borderRadius`, `baseFontSize`, `alignment`, `textColor`, `linkColor`, `paddingTop`, `paddingBottom`, `paddingLeft`, `paddingRight`, `marginTop`, `marginBottom`, `marginLeft`, `marginRight`, `rotate`, `boxShadowHorizontal`, `boxShadowVertical`, `boxShadowBlur`, `boxShadowSpread`, `boxShadowColor`, `customClass`, `hideOnExtraSmallDevice`, `hideOnSmallDevice`, `hideOnMediumDevice`, `hideOnLargeDevice`) VALUES
(1,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	'20px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(2,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'25px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(3,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'50px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(4,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'animated flipInUp',	0,	0,	0,	0),
(5,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'animated fadeInUp',	0,	0,	0,	0),
(6,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'animated fadeInUp',	0,	0,	0,	0),
(7,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'animated fadeInUp',	0,	0,	0,	0),
(8,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'animated fadeInUp',	0,	0,	0,	0),
(9,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'animated fadeInUp',	0,	0,	0,	0),
(10,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'animated fadeInUp',	0,	0,	0,	0);

DROP TABLE IF EXISTS `StyleCustomizerValueLists`;
CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `StyleCustomizerValueLists` (`scvlID`) VALUES
(1),
(2);

DROP TABLE IF EXISTS `StyleCustomizerValues`;
CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `StyleCustomizerValues` (`scvID`, `scvlID`, `value`) VALUES
(1,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:99;s:4:\"\0*\0g\";i:120;s:4:\"\0*\0b\";i:132;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"headerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(2,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:99;s:4:\"\0*\0g\";i:120;s:4:\"\0*\0b\";i:132;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"footerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(3,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"footerText\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(4,	1,	'O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\TypeValue\":12:{s:13:\"\0*\0fontFamily\";s:17:\"Arial, sans-serif\";s:11:\"\0*\0fontSize\";O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\SizeValue\":5:{s:7:\"\0*\0size\";s:2:\"14\";s:7:\"\0*\0unit\";s:2:\"px\";s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:8:\"\0*\0color\";O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:51;s:4:\"\0*\0g\";i:51;s:4:\"\0*\0b\";i:51;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:13:\"\0*\0lineHeight\";i:-1;s:16:\"\0*\0letterSpacing\";i:-1;s:12:\"\0*\0fontStyle\";s:4:\"none\";s:13:\"\0*\0fontWeight\";s:3:\"300\";s:17:\"\0*\0textDecoration\";i:-1;s:16:\"\0*\0textTransform\";i:-1;s:11:\"\0*\0variable\";s:4:\"body\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(5,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ImageValue\":5:{s:11:\"\0*\0imageUrl\";s:69:\"/template-concrete5/application/themes/TemplateV2/img/background1.jpg\";s:6:\"\0*\0fID\";N;s:11:\"\0*\0variable\";s:7:\"bg-site\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(6,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:226;s:4:\"\0*\0g\";i:45;s:4:\"\0*\0b\";i:45;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"MenuABg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(7,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"MenuATexto\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(8,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:12:\"estiloslider\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(9,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"bg-title\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(10,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:3;s:4:\"\0*\0g\";i:155;s:4:\"\0*\0b\";i:229;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"linksTitle\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(11,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:3;s:4:\"\0*\0g\";i:155;s:4:\"\0*\0b\";i:229;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:7:\"enlaces\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(12,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh1\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(13,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh2\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(14,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh3\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(15,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh4\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(16,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh5\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(17,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh6\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(18,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"estiloparrafos\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(19,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:99;s:4:\"\0*\0g\";i:120;s:4:\"\0*\0b\";i:132;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"headerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(20,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:99;s:4:\"\0*\0g\";i:120;s:4:\"\0*\0b\";i:132;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"footerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(21,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"footerText\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(22,	2,	'O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\TypeValue\":12:{s:13:\"\0*\0fontFamily\";s:17:\"Arial, sans-serif\";s:11:\"\0*\0fontSize\";O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\SizeValue\":5:{s:7:\"\0*\0size\";s:2:\"14\";s:7:\"\0*\0unit\";s:2:\"px\";s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:8:\"\0*\0color\";O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:51;s:4:\"\0*\0g\";i:51;s:4:\"\0*\0b\";i:51;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:13:\"\0*\0lineHeight\";i:-1;s:16:\"\0*\0letterSpacing\";i:-1;s:12:\"\0*\0fontStyle\";s:4:\"none\";s:13:\"\0*\0fontWeight\";s:3:\"300\";s:17:\"\0*\0textDecoration\";i:-1;s:16:\"\0*\0textTransform\";i:-1;s:11:\"\0*\0variable\";s:4:\"body\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(23,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ImageValue\":5:{s:11:\"\0*\0imageUrl\";s:69:\"/template-concrete5/application/themes/TemplateV2/img/background1.jpg\";s:6:\"\0*\0fID\";N;s:11:\"\0*\0variable\";s:7:\"bg-site\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(24,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:226;s:4:\"\0*\0g\";i:45;s:4:\"\0*\0b\";i:45;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"MenuABg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(25,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"MenuATexto\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(26,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:12:\"estiloslider\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(27,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"bg-title\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(28,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:3;s:4:\"\0*\0g\";i:155;s:4:\"\0*\0b\";i:229;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"linksTitle\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(29,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:3;s:4:\"\0*\0g\";i:155;s:4:\"\0*\0b\";i:229;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:7:\"enlaces\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(30,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh1\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(31,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh2\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(32,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh3\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(33,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh4\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(34,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh5\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(35,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh6\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(36,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"estiloparrafos\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}');

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `SystemCaptchaLibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage',	'SecurImage (Default)',	1,	0);

DROP TABLE IF EXISTS `SystemContentEditorSnippets`;
CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `SystemContentEditorSnippets` (`scsHandle`, `scsName`, `scsIsActive`, `pkgID`) VALUES
('page_name',	'Page Name',	1,	0),
('user_name',	'User Name',	1,	0);

DROP TABLE IF EXISTS `SystemDatabaseMigrations`;
CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `SystemDatabaseMigrations` (`version`) VALUES
('20151221000000');

DROP TABLE IF EXISTS `SystemDatabaseQueryLog`;
CREATE TABLE `SystemDatabaseQueryLog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `TopicTrees`;
CREATE TABLE `TopicTrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TopicTrees` (`treeID`, `topicTreeName`) VALUES
(2,	'Noticias');

DROP TABLE IF EXISTS `TreeCategoryNodes`;
CREATE TABLE `TreeCategoryNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeCategoryNodes` (`treeNodeID`, `treeNodeCategoryName`) VALUES
(6,	'');

DROP TABLE IF EXISTS `TreeGroupNodes`;
CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeGroupNodes` (`treeNodeID`, `gID`) VALUES
(2,	1),
(3,	2),
(4,	3),
(5,	4);

DROP TABLE IF EXISTS `TreeNodePermissionAssignments`;
CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeNodePermissionAssignments` (`treeNodeID`, `pkID`, `paID`) VALUES
(6,	65,	121),
(1,	81,	89),
(1,	82,	90),
(1,	83,	91),
(1,	84,	92),
(1,	85,	93);

DROP TABLE IF EXISTS `TreeNodes`;
CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeNodes` (`treeNodeID`, `treeNodeTypeID`, `treeID`, `treeNodeParentID`, `treeNodeDisplayOrder`, `treeNodeOverridePermissions`, `inheritPermissionsFromTreeNodeID`) VALUES
(1,	1,	1,	0,	0,	1,	1),
(2,	1,	1,	1,	0,	0,	1),
(3,	1,	1,	1,	1,	0,	1),
(4,	1,	1,	1,	2,	0,	1),
(5,	1,	1,	1,	3,	0,	1),
(6,	2,	2,	0,	0,	1,	6),
(7,	3,	2,	6,	0,	0,	6),
(8,	3,	2,	6,	1,	0,	6),
(9,	3,	2,	6,	2,	0,	6);

DROP TABLE IF EXISTS `TreeNodeTypes`;
CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeNodeTypes` (`treeNodeTypeID`, `treeNodeTypeHandle`, `pkgID`) VALUES
(1,	'group',	0),
(2,	'topic_category',	0),
(3,	'topic',	0);

DROP TABLE IF EXISTS `Trees`;
CREATE TABLE `Trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Trees` (`treeID`, `treeTypeID`, `treeDateAdded`, `rootTreeNodeID`) VALUES
(1,	1,	'2016-02-18 13:33:05',	1),
(2,	2,	'2016-02-19 11:14:03',	6);

DROP TABLE IF EXISTS `TreeTopicNodes`;
CREATE TABLE `TreeTopicNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeTopicNodes` (`treeNodeID`, `treeNodeTopicName`) VALUES
(7,	'Informática'),
(8,	'Salud'),
(9,	'Cultura');

DROP TABLE IF EXISTS `TreeTypes`;
CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeTypes` (`treeTypeID`, `treeTypeHandle`, `pkgID`) VALUES
(1,	'group',	0),
(2,	'topic',	0);

DROP TABLE IF EXISTS `UserAttributeKeys`;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `UserAttributeKeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
(12,	0,	0,	1,	0,	1,	0,	1,	1),
(13,	0,	0,	1,	0,	1,	0,	2,	1),
(16,	0,	0,	0,	0,	0,	0,	3,	1);

DROP TABLE IF EXISTS `UserAttributeValues`;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `UserAttributeValues` (`uID`, `akID`, `avID`) VALUES
(2,	12,	201),
(2,	13,	202),
(3,	12,	203),
(3,	13,	204);

DROP TABLE IF EXISTS `UserBannedIPs`;
CREATE TABLE `UserBannedIPs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `UserBannedIPs` (`id`, `ipFrom`, `ipTo`, `banCode`, `expires`, `isManual`) VALUES
(2,	'00000000000000000000000000000001',	'0',	1,	'2016-02-25 11:37:59',	0);

DROP TABLE IF EXISTS `UserGroups`;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `UserGroups` (`uID`, `gID`, `ugEntered`) VALUES
(2,	3,	'2016-02-19 10:17:50'),
(3,	4,	'2016-02-19 10:19:30');

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPointActions`;
CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `UserPointActions` (`upaID`, `upaHandle`, `upaName`, `upaDefaultPoints`, `pkgID`, `upaHasCustomClass`, `upaIsActive`, `gBadgeID`) VALUES
(1,	'won_badge',	'Won a Badge',	5,	0,	1,	1,	0);

DROP TABLE IF EXISTS `UserPointHistory`;
CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPrivateMessages`;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uLastPasswordChange` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` tinyblob,
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uLastPasswordChange`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uLastAuthTypeID`, `uTimezone`, `uDefaultLanguage`) VALUES
(1,	'senatics',	'soporteportales@senatics.gov.py',	'$2a$12$7h27RTopFUkjV0f4IadP2eTdnuNXB17cnJV75ImrxUUp7NFGm9trq',	'1',	-1,	1,	'2016-02-18 13:33:06',	'2016-02-19 12:33:17',	0,	1459256119,	1459166903,	'00000000000000000000000000000001',	1458564874,	18,	1,	'America/Asuncion',	'es_PY'),
(2,	'admin',	'administrador@dominio.gov.py',	'$2a$12$y/GnNM4Gn35yi/zKTzkOHuciKfD6sBeBlGwG0AFDwQHyzJb5hXWuq',	'1',	-1,	1,	'2016-02-19 10:17:50',	'2016-02-19 12:31:31',	0,	0,	0,	NULL,	0,	0,	0,	'America/Asuncion',	'es_PY'),
(3,	'prensa',	'prensa@dominio.gov.py',	'$2a$12$qN9xquxqVYn5lFNDUYjpbuIgF1m70y51r0hUYHCQCpFlXuFI/0ofy',	'1',	-1,	1,	'2016-02-19 10:19:29',	'2016-02-19 12:32:38',	0,	1456843284,	1456839382,	'00000000000000000000000000000001',	1455881941,	3,	1,	'America/Asuncion',	'es_PY');

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `UserSearchIndexAttributes` (`uID`, `ak_profile_private_messages_enabled`, `ak_profile_private_messages_notification_enabled`) VALUES
(2,	1,	1),
(3,	1,	1);

DROP TABLE IF EXISTS `UserValidationHashes`;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `WorkflowProgress`;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `WorkflowProgressCategories`;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `WorkflowProgressCategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1,	'page',	NULL),
(2,	'file',	NULL),
(3,	'user',	NULL);

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1,	1,	'2016-02-18 17:00:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}'),
(2,	2,	'2016-02-18 17:10:27',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"2\";}'),
(3,	3,	'2016-02-18 17:13:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"3\";}'),
(4,	4,	'2016-02-18 17:13:57',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"4\";}'),
(5,	5,	'2016-02-18 17:17:08',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"5\";}'),
(6,	6,	'2016-02-18 17:17:47',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"6\";}'),
(7,	7,	'2016-02-18 17:19:13',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:1:\"7\";}'),
(8,	8,	'2016-02-18 17:20:05',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:1:\"8\";}'),
(9,	9,	'2016-02-18 17:20:33',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:1:\"9\";}'),
(10,	10,	'2016-02-18 17:22:09',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"10\";}'),
(11,	11,	'2016-02-18 17:22:43',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"11\";}'),
(12,	12,	'2016-02-18 17:25:36',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"12\";}'),
(13,	13,	'2016-02-18 17:26:50',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"13\";}'),
(14,	14,	'2016-02-18 17:27:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"156\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"14\";}'),
(15,	15,	'2016-02-18 17:30:20',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"157\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"15\";}'),
(16,	16,	'2016-02-18 17:30:47',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"16\";}'),
(17,	17,	'2016-02-18 17:31:02',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"17\";}'),
(18,	18,	'2016-02-18 17:31:19',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"160\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"18\";}'),
(19,	19,	'2016-02-18 17:31:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"161\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"19\";}'),
(20,	20,	'2016-02-18 17:31:51',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"20\";}'),
(21,	21,	'2016-02-18 17:31:52',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"21\";}'),
(22,	22,	'2016-02-18 17:35:04',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"22\";}'),
(23,	23,	'2016-02-18 17:36:20',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"23\";}'),
(24,	24,	'2016-02-18 17:36:45',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:2:\"24\";}'),
(25,	25,	'2016-02-18 17:37:19',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"25\";}'),
(26,	26,	'2016-02-18 17:37:45',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"26\";}'),
(27,	27,	'2016-02-18 17:38:03',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:2:\"27\";}'),
(28,	28,	'2016-02-19 10:16:26',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"158\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"28\";}'),
(29,	29,	'2016-02-19 10:16:33',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"158\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:2:\"29\";}'),
(30,	30,	'2016-02-19 10:16:40',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"158\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:2:\"44\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:3:\"104\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"30\";}'),
(31,	31,	'2016-02-19 10:47:00',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"109\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"31\";}'),
(32,	32,	'2016-02-19 10:47:24',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"12\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"32\";}'),
(33,	33,	'2016-02-19 10:47:33',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"12\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"110\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"33\";}'),
(34,	34,	'2016-02-19 10:47:38',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"23\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"34\";}'),
(35,	35,	'2016-02-19 10:47:47',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"23\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"111\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"35\";}'),
(36,	36,	'2016-02-19 10:48:06',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"36\";}'),
(37,	37,	'2016-02-19 10:48:25',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"112\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"37\";}'),
(38,	38,	'2016-02-19 10:49:46',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"42\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"38\";}'),
(39,	39,	'2016-02-19 10:49:54',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"42\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"113\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"39\";}'),
(40,	40,	'2016-02-19 10:50:06',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"44\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"40\";}'),
(41,	41,	'2016-02-19 10:50:11',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"44\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"114\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"41\";}'),
(42,	42,	'2016-02-19 10:50:16',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"47\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"42\";}'),
(43,	43,	'2016-02-19 10:50:23',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"47\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"115\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"43\";}'),
(44,	44,	'2016-02-19 10:50:36',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"52\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"44\";}'),
(45,	45,	'2016-02-19 10:50:42',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"52\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"116\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"45\";}'),
(46,	46,	'2016-02-19 10:50:47',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"59\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"46\";}'),
(47,	47,	'2016-02-19 10:50:54',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"59\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"117\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"47\";}'),
(48,	48,	'2016-02-19 10:51:42',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"146\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"48\";}'),
(49,	49,	'2016-02-19 11:02:15',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"49\";}'),
(50,	50,	'2016-02-19 11:02:16',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"50\";}'),
(51,	51,	'2016-02-19 11:03:51',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"21\";s:4:\"wrID\";s:2:\"51\";}'),
(52,	52,	'2016-02-19 11:05:56',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"164\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"52\";}'),
(53,	53,	'2016-02-19 11:07:08',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"165\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"53\";}'),
(54,	54,	'2016-02-19 11:07:47',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"165\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"54\";}'),
(55,	55,	'2016-02-19 11:09:25',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"55\";}'),
(56,	56,	'2016-02-19 11:11:25',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"56\";}'),
(57,	57,	'2016-02-19 11:12:18',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"167\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"57\";}'),
(58,	58,	'2016-02-19 11:13:02',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"58\";}'),
(59,	59,	'2016-02-19 11:13:49',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"59\";}'),
(60,	60,	'2016-02-19 11:15:15',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"60\";}'),
(61,	61,	'2016-02-19 11:15:40',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"61\";}'),
(62,	62,	'2016-02-19 11:19:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"62\";}'),
(63,	63,	'2016-02-19 11:19:49',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"63\";}'),
(64,	64,	'2016-02-19 11:20:02',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"165\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"64\";}'),
(65,	65,	'2016-02-19 11:20:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"164\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"65\";}'),
(66,	66,	'2016-02-19 11:20:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"167\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"66\";}'),
(67,	67,	'2016-02-19 11:20:47',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"167\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"67\";}'),
(68,	68,	'2016-02-19 11:21:53',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"68\";}'),
(69,	69,	'2016-02-19 11:40:13',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"168\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"69\";}'),
(70,	70,	'2016-02-19 11:40:41',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"168\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"70\";}'),
(71,	71,	'2016-02-19 11:41:06',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"168\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"71\";}'),
(72,	72,	'2016-02-19 11:41:18',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"168\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"72\";}'),
(73,	73,	'2016-02-19 11:53:34',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"73\";}'),
(74,	74,	'2016-02-19 11:53:58',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"159\";s:4:\"wrID\";s:2:\"74\";}'),
(75,	75,	'2016-02-19 11:54:08',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"75\";}'),
(76,	76,	'2016-02-19 11:56:43',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"76\";}'),
(77,	77,	'2016-02-19 11:57:57',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"77\";}'),
(78,	78,	'2016-02-19 11:58:13',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"78\";}'),
(79,	79,	'2016-02-19 11:58:29',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"79\";}'),
(80,	80,	'2016-02-19 11:59:19',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"80\";}'),
(81,	81,	'2016-02-19 11:59:46',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"81\";}'),
(82,	82,	'2016-02-19 12:08:35',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"82\";}'),
(83,	83,	'2016-02-19 13:14:08',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"160\";s:4:\"wrID\";s:2:\"83\";}'),
(84,	84,	'2016-02-19 14:06:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"84\";}'),
(85,	85,	'2016-02-19 14:12:11',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"85\";}'),
(86,	86,	'2016-02-19 14:12:32',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"177\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"86\";}'),
(87,	87,	'2016-02-19 14:12:52',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"177\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"87\";}'),
(88,	88,	'2016-02-19 14:14:32',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"177\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"88\";}'),
(89,	89,	'2016-02-19 17:57:46',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"89\";}'),
(90,	90,	'2016-02-19 17:58:08',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"90\";}'),
(91,	91,	'2016-02-19 17:58:23',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"91\";}'),
(92,	1,	'2016-02-24 11:15:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"178\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"1\";}'),
(93,	2,	'2016-02-24 11:15:54',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"179\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"2\";}'),
(94,	3,	'2016-02-24 11:40:54',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"157\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"3\";}'),
(95,	4,	'2016-02-24 11:41:31',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"178\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"4\";}'),
(96,	5,	'2016-02-24 11:41:59',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"179\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"5\";}'),
(97,	6,	'2016-02-24 12:16:38',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"157\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"6\";}'),
(98,	7,	'2016-02-24 12:17:06',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"178\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"7\";}'),
(99,	8,	'2016-02-24 12:17:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"178\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"8\";}'),
(100,	9,	'2016-02-24 12:19:43',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"179\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"9\";}'),
(101,	10,	'2016-02-24 12:20:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"10\";}'),
(102,	11,	'2016-02-24 12:20:27',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"11\";}'),
(103,	1,	'2016-03-01 12:48:31',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"156\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}'),
(104,	2,	'2016-03-01 12:49:17',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"180\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"2\";}'),
(105,	3,	'2016-03-01 12:51:05',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"180\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"3\";}'),
(106,	4,	'2016-03-01 12:55:54',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"180\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"4\";}'),
(107,	5,	'2016-03-01 12:58:54',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"180\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"5\";}'),
(108,	6,	'2016-03-01 13:00:09',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"180\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"6\";}'),
(109,	7,	'2016-03-01 13:01:03',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"180\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"7\";}'),
(110,	8,	'2016-03-01 13:19:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:1:\"8\";}'),
(111,	9,	'2016-03-01 13:20:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:1:\"9\";}'),
(112,	10,	'2016-03-01 13:20:34',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"10\";}'),
(113,	11,	'2016-03-01 13:31:25',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"22\";s:4:\"wrID\";s:2:\"11\";}'),
(114,	12,	'2016-03-01 13:31:35',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"12\";}'),
(115,	13,	'2016-03-01 13:38:33',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"169\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:2:\"13\";}'),
(116,	14,	'2016-03-01 13:38:37',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"169\";s:11:\"inheritance\";s:1:\"1\";s:4:\"wrID\";s:2:\"14\";}'),
(117,	15,	'2016-03-01 13:38:39',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"169\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:2:\"15\";}'),
(118,	16,	'2016-03-01 13:38:48',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"169\";s:11:\"inheritance\";s:8:\"TEMPLATE\";s:4:\"wrID\";s:2:\"16\";}'),
(119,	17,	'2016-03-01 13:38:51',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"169\";s:11:\"inheritance\";s:1:\"1\";s:4:\"wrID\";s:2:\"17\";}'),
(120,	18,	'2016-03-01 13:38:53',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"169\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:2:\"18\";}'),
(121,	19,	'2016-03-01 13:39:00',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"169\";s:11:\"inheritance\";s:6:\"PARENT\";s:4:\"wrID\";s:2:\"19\";}'),
(122,	20,	'2016-03-01 13:40:04',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"129\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"63\";i:2;s:2:\"81\";i:3;s:2:\"65\";i:4;s:2:\"66\";i:5;s:2:\"82\";i:6;s:2:\"83\";i:7;s:2:\"69\";i:8;s:2:\"71\";i:9;s:2:\"84\";i:10;s:2:\"85\";i:11;s:2:\"74\";i:12;s:2:\"86\";i:13;s:2:\"87\";i:14;s:2:\"88\";i:15;s:3:\"139\";i:16;s:2:\"79\";i:17;s:2:\"80\";i:18;s:2:\"70\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"20\";}'),
(123,	21,	'2016-03-01 13:40:32',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"169\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"21\";}'),
(124,	22,	'2016-03-01 13:40:44',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"169\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:2:\"44\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"22\";}'),
(125,	23,	'2016-03-01 13:47:48',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"129\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"63\";i:2;s:3:\"141\";i:3;s:3:\"140\";i:4;s:2:\"66\";i:5;s:3:\"141\";i:6;s:3:\"141\";i:7;s:2:\"69\";i:8;s:2:\"71\";i:9;s:3:\"142\";i:10;s:3:\"142\";i:11;s:2:\"74\";i:12;s:3:\"142\";i:13;s:3:\"142\";i:14;s:3:\"142\";i:15;s:3:\"143\";i:16;s:2:\"79\";i:17;s:2:\"80\";i:18;s:2:\"70\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"23\";}'),
(126,	24,	'2016-03-01 13:48:53',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"169\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:2:\"44\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:3:\"144\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"24\";}'),
(127,	25,	'2016-03-01 13:48:57',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"184\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"25\";}'),
(128,	26,	'2016-03-01 13:51:32',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"26\";}'),
(129,	27,	'2016-03-01 13:52:45',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"184\";s:4:\"wrID\";s:2:\"27\";}'),
(130,	28,	'2016-03-01 13:53:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"185\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"28\";}'),
(131,	29,	'2016-03-01 13:54:43',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:3:\"145\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"29\";}'),
(132,	30,	'2016-03-01 13:55:12',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"169\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:3:\"146\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:3:\"144\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"30\";}'),
(133,	31,	'2016-03-01 13:55:27',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"158\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:3:\"147\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:3:\"104\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"31\";}'),
(134,	32,	'2016-03-01 14:01:20',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"158\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:3:\"147\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:3:\"148\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"32\";}'),
(135,	33,	'2016-03-01 14:01:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"186\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"33\";}'),
(136,	34,	'2016-03-01 14:05:41',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"187\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"34\";}'),
(137,	35,	'2016-03-01 14:07:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"187\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"35\";}'),
(138,	36,	'2016-03-01 14:08:25',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"187\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"36\";}'),
(139,	37,	'2016-03-01 14:11:10',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"37\";}'),
(140,	38,	'2016-03-01 14:12:02',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"38\";}'),
(141,	39,	'2016-03-01 14:13:09',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"39\";}'),
(142,	40,	'2016-03-01 14:13:58',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"40\";}'),
(143,	41,	'2016-03-01 14:27:06',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"41\";}'),
(144,	42,	'2016-03-01 14:31:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"187\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"42\";}'),
(145,	43,	'2016-03-01 14:31:55',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"164\";s:4:\"wrID\";s:2:\"43\";}'),
(146,	44,	'2016-03-01 14:31:59',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"165\";s:4:\"wrID\";s:2:\"44\";}'),
(147,	45,	'2016-03-01 14:32:03',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"166\";s:4:\"wrID\";s:2:\"45\";}'),
(148,	46,	'2016-03-01 14:32:09',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"167\";s:4:\"wrID\";s:2:\"46\";}'),
(149,	47,	'2016-03-01 14:32:12',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"186\";s:4:\"wrID\";s:2:\"47\";}'),
(150,	48,	'2016-03-01 14:32:16',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"187\";s:4:\"wrID\";s:2:\"48\";}'),
(151,	49,	'2016-03-01 14:34:53',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"189\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"49\";}'),
(152,	50,	'2016-03-01 14:38:50',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"50\";}'),
(153,	51,	'2016-03-01 14:38:53',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"51\";}'),
(154,	52,	'2016-03-01 14:39:17',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"189\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"52\";}'),
(155,	53,	'2016-03-01 14:40:52',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"53\";}'),
(156,	54,	'2016-03-01 14:41:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"54\";}'),
(157,	55,	'2016-03-01 14:41:31',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"55\";}'),
(158,	56,	'2016-03-01 14:42:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"56\";}'),
(159,	57,	'2016-03-01 14:45:16',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"57\";}'),
(160,	58,	'2016-03-01 14:48:15',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"58\";}'),
(161,	59,	'2016-03-01 14:51:39',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"59\";}'),
(162,	60,	'2016-03-02 17:25:47',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"60\";}'),
(163,	61,	'2016-03-02 17:26:47',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"61\";}'),
(164,	62,	'2016-03-02 17:28:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"62\";}'),
(165,	63,	'2016-03-02 17:28:58',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"63\";}'),
(166,	64,	'2016-03-02 17:30:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"64\";}'),
(167,	65,	'2016-03-02 17:31:21',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"65\";}'),
(168,	66,	'2016-03-02 17:32:05',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"66\";}'),
(169,	67,	'2016-03-02 17:32:12',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"67\";}'),
(170,	68,	'2016-03-02 17:39:03',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"68\";}'),
(171,	69,	'2016-03-02 17:46:34',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"69\";}'),
(172,	70,	'2016-03-04 11:37:48',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"70\";}'),
(173,	1,	'2016-03-18 11:39:59',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:1:\"1\";}'),
(174,	2,	'2016-03-18 12:19:51',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:1:\"2\";}'),
(175,	3,	'2016-03-18 12:56:59',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:1:\"3\";}'),
(176,	4,	'2016-03-18 13:34:56',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:1:\"4\";}'),
(177,	5,	'2016-03-18 13:36:20',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:1:\"5\";}'),
(178,	6,	'2016-03-18 18:08:49',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"21\";s:4:\"wrID\";s:1:\"6\";}'),
(179,	7,	'2016-03-18 18:25:54',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"22\";s:4:\"wrID\";s:1:\"7\";}'),
(180,	8,	'2016-03-18 18:41:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"23\";s:4:\"wrID\";s:1:\"8\";}'),
(181,	1,	'2016-03-21 11:13:38',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"24\";s:4:\"wrID\";s:1:\"1\";}'),
(182,	2,	'2016-03-21 12:17:18',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"25\";s:4:\"wrID\";s:1:\"2\";}'),
(183,	3,	'2016-03-21 12:29:24',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"26\";s:4:\"wrID\";s:1:\"3\";}'),
(184,	4,	'2016-03-21 12:55:54',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"27\";s:4:\"wrID\";s:1:\"4\";}'),
(185,	5,	'2016-03-21 14:40:25',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"28\";s:4:\"wrID\";s:1:\"5\";}'),
(186,	6,	'2016-03-21 16:30:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"29\";s:4:\"wrID\";s:1:\"6\";}'),
(187,	7,	'2016-03-21 16:36:16',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"30\";s:4:\"wrID\";s:1:\"7\";}'),
(188,	8,	'2016-03-21 16:46:31',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"31\";s:4:\"wrID\";s:1:\"8\";}'),
(189,	9,	'2016-03-21 17:07:51',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"32\";s:4:\"wrID\";s:1:\"9\";}'),
(190,	10,	'2016-03-21 17:08:21',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"33\";s:4:\"wrID\";s:2:\"10\";}'),
(191,	11,	'2016-03-21 17:14:29',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"34\";s:4:\"wrID\";s:2:\"11\";}'),
(192,	12,	'2016-03-21 17:14:49',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"35\";s:4:\"wrID\";s:2:\"12\";}'),
(193,	13,	'2016-03-21 17:30:01',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"36\";s:4:\"wrID\";s:2:\"13\";}'),
(194,	14,	'2016-03-21 17:38:31',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"37\";s:4:\"wrID\";s:2:\"14\";}'),
(195,	15,	'2016-03-21 17:55:41',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"38\";s:4:\"wrID\";s:2:\"15\";}'),
(196,	16,	'2016-03-21 18:00:13',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"39\";s:4:\"wrID\";s:2:\"16\";}'),
(197,	17,	'2016-03-21 18:19:04',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"40\";s:4:\"wrID\";s:2:\"17\";}'),
(198,	18,	'2016-03-21 18:23:38',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"41\";s:4:\"wrID\";s:2:\"18\";}'),
(199,	19,	'2016-03-21 18:27:39',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"42\";s:4:\"wrID\";s:2:\"19\";}'),
(200,	20,	'2016-03-21 18:30:50',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"43\";s:4:\"wrID\";s:2:\"20\";}'),
(201,	21,	'2016-03-21 18:40:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"44\";s:4:\"wrID\";s:2:\"21\";}'),
(202,	22,	'2016-03-21 18:42:56',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"45\";s:4:\"wrID\";s:2:\"22\";}'),
(203,	23,	'2016-03-21 18:47:41',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"46\";s:4:\"wrID\";s:2:\"23\";}'),
(204,	24,	'2016-03-21 18:51:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"47\";s:4:\"wrID\";s:2:\"24\";}'),
(205,	25,	'2016-03-21 18:51:44',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"48\";s:4:\"wrID\";s:2:\"25\";}'),
(206,	26,	'2016-03-22 11:23:53',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"49\";s:4:\"wrID\";s:2:\"26\";}'),
(207,	27,	'2016-03-22 11:24:34',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"50\";s:4:\"wrID\";s:2:\"27\";}'),
(208,	28,	'2016-03-22 12:02:42',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"51\";s:4:\"wrID\";s:2:\"28\";}'),
(209,	29,	'2016-03-22 12:09:50',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"52\";s:4:\"wrID\";s:2:\"29\";}'),
(210,	30,	'2016-03-22 12:12:39',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"53\";s:4:\"wrID\";s:2:\"30\";}'),
(211,	31,	'2016-03-22 13:32:56',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"54\";s:4:\"wrID\";s:2:\"31\";}'),
(212,	32,	'2016-03-22 17:46:40',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"32\";}'),
(213,	33,	'2016-03-22 18:00:27',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"55\";s:4:\"wrID\";s:2:\"33\";}'),
(214,	34,	'2016-03-22 18:01:18',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"56\";s:4:\"wrID\";s:2:\"34\";}'),
(215,	35,	'2016-03-22 18:33:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"57\";s:4:\"wrID\";s:2:\"35\";}'),
(216,	36,	'2016-03-22 18:34:54',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"58\";s:4:\"wrID\";s:2:\"36\";}'),
(217,	37,	'2016-03-22 18:35:31',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"59\";s:4:\"wrID\";s:2:\"37\";}'),
(218,	38,	'2016-03-28 10:54:57',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"59\";s:4:\"wrID\";s:2:\"38\";}'),
(219,	39,	'2016-03-28 12:28:32',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"60\";s:4:\"wrID\";s:2:\"39\";}'),
(220,	40,	'2016-03-28 12:31:49',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"61\";s:4:\"wrID\";s:2:\"40\";}'),
(221,	41,	'2016-03-28 13:21:13',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"62\";s:4:\"wrID\";s:2:\"41\";}'),
(222,	42,	'2016-03-28 13:29:34',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"63\";s:4:\"wrID\";s:2:\"42\";}'),
(223,	43,	'2016-03-28 13:30:40',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"64\";s:4:\"wrID\";s:2:\"43\";}'),
(224,	44,	'2016-03-28 13:32:05',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"65\";s:4:\"wrID\";s:2:\"44\";}'),
(225,	45,	'2016-03-28 13:32:43',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"66\";s:4:\"wrID\";s:2:\"45\";}'),
(226,	46,	'2016-03-28 13:38:42',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"67\";s:4:\"wrID\";s:2:\"46\";}'),
(227,	47,	'2016-03-28 13:58:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"68\";s:4:\"wrID\";s:2:\"47\";}'),
(228,	48,	'2016-03-28 14:14:42',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"69\";s:4:\"wrID\";s:2:\"48\";}'),
(229,	49,	'2016-03-28 14:17:39',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"70\";s:4:\"wrID\";s:2:\"49\";}'),
(230,	50,	'2016-03-28 14:24:19',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"71\";s:4:\"wrID\";s:2:\"50\";}'),
(231,	51,	'2016-03-28 14:25:22',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"72\";s:4:\"wrID\";s:2:\"51\";}'),
(232,	52,	'2016-03-28 14:25:46',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"73\";s:4:\"wrID\";s:2:\"52\";}'),
(233,	53,	'2016-03-28 14:27:22',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"74\";s:4:\"wrID\";s:2:\"53\";}'),
(234,	54,	'2016-03-28 14:31:02',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"75\";s:4:\"wrID\";s:2:\"54\";}'),
(235,	55,	'2016-03-28 14:35:53',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"76\";s:4:\"wrID\";s:2:\"55\";}'),
(236,	56,	'2016-03-28 14:41:54',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"77\";s:4:\"wrID\";s:2:\"56\";}'),
(237,	57,	'2016-03-28 14:42:41',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"78\";s:4:\"wrID\";s:2:\"57\";}'),
(238,	58,	'2016-03-28 14:43:15',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"79\";s:4:\"wrID\";s:2:\"58\";}'),
(239,	59,	'2016-03-28 14:50:40',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"80\";s:4:\"wrID\";s:2:\"59\";}'),
(240,	60,	'2016-03-28 15:16:31',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"81\";s:4:\"wrID\";s:2:\"60\";}'),
(241,	61,	'2016-03-28 15:49:41',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"82\";s:4:\"wrID\";s:2:\"61\";}'),
(242,	62,	'2016-03-28 15:50:48',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"83\";s:4:\"wrID\";s:2:\"62\";}'),
(243,	63,	'2016-03-28 15:51:18',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"84\";s:4:\"wrID\";s:2:\"63\";}'),
(244,	64,	'2016-03-28 15:52:01',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"85\";s:4:\"wrID\";s:2:\"64\";}'),
(245,	65,	'2016-03-28 15:53:06',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"86\";s:4:\"wrID\";s:2:\"65\";}'),
(246,	66,	'2016-03-28 15:53:43',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"87\";s:4:\"wrID\";s:2:\"66\";}'),
(247,	67,	'2016-03-28 16:54:32',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"88\";s:4:\"wrID\";s:2:\"67\";}'),
(248,	68,	'2016-03-28 16:55:22',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"89\";s:4:\"wrID\";s:2:\"68\";}'),
(249,	69,	'2016-03-28 18:02:19',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"90\";s:4:\"wrID\";s:2:\"69\";}'),
(250,	70,	'2016-03-28 18:12:32',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"91\";s:4:\"wrID\";s:2:\"70\";}'),
(251,	71,	'2016-03-28 18:12:55',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"92\";s:4:\"wrID\";s:2:\"71\";}'),
(252,	72,	'2016-03-28 18:13:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"93\";s:4:\"wrID\";s:2:\"72\";}'),
(253,	73,	'2016-03-29 12:16:32',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:2:\"94\";s:4:\"wrID\";s:2:\"73\";}'),
(254,	74,	'2016-03-29 12:19:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"23\";s:4:\"wrID\";s:2:\"74\";}'),
(255,	75,	'2016-03-29 12:22:20',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"24\";s:4:\"wrID\";s:2:\"75\";}'),
(256,	76,	'2016-03-29 12:23:28',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"25\";s:4:\"wrID\";s:2:\"76\";}'),
(257,	77,	'2016-03-29 12:24:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"26\";s:4:\"wrID\";s:2:\"77\";}'),
(258,	78,	'2016-03-29 12:28:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"27\";s:4:\"wrID\";s:2:\"78\";}'),
(259,	79,	'2016-03-29 12:28:58',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"28\";s:4:\"wrID\";s:2:\"79\";}'),
(260,	80,	'2016-03-29 12:31:00',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"29\";s:4:\"wrID\";s:2:\"80\";}'),
(261,	81,	'2016-03-29 12:52:34',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"183\";s:4:\"wrID\";s:2:\"81\";}'),
(262,	82,	'2016-03-29 12:52:39',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"182\";s:4:\"wrID\";s:2:\"82\";}'),
(263,	83,	'2016-03-29 12:56:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"30\";s:4:\"wrID\";s:2:\"83\";}'),
(264,	84,	'2016-03-29 12:56:21',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"31\";s:4:\"wrID\";s:2:\"84\";}');

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Workflows`;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `WorkflowTypes`;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `WorkflowTypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1,	'basic',	'Basic Workflow',	0);

-- 2016-03-29 12:58:01