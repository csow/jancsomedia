-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Okt 04. 15:48
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `jancsomedia`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `left_column`
--

CREATE TABLE `left_column` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `left_column`
--

INSERT INTO `left_column` (`id`, `name`, `position`) VALUES
(170, 'Poun', 1),
(172, 'Lion', 2),
(176, 'Tiger', 6),
(186, 'Fish', 5),
(193, 'Horse', 4),
(222, 'Dog', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `right_column`
--

CREATE TABLE `right_column` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `right_column`
--

INSERT INTO `right_column` (`id`, `name`, `position`) VALUES
(81, 'House', 4),
(83, 'Car', 6),
(92, 'Chair', 5),
(101, 'Wall', 1),
(106, 'Lamp', 2),
(127, 'Truck', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$.jZv6g6cJyS3l9/GdkP28.vszCcqMdGcC/vIdyEUDG05jZF5DSXtq');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `left_column`
--
ALTER TABLE `left_column`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- A tábla indexei `right_column`
--
ALTER TABLE `right_column`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `left_column`
--
ALTER TABLE `left_column`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT a táblához `right_column`
--
ALTER TABLE `right_column`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
