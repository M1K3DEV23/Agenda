-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2023 a las 18:05:22
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idcarrera` varchar(4) NOT NULL,
  `nom-carrera` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`idcarrera`, `nom-carrera`) VALUES
('', NULL),
('LITS', 'LICENCIATURA EN INGENIERIA EN TECNOLOGIAS DE SOFTWARE'),
('LSC', 'LICENCIATURA EN SISTEMAS COMPUTACIONALES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `idlugar` varchar(4) NOT NULL,
  `nom-lugar` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`idlugar`, `nom-lugar`) VALUES
('001', 'LABORATORIO'),
('002', 'VIRTUAL'),
('003', 'PRESENCIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `idmateria` varchar(4) NOT NULL,
  `nom-materia` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`idmateria`, `nom-materia`) VALUES
('001', 'ADMINISTRACION DE BASE DE DATOS'),
('002', 'LENGUAJES DE CONSULTA'),
('003', 'INTRODUCCION A BASE DE DATOS'),
('004', 'INVESTIGACION DE OPERACIONES'),
('005', 'REDES Y SERVICIO DE COMUNICACIONES ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `idprofesor` varchar(4) NOT NULL,
  `nom-profesor` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`idprofesor`, `nom-profesor`) VALUES
('001', 'HECTOR NURICUMBO'),
('002', 'LUIS ALEJANDRO TRUJILLO SANTOS'),
('003', 'JUSTINO LOPEZ AGUILAR'),
('004', 'SABINO TRUJILLO VELAZQUEZ'),
('005', 'VICENTE REYES HERNANDEZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `idcalendario` int(5) NOT NULL,
  `idmateria` varchar(4) DEFAULT NULL,
  `idprofesor` varchar(4) DEFAULT NULL,
  `idlugar` varchar(4) DEFAULT NULL,
  `temas` varchar(50) DEFAULT NULL,
  `gradogrupo` varchar(2) DEFAULT NULL,
  `idcarrera` varchar(4) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`idcalendario`, `idmateria`, `idprofesor`, `idlugar`, `temas`, `gradogrupo`, `idcarrera`, `idusuario`) VALUES
(10323, '001', '001', '002', 'BASE DE DATOS Y LOGIN PHP', '5J', 'LSC', 1),
(14223, '002', '002', '003', 'CONSULTAS MULTIPLES', '5K', 'LITS', 4),
(16223, '004', '004', '003', 'METODO SIMPLEX', '5J', 'LSC', 2),
(20223, '005', '005', '001', 'TEMAS 1,2,3 DE CISCO', '5J', 'LSC', 3),
(29123, '003', '003', '001', 'MODELO ENTIDAD RELACION', '5K', 'LITS', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `pass` int(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `pass`) VALUES
(1, 'MAYRA.VILCHIS46@UNACH.MX', 12345),
(2, 'NATALIA.SANTIAGO61@UNACH.MX', 70801),
(3, 'MIGUEL.RIOS25@UNACH.MX', 23678),
(4, 'SANDRA.MORALES35@UNACH.MX', 10153),
(5, 'MARIO.MARTINEZ87@UNACH.MX', 31105);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idcarrera`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`idlugar`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idmateria`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`idprofesor`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`idcalendario`),
  ADD KEY `idprofesor` (`idprofesor`),
  ADD KEY `idlugar` (`idlugar`),
  ADD KEY `idmateria` (`idmateria`),
  ADD KEY `idcarrera` (`idcarrera`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `idcalendario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20022024;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`idprofesor`) REFERENCES `profesor` (`idprofesor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_ibfk_2` FOREIGN KEY (`idlugar`) REFERENCES `lugar` (`idlugar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_ibfk_3` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_ibfk_4` FOREIGN KEY (`idcarrera`) REFERENCES `carrera` (`idcarrera`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_ibfk_5` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
