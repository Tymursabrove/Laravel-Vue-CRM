-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июл 31 2023 г., 15:34
-- Версия сервера: 5.7.43
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `crm`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_07_20_100050_create_roles_table', 1),
(5, '2023_07_20_100439_create_tickets_table', 1),
(6, '2023_07_20_100523_create_messages_table', 1),
(7, '2023_07_20_162056_alter-users-table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(2, 'Client', '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(3, 'Manager', '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(4, 'Main-Nanager', '2023-07-31 08:53:22', '2023-07-31 08:53:22');

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`id`, `title`, `description`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Maiores non cum quam nesciunt fugiat.', 'Odio reprehenderit excepturi autem veniam nostrum minus labore eos.', 0, 2, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(2, 'Voluptatem perferendis non quam quo.', 'Eos expedita atque et aut.', 0, 2, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(3, 'Exercitationem et voluptatum provident beatae enim tenetur.', 'Et mollitia dicta et.', 0, 2, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(4, 'Optio ad sequi odio.', 'Provident libero omnis molestias consequuntur minima similique.', 3, 3, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(5, 'Eligendi similique rem nemo quidem sed labore.', 'Et tenetur enim illo maxime assumenda illum voluptatum.', 0, 3, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(6, 'Maiores vero repellat qui quam.', 'Doloribus inventore est qui debitis et rerum quis.', 3, 3, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(7, 'Est iste id voluptatem ea.', 'Aspernatur dolor aut consequatur.', 3, 4, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(8, 'Quidem corporis sit eaque unde in.', 'Suscipit quibusdam in vel iure itaque saepe explicabo.', 0, 4, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(9, 'Aperiam quibusdam accusantium maxime repellendus voluptas qui magnam.', 'Omnis est quo debitis adipisci illo.', 3, 4, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(10, 'Ad commodi doloremque reiciendis qui quisquam inventore.', 'Vero quod iusto dignissimos explicabo voluptate magni ratione.', 0, 5, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(11, 'In sed ullam ipsa itaque eum consequatur corrupti.', 'Enim dolores facere quod iusto.', 2, 5, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(12, 'Sed sit assumenda fugiat nam consequuntur ut rerum.', 'Consectetur molestiae rerum tempore distinctio officia.', 3, 5, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(13, 'Laboriosam impedit sint ea laboriosam cupiditate odit eligendi.', 'Ut quasi voluptates a quis vitae pariatur.', 2, 6, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(14, 'Quis dolorem vel omnis sint atque.', 'Officiis consequatur cupiditate laudantium.', 3, 6, '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(15, 'Fuga aliquam et unde.', 'Ipsa explicabo optio excepturi sit molestias.', 3, 6, '2023-07-31 08:53:22', '2023-07-31 08:53:22');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samanta Mitchell', 'mohammad.goldner@example.net', 1, '2023-07-31 08:53:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZIgfxuKqov', '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(2, 'Armando Casper', 'mhyatt@example.org', 2, '2023-07-31 08:53:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7zOJAHKcNz', '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(3, 'Federico Friesen', 'friesen.elisa@example.org', 2, '2023-07-31 08:53:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HHMb5hzEun', '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(4, 'Chyna Feest', 'zcollier@example.org', 2, '2023-07-31 08:53:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S2PojPcR30', '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(5, 'Estell Donnelly', 'wwuckert@example.org', 2, '2023-07-31 08:53:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1ea50V7nMJ', '2023-07-31 08:53:22', '2023-07-31 08:53:22'),
(6, 'Schuyler Wisoky', 'katheryn.medhurst@example.com', 2, '2023-07-31 08:53:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yzf4Bnxdon', '2023-07-31 08:53:22', '2023-07-31 08:53:22');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
