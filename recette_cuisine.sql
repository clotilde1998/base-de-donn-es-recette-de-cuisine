-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 07 déc. 2021 à 08:42
-- Version du serveur :  10.1.32-MariaDB
-- Version de PHP :  7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `recette_cuisine`
--

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `ref_ingredient` int(11) NOT NULL,
  `nom_ingredient` varchar(150) NOT NULL,
  `calories_ingredient` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`ref_ingredient`, `nom_ingredient`, `calories_ingredient`) VALUES
(1, 'farine', 100),
(2, 'sel', 10),
(3, 'levure', 20),
(5, 'eau', 1000),
(6, '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `ref_produit` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `date_peremtion` date NOT NULL,
  `quantite_produit` int(100) NOT NULL,
  `prix_produit` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rangement`
--

CREATE TABLE `rangement` (
  `ref_rangement` int(11) NOT NULL,
  `nom_rangement` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rangement`
--

INSERT INTO `rangement` (`ref_rangement`, `nom_rangement`) VALUES
(1, 'etagere de la cuisine'),
(2, 'etagere de la cuisine'),
(9, 'petit dejeuner');

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

CREATE TABLE `recette` (
  `ref_recette` int(11) NOT NULL,
  `nom_recette` varchar(150) NOT NULL,
  `description_recette` varchar(1000) NOT NULL,
  `calories_recette` int(20) NOT NULL,
  `niveau_recette` int(20) NOT NULL,
  `temps_preparation` time(5) NOT NULL,
  `temps_cuisson` time(5) NOT NULL,
  `nombre_personne` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `recette`
--

INSERT INTO `recette` (`ref_recette`, `nom_recette`, `description_recette`, `calories_recette`, `niveau_recette`, `temps_preparation`, `temps_cuisson`, `nombre_personne`) VALUES
(10, 'pain', 'mettre la farine dans un recipient\r\najouter du sucre\r\najouter de l\'eau\r\najouter du sel\r\najouter de la levure\r\nmalaxer pour obtenir une pate homogene\r\nlaisser reposer pendant 1h\r\ndonner une forme de notre gout\r\nmettre au four', 100, 2, '02:30:00.00000', '35:00:00.00000', 4);

-- --------------------------------------------------------

--
-- Structure de la table `type_ingredient`
--

CREATE TABLE `type_ingredient` (
  `ref_type` int(11) NOT NULL,
  `nom_type` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_ingredient`
--

INSERT INTO `type_ingredient` (`ref_type`, `nom_type`) VALUES
(10, 'vegetal');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`ref_ingredient`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`ref_produit`);

--
-- Index pour la table `rangement`
--
ALTER TABLE `rangement`
  ADD PRIMARY KEY (`ref_rangement`);

--
-- Index pour la table `recette`
--
ALTER TABLE `recette`
  ADD PRIMARY KEY (`ref_recette`);

--
-- Index pour la table `type_ingredient`
--
ALTER TABLE `type_ingredient`
  ADD PRIMARY KEY (`ref_type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `ref_ingredient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `ref_produit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rangement`
--
ALTER TABLE `rangement`
  MODIFY `ref_rangement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `recette`
--
ALTER TABLE `recette`
  MODIFY `ref_recette` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `type_ingredient`
--
ALTER TABLE `type_ingredient`
  MODIFY `ref_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
