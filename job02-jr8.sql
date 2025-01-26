-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 26 jan. 2025 à 13:38
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jour08`
--

-- --------------------------------------------------------

--
-- Structure de la table `etage`
--

DROP TABLE IF EXISTS `etage`;
CREATE TABLE IF NOT EXISTS `etage` (
  `id` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `numero` int NOT NULL,
  `superfecie` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `etage`
--

INSERT INTO `etage` (`id`, `nom`, `numero`, `superfecie`) VALUES
(1, 'rdc', 0, 500),
(2, 'R+1', 1, 500);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `id` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `date de naissance` date NOT NULL,
  `sexe` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `date de naissance`, `sexe`, `email`) VALUES
(0, 'Zimmermann', 'Cyril', '1989-01-02', 'Homme', 'cyril@laplateforme.io'),
(0, 'Zimmermann', 'Cyril', '1989-01-02', 'Homme', 'cyril@laplateforme.io'),
(0, 'Soriano', 'Jessica', '1995-09-08', 'Femme', 'jessica@laplateforme.io'),
(0, 'Roumégas', 'Roxan', '2016-09-08', 'Homme', 'roxan@laplateforme.io'),
(0, 'Assens', 'Pascal', '1999-12-31', 'Homme', 'pascal@laplateforme.io'),
(0, 'Cristinelli', 'Terry', '2005-02-01', 'Homme', 'terry@laplateforme.io'),
(0, 'Habib', 'Ruben', '1993-05-26', 'Homme', 'ruben.habib@laplateforme.io'),
(0, 'Dupont', 'Toto', '2019-11-07', 'Homme', 'toto@laplateforme.io'),
(0, 'Zimmermann', 'Cyril', '1989-01-02', 'Homme', 'cyril@laplateforme.io'),
(0, 'Soriano', 'Jessica', '1995-09-08', 'Femme', 'jessica@laplateforme.io'),
(0, 'Roumégas', 'Roxan', '2016-09-08', 'Homme', 'roxan@laplateforme.io'),
(0, 'Assens', 'Pascal', '1999-12-31', 'Homme', 'pascal@laplateforme.io'),
(0, 'Cristinelli', 'Terry', '2005-02-01', 'Homme', 'terry@laplateforme.io'),
(0, 'Habib', 'Ruben', '1993-05-26', 'Homme', 'ruben.habib@laplateforme.io'),
(0, 'Dupont', 'Toto', '2019-11-07', 'Homme', 'toto@laplateforme.io');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `id` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `id_etage` int NOT NULL,
  `capacité` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id`, `nom`, `id_etage`, `capacité`) VALUES
(1, 'lounge', 1, 100),
(3, 'Broadcasting', 2, 50),
(4, 'bocal peda', 2, 4),
(5, 'coworcking', 2, 80),
(6, 'studio video', 2, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
