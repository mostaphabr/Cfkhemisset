-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 11 juil. 2024 à 20:12
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `api_laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

CREATE TABLE `evenements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` enum('annonce','activite') NOT NULL,
  `institut_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `evenement_user`
--

CREATE TABLE `evenement_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `evenement_id` bigint(20) UNSIGNED NOT NULL,
  `date_participation` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `filieres`
--

CREATE TABLE `filieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_filiere` varchar(255) NOT NULL,
  `secteur_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `filieres`
--

INSERT INTO `filieres` (`id`, `nom_filiere`, `secteur_id`, `created_at`, `updated_at`) VALUES
(1, 'Developpement digital', 1, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(2, 'Dessinateur de bâtiment', 2, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(3, 'Electricité de Maintenance Industrielle', 3, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(4, 'Electricité de Bâtiment', 3, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(5, 'Electricité d\'Entretien Industriel', 3, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(6, 'Infrastricture digital', 1, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(7, 'Developpement digital', 1, '2024-07-07 20:32:33', '2024-07-07 20:32:33');

-- --------------------------------------------------------

--
-- Structure de la table `instituts`
--

CREATE TABLE `instituts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_institut` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `instituts`
--

INSERT INTO `instituts` (`id`, `nom_institut`, `created_at`, `updated_at`) VALUES
(1, 'ISTA KHEMISSET', '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(4, 'Haag Ltd', '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(8, 'Purdy Group', '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(32, 'Marquardt Group', '2024-07-07 20:32:33', '2024-07-07 20:32:33');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2004_07_05_150606_create_instituts_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_07_05_153344_create_evenements_table', 1),
(7, '2024_07_05_153923_create_evenement_user_table', 1),
(8, '2024_07_05_154859_create_secteurs_table', 1),
(9, '2024_07_05_155243_create_filieres_table', 1),
(10, '2024_07_05_155751_create_options_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_option` varchar(255) NOT NULL,
  `filiere_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `options`
--

INSERT INTO `options` (`id`, `nom_option`, `filiere_id`, `created_at`, `updated_at`) VALUES
(1, 'DEVOWFS', 1, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(2, 'DEVOMA', 1, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(3, 'Génie Civil option bâtiment', 2, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(4, 'Génie Civil option méthodes en BTP', 2, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(5, 'IDOCS', 6, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(6, 'IDOSR', 6, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(7, 'DEVOMA', 7, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(8, 'DEVOWFS', 7, '2024-07-07 20:32:33', '2024-07-07 20:32:33');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '881d400773d2f68e43bb6670b5188ed7ee427c43df9527a648eed33c4590dccf', '[\"*\"]', NULL, NULL, '2024-07-11 16:14:23', '2024-07-11 16:14:23'),
(2, 'App\\Models\\User', 1, 'API TOKEN', 'd485945b645c2aac3da7867d397fe60f22cfec28096c3b0c92e961a3b093583e', '[\"*\"]', NULL, NULL, '2024-07-11 16:14:26', '2024-07-11 16:14:26'),
(3, 'App\\Models\\User', 1, 'API TOKEN', '7ca6de668a2e2346d4793ebb74931f0897eb074061f1520c8589cbfc03e94adb', '[\"*\"]', NULL, NULL, '2024-07-11 16:14:32', '2024-07-11 16:14:32'),
(4, 'App\\Models\\User', 11, 'API TOKEN', 'b5f88f78c0eb8a84c5cb5efe98a398764df9f9db4046ac1e2fdc48d5f4536155', '[\"*\"]', NULL, NULL, '2024-07-11 16:29:42', '2024-07-11 16:29:42'),
(5, 'App\\Models\\User', 12, 'API TOKEN', '12ee2c9d853180a0fd55f023251b3faf2e2d2e67880464ffa556103af8bbfd3e', '[\"*\"]', NULL, NULL, '2024-07-11 16:32:32', '2024-07-11 16:32:32'),
(6, 'App\\Models\\User', 12, 'API TOKEN', 'ec7068d40a9f2e9e441fe0646d9d7032b08cbaf9ea888488ecb9aabcc1c64e43', '[\"*\"]', NULL, NULL, '2024-07-11 16:36:16', '2024-07-11 16:36:16'),
(7, 'App\\Models\\User', 12, 'API TOKEN', '5fb1d22d2faa9e6ee09522600ad69c92c63741b695914dcb3e84d1a997720ef7', '[\"*\"]', NULL, NULL, '2024-07-11 16:45:18', '2024-07-11 16:45:18'),
(8, 'App\\Models\\User', 13, 'API TOKEN', 'bc6484b9326423b2ec1e301abdbe448e50559e536707e7756092e7833f1e6fa0', '[\"*\"]', NULL, NULL, '2024-07-11 17:28:50', '2024-07-11 17:28:50'),
(9, 'App\\Models\\User', 14, 'API TOKEN', '806ddf400b8b3d5c57330ded5f72f033a9e684682cad5d815faba6bee7a368dc', '[\"*\"]', NULL, NULL, '2024-07-11 17:30:57', '2024-07-11 17:30:57'),
(10, 'App\\Models\\User', 15, 'API TOKEN', '9d30851a9d8384cdb469ce683b695fcbbfb3267daf43b45651137efca0a7ae6c', '[\"*\"]', NULL, NULL, '2024-07-11 17:31:42', '2024-07-11 17:31:42'),
(11, 'App\\Models\\User', 16, 'API TOKEN', '5ed0c0b6b1a77e83b585abc44273dbe5afd0f642dddf4ab21c3dcef460c9e45e', '[\"*\"]', NULL, NULL, '2024-07-11 17:32:23', '2024-07-11 17:32:23'),
(12, 'App\\Models\\User', 16, 'API TOKEN', 'dfcebd2312f4995ec49e4a403c96665cffb1338a4ca668ad653b435f1610d4e5', '[\"*\"]', NULL, NULL, '2024-07-11 17:42:59', '2024-07-11 17:42:59'),
(13, 'App\\Models\\User', 12, 'API TOKEN', '96f2e7ecf11b2614f2880fd82084b45c1d5d7176dfa496671177621b720e5ba8', '[\"*\"]', NULL, NULL, '2024-07-11 17:44:17', '2024-07-11 17:44:17'),
(14, 'App\\Models\\User', 12, 'API TOKEN', 'ac987d2c3c8c8bad4bde19b0708450ae766fac99b971a709aca9887a701358df', '[\"*\"]', NULL, NULL, '2024-07-11 17:44:53', '2024-07-11 17:44:53'),
(15, 'App\\Models\\User', 1, 'API TOKEN', '49bf9fd121add983db01653401972077d48e0852a4930b6520c18e25fcba8ffc', '[\"*\"]', NULL, NULL, '2024-07-11 18:02:42', '2024-07-11 18:02:42');

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

CREATE TABLE `secteurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_secteur` varchar(255) NOT NULL,
  `institut_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `secteurs`
--

INSERT INTO `secteurs` (`id`, `nom_secteur`, `institut_id`, `created_at`, `updated_at`) VALUES
(1, 'Digital et IA', 1, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(2, 'BTP', 1, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(3, 'Génie électrique', 1, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(4, 'Gorczany, Heidenreich and Conroy', 4, '2024-07-07 20:32:33', '2024-07-07 20:32:33');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` enum('admin','CAD','stagiaire') NOT NULL,
  `institut_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `institut_id`, `created_at`, `updated_at`) VALUES
(1, 'Marouane Brouk', 'marouane@gmail.com', '2024-07-07 20:32:33', '$2y$10$ooWXLGqomQ1v4H/coplWm.WFP.QT7jB1TJcCha9mY4savXbYRCoFu', 'qUUJz946Ds', 'admin', 1, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(2, 'Hollis Kovacek', 'jennie30@example.net', '2024-07-07 20:32:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v15mJRO102', 'stagiaire', 32, '2024-07-07 20:32:33', '2024-07-07 20:32:33'),
(11, 'ilyass', 'ilyass@gmail.com', NULL, '$2y$10$9lqCUT50aW1LZgCXv0FHKuewf41FrvZ5LYxm.EGNuwYsCYLLtPd36', NULL, 'admin', 1, '2024-07-11 16:29:42', '2024-07-11 16:29:42'),
(12, 'ilyass2', 'ilyass2@gmail.com', NULL, '$2y$10$N58/pHCV4rBhjMqxjq/HSuX/4LbIhKUVwya1UfH9XaOJZlWpB/WoC', NULL, 'CAD', 1, '2024-07-11 16:32:32', '2024-07-11 16:32:32'),
(13, 'fatima', 'fatima@gmail.com', NULL, '$2y$10$VJ1/XAYlau0CvD2n8AqQj.9ZcuI13alwYr8JHxOaGOh2RiArZd6kC', NULL, 'stagiaire', 1, '2024-07-11 17:28:50', '2024-07-11 17:28:50'),
(14, 'fatima', 'fatima2@gmail.com', NULL, '$2y$10$1r.LdrnJ3k7xd05Vpj48nejvCko9UGHfENFDjsSd1jNuU4apQigfW', NULL, 'stagiaire', 1, '2024-07-11 17:30:57', '2024-07-11 17:30:57'),
(15, 'fatima', 'fatima3@gmail.com', NULL, '$2y$10$X6oY7H90rEGS/um7bjpVM.yvFkl3av5lNfzj.yWgTplOWQ4jBaH.6', NULL, 'stagiaire', 1, '2024-07-11 17:31:42', '2024-07-11 17:31:42'),
(16, 'fatima', 'fatima4@gmail.com', NULL, '$2y$10$CrwZjImG.1/8CUkuCjQeq.U7sbcWr7xdyR8kuNWows5skce18JcW.', NULL, 'stagiaire', 1, '2024-07-11 17:32:23', '2024-07-11 17:32:23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evenements_institut_id_foreign` (`institut_id`);

--
-- Index pour la table `evenement_user`
--
ALTER TABLE `evenement_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evenement_user_user_id_foreign` (`user_id`),
  ADD KEY `evenement_user_evenement_id_foreign` (`evenement_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `filieres`
--
ALTER TABLE `filieres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filieres_secteur_id_foreign` (`secteur_id`);

--
-- Index pour la table `instituts`
--
ALTER TABLE `instituts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_filiere_id_foreign` (`filiere_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `secteurs`
--
ALTER TABLE `secteurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `secteurs_institut_id_foreign` (`institut_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_institut_id_foreign` (`institut_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `evenement_user`
--
ALTER TABLE `evenement_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `filieres`
--
ALTER TABLE `filieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `instituts`
--
ALTER TABLE `instituts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `secteurs`
--
ALTER TABLE `secteurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `evenements`
--
ALTER TABLE `evenements`
  ADD CONSTRAINT `evenements_institut_id_foreign` FOREIGN KEY (`institut_id`) REFERENCES `instituts` (`id`);

--
-- Contraintes pour la table `evenement_user`
--
ALTER TABLE `evenement_user`
  ADD CONSTRAINT `evenement_user_evenement_id_foreign` FOREIGN KEY (`evenement_id`) REFERENCES `evenements` (`id`),
  ADD CONSTRAINT `evenement_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `filieres`
--
ALTER TABLE `filieres`
  ADD CONSTRAINT `filieres_secteur_id_foreign` FOREIGN KEY (`secteur_id`) REFERENCES `secteurs` (`id`);

--
-- Contraintes pour la table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_filiere_id_foreign` FOREIGN KEY (`filiere_id`) REFERENCES `filieres` (`id`);

--
-- Contraintes pour la table `secteurs`
--
ALTER TABLE `secteurs`
  ADD CONSTRAINT `secteurs_institut_id_foreign` FOREIGN KEY (`institut_id`) REFERENCES `instituts` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_institut_id_foreign` FOREIGN KEY (`institut_id`) REFERENCES `instituts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
