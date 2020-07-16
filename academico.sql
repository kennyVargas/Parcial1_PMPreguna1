-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-07-2020 a las 06:15:46
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificador`
--

CREATE TABLE `identificador` (
  `ci` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `cod_residencia` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `identificador`
--

INSERT INTO `identificador` (`ci`, `nombre`, `apellido`, `fecha_nac`, `cod_residencia`) VALUES
(1234565, 'CINTHIA REBECA', 'RODRIGUEZ MONTESINOS', '1995-05-03', '05'),
(1234568, 'PATRICIA CAROLINA', 'ROMERO HERRERA', '1994-05-23', '05'),
(1234569, 'DAVID', 'SOLANO PANIAGUA', '1992-05-03', '01'),
(1234570, 'ELIZABETH', 'SOLANO PANIAGUA', '1992-05-03', '01'),
(1234571, 'ELMAN NOEL', 'TOVAR PEREZ', '1992-05-03', '01'),
(1234572, 'VIVIANA GABRIELA', 'TRUJILLO INFANTES', '1992-05-03', '02'),
(1234573, 'ROXANA', 'VALER GONZALES', '1992-05-03', '02'),
(1234574, 'HENRY', 'VARGAS NAVIA', '1992-05-03', '02'),
(1234575, 'SAM', 'VARGAS QUISPE', '1992-05-03', '02'),
(1234576, 'WILFREDO', 'VARGAS SEGALES', '1992-05-03', '02'),
(1234577, 'CLEMENTE', 'AGUILAR VILLCA', '1992-05-03', '02'),
(1234578, 'JAIME PRUDENCIO', 'BARRAL ESPEJO', '1992-05-03', '02'),
(1234579, 'CHRISTIAN MARCELO', 'CAÑAVIRI MENDOZA', '1992-05-03', '03'),
(1234580, 'RAUL', 'CARRASCO AYALA', '1994-03-03', '03'),
(1234581, 'NAIRA WARA', 'CARRASCO AYALA', '1998-03-03', '03'),
(1234582, 'MARIA DEL CARMEN', 'CAZAS ARUNI', '1998-05-02', '03'),
(1234583, 'WILLIAM JAMES', 'CLAROS MONCADA', '1996-05-03', '03'),
(1234584, 'HUGO', 'CONTRERAS AGUIRRE', '1996-05-03', '03'),
(1234585, 'CINTHIA REBECA', 'CONTRERAS LUPE', '1996-05-03', '04'),
(1234586, 'PATRICIA CAROLINA', 'COSME POMA', '1995-05-03', '04'),
(1234587, 'DAVID', 'ESPINOZA', '1995-05-03', '04'),
(1234588, 'ELIZABETH', 'ESTEVEZ AVERANGA', '1995-05-03', '04'),
(1234589, 'ELMAN NOEL', 'FLORES PATTZI', '1995-05-03', '05'),
(1234590, 'VIVIANA GABRIELA', 'GUTIERREZ POMA', '1995-05-03', '05'),
(1334570, 'KENNY', ' LOPEZ', '1994-05-23', '07'),
(1334571, 'ADRIANA', 'SALVATIERRA', '1994-05-23', '08'),
(1334572, 'MAYCON', ' FLORES', '1994-05-23', '09'),
(1434569, 'MAYCON', ' HERRERA', '1994-05-23', '06'),
(10100029, 'alex', 'ramoz', '1996-02-17', '02'),
(10201020, 'antomio', 'ayala', '1995-02-06', '03'),
(10209921, 'Javier', 'illimani', '1999-12-25', '03'),
(11090011, 'Ana', 'Gimenez', '1999-05-31', '02'),
(12345678, 'efrain', 'mamani', '1991-06-06', '09'),
(12425176, 'wilson cesar', 'vargas villarreal', '1996-06-02', '01'),
(12981721, 'luis', 'apaza', '1996-12-17', '03'),
(14522450, 'maria', 'mamani', '1995-10-08', '02'),
(17012341, 'pedro', 'lopes', '1995-07-26', '02'),
(49502844, 'Miguel', 'mamani suri', '1996-02-09', '06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscrito`
--

CREATE TABLE `inscrito` (
  `ci` int(11) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscrito`
--

INSERT INTO `inscrito` (`ci`, `sigla`, `nota`) VALUES
(12425176, 'INF-324', 80),
(1234572, 'INF-324', 80),
(12425176, 'INF-328', 80),
(1234569, 'INF-324', 50),
(1234570, 'INF-324', 40),
(1234573, 'INF-324', 70),
(1234569, 'INF-328', 70),
(1234570, 'INF-328', 70),
(1234572, 'INF-328', 40),
(1234579, 'INF-324', 90),
(1234569, 'INF-329', 90),
(1234569, 'INF-332', 80),
(1234573, 'INF-328', 70),
(12425176, 'INF-332', 100),
(1234574, 'INF-324', 78),
(1234577, 'INF-324', 87),
(1234582, 'INF-324', 90),
(1234574, 'INF-328', 85),
(1234585, 'INF-324', 78),
(1234587, 'INF-324', 60),
(1234572, 'INF-316', 70),
(1234570, 'INF-329', 30),
(1234573, 'INF-329', 50),
(1234576, 'INF-324', 60),
(1234586, 'INF-324', 20),
(1234576, 'INF-328', 30),
(1234570, 'INF-316', 40),
(1234577, 'INF-328', 60),
(1234588, 'INF-324', 70),
(1234574, 'INF-329', 87),
(1234578, 'INF-324', 90),
(1234578, 'INF-328', 40),
(1234589, 'INF-324', 60),
(1234579, 'INF-328', 70),
(1234590, 'INF-324', 66),
(1234576, 'INF-332', 80),
(1234565, 'INF-324', 50),
(1234580, 'INF-328', 30),
(1234580, 'INF-324', 60),
(1234577, 'INF-332', 90),
(1234581, 'INF-328', 60),
(1234578, 'INF-332', 70),
(1234585, 'INF-332', 90),
(1234568, 'INF-324', 80),
(1234588, 'INF-328', 50),
(1234589, 'INF-316', 64),
(1234589, 'INF-328', 77),
(1234589, 'INF-329', 80),
(1234588, 'INF-329', 20),
(1234586, 'INF-316', 80),
(1234590, 'INF-328', 50),
(1234565, 'INF-328', 20),
(1234579, 'INF-328', 80),
(1234565, 'INF-316', 60),
(1234587, 'INF-329', 80),
(1234587, 'INF-316', 90),
(1234579, 'INF-316', 80),
(1234582, 'INF-316', 80),
(1234590, 'INF-332', 40),
(1234568, 'INF-332', 30),
(1234565, 'INF-332', 70),
(1234587, 'INF-332', 60),
(1234586, 'INF-332', 80),
(1234582, 'INF-332', 90),
(1234579, 'INF-332', 80),
(1234572, 'INF-332', 80),
(12425176, 'INF-316', 80),
(1334570, 'INF-324', 80),
(1334571, 'INF-324', 80),
(1334572, 'INF-324', 80),
(1434569, 'INF-324', 80),
(1334570, 'INF-324', 80),
(1334571, 'INF-324', 80),
(1334572, 'INF-324', 80),
(1434569, 'INF-324', 80),
(1334572, 'INF-316', 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `sigla` varchar(10) NOT NULL,
  `nom_materia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`sigla`, `nom_materia`) VALUES
('INF-314', 'Auditoría Informática'),
('INF-315', 'Planificación y Seg. de los Si'),
('INF-316', 'Sistemas de Información Gerenc'),
('INF-324', 'Programación Multimedial'),
('INF-325', 'Programación Virtual'),
('INF-328', 'Comparación de Lenguajes'),
('INF-329', 'Idiomas II'),
('INF-332', 'Economía'),
('INF-391', 'Simulación de Sistemas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario` int(11) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `password`) VALUES
(12425176, 'wcvargas1'),
(49502844, 'mmsuro02'),
(17012341, 'plopes01'),
(14522450, 'mmamani01'),
(11090011, 'agimenez01'),
(10100029, 'aramoz01'),
(10201020, 'aayala01'),
(12981721, 'lapaza01'),
(10209921, 'jillimani01'),
(12345678, 'emamani01'),
(1234569, 'dsolano001'),
(1234570, 'esolano001'),
(1234571, 'etovar001'),
(1234572, 'vtrujillo001'),
(1234573, 'rvaler001'),
(1234574, 'hvargas001'),
(1234575, 'svargas001'),
(1234576, 'wilvar001'),
(1234577, 'caguilar001'),
(1234578, 'jprude001'),
(1234579, 'cmarcel001'),
(1234580, 'rcarras001'),
(1234581, 'nwara001'),
(1234582, 'mcarnen01'),
(1234583, 'wjames01'),
(1234584, 'hugfac01'),
(1234585, 'creblec01'),
(1234586, 'pcaroli01'),
(1234587, 'dvidm001'),
(1234588, 'liezame01'),
(1234589, 'elmanuel01'),
(1234590, 'viport001'),
(1234565, 'crebger01'),
(1234568, 'pcaroll01'),
(1334570, 'k1234567'),
(1334571, 'a1234567'),
(1334572, 'm1234567'),
(1434569, 'lps34567');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `identificador`
--
ALTER TABLE `identificador`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `inscrito`
--
ALTER TABLE `inscrito`
  ADD KEY `ci` (`ci`),
  ADD KEY `sigla` (`sigla`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`sigla`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD KEY `usuario` (`usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscrito`
--
ALTER TABLE `inscrito`
  ADD CONSTRAINT `inscrito_ibfk_1` FOREIGN KEY (`ci`) REFERENCES `identificador` (`ci`),
  ADD CONSTRAINT `inscrito_ibfk_2` FOREIGN KEY (`sigla`) REFERENCES `materia` (`sigla`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `identificador` (`ci`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
