-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2019 a las 22:03:05
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `library`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `isbn` varchar(200) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `editorial` varchar(30) NOT NULL,
  `año` date NOT NULL,
  `genero` varchar(20) NOT NULL,
  `idioma` varchar(20) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`isbn`, `nombre`, `autor`, `editorial`, `año`, `genero`, `idioma`, `pais`, `link`) VALUES
('0-321-12742-0', 'Patterns of Enterprise Application Architecture', 'Martin Fowler', 'Addison Wesley', '2002-11-05', 'Tecnologia', 'Ingles', 'Alemania', 'https://uniminuto0-my.sharepoint.com/:b:/g/personal/arbey_castro_uniminuto_edu/EV2Jb3QdP2JMjDXF4CtoM3EByn0NIcR3K2Oj5ZvwVCMY8Q?e=kzs2w6'),
('978-607-522-456-5', 'ARQUITECTURA DE SOFTWARE - Conceptos y ciclo de de', 'Humberto Cervantes Maceda', 'Cengage Learning', '2016-11-01', 'Tecnologia', 'Español', 'Mexico', 'https://uniminuto0-my.sharepoint.com/:b:/g/personal/arbey_castro_uniminuto_edu/Ecso5B27BrBPoq8GrZ_FYjoBamux22AbgnFxDRFYPDOH3w?e=nnjTQn');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `telefono` int(20) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `profesion` varchar(30) NOT NULL,
  `isbn` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`isbn`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `isbn` (`isbn`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `libros` (`isbn`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
