-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 20 Avril 2018 à 12:44
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `jeularavel`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `wording` varchar(255) NOT NULL,
  `idEvent` int(11) NOT NULL,
  `idNextEvent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `answer`
--

INSERT INTO `answer` (`id`, `wording`, `idEvent`, `idNextEvent`) VALUES
(3, 'Vous trouvez une annonce pour la maison de vos rêves, avec un jardin et 100m² de surface habitable pour vous tout(e) seul(e) !', 1, 3),
(4, 'Une annonce pour un appartement pas cher attire votre attention.', 1, 2),
(5, 'Vous répondez que vous n\'etes pas son larbin !', 2, 4),
(6, 'Continuer.', 5, 6),
(7, 'Vous trouvez ça louche, mais vous acceptez quand même. Ce n\'est pas quelques corvée qui vont vous empêcher de vivre ici !', 2, 6),
(8, 'Vous vous installez et rangez vos affaires puis vous vous endormez tranquillement.', 6, 16),
(9, 'Vous décidez de faire le tour du propriétaire et de repérer ou se trouve cette cave interdite.', 6, 7),
(10, 'Continuer', 7, 8),
(11, 'Vous faites comme si de rien été et retournez tranquillement dans votre appartement en sifflotant.', 8, 16);

-- --------------------------------------------------------

--
-- Structure de la table `background`
--

CREATE TABLE `background` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `background`
--

INSERT INTO `background` (`id`, `url`) VALUES
(1, 'https://jcsatanas.fr/wp-content/uploads/2015/04/fond-ecran-020415-6.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `chapter`
--

CREATE TABLE `chapter` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `chapter`
--

INSERT INTO `chapter` (`id`, `name`) VALUES
(1, 'L\'arrivée'),
(2, 'Un drôle de personnage'),
(3, 'La cave'),
(4, 'Coincé'),
(5, 'Une voisine étrange');

-- --------------------------------------------------------

--
-- Structure de la table `character`
--

CREATE TABLE `character` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `character`
--

INSERT INTO `character` (`id`, `name`, `url`) VALUES
(1, 'Mr.K', 'http://lohmann-stiftung.de/wp-content/uploads/2015/07/p-img-5-random-work.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `dialog` text NOT NULL,
  `question` varchar(255) NOT NULL,
  `idChapter` int(11) NOT NULL,
  `idBackground` int(11) NOT NULL,
  `idCharacter` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `event`
--

INSERT INTO `event` (`id`, `text`, `dialog`, `question`, `idChapter`, `idBackground`, `idCharacter`) VALUES
(1, 'Vous êtes étudiant(e) et vous chercher un logement pas cher pour pouvoir mettre de l\'argent de côté.', '', 'Que choisissez-vous ?', 1, 1, 1),
(2, 'Vous faites la connaissance de votre nouveau propriétaire : Mr.KIl parle vraiment bizarrement mais vous essayez de passer outre ce dialecte étrange et vous comprenez qu\'il vous loue gratuitement l\'appartement en échange de quelques heures de travail pour s\'occuper des tâches ménagères de la résidence', 'Bonjour, Mon plaisir de vous rencontrer', 'Que lui répondez-vous ?', 1, 1, 0),
(3, 'C\'est bien sûr trop beau pour être vrai vous vous retrouvez vite avec plein de problèmes sur le dos (fuite d\'eau, problème d\'électricité, inondation). Vous devez quitter le logement et vous n\'avez pas le choix. Retour à la case départ.', '', '', 1, 1, NULL),
(4, 'Vous réponds Mr.K. Il a l\'air un peu énervé.', 'Vous n\'avez qu\'a aller voir ailleurs si vous n\'etes pas content, c\'est à prendre ou a laisser', '', 2, 1, NULL),
(5, 'Vous finissez par accepter sa contrepartie. De toute façon vous avez besoin de cet appartement.', '', '', 2, 1, NULL),
(6, 'Mr. K vous fait visiter votre appartement, vous donnes différentes consignes plus ou moins utiles (comme par exemple comment bien ouvrir le volet) et vous donne vos horaires de travail. Il vous met en garde de ne SURTOUT PAS vous approcher de la cave derrière le local à poubelle. Puis il s\'en va en vous souhaitant une bonne soirée pretextant qu\'il est déjà tard (17h...).', 'Suivez-moi, je vais vous montrer votre appartement, il se trouve au troisième étage, première porte de droite.', 'Que faites-vous ?', 2, 1, NULL),
(7, 'Vous faites le tour vous descendez les étages et regardez un peu les noms des personnes habitant ici, vous repérez vite l\'appartement de Mr. K au rez-de-chaussée et vous sortez voir un peu l\'exterieur.', '', '', 3, 1, NULL),
(8, 'Vous vous dirigez vers le local de poubelles et vous voyez Mr.K entrer par un porte plus ou moins cachée derrière les poubelles (surement la fameuse cave). Il a l\'air très stressé.', '', '', 3, 1, NULL),
(16, 'La nuit se passe et vous semblez faire des rêves agiter, le lendemain est difficile comme un lendemain de soirée.', '', '', 5, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idEvent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `idEvent`) VALUES
(2, 'Chloé', 'chloecaquant@hotmail.com', '$2y$10$WrwhDf1uHtDJLxYeGyc.CejTGrK2lIAsz7GenQafSapfUYpu44CXy', 'bXwgyCqUdYDPwkkscwWPz7CdGWAYXrw8GWJXZvZrEgHWgdl36hV1kBvjAQC9', '2018-04-17 07:33:49', '2018-04-20 10:23:25', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idQuestion` (`idEvent`);

--
-- Index pour la table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `character`
--
ALTER TABLE `character`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idChapter` (`idChapter`),
  ADD KEY `idBackground` (`idBackground`),
  ADD KEY `idCharacter` (`idCharacter`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `idevent` (`idEvent`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `background`
--
ALTER TABLE `background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `character`
--
ALTER TABLE `character`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`idEvent`) REFERENCES `event` (`id`);

--
-- Contraintes pour la table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`idChapter`) REFERENCES `chapter` (`id`),
  ADD CONSTRAINT `event_ibfk_2` FOREIGN KEY (`idBackground`) REFERENCES `background` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idEvent`) REFERENCES `event` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
