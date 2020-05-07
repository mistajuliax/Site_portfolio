-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 07 mai 2020 à 10:32
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `site_galerie_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `commenter`
--

CREATE TABLE `commenter` (
  `id_utilisateur` int(11) NOT NULL,
  `id_projet` int(11) NOT NULL,
  `id_commentaire` int(11) DEFAULT NULL,
  `commentaire_date` datetime DEFAULT NULL,
  `commentaire_contenu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `id_favoris` int(11) NOT NULL,
  `titre_favoris` varchar(255) DEFAULT NULL,
  `favoris_date` date DEFAULT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_projet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `portfolio`
--

CREATE TABLE `portfolio` (
  `id_portfolio` int(11) NOT NULL,
  `portfolio_titre` varchar(255) DEFAULT NULL,
  `portfolio_image` varchar(255) DEFAULT NULL,
  `portfolio_photo` varchar(255) DEFAULT NULL,
  `portfolio_pseudo` varchar(255) DEFAULT NULL,
  `portfolio_date_creation` datetime DEFAULT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `id_projet` int(11) NOT NULL,
  `projet_titre` varchar(255) DEFAULT NULL,
  `projet_apercu` varchar(255) DEFAULT NULL,
  `projet_image` varchar(255) DEFAULT NULL,
  `projet_description` text DEFAULT NULL,
  `projet_date` date DEFAULT NULL,
  `projet_nb_vues` int(11) DEFAULT NULL,
  `projet_nb_mentions_jaime` int(11) DEFAULT NULL,
  `projet_commentaire` text DEFAULT NULL,
  `id_portfolio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `utilisateur_nom` varchar(255) DEFAULT NULL,
  `utilisateur_prenom` varchar(255) DEFAULT NULL,
  `utilisateur_pseudo` varchar(255) DEFAULT NULL,
  `utilisateur_email` varchar(255) DEFAULT NULL,
  `utilisateur_mdp` varchar(255) DEFAULT NULL,
  `utilisateur_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `utilisateur_nom`, `utilisateur_prenom`, `utilisateur_pseudo`, `utilisateur_email`, `utilisateur_mdp`, `utilisateur_admin`) VALUES
(2, 'lem', 'julien', NULL, 'lemenicier_julien@yahoo.fr', '$argon2id$v=19$m=65536,t=4,p=1$dWN2cU5QZ3NlM0Y2YzVlNg$WpUNqeEu6JsssDLHW/0gZzPfl+UzcX1gtXIaGVKYkGE', NULL),
(3, 'lem', 'julien', 'julio', 'lemenicier_julien@yahoo.fr', '$argon2id$v=19$m=65536,t=4,p=1$VXcveU5NY3NmeWFCMnJBcg$1YxpOfLDshcEtmocfRpcwQFYax0Wh02UaDu8McfUYJk', NULL),
(4, 'lem', 'julien', 'julio', 'lem', '$argon2id$v=19$m=65536,t=4,p=1$a2hMYW04NFpQSUc2aTVRbQ$5plKD3PT97vUOjrWTfGgq1x8jqs29o/LzWeEIkbN6+c', NULL),
(5, 'demain', 'pierre', 'matin', 'pierredemain@yahoo.fr', '$argon2id$v=19$m=65536,t=4,p=1$U0RPRG5FWG9LYXNydkhXNA$WF1Iy810P2ZRBaxdH3Vep4OJRJfMOG+j56hm7yhfz50', NULL),
(6, 'paul', 'jacque', 'soir', 'pauljacque@yahoo.fr', '$argon2id$v=19$m=65536,t=4,p=1$N1ZFcnlsUldJM2ltZHQ2Lg$dNXV2EuVfdYeQJG9Mm/C6/WJYyvQwH7EIQgNKysBPjk', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commenter`
--
ALTER TABLE `commenter`
  ADD PRIMARY KEY (`id_utilisateur`,`id_projet`),
  ADD KEY `FK_commenter_id_projet` (`id_projet`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id_favoris`),
  ADD KEY `FK_favoris_id_utilisateur` (`id_utilisateur`),
  ADD KEY `FK_favoris_id_projet` (`id_projet`);

--
-- Index pour la table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id_portfolio`),
  ADD KEY `FK_portfolio_id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`id_projet`),
  ADD KEY `FK_projet_id_portfolio` (`id_portfolio`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commenter`
--
ALTER TABLE `commenter`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `id_favoris` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id_portfolio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `projet`
--
ALTER TABLE `projet`
  MODIFY `id_projet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commenter`
--
ALTER TABLE `commenter`
  ADD CONSTRAINT `FK_commenter_id_projet` FOREIGN KEY (`id_projet`) REFERENCES `projet` (`id_projet`),
  ADD CONSTRAINT `FK_commenter_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `FK_favoris_id_projet` FOREIGN KEY (`id_projet`) REFERENCES `projet` (`id_projet`),
  ADD CONSTRAINT `FK_favoris_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `FK_portfolio_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `FK_projet_id_portfolio` FOREIGN KEY (`id_portfolio`) REFERENCES `portfolio` (`id_portfolio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
