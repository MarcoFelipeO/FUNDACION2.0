-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2023 a las 14:35:34
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fundacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(17, 'Perros'),
(18, 'Conejos'),
(19, 'Gatos'),
(20, 'Animales Exoticos'),
(21, 'Otros'),
(22, 'Hamster');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE `comuna` (
  `id_comuna` int(11) NOT NULL,
  `nombre_comuna` varchar(255) NOT NULL,
  `id_region` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `formulario_id` int(11) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellido_paterno` varchar(100) NOT NULL,
  `apellido_materno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` varchar(120) NOT NULL,
  `comuna` varchar(200) NOT NULL,
  `fono` int(10) NOT NULL,
  `nacionalidad` varchar(100) NOT NULL,
  `edad` int(3) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `refugiado` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `esterilizacion` varchar(200) NOT NULL,
  `ingreso_economico` int(10) NOT NULL,
  `posee_mascotas` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`formulario_id`, `rut`, `nombres`, `apellido_paterno`, `apellido_materno`, `email`, `direccion`, `comuna`, `fono`, `nacionalidad`, `edad`, `domicilio`, `refugiado`, `razon`, `esterilizacion`, `ingreso_economico`, `posee_mascotas`) VALUES
(7, '19856453-2', 'Ivanna', 'Guzman', 'Moncada', 'ivanna.guzman@inacapmail.cl', 'ejercito', 'puente alto', 123456789, 'chilena', 25, 'si', 'bonnie', 'tengo el espacio y ganas me gusta bonnie', 'si estoy dispuesto', 150000, 'si un gato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `id` int(100) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `edad` int(3) NOT NULL,
  `vacunas` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `peso_gramos` int(5) NOT NULL,
  `estatura` varchar(40) NOT NULL,
  `raza` varchar(100) NOT NULL,
  `genero` varchar(40) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(100) NOT NULL,
  `especie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`id`, `nombre`, `edad`, `vacunas`, `descripcion`, `peso_gramos`, `estatura`, `raza`, `genero`, `imagen`, `id_categoria`, `especie`) VALUES
(62, 'Jack', 6, '', 'Perro galgo rescatado en cajon del maipo', 0, '', '', '', '20231126050850.jpg', 17, ''),
(63, 'Tony', 2, '', 'tony conejo blanco, le gusta mucho jugar de noche', 0, '', '', '', '20231126051447.jpg', 18, ''),
(64, 'Conejo de pascua original', 232, '', 'qweqweqwewqe', 0, '', '', '', '20231126051931.jpg', 18, ''),
(65, '54', 0, '', 'ihiuggiugglgu', 0, '', '', '', '20231126052701.jpg', 15, ''),
(66, 'dfdf', 23, '', 'dfdgdfg', 0, '', '', '', '20231126053556.jpg', 16, ''),
(67, 'Hamster cristiano7', 7, 'su', 'hasmter fiestero', 0, '', '', '', '20231126060902.jpg', 22, ''),
(68, 'pesopluma', 2323, '123', 'este hamster canta pesimo', 23, '', '', '', '20231126061726.jpg', 22, ''),
(70, 'malcolm', 2, 'sdfsdf', 'srr', 23, ' medianito', '', 'asdsad', '20231126062814.jpg', 18, ''),
(78, 'Estrella', 3, '555', 'Muy jugueton, le encanta estar rodeado de personas ', 7777, '888', '1000', '999', '20231126150207.jpg', 19, ''),
(79, 'Guacamayo Pepito', 1, '', 'plumaje largo de colores ', 0, '', '', '', '20231126160702.jpg', 20, ''),
(81, 'Zanco', 2, 'zanco tiene todas las vacunas', 'jugueton', 223, '4242', 'afasfaf', 'safasfsaa', '20231126175854.jpg', 22, 'zanco es una especie delicada'),
(82, 'Ronaldhino ', 2, 'tiene todas las vacunas ', 'amigable ronaldino gaucho', 556, '350', 'hasmter de ronaldhino gaucho azulado blanco', 'macho', '20231126192127.jpg', 22, 'especie de hamster africano'),
(84, 'Kein', 9, 'todas, menos antirrabica', 'fiel bajo todo aspecto, perro de seguridad', 23500, '120', 'pitbull original ', 'hembra', '20231126221756.jpg', 17, 'pitbull de pelaje corto y anteojos cafe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id_region` int(11) NOT NULL,
  `nombre_region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(100) NOT NULL,
  `nombre_completo` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `sesion_activa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_completo`, `correo`, `usuario`, `contrasena`, `rol`, `sesion_activa`) VALUES
(17, 'Ivanna Barbara', 'ivanna@gmail.com', 'ivanna', '1234', 'admin', 0),
(19, 'test', 'test@test.cl', 'test', '1234', '', 0),
(23, '     ', 'asdjasdjas@asa.com', 'sass', 'asdasdsadL!L!', '', 0),
(24, '     ', 'assasas@mai.com', 'askdjaslkdj', 'asdjasjdLL!!!', '', 0),
(25, '    ', 'asdsd@asdsd.cl', 'sdsd', 'asasdasdL!!', '', 0),
(26, '         ', 'assasas@gmail.com', 'Felipiño', 'Mrco4542424523', '', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD PRIMARY KEY (`id_comuna`),
  ADD KEY `id_region` (`id_region`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`formulario_id`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_region`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `formulario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD CONSTRAINT `comuna_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
