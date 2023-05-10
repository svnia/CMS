-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Maj 2023, 11:47
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cms`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`, `value`) VALUES
(9, 33, 3, 1),
(10, 32, 3, 1),
(14, 34, 3, -1),
(16, 32, 4, 1),
(19, 33, 4, 1),
(20, 34, 4, -1),
(22, 35, 4, -1),
(23, 37, 6, 1),
(26, 39, 6, 1),
(27, 38, 6, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `filename` varchar(265) NOT NULL,
  `title` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `removed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `post`
--

INSERT INTO `post` (`id`, `timestamp`, `filename`, `title`, `userId`, `removed`) VALUES
(38, '2023-05-10 11:31:50', 'img/3e66a07232fa63a24997484b973672f8c2600de0c43b06ba6bb632c73189a5d1.webp', 'mateusztyda', 6, 0),
(39, '2023-05-10 11:32:50', 'img/9776bce0a983bf79488c3d18ea680c737e107154a6a96d59166abdc8ad61ce81.webp', 'piesek', 6, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(3, 'admin@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$ckZNTmlXN2RqdkxHSEI4bw$PGCbzNxX+BDxAiyuMQTEXSL+FEhAVW7Yk5taypMwyLw'),
(4, 'admin1@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$TGhtSHpNbFI4T0wuZExnNg$seHgC/xXaxEd2YzFrt+X5AnoLNLc2/Ul65Q1+2jt+64'),
(5, 'adf@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$WFdGbzhveWQucDBuN0E2Tg$+HB8SFqqUV2K9NiZ9FaSAY57Rv6+rdN+6v0zub2FV/I'),
(6, 'tomaszpiesikkontakt@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$RWpYd3RZakNQUFFYa0o4OA$TNiXkpwvYQ4JJ8k2QjqGXhLhlYvgTsePIef7m2coFeM'),
(7, 'tomaszpiesikksontakt@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$Rk1FQ0FPRjhCYW9ZcDgvUQ$gOa+OpSfhqnmiD34BdKT73WoIL4grP1hSRHVEEJKKq8'),
(8, 'tomaszpiesikksontakt@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$R004ZUN3dmplSk5BUUNEQQ$FIt0vwHUCDh1aFBMdlbfKAyTxDgB9pWFssiudUlyWjE');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT dla tabeli `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
