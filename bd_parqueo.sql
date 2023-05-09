-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2023 a las 15:47:16
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_parqueo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nit_ci_cliente` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `placa_auto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `fyh_eliminacion` datetime DEFAULT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_clientes`
--

INSERT INTO `tb_clientes` (`id_cliente`, `nombre_cliente`, `nit_ci_cliente`, `placa_auto`, `fyh_creacion`, `fyh_actualizacion`, `fyh_eliminacion`, `estado`) VALUES
(1, '12', '122112', '11111', '2023-02-19 10:09:51', NULL, NULL, '1'),
(2, 'juac', '12345678', '12', '2023-02-19 10:12:12', NULL, NULL, '1'),
(3, 'qqqqqq', '2134567', '78987', '2023-02-19 10:12:54', NULL, NULL, '1'),
(4, '666666', '666666666', '65656', '2023-02-19 10:13:17', NULL, NULL, '1'),
(5, '777', '7777777777', '76', '2023-02-19 10:14:03', NULL, NULL, '1'),
(6, '12345', '12345', '12345', '2023-02-19 10:15:48', NULL, NULL, '1'),
(7, 'juan', '32323', '323', '2023-02-19 10:17:36', NULL, NULL, '1'),
(8, '123', '123', '123', '2023-02-19 10:54:07', NULL, NULL, '1'),
(9, '1244', '1244', '1244', '2023-02-19 10:54:34', NULL, NULL, '1'),
(10, 'hjt', '1345', '7666', '2023-02-19 10:56:30', NULL, NULL, '1'),
(11, '54', '54', '65jjjjj', '2023-02-21 03:21:32', NULL, NULL, '1'),
(12, NULL, NULL, '54', '2023-02-21 03:21:43', NULL, NULL, '1'),
(13, 'JUAN', '123456778', 'AAAA1111', '2023-02-21 03:23:47', NULL, NULL, '1'),
(14, 'hjhj', '45678', 'hhh', '2023-04-05 12:16:35', NULL, NULL, '1'),
(15, 'uij', '09845', 'lkj', '2023-04-05 12:16:52', NULL, NULL, '1'),
(16, 'ghjk', '5678', '4567', '2023-04-05 07:42:10', NULL, NULL, '1'),
(17, 'efewfwe', '789', 'wfwe', '2023-04-05 07:44:09', NULL, NULL, '1'),
(18, 'dfghj', '45678', 'qwer', '2023-04-05 07:45:33', NULL, NULL, '1'),
(19, '5678', '56789', '97865kjh', '2023-04-05 07:49:05', NULL, NULL, '1'),
(20, 'rtyu', '34567', '345', '2023-04-05 07:51:32', NULL, NULL, '1'),
(21, 'juan', '1288853', '123456', '2023-04-10 09:02:09', NULL, NULL, '1'),
(22, 'gggggggg', '12332', '124141', '2023-04-10 09:10:20', NULL, NULL, '1'),
(23, '4343', '43434', '434343', '2023-04-10 09:10:34', NULL, NULL, '1'),
(24, '555555', '66666666', '434344', '2023-04-10 09:10:46', NULL, NULL, '1'),
(25, NULL, NULL, '3535', '2023-04-10 09:11:28', NULL, NULL, '1'),
(26, NULL, NULL, '43434', '2023-04-10 09:11:35', NULL, NULL, '1'),
(27, 'hhhhhhh', '45555', '44444', '2023-04-10 09:24:15', NULL, NULL, '1'),
(28, 'juan', '12450800', '12222222', '2023-04-10 09:47:07', NULL, NULL, '1'),
(29, '111', '11', '1234', '2023-04-10 09:50:08', NULL, NULL, '1'),
(30, '11', '1', '111', '2023-04-10 09:50:39', NULL, NULL, '1'),
(31, 'rtyui', '345678', 'wertyuik', '2023-04-10 12:21:40', NULL, NULL, '1'),
(32, NULL, NULL, '876f', '2023-04-10 12:22:44', NULL, NULL, '1'),
(33, 'juan', '12412412', '52353', '2023-04-18 10:55:56', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_facturaciones`
--

CREATE TABLE `tb_facturaciones` (
  `id_facturacion` int(11) NOT NULL,
  `id_informacion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nro_factura` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_cliente` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_factura` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_ingreso` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hora_ingreso` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_salida` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hora_salida` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tiempo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cuviculo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cantidad` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `monto_total` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `monto_literal` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_sesion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `qr` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `fyh_eliminacion` datetime DEFAULT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_facturaciones`
--

INSERT INTO `tb_facturaciones` (`id_facturacion`, `id_informacion`, `nro_factura`, `id_cliente`, `fecha_factura`, `fecha_ingreso`, `hora_ingreso`, `fecha_salida`, `hora_salida`, `tiempo`, `cuviculo`, `detalle`, `precio`, `cantidad`, `total`, `monto_total`, `monto_literal`, `user_sesion`, `qr`, `fyh_creacion`, `fyh_actualizacion`, `fyh_eliminacion`, `estado`) VALUES
(1, '1', '1', '2', 'La Paz, 19 de Febrero de 2023', '2023-02-19', '22:11', '2023-02-19', '22:18', '0 días con 0 horas con 7 minutos ', '1', 'Servicio de parqueo de 0 días con 0 horas con 7 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente juac con CI/NIT:\n 12345678 con el vehiculo con número de placa 12 y esta factura se genero en\n  La Paz, 19 de Febrero de 2023 a hr: 22:18', '2023-02-19 10:18:03', NULL, NULL, '1'),
(2, '1', '2', '8', 'La Paz, 21 de Febrero de 2023', '2023-02-19', '22:53', '2023-02-21', '15:20', '1 días con 16 horas con 27 minutos ', '1', 'Servicio de parqueo de 1 días con 16 horas con 27 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'juanca@baulphp.com', 'Factura realizada por el sistema de paqueo, al cliente 123 con CI/NIT:\n 123 con el vehiculo con número de placa 123 y esta factura se genero en\n  La Paz, 21 de Febrero de 2023 a hr: 15:20', '2023-02-21 03:20:32', NULL, NULL, '1'),
(3, '1', '3', '14', 'La Paz, 05 de Abril de 2023', '2023-04-05', '00:16', '2023-04-05', '00:17', '0 días con 0 horas con 1 minutos ', '1', 'Servicio de parqueo de 0 días con 0 horas con 1 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente hjhj con CI/NIT:\n 45678 con el vehiculo con número de placa hhh y esta factura se genero en\n  La Paz, 05 de Abril de 2023 a hr: 00:17', '2023-04-05 12:17:04', NULL, NULL, '1'),
(4, '1', '4', '16', 'La Paz, 05 de Abril de 2023', '2023-04-05', '07:41', '2023-04-05', '07:43', '0 días con 0 horas con 2 minutos ', '1', 'Servicio de parqueo de 0 días con 0 horas con 2 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente ghjk con CI/NIT:\n 5678 con el vehiculo con número de placa 4567 y esta factura se genero en\n  La Paz, 05 de Abril de 2023 a hr: 07:43', '2023-04-05 07:43:55', NULL, NULL, '1'),
(5, '1', '5', '17', 'La Paz, 05 de Abril de 2023', '2023-04-05', '07:43', '2023-04-05', '07:45', '0 días con 0 horas con 2 minutos ', '1', 'Servicio de parqueo de 0 días con 0 horas con 2 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente efewfwe con CI/NIT:\n 789 con el vehiculo con número de placa wfwe y esta factura se genero en\n  La Paz, 05 de Abril de 2023 a hr: 07:45', '2023-04-05 07:45:19', NULL, NULL, '1'),
(6, '1', '6', '18', 'La Paz, 10 de Abril de 2023', '2023-04-05', '07:43', '2023-04-10', '09:10', '5 días con 1 horas con 27 minutos ', '1', 'Servicio de parqueo de 5 días con 1 horas con 27 minutos ', '4', '1', '4', '4', 'CUATRO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente dfghj con CI/NIT:\n 45678 con el vehiculo con número de placa qwer y esta factura se genero en\n  La Paz, 10 de Abril de 2023 a hr: 09:10', '2023-04-10 09:10:05', NULL, NULL, '1'),
(7, '1', '7', '23', 'La Paz, 10 de Abril de 2023', '2023-04-10', '09:10', '2023-04-10', '09:11', '0 días con 0 horas con 1 minutos ', '1', 'Servicio de parqueo de 0 días con 0 horas con 1 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente 4343 con CI/NIT:\n 43434 con el vehiculo con número de placa 434343 y esta factura se genero en\n  La Paz, 10 de Abril de 2023 a hr: 09:11', '2023-04-10 09:11:16', NULL, NULL, '1'),
(8, '2', '8', '25', 'La Paz, 10 de Abril de 2023', '2023-04-10', '09:11', '2023-04-10', '09:46', '0 días con 0 horas con 35 minutos ', '1', 'Servicio de parqueo de 0 días con 0 horas con 35 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente  con CI/NIT:\n  con el vehiculo con número de placa 3535 y esta factura se genero en\n  La Paz, 10 de Abril de 2023 a hr: 09:46', '2023-04-10 09:46:46', NULL, NULL, '1'),
(9, '2', '9', '28', 'La Paz, 10 de Abril de 2023', '2023-04-10', '09:46', '2023-04-10', '09:47', '0 días con 0 horas con 1 minutos ', '1', 'Servicio de parqueo de 0 días con 0 horas con 1 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente juan con CI/NIT:\n 12450800 con el vehiculo con número de placa 12222222 y esta factura se genero en\n  La Paz, 10 de Abril de 2023 a hr: 09:47', '2023-04-10 09:47:14', NULL, NULL, '1'),
(10, '2', '10', '29', 'La Paz, 10 de Abril de 2023', '2023-04-10', '09:46', '2023-04-10', '09:50', '0 días con 0 horas con 4 minutos ', '1', 'Servicio de parqueo de 0 días con 0 horas con 4 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente 111 con CI/NIT:\n 11 con el vehiculo con número de placa 1234 y esta factura se genero en\n  La Paz, 10 de Abril de 2023 a hr: 09:50', '2023-04-10 09:50:13', NULL, NULL, '1'),
(11, '2', '11', '30', 'La Paz, 10 de Abril de 2023', '2023-04-10', '09:46', '2023-04-10', '09:50', '0 días con 0 horas con 4 minutos ', '1', 'Servicio de parqueo de 0 días con 0 horas con 4 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente 11 con CI/NIT:\n 1 con el vehiculo con número de placa 111 y esta factura se genero en\n  La Paz, 10 de Abril de 2023 a hr: 09:50', '2023-04-10 09:50:46', NULL, NULL, '1'),
(12, '2', '12', '31', 'La Paz, 10 de Abril de 2023', '2023-04-10', '12:21', '2023-04-10', '12:21', '0 días con 0 horas con 0 minutos ', '1', 'Servicio de parqueo de 0 días con 0 horas con 0 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente rtyui con CI/NIT:\n 345678 con el vehiculo con número de placa wertyuik y esta factura se genero en\n  La Paz, 10 de Abril de 2023 a hr: 12:21', '2023-04-10 12:21:57', NULL, NULL, '1'),
(13, '2', '13', '33', 'La Paz, 18 de Abril de 2023', '2023-04-18', '10:55', '2023-04-18', '10:57', '0 días con 0 horas con 2 minutos ', '1', 'Servicio de parqueo de 0 días con 0 horas con 2 minutos ', '0', '1', '0', '0', 'CERO CON 00/100 Bs.', 'admin@gmail.com', 'Factura realizada por el sistema de paqueo, al cliente juan con CI/NIT:\n 12412412 con el vehiculo con número de placa 52353 y esta factura se genero en\n  La Paz, 18 de Abril de 2023 a hr: 10:57', '2023-04-18 10:57:35', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_informaciones`
--

CREATE TABLE `tb_informaciones` (
  `id_informacion` int(11) NOT NULL,
  `nombre_parqueo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `actividad_empresa` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sucursal` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `zona` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `departamento_ciudad` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `fyh_eliminacion` datetime DEFAULT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_informaciones`
--

INSERT INTO `tb_informaciones` (`id_informacion`, `nombre_parqueo`, `actividad_empresa`, `sucursal`, `direccion`, `zona`, `telefono`, `departamento_ciudad`, `pais`, `fyh_creacion`, `fyh_actualizacion`, `fyh_eliminacion`, `estado`) VALUES
(1, 'aaaa', 'aaaa', 'aa', 'aaaa', 'aaa', '121212', 'La Paz', 'Bolivia', '2023-02-19 10:07:14', NULL, NULL, '1'),
(2, 'torres', 'parqueo mediano', '12', 'av francoi', '12 de octubre', '655655561', 'La Paz', 'Bolivia', '2023-04-10 09:20:16', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_mapeos`
--

CREATE TABLE `tb_mapeos` (
  `id_map` int(11) NOT NULL,
  `nro_espacio` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado_espacio` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `obs` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `fyh_eliminacion` datetime DEFAULT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `parqueo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_mapeos`
--

INSERT INTO `tb_mapeos` (`id_map`, `nro_espacio`, `estado_espacio`, `obs`, `fyh_creacion`, `fyh_actualizacion`, `fyh_eliminacion`, `estado`, `parqueo`) VALUES
(1, '1', 'LIBRE', '', '2023-02-19 10:05:56', '2023-04-18 10:57:35', NULL, '1', 1),
(10, '2', 'LIBRE', '', '2023-04-05 07:50:22', NULL, NULL, '1', 1),
(11, '3', 'LIBRE', '', '2023-04-05 07:50:34', NULL, NULL, '1', 1),
(12, '4', 'LIBRE', '', '2023-04-05 07:50:41', NULL, NULL, '1', 1),
(13, '5', 'LIBRE', '', '2023-04-05 07:50:58', NULL, NULL, '1', 1),
(14, '6', 'LIBRE', '', '2023-04-05 07:51:04', NULL, NULL, '1', 1),
(15, '7', 'LIBRE', '', '2023-04-05 07:51:13', NULL, NULL, '1', 1),
(16, '22', 'LIBRE', '', '2023-04-10 09:13:13', NULL, NULL, '1', 1),
(17, '100', 'LIBRE', 'para livianos', '2023-04-10 09:29:31', NULL, NULL, '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_precios`
--

CREATE TABLE `tb_precios` (
  `id_precio` int(11) NOT NULL,
  `cantidad` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `fyh_eliminacion` datetime DEFAULT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_precios`
--

INSERT INTO `tb_precios` (`id_precio`, `cantidad`, `detalle`, `precio`, `fyh_creacion`, `fyh_actualizacion`, `fyh_eliminacion`, `estado`) VALUES
(1, '1', 'HORAS', '4', '2023-02-19 10:06:32', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `fyh_eliminacion` datetime DEFAULT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_roles`
--

INSERT INTO `tb_roles` (`id_rol`, `nombre`, `fyh_creacion`, `fyh_actualizacion`, `fyh_eliminacion`, `estado`) VALUES
(1, 'ENCARGADO', '2023-05-03 05:56:21', NULL, NULL, '1'),
(2, 'ADMINISTRADOR', '2023-05-03 05:56:33', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tickets`
--

CREATE TABLE `tb_tickets` (
  `id_ticket` int(11) NOT NULL,
  `nombre_cliente` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nit_ci` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `placa_auto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cuviculo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_ingreso` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hora_ingreso` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado_ticket` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_sesion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `fyh_eliminacion` datetime DEFAULT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_tickets`
--

INSERT INTO `tb_tickets` (`id_ticket`, `nombre_cliente`, `nit_ci`, `placa_auto`, `cuviculo`, `fecha_ingreso`, `hora_ingreso`, `estado_ticket`, `user_sesion`, `fyh_creacion`, `fyh_actualizacion`, `fyh_eliminacion`, `estado`) VALUES
(13, 'JUAN', '123456778', 'AAAA1111', '44', '2023-02-21', '15:23', 'OCUPADO', 'admin@gmail.com', '2023-02-21 03:23:47', NULL, NULL, '1'),
(14, 'hjhj', '45678', 'HHH', '1', '2023-04-05', '00:16', 'LIBRE', 'admin@gmail.com', '2023-04-05 12:16:35', NULL, NULL, '1'),
(15, 'uij', '09845', 'LKJ', '76', '2023-04-05', '00:16', 'LIBRE', 'admin@gmail.com', '2023-04-05 12:16:52', NULL, NULL, '1'),
(16, 'ghjk', '5678', '4567', '1', '2023-04-05', '07:41', 'LIBRE', 'admin@gmail.com', '2023-04-05 07:42:10', NULL, NULL, '1'),
(17, 'efewfwe', '789', 'WFWE', '1', '2023-04-05', '07:43', 'LIBRE', 'admin@gmail.com', '2023-04-05 07:44:09', NULL, NULL, '1'),
(18, 'dfghj', '45678', 'QWER', '1', '2023-04-05', '07:43', 'LIBRE', 'admin@gmail.com', '2023-04-05 07:45:33', NULL, NULL, '1'),
(19, '5678', '56789', '97865KJH', '44', '2023-04-05', '07:48', 'OCUPADO', 'admin@gmail.com', '2023-04-05 07:49:05', NULL, NULL, '1'),
(20, 'rtyu', '34567', '345', '2', '2023-04-05', '07:51', 'OCUPADO', 'admin@gmail.com', '2023-04-05 07:51:32', NULL, NULL, '1'),
(21, NULL, NULL, '345', 'rtyu', '2023-04-05', '07:51', 'OCUPADO', 'admin@gmail.com', '2023-04-05 07:51:54', NULL, NULL, '1'),
(22, 'juan', '1288853', '123456', '2', '2023-04-10', '09:01', 'OCUPADO', 'admin@gmail.com', '2023-04-10 09:02:09', NULL, NULL, '1'),
(23, 'gggggggg', '12332', '124141', '2', '2023-04-10', '09:09', 'OCUPADO', 'admin@gmail.com', '2023-04-10 09:10:20', NULL, NULL, '1'),
(24, '4343', '43434', '434343', '1', '2023-04-10', '09:10', 'LIBRE', 'admin@gmail.com', '2023-04-10 09:10:34', NULL, NULL, '1'),
(25, '555555', '66666666', '434344', '2', '2023-04-10', '09:10', 'LIBRE', 'admin@gmail.com', '2023-04-10 09:10:45', NULL, NULL, '1'),
(26, NULL, NULL, '3535', '1', '2023-04-10', '09:11', 'LIBRE', 'admin@gmail.com', '2023-04-10 09:11:28', NULL, NULL, '1'),
(27, NULL, NULL, '43434', '2', '2023-04-10', '09:11', 'LIBRE', 'admin@gmail.com', '2023-04-10 09:11:35', NULL, NULL, '1'),
(28, 'hhhhhhh', '45555', '44444', '2', '2023-04-10', '09:23', 'OCUPADO', 'admin@gmail.com', '2023-04-10 09:24:15', NULL, NULL, '1'),
(29, 'juan', '12450800', '12222222', '1', '2023-04-10', '09:46', 'LIBRE', 'admin@gmail.com', '2023-04-10 09:47:07', NULL, NULL, '1'),
(30, '111', '11', '1234', '1', '2023-04-10', '09:46', 'LIBRE', 'admin@gmail.com', '2023-04-10 09:50:08', NULL, NULL, '1'),
(31, '11', '1', '111', '1', '2023-04-10', '09:46', 'LIBRE', 'admin@gmail.com', '2023-04-10 09:50:39', NULL, NULL, '1'),
(32, 'rtyui', '345678', 'WERTYUIK', '1', '2023-04-10', '12:21', 'LIBRE', 'admin@gmail.com', '2023-04-10 12:21:40', NULL, NULL, '1'),
(33, NULL, NULL, '876F', '2', '2023-04-10', '12:21', 'OCUPADO', 'admin@gmail.com', '2023-04-10 12:22:44', NULL, NULL, '1'),
(34, 'juan', '12412412', '52353', '1', '2023-04-18', '10:55', 'LIBRE', 'admin@gmail.com', '2023-04-18 10:55:56', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rol` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email_verificado` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password_user` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `fyh_eliminacion` datetime DEFAULT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id`, `nombres`, `rol`, `email`, `email_verificado`, `password_user`, `token`, `fyh_creacion`, `fyh_actualizacion`, `fyh_eliminacion`, `estado`) VALUES
(1, 'admin', 'ADMINISTRADOR', 'admin@gmail.com', 'si', 'admin', NULL, '2023-02-20 02:50:51', '2023-02-20 02:50:51', '2023-02-20 02:50:51', '1'),
(2, 'juan', 'ENCARGADO', 'juanca@baulphp.com', NULL, 'juan', NULL, '2023-02-19 10:14:39', NULL, NULL, '1'),
(3, 'jose', 'ENCARGADO', 'ss@gmail.com', NULL, 'jose', NULL, '2023-02-19 10:55:30', NULL, '2023-05-03 06:24:35', '0'),
(4, 'prueba', 'ENCARGADO', 'prueba@gmail.com', NULL, 'admin', NULL, '2023-05-03 05:58:24', NULL, NULL, '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `tb_facturaciones`
--
ALTER TABLE `tb_facturaciones`
  ADD PRIMARY KEY (`id_facturacion`);

--
-- Indices de la tabla `tb_informaciones`
--
ALTER TABLE `tb_informaciones`
  ADD PRIMARY KEY (`id_informacion`);

--
-- Indices de la tabla `tb_mapeos`
--
ALTER TABLE `tb_mapeos`
  ADD PRIMARY KEY (`id_map`);

--
-- Indices de la tabla `tb_precios`
--
ALTER TABLE `tb_precios`
  ADD PRIMARY KEY (`id_precio`);

--
-- Indices de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tb_tickets`
--
ALTER TABLE `tb_tickets`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `tb_facturaciones`
--
ALTER TABLE `tb_facturaciones`
  MODIFY `id_facturacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tb_informaciones`
--
ALTER TABLE `tb_informaciones`
  MODIFY `id_informacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_mapeos`
--
ALTER TABLE `tb_mapeos`
  MODIFY `id_map` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tb_precios`
--
ALTER TABLE `tb_precios`
  MODIFY `id_precio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_tickets`
--
ALTER TABLE `tb_tickets`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
