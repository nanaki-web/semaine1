-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 07 jan. 2021 à 16:07
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `oto`
--

-- --------------------------------------------------------

--
-- Structure de la table `accessoire`
--

DROP TABLE IF EXISTS `accessoire`;
CREATE TABLE IF NOT EXISTS `accessoire` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_article` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `accessoire`
--

INSERT INTO `accessoire` (`id`, `nom_article`, `prix`, `description`) VALUES
(1, 'gps tomtom', '399.99 ', 'Les points forts de ce produit :\r\n- Cartographie Monde 152 pays à vie.\r\n- Points d\'interêt spécifiques pour camping-car.\r\n- Calcul d\'itinéraire en fonction du gabarit du véhicule.\r\n- TomTom Traffic via carte SIM intégrée.\r\n- Alertes zones de danger à vie.'),
(2, 'Caméra de bord Angle de vue: 140° XBLITZ pour voitures - Z9Z9 Caméra embarquée Format vidéo: MOV, Résolution vidéo [pix]: 1920x1080, Diagonale écran: 2Pouces, microSD XBLITZ à petits prix à acheter dès maintenant !XBLITZ Caméra de bord', '59.85', 'Caméra de bord Angle de vue: 140° XBLITZ pour voitures - Z9Z9 Caméra embarquée Format vidéo: MOV, Résolution vidéo [pix]: 1920x1080, Diagonale écran: 2Pouces, microSD XBLITZ à petits prix à acheter dès maintenant !XBLITZ Caméra de bord\r\nFormat vidéo: MOV,'),
(3, 'gps tomtom', '59.85', 'Les points forts de ce produit :\r\n- Cartographie Monde 152 pays à vie.\r\n- Points d\'interêt spécifiques pour camping-car.\r\n- Calcul d\'itinéraire en fonction du gabarit du véhicule.\r\n- TomTom Traffic via carte SIM intégrée.\r\n- Alertes zones de danger à vie.'),
(4, 'Caméra de bord Angle de vue: 140° XBLITZ pour voitures - Z9Z9 Caméra embarquée Format vidéo: MOV, Résolution vidéo [pix]: 1920x1080, Diagonale écran: 2Pouces, microSD XBLITZ à petits prix à acheter dès maintenant !XBLITZ Caméra de bord', 'Caméra de bord Angle de vue: 140° XBLITZ pour voitures - Z9Z9 Caméra embarquée Format vidéo: MOV, Résolution vidéo [pix]: 1920x1080, Diagonale écran: 2Pouces, microSD XBLITZ à petits prix à acheter dès maintenant !XBLITZ Caméra de bord\r\nFormat vidéo: MOV,', 'Caméra de bord Angle de vue: 140° XBLITZ pour voitures - Z9Z9 Caméra embarquée Format vidéo: MOV, Résolution vidéo [pix]: 1920x1080, Diagonale écran: 2Pouces, microSD XBLITZ à petits prix à acheter dès maintenant !XBLITZ Caméra de bord\r\nFormat vidéo: MOV,');

-- --------------------------------------------------------

--
-- Structure de la table `atelier`
--

DROP TABLE IF EXISTS `atelier`;
CREATE TABLE IF NOT EXISTS `atelier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `modele` varchar(255) NOT NULL,
  `prix` int NOT NULL,
  `type d'intervention` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `moyen de paiement` varchar(255) NOT NULL COMMENT 'comptant/carte ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `option`
--

DROP TABLE IF EXISTS `option`;
CREATE TABLE IF NOT EXISTS `option` (
  `id` int NOT NULL AUTO_INCREMENT,
  `intitulé` varchar(255) NOT NULL,
  `prix` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `option`
--

INSERT INTO `option` (`id`, `intitulé`, `prix`) VALUES
(1, 'Pack Stationnement avec caméras panoramiques', 500),
(2, 'Pack Assistance à la conduite', 300),
(3, 'Projecteurs MULTIBEAM LED', 200),
(4, 'Live Traffic Information', 200);

-- --------------------------------------------------------

--
-- Structure de la table `vehicule_occasion`
--

DROP TABLE IF EXISTS `vehicule_occasion`;
CREATE TABLE IF NOT EXISTS `vehicule_occasion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(255) NOT NULL,
  `modele` varchar(255) NOT NULL,
  `serie` int NOT NULL,
  `kilometrage` int NOT NULL,
  `id_option` int NOT NULL,
  `id_accessoire` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `véhicule_neuf`
--

DROP TABLE IF EXISTS `véhicule_neuf`;
CREATE TABLE IF NOT EXISTS `véhicule_neuf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `num_serie` int NOT NULL,
  `kilometrage` int NOT NULL,
  `couleur` varchar(255) NOT NULL,
  `puissance fiscal` int NOT NULL,
  `prix` int NOT NULL,
  `marque` varchar(255) NOT NULL,
  `modele` varchar(255) NOT NULL,
  `id_option` int NOT NULL,
  `id_accessoire` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
