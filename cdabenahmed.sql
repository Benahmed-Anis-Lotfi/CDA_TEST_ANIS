-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 06 sep. 2021 à 19:01
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cdabenahmed`
--
CREATE DATABASE IF NOT EXISTS `cdabenahmed` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cdabenahmed`;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

DROP TABLE IF EXISTS `ville`;
CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `nomville` varchar(40) NOT NULL,
  `nomdep` varchar(50) NOT NULL,
  `cp` int(5) NOT NULL,
  `datemaj` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `nomville`, `nomdep`, `cp`, `datemaj`) VALUES
(1, 'Montpellier', 'Hérault', 34000, '2021-09-06 18:57:39'),
(2, 'Strasbourg', 'Bas-Rhin', 67000, '2021-09-06 18:57:39'),
(3, 'Ostwald', 'Bas-Rhin', 67540, '2021-09-06 18:57:39'),
(4, 'Amiens', 'Somme', 80000, '2021-09-06 18:57:39'),
(5, 'Dunkerque', 'Nord', 59140, '2021-09-06 18:57:39');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
