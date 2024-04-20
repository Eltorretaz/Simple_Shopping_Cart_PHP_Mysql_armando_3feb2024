-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2024 a las 03:44:38
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
-- Base de datos: `cart_shopping`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl`
--

CREATE TABLE `tbl` (
  `numero1` int(11) NOT NULL,
  `numero2` int(11) NOT NULL,
  `numero3` int(11) NOT NULL,
  `numero4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl`
--

INSERT INTO `tbl` (`numero1`, `numero2`, `numero3`, `numero4`) VALUES
(1, 2, 3, 4),
(1, 2, 3, 4),
(1, 2, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetalleventa`
--

CREATE TABLE `tbldetalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbldetalleventa`
--

INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(89, 38, 1, 300.00, 1, 0),
(90, 38, 2, 429.00, 1, 0),
(91, 39, 1, 300.00, 1, 0),
(92, 39, 2, 429.00, 1, 0),
(93, 40, 1, 300.00, 1, 0),
(94, 40, 2, 429.00, 1, 0),
(95, 41, 1, 300.00, 1, 0),
(96, 41, 2, 429.00, 1, 0),
(97, 42, 1, 300.00, 1, 0),
(98, 42, 2, 429.00, 1, 0),
(99, 43, 1, 300.00, 1, 0),
(100, 43, 2, 429.00, 1, 0),
(101, 44, 1, 300.00, 1, 0),
(102, 44, 2, 429.00, 1, 0),
(103, 45, 1, 300.00, 1, 0),
(104, 45, 2, 429.00, 1, 0),
(105, 46, 1, 300.00, 1, 0),
(106, 46, 2, 429.00, 1, 0),
(107, 47, 1, 300.00, 1, 0),
(108, 47, 2, 429.00, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproducto`
--

CREATE TABLE `tblproducto` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblproducto`
--

INSERT INTO `tblproducto` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Learn PHP 7', 300.00, 'This new book on PHP 7 introduces writing solid, secure, object-oriented code in the new PHP 7: you will create a complete three-tier application using a natural process of building and testing modules within each tier. This practical approach teaches you about app development and introduces PHP features when they are actually needed rather than providing you with abstract theory and contrived examples.', 'https://m.media-amazon.com/images/I/413k9wBBWoL._SY445_SX342_.jpg'),
(2, 'Professional ASP.NET MVC 5 ', 429.00, 'MVC 5 is the newest update to the popular Microsoft technology that enables you to build dynamic, data-driven websites. Like previous versions, this guide shows you step-by-step techniques on using MVC to best advantage, with plenty of practical tutorials to illustrate the concepts. It covers controllers, views, and models; forms and HTML helpers; data annotation and validation; membership, authorization, and security.\r\n', 'https://m.media-amazon.com/images/I/61tx+1KdAVL._SY342_.jpg'),
(3, 'Learning Vue.js 2', 1005.35, '* Learn how to propagate DOM changes across the website without writing extensive jQuery callbacks code.\r\n* Learn how to achieve reactivity and easily compose views with Vue.js and understand what it does behind the scenes.\r\n* Explore the core features of Vue.js with small examples, learn how to build dynamic content into preexisting web applications, and build Vue.js applications from scratch.', 'https://m.media-amazon.com/images/I/61mT1nzLirL._SY342_.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `id` int(11) NOT NULL,
  `clavetransaccion` varchar(255) NOT NULL,
  `paypaldatos` text NOT NULL,
  `fecha` datetime NOT NULL,
  `correo` varchar(255) NOT NULL,
  `total` decimal(60,2) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`id`, `clavetransaccion`, `paypaldatos`, `fecha`, `correo`, `total`, `status`) VALUES
(26, 'kkq7ncqq31f7d30mjci5mfg4eb', '', '2024-04-19 06:16:57', 'armandoetorresc31@gmail.com', 1734.35, 'pendiente'),
(27, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 09:21:35', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(28, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 09:22:09', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(29, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 09:22:40', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(30, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 09:23:09', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(31, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 09:23:47', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(32, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 09:24:02', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(33, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 09:24:56', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(34, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 09:25:34', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(35, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 09:26:18', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(36, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 10:20:21', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(37, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 10:21:47', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(38, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 10:31:44', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(39, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 10:37:16', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(40, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 10:38:49', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(41, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 10:43:09', 'sb-tt7wb29895517@personal.example.com', 729.00, 'pendiente'),
(42, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 10:43:45', 'armandoetorresc31@gmail.com', 729.00, 'pendiente'),
(43, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 10:44:04', 'armandoetorresc31@gmail.com', 729.00, 'pendiente'),
(44, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 10:52:29', 'armandoetorresc31@gmail.com', 729.00, 'pendiente'),
(45, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 11:00:14', 'armandoetorresc31@gmail.com', 729.00, 'pendiente'),
(46, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 11:02:09', 'armandoetorresc31@gmail.com', 729.00, 'pendiente'),
(47, '9skg7vs6hruee2r5dfqnv80psg', '', '2024-04-19 11:03:37', 'armandoetorresc31@gmail.com', 729.00, 'pendiente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `tblproducto`
--
ALTER TABLE `tblproducto`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `tblproducto`
--
ALTER TABLE `tblproducto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD CONSTRAINT `tbldetalleventa_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `tblventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tblproducto` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
