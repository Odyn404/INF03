-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 21, 2024 at 11:00 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `podroze`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kadra`
--

CREATE TABLE `kadra` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `stanowisko` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kadra`
--

INSERT INTO `kadra` (`id`, `imie`, `nazwisko`, `stanowisko`) VALUES
(1, 'Anna', 'Kowalska', 'dietetyk'),
(2, 'Jolanta', 'Szczesny', 'kosmetolog'),
(3, 'Aleksandra', 'Wilk', 'stylista'),
(4, 'Katarzyna', 'Nowak', 'fryzjer'),
(5, 'Piotr', 'Bartczak', 'fizjoterapeuta');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `matematycy`
--

CREATE TABLE `matematycy` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `rok_urodzenia` int(10) DEFAULT NULL,
  `liczba_publikacji` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `matematycy`
--

INSERT INTO `matematycy` (`id`, `imie`, `nazwisko`, `rok_urodzenia`, `liczba_publikacji`) VALUES
(1, 'Stefan', 'Banach', 1892, 20),
(2, 'Leonardo', 'Fibonacci', 1175, 15),
(3, 'Augustin', 'Cauchy', 1789, 10),
(4, 'Leonard', 'Euler', 1707, 30),
(5, 'Gotfried', 'Leibniz', 1646, 40);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `typy`
--

INSERT INTO `typy` (`id`, `kategoria`) VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslugi`
--

CREATE TABLE `uslugi` (
  `id` int(10) UNSIGNED NOT NULL,
  `kadra_id` int(10) UNSIGNED NOT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL,
  `nazwa` text DEFAULT NULL,
  `cena` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uslugi`
--

INSERT INTO `uslugi` (`id`, `kadra_id`, `rodzaj`, `nazwa`, `cena`) VALUES
(1, 2, 1, 'Piling enzymatyczny', 45),
(2, 5, 3, 'Masaz twarzy', 20),
(3, 2, 1, 'Maska', 30),
(4, 2, 1, 'Regulacja brwi', 5),
(5, 4, 2, 'Farbowanie', 50),
(6, 4, 2, 'Strzyzenie', 40),
(7, 1, 3, 'Ustalenie diety', 70),
(8, 2, 1, 'Henna', 10),
(9, 2, 1, 'Paznokcie', 90),
(10, 4, 2, 'Czesanie', 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wycieczki`
--

CREATE TABLE `wycieczki` (
  `id` int(10) UNSIGNED NOT NULL,
  `zdjecia_id` int(10) UNSIGNED NOT NULL,
  `dataWyjazdu` date DEFAULT NULL,
  `cel` text DEFAULT NULL,
  `cena` double DEFAULT NULL,
  `dostepna` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wycieczki`
--

INSERT INTO `wycieczki` (`id`, `zdjecia_id`, `dataWyjazdu`, `cel`, `cena`, `dostepna`) VALUES
(1, 2, '2019-09-08', 'Wlochy, Wenecja', 1200, 1),
(2, 2, '2019-09-14', 'Wlochy, Wenecja', 1200, 1),
(3, 4, '2019-08-14', 'Polska, Warszawa', 640, 1),
(4, 6, '2019-08-14', 'Francja, Paryz', 1300, 1),
(5, 6, '2019-07-14', 'Francja, Paryz', 1350, 0),
(6, 6, '2019-09-14', 'Francja, Paryz', 1200, 1),
(7, 8, '2019-07-14', 'Hiszpania, Barcelona', 1500, 0),
(8, 8, '2019-08-14', 'Hiszpania, Barcelona', 1500, 0),
(9, 8, '2019-09-14', 'Hiszpania, Barcelona', 1400, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wyniki`
--

INSERT INTO `wyniki` (`id`, `dyscyplina_id`, `sportowiec_id`, `wynik`, `dataUstanowienia`) VALUES
(1, 1, 1, 12.40, '2015-10-14'),
(2, 1, 1, 12.00, '2015-10-06'),
(3, 1, 2, 11.80, '2015-10-14'),
(4, 1, 2, 11.90, '2015-10-06'),
(5, 1, 3, 11.50, '2015-10-14'),
(6, 1, 3, 11.56, '2015-10-06'),
(7, 1, 4, 11.70, '2015-10-14'),
(8, 1, 4, 11.67, '2015-10-06'),
(9, 1, 5, 11.30, '2015-10-14'),
(10, 1, 5, 11.52, '2015-10-06'),
(11, 1, 6, 12.10, '2015-10-14'),
(12, 1, 6, 12.00, '2015-10-06'),
(13, 3, 1, 63.00, '2015-11-11'),
(14, 3, 1, 63.60, '2015-10-13'),
(15, 3, 2, 64.00, '2015-11-11'),
(16, 3, 2, 63.60, '2015-10-13'),
(17, 3, 3, 60.00, '2015-11-11'),
(18, 3, 3, 61.60, '2015-10-13'),
(19, 3, 4, 63.50, '2015-11-11'),
(20, 3, 4, 63.60, '2015-10-13'),
(21, 3, 5, 70.00, '2015-10-07'),
(22, 3, 6, 68.00, '2015-10-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

CREATE TABLE `zdjecia` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwaPliku` text DEFAULT NULL,
  `podpis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zdjecia`
--

INSERT INTO `zdjecia` (`id`, `nazwaPliku`, `podpis`) VALUES
(1, '1.jpg', 'Londyn'),
(2, '2.jpg', 'Wenecja'),
(3, '3.jpg', 'Berlin'),
(4, '4.jpg', 'Warszawa'),
(5, '5.jpg', 'Budapeszt'),
(6, '6.jpg', 'Paryz'),
(7, '7.jpg', 'Nowy Jork'),
(8, '8.jpg', 'Barcelona'),
(9, '9.jpg', 'Moskwa');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kadra`
--
ALTER TABLE `kadra`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uslugi_FKIndex1` (`kadra_id`);

--
-- Indeksy dla tabeli `wycieczki`
--
ALTER TABLE `wycieczki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kadra`
--
ALTER TABLE `kadra`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wycieczki`
--
ALTER TABLE `wycieczki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
