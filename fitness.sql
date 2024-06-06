-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 06. Jun 2024 um 10:29
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `fitness`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `app_nutzer`
--

CREATE TABLE `app_nutzer` (
  `app_nutzer_id` int(11) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `größe` float DEFAULT NULL,
  `gewicht` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `app_nutzer`
--

INSERT INTO `app_nutzer` (`app_nutzer_id`, `nickname`, `größe`, `gewicht`) VALUES
(1, 'bogo', 1.83, 77),
(2, 'linus', 1.83, 68.83);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `muskel_gruppen`
--

CREATE TABLE `muskel_gruppen` (
  `muskel_id` int(11) NOT NULL,
  `muskel_b` varchar(50) DEFAULT NULL,
  `muskel_g` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `muskel_gruppen`
--

INSERT INTO `muskel_gruppen` (`muskel_id`, `muskel_b`, `muskel_g`) VALUES
(1, 'Brust', 'M'),
(2, 'Obere Brust', 'M'),
(3, 'Seitliche Schulter', 'K'),
(4, 'Vordere Schulter', 'K'),
(5, 'Hintere Schulter ', 'K'),
(6, 'Bizeps', 'K'),
(7, 'Trizeps', 'K'),
(8, 'Brachialis', 'K'),
(9, 'Unterarme', 'K'),
(10, 'Bauchmuskel', 'G'),
(11, 'Seitliche Bauchmuskel', 'M'),
(12, 'Trapez', 'G'),
(13, 'Latissimus', 'G'),
(14, 'Unterer Rücken', 'G'),
(15, 'Gesäßmuskel', 'M'),
(16, 'Beinbeuger', 'M'),
(17, 'Quadrizeps', 'G'),
(18, 'Waden', 'M');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `nutzer`
--

CREATE TABLE `nutzer` (
  `nutzer_id` int(11) NOT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `e_mail` varchar(125) DEFAULT NULL,
  `geb_datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `nutzer`
--

INSERT INTO `nutzer` (`nutzer_id`, `f_name`, `l_name`, `e_mail`, `geb_datum`) VALUES
(1, 'Bogdan', 'Nanu', 'bogtubeSSD@gmail.com', '2005-12-06'),
(2, 'Linus', 'Behrens', 'Linus@behrens-familie.de', '2005-10-14');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `übungen`
--

CREATE TABLE `übungen` (
  `übung_id` int(11) NOT NULL,
  `übung_b` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `übungen`
--

INSERT INTO `übungen` (`übung_id`, `übung_b`) VALUES
(1, 'Bankdrücken'),
(2, 'Schrägbankdrücken'),
(3, 'Dips'),
(4, 'Trizeps-Pushdows'),
(5, 'Seitheben'),
(6, 'Front-Raises'),
(7, 'French-press'),
(8, 'Butterfly'),
(9, 'Chestfly'),
(10, 'Liegestütz'),
(11, 'Trizeps-Extention'),
(12, 'Arnold-Press'),
(13, 'Hyperextension'),
(14, 'Deadlift'),
(15, 'Kreuzheben'),
(16, 'Rückenstrecker'),
(17, 'Reverse-Flys'),
(18, 'Face-Pull'),
(19, 'Hantelrudern'),
(20, 'Shrugs'),
(21, 'Farmerswalk'),
(22, 'Aufrecht-Rudern'),
(23, 'Klimmzüge'),
(24, 'Latzug-geraden-Griff'),
(25, 'Rudern'),
(26, 'Kurzhantelrudern'),
(27, 'T-Bar Rudern'),
(28, 'Curls'),
(29, 'Hammer-Curl'),
(30, 'Curls-im-Sitzen'),
(31, 'Spider-Curls'),
(32, 'Reverse-Curls'),
(33, 'Passiv-Hängen'),
(34, 'Aktiv-Hängen'),
(35, 'Sit-Ups'),
(36, 'Leg-raises');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `app_nutzer`
--
ALTER TABLE `app_nutzer`
  ADD PRIMARY KEY (`app_nutzer_id`);

--
-- Indizes für die Tabelle `muskel_gruppen`
--
ALTER TABLE `muskel_gruppen`
  ADD PRIMARY KEY (`muskel_id`);

--
-- Indizes für die Tabelle `nutzer`
--
ALTER TABLE `nutzer`
  ADD PRIMARY KEY (`nutzer_id`);

--
-- Indizes für die Tabelle `übungen`
--
ALTER TABLE `übungen`
  ADD PRIMARY KEY (`übung_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `app_nutzer`
--
ALTER TABLE `app_nutzer`
  MODIFY `app_nutzer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `muskel_gruppen`
--
ALTER TABLE `muskel_gruppen`
  MODIFY `muskel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT für Tabelle `nutzer`
--
ALTER TABLE `nutzer`
  MODIFY `nutzer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `übungen`
--
ALTER TABLE `übungen`
  MODIFY `übung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
