-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 01 juin 2020 à 15:03
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `essentialmode`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

DROP TABLE IF EXISTS `addon_account`;
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('society_police', 'Police', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_ambulance', 'Ambulance', 1),
('society_mecano', 'Mécano', 1),
('caution', 'Caution', 0),
('society_army', 'Army', 1),
('society_sheriff', 'Sheriff', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vigne', 'Vigneron', 1),
('society_bahama', 'bahama', 1),
('society_banker', 'Banque', 1),
('bank_savings', 'Livret Bleu', 0),
('society_oneil', 'oneil', 1),
('property_black_money', 'Argent Sale Propriété', 0),
('society_beekers', 'Beekers', 1),
('society_gouvernor', 'Gouvernement', 1),
('society_journaliste', 'journaliste', 1),
('society_cartel', 'cartel', 1),
('society_families', 'families', 1),
('society_ballas', 'ballas', 1),
('society_vagos', 'vagos', 1),
('society_biker', 'Biker', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

DROP TABLE IF EXISTS `addon_account_data`;
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_police', 0, NULL),
(2, 'society_cardealer', 0, NULL),
(3, 'society_ambulance', 0, NULL),
(4, 'society_mecano', 0, NULL),
(5, 'society_army', 0, NULL),
(6, 'society_sheriff', 0, NULL),
(7, 'society_realestateagent', 0, NULL),
(8, 'society_tabac', 0, NULL),
(9, 'society_taxi', 0, NULL),
(10, 'society_unicorn', 0, NULL),
(11, 'society_vigne', 0, NULL),
(12, 'society_bahama', 0, NULL),
(13, 'society_banker', 0, NULL),
(14, 'society_oneil', 0, NULL),
(15, 'society_beekers', 0, NULL),
(16, 'society_gouvernor', 0, NULL),
(17, 'society_journaliste', 0, NULL),
(18, 'society_cartel', 0, NULL),
(19, 'society_families', 0, NULL),
(20, 'society_ballas', 0, NULL),
(21, 'society_vagos', 0, NULL),
(22, 'society_biker', 0, NULL),
(23, 'caution', 0, 'steam:110000118e987a2'),
(24, 'property_black_money', 0, 'steam:110000118e987a2'),
(25, 'bank_savings', 0, 'steam:110000118e987a2');

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

DROP TABLE IF EXISTS `addon_inventory`;
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('society_police', 'Police', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_ambulance', 'Ambulance', 1),
('society_mecano', 'Mécano', 1),
('society_army', 'Army', 1),
('society_sheriff', 'Sheriff', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_vigne', 'Vigneron', 1),
('society_bahama', 'bahama', 1),
('society_bahama_fridge', 'bahama (frigo)', 1),
('society_oneil', 'oneil', 1),
('property', 'Propriété', 0),
('society_vagos', 'vagos', 1),
('society_ballas', 'ballas', 1),
('society_families', 'families', 1),
('society_cartel', 'cartel', 1),
('society_nightclub', 'Nightclub', 1),
('society_nightclub_fridge', 'Nightclub (fridge)', 1),
('society_biker', 'Biker', 1),
('society_journaliste', 'journaliste', 1),
('society_beekers', 'Beekers', 1),
('society_gouvernor', 'Gouvernement', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

DROP TABLE IF EXISTS `addon_inventory_items`;
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `baninfo`
--

DROP TABLE IF EXISTS `baninfo`;
CREATE TABLE IF NOT EXISTS `baninfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `banlist`
--

DROP TABLE IF EXISTS `banlist`;
CREATE TABLE IF NOT EXISTS `banlist` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `banlisthistory`
--

DROP TABLE IF EXISTS `banlisthistory`;
CREATE TABLE IF NOT EXISTS `banlisthistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

DROP TABLE IF EXISTS `billing`;
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

DROP TABLE IF EXISTS `cardealer_vehicles`;
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cardealer_vehicles`
--

INSERT INTO `cardealer_vehicles` (`id`, `vehicle`, `price`) VALUES
(1, 'bmx', 160),
(2, 'bmx', 160),
(3, 'blista', 8000),
(4, 'AKUMA', 7500),
(5, 'brabus700', 150000),
(6, 'lp610', 150000),
(7, 'gtcl', 150000),
(8, 'demon', 150000);

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

DROP TABLE IF EXISTS `datastore`;
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('society_police', 'Police', 1),
('society_ambulance', 'Ambulance', 1),
('society_army', 'Army', 1),
('society_sheriff', 'Sheriff', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vigne', 'Vigneron', 1),
('society_bahama', 'bahama', 1),
('society_oneil', 'oneil', 1),
('property', 'Propriété', 0),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0),
('society_gouvernor', 'Gouvernement', 1),
('society_journaliste', 'journaliste', 1),
('society_cartel', 'cartel', 1),
('society_families', 'families', 1),
('society_ballas', 'ballas', 1),
('society_vagos', 'vagos', 1),
('society_biker', 'Biker', 1);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

DROP TABLE IF EXISTS `datastore_data`;
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_police', NULL, '{}'),
(2, 'society_ambulance', NULL, '{}'),
(3, 'society_army', NULL, '{}'),
(4, 'society_sheriff', NULL, '{}'),
(5, 'society_tabac', NULL, '{}'),
(6, 'society_taxi', NULL, '{}'),
(7, 'society_unicorn', NULL, '{}'),
(8, 'society_vigne', NULL, '{}'),
(9, 'society_bahama', NULL, '{}'),
(10, 'society_oneil', NULL, '{}'),
(11, 'society_gouvernor', NULL, '{}'),
(12, 'society_journaliste', NULL, '{}'),
(13, 'society_cartel', NULL, '{}'),
(14, 'society_families', NULL, '{}'),
(15, 'society_ballas', NULL, '{}'),
(16, 'society_vagos', NULL, '{}'),
(17, 'society_biker', NULL, '{}'),
(18, 'user_helmet', 'steam:110000118e987a2', '{}'),
(19, 'user_ears', 'steam:110000118e987a2', '{}'),
(20, 'user_glasses', 'steam:110000118e987a2', '{}'),
(21, 'user_mask', 'steam:110000118e987a2', '{}'),
(22, 'property', 'steam:110000118e987a2', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `dopeplants`
--

DROP TABLE IF EXISTS `dopeplants`;
CREATE TABLE IF NOT EXISTS `dopeplants` (
  `owner` varchar(50) NOT NULL,
  `plant` longtext NOT NULL,
  `plantid` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dpkeybinds`
--

DROP TABLE IF EXISTS `dpkeybinds`;
CREATE TABLE IF NOT EXISTS `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
('steam:110000118e987a2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sécurité', 30, 0),
(7, 'Arrêt dangereux / interdit', 150, 0),
(8, 'Stationnement gênant / interdit', 70, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'Dépassement dangereux', 100, 0),
(14, 'Véhicule non en état', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Excès de vitesse < 5 kmh', 90, 0),
(18, 'Excès de vitesse 5-15 kmh', 120, 0),
(19, 'Excès de vitesse 15-30 kmh', 180, 0),
(20, 'Excès de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'Dégradation de la voie publique', 90, 1),
(23, 'Trouble à l\'ordre publique', 90, 1),
(24, 'Entrave opération de police', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage à agent de police', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illégale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme léthale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(34, 'Port d\'arme illégal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'ôtage civil', 1500, 2),
(41, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'état', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'état', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie à l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_ballas`
--

DROP TABLE IF EXISTS `fine_types_ballas`;
CREATE TABLE IF NOT EXISTS `fine_types_ballas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types_ballas`
--

INSERT INTO `fine_types_ballas` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_biker`
--

DROP TABLE IF EXISTS `fine_types_biker`;
CREATE TABLE IF NOT EXISTS `fine_types_biker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types_biker`
--

INSERT INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_cartel`
--

DROP TABLE IF EXISTS `fine_types_cartel`;
CREATE TABLE IF NOT EXISTS `fine_types_cartel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types_cartel`
--

INSERT INTO `fine_types_cartel` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_families`
--

DROP TABLE IF EXISTS `fine_types_families`;
CREATE TABLE IF NOT EXISTS `fine_types_families` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types_families`
--

INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_oneil`
--

DROP TABLE IF EXISTS `fine_types_oneil`;
CREATE TABLE IF NOT EXISTS `fine_types_oneil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types_oneil`
--

INSERT INTO `fine_types_oneil` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_vagos`
--

DROP TABLE IF EXISTS `fine_types_vagos`;
CREATE TABLE IF NOT EXISTS `fine_types_vagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types_vagos`
--

INSERT INTO `fine_types_vagos` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('bread', 'Pain', 10, 0, 1),
('water', 'Eau', 5, 0, 1),
('bigmac', 'Hamburger', 5, 0, 1),
('cola', 'Soda', 5, 0, 1),
('bandage', 'Bandage', 20, 0, 1),
('medikit', 'Medikit', 5, 0, 1),
('gazbottle', 'bouteille de gaz', 10, 0, 1),
('fixtool', 'outils réparation', 10, 0, 1),
('carotool', 'outils carosserie', 10, 0, 1),
('cheesebows', 'Chips', -1, 0, 1),
('fixkit', 'Kit réparation', 10, 0, 1),
('carokit', 'Kit carosserie', 10, 0, 1),
('loka', 'Loka Crush', -1, 0, 1),
('sprite', 'Sprite', -1, 0, 1),
('fanta', 'Fanta Exotic', -1, 0, 1),
('cocacola', 'Coca Cola', -1, 0, 1),
('clip', 'Chargeur', -1, 0, 1),
('silencieux', 'Silencieux', -1, 0, 1),
('flashlight', 'Lampe', -1, 0, 1),
('grip', 'Poignée', -1, 0, 1),
('yusuf', 'Skin de luxe', -1, 0, 1),
('net_cracker', 'Cracker', 2, 0, 1),
('track', 'Traceur', 1, 0, 1),
('billet', 'Papier', 50, 0, 1),
('billet_pooch', 'Faux Billet', 10, 0, 1),
('alive_chicken', 'Poulet vivant', 20, 0, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1),
('fish', 'Poisson', 100, 0, 1),
('stone', 'Pierre', 100, 0, 1),
('washed_stone', 'Pierre Lavée', 100, 0, 1),
('copper', 'Cuivre', 100, 0, 1),
('iron', 'Fer', 100, 0, 1),
('gold', 'Or', 100, 0, 1),
('diamond', 'Diamant', 100, 0, 1),
('wood', 'Bois', 20, 0, 1),
('cutted_wood', 'Bois coupé', 20, 0, 1),
('packaged_plank', 'Paquet de planches', 100, 0, 1),
('petrol', 'Pétrole', 24, 0, 1),
('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1),
('essence', 'Essence', 24, 0, 1),
('wool', 'Laine', 40, 0, 1),
('fabric', 'Tissu', 80, 0, 1),
('clothe', 'Vêtement', 40, 0, 1),
('chips', 'OLW 3xLök Chips', -1, 0, 1),
('Marabou Mjölkchoklad', 'marabou', -1, 0, 1),
('pizza', 'Kebab Pizza', -1, 0, 1),
('pastacarbonara', 'Pasta Carbonara', -1, 0, 1),
('macka', 'Skinkmacka', -1, 0, 1),
('cigarett', 'Cigarett', -1, 0, 1),
('lighter', 'Tändare', -1, 0, 1),
('lotteryticket', 'Trisslott', -1, 0, 1),
('absinthe', 'Absinto', 5, 0, 1),
('beer', 'Cerveja', 15, 0, 1),
('champagne', 'Champanhe', 10, 0, 1),
('chocolate', 'Chocolate', 10, 0, 1),
('coffe', 'Café', 15, 0, 1),
('cupcake', 'Bolinho', 15, 0, 1),
('gintonic', 'Gin Tónico', 5, 0, 1),
('hamburger', 'Hamburger', 15, 0, 1),
('icetea', 'Ice-tea', 15, 0, 1),
('milk', 'Leite', 15, 0, 1),
('sandwich', 'Sandwich', 15, 0, 1),
('tequila', 'Tequila', 15, 0, 1),
('vodka', 'Vodka', 15, 0, 1),
('whisky', 'Whisky', 15, 0, 1),
('wine', 'Vinho', 15, 0, 1),
('coke_pooch', 'Pouch of coke', -1, 0, 1),
('saffron', 'Saffron', -1, 0, 1),
('speaker', 'Speaker', -1, 0, 1),
('laptop', 'Laptop', -1, 0, 1),
('book', 'Book', -1, 0, 1),
('coupon', 'Coupon', -1, 0, 1),
('toothpaste', 'Toothpaste', -1, 0, 1),
('shirt', 'Shirt', -1, 0, 1),
('pants', 'Pants', -1, 0, 1),
('hat', 'Hat', -1, 0, 1),
('shoes', 'Shoes', -1, 0, 1),
('lockpick', 'Lockpick', -1, 0, 1),
('piluleoubli', 'Pilule de l\'oubli', 5, 0, 1),
('highgradefemaleseed', '(HG) Graine femelle', -1, 0, 1),
('lowgradefemaleseed', '(LG) Graine femelle', -1, 0, 1),
('highgrademaleseed', '(HG) Graine mâle', -1, 0, 1),
('lowgrademaleseed', '(LG) Graine mâle', -1, 0, 1),
('highgradefert', 'Engrais de qualité supérieur', -1, 0, 1),
('lowgradefert', 'Engrais de qualité inférieure', -1, 0, 1),
('purifiedwater', 'Eau purifiée', -1, 0, 1),
('wateringcan', 'Arrosoir', -1, 0, 1),
('plantpot', 'Pot à plantes', -1, 0, 1),
('trimmedweed', 'Weed Taillée', -1, 0, 1),
('dopebag', 'sachets à fermeture éclair', -1, 0, 1),
('bagofdope', 'Sac de drogue', -1, 0, 1),
('drugscales', 'Balances', -1, 0, 1),
('gunpowderbag', 'Sac de poudre à canon', 2, 0, 1),
('sulfur', 'Souffre', 125, 0, 1),
('charcoal', 'Charbon', 125, 0, 1),
('metal', 'Métal', 125, 0, 1),
('hq', 'Métal de haute qualité', 25, 0, 1),
('riflebody', 'Corps d\'arme', 1, 0, 1),
('pistolbody', 'Corps de pistolet', 1, 0, 1),
('metbox', 'Boite métallique', 10, 0, 1),
('bulletbox', 'Boite de balles', 2, 0, 1),
('spring', 'Ressort', 10, 0, 1),
('plastic', 'Plastique', 40, 0, 1),
('longbarrel', 'Canon long', 1, 0, 1),
('shortbarrel', 'Canon Court', 1, 0, 1),
('metalpipe', 'Tuyau Métalique', 10, 0, 1),
('steel', 'Acier', 50, 0, 1),
('keycard', 'Keycard', -1, 0, 1),
('rolex', 'Rolex Watch', -1, 0, 1),
('oxycutter', 'Plasma Torch', -1, 0, 1),
('pacificidcard', 'Pacific ID', -1, 0, 1),
('bankidcard', 'Bank ID', -1, 0, 1),
('cannabis', 'Cannabis', 40, 0, 1),
('marijuana', 'Marijuana', 14, 0, 1),
('chemicals', 'Chemicals', 100, 0, 1),
('chemicalslisence', 'Chemicals license', 1, 0, 1),
('moneywash', 'MoneyWash License', 1, 0, 1),
('coca_leaf', 'Coca Leaf', 40, 0, 1),
('coke', 'Coke', 40, 0, 1),
('poppyresin', 'Poppy Resin', 160, 0, 1),
('heroin', 'Heroin', 80, 0, 1),
('lsa', 'LSA', 100, 0, 1),
('lsd', 'LSD', 100, 0, 1),
('meth', 'Meth', 30, 0, 1),
('hydrochloric_acid', 'HydroChloric Acid', 15, 0, 1),
('sodium_hydroxide', 'Sodium Hydroxide', 15, 0, 1),
('sulfuric_acid', 'Sulfuric Acid', 15, 0, 1),
('thionyl_chloride', 'Thionyl Chloride', 100, 0, 1),
('blowtorch', 'Soplete', 1, 0, 1),
('c4_bank', 'C4 de 10 kilos', 1, 0, 1),
('rasperry', 'Rasperry', 1, 0, 1),
('drill', 'Perseuce', 1, 0, 1),
('weld', 'Torch Plasma', 1, 0, 1),
('bulletsample', 'Bullet Casing', 1, 0, 1),
('bloodsample', 'Blood Sample', 1, 0, 1),
('dnaanalyzer', 'DNA Analyzer', 1, 0, 1),
('ammoanalyzer', 'Ammo Analyzer', 1, 0, 1),
('pomme', 'Pomme', -1, 0, 1),
('jus_pomme', 'Jus de pommes', -1, 0, 1),
('calvados', 'Calvados', -1, 0, 1),
('cidre', 'Cidre', -1, 0, 1),
('tabacblond', 'Tabac Blond', 100, 0, 1),
('tabacbrun', 'Tabac Brun', -1, 0, 1),
('tabacblondsec', 'Tabac Blond Séché', 50, 0, 1),
('tabacbrunsec', 'Tabac Brun Séché', -1, 0, 1),
('malbora', 'Malbora', -1, 0, 1),
('gitanes', 'Gitanes', -1, 0, 1),
('jager', 'Jägermeister', 5, 0, 1),
('rhum', 'Rhum', 5, 0, 1),
('martini', 'Martini blanc', 5, 0, 1),
('soda', 'Soda', 5, 0, 1),
('jusfruit', 'Jus de fruits', 5, 0, 1),
('energy', 'Energy Drink', 5, 0, 1),
('drpepper', 'Dr. Pepper', 5, 0, 1),
('limonade', 'Limonade', 5, 0, 1),
('bolcacahuetes', 'Bol de cacahuètes', 5, 0, 1),
('bolnoixcajou', 'Bol de noix de cajou', 5, 0, 1),
('bolpistache', 'Bol de pistaches', 5, 0, 1),
('bolchips', 'Bol de chips', 5, 0, 1),
('saucisson', 'Saucisson', 5, 0, 1),
('grapperaisin', 'Grappe de raisin', 5, 0, 1),
('jagerbomb', 'Jägerbomb', 5, 0, 1),
('golem', 'Golem', 5, 0, 1),
('whiskycoca', 'Whisky-coca', 5, 0, 1),
('vodkaenergy', 'Vodka-energy', 5, 0, 1),
('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1),
('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1),
('teqpaf', 'Teq\'paf', 5, 0, 1),
('rhumcoca', 'Rhum-coca', 5, 0, 1),
('mojito', 'Mojito', 5, 0, 1),
('ice', 'Glaçon', 5, 0, 1),
('mixapero', 'Mix Apéritif', 3, 0, 1),
('metreshooter', 'Mètre de shooter', 3, 0, 1),
('jagercerbere', 'Jäger Cerbère', 3, 0, 1),
('menthe', 'Feuille de menthe', 10, 0, 1),
('raisin', 'Raisin', -1, 0, 1),
('jus_raisin', 'Jus de raisin', -1, 0, 1),
('grand_cru', 'Grand cru', -1, 0, 1),
('vine', 'Vin', -1, 0, 1),
('coffee', 'Café', 5, 0, 1),
('phone', 'Téléphone', 10, 0, 1),
('gps', 'gps', 1, 0, 1),
('thermite', 'Bombe Thermite', 5, 0, 1),
('bulletproof', 'Gilet pare-balles', 1, 0, 1),
('celownikdluga', 'Viseur', 1, 0, 1),
('croquettes', 'Croquettes', 20, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  `SecondaryJob` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`, `SecondaryJob`) VALUES
('unemployed', 'Chomeur', 1, 0),
('police', 'LSPD', 1, 0),
('cardealer', 'Concessionnaire', 1, 0),
('ambulance', 'Ambulance', 1, 0),
('mecano', 'Mécano', 1, 0),
('slaughterer', 'Abatteur', 0, 0),
('fisherman', 'Pêcheur', 1, 0),
('miner', 'Mineur', 1, 0),
('fueler', 'Raffineur', 1, 0),
('sheriff', 'Sheriff', 1, 0),
('tailor', 'Couturier', 1, 0),
('army', 'Armée', 1, 0),
('ballas', 'ballas', 1, 0),
('realestateagent', 'Agent immobilier', 1, 0),
('tabac', 'Tabac', 1, 0),
('taxi', 'Taxi', 1, 0),
('unicorn', 'Unicorn', 1, 0),
('vigne', 'Vigneron', 1, 0),
('bahama', 'bahama', 1, 0),
('banker', 'Banquier', 1, 0),
('cartel', 'cartel', 1, 0),
('oneil', 'oneil', 1, 0),
('unemployed2', 'Sans emplois', 1, 0),
('journaliste', 'journaliste', 1, 0),
('families', 'families', 1, 0),
('vagos', 'vagos', 1, 0),
('biker', 'Biker', 1, 0),
('gouvernor', 'Gouvernement', 1, 0),
('beekers', 'Beekers', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'police', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(3, 'police', 1, 'officer', 'Officier', 40, '{}', '{}'),
(4, 'police', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(5, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(6, 'police', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(7, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(8, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(9, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(10, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(11, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(12, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(13, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(14, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(15, 'mecano', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(16, 'mecano', 1, 'novice', 'Novice', 24, '{}', '{}'),
(17, 'mecano', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(18, 'mecano', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(19, 'mecano', 4, 'boss', 'Patron', 0, '{}', '{}'),
(21, 'fisherman', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(22, 'fueler', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(117, 'oneil', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(24, 'tailor', 0, 'employee', 'Intérimaire', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(25, 'miner', 0, 'employee', 'Intérimaire', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":3,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":9,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":139,\"tshirt_1\":59,\"arms\":4,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(26, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(27, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(28, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(29, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(30, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(168, 'beekers', 4, 'boss', 'Patron', 0, '{}', '{}'),
(167, 'beekers', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(97, 'army', 1, 'firstclass', '1er Classe', 1350, '{}', '{}'),
(98, 'army', 2, 'capo', 'Caporal', 1500, '{}', '{}'),
(99, 'army', 3, 'chiefcapo', 'Caporal-Chef', 1700, '{}', '{}'),
(100, 'army', 4, 'sergeant', 'Sergent', 1850, '{}', '{}'),
(101, 'army', 5, 'chiefsergeant', 'Sergent-Chef', 2000, '{}', '{}'),
(102, 'army', 6, 'adjudant', 'Adjudant', 2100, '{}', '{}'),
(103, 'army', 7, 'chiefadjudant', 'Adjudant-Chef', 2250, '{}', '{}'),
(104, 'army', 8, 'major', 'Major', 2400, '{}', '{}'),
(105, 'army', 9, 'aspirant', 'Aspirant', 2550, '{}', '{}'),
(106, 'army', 10, 'souslieutenant', 'Sous-lieutenant', 2700, '{}', '{}'),
(107, 'army', 11, 'lieutenant', 'Lieutenant', 2800, '{}', '{}'),
(108, 'army', 12, 'captain', 'Capitaine', 2950, '{}', '{}'),
(109, 'army', 13, 'commandant', 'Commandant', 3100, '{}', '{}'),
(110, 'army', 14, 'lieutenantcolonel', 'Lieutenant-colonel', 3200, '{}', '{}'),
(111, 'army', 15, 'colonel', 'Colonel', 3350, '{}', '{}'),
(112, 'army', 16, 'brigadiergeneral', 'Général de brigade', 3550, '{}', '{}'),
(113, 'army', 17, 'divisiongeneral', 'Général de division', 3750, '{}', '{}'),
(114, 'army', 18, 'generalofthearmycorps', 'Général de corps d\'armée', 4000, '{}', '{}'),
(115, 'army', 19, 'generalarmy', 'Général d\'armée', 4700, '{}', '{}'),
(116, 'army', 20, 'boss', 'Maréchal', 5200, '{}', '{}'),
(118, 'oneil', 1, 'capo', 'capo', 1800, '{}', '{}'),
(119, 'oneil', 2, 'consigliere', 'Chef-Capo', 2100, '{}', '{}'),
(120, 'oneil', 3, 'boss', 'Patron', 2700, '{}', '{}'),
(149, 'families', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null'),
(148, 'families', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
(147, 'families', 1, 'capo', 'Motard', 400, 'null', 'null'),
(146, 'families', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
(44, 'realestateagent', 0, 'location', 'Location', 10, '{}', '{}'),
(45, 'realestateagent', 1, 'vendeur', 'Vendeur', 25, '{}', '{}'),
(46, 'realestateagent', 2, 'gestion', 'Gestion', 40, '{}', '{}'),
(47, 'realestateagent', 3, 'boss', 'Patron', 0, '{}', '{}'),
(48, 'tabac', 0, 'recrue', 'Tabagiste', 400, '{}', '{}'),
(49, 'tabac', 1, 'gerant', 'Gérant', 650, '{}', '{}'),
(50, 'tabac', 2, 'boss', 'Patron', 800, '{}', '{}'),
(51, 'taxi', 0, 'recrue', 'Recrue', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(52, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(53, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(54, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(55, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(56, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(57, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(58, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(59, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(60, 'vigne', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(61, 'vigne', 1, 'novice', 'Vigneron', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(62, 'vigne', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(63, 'vigne', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(64, 'bahama', 0, 'barman', 'Barman', 300, '{}', '{}'),
(65, 'bahama', 1, 'dj', 'DJ', 300, '{}', '{}'),
(66, 'bahama', 2, 'secu', 'Sécurité', 300, '{}', '{}'),
(67, 'bahama', 3, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(68, 'bahama', 4, 'boss', 'Gérant', 600, '{}', '{}'),
(69, 'banker', 0, 'advisor', 'Conseiller', 10, '{}', '{}'),
(70, 'banker', 1, 'banker', 'Banquier', 20, '{}', '{}'),
(71, 'banker', 2, 'business_banker', 'Banquier d\'affaire', 30, '{}', '{}'),
(72, 'banker', 3, 'trader', 'Trader', 40, '{}', '{}'),
(73, 'banker', 4, 'boss', 'Patron', 0, '{}', '{}'),
(166, 'beekers', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(165, 'beekers', 1, 'novice', 'Novice', 24, '{}', '{}'),
(164, 'beekers', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(163, 'gouvernor', 2, 'boss', 'Président', 5000, '{}', '{}'),
(134, 'biker', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
(135, 'biker', 1, 'capo', 'Motard', 400, 'null', 'null'),
(136, 'biker', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
(137, 'biker', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null'),
(150, 'cartel', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
(151, 'cartel', 1, 'capo', 'Motard', 400, 'null', 'null'),
(152, 'cartel', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
(153, 'cartel', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null'),
(154, 'journaliste', 0, 'stagiaire', 'Stagiaire', 250, '{}', '{}'),
(155, 'journaliste', 1, 'reporter', 'Reporter', 350, '{}', '{}'),
(156, 'journaliste', 2, 'investigator', 'Enqueteur', 400, '{}', '{}'),
(157, 'journaliste', 3, 'boss', 'Réda-Chef', 450, '{}', '{}'),
(162, 'gouvernor', 1, 'assistant', 'Assistant', 1500, '{}', '{}'),
(161, 'gouvernor', 0, 'security_gouvernor', 'Garde du Corps', 2500, '{}', '{}'),
(78, 'sheriff', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(79, 'sheriff', 1, 'officer', 'Deputy', 40, '{}', '{}'),
(80, 'sheriff', 2, 'sergeant', 'Major', 60, '{}', '{}'),
(81, 'sheriff', 4, 'lieutenant', 'Sheriff-Adjoint', 85, '{}', '{}'),
(82, 'sheriff', 5, 'boss', 'Sheriff', 100, '{}', '{}'),
(83, 'unemployed2', 0, 'rsa', 'Secondaire', 50, '{}', '{}'),
(145, 'ballas', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null'),
(144, 'ballas', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
(143, 'ballas', 1, 'capo', 'Motard', 400, 'null', 'null'),
(142, 'ballas', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
(141, 'vagos', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null'),
(140, 'vagos', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
(139, 'vagos', 1, 'capo', 'Motard', 400, 'null', 'null'),
(138, 'vagos', 0, 'soldato', 'Dealer', 200, 'null', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('weed_processing', 'Weed Processing License'),
('chemicalslisence', 'Chemicals license'),
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('boating', 'License Bateau'),
('aircraft', 'License Avion');

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

DROP TABLE IF EXISTS `open_car`;
CREATE TABLE IF NOT EXISTS `open_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

DROP TABLE IF EXISTS `owned_properties`;
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

DROP TABLE IF EXISTS `owned_vehicles`;
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `garageperso` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Garage Personnel',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `put_by` varchar(255) DEFAULT NULL,
  `in_garage_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

DROP TABLE IF EXISTS `phone_app_chat`;
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

DROP TABLE IF EXISTS `phone_calls`;
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

DROP TABLE IF EXISTS `phone_users_contacts`;
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `playerstattoos`
--

DROP TABLE IF EXISTS `playerstattoos`;
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `garage` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `garage`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', NULL, 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', NULL, 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', NULL, 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', NULL, 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', NULL, 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', NULL, 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', NULL, 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', NULL, 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', NULL, 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', NULL, 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', NULL, 1700000),
(43, 'entrepotMoyen', 'entrepot1', '{\"x\":-210.8955,\"z\":5.0014,\"y\":-2583.4026}', '{\"x\":1072.5505,\"y\":-3102.5522,\"z\":-39.9999}', '{\"x\":1048.5067,\"y\":-3097.0817,\"z\":-38.9999}', '{\"x\":-210.8955,\"z\":8.0014,\"y\":-2583.4026}', '[]', NULL, 1, 1, 0, '{\"x\":1070.7767,\"z\":-40.0,\"y\":-3103.8928}', NULL, 200000),
(44, 'Motel', 'Motel', '{\"x\":1435.8936,\"z\":33.3067,\"y\":3657.6084}', '{\"x\":151.3258,\"y\":-1007.7642,\"z\":-100.0000}', '{\"x\":151.45,\"y\":-1007.57,\"z\":-98.9999}', '{\"x\":1435.8936,\"z\":36.3067,\"y\":3657.6084}', '[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]', NULL, 1, 1, 0, '{\"x\":152.0465,\"z\":-100.0,\"y\":-1004.7086}', NULL, 50000),
(45, 'entrepotGrand', 'entrepot2', '{\"x\":827.8923,\"z\":51.3746,\"y\":2190.363}', '{\"x\":998.1795\"y\":-3091.9169,\"z\":-39.9999}', '{\"x\":1026.5056,\"y\":-3099.8320,\"z\":-38.9998}', '{\"x\":827.8923,\"z\":54.3746,\"y\":2190.363}', '[]', NULL, 1, 1, 0, '{\"x\":1023.3308,\"z\":-39.9999,\"y\":-3105.2454}', NULL, 250000);

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

DROP TABLE IF EXISTS `rented_vehicles`;
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

DROP TABLE IF EXISTS `society_moneywash`;
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `truck_inventory2`
--

DROP TABLE IF EXISTS `truck_inventory2`;
CREATE TABLE IF NOT EXISTS `truck_inventory2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

DROP TABLE IF EXISTS `twitter_accounts`;
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

DROP TABLE IF EXISTS `twitter_likes`;
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

DROP TABLE IF EXISTS `twitter_tweets`;
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `isDead` bit(1) DEFAULT b'0',
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_accessories`
--

DROP TABLE IF EXISTS `user_accessories`;
CREATE TABLE IF NOT EXISTS `user_accessories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `mask` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT 'Masque',
  `type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_inventory`
--

DROP TABLE IF EXISTS `user_inventory`;
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_parkings`
--

DROP TABLE IF EXISTS `user_parkings`;
CREATE TABLE IF NOT EXISTS `user_parkings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Blade', 'blade', 15000, 'muscle'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Dominator', 'dominator', 35000, 'muscle'),
('Dukes', 'dukes', 28000, 'muscle'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Tampa', 'tampa', 16000, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Vigero', 'vigero', 12500, 'muscle'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Blista', 'blista', 8000, 'compacts'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Issi', 'issi2', 10000, 'compacts'),
('Panto', 'panto', 10000, 'compacts'),
('Prairie', 'prairie', 12000, 'compacts'),
('Bison', 'bison', 45000, 'vans'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Burrito', 'burrito3', 19000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Journey', 'journey', 6500, 'vans'),
('Minivan', 'minivan', 13000, 'vans'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Paradise', 'paradise', 19000, 'vans'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Surfer', 'surfer', 12000, 'vans'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Asea', 'asea', 5500, 'sedans'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Emperor', 'emperor', 8500, 'sedans'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Intruder', 'intruder', 7500, 'sedans'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('Regina', 'regina', 5000, 'sedans'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Stretch', 'stretch', 90000, 'sedans'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Contender', 'contender', 70000, 'suvs'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Patriot', 'patriot', 55000, 'suvs'),
('Radius', 'radi', 29000, 'suvs'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Seminole', 'seminole', 25000, 'suvs'),
('XLS', 'xls', 32000, 'suvs'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Z-Type', 'ztype', 220000, 'sportsclassics'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('Brawler', 'brawler', 45000, 'offroad'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Guardian', 'guardian', 45000, 'offroad'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Sandking', 'sandking', 55000, 'offroad'),
('The Liberator', 'monster', 210000, 'offroad'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Jackal', 'jackal', 38000, 'coupes'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Alpha', 'alpha', 60000, 'sports'),
('Banshee', 'banshee', 70000, 'sports'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Comet', 'comet2', 65000, 'sports'),
('Coquette', 'coquette', 65000, 'sports'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Elegy', 'elegy2', 38500, 'sports'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Surano', 'surano', 50000, 'sports'),
('Tropos', 'tropos', 40000, 'sports'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Adder', 'adder', 900000, 'super'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bullet', 'bullet', 90000, 'super'),
('Cheetah', 'cheetah', 375000, 'super'),
('Entity XF', 'entityxf', 425000, 'super'),
('ETR1', 'sheava', 220000, 'super'),
('FMJ', 'fmj', 185000, 'super'),
('Infernus', 'infernus', 180000, 'super'),
('Osiris', 'osiris', 160000, 'super'),
('Pfister', 'pfister811', 85000, 'super'),
('RE-7B', 'le7b', 325000, 'super'),
('Reaper', 'reaper', 150000, 'super'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('T20', 't20', 300000, 'super'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('BF400', 'bf400', 6500, 'motorcycles'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Double T', 'double', 28000, 'motorcycles'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Vader', 'vader', 7200, 'motorcycles'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Visione', 'visione', 2250000, 'super'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('raiden', 'raiden', 1375000, 'sports'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Pariah', 'pariah', 1420000, 'sports'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('SC 1', 'sc1', 1603000, 'super'),
('riata', 'riata', 380000, 'offroad'),
('Hermes', 'hermes', 535000, 'muscle'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Autarch', 'autarch', 1955000, 'super'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Neon', 'neon', 1500000, 'sports'),
('Revolter', 'revolter', 1610000, 'sports'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Hustler', 'hustler', 625000, 'muscle'),
('Brabus', 'brabus700', 150000, 'imports'),
('c65', 'gclas9', 150000, 'imports'),
('dodge', 'demon', 150000, 'imports'),
('dts', 'tampa3', 150000, 'imports'),
('f90', 'bmci', 150000, 'muscle'),
('Ferrari', '599gtox', 150000, 'imports'),
('Ferrari2', 'gtcl', 150000, 'imports'),
('Huracan', 'lp610', 150000, 'imports'),
('Panamera', 'techart17', 150000, 'imports'),
('RS7', 'rs7', 150000, 'imports'),
('S500', 's500w222', 150000, 'imports'),
('Sierra', 'gmcs', 150000, 'imports'),
('Velar', 'velar', 150000, 'imports'),
('Yukon', 'gmcyd', 150000, 'imports'),
('e63amg', 'e63amg', 150000, 'imports'),
('4881', '4881', 180000, 'imports');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('suvs', 'SUVs'),
('vans', 'Vans'),
('motorcycles', 'Motos'),
('imports', 'Imports');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

DROP TABLE IF EXISTS `vehicle_sold`;
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
