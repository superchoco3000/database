-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2025 a las 16:46:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio_data`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medias`
--

CREATE TABLE `medias` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `realisateur` varchar(255) NOT NULL,
  `nombre_saisons` int(11) NOT NULL,
  `nombre_episodes` int(11) NOT NULL,
  `date_sortie` date NOT NULL,
  `genre` varchar(100) NOT NULL,
  `note` decimal(2,0) NOT NULL,
  `statut` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `medias`
--

INSERT INTO `medias` (`id`, `type`, `titre`, `auteur`, `realisateur`, `nombre_saisons`, `nombre_episodes`, `date_sortie`, `genre`, `note`, `statut`) VALUES
(1, 'Série', 'The Wire', '', 'Divers', 5, 0, '0000-00-00', 'Drame policier', 5, 'Vu'),
(2, 'Série', 'The Wire', '', 'Divers', 5, 0, '0000-00-00', 'Drame policier', 5, 'Vu'),
(3, 'Livre', 'Le Seigneur des Anneaux', 'J.R.R. Tolkien', '', 0, 0, '0000-00-00', 'Fantasy', 5, 'Lu'),
(4, 'Film', 'Le Voyage de Chihiro', '', 'Hayao Miyazaki', 0, 0, '0000-00-00', 'Animation, Aventure, Fantastique', 5, 'Vu'),
(5, 'Animé', 'L\'Attaque des Titans', '', 'Divers', 4, 87, '0000-00-00', 'Action, Drame, Fantasy', 5, 'En cours');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
