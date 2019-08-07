-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: Aug 01, 2019 at 08:16 AM
-- Server version: 5.7.27
-- PHP Version: 7.2.19

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
  `id_floor` int(11) NOT NULL,
  `name` varchar(190) CHARACTER SET utf8mb4 DEFAULT 'NULL',
  `url` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, NULL, NULL, 2, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 00:00:00'),
(2, NULL, NULL, 2, 'dfsdf', 'sdfs', '12312', '123123', '1231', '2019-07-09 00:00:00'),
(3, NULL, NULL, 2, 'dfsdf', 'sdfs', '12312', '123123', '1231', '2019-07-09 00:00:00'),
(4, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(5, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(6, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(7, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(8, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(9, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(10, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(11, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(12, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(13, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(14, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(15, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(16, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(17, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(18, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(19, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(20, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(21, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(22, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(23, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(24, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(25, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(26, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(27, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(28, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(29, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(30, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(31, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(32, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(33, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(34, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(35, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(36, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(37, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(38, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(39, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(40, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(41, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(42, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(43, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(44, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(45, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(46, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(47, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37'),
(48, NULL, NULL, 42, 'Этаж 1', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:16'),
(49, NULL, NULL, 42, 'Этаж 2', 'Описание этажа', NULL, NULL, NULL, '2019-07-31 16:48:37');

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
(1, 'Left side'),
(2, 'Left side'),
(3, 'Right side'),
(4, 'Bottom side'),
(5, 'Roof side');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `Author` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Address` text CHARACTER SET utf8mb4 NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime DEFAULT CURRENT_TIMESTAMP,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`Id`, `Title`, `Author`, `Address`, `Description`, `Date`, `Latitude`, `Longitude`) VALUES
(11, 'Washington Museum', 'John Cage', 'asdasdasd', 'Huston Avenue 14th, WA', '2005-05-05 00:00:00', 1231, 123123),
(12, 'Тестовый дом', NULL, 'Huston avenue', 'Описание дома', '2019-07-31 00:00:00', 446878, 0),
(13, 'Тестовый дом', NULL, 'Адрес дома', 'Описание дома', '2019-07-31 16:47:42', 0, 0),
(14, 'Тестовый дом', NULL, 'Адрес дома', 'Описание дома', '2019-07-31 16:47:42', 0, 0),
(15, 'Тестовый дом', NULL, 'Адрес дома', 'Описание дома', '2019-07-31 16:47:42', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `housesFloors`
--

CREATE TABLE `housesFloors` (
  `Id` int(11) NOT NULL,
  `HouseId` int(11) DEFAULT NULL,
  `FloorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `housesFloors`
--

INSERT INTO `housesFloors` (`Id`, `HouseId`, `FloorId`) VALUES
(1, 11, 1);

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
  `Coordinaties` text,
  `Date` datetime DEFAULT CURRENT_TIMESTAMP,
  `Color` varchar(255) DEFAULT NULL,
  `RoomTypeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`Id`, `FloorId`, `Title`, `Description`, `CeilingHeight`, `X`, `Y`, `Degree`, `Coordinaties`, `Date`, `Color`, `RoomTypeId`) VALUES
(4, 1, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-07-31 14:49:09', 'd3d3d3', 10),
(5, 10, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-01 08:01:32', '#d3d3d3', 10),
(6, 10, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-01 08:01:32', '#d3d3d3', 9),
(7, 11, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-01 08:01:32', '#d3d3d3', 2),
(8, 11, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-01 08:01:32', '#d3d3d3', 3),
(9, 11, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-01 08:01:32', '#d3d3d3', 8),
(10, 10, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-01 08:05:22', '#d3d3d3', 10),
(11, 10, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-01 08:05:22', '#d3d3d3', 9),
(12, 11, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-01 08:05:22', '#d3d3d3', 2),
(13, 11, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-01 08:05:22', '#d3d3d3', 3),
(14, 11, '', '', 2.4, NULL, NULL, NULL, NULL, '2019-08-01 08:05:22', '#d3d3d3', 8);

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
(1, 1, 'Kitchen'),
(2, 1, 'Kitchen'),
(3, 1, 'Living room'),
(4, 1, 'Balcone'),
(5, 1, 'Bathroom'),
(6, 1, 'Bedroom'),
(7, 1, 'asdasd'),
(8, 1, 'asdasd'),
(9, 2, 'Гардероб'),
(10, 2, 'Гардероб'),
(11, 4, 'Коридор'),
(12, 4, 'Коридор'),
(13, 4, 'Коридор'),
(14, 4, 'Коридор'),
(15, 4, 'Коридор'),
(16, 4, 'Коридор'),
(17, 4, 'Коридор'),
(18, 2, 'Гардероб');

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
  `Date` date NOT NULL
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
(2, 1, 'ecd1b54ea987e79d7985bfcb7c9676b9', 1564656547),
(3, 1, '282f9c18dae14dd6338ae1a70677fc2c', 1564733532);

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
  `Date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `walls`
--

INSERT INTO `walls` (`Id`, `RoomId`, `Title`, `Description`, `X1`, `Y1`, `X2`, `Y2`, `Date`) VALUES
(2, 4, NULL, NULL, 588, 709, 988, 709, NULL),
(3, 5, NULL, NULL, 588, 709, 988, 709, NULL),
(4, 5, NULL, NULL, 988, 709, 988, 309, NULL),
(5, 5, NULL, NULL, 988, 309, 588, 309, NULL),
(6, 5, NULL, NULL, 588, 309, 588, 709, NULL),
(7, 6, NULL, NULL, 988, 709, 1388, 709, NULL),
(8, 6, NULL, NULL, 1388, 709, 1388, 309, NULL),
(9, 6, NULL, NULL, 1388, 309, 988, 309, NULL),
(10, 6, NULL, NULL, 988, 309, 988, 709, NULL),
(11, 7, NULL, NULL, 437.935, 714.065, 837.935, 714.065, NULL),
(12, 7, NULL, NULL, 837.935, 714.065, 837.935, 314.065, NULL),
(13, 7, NULL, NULL, 837.935, 314.065, 437.935, 314.065, NULL),
(14, 7, NULL, NULL, 437.935, 314.065, 437.935, 714.065, NULL),
(15, 8, NULL, NULL, 837.935, 714.065, 1237.94, 714.065, NULL),
(16, 8, NULL, NULL, 1237.94, 714.065, 1237.94, 314.065, NULL),
(17, 8, NULL, NULL, 1237.94, 314.065, 837.935, 314.065, NULL),
(18, 8, NULL, NULL, 837.935, 314.065, 837.935, 714.065, NULL),
(19, 9, NULL, NULL, 1237.94, 714.065, 1637.94, 714.065, NULL),
(20, 9, NULL, NULL, 1637.94, 714.065, 1637.94, 314.065, NULL),
(21, 9, NULL, NULL, 1637.94, 314.065, 1237.94, 314.065, NULL),
(22, 9, NULL, NULL, 1237.94, 314.065, 1237.94, 714.065, NULL),
(23, 5, NULL, NULL, 588, 709, 988, 709, NULL),
(24, 5, NULL, NULL, 988, 709, 988, 309, NULL),
(25, 5, NULL, NULL, 988, 309, 588, 309, NULL),
(26, 5, NULL, NULL, 588, 309, 588, 709, NULL),
(27, 6, NULL, NULL, 988, 709, 1388, 709, NULL),
(28, 6, NULL, NULL, 1388, 709, 1388, 309, NULL),
(29, 6, NULL, NULL, 1388, 309, 988, 309, NULL),
(30, 6, NULL, NULL, 988, 309, 988, 709, NULL),
(31, 7, NULL, NULL, 437.935, 714.065, 837.935, 714.065, NULL),
(32, 7, NULL, NULL, 837.935, 714.065, 837.935, 314.065, NULL),
(33, 7, NULL, NULL, 837.935, 314.065, 437.935, 314.065, NULL),
(34, 7, NULL, NULL, 437.935, 314.065, 437.935, 714.065, NULL),
(35, 8, NULL, NULL, 837.935, 714.065, 1237.94, 714.065, NULL),
(36, 8, NULL, NULL, 1237.94, 714.065, 1237.94, 314.065, NULL),
(37, 8, NULL, NULL, 1237.94, 314.065, 837.935, 314.065, NULL),
(38, 8, NULL, NULL, 837.935, 314.065, 837.935, 714.065, NULL),
(39, 9, NULL, NULL, 1237.94, 714.065, 1637.94, 714.065, NULL),
(40, 9, NULL, NULL, 1637.94, 714.065, 1637.94, 314.065, NULL),
(41, 9, NULL, NULL, 1637.94, 314.065, 1237.94, 314.065, NULL),
(42, 9, NULL, NULL, 1237.94, 314.065, 1237.94, 714.065, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `architecture`
--
ALTER TABLE `architecture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `architecture_floors_Id_fk` (`id_floor`);

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
  ADD PRIMARY KEY (`Id`),
  ADD KEY `images_floors_Id_fk` (`id_floor`);

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
  ADD KEY `FloorId` (`FloorId`),
  ADD KEY `rooms_roomstypes_Id_fk` (`RoomTypeId`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `floorstypes`
--
ALTER TABLE `floorstypes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `housesFloors`
--
ALTER TABLE `housesFloors`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roomstypes`
--
ALTER TABLE `roomstypes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `scheme`
--
ALTER TABLE `scheme`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `walls`
--
ALTER TABLE `walls`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `architecture`
--
ALTER TABLE `architecture`
  ADD CONSTRAINT `architecture_floors_Id_fk` FOREIGN KEY (`id_floor`) REFERENCES `floors` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `floors`
--
ALTER TABLE `floors`
  ADD CONSTRAINT `floors_floorstypes_Id_fk` FOREIGN KEY (`FloorTypeId`) REFERENCES `floorstypes` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `floors_scheme_Id_fk` FOREIGN KEY (`SchemeId`) REFERENCES `scheme` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `housesFloors`
--
ALTER TABLE `housesFloors`
  ADD CONSTRAINT `housesFloors_floors_Id_fk` FOREIGN KEY (`FloorId`) REFERENCES `floors` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `housesFloors_houses_Id_fk` FOREIGN KEY (`HouseId`) REFERENCES `houses` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_floors_Id_fk` FOREIGN KEY (`id_floor`) REFERENCES `floors` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_floors_Id_fk` FOREIGN KEY (`FloorId`) REFERENCES `floors` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rooms_roomstypes_Id_fk` FOREIGN KEY (`RoomTypeId`) REFERENCES `roomstypes` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userroles`
--
ALTER TABLE `userroles`
  ADD CONSTRAINT `userroles_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `userroles_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `walls`
--
ALTER TABLE `walls`
  ADD CONSTRAINT `walls_rooms_Id_fk` FOREIGN KEY (`RoomId`) REFERENCES `rooms` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
