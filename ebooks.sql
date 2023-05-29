-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2023 a las 04:05:00
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ebooks`
--
create database ebooks;

use ebooks;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `authors`
--

INSERT INTO `authors` (`id`, `name`, `bio`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Gabriel Garcia Marquez', 'fue un escritor y periodista colombiano. Reconocido principalmente por sus novelas y cuentos, también escribió narrativa de no ficción, discursos, reportajes, críticas cinematográficas y memorias. Estudió derecho y periodismo en la Universidad Nacional de Colombia, e inicio sus primeras colaboraciones periodísticas en el diario \"El Espectador\". Fue conocido como Gabo, y familiarmente y por sus amigos, como Gabito.3​4​ En 1982 recibió el Premio Nobel de Literatura5​ «por sus novelas e historias cortas, en las que lo fantástico y lo real se combinan en un mundo ricamente compuesto de imaginación, lo que refleja la vida y los conflictos de un continente»', 'http://localhost/ebooks/public/photo/tziWZr0N49GauDKgwYuIksYAXRI2XLPbLUzIZ62v.jpeg', '2023-05-29 03:10:09', '2023-05-29 07:00:22', NULL),
(2, 'Fernando Vallejo', 'Fernando Vallejo es uno de los siete hijos del ex senador, exministro de Desarrollo, expresidente del directorio conservador de Antioquia, exsecretario de Gobierno y abogado conservador Aníbal Vallejo Álvarez. El futuro escritor creció en Medellín, su ciudad natal.8​\r\n\r\nAficionado a la música clásica, gustaba de tocar al piano las obras de Mozart, Chopin, Gluck y Richard Strauss. Tras un año de estudios en la Facultad de Filosofía y Letras de la Universidad Nacional de Colombia en Bogotá, se licenció en Biología en la Universidad Javeriana. Viajó a Europa y estudió cinematografía en Italia, en la Escuela Experimental de Cinecittá. El 25 de febrero de 1972 se trasladó a Ciudad de México, donde ha producido la totalidad de su obra y donde convivió con su pareja, el escenógrafo mexicano David Antón,9​ hasta la muerte de en 2018, año en que se trasladó a Medellín con su perra Brusca, culminando así su exilio de 47 años en México.10​11​\r\n\r\nEs vegano y se distingue por su activismo en defensa de los derechos de los animales,12​ por ser crítico de la Iglesia católica,13​ la manera de hacer política en Colombia, la falsa moral, la física, los formalismos. Es un acérrimo opositor del expresidente Álvaro Uribe.14​ Es abiertamente homosexuаl, ateo y debido a sus visiones antinatalistas, no tiene hijos.', 'http://localhost/ebooks/public/photo/qQENve7GEfvyZ6o8lCDeTWycDqQCpptrNn8NEPE0.jpeg', '2023-05-29 06:52:01', '2023-05-29 07:00:34', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_12_194356_create_authors_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Camilo Andres Camargo Cardenas', 'admin@mail.com', NULL, '$2y$10$v6PfXW02d/eh0EFnrY9bdOyrmn2vmwZRBZG7S3F8qCumt/oeJ4rcG', 'ygaVWcxaDbRDi7d3M3YsCSaWVQYIwNB8BYrkdhoNWwMX2DiNTQ8W6iUL5Okn', '2023-05-29 02:51:49', '2023-05-29 02:51:49');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
