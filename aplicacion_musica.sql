-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2023 a las 23:25:57
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aplicacion_musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumnes`
--

CREATE TABLE `albumnes` (
  `id_album` int(11) NOT NULL,
  `listado` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `albumnes`
--

INSERT INTO `albumnes` (`id_album`, `listado`) VALUES
(1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id_artistas` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `disquera` varchar(50) DEFAULT NULL,
  `canciones` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id_artistas`, `nombre`, `disquera`, `canciones`) VALUES
(1, 'manuel', 'music-kar', 'la perra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_reproducciones`
--

CREATE TABLE `lista_reproducciones` (
  `id_listaRep` int(11) NOT NULL,
  `tipo_canciones` varchar(50) DEFAULT NULL,
  `numero_canciones` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lista_reproducciones`
--

INSERT INTO `lista_reproducciones` (`id_listaRep`, `tipo_canciones`, `numero_canciones`) VALUES
(1, 'romantica', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `telefono`, `correo`) VALUES
(1, 'vicente fernadez', 32625656, 'jaosi@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumnes`
--
ALTER TABLE `albumnes`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id_artistas`);

--
-- Indices de la tabla `lista_reproducciones`
--
ALTER TABLE `lista_reproducciones`
  ADD PRIMARY KEY (`id_listaRep`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lista_reproducciones`
--
ALTER TABLE `lista_reproducciones`
  ADD CONSTRAINT `lista_reproducciones_ibfk_1` FOREIGN KEY (`id_listaRep`) REFERENCES `albumnes` (`id_album`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `artistas` (`id_artistas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
