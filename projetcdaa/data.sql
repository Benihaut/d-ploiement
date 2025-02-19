-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 12 fév. 2025 à 13:57
-- Version du serveur : 8.0.35
-- Version de PHP : 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetcda`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenue` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datearticle` datetime NOT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `contenue`, `auteur`, `datearticle`, `category_id`) VALUES
(13, 'les sorties', 'les sorties c\'est tout les vendredi reste bien à l\'affut.okook', 'BABA', '2025-01-10 00:00:00', 1),
(14, 'Concert cet hiver', 'retrouve au casino de Paris les 12 13 14 février', 'Leplug', '2025-01-20 00:00:00', 2),
(15, 'Concert en belgique', 'retrouve moi le 20/02 à liège', 'Rookie', '2025-01-20 00:00:00', 2),
(16, 'Session d\'écoute', 'Viens avec nous pour une session d\'écoute full fire la date et le lieu sera publier très bientot', 'Killah', '2025-01-20 00:00:00', 2),
(17, 'ou acheter l\'album', 'nos projet sont disponible sur toute les plateformes et bientot à la fnac', 'BéniHaut', '2025-01-20 00:00:00', 3),
(18, 'Rime', 'Si je le fais pas/  qui va l’fait / à ma place / même si y en a plein qui sont prêt à l’fait / attends / j’ cède pas le droit / je préfère le faire moi-même/ qui sais / mettre autrui dans mes méfaits /j’sais pas l’faire / faut que je fasse propre / mes affaires / Maitre de mon chemin / trop loyal pour ce monde / Putin / qui suis je / j’essuie mes peines à frais /non mon frère /je ne suis pas parfait /comme l’indique mon acte de naissance /  je suis cet être humain /peut-être monarque d’autre temps /qui sais /crache pas suis le name /c’est une partie de mon âme / d’où je prend aisance / à mon arc trop mérite / mon image peut pas ternie / je le soignes il faut que ça brille /', 'BéniHaut', '2025-01-20 00:00:00', 1),
(20, 'check', 'je suis check', 'jo', '2025-01-23 00:00:00', 1),
(21, 'Mondays', 'mondays c\'est chaud', 'oui', '2025-01-23 00:00:00', 1),
(22, 'MAGIC', 'Des fois tout est magic des fois non', 'Joey', '2025-01-24 00:00:00', 1),
(24, 'SHOWCASE', 'Viens nous voir en showcase c\'est FULLFIRE', 'BéniHaut', '2025-01-25 00:00:00', 2),
(28, 'Titre de test', 'Contenu de test', 'Auteur de test', '2025-01-31 16:53:19', NULL),
(30, 'Jeudi fou', 'c\'est jeudi on est fou et flou', 'fouteux', '2025-02-01 19:31:42', NULL),
(31, 'Jeudi fou', 'c\'est jeudi on est fou et flo', 'fouteux', '2025-02-01 19:32:20', NULL),
(32, 'Jeudi fou', 'c\'est jeudi on est fou et flou', 'fouteux', '2025-02-01 19:33:19', NULL),
(33, 'Concert en belgiqu', 'retrouve moi le 20/02 à liège', 'Rookie', '2025-02-01 19:33:39', NULL),
(34, 'les sorties', 'les sorties c\'est tout les vendredi reste bien à l\'aff', 'BABA', '2025-02-01 19:41:49', NULL),
(35, 'les sorties', 'les sorties c\'est tout les vendredi reste bien à l\'aff', 'BABA', '2025-02-01 20:30:37', NULL),
(36, 'les sorties', 'les sorties c\'est tout les vendredi reste bien à l\'affut', 'BABA', '2025-02-01 20:30:53', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `nomcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `nomcategory`) VALUES
(1, 'News'),
(2, 'Next Date'),
(3, 'Get The Albums');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int NOT NULL,
  `datecommentaire` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `contenu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `idarticle_id` int NOT NULL,
  `statut` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `datecommentaire`, `contenu`, `user_id`, `idarticle_id`, `statut`) VALUES
(61, '2025-01-10 00:00:00', '<snsns,<,<', 1, 13, 'approuve'),
(62, '2025-01-10 00:00:00', 'mais bien', 1, 13, 'approuve'),
(88, '2025-01-20 19:23:59', 'bien', 17, 18, 'approuve'),
(99, '2025-01-24 00:00:00', 'ok ok', 16, 14, 'approuve'),
(103, '2025-01-25 00:00:00', 'j\'aime bien', 16, 22, 'en_attente');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;s:30:\\\"reset_password/email.html.twig\\\";i:1;N;i:2;a:1:{s:10:\\\"resetToken\\\";O:58:\\\"SymfonyCasts\\\\Bundle\\\\ResetPassword\\\\Model\\\\ResetPasswordToken\\\":4:{s:65:\\\"\\0SymfonyCasts\\\\Bundle\\\\ResetPassword\\\\Model\\\\ResetPasswordToken\\0token\\\";s:40:\\\"KRhx3iMMlLrLqGSipcRNVtWLWPSArMpW6ZLNc3q3\\\";s:69:\\\"\\0SymfonyCasts\\\\Bundle\\\\ResetPassword\\\\Model\\\\ResetPasswordToken\\0expiresAt\\\";O:17:\\\"DateTimeImmutable\\\":3:{s:4:\\\"date\\\";s:26:\\\"2025-01-14 14:58:46.384024\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:71:\\\"\\0SymfonyCasts\\\\Bundle\\\\ResetPassword\\\\Model\\\\ResetPasswordToken\\0generatedAt\\\";i:1736863126;s:73:\\\"\\0SymfonyCasts\\\\Bundle\\\\ResetPassword\\\\Model\\\\ResetPasswordToken\\0transInterval\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:18:\\\"benihaut@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:14:\\\"benihaut benyo\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:7:\\\"i@i.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:27:\\\"Your password reset request\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2025-01-14 13:58:46', '2025-01-14 13:58:46', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password_request`
--

INSERT INTO `reset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(1, 17, 'KRhx3iMMlLrLqGSipcRN', 'l2VgPhoogmsrHWNVxiJAv+3gWm+XWcPZbJ2QomHIJxQ=', '2025-01-14 13:58:46', '2025-01-14 14:58:46');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `pseudonyme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `email`, `adresse`, `telephone`, `password`, `roles`, `pseudonyme`) VALUES
(1, 'marche', 'lieu', 'marche@marche.com', 'rue gecha', '00000', '$2y$13$YY02bel.DwBMFvUduUuH3e22WQfV0mRc19i00/fOPNTWdmTIGAPcC', 'null', '_1'),
(2, 'marche', 'lieu', 'hhjklklk@hhhjh.com', 'rue gecha', '00000', '$2y$13$WUb5eKbd4QOhGmB9oltcOuXQVoBswArkC7ca/pTOCk7c39C6u91HS', 'null', '_2'),
(3, 'ghii', 'thk', 'ghjkjkj@hjj.com', 'rue bigo', '00000', '$2y$13$ZhYtyhX/VtDYxEntNpNEweUvUk3gzms.7R1I4qbcAwZKLAILaRqBu', 'null', '_3'),
(4, 'hash', 'lieu', 'h@h.com', 'rue peguy', '457789655', '$2y$13$4HvsG4jVLYgAGwKnWypzueERRRzxSsxFttGxzk6gPFq6RjoSoZkhm', 'null', '_4'),
(5, 'jjkjlkmj', 'gguuuu', 'hdhdhdhd@jdjdjdk.com', 'rue bigo', '997778777', '$2y$13$yOWC.7RxrBxP0XrLe8VcpOaXWaBCmbdMLdkzF6C3OIMDgb8ehDoPu', 'null', '_5'),
(6, 'ehheeue', 'dfjjfjfjfj', 'eeyeueuu@dhdhd.com', 'rue peguy', '008765555', '$2y$13$cNqVVncZGaLhl8RgYqrLtuIftYS.aMZGrQuFutwvMdAcuw6tj4ym6', 'null', '_6'),
(7, 'dhhdhhh', 'fhhhhfd', 'hfhshsjsj@hdhfhfh.com', 'fjxjxxkxkff', '9876543', '$2y$13$2XleB8OjRJOYu43eYAFBDOsTIGRqjywbpZcZXPZH0CX7kS6sGt.R2', 'null', '_7'),
(8, 'hdhfftyrr', 'fhfhhff', 'jsjsjsru@jfjfj.com', 'rue ji', '09511222333', '$2y$13$iPRAL5c6h6zdBvb5rBwxk.MssG1uVAUe9wFt.5qN8FMNcH.DiW8Se', 'null', '_8'),
(9, 'sdhhshsh', 'dsjjsdjs', 'g@g.com', 'rue ju', '00887777', '$2y$13$6wzbhYW0.1tAVcCcHUuXsOf6uiXQ7odQbZBXfxVowfjbOQvhv5Ec2', 'null', '_9'),
(10, 'hfhhf', 'jfjfjf', 't@t.com', 'rue ko', '099877766', '$2y$13$RHfgcjoR5JoJbnaOnLvazeURnoJP5BZy4LCpoQgl38Irb8K3nC5ve', 'null', '_10'),
(11, 'kdjfkjfj', 'djfjdfjhe', 'k@k.com', 'rue peguy', '0000000', '$2y$13$UaR7o0sB9POFejU9a97bvOY9SLXqdRH6fL1lMiTK5QI3L2tZrPorS', 'null', '_11'),
(12, 'back', 'backi', 'b@b.com', 'rue pegre', '997778777', '$2y$13$3a74HxYPLPE/ZFYSi5jqleEhR54JmOFK5ph45TdgXutDoJhk.roLu', 'null', '_12'),
(13, 'hhhdhdhdh', 'bdbdddhd', 'd@d.com', 'gdggddtdt', '000000', '$2y$13$pSgQnL2KLq62z/dZ68VKb.ZKx1yUMWu9tStCjBs3IAYirXxtTdtM6', 'null', '_13'),
(14, 'cash', 'cachy', 'c@c.com', 'rue dembe', '111111111', '$2y$13$det5g2DJxH.665ZKL3/fg.mwsAUXLmf2Sv4fidOj5HlNvV.yNH/ki', 'null', '_14'),
(15, 'hugo', 'hugot', 'u@u.com', 'rue chaggy', '999999999', '$2y$13$sT2S1f7hm6zA8Fam0vHWdONniXdudJLHQF5QB3fq1/uv7zwM.ejmy', 'null', '_15'),
(16, 'zozo', 'zoui', 'z@z.com', 'gyuuuu', 'hhhhdbdbdddh', '$2y$13$gDZvB00ZhmivabKNMl47W.dMVKXnWrhNzDMK.VWlgeQL2C13h5kLW', '[\"ROLE_ADMIN\"]', '_16'),
(17, 'Lili', 'Li', 'i@i.com', 'yyyy', '997777666', '$2y$13$F.DgwxEnoiyOYuLIaifQ/utatymxqGufdt5ntWbqxf0wopNosOdqu', '[]', '_17'),
(18, 'PP', 'PPP', 'p@p.com', 'hdhdjdj', 'dddkkdkk', '$2y$13$F0xz5bMXg0T31dZGiGtpTOmYU/DZuRabAQleJgCwZh6aOlC9qptkK', '[]', '_18'),
(19, 'yoyo', 'hty', 'y@y.com', 'rue tchoin', '00976543456', '$2y$13$czHDcGzGc/N6i42mzXRP..AY1NMkBbfFni/hosf1RQThPBTnC8DVy', '[]', 'yoyo-hty-67864e68078d5'),
(20, 'hui', 'hdhd', 'a@a.com', 'rue yui', '09755444444', '$2y$13$XKf4Z.zaqInfUPbMX3EujuQuqoGhGpVABgr9KgLLHfXJAfEPUn4Ty', '[]', 'hui-hdhd-6786521c940ab'),
(21, 'DOUI', 'Rene', 'su@su', 'rue rené', '098654444', '$2y$13$Da1vWa6L87.2eNVIB3qAPOjY9fxdlqz1pkXjO6IbMGlRPXjtsZZfe', '[\"ROLE_USER\"]', 'DOUI-Rene-6794f9cca00b0'),
(22, 'Namar', 'Nan', 'na@na.com', 'rue guechar', '98654433', '$2y$13$xkExaM2RfrUNsK/aNC2xMu8Etx16oVr.DR3s/ozqJrwEWqCaXvXWS', '[\"ROLE_USER\"]', 'Namar-Nan-6794fa554e058'),
(23, 'zaza', 'zaza', 'za@za.com', 'rue zaza', '986543333444', '$2y$13$C2yzZ638Qm7S8iw3WvTdhe.dqUBEgLqFLWNqOUC4Mpf990tasvuCK', '[\"ROLE_USER\"]', 'zaza-zaza-6794fb4043d94'),
(24, 'jedi', 'jetli', 'je@je.com', 'rue jetli', '00887777', '$2y$13$Xg7DM9zHr1H7hxEXQTJkc.sWNf7709onz8tDY3zAA0yf2kZxyTDHm', '[\"ROLE_USER\"]', 'jedi-jetli-67a24ece4ad5c');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E6612469DE2` (`category_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_67F068BCA76ED395` (`user_id`),
  ADD KEY `IDX_67F068BCBF3D9BA6` (`idarticle_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D6491FE3BDAF` (`pseudonyme`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BCA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_67F068BCBF3D9BA6` FOREIGN KEY (`idarticle_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
