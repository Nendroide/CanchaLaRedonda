-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2024 a las 09:22:05
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
-- Base de datos: `tecnoschool2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `ID_Administrador` int(11) NOT NULL,
  `Usuario` varchar(255) DEFAULT NULL,
  `Contraseña` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`ID_Administrador`, `Usuario`, `Contraseña`) VALUES
(1, 'ucv', 'vallejo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrar_docente`
--

CREATE TABLE `administrar_docente` (
  `ID_Docente` int(11) NOT NULL,
  `Nombre_Docente` varchar(255) DEFAULT NULL,
  `Telefono_Docente` varchar(20) NOT NULL,
  `DNI_Docente` varchar(8) DEFAULT NULL,
  `Dirección_Docente` varchar(255) DEFAULT NULL,
  `FechaN_Docente` varchar(100) DEFAULT NULL,
  `Aula` int(11) NOT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `Contraseña` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrar_docente`
--

INSERT INTO `administrar_docente` (`ID_Docente`, `Nombre_Docente`, `Telefono_Docente`, `DNI_Docente`, `Dirección_Docente`, `FechaN_Docente`, `Aula`, `Usuario`, `Contraseña`) VALUES
(1, 'Brandon', '992997088', '12345678', 'Calle B', '2005-01-18', 1, 'Brandon', '12345678'),
(2, 'Castillo Carlos', '987654321', '87654321', 'Huerto Flor calle 34', '2000-09-20', 2, 'Carlos', '87654321'),
(3, 'Perez Miguel', '983746521', '81726354', 'Mz Flor calle 34', '2001-10-23', 9, 'Miguel', '81726354');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrar_estudiante`
--

CREATE TABLE `administrar_estudiante` (
  `ID_Estudiante` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Fecha_N` date NOT NULL,
  `DNI_Estu` varchar(20) NOT NULL,
  `Aula` int(11) NOT NULL,
  `Periodo` varchar(50) NOT NULL,
  `Dirección` varchar(255) NOT NULL,
  `Apoderado` varchar(100) NOT NULL,
  `DNI_Apo` varchar(20) NOT NULL,
  `Teléfono` varchar(20) NOT NULL,
  `Registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrar_estudiante`
--

INSERT INTO `administrar_estudiante` (`ID_Estudiante`, `Nombre`, `Fecha_N`, `DNI_Estu`, `Aula`, `Periodo`, `Dirección`, `Apoderado`, `DNI_Apo`, `Teléfono`, `Registro`) VALUES
(1, 'Mario Montes', '2010-05-15', '81726354', 1, '2024', 'Calle 123', 'Maria Montes', '87654321', '987654321', '2024-05-26 15:52:13'),
(2, 'Camila Ramos', '2018-05-11', '87654321', 2, '2024', 'Calle 320', 'Marta Ramos', '15605775', '992997088', '2024-05-26 17:15:10'),
(3, 'Carlos Martin', '2018-05-03', '87654309', 1, '2024', 'Calle 24', 'Mario Martin', '87654321', '992997088', '2024-05-26 23:54:22'),
(4, 'Juan Peña Ramos', '2011-07-15', '09876543', 1, '2023', 'calle 38', 'Miguel Peña', '98068284', '908798970', '2024-06-08 00:52:33'),
(5, 'Jaime Suarez Mendoza', '2018-06-29', '61528736', 1, '2023', 'calle 47', 'Karla Mendoza', '81748274', '918273645', '2024-06-08 01:07:30'),
(6, 'Carlos Quispe Mamani', '2018-01-19', '63729483', 2, '2024', 'calle 66', 'Miguel Quispe', '82749283', '918371644', '2024-06-08 23:42:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `ID_Estudiante` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Aula` varchar(50) NOT NULL,
  `Periodo` varchar(50) NOT NULL,
  `Estado` varchar(20) NOT NULL,
  `Fecha` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`ID_Estudiante`, `Nombre`, `Aula`, `Periodo`, `Estado`, `Fecha`) VALUES
(1, 'Mario Montes', '1', '2024', 'Presente', '2024-05-26'),
(2, 'Mario Montes', '1', '2024', 'Presente', '2024-05-25'),
(3, 'Mario Montes', '1', '2024', 'Tardanza', '2024-05-26'),
(4, 'Mario Montes', '1', '2024', 'Ausente', '2024-05-27'),
(5, 'Carlos Martin', '1', '2023', 'Tardanza', '2024-05-27'),
(6, 'Mario Montes', '1', '2024', 'Presente', '2024-05-31'),
(7, 'Carlos Martin', '1', '2023', 'Presente', '2024-05-31'),
(8, 'Mario Montes', '1', '2024', 'Presente', '2024-06-10'),
(9, 'Mario Montes', '1', '2024', 'Presente', '2024-06-10'),
(10, 'Carlos Martin', '1', '2024', 'Presente', '2024-06-10'),
(11, 'Mario Montes', '9', '2024', 'Presente', '2024-06-10'),
(12, 'Camila Ramos', '9', '2024', 'Presente', '2024-06-10'),
(13, 'Carlos Martin', '9', '2024', 'Presente', '2024-06-10'),
(14, 'Camila Ramos', '2', '2024', 'Tardanza', '2024-06-10'),
(15, 'Carlos Quispe Mamani', '2', '2024', 'Presente', '2024-06-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `ID_Aula` int(11) NOT NULL,
  `Grado` varchar(255) DEFAULT NULL,
  `Sección` varchar(255) DEFAULT NULL,
  `Horas` varchar(11) DEFAULT NULL,
  `Disponibilidad` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`ID_Aula`, `Grado`, `Sección`, `Horas`, `Disponibilidad`) VALUES
(1, '1ro', 'A', '5', 'N'),
(2, '1ro', 'B', '5', 'N'),
(3, '1ro', 'C', '5', 'S'),
(4, '1ro', 'D', '5', 'S'),
(5, '2do', 'A', '5', 'S'),
(6, '2do', 'B', '5', 'S'),
(7, '2do', 'C', '5', 'S'),
(8, '2do', 'D', '5', 'S'),
(9, 'ALL', 'ALL', '5', 'N'),
(10, 'ALL', 'ALL', '5', 'S'),
(11, 'ALL', 'ALL', '5', 'S'),
(12, 'ALL', 'ALL', '5', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `ID_Curso` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Descripción` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`ID_Curso`, `Nombre`, `Descripción`) VALUES
(1, 'MATEMATICA', 'Este curso abarca conceptos fundamentales de matemáticas, incluyendo aritmética, álgebra, geometría y cálculo. Los estudiantes desarrollarán habilidades de razonamiento lógico y resolución de problemas.'),
(2, 'COMUNICACION', 'En este curso, los estudiantes mejorarán sus habilidades de lectura, escritura, expresión oral y comprensión auditiva. Se enfoca en la comunicación efectiva y el análisis crítico de textos.'),
(3, 'PERSONAL SOCIAL', 'Este curso explora las relaciones interpersonales y el desarrollo personal. Los estudiantes aprenderán sobre valores, ética, ciudadanía y habilidades sociales necesarias para la vida en sociedad.'),
(4, 'CIENCIA Y TECNOLOGIA', 'Este curso introduce a los estudiantes a los principios básicos de las ciencias naturales y la tecnología. Incluye temas de biología, química, física y el impacto de la tecnología en la sociedad.'),
(5, 'ARTE Y CULTURA', 'En este curso, los estudiantes explorarán diversas formas de expresión artística y su impacto cultural. Incluye historia del arte, música, teatro, y artes visuales, fomentando la creatividad y apreciación cultural.'),
(6, 'EDUCACION FISICA', ' los alumnos realizaran deportes'),
(7, 'INGLES', 'curso de ingles - english abc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_curso`
--

CREATE TABLE `docente_curso` (
  `ID_DocenteCurso` int(11) NOT NULL,
  `ID_Docente` int(11) DEFAULT NULL,
  `ID_Curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente_curso`
--

INSERT INTO `docente_curso` (`ID_DocenteCurso`, `ID_Docente`, `ID_Curso`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 1),
(7, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `IDNota` int(11) NOT NULL,
  `ID_Estudiante` int(11) DEFAULT NULL,
  `ID_DocenteCurso` int(11) DEFAULT NULL,
  `Bimestre` varchar(255) DEFAULT NULL,
  `Nota` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`ID_Administrador`);

--
-- Indices de la tabla `administrar_docente`
--
ALTER TABLE `administrar_docente`
  ADD PRIMARY KEY (`ID_Docente`),
  ADD KEY `FK_administrar_docente_aulas` (`Aula`);

--
-- Indices de la tabla `administrar_estudiante`
--
ALTER TABLE `administrar_estudiante`
  ADD PRIMARY KEY (`ID_Estudiante`),
  ADD KEY `fk_aula` (`Aula`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`ID_Estudiante`,`Fecha`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`ID_Aula`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`ID_Curso`);

--
-- Indices de la tabla `docente_curso`
--
ALTER TABLE `docente_curso`
  ADD PRIMARY KEY (`ID_DocenteCurso`),
  ADD KEY `ID_Docente` (`ID_Docente`),
  ADD KEY `ID_Curso` (`ID_Curso`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`IDNota`),
  ADD KEY `ID_Estudiante` (`ID_Estudiante`),
  ADD KEY `ID_DocenteCurso` (`ID_DocenteCurso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `ID_Administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `administrar_docente`
--
ALTER TABLE `administrar_docente`
  MODIFY `ID_Docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `administrar_estudiante`
--
ALTER TABLE `administrar_estudiante`
  MODIFY `ID_Estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `ID_Estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `ID_Aula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `ID_Curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `docente_curso`
--
ALTER TABLE `docente_curso`
  MODIFY `ID_DocenteCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `nota`
--
ALTER TABLE `nota`
  MODIFY `IDNota` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrar_docente`
--
ALTER TABLE `administrar_docente`
  ADD CONSTRAINT `FK_administrar_docente_aulas` FOREIGN KEY (`Aula`) REFERENCES `aulas` (`ID_Aula`);

--
-- Filtros para la tabla `administrar_estudiante`
--
ALTER TABLE `administrar_estudiante`
  ADD CONSTRAINT `fk_aula` FOREIGN KEY (`Aula`) REFERENCES `aulas` (`ID_Aula`);

--
-- Filtros para la tabla `docente_curso`
--
ALTER TABLE `docente_curso`
  ADD CONSTRAINT `docente_curso_ibfk_1` FOREIGN KEY (`ID_Docente`) REFERENCES `administrar_docente` (`ID_Docente`),
  ADD CONSTRAINT `docente_curso_ibfk_2` FOREIGN KEY (`ID_Curso`) REFERENCES `curso` (`ID_Curso`);

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`ID_Estudiante`) REFERENCES `administrar_estudiante` (`ID_Estudiante`),
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`ID_DocenteCurso`) REFERENCES `docente_curso` (`ID_DocenteCurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
