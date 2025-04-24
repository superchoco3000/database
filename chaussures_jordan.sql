-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2025 a las 16:46:31
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
-- Estructura de tabla para la tabla `chaussures_jordan`
--

CREATE TABLE `chaussures_jordan` (
  `id` int(11) NOT NULL,
  `modele` varchar(255) NOT NULL,
  `couleur` varchar(255) DEFAULT NULL,
  `date_sortie` date DEFAULT NULL,
  `taille` decimal(3,1) DEFAULT NULL,
  `etat` varchar(50) DEFAULT NULL,
  `note` decimal(2,1) DEFAULT NULL,
  `prix_achat` decimal(10,2) DEFAULT NULL,
  `lieu_achat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chaussures_jordan`
--

INSERT INTO `chaussures_jordan` (`id`, `modele`, `couleur`, `date_sortie`, `taille`, `etat`, `note`, `prix_achat`, `lieu_achat`) VALUES
(1, 'Air Jordan 1 Retro High OG', 'Chicago', '2015-05-30', 43.0, 'Possédé', 5.0, NULL, NULL),
(2, 'Air Jordan 11 Retro', 'Bred', NULL, NULL, 'À avoir', 4.9, NULL, NULL),
(3, 'Air Jordan 3 Retro', 'White Cement', '2018-02-24', 43.0, 'Possédé', 4.7, 190.00, 'Nike Store');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chaussures_jordan`
--
ALTER TABLE `chaussures_jordan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chaussures_jordan`
--
ALTER TABLE `chaussures_jordan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
