-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 16 Mai 2018 à 18:38
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
(1, 'Vous trouvez une annonce pour la maison de vos rêves, avec un jardin et 100m² de surface habitable pour vous tout(e) seul(e) !', 1, 3),
(2, 'Une annonce pour un appartement pas cher attire votre attention.', 1, 2),
(3, 'Vous répondez que vous n\'êtes pas son larbin !', 2, 4),
(4, 'Vous finissez par accepter sa contrepartie. De toute façon vous avez besoin de cet appartement.', 4, 6),
(5, 'Vous trouvez ça louche, mais vous acceptez quand même. Ce n\'est pas quelques corvée qui vont vous empêcher de vivre ici !', 2, 6),
(6, 'Vous vous installez et rangez vos affaires puis vous vous endormez tranquillement.', 6, 16),
(7, 'Vous décidez de faire le tour du propriétaire et de repérer ou se trouve cette cave interdite.', 6, 7),
(8, 'Continuer', 7, 8),
(9, 'Vous faites comme si de rien était et retournez tranquillement dans votre appartement en sifflotant.', 8, 16),
(10, 'Vous décidez de le suivre, après tout ce n\'est peut-être qu\'une cave !', 8, 9),
(11, 'Ca sent trop mauvais, finalement, vous faites demi-tour. Vous décidez de retourner dans votre appartement.', 9, 16),
(12, 'Vous continuez dans la cave.', 9, 10),
(13, 'Vous faites demi-tour, vous en avait assez vu, il n\'y a rien de bien intéressant...', 10, 16),
(14, 'Vous décidez de continuer.', 10, 11),
(15, 'Continuer.', 11, 12),
(16, 'C\'en ai trop ! Vous faites demi-tour ! C\'est beaucoup trop glauque.', 12, 16),
(17, 'Vous décidez de continuer quand même.', 12, 13),
(18, 'C\'est beaucoup trop dangereux, vous êtes déjà trop loin et vous décidez de rebrousser chemin en courant.', 13, 16),
(19, 'Vous prenez votre courage a deux mains et vous aller voir.', 13, 14),
(20, 'Continuer.', 14, 15),
(21, 'Continuer.', 16, 17),
(22, 'Vous hésitez à la laisser entrer.', 17, 36),
(23, 'Son sourire vous fait craquer et vous l\'inviter à entrer avec plaisir.', 17, 18),
(24, 'Vous souriez poliment et déclinez son offre, son comportement est vraiment trop étrange.', 18, 22),
(25, 'Pourquoi se priver de voir sa charmante voisine ? Vous acceptez.', 18, 19),
(26, 'Continuer', 19, 20),
(27, 'Continuer', 20, 21),
(28, 'Vous la trouvez vraiment bizarre et vous lui demandez de quitter les lieux', 22, 23),
(29, 'Vous culpabilisez et vous vous excusez, après tout, elle n\'a pas l\'air si méchante. Vous décidez de l\'inviter au restaurant le lendemain.', 22, 19),
(30, 'Vous décidez de faire des recherches sur Mia suite à sa rencontre. Elle agit vraiment trop bizarrement...', 23, 24),
(31, 'Vous décidez d\'aller dans la cave pour voir s\'il n\'y a pas des personne à sauver.', 24, 25),
(32, 'Continuer.', 25, 26),
(33, 'Continuer.', 26, 27),
(34, 'Vous décidez de prévenir les forces de l\'ordre que des entités surnaturelles vivent dans votre immeuble et qu\'ils peuvent être très dangereux', 24, 28),
(35, 'Vous décidez de faire vos valises et de partir tant qu\'il est encore temps !', 28, 29),
(36, 'Continuer.', 29, 30),
(37, 'Vous lui expliquez tous ce que vous savez. Que cela ne servira a rien de l\'empêcher de partir et que vous avez prévenu la police (ce qui n\'est pas faux)', 30, 33),
(38, 'Vous prenez vos jambes à votre cou, c\'est le moment ou jamais de filer!', 30, 31),
(39, 'Continuer.', 31, 32),
(40, 'Vous le repoussez (gentiment, il n\'est pas très musclé, c\'est quand même un vieux monsieur !) et lui dites que vous pouvez l\'aider, qu\'il comprend votre cas et que s\'il veut il peut partir avec vous.', 33, 34),
(41, 'Vous le repoussez facilement, après tout ce n\'est qu\'un vieux monsieur et vous prenez vos jambes à votre cou.', 33, 31),
(42, 'Vous insistez.', 34, 35),
(43, 'Vous n\'insistez pas et vous vous enfuyez.', 34, 32),
(44, 'Vous refusez catégoriquement.', 36, 37),
(45, 'Vous la laissez entrer. Au moins elle vous fichera la paix.', 36, 18),
(46, 'C\'en est trop ! La cave qu\'on ne doit pas approcher, le proprio bargeot et la voisine folle dingue. Vous décidez de quitter cet appartement !', 37, 38),
(47, 'Vous décidez de la jouer fine, vous allez prendre Mia à son propre Jeu', 28, 39),
(48, 'Continuer.', 3, 1),
(49, 'Vous décidez de faire des recherches sur Mia suite à sa rencontre. Son comportement est beaucoup trop étrange et elle vous a presque menacé !', 37, 24),
(50, 'Vous trouvez que Mia se vexe quand même facilement mais vous culpabilisez de votre comportement, vous décidez de l\'inviter au cinéma le lendemain pour vous faire pardonnez.', 23, 19),
(51, 'S\'attaquer directement à Mia.', 39, 40),
(52, 'Utiliser Mr.K comme appât.', 39, 41),
(53, 'Continuer.', 40, 43),
(54, 'Continuer.', 41, 42),
(55, 'Continuer.', 42, 35),
(56, 'Refuser.', 43, 44),
(57, 'La suivre dans la cave.', 43, 45),
(58, 'La laisser là et partir sans jamais revenir.', 44, 32),
(59, 'La ligotter et l\'emmener dans la cave.', 44, 46),
(60, 'Vous la tuez. Pour en finir une bonne fois pour toute.', 46, 51),
(61, 'Vous l\'enfermez et gardez la clé avec vous.', 46, 47),
(62, 'Continuer.', 45, 48),
(63, 'Continuer.', 48, 49),
(64, 'Vous l\'attaquez.', 49, 50),
(65, 'Vous lui demander pourquoi elle ferme la porte à clé.', 49, 52),
(66, 'Vous en finissez une bonne fois pour toute.', 50, 51),
(67, 'Vous la ligottez là et vous partez sans jamais revenir.', 50, 32);

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
(1, 'https://zupimages.net/up/18/20/uv6m.jpg'),
(2, 'https://zupimages.net/up/18/20/4snf.jpg'),
(3, 'https://zupimages.net/up/18/20/bxm3.jpg'),
(4, 'https://a0.muscache.com/im/pictures/e40e4e9b-1cce-44e5-b270-a58d01ebe2a4.jpg?aki_policy=x_large'),
(5, 'https://www.publicdomainpictures.net/pictures/180000/velka/old-wood-wall-and-door-background.jpg'),
(6, 'https://zupimages.net/up/18/20/ouyq.jpg'),
(7, 'https://zupimages.net/up/18/20/1zpl.jpg'),
(8, 'https://zupimages.net/up/18/20/koa5.jpg'),
(9, 'https://zupimages.net/up/18/20/8cy4.jpg'),
(10, 'https://zupimages.net/up/18/20/pe6o.jpg'),
(11, 'https://zupimages.net/up/18/20/b7g1.jpg'),
(12, 'http://www.marseille-nettoyage.com/uploads/files/nettoyage-de-coproprietes-56.JPG'),
(13, 'http://footage.framepool.com/shotimg/qf/895753568-sion-town-hall-tower-clock-face-church-clock.jpg'),
(14, 'http://www.nordinfo.com/wp-content/uploads/2017/02/2016-01-25-09-47-41-Gratton-935x640.jpg'),
(15, 'https://pixabay.com/fr/encore-articles-choses-valises-2608807/'),
(16, 'https://pixabay.com/fr/aile-plan-battant-avion-ciel-221526/'),
(17, 'https://pixabay.com/fr/remise-des-dipl%C3%B4mes-teen-lyc%C3%A9e-995042/'),
(18, 'https://pixabay.com/en/dark-window-shine-light-room-1309884/');

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
(5, 'Une étrange voisine'),
(6, 'Sur les traces d\'une sombre histoire'),
(7, 'La cave, le retour.'),
(8, 'La fuite'),
(9, 'Happy Ending ?'),
(10, 'Le piège');

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
(1, 'MR. K.', 'https://zupimages.net/up/18/20/4gwd.png'),
(2, 'Mr. K', 'https://zupimages.net/up/18/20/rbfj.png'),
(3, 'Mr. K', 'https://zupimages.net/up/18/20/y3a0.png'),
(4, 'Mia', 'https://www.zupimages.net/up/18/20/ekr0.png'),
(5, 'Mia', 'https://zupimages.net/up/18/20/p51b.png'),
(6, 'Mia', 'https://zupimages.net/up/18/20/2cgp.png');

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
  `idCharacter` int(11) DEFAULT NULL,
  `fin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `event`
--

INSERT INTO `event` (`id`, `text`, `dialog`, `question`, `idChapter`, `idBackground`, `idCharacter`, `fin`) VALUES
(1, 'Vous êtes étudiant(e) et vous cherchez un logement pas cher pour pouvoir mettre de l\'argent de côté.', '', 'Que choisissez-vous ?', 1, 1, NULL, 0),
(2, 'Vous faites la connaissance de votre nouveau propriétaire : Mr.K. Il parle vraiment bizarrement mais vous essayez de passer outre ce dialecte étrange et vous comprenez qu\'il vous loue gratuitement l\'appartement en échange de quelques heures de travail pour s\'occuper des tâches ménagères de la résidence', 'Bonjour, Mon plaisir de vous rencontrer', 'Que lui répondez-vous ?', 1, 3, 1, 0),
(3, 'C\'est bien sûr trop beau pour être vrai vous vous retrouvez vite avec plein de problèmes sur le dos (fuite d\'eau, problème d\'électricité, inondation). Vous devez quitter le logement et vous n\'avez pas le choix. Retour à la case départ.', '', '', 1, 2, NULL, 0),
(4, 'Vous réponds Mr.K. Il a l\'air un peu énervé.', 'Vous n\'avez qu\'a aller voir ailleurs si vous n\'etes pas content, c\'est à prendre ou a laisser', '', 2, 3, 2, 0),
(6, 'Mr. K vous fait visiter votre appartement, vous donnes différentes consignes plus ou moins utiles (comme par exemple comment bien ouvrir le volet) et vous donne vos horaires de travail. Il vous met en garde de ne SURTOUT PAS vous approcher de la cave derrière le local à poubelle. Puis il s\'en va en vous souhaitant une bonne soirée pretextant qu\'il est déjà tard (17h...).', 'Suivez-moi, je vais vous montrer votre appartement, il se trouve au troisième étage, première porte de droite.', 'Que faites-vous ?', 2, 4, 1, 0),
(7, 'Vous faites le tour vous descendez les étages et regardez un peu les noms des personnes habitant ici, vous repérez vite l\'appartement de Mr. K au rez-de-chaussée et vous sortez voir un peu l\'exterieur.', '', '', 3, 3, NULL, 0),
(8, 'Vous vous dirigez vers le local de poubelles et vous voyez Mr.K entrer par un porte plus ou moins cachée derrière les poubelles (surement la fameuse cave). Il a l\'air très stressé.', '', '', 3, 5, NULL, 0),
(9, 'La porte est mal fermé, vous décidez d\'entrer dedans. Vous arrivez devant un escalier sombre qui a l\'air de continuer de descendre', '', 'Avancer dans la cave ?', 3, 6, NULL, 0),
(10, 'La cave a l\'air très grande et profonde, il y a beaucoup de porte autour de vous. ', '', 'Que faites-vous ?', 3, 7, NULL, 0),
(11, 'Vous vous enfoncez plus profondemment dans la cave.', '', '', 3, 8, NULL, 0),
(12, 'Vous arrivez devant un escalier qui descend, il y a des traces qui ressemblent à des tâches de sang. ', '', 'Continuer ?', 3, 9, NULL, 0),
(13, 'Il y a l\'air d\'avoir un homme allongé dans le couloir.', '', 'Aller voir s\'il est toujours en vie ?', 3, 10, NULL, 0),
(14, 'Vous voyez un cadavre complètement desséché. Vous êtes horrifiés et commencez à faire marche arrière, mais vous croisez le chemin de Mr.K', '', '', 4, 11, NULL, 0),
(15, 'Mr.K vous arrête et vous ne sortirez jamais vivant de cette cave.', 'Ou croyez vous partir comme ça ?', '', 4, 10, 3, 1),
(16, 'La nuit se passe et vous semblez faire des rêves agités, le lendemain est difficile comme un lendemain de soirée.', '', '', 5, 4, NULL, 0),
(17, 'Le lendemain votre voisine vient frapper à la porte. Souriante elle se présente au nom de Mia. Elle vous demande si elle peut entrer.', 'Bonjour, je suis la voisine du dessous et la fille de Mr.K, est-ce que je peux rentrer pour qu\'on fasse plus ample connaissance ?', 'La laisser entrer ?', 5, 12, 4, 0),
(18, 'Elle est très sympa, rigole à vos blagues et vous demande si elle peut repasser vous voir demain.', 'Je peux revenir demain ? ', 'Accepter ?', 5, 4, 4, 0),
(19, 'Le temps passe et vous commencez à passer de plus en plus de temps avec votre charmante voisine. Puis vous commencez à entamer une relation avec et les choses deviennent de plus en plus étrange.', '', '', 5, 13, NULL, 0),
(20, 'Vous commencez à ressentir des symptômes étrange de manque quand vous êtes loin d\'elle et vous l\'entendez vous appelez dans votre tête, vous ne pouvez résister à ses appels. Vous vous affaiblissez de jour en jour.', '', '', 5, 4, NULL, 0),
(21, 'Puis le jour vient ou elle vous emmène dans la cave. Vous n\'en ressortirez jamais vivant.', '', '', 5, 5, NULL, 1),
(22, 'Mia est sur le point de s\'en aller. Son comportement à complétement changer. Elle a l\'air de ne vraiment pas avoir apprécié votre réponse.', '', '', 5, 12, 5, 0),
(23, 'Vous êtes maintenant seul(e) dans votre appartement.', '', '', 6, 4, NULL, 0),
(24, 'Vous découvrez alors le Thread Twitter 3eme droite. Vous faites tout de suite le rapprochement avec la première nuit bizarre que vous avez passé, Mr.K, Mia et la cave.', '', '', 6, 1, NULL, 0),
(25, 'Vous descendez dans la cave, de plus en plus profondément.', '', '', 7, 9, NULL, 0),
(26, 'Vous découvrez alors le cadavre de "Munch" dont parlait le Thread. Un espèce de "vampire" qui a été tué bien avant que vous arriviez.', '', '', 7, 11, NULL, 0),
(27, 'Vous entrer dans toutes les pièces à la recherche de survivant. Vous espérez pouvoir retrouver Damien, le rédacteur de l\'histoire sur Twitter, mais d\'un coup la porte de la pièce dans laquelle vous vous trouver se referme derrière vous. Vous ne sortirez jamais vivant de cette cave.', '', '', 6, 7, NULL, 1),
(28, 'La police vous rit au nez et vous demande d\'arrêter vos canulars et de les appeler pour des raisons valables.', '', '', 6, 14, NULL, 0),
(29, 'Vos valises sont prêtes et vous ne laissez aucune trace de votre passage dans cet appartement.', '', '', 8, 15, NULL, 0),
(30, 'C\'est Mr.K Il vous a vu partir et vous interpelle depuis l\'escalier.', 'Ou est-ce que vous allez ?', '', 8, 3, 2, 0),
(31, 'Vous prenez le premier train et le premier avion que vous avez sous la main. Tous les endroits sont bons à prendre tant que c\'est loin de cet endroit maudit.', '', '', 8, 16, NULL, 0),
(32, 'Vous vivrez alors dans la paranoïa pendant des année en pensant vous faire traquer par Mia et Mr.K', '', '', 8, 5, NULL, 1),
(33, 'Fou de rage, Mr.K essaie de vous attrapez.', 'Vous ne vous en sortirez pas comme ça !', '', 8, 3, 3, 0),
(34, 'Mr.K se ressaisit et hésite à accepter votre proposition.', '', '', 8, 3, 1, 0),
(35, 'Mr.K et vous prenez le premier avion qui vient et vous partez vers les Îles Canari. Vous vivrez heureux ensemble en l\'aidant à ne pas succomber à l\'appel de Mia.', '', '', 8, 16, NULL, 1),
(36, 'Elle insiste, elle a l\'air d\'être vraiment contrariée.', '', '', 5, 12, 5, 0),
(37, 'Elle vous regarde comme si elle allait vous tuer puis s\'en va.', 'Tu le regretteras...', '', 5, 12, 5, 0),
(38, 'Vous finirez vos études avec succès après avoir quitter les lieux et vous vivrez une vie heureuse en gardant à l\'esprit que vous ne saurez jamais l\'histoire qui se cache derrière l\'appartement au 3eme étage à droite...', '', '', 9, 17, NULL, 1),
(39, 'Attention, Mia vous semble très manipulatrice et dangereuse, il faut réfléchir et définir une stratégie.', '', '', 10, 4, NULL, 0),
(40, 'Vous attendez plusieurs jours et vous élaborez un plan pour piéger Mia. Pendant ce temps vous restez cordiale avec Mia et Mr.K pour qu\'il ne se doute de rien. Un jour, Mia vient frapper à votre porte.', '', '', 10, 4, NULL, 0),
(41, 'Les jours passent et vous sympathisez avec Mr.K, il se méfie au début mais commence a bien vous apprécier.', '', '', 10, 13, NULL, 0),
(42, 'Finalement vous le prenez en pitié, vous lui expliquez que vous savez tout et que vous pouvez l\'aider à s\'échapper. Il hésite un instant puis accepte de partir avec vous.', '', '', 10, 3, 1, 0),
(43, 'A tout coup elle veut vous piéger. ', '', 'Que décidez-vous de faire ?', 10, 12, 4, 0),
(44, 'Elle se jette alors à votre cou comme une folle dingue. Vous vous débattez et finissez par l’assommer.', '', 'Que décidez-vous de faire ?', 10, 12, 6, 0),
(45, 'Vous la suivez (heureusement depuis le jour ou vous savez vous garder toujours une arme sur vous) et vous allez dans la cave.', '', '', 10, 6, NULL, 0),
(46, 'Une fois arrivé dans la cave, vous vous retrouvez dans une pièce que vous pouvez fermer à clé.', '', ' Que faites-vous ?', 10, 8, NULL, 0),
(47, 'Vous finirez vos études avec succès et préviendrez tous les locataires de l\'immeuble ce qu\'il peuvent risquer en venant habiter ici, tout en gardant un oeil attentif à Mia. Puis vous partirez en vous assurant que Mia ne pourra plus faire de mal à qui que ce soit..', '', '', 10, 17, NULL, 1),
(48, 'Elle vous emmène de plus en plus profond dans cette cave, comme si elle connaissait déjà les lieux...', 'Suis-moi, je crois qu\'il est parti par là la dernière fois !', '', 10, 9, 4, 0),
(49, 'Vous arrivez dans une pièce sombre et elle ferme la porte à clé.', '', 'Que faites-vous ?', 10, 18, NULL, 0),
(50, 'Vous réussisez à l\'assomer avant qu\'elle se retourne. ', '', 'Que faites-vous ?', 10, 18, NULL, 0),
(51, 'Une fois le travail terminé, vous faites vos bagages et vous vous en allez. Vous allez passer votre vie à traquer ces personnes surnaturelles. On vous appellera "Le Chasseur".', '', '', 10, 15, NULL, 1),
(52, 'Elle se retourne et vous attaque, vous n\'avez pas le temps de sortir votre arme que vous gardiez toujours sur vous ! Vous ne réussirez pas à sortir vivant de cette cave.', 'Groaaaaaaaah !', '', 10, 18, 6, 1);

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
(3, 'utilisateur1', 'utilisateur1@gmail.com', '$2y$10$ZbsnANMXuONUnYWbI.9KF.GdNbsKjmnTyWmtaWaPaATj34z39kkh2', NULL, '2018-04-20 11:01:19', '2018-04-20 11:01:19', NULL),
(4, 'melanie', 'melanie@melanie.com', '$2y$10$vImA5JpArTxJnSDAkG2cweb5B4WyRbCST5sMIgjvKUpegTjhypOby', NULL, '2018-04-21 18:42:51', '2018-04-21 18:51:21', 9),
(5, 'Chloé', 'chloecaquant@hotmail.com', '$2y$10$rnsN499m34h9Mvhqq7Myye9lmiHkhhiOBoXWWAUrKN5lXCi6SSQze', NULL, '2018-05-15 04:54:32', '2018-05-15 07:57:48', 4);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT pour la table `background`
--
ALTER TABLE `background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `character`
--
ALTER TABLE `character`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
