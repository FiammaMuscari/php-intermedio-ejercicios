-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2021 a las 06:39:25
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phpmysqlintermedio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `CUIT` bigint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `Nombre`, `Apellido`, `Mail`, `Telefono`, `CUIT`) VALUES
(1, 'Juan', 'Perez', 'juanperez@gmail.com', '45226565', 20194748364),
(2, 'Susana ', 'Garcia', 'susanagarcia@hotmail.com', '45551899', 27227981236),
(3, 'Esteban', 'Rodriguez', 'estebanrod@yahoo.com.ar', '49785532', 20123569987),
(4, 'Estela', 'Mendoza', 'estela.mendoza@gmail.com', '43655522', 27201554887);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `edad` int(3) NOT NULL,
  `consulta` varchar(40) NOT NULL,
  `mensaje` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`nombre`, `apellido`, `correo`, `edad`, `consulta`, `mensaje`) VALUES
('fiamma', 'muscari', 'fiamma@gmail.com', 22, '', 'gsdfas'),
('fiamma', 'muscari', 'fiamma@gmail.com', 34, '', 'sdasda'),
('fiamma', 'muscari', 'fiamma@gmail.com', 34, 'consulta_cursos', 'dasda'),
('jaime', 'muscari', 'fiamma@gmail.com', 37, 'consulta_trabajo', 'dasda'),
('jaime', 'muscari', 'fiamma@gmail.com', 37, 'consulta_otros', 'dasda'),
('andrea', 'gasmiro', 'andreu@gmail.com', 38, 'consulta_precio', 'cuanto sale'),
('cristian', 'fernandez', 'crisfer@hotmail.com', 18, 'consulta_cursos', 'prueba '),
('alex', 'zhu', 'alexzhu@gmail.com', 31, 'consulta_otros', 'prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `idFactura` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idProducto` int(5) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `descuento` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`idFactura`, `idCliente`, `idProducto`, `monto`, `descuento`) VALUES
(1, 1, 1, '1550.50', '150'),
(2, 1, 2, '1800.00', '128'),
(3, 1, 2, '2500.00', '358'),
(4, 2, 3, '1890.99', '114'),
(5, 2, 1, '2500.00', '358'),
(6, 3, 1, '1954.70', '255');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_cliente`
--

CREATE TABLE `pedidos_cliente` (
  `id_pedido` int(5) NOT NULL,
  `producto` varchar(30) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos_cliente`
--

INSERT INTO `pedidos_cliente` (`id_pedido`, `producto`, `cantidad`, `precio`) VALUES
(1, 'Sillón Capri', 5, '72500'),
(2, 'Mesa Ipanema', 2, '51800'),
(3, 'Banco Venecia', 3, '77700');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL,
  `caracteristicas` varchar(255) NOT NULL,
  `imagen` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `nombre_producto`, `precio`, `caracteristicas`, `imagen`) VALUES
(1, 'Sillon Capri', 345, 'Concebida para ser utilizada tanto bajo techo como a la intemperie. La madera de origen brasilera está acabada con un recubrimiento de Resina Polisten que la embellece.', 'sillon1.jpg'),
(2, 'Mesa Ipanema ', 500, 'Se trata de una colección de muebles de madera de eucaliptos, certificada con el sello FSC y concebida para ser utilizada tanto bajo techo como a la intemperie. La madera es de origen brasilera. Las medidas son: 120 cms', 'ipanema.jpg'),
(3, 'Banco Venecia ', 450, 'Se trata de una colección de muebles de madera de eucaliptos, certificada con el sello FSC (SWCOC-091) y concebida para ser utilizada tanto bajo techado como a la intemperie. La madera es de origen brasilera. Las medidas son: 120 cms', 'venecia.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_us` int(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `registro` varchar(10) NOT NULL,
  `edad` int(3) DEFAULT NULL,
  `correo` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_us`, `nombre`, `apellido`, `registro`, `edad`, `correo`) VALUES
(1, 'Federico', 'Perez', 'Facebook', 19, 'fede_perez@gmail.com'),
(2, 'Lucía', 'Martinez', 'Facebook', 27, 'Lucia_mar@gmail.com'),
(3, 'Patricia', 'Lopez', 'Google', 31, 'Pato_lopez@hotmail.com'),
(4, 'Mónica', 'Roman', 'Facebook', 26, 'monicaroman@yahoo.com'),
(5, 'Alfredo', 'Lonn', 'Twitter', 52, 'alfredo.lonn@yahoo.com.ar'),
(6, 'Juana', 'Fernandez', 'Twitter', 28, 'juanafer@hotmail.com'),
(7, 'Camila', 'Soldan', 'Google', NULL, 'camisoldan@hotmail.com'),
(9, 'Delfina', 'Rodriguez', 'Google', 42, 'delfirodri@hotmail.com'),
(10, 'Pablo', 'Sanchez', 'Twitter', 43, 'pablitosan@gmail.com'),
(11, 'Ailen', 'Beliz', 'Facebook', NULL, 'ailenbeliz@fibertel.com'),
(12, 'Virginia', 'Carron', 'Google', 32, 'virginiacarron@hotmail.com'),
(13, 'Luis', 'Martinez', 'Google', 52, 'Luis.martinez@yahoo.com'),
(14, 'Daniela', 'Fernandez', 'Twitter', 34, 'danielafernandez@telecentro.com'),
(15, 'Elsa', 'Biondi', 'Facebook', 62, 'elsitabiondi@hotmail.com'),
(16, 'María', 'Montes', 'Google', 38, 'Maria.montes@gmail.com'),
(17, 'Marcela', 'Rufini', 'Twitter', 42, 'marcerufini@yahoo.com'),
(18, 'Jimena', 'Larron', 'Google', 21, 'jimelarron@gmail.com'),
(19, 'Karina', 'Allende', 'Facebook', 35, 'karinaaaa@hotmail.com'),
(20, 'Pedro', 'Cáceres', 'Google', 42, 'pedrocaceres@fibertel.com.ar'),
(21, 'Tomás', 'Ochoa', 'Facebook', 28, 'tomasochoa@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`idFactura`),
  ADD KEY `cliente` (`idCliente`);

--
-- Indices de la tabla `pedidos_cliente`
--
ALTER TABLE `pedidos_cliente`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_us`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `idFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pedidos_cliente`
--
ALTER TABLE `pedidos_cliente`
  MODIFY `id_pedido` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_us` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
