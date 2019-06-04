-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2019 a las 14:20:22
-- Versión del servidor: 10.1.40-MariaDB
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
-- Base de datos: `huellitas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_admin` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admin`, `usuario`, `password`) VALUES
(1, 'edyson', 'edyson123'),
(2, 'shadia', 'shadia123'),
(3, 'adriana', 'adriana123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adopcion`
--

CREATE TABLE `adopcion` (
  `id_adopcion` int(11) NOT NULL,
  `cedula` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaInicioAdop` date NOT NULL,
  `fechaFinAdop` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adopcion`
--

INSERT INTO `adopcion` (`id_adopcion`, `cedula`, `nombre`, `fechaInicioAdop`, `fechaFinAdop`) VALUES
(1, '12119', 'Tony', '2019-06-04', NULL),
(2, '12119', 'Tony', '2019-06-05', NULL),
(3, '12119', 'Tony', '2019-06-07', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apadrinar`
--

CREATE TABLE `apadrinar` (
  `id_padrino` int(11) NOT NULL,
  `cedula` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `apadrinar`
--

INSERT INTO `apadrinar` (`id_padrino`, `cedula`, `nombre`, `fechaInicio`, `fechaFin`) VALUES
(1, '123234', 'Tony', '2019-06-06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `nombre_ciudad`) VALUES
(5, 'Barranquilla'),
(2, 'Bogota'),
(9, 'Bucaramanga'),
(7, 'Cartagena'),
(4, 'Cúcuta'),
(17, 'Dubai'),
(6, 'Medellin'),
(15, 'Miami'),
(8, 'Neiva'),
(18, 'Nueva York'),
(12, 'Pereira'),
(11, 'Santa Marta'),
(19, 'Silicon Valley'),
(10, 'Sincelejo'),
(13, 'Valledupar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedad`
--

CREATE TABLE `enfermedad` (
  `id_enfermedad` int(11) NOT NULL,
  `nombre_enfermedad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `enfermedad`
--

INSERT INTO `enfermedad` (`id_enfermedad`, `nombre_enfermedad`) VALUES
(1, 'Moquillo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formularioadopcion`
--

CREATE TABLE `formularioadopcion` (
  `id_formulario` int(11) NOT NULL,
  `cedula` varchar(50) NOT NULL,
  `adulto` int(11) NOT NULL,
  `ninos` int(11) NOT NULL,
  `edadninos` int(11) NOT NULL,
  `nombreperro` varchar(50) NOT NULL,
  `tipoperro` varchar(50) NOT NULL,
  `perrosantes` varchar(5) NOT NULL,
  `porqueadoptar` varchar(100) NOT NULL,
  `responsabilidadperro` varchar(100) NOT NULL,
  `visitas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formularioadopcion`
--

INSERT INTO `formularioadopcion` (`id_formulario`, `cedula`, `adulto`, `ninos`, `edadninos`, `nombreperro`, `tipoperro`, `perrosantes`, `porqueadoptar`, `responsabilidadperro`, `visitas`) VALUES
(1, '123234', 4, 1, 1, 'Tony', 'escanor', 'Si', 'porque quiero o que', 'Si', 'Si'),
(2, '12119', 4, 1, 3, 'Tony', 'pitbull', 'Si', 'porque quiero o que', 'Si', 'Si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formularioapadrinar`
--

CREATE TABLE `formularioapadrinar` (
  `id_apadrinar` int(11) NOT NULL,
  `cedula` varchar(50) NOT NULL,
  `nombreperro` varchar(50) NOT NULL,
  `tipoperro` varchar(50) NOT NULL,
  `perroantes` varchar(5) NOT NULL,
  `porqueadoptar` varchar(100) NOT NULL,
  `visitaspormes` varchar(10) NOT NULL,
  `diamensualidad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formularioapadrinar`
--

INSERT INTO `formularioapadrinar` (`id_apadrinar`, `cedula`, `nombreperro`, `tipoperro`, `perroantes`, `porqueadoptar`, `visitaspormes`, `diamensualidad`) VALUES
(1, '11000', 'Meliodas', 'aaa', 'Si', 'aaaaa', 'Si', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perro`
--

CREATE TABLE `perro` (
  `nombre` varchar(50) NOT NULL,
  `id_raza` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `costo_apadrinar` int(11) NOT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perro`
--

INSERT INTO `perro` (`nombre`, `id_raza`, `edad`, `estado`, `costo_apadrinar`, `foto`) VALUES
('Meliodas', 16, 2, 'El macho', 20000, NULL),
('Tony', 12, 2, 'muerto', 100000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `cedula` varchar(50) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `profesion` varchar(50) NOT NULL,
  `trabajo` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `barrio` varchar(20) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `celular` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`cedula`, `id_ciudad`, `nombre`, `apellido`, `fechaNacimiento`, `profesion`, `trabajo`, `direccion`, `barrio`, `telefono`, `celular`) VALUES
('1090', 19, 'fabian', 'marin', '2019-06-05', 'master pro', 'soy gigolo', 'asjkajbc', 'libertad', '345668', '1213131'),
('11000', 5, 'fabian', 'lmlk', '2019-06-04', 'tttt', 'aaaa', 'sldkvkjdv', 'dfbkj', '12345', '2335'),
('12119', 18, 'hola', 'leal', '2019-06-01', 'ingeniero', 'soy gigolo', 'calle 18', 'libertad', '3333', '231313'),
('123234', 5, 'edyson', 'leal', '2019-05-01', 'master pro', 'soy un crack', 'calle 18', 'libertad', '4567', '345672');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `raza`
--

CREATE TABLE `raza` (
  `id_raza` int(11) NOT NULL,
  `nombre_raza` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `raza`
--

INSERT INTO `raza` (`id_raza`, `nombre_raza`) VALUES
(11, 'Beagle'),
(1, 'chanda'),
(10, 'Chihuahua'),
(5, 'Criollo'),
(2, 'Dalmata'),
(3, 'Golden'),
(6, 'Labrador'),
(13, 'Pendejo'),
(4, 'Pincher'),
(12, 'Pitbull'),
(15, 'puto'),
(16, 'Rottweiler');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `id_tratamiento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `enfermedad` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`id_tratamiento`, `nombre`, `enfermedad`, `descripcion`, `fechaInicio`, `fechaFin`) VALUES
(1, 'Tony', 1, 'Pastillas chiquitolina', '2019-06-06', NULL),
(2, 'Tony', 1, 'Pastillas chiquitolina', '2019-06-04', NULL),
(3, 'Tony', 1, 'Pastillas chiquitolina', '2019-06-04', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `adopcion`
--
ALTER TABLE `adopcion`
  ADD PRIMARY KEY (`id_adopcion`),
  ADD KEY `fk_adoptarperro` (`nombre`),
  ADD KEY `fk_adoptarpers` (`cedula`);

--
-- Indices de la tabla `apadrinar`
--
ALTER TABLE `apadrinar`
  ADD PRIMARY KEY (`id_padrino`),
  ADD KEY `fk_padrino` (`cedula`),
  ADD KEY `fk_padrinoperro` (`nombre`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD UNIQUE KEY `nombre_ciudad` (`nombre_ciudad`);

--
-- Indices de la tabla `enfermedad`
--
ALTER TABLE `enfermedad`
  ADD PRIMARY KEY (`id_enfermedad`),
  ADD UNIQUE KEY `nombre_enfermedad` (`nombre_enfermedad`);

--
-- Indices de la tabla `formularioadopcion`
--
ALTER TABLE `formularioadopcion`
  ADD PRIMARY KEY (`id_formulario`),
  ADD KEY `cedula` (`cedula`),
  ADD KEY `nombreperro` (`nombreperro`);

--
-- Indices de la tabla `formularioapadrinar`
--
ALTER TABLE `formularioapadrinar`
  ADD PRIMARY KEY (`id_apadrinar`),
  ADD KEY `fk_padrinopers` (`cedula`),
  ADD KEY `fk_perro` (`nombreperro`);

--
-- Indices de la tabla `perro`
--
ALTER TABLE `perro`
  ADD PRIMARY KEY (`nombre`),
  ADD KEY `fk_razaperro` (`id_raza`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`cedula`),
  ADD KEY `fk_perciudad` (`id_ciudad`);

--
-- Indices de la tabla `raza`
--
ALTER TABLE `raza`
  ADD PRIMARY KEY (`id_raza`),
  ADD UNIQUE KEY `nombre_raza` (`nombre_raza`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`id_tratamiento`),
  ADD KEY `fk_tratamiento` (`nombre`),
  ADD KEY `fk_trataenf` (`enfermedad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `adopcion`
--
ALTER TABLE `adopcion`
  MODIFY `id_adopcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `apadrinar`
--
ALTER TABLE `apadrinar`
  MODIFY `id_padrino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `enfermedad`
--
ALTER TABLE `enfermedad`
  MODIFY `id_enfermedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `formularioadopcion`
--
ALTER TABLE `formularioadopcion`
  MODIFY `id_formulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `formularioapadrinar`
--
ALTER TABLE `formularioapadrinar`
  MODIFY `id_apadrinar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `raza`
--
ALTER TABLE `raza`
  MODIFY `id_raza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `id_tratamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adopcion`
--
ALTER TABLE `adopcion`
  ADD CONSTRAINT `fk_adoptarperro` FOREIGN KEY (`nombre`) REFERENCES `perro` (`nombre`),
  ADD CONSTRAINT `fk_adoptarpers` FOREIGN KEY (`cedula`) REFERENCES `persona` (`cedula`);

--
-- Filtros para la tabla `apadrinar`
--
ALTER TABLE `apadrinar`
  ADD CONSTRAINT `fk_padrino` FOREIGN KEY (`cedula`) REFERENCES `persona` (`cedula`),
  ADD CONSTRAINT `fk_padrinoperro` FOREIGN KEY (`nombre`) REFERENCES `perro` (`nombre`);

--
-- Filtros para la tabla `formularioadopcion`
--
ALTER TABLE `formularioadopcion`
  ADD CONSTRAINT `formularioadopcion_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `persona` (`cedula`),
  ADD CONSTRAINT `formularioadopcion_ibfk_2` FOREIGN KEY (`nombreperro`) REFERENCES `perro` (`nombre`);

--
-- Filtros para la tabla `formularioapadrinar`
--
ALTER TABLE `formularioapadrinar`
  ADD CONSTRAINT `fk_padrinopers` FOREIGN KEY (`cedula`) REFERENCES `persona` (`cedula`),
  ADD CONSTRAINT `fk_perro` FOREIGN KEY (`nombreperro`) REFERENCES `perro` (`nombre`);

--
-- Filtros para la tabla `perro`
--
ALTER TABLE `perro`
  ADD CONSTRAINT `fk_razaperro` FOREIGN KEY (`id_raza`) REFERENCES `raza` (`id_raza`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_perciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD CONSTRAINT `fk_tratamiento` FOREIGN KEY (`nombre`) REFERENCES `perro` (`nombre`),
  ADD CONSTRAINT `tratamiento_ibfk_1` FOREIGN KEY (`enfermedad`) REFERENCES `enfermedad` (`id_enfermedad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
