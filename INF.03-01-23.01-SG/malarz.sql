-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 08:21 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `malarz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `farby`
--

CREATE TABLE `farby` (
  `id_farby` int(11) NOT NULL,
  `kolor` text NOT NULL,
  `cena` int(11) NOT NULL,
  `pojemnosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farby`
--

INSERT INTO `farby` (`id_farby`, `kolor`, `cena`, `pojemnosc`) VALUES
(1, 'bialy', 20, 5),
(2, 'czerwony', 30, 3),
(3, 'niebieski', 35, 3),
(4, 'żółty', 22, 4),
(5, 'zielony', 30, 4),
(6, 'czarny', 50, 2),
(7, 'fioletowy', 64, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `malowanie`
--

CREATE TABLE `malowanie` (
  `id_pomieszczenia` int(11) NOT NULL,
  `id_sciany` int(11) NOT NULL,
  `id_farby` int(11) DEFAULT NULL,
  `liczba_puszek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `malowanie`
--

INSERT INTO `malowanie` (`id_pomieszczenia`, `id_sciany`, `id_farby`, `liczba_puszek`) VALUES
(1, 1, 1, 3),
(1, 2, 3, 2),
(1, 3, 1, 3),
(1, 4, 1, 2),
(2, 1, 7, 4),
(2, 2, 6, 3),
(2, 3, 5, 5),
(2, 4, 3, 2),
(3, 1, 5, 2),
(3, 2, 2, 2),
(4, 4, 5, 2),
(5, 1, 2, 2),
(5, 2, 6, 4);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `pomieszczenie1`
-- (See below for the actual view)
--
CREATE TABLE `pomieszczenie1` (
`id_sciany` int(11)
,`id_farby` int(11)
,`liczba_puszek` int(11)
);

-- --------------------------------------------------------

--
-- Struktura widoku `pomieszczenie1`
--
DROP TABLE IF EXISTS `pomieszczenie1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pomieszczenie1`  AS SELECT `malowanie`.`id_sciany` AS `id_sciany`, `malowanie`.`id_farby` AS `id_farby`, `malowanie`.`liczba_puszek` AS `liczba_puszek` FROM `malowanie` WHERE `malowanie`.`id_pomieszczenia` = 1 ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `farby`
--
ALTER TABLE `farby`
  ADD PRIMARY KEY (`id_farby`);

--
-- Indeksy dla tabeli `malowanie`
--
ALTER TABLE `malowanie`
  ADD PRIMARY KEY (`id_pomieszczenia`,`id_sciany`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
