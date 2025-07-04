-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.127.126.26
-- Время создания: Июл 04 2025 г., 12:28
-- Версия сервера: 8.0.35
-- Версия PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `php_sql_task`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `slug` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `content`) VALUES
(1, '/', 'home', '<h4 class=\"text-center\">Задача Дмитрия Трепачёва из учебника по PHP</h4>\r\n<a href=\"https://code.mu/ru/php/book/prime/driver/routing/\" target=\"_blank\"><h5 class=\"text-center\">Простой роутинг в движке PHP</h5></a>\r\n<p>Пусть у вас есть сайт с юзерами. Сделайте страницу для показа одного юзера, страницу для вывода всех юзеров и страницу с формой для добавления нового юзера.</p>'),
(2, '404', 'Страница 404', '<div class=\"text-center\">Эту страницу ещё не написали...</div><div class=\"text-center\">...вернуться на <a href=\"/\">главную</a></div>'),
(3, 'new_user', 'new user', '<h4 class=\"text-center\">Добавить нового пользователя</h4>\r\n<form class=\"col-sm-12 p-4 p-md-0 col-md-6 mx-auto\" method=\"POST\" >\r\n	<div class=\"mb-3\">\r\n		<label for=\"InputUserName\" class=\"form-label\">Имя</label>\r\n		<input type=\"text\" class=\"form-control\" id=\"InputUserName\" name=\"userName\">\r\n	</div>\r\n	<div class=\"mb-3\">\r\n		<label for=\"InputSurName\" class=\"form-label\">Фамилия</label>\r\n		<input type=\"text\" class=\"form-control\" id=\"InputSurName\" name=\"userSurName\">\r\n	</div>\r\n	<div class=\"mb-3\">\r\n		<label for=\"InputBirthDate\" class=\"form-label\">Дата рождения</label>\r\n		<input type=\"date\" class=\"form-control\" id=\"InputBirthDate\" name=\"userBirthDate\">\r\n	</div>\r\n<button type=\"submit\" class=\"btn btn-primary\">Зарегистрировать</button>\r\n	</form>');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `birthdate`) VALUES
(1, 'user', 'Surn', '2025-07-01'),
(2, 'user2', 'surn2', '2025-07-02'),
(3, 'user3', 'Surn3', '2025-07-03'),
(4, 'User4', 'Surn4', '2025-07-04'),
(5, 'user5', 'surn5', '2025-07-05');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
