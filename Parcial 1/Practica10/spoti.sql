-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2025 a las 02:11:54
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spoti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artisacanciones`
--

CREATE TABLE `artisacanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artisacanciones`
--

INSERT INTO `artisacanciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 5, 1),
(2, 5, 9),
(3, 5, 10),
(4, 5, 11),
(5, 5, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Luis Miguel', 'Un adulto con experiencia en el mundo de la musica'),
(2, 'Paquita ', 'Una adulta con experiencia en el mundo de la musica'),
(3, 'Peso Pluma', 'Un joven que se adentra en el mundo de la musica'),
(4, 'Juan Gabriel', 'Un adulto con experiencia en la musica'),
(5, 'José José', 'Un adulto con experiencia en la musica'),
(6, 'Pedro Infante', 'Un gran conocido en la musica por ser influyente de esta'),
(7, 'Joan Sebastián\r\n', 'Un adulto experimentado en la música'),
(8, 'Marco Antonio Solís', 'Un adulto experimentado en la música');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `Nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'El Triste', 4, '04:46:00', '1970-10-08', 0, '0'),
(2, 'Rata de Dos Patas', 4, '03:17:00', '1990-04-04', 1, '0'),
(3, 'La Incondicional', 1, '04:30:00', '1980-05-08', 1, '0'),
(4, 'Ella Baila Sola', 4, '02:35:00', '2020-08-20', 1, '0'),
(5, 'Querida', 4, '04:46:00', '1940-02-04', 0, '0'),
(6, 'Cien Años', 4, '03:19:00', '1990-02-27', 0, '0'),
(7, 'Eso y Más', 4, '04:03:00', '2000-02-04', 1, '0'),
(8, 'Si No Te Hubieras Ido', 1, '04:56:00', '2000-09-27', 1, '0'),
(9, 'La Nave del Olvido', 4, '04:06:00', '1970-02-04', 0, '0'),
(10, 'Gavilán romántica', 4, '04:50:00', '1970-07-27', 0, '0'),
(11, 'Lo Pasado, Pasado', 4, '03:40:00', '1970-10-04', 0, '0'),
(12, 'Amar y Vivir', 4, '04:10:00', '1970-02-28', 0, '0'),
(13, 'Desperdiciado', 4, '03:55:00', '1970-05-27', 0, '0'),
(14, 'Las Rejas No Matan', 4, '03:40:00', '1990-10-04', 0, '0'),
(15, 'La Culebra ', 4, '03:03:00', '2000-10-27', 0, '0'),
(16, 'Vieja Escuincla', 4, '03:10:00', '2000-06-04', 0, '0'),
(17, 'Me Salí De La Cama', 4, '03:40:00', '2000-09-17', 0, '0'),
(18, 'Tres Veces Te Engañe', 4, '03:23:00', '1970-09-14', 0, '0'),
(19, 'Ahora Te Puedes Marchar', 1, '03:36:00', '1990-09-27', 1, '0'),
(20, 'Sol, Arena y Mar', 1, '03:56:00', '1990-07-04', 1, '0'),
(21, 'Culpable o No', 1, '04:50:00', '1980-07-27', 1, '0'),
(22, 'Entrégate', 1, '04:32:00', '1980-02-04', 1, '0'),
(23, 'La Media Luna', 4, '03:20:00', '1980-08-27', 1, '0'),
(24, 'Siempre Pendientes', 2, '03:10:00', '2000-06-04', 1, '0'),
(25, 'Hasta La Muerte', 2, '03:20:00', '2000-05-27', 1, '0'),
(26, 'El Belicón', 2, '03:25:00', '2000-08-04', 1, '0'),
(27, 'Chanel', 2, '03:40:00', '2000-09-07', 1, '0'),
(28, 'Hasta Que Te Conocí', 4, '04:05:00', '1970-02-16', 0, '0'),
(29, 'Amor Eterno', 3, '04:40:00', '1980-07-27', 0, '0'),
(30, 'Te lo Pido Por Favor', 4, '04:35:00', '1970-08-14', 0, '0'),
(31, 'Se Me Olvidó Otra Vez', 4, '03:30:00', '1970-09-17', 0, '0'),
(32, 'La Diferencia', 4, '03:35:00', '1970-03-04', 0, '0'),
(33, 'Amorcito Corazón', 4, '03:15:00', '1950-02-27', 0, '0'),
(34, 'La Mula serrano', 4, '02:45:00', '0000-00-00', 0, '0'),
(35, 'Bésame Mucho', 4, '03:00:00', '0000-00-00', 0, '0'),
(36, 'El carreto', 4, '03:00:00', '0000-00-00', 0, '0'),
(37, 'Pecos Bill', 4, '03:10:00', '0000-00-00', 0, '0'),
(38, 'Tatuajes', 4, '03:10:00', '0000-00-00', 0, '0'),
(39, 'Te Hubiera Ido Antes', 3, '04:20:00', '0000-00-00', 0, '0'),
(40, 'Un Idiota', 4, '04:05:00', '0000-00-00', 0, '0'),
(41, 'La Fiesta Del Mariachi', 4, '04:05:00', '0000-00-00', 0, '0'),
(42, 'Me Gustas', 4, '04:10:00', '0000-00-00', 0, '0'),
(43, 'Tú Me Vuelves Loco', 4, '04:50:00', '0000-00-00', 0, '0'),
(44, 'O Me Voy o Te Vas', 4, '04:25:00', '0000-00-00', 0, '0'),
(45, 'Mas Que tu Amigo', 4, '04:25:00', '0000-00-00', 0, '0'),
(46, 'Sigues Sin Mí', 4, '04:40:00', '0000-00-00', 0, '0'),
(47, 'El Perdedor', 4, '04:20:00', '0000-00-00', 0, '0'),
(48, 'El Amor Acaba', 4, '04:35:00', '0000-00-00', 0, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `Nombre`) VALUES
(1, 'Pop'),
(2, 'Corridos tumbados'),
(3, 'Regional mexicano '),
(4, 'Ranchero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`),
  ADD KEY `activo` (`activo`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `precio` (`precio`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `totalcanciones` (`totalcanciones`),
  ADD KEY `publico` (`publico`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD CONSTRAINT `artisacanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artisacanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
