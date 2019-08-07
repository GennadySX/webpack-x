-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Авг 07 2019 г., 11:51
-- Версия сервера: 5.7.27-0ubuntu0.18.04.1
-- Версия PHP: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `api`
--

-- --------------------------------------------------------

--
-- Структура таблицы `architecture`
--

CREATE TABLE `architecture` (
  `id` int(11) NOT NULL,
  `id_floor` int(11) NOT NULL,
  `name` varchar(190) CHARACTER SET utf8mb4 DEFAULT 'NULL',
  `url` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `architecture`
--

INSERT INTO `architecture` (`id`, `id_floor`, `name`, `url`, `Date`) VALUES
(1, 1, '1.obj', '/uploads/file/d7bfd26ab84540931b4874dde542f197.obj', '2019-08-07'),
(2, 2, '2.obj', '/uploads/file/428dad6f2bd62a028ef1a44b5a6cb4d8.obj', '2019-08-07'),
(3, 3, '3.obj', '/uploads/file/073be9172ccb2c8c999e6b83864392d1.obj', '2019-08-07');

-- --------------------------------------------------------

--
-- Структура таблицы `elements`
--

CREATE TABLE `elements` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Width` decimal(10,0) DEFAULT NULL,
  `Height` decimal(10,0) DEFAULT NULL,
  `Depth` decimal(10,0) DEFAULT NULL,
  `DistanceToFloor` decimal(10,0) DEFAULT NULL,
  `Date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `elementsrooms`
--

CREATE TABLE `elementsrooms` (
  `Id` int(11) NOT NULL,
  `RoomId` int(11) DEFAULT NULL,
  `ElementTypeId` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `X` decimal(10,0) DEFAULT NULL,
  `Y` decimal(10,0) DEFAULT NULL,
  `Degree` decimal(10,0) DEFAULT NULL,
  `Width` decimal(10,0) DEFAULT NULL,
  `Height` decimal(10,0) DEFAULT NULL,
  `Depth` decimal(10,0) DEFAULT NULL,
  `DistanceToFloor` decimal(10,0) DEFAULT NULL,
  `IsLock` int(1) DEFAULT NULL,
  `Date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `floors`
--

CREATE TABLE `floors` (
  `Id` int(11) NOT NULL,
  `SchemeId` int(11) DEFAULT NULL,
  `FloorTypeId` int(11) DEFAULT NULL,
  `HouseId` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `CeilingHeight` decimal(10,0) DEFAULT NULL,
  `InteriorWallThinckness` decimal(10,0) DEFAULT NULL,
  `ExteriorWallThinckness` decimal(10,0) DEFAULT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `floorstypes`
--

CREATE TABLE `floorstypes` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `floorstypes`
--

INSERT INTO `floorstypes` (`Id`, `Title`) VALUES
(1, 'Left side'),
(2, 'Left side'),
(3, 'Right side'),
(4, 'Bottom side'),
(5, 'Roof side');

-- --------------------------------------------------------

--
-- Структура таблицы `houses`
--

CREATE TABLE `houses` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `Author` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Address` text CHARACTER SET utf8mb4,
  `Description` text NOT NULL,
  `Date` datetime DEFAULT CURRENT_TIMESTAMP,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `houses`
--

INSERT INTO `houses` (`Id`, `Title`, `Author`, `Address`, `Description`, `Date`, `Latitude`, `Longitude`) VALUES
(1, 'new House ', NULL, 'desc', 'abc ', '2019-08-07 14:26:07', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `housesFloors`
--

CREATE TABLE `housesFloors` (
  `Id` int(11) NOT NULL,
  `HouseId` int(11) DEFAULT NULL,
  `FloorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `Id` int(11) NOT NULL,
  `id_floor` int(11) DEFAULT NULL,
  `name` varchar(190) DEFAULT 'NULL',
  `url` varchar(255) DEFAULT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `querypeer`
--

CREATE TABLE `querypeer` (
  `query` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `querypeer`
--

INSERT INTO `querypeer` (`query`) VALUES
('Array'),
('Array'),
('1'),
('Array'),
('Array'),
(''),
(''),
(' api (1).sql application/sql /tmp/php7tu0bt 0 24181'),
(''),
(''),
('24181 size: 24181, '),
('24181 Array-size: 24181, '),
(''),
(''),
(''),
(''),
(' name: api (1).sql,  type: application/sql,  tmp_name: /tmp/phpHjPIye,  error: 0,  size: 24181, '),
(' name: api (1).sql,  type: application/sql,  tmp_name: /tmp/phpuIkEVv,  error: 0,  size: 24181, '),
(''),
(''),
(''),
(' filse: asdas, '),
('POST:  filse: values, '),
('POST:  filse: values, '),
('FILES:  name: test.json,  type: application/json,  tmp_name: /tmp/phpxoTpcK,  error: 0,  size: 1732, '),
('POST:  file: Array, '),
('POST:  file: Array, '),
('POST:  file: Array, '),
('POST:  name: sample_house.json,  type: application/json,  tmp_name: /tmp/phpSZXwPP,  error: 0,  size: 3381, '),
('P:  name: sample_house.json,  type: application/json,  tmp_name: /tmp/php9JvMTq,  error: 0,  size: 3381, '),
('P:  name: sample_house.json,  type: application/json,  tmp_name: /tmp/phpnzdzwg,  error: 0,  size: 3381, '),
('POST:  name: sample_house.json,  type: application/json,  tmp_name: /tmp/phpuBOJEQ,  error: 0,  size: 3381, '),
('POST:  name: jpg,  type: multipart/form-data,  tmp_name: /tmp/phpcdRJYI,  error: 0,  size: 18454, ');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `Id` int(11) NOT NULL,
  `Code` varchar(20) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`Id`, `Code`, `Name`) VALUES
(1, '1', 'Admin'),
(2, '2', 'User');

-- --------------------------------------------------------

--
-- Структура таблицы `rooms`
--

CREATE TABLE `rooms` (
  `Id` int(11) NOT NULL,
  `FloorId` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `CeilingHeight` float DEFAULT NULL,
  `X` decimal(10,0) DEFAULT NULL,
  `Y` decimal(10,0) DEFAULT NULL,
  `Degree` decimal(10,0) DEFAULT NULL,
  `Coordinaties` text,
  `Date` datetime DEFAULT CURRENT_TIMESTAMP,
  `Color` varchar(255) DEFAULT NULL,
  `RoomTypeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rooms`
--

INSERT INTO `rooms` (`Id`, `FloorId`, `Title`, `Description`, `CeilingHeight`, `X`, `Y`, `Degree`, `Coordinaties`, `Date`, `Color`, `RoomTypeId`) VALUES
(4, 2, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:29:42', '#d3d3d3', 7),
(5, 2, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:29:42', '#d3d3d3', 10),
(6, 2, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:29:42', '#d3d3d3', 13),
(7, 2, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:29:42', '#d3d3d3', 8),
(8, 3, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:29:42', '#d3d3d3', 14),
(9, 3, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:29:42', '#d3d3d3', 8),
(10, 2, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:29:42', '#d3d3d3', 8),
(11, 3, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:30:33', '#d3d3d3', 14),
(12, 3, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:30:33', '#d3d3d3', 8),
(13, 3, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:30:33', '#d3d3d3', 6),
(14, 65, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:47:32', '#d3d3d3', 8),
(15, 66, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-07 11:47:32', '#d3d3d3', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `roomstypes`
--

CREATE TABLE `roomstypes` (
  `Id` int(11) NOT NULL,
  `Type` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roomstypes`
--

INSERT INTO `roomstypes` (`Id`, `Type`, `Title`) VALUES
(1, 1, 'Kitchen'),
(2, 1, 'Studio'),
(3, 1, 'Living room'),
(4, 1, 'Balcone'),
(5, 1, 'Bathroom'),
(6, 1, 'Smoking room'),
(7, 1, 'Bedroom'),
(8, 1, 'Family Room'),
(9, 2, 'Guest Room'),
(10, 2, 'Dining room'),
(11, 4, 'Game room'),
(12, 4, 'Basement'),
(13, 4, 'Nursery'),
(14, 4, 'Home Office'),
(15, 4, 'Play room'),
(16, 4, 'Library'),
(17, 4, 'Home Gym Room'),
(18, 2, 'Storage Room');

-- --------------------------------------------------------

--
-- Структура таблицы `scheme`
--

CREATE TABLE `scheme` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Latitude` decimal(10,0) DEFAULT NULL,
  `Longitude` decimal(10,0) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tokens`
--

CREATE TABLE `tokens` (
  `Id` int(1) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Token` varchar(100) DEFAULT NULL,
  `Expire` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tokens`
--

INSERT INTO `tokens` (`Id`, `UserId`, `Token`, `Expire`) VALUES
(326, 1, 'f1afe6df9253a56d6d5a8ec99308417b', 1565179518),
(327, 1, 'f29b4fd7f79764b39125225907887c88', 1565179696),
(328, 1, '2c889af6e397dec7c9b90e265ecef73e', 1565179732),
(329, 1, 'dd516feda0d6c7d7a316d11592eb58d8', 1565179863),
(330, 1, '243d17e6e66585843183547fdeccafca', 1565180000),
(331, 1, '5ed1a0a2cea5014ac7aecfb6b9dfb740', 1565180087),
(332, 1, 'f46046b4327cc44a566a1960e3416dab', 1565180372),
(333, 1, '731c10b81656979472daaa7a356becbc', 1565180446),
(334, 1, 'f8bc90d8949e953fef59c1a65518b6f2', 1565181017),
(335, 1, '1fb7dbf8eb12aef175325c10aa5c3994', 1565182020),
(336, 1, '818f3ef8a60638df7bbfa623b0c53e29', 1565182470),
(337, 1, 'd34711d2c00e2bc9f320108e85e1275d', 1565182772),
(338, 1, '46b146d09bbed2dbca9d8c4e94eefe9c', 1565182952),
(339, 1, 'da59100c1848bd8e0721d2078cf1c74d', 1565184726),
(340, 1, 'c9b09c68a5e613e5b1ef76ee58846707', 1565185300),
(341, 1, 'b74a860ed684e374b7a2fb8611094887', 1565186007),
(342, 1, '4c7a9de1f055692c65aa46f9db5d4d29', 1565186043),
(343, 1, 'c19a9e6c178e12af4c46ae718fa81693', 1565186677),
(344, 1, '30621182b5f5ce929a7707f35c291ddf', 1565187299),
(345, 1, '9b679075a3199488e2767a0208a81fdf', 1565189189),
(346, 1, 'dba966b766aa301ad8b1621f120683b3', 1565189301),
(347, 1, '892edea9e5082ac29cfea8bd96bae96b', 1565190140),
(348, 1, 'ccbb97accfb30c0610d14842c1bd5bf3', 1565190193),
(349, 1, 'f0332f00332282cae9dcbd8e60107474', 1565190453),
(350, 1, '966c29d96c87dc95772e9d3c5e4af3c5', 1565199646),
(351, 1, 'c823930d515ac606d4cf74b4923a8bde', 1565249030),
(352, 1, 'd283e85d452448bf03ab5af1da9ba818', 1565249671),
(353, 1, 'ea8fc6af492c625b4c00b758d097d466', 1565249769),
(354, 1, '01f981b070977cf11c72fba11dee2d45', 1565249792),
(355, 1, '7e8f3ab7422f1f2ab7c755e8252e3d5d', 1565249838),
(356, 1, 'c31ab02d97843f52b38de7de96c5416d', 1565251866),
(357, 1, '46b74d9922fb76b2e6dae6016ab204b0', 1565252238),
(358, 1, 'cb8f1e69835fdf37d9c89d71c5a6fc60', 1565252868),
(359, 1, '220824eaf080f9cda29168e8d6f3a0f0', 1565254924),
(360, 1, '15cb94fa52ba1e2e7146d8954234dc2d', 1565255148),
(361, 1, 'e57bc08e2b6f01e3e5f20c44f27b2388', 1565257803),
(362, 1, '2111fa004cba4728ca02a52ba4051b0e', 1565258695),
(363, 1, '4f430cef478432b90a3e87e4af46b6aa', 1565259510),
(364, 1, '8df43c6dab42754e4616383e960ecd5a', 1565259794),
(365, 1, '2162638b83b2d0a8d320a33d45e5ea89', 1565259795),
(366, 1, '5221400cc9b85c61454add29234421de', 1565259800),
(367, 1, '4964e4f3cd645ae2e29ab24179666b90', 1565259801),
(368, 1, 'c887978cc4076d4d552e06a30482c3a2', 1565259801),
(369, 1, '5890b8114ad2cc232308c01ca5ca0bcb', 1565259801),
(370, 1, '5efe1c4b6389153501bab7c6f2ee3f31', 1565259801),
(371, 1, '3c643366ce11af68e3459b9c42d93beb', 1565259802),
(372, 1, '82a54204d1fcd1ee549e6104b18d0d8f', 1565259802),
(373, 1, 'd016fde8cc4d34a1025bf1b68eb235a1', 1565260196),
(374, 1, 'c3bedb96565327e6e8ca9d11d3d008f9', 1565260865),
(375, 1, 'd2e820a492b31ef7516590760516b280', 1565261262),
(376, 1, '50015a431f7634a11c5032735af50ef6', 1565262488),
(377, 1, '7ac5a54174c7aaacfda62c0db696a0cb', 1565262545),
(378, 1, '8c0f41eb856733889c9f121496918057', 1565262903),
(379, 1, '9907587f93a5bf102bfb1afa483150b7', 1565263151),
(380, 1, '1c8457711def29703d9b92e1fedbf126', 1565263151),
(381, 1, 'f0e974301a362a1e134ca460f6b26e7a', 1565263152),
(382, 1, '7dcce440b27d9b7d39fdf3091cc73e78', 1565263153),
(383, 1, '7a121a40036f40f9361f3ac164458dee', 1565263153),
(384, 1, '06c7ef47d6ceaf65108c5a667ff79544', 1565263153),
(385, 1, '65755267271595f56a3c1e213092cfe1', 1565263153),
(386, 1, 'ff39f8e34224e3733f7ae77ca3dd2102', 1565263153),
(387, 1, '151ec04d44a0e9f006fd6cd351658ba7', 1565263153),
(388, 1, '4d3e27088954e446a850b1296f6caa8d', 1565263153),
(389, 1, '9275d2f4e18550baf44d8926dbae25e4', 1565263545),
(390, 1, '3853eab37a31b314c343e747f04b67d8', 1565263575),
(391, 1, '4fb2ffb9a5ab4e48140502c224292e3c', 1565263876),
(392, 1, '89d6b15dc8125cd1b1192d032e7a1a27', 1565263915),
(393, 1, '516f8689b15aaf396b669acb1272d6a4', 1565263939),
(394, 1, '1c45f4eb39af5376a725f1f98a2a219e', 1565264049),
(395, 1, 'd746fbdc7e3c32d161f81f96722e2273', 1565264093),
(396, 1, '9db47619e95e0fbe99e98edb73185ae4', 1565264108),
(397, 1, '2ea69394d440730669c6d93c951da8be', 1565264176),
(398, 1, '22ea7fcf81d86023d3491bce645b27cb', 1565264252),
(399, 1, '4d0474f46a542482a8de0f5a0d3a74a1', 1565264329),
(400, 1, '54f83b195f34b0c322f33f2ac421a711', 1565264428),
(401, 1, 'e2e730db243cde978f4266f1045d14a6', 1565264591);

-- --------------------------------------------------------

--
-- Структура таблицы `userroles`
--

CREATE TABLE `userroles` (
  `UserId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `Id` int(1) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Date` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`Id`, `Name`, `Username`, `Password`, `Date`) VALUES
(1, 'Администратор', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 1530599384);

-- --------------------------------------------------------

--
-- Структура таблицы `walls`
--

CREATE TABLE `walls` (
  `Id` int(11) NOT NULL,
  `RoomId` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `X1` float DEFAULT NULL,
  `Y1` float DEFAULT NULL,
  `X2` float DEFAULT NULL,
  `Y2` float DEFAULT NULL,
  `Date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `walls`
--

INSERT INTO `walls` (`Id`, `RoomId`, `Title`, `Description`, `X1`, `Y1`, `X2`, `Y2`, `Date`) VALUES
(13, 4, NULL, NULL, 883.164, 1029.68, 1283.16, 1029.68, NULL),
(14, 4, NULL, NULL, 1283.16, 1029.68, 1283.16, 629.679, NULL),
(15, 4, NULL, NULL, 1283.16, 629.679, 883.164, 629.679, NULL),
(16, 4, NULL, NULL, 883.164, 629.679, 883.164, 1029.68, NULL),
(17, 5, NULL, NULL, 54.5312, 617.375, 454.531, 617.375, NULL),
(18, 5, NULL, NULL, 454.531, 617.375, 454.531, 217.375, NULL),
(19, 5, NULL, NULL, 454.531, 217.375, 54.5312, 217.375, NULL),
(20, 5, NULL, NULL, 54.5312, 217.375, 54.5312, 617.375, NULL),
(21, 6, NULL, NULL, 84.7656, 1518, 484.766, 1518, NULL),
(22, 6, NULL, NULL, 484.766, 1518, 484.766, 1118, NULL),
(23, 6, NULL, NULL, 484.766, 1118, 84.7656, 1118, NULL),
(24, 6, NULL, NULL, 84.7656, 1118, 84.7656, 1518, NULL),
(25, 7, NULL, NULL, 883.164, 1429.68, 1283.16, 1429.68, NULL),
(26, 7, NULL, NULL, 1283.16, 1429.68, 1283.16, 1029.68, NULL),
(27, 7, NULL, NULL, 1283.16, 1029.68, 883.164, 1029.68, NULL),
(28, 7, NULL, NULL, 883.164, 1029.68, 883.164, 1429.68, NULL),
(29, 8, NULL, NULL, 520, 1432, 920, 1432, NULL),
(30, 8, NULL, NULL, 920, 1432, 920, 1032, NULL),
(31, 8, NULL, NULL, 920, 1032, 520, 1032, NULL),
(32, 8, NULL, NULL, 520, 1032, 520, 1432, NULL),
(33, 9, NULL, NULL, 120, 1432, 520, 1432, NULL),
(34, 9, NULL, NULL, 520, 1432, 520, 1032, NULL),
(35, 9, NULL, NULL, 520, 1032, 120, 1032, NULL),
(36, 9, NULL, NULL, 120, 1032, 120, 1432, NULL),
(37, 10, NULL, NULL, 883.164, 1429.68, 1283.16, 1429.68, NULL),
(38, 10, NULL, NULL, 1283.16, 1429.68, 1283.16, 1029.68, NULL),
(39, 10, NULL, NULL, 1283.16, 1029.68, 883.164, 1029.68, NULL),
(40, 10, NULL, NULL, 883.164, 1029.68, 883.164, 1429.68, NULL),
(41, 11, NULL, NULL, 520, 1432, 920, 1432, NULL),
(42, 11, NULL, NULL, 920, 1432, 920, 1032, NULL),
(43, 11, NULL, NULL, 920, 1032, 520, 1032, NULL),
(44, 11, NULL, NULL, 520, 1032, 520, 1432, NULL),
(45, 12, NULL, NULL, 120, 1432, 520, 1432, NULL),
(46, 12, NULL, NULL, 520, 1432, 520, 1032, NULL),
(47, 12, NULL, NULL, 520, 1032, 120, 1032, NULL),
(48, 12, NULL, NULL, 120, 1032, 120, 1432, NULL),
(49, 13, NULL, NULL, 520.408, 1030.67, 920.408, 1030.67, NULL),
(50, 13, NULL, NULL, 920.408, 1030.67, 920.408, 630.675, NULL),
(51, 13, NULL, NULL, 920.408, 630.675, 520.408, 630.675, NULL),
(52, 13, NULL, NULL, 520.408, 630.675, 520.408, 1030.67, NULL),
(53, 14, NULL, NULL, 645.977, 603.009, 1045.98, 603.009, NULL),
(54, 14, NULL, NULL, 1045.98, 603.009, 1045.98, 203.009, NULL),
(55, 14, NULL, NULL, 1045.98, 203.009, 645.977, 203.009, NULL),
(56, 14, NULL, NULL, 645.977, 203.009, 645.977, 603.009, NULL),
(57, 15, NULL, NULL, 673.984, 571.006, 1073.98, 571.006, NULL),
(58, 15, NULL, NULL, 1073.98, 571.006, 1073.98, 171.006, NULL),
(59, 15, NULL, NULL, 1073.98, 171.006, 673.984, 171.006, NULL),
(60, 15, NULL, NULL, 673.984, 171.006, 673.984, 571.006, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `architecture`
--
ALTER TABLE `architecture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `architecture_floors_Id_fk` (`id_floor`);

--
-- Индексы таблицы `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `elementsrooms`
--
ALTER TABLE `elementsrooms`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `RoomId` (`RoomId`,`ElementTypeId`);

--
-- Индексы таблицы `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `SchemeId` (`SchemeId`),
  ADD KEY `FloorTypeId` (`FloorTypeId`),
  ADD KEY `HouseId` (`HouseId`);

--
-- Индексы таблицы `floorstypes`
--
ALTER TABLE `floorstypes`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `housesFloors`
--
ALTER TABLE `housesFloors`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `HouseFloor` (`HouseId`,`FloorId`),
  ADD KEY `HouseId` (`HouseId`),
  ADD KEY `FloorId` (`FloorId`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `images_floors_Id_fk` (`id_floor`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FloorId` (`FloorId`),
  ADD KEY `rooms_roomstypes_Id_fk` (`RoomTypeId`);

--
-- Индексы таблицы `roomstypes`
--
ALTER TABLE `roomstypes`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserId` (`UserId`);

--
-- Индексы таблицы `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `userroles_ibfk_2` (`RoleId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `walls`
--
ALTER TABLE `walls`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `RoomId` (`RoomId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `architecture`
--
ALTER TABLE `architecture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `elements`
--
ALTER TABLE `elements`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `elementsrooms`
--
ALTER TABLE `elementsrooms`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `floors`
--
ALTER TABLE `floors`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `floorstypes`
--
ALTER TABLE `floorstypes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `houses`
--
ALTER TABLE `houses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `housesFloors`
--
ALTER TABLE `housesFloors`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `rooms`
--
ALTER TABLE `rooms`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `roomstypes`
--
ALTER TABLE `roomstypes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `scheme`
--
ALTER TABLE `scheme`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tokens`
--
ALTER TABLE `tokens`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `walls`
--
ALTER TABLE `walls`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `userroles`
--
ALTER TABLE `userroles`
  ADD CONSTRAINT `userroles_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `userroles_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
