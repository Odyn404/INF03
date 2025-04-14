-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Mar 2023, 06:25
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wedkowanie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lowisko`
--

CREATE TABLE `lowisko` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `akwen` text DEFAULT NULL,
  `wojewodztwo` text DEFAULT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `lowisko`
--

INSERT INTO `lowisko` (`id`, `Ryby_id`, `akwen`, `wojewodztwo`, `rodzaj`) VALUES
(1, 2, 'Zalew Wegrowski', 'Mazowieckie', 4),
(2, 3, 'Zbiornik Bukowka', 'Dolnoslaskie', 2),
(3, 2, 'Jeziorko Bartbetowskie', 'Warminsko-Mazurskie', 2),
(4, 1, 'Warta-Obrzycko', 'Wielkopolskie', 3),
(5, 2, 'Stawy Milkow', 'Podkarpackie', 5),
(6, 7, 'Przemsza k. Okradzinowa', 'Slaskie', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `okres_ochronny`
--

CREATE TABLE `okres_ochronny` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `od_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `do_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `wymiar_ochronny` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `okres_ochronny`
--

INSERT INTO `okres_ochronny` (`id`, `Ryby_id`, `od_miesiaca`, `do_miesiaca`, `wymiar_ochronny`) VALUES
(1, 1, 1, 4, 50),
(2, 2, 0, 0, 30),
(3, 3, 1, 5, 50),
(4, 4, 0, 0, 15),
(5, 5, 11, 6, 70),
(6, 6, 0, 0, 0),
(7, 7, 0, 0, 0),
(8, 8, 0, 0, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby`
--

CREATE TABLE `ryby` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `wystepowanie` text DEFAULT NULL,
  `styl_zycia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `ryby`
--

INSERT INTO `ryby` (`id`, `nazwa`, `wystepowanie`, `styl_zycia`) VALUES
(1, 'Szczupak', 'stawy, rzeki', 1),
(2, 'Karp', 'stawy, jeziora', 2),
(3, 'Sandacz', 'stawy, jeziora, rzeki', 1),
(4, 'Okon', 'rzeki', 1),
(5, 'Sum', 'jeziora, rzeki', 1),
(6, 'Dorsz', 'morza, oceany', 1),
(7, 'Leszcz', 'jeziora', 2),
(8, 'Lin', 'jeziora', 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `ryby`
--
ALTER TABLE `ryby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
