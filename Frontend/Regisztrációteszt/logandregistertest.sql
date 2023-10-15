-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Okt 15. 07:01
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `logandregistertest`
--
CREATE DATABASE IF NOT EXISTS `logandregistertest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `logandregistertest`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `userek`
--

DROP TABLE IF EXISTS `userek`;
CREATE TABLE `userek` (
  `EMAIL` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `UPASS` varchar(50) NOT NULL,
  `UREPASS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `userek`
--

INSERT INTO `userek` (`EMAIL`, `USERNAME`, `UPASS`, `UREPASS`) VALUES
('connectproba@hahaha.com', 'connect', 'jajaja', 'jajaja'),
('teszt@valami.hu', 'teszt', 'teszt', 'teszt'),
('valami@valami.hu', 'valami', 'kaka', 'kaka');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `userek`
--
ALTER TABLE `userek`
  ADD PRIMARY KEY (`EMAIL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
