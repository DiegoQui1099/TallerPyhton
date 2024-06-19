-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2024 a las 22:21:19
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
-- Base de datos: `bdtaller`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(25) UNSIGNED NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL,
  `ciudad` varchar(25) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `idRol` int(25) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombre`, `direccion`, `ciudad`, `telefono`, `idRol`) VALUES
(1, 'Loren Zuluaga', 'Calle 58 #5-14', 'Bogotá', '3222354944', 2),
(2, 'Edwin Fajardo', 'dig 48 j sur # 1-30', 'Bogotá', '3115995613', 2),
(3, 'Natalia Avila', 'calle jeje # 12', 'Bogotá', '3194406753', 2),
(17, 'Lorem Mariana', 'dig 48 j sur #1-30', 'Bogota', '3016636500', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRol` int(25) UNSIGNED NOT NULL,
  `nomRol` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `nomRol`) VALUES
(1, 'Vendedor'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(25) UNSIGNED NOT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Contraseña` varchar(50) DEFAULT NULL,
  `nomUsuario` varchar(50) DEFAULT NULL,
  `idRol` int(25) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `Correo`, `Contraseña`, `nomUsuario`, `idRol`) VALUES
(1, 'diegodarkar123@hotmail.com', 'Samorgap123.', 'DiegoQ10', 1),
(3, 'esantifb11@gmail.com', 'BATMAN.21', 'Edwfa21', 2),
(9, 'avilaavilanatalia5@gmail.com', 'Natis12', 'Natalia Avila', 2),
(14, 'diegosantafe1501@gmail.com', 'diegojeje', 'diego jeje', 2),
(17, 'mm6542597@gmail.com', 'lorem123', 'Lorem Mariana', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `idVehiculo` int(25) UNSIGNED NOT NULL,
  `matricula` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `precio` int(25) DEFAULT NULL,
  `imagen` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`idVehiculo`, `matricula`, `marca`, `modelo`, `color`, `precio`, `imagen`) VALUES
(1, 'JNX 111', 'Toyota', 'Supra MK4', 'Negro', 150000000, 'https://i.kinja-img.com/gawker-media/image/upload/s--dOi9kM9x--/c_fill,fl_progressive,g_center,h_900,q_80,w_1600/isg0whn8lwgyjnd6zlqx.jpga-HD-Background.jpg&ehk=ue%2bYc0nQVpuGW%2bWLZGD%2bvNKLm8HL%2fCQ2ui'),
(3, 'PGL 420', 'BMW', 'M3 GTR R34', 'gris y azul', 200000000, 'https://th.bing.com/th/id/R.041ca1c7015c035b16f75cd07a06aaa8?rik=PFtzvvVozaeUwQ&riu=http%3a%2f%2fsoft-d1z.ru%2fuploads%2fposts%2f2013-05%2f1367470110_bmw-m3-gtr.jpg&ehk=OnUuxz1MECnDLn22PCv5BF4RKwzGxY8aaoRQEb%2fDeJM%3d&risl=&p'),
(4, 'LZM 251', 'Renault', 'Twingo', 'Rosado', 15000000, 'https://th.bing.com/th/id/OIP.rlWKYvYpAVG-FGkiKPRnzwHaFI?rs=1&pid=ImgDetMain'),
(5, 'DGO 101', 'Audi', 'Le Mans Quattro, Concept 2003 ', 'Gris', 100000000, 'https://wallup.net/wp-content/uploads/2019/09/224736-audi-le-mans-quattro-concept-2003.jpg'),
(6, 'KLO 333', 'Ford', 'F-250 super duty', 'Rojo', 200000000, 'https://th.bing.com/th/id/OIP.1wVaDjZwJ__kC8yon0vI-wHaE7?rs=1&pid=ImgDetMain'),
(7, 'MBN 555', 'Chevrolet', 'Corvette', 'Amarillo', 120000000, 'https://th.bing.com/th/id/R.d9918504bbe1be7da2d6a89958c32805?rik=RewGDQwZYrmSPw&pid=ImgRaw&r=0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` int(25) UNSIGNED NOT NULL,
  `idCliente` int(25) UNSIGNED NOT NULL,
  `idVehiculo` int(25) UNSIGNED NOT NULL,
  `fechaVenta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVenta`, `idCliente`, `idVehiculo`, `fechaVenta`) VALUES
(1, 2, 1, '2024-06-19'),
(2, 1, 1, '2024-06-18'),
(15, 3, 4, '2024-06-19'),
(16, 1, 5, '2024-06-19'),
(17, 17, 4, '2024-06-19'),
(19, 17, 5, '2024-06-19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idRol` (`idRol`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idRol` (`idRol`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`idVehiculo`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idVehiculo` (`idVehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `idVehiculo` int(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` int(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`idVehiculo`) REFERENCES `vehiculos` (`idVehiculo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
