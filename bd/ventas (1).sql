-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2019 a las 22:33:08
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_imagen` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `fechaCaptura` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_producto`, `id_categoria`, `id_imagen`, `id_usuario`, `nombre`, `descripcion`, `cantidad`, `precio`, `fechaCaptura`) VALUES
(1, 3, 1, 1, 'Sabritas original', 'Papas 54 gr', 0, 12, '2019-05-12'),
(2, 3, 2, 1, 'Sabritas limon', 'Papas 54 gr', 0, 12, '2019-05-12'),
(3, 3, 3, 1, 'Sabritas especias', 'Papas 54 gr', 0, 12, '2019-05-12'),
(4, 3, 4, 1, 'Sabritas adobadas', 'Papas 54 gr', 0, 12, '2019-05-12'),
(5, 3, 5, 1, 'Sabritas crujientes', 'Papas 54 gr', 0, 12, '2019-05-12'),
(6, 3, 6, 1, 'Sabritas flamin hot', 'Papas 54 gr', 0, 12, '2019-05-12'),
(7, 3, 7, 1, 'Cheetos original', 'Cheetos 46 gr', 0, 8, '2019-05-12'),
(8, 3, 8, 1, 'Cheetos verdes', 'Cheetos 46 gr', 0, 8, '2019-05-12'),
(9, 3, 9, 1, 'Cheetos bolitas', 'Cheetos 46 gr', 0, 8, '2019-05-12'),
(10, 3, 10, 1, 'Cheetos queso', 'Cheetos 46 gr', 0, 8, '2019-05-12'),
(11, 3, 11, 1, 'Cheetos palomitas', 'Cheetos 46 gr', 0, 8, '2019-05-12'),
(12, 3, 12, 1, 'Cheetos colmillo', 'Cheetos 46 gr', 0, 8, '2019-05-12'),
(13, 3, 13, 1, 'Doritos original', 'Doritos 46 gr', 0, 11, '2019-05-12'),
(14, 3, 14, 1, 'Doritos negros', 'Doritos 46 gr', 0, 11, '2019-05-12'),
(15, 3, 15, 1, 'Doritos flamin hot', 'Doritos 46 gr', 0, 11, '2019-05-12'),
(16, 3, 16, 1, 'Doritos pizzerola', 'Doritos 46 gr', 0, 11, '2019-05-12'),
(17, 3, 17, 1, 'Doritos diablo', 'Doritos 46 gr', 0, 11, '2019-05-12'),
(18, 3, 18, 1, 'Doritos nacho', 'Doritos 46 gr', 0, 11, '2019-05-12'),
(19, 3, 19, 1, 'Rancheritos', 'Rancheritos 46 gr', 0, 10, '2019-05-12'),
(20, 3, 20, 1, 'Fritos chorizo', 'Fritos 46 gr', 0, 10, '2019-05-12'),
(21, 3, 21, 1, 'Fritos sal y limon', 'Fritos 46 gr', 0, 10, '2019-05-12'),
(22, 3, 22, 1, 'Fritos salsa habanera', 'Fritos 46 gr', 0, 10, '2019-05-12'),
(23, 3, 23, 1, 'Ruffles queso', 'Ruffles 46 gr', 0, 12, '2019-05-12'),
(24, 3, 24, 1, 'Ruffles mozzarella', 'Ruffles 46 gr', 0, 12, '2019-05-12'),
(25, 3, 25, 1, 'Ruffles originales', 'Ruffles 46 gr', 0, 12, '2019-05-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombreCategoria` varchar(150) DEFAULT NULL,
  `fechaCaptura` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `id_usuario`, `nombreCategoria`, `fechaCaptura`) VALUES
(3, 1, 'Botanas', '2019-05-12'),
(4, 1, 'Galletas y Pasteles', '2019-05-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telefono` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `id_usuario`, `nombre`, `apellido`, `direccion`, `email`, `telefono`) VALUES
(3, 1, 'JUAN', 'PEREZ', '---', '----', '555'),
(4, 1, 'Jazmin', 'Santiago', '---', '---', '---');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagen` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `ruta` varchar(500) DEFAULT NULL,
  `fechaSubida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id_imagen`, `id_categoria`, `nombre`, `ruta`, `fechaSubida`) VALUES
(1, 3, '1.jpg', '../../archivos/1.jpg', '2019-05-12'),
(2, 3, '2.jpg', '../../archivos/2.jpg', NULL),
(3, 3, '3.jpg', '../../archivos/3.jpg', '2019-05-12'),
(4, 3, '4.jpg', '../../archivos/4.jpg', '0000-00-00'),
(5, 3, '5.jpg', '../../archivos/5.jpg', '0000-00-00'),
(6, 3, '6.jpg', '../../archivos/6.jpg', '0000-00-00'),
(7, 3, '7.jpg', '../../archivos/7.jpg', '0000-00-00'),
(8, 3, '8.jpg', '../../archivos/8.jpg', '0000-00-00'),
(9, 3, '9.jpg', '../../archivos/9.jpg', '0000-00-00'),
(10, 3, '10.jpg', '../../archivos/10.jpg', '0000-00-00'),
(11, 3, '11.jpg', '../../archivos/11.jpg', '0000-00-00'),
(12, 3, '12.png', '../../archivos/12.png', '0000-00-00'),
(13, 3, '13.jpg', '../../archivos/13.jpg', '0000-00-00'),
(14, 3, '14.jpg', '../../archivos/14.jpg', '0000-00-00'),
(15, 3, '15.jpg', '../../archivos/15.jpg', '0000-00-00'),
(16, 3, '16.jpg', '../../archivos/16.jpg', '0000-00-00'),
(17, 3, '17.jpg', '../../archivos/17.jpg', '0000-00-00'),
(18, 3, '18.jpg', '../../archivos/18.jpg', '0000-00-00'),
(19, 3, '19.jpg', '../../archivos/19.jpg', '0000-00-00'),
(20, 3, '20.jpg', '../../archivos/20.jpg', '0000-00-00'),
(21, 3, '21.jpg', '../../archivos/21.jpg', '0000-00-00'),
(22, 3, '22.jpg', '../../archivos/22.jpg', '0000-00-00'),
(23, 3, '23.jpg', '../../archivos/23.jpg', '0000-00-00'),
(24, 3, '24.jpg', '../../archivos/24.jpg', '0000-00-00'),
(25, 3, '25.jpg', '../../archivos/25.jpg', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` tinytext,
  `fechaCaptura` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `email`, `password`, `fechaCaptura`) VALUES
(5, 'Juan', 'PÃ©rez', 'juan', 'b49a5780a99ea81284fc0746a78f84a30e4d5c73', '2019-05-17'),
(7, 'Admin', 'Admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2019-05-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `fechaCompra` date DEFAULT NULL,
  `cantidad` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_cliente`, `id_producto`, `id_usuario`, `precio`, `fechaCompra`, `cantidad`) VALUES
(1, 1, 1, 1, 12, '2019-05-12', 0),
(1, 1, 1, 1, 12, '2019-05-12', 0),
(2, 0, 23, 1, 12, '2019-05-12', 0),
(2, 0, 23, 1, 12, '2019-05-12', 0),
(2, 0, 21, 1, 10, '2019-05-12', 0),
(3, 0, 5, 1, 12, '2019-05-17', 0),
(3, 0, 25, 1, 12, '2019-05-17', 0),
(3, 0, 23, 1, 12, '2019-05-17', 0),
(3, 0, 21, 1, 10, '2019-05-17', 0),
(3, 0, 21, 1, 10, '2019-05-17', 0),
(4, 4, 5, 6, 12, '2019-05-17', 0),
(5, 3, 24, 7, 12, '2019-05-17', 0),
(5, 3, 22, 7, 10, '2019-05-17', 0),
(6, 3, 22, 7, 10, '2019-05-17', 0),
(7, 0, 1, 7, 12, '2019-05-17', 0),
(8, 0, 3, 7, 12, '2019-05-17', 0),
(9, 3, 13, 7, 11, '2019-05-17', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
