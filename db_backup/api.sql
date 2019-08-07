-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 25, 2019 at 04:14 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `architecture`
--

CREATE TABLE `architecture` (
  `id` int(11) NOT NULL,
  `id_floor` int(14) NOT NULL,
  `name` varchar(190) DEFAULT 'NULL',
  `url` varchar(250) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `architecture`
--

INSERT INTO `architecture` (`id`, `id_floor`, `name`, `url`, `Date`) VALUES
(1, 14, 'n24.zip', '/uploads/file/f9a6915602ff1e1af8cb9f7328b9ca9d.zip', '2019-07-25'),
(2, 14, 'api.sql', '/uploads/file/cae57119b43094889f6dc3e6b897a512.sql', '2019-07-25'),
(3, 14, 'project.zip', '/uploads/file/daa47393951bd3b167fa0a03ff8bbae5.zip', '2019-07-25'),
(4, 14, 'project.zip', '/uploads/file/329fe046df6069890c52b3e58e3c007b.zip', '2019-07-25'),
(5, 14, 'project.zip', '/uploads/file/5e58557334b6ae347a92f532dfd2bb69.zip', '2019-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `elements`
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
-- Table structure for table `elementsrooms`
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
-- Table structure for table `floors`
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

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`Id`, `SchemeId`, `FloorTypeId`, `HouseId`, `Title`, `Description`, `CeilingHeight`, `InteriorWallThinckness`, `ExteriorWallThinckness`, `Date`) VALUES
(1, 1, 2, NULL, 'Пол #1', 'Простой пол', '23', '324', '324', NULL),
(2, 1, 1, NULL, 'q', 'test', '2', '3', '5', '2019-04-15 00:19:32'),
(3, 1, 1, NULL, 'q', 'test', '2', '3', '5', '2019-04-15 00:19:32'),
(4, 1, 1, NULL, 'q', 'test', '2', '3', '5', '2019-04-15 00:19:32'),
(5, 1, 1, NULL, 'q', 'test', '2', '3', '5', '2019-04-15 00:19:32'),
(6, NULL, 1, NULL, 'q', 'test', '2', '3', '5', '2019-04-15 00:19:32'),
(7, NULL, 1, NULL, 'q', 'test', '2', '3', '5', '2019-04-15 00:19:32'),
(8, NULL, 1, NULL, 'q', 'test', '2', '3', '5', '2019-04-15 00:19:32'),
(9, 1, 1, NULL, 'q', 'test', '2', '3', '5', '2019-04-15 00:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `floorstypes`
--

CREATE TABLE `floorstypes` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `floorstypes`
--

INSERT INTO `floorstypes` (`Id`, `Title`) VALUES
(1, 'Подвал. 3-й уровень'),
(2, 'Подвал. 2-й уровень'),
(3, 'Подвал'),
(4, 'Этаж 1'),
(5, 'Этаж 2'),
(6, 'Этаж 3'),
(7, 'Этаж 4'),
(8, 'Этаж 5'),
(9, 'Этаж 6'),
(10, 'Этаж 7'),
(11, 'Этаж 8'),
(12, 'Этаж 9'),
(13, 'Этаж 10'),
(14, 'Этаж 11'),
(15, 'Этаж 12'),
(16, 'Этаж 13'),
(17, 'Этаж 14'),
(18, 'Этаж 15'),
(19, 'Этаж 16'),
(20, 'Этаж 17'),
(21, 'Этаж 18'),
(22, 'Этаж 19'),
(23, 'Этаж 20'),
(24, 'Этаж 21'),
(25, 'Этаж 22'),
(26, 'Этаж 23'),
(27, 'Этаж 24'),
(28, 'Этаж 25'),
(29, 'Этаж 26'),
(30, 'Этаж 27'),
(31, 'Этаж 28'),
(32, 'Этаж 29'),
(33, 'Этаж 30'),
(34, 'Этаж 31'),
(35, 'Этаж 32'),
(36, 'Этаж 33'),
(37, 'Этаж 34'),
(38, 'Этаж 35'),
(39, 'Этаж 36'),
(40, 'Этаж 37'),
(41, 'Этаж 38'),
(42, 'Этаж 39'),
(43, 'Этаж 40'),
(44, 'Этаж 41'),
(45, 'Этаж 42'),
(46, 'Этаж 43'),
(47, 'Этаж 44'),
(48, 'Этаж 45'),
(49, 'Этаж 46'),
(50, 'Этаж 47'),
(51, 'Этаж 48'),
(52, 'Этаж 49'),
(53, 'Этаж 50'),
(54, 'Крыша');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `Date` datetime DEFAULT current_timestamp(),
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`Id`, `Title`, `Author`, `Address`, `Date`, `Latitude`, `Longitude`) VALUES
(2, 'Дом2', 'тнт', 'тнт', '2019-04-15 00:19:32', NULL, NULL),
(5, 'zzz', 'test2', 'test3', '2019-04-15 02:10:01', NULL, NULL),
(41, 'Заголовок', 'автор', 'адрес', '2019-04-16 17:37:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `housesFloors`
--

CREATE TABLE `housesFloors` (
  `Id` int(11) NOT NULL,
  `HouseId` int(11) NOT NULL,
  `FloorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `housesFloors`
--

INSERT INTO `housesFloors` (`Id`, `HouseId`, `FloorId`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `Id` int(11) NOT NULL,
  `id_floor` int(11) DEFAULT NULL,
  `name` varchar(190) DEFAULT 'NULL',
  `url` varchar(255) DEFAULT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`Id`, `id_floor`, `name`, `url`, `Date`) VALUES
(5, 14, NULL, '/uploads/img/18645c74d075127da9964b0fbe7d2df1.png', '2019-07-25 15:57:19'),
(6, 14, NULL, '/uploads/img/c714666758af7daf1759344dcd527252.jpg', '2019-07-25 15:57:27'),
(7, 14, NULL, '/uploads/img/5ac21d8cb4ebf44280a8077d3023dfdc.jpeg', '2019-07-25 16:03:11'),
(8, 14, NULL, '/uploads/img/68229c4d8915bffd45399d743f440ca1.jpg', '2019-07-25 16:05:17'),
(9, 14, 'original.jpg', '/uploads/img/2ff87b2ddf50c52674f48d9923070ba1.jpg', '2019-07-25 16:57:17'),
(10, 14, 'Google-AI-926370826.jpg', '/uploads/img/a5d539feacacd274f1a86104cc8f4987.jpg', '2019-07-25 16:57:25'),
(11, 14, '220px-Lens_product_logo_color_720px_(2).png', '/uploads/img/fcfcc649e79ce23c94fdff3adc95b037.png', '2019-07-25 17:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `Id` int(11) NOT NULL,
  `Code` varchar(20) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`Id`, `Code`, `Name`) VALUES
(1, '1', 'Admin'),
(2, '2', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
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
  `Coordinaties` text DEFAULT NULL,
  `Date` datetime DEFAULT current_timestamp(),
  `Color` varchar(255) DEFAULT NULL,
  `RoomTypeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`Id`, `FloorId`, `Title`, `Description`, `CeilingHeight`, `X`, `Y`, `Degree`, `Coordinaties`, `Date`, `Color`, `RoomTypeId`) VALUES
(1, 1, 'Первая комната', 'Всё под замену', 25, '12', '24', '12', 'x;x;x', NULL, NULL, 0),
(2, 2, 'test5', '12', 2, '1', '2', '8', 'x;x;x', '2019-04-15 00:19:32', NULL, 0),
(4, 2, 'test5', '12', 2, '1', '2', '8', 'x;x;x', '2019-04-15 00:19:32', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roomstypes`
--

CREATE TABLE `roomstypes` (
  `Id` int(11) NOT NULL,
  `Type` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roomstypes`
--

INSERT INTO `roomstypes` (`Id`, `Type`, `Title`) VALUES
(1, 1, 'Кухня'),
(2, 1, 'Столовая'),
(3, 1, 'Гостинная'),
(4, 1, 'Холл'),
(5, 1, 'Спальня'),
(6, 1, 'Кабинет'),
(7, 1, 'Детская комната'),
(8, 1, 'Ванная'),
(9, 1, 'Туалет'),
(10, 1, 'Студия'),
(11, 1, 'Балкон'),
(12, 1, 'Гараж'),
(13, 1, 'Коридор'),
(14, 1, 'Прачечная'),
(15, 1, 'Игровая комната'),
(16, 1, 'Погреб'),
(17, 1, 'Патио'),
(18, 1, 'Крыльцо'),
(19, 1, 'Присторойка'),
(20, 1, 'Подвал'),
(21, 1, 'Другое'),
(22, 2, 'Личный офис'),
(23, 2, 'Общий офис'),
(24, 2, 'Опенспейс'),
(25, 2, 'Переговорная'),
(26, 2, 'Конференц-зал'),
(27, 2, 'Рецепшн'),
(28, 2, 'Кухня'),
(29, 2, 'Кафетерий'),
(30, 2, 'Холл'),
(31, 2, 'Туалет'),
(32, 2, 'Балкон'),
(33, 2, 'Гараж'),
(34, 2, 'Коридор'),
(35, 2, 'Комната отдыха'),
(36, 2, 'Приемная'),
(37, 2, 'Мастерская'),
(38, 2, 'Тренировочная'),
(39, 2, 'Лестница'),
(40, 2, 'Комната обслуживания'),
(41, 2, 'Склад'),
(42, 2, 'Копировальная комната'),
(43, 2, 'Лаборатория'),
(44, 2, 'Лифтовая'),
(45, 2, 'Пекарня'),
(46, 2, 'Серверная'),
(47, 2, 'Вестибюль'),
(48, 2, 'Присторойка'),
(49, 2, 'Подвал'),
(50, 2, 'Парковка'),
(51, 2, 'Другое');

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE `scheme` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Latitude` decimal(10,0) DEFAULT NULL,
  `Longitude` decimal(10,0) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `Id` int(1) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Token` varchar(100) DEFAULT NULL,
  `Expire` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`Id`, `UserId`, `Token`, `Expire`) VALUES
(133, 1, '0c2bace8386568f3cd21c9ac94ffe3fc', 1564134413);

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `UserId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(1) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Date` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Name`, `Username`, `Password`, `Date`) VALUES
(1, 'Администратор', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 1530599384);

-- --------------------------------------------------------

--
-- Table structure for table `walls`
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
  `Date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `walls`
--

INSERT INTO `walls` (`Id`, `RoomId`, `Title`, `Description`, `X1`, `Y1`, `X2`, `Y2`, `Date`) VALUES
(1, 1, 'Стенка', 'Стенка без обоев', 123, 234, NULL, NULL, NULL),
(2, 1, '2', 'test', 1, 2, NULL, NULL, NULL),
(3, 1, '2', 'test', 1, 2, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `architecture`
--
ALTER TABLE `architecture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `elementsrooms`
--
ALTER TABLE `elementsrooms`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `RoomId` (`RoomId`,`ElementTypeId`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `SchemeId` (`SchemeId`),
  ADD KEY `FloorTypeId` (`FloorTypeId`),
  ADD KEY `HouseId` (`HouseId`);

--
-- Indexes for table `floorstypes`
--
ALTER TABLE `floorstypes`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `housesFloors`
--
ALTER TABLE `housesFloors`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `HouseFloor` (`HouseId`,`FloorId`),
  ADD KEY `HouseId` (`HouseId`),
  ADD KEY `FloorId` (`FloorId`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FloorId` (`FloorId`);

--
-- Indexes for table `roomstypes`
--
ALTER TABLE `roomstypes`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `userroles_ibfk_2` (`RoleId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `walls`
--
ALTER TABLE `walls`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `RoomId` (`RoomId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `architecture`
--
ALTER TABLE `architecture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elementsrooms`
--
ALTER TABLE `elementsrooms`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `floorstypes`
--
ALTER TABLE `floorstypes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `housesFloors`
--
ALTER TABLE `housesFloors`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roomstypes`
--
ALTER TABLE `roomstypes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `scheme`
--
ALTER TABLE `scheme`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `walls`
--
ALTER TABLE `walls`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `userroles`
--
ALTER TABLE `userroles`
  ADD CONSTRAINT `userroles_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `userroles_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
