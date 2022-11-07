-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 07 nov. 2022 à 12:47
-- Version du serveur : 5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionPlanning`
--

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `nb_eleves` int(11) NOT NULL,
  `id_ecoles` int(11) NOT NULL,
  `id_professeurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `nb_eleves`, `id_ecoles`, `id_professeurs`) VALUES
(1, 27, 1, 6),
(2, 12, 1, 9),
(3, 19, 1, 2),
(4, 23, 1, 8),
(5, 10, 1, 11),
(6, 21, 2, 15),
(7, 18, 2, 12),
(8, 17, 2, 5),
(9, 12, 2, 3),
(10, 26, 2, 7),
(11, 30, 2, 14),
(12, 14, 3, 15),
(13, 18, 3, 13),
(14, 23, 3, 4),
(15, 27, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ecoles`
--

CREATE TABLE `ecoles` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecoles`
--

INSERT INTO `ecoles` (`id`, `nom`) VALUES
(1, 'École 1'),
(2, 'École 2'),
(3, 'École 3');

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

CREATE TABLE `matieres` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`id`, `nom`) VALUES
(1, 'php'),
(2, 'python'),
(3, 'sql'),
(4, 'html-css'),
(5, 'JS'),
(6, 'Java'),
(7, 'POO'),
(8, 'Algo'),
(9, 'Anglais'),
(10, 'Scrum');

-- --------------------------------------------------------

--
-- Structure de la table `professeurs`
--

CREATE TABLE `professeurs` (
  `id` int(11) NOT NULL,
  `prenom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `professeurs`
--

INSERT INTO `professeurs` (`id`, `prenom`) VALUES
(1, 'Joachim'),
(2, 'Alex'),
(3, 'Jean'),
(4, 'Lucas'),
(5, 'Sylvian'),
(6, 'Florian'),
(7, 'Jordan'),
(8, 'Julien'),
(9, 'André'),
(10, 'Robin'),
(11, 'Adam'),
(12, 'Théo'),
(13, 'Hywel'),
(14, 'Guillaume'),
(15, 'Mathéo');

-- --------------------------------------------------------

--
-- Structure de la table `professeurs_matieres`
--

CREATE TABLE `professeurs_matieres` (
  `id_professeurs` int(11) NOT NULL,
  `id_matieres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `professeurs_matieres`
--

INSERT INTO `professeurs_matieres` (`id_professeurs`, `id_matieres`) VALUES
(2, 9),
(2, 4),
(11, 8),
(9, 10),
(9, 7),
(9, 5),
(6, 4),
(6, 2),
(1, 8),
(1, 9),
(1, 4),
(1, 6),
(1, 5),
(1, 1),
(1, 7),
(1, 2),
(1, 10),
(1, 3),
(14, 8),
(14, 5),
(13, 3),
(13, 7),
(13, 10),
(3, 2),
(7, 6),
(7, 7),
(7, 9),
(7, 8),
(8, 10),
(8, 1),
(8, 6),
(4, 4),
(4, 8),
(4, 7),
(4, 2),
(4, 3),
(4, 10),
(15, 2),
(15, 8),
(15, 5),
(10, 10),
(10, 9),
(10, 2),
(10, 5),
(5, 7),
(5, 8),
(5, 6),
(12, 3),
(12, 9),
(12, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idEcoles_Classes` (`id_ecoles`),
  ADD KEY `idProfesseurs-Classes` (`id_professeurs`);

--
-- Index pour la table `ecoles`
--
ALTER TABLE `ecoles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `professeurs_matieres`
--
ALTER TABLE `professeurs_matieres`
  ADD KEY `idProfesseurs-Professeurs` (`id_professeurs`),
  ADD KEY `idMatieres-Matieres` (`id_matieres`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `ecoles`
--
ALTER TABLE `ecoles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `matieres`
--
ALTER TABLE `matieres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `idEcoles_Classes` FOREIGN KEY (`id_ecoles`) REFERENCES `ecoles` (`id`),
  ADD CONSTRAINT `idProfesseurs-Classes` FOREIGN KEY (`id_professeurs`) REFERENCES `professeurs` (`id`);

--
-- Contraintes pour la table `professeurs_matieres`
--
ALTER TABLE `professeurs_matieres`
  ADD CONSTRAINT `idMatieres-Matieres` FOREIGN KEY (`id_matieres`) REFERENCES `matieres` (`id`),
  ADD CONSTRAINT `idProfesseurs-Professeurs` FOREIGN KEY (`id_professeurs`) REFERENCES `professeurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
