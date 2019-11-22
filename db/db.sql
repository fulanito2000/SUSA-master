-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2018 at 10:19 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `almacen`
--

CREATE TABLE `almacen` (
  `id_almacen` int(11) NOT NULL,
  `longitud` decimal(10,6) NOT NULL,
  `latitud` decimal(10,6) NOT NULL,
  `responsable` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `almacen`
--

INSERT INTO `almacen` (`id_almacen`, `longitud`, `latitud`, `responsable`, `nombre`, `direccion`) VALUES
(1, '-98.372112', '20.089775', 'josue sanches', 'Sección de verduras', 'Pifsal, 43625 Tulancingo, Hgo.'),
(2, '-98.372025', '20.090259', 'cresenci lopes', 'Fruteria LIRA LOPEZ', 'Pifsal, 43625 Tulancingo, Hgo.'),
(3, '-98.371561', '20.090259', 'sancho panza', 'Frutas Finas Isamin', 'Calle 21, Pifsal, 43675'),
(4, '-98.372887', '20.090614', 'tereso nogales', 'la tuna agria', 'Pifsal, 43625 Tulancingo, Hgo.'),
(5, '-98.371530', '20.090573', 'blanca flor guzman', 'Frutas Finas Isamin', 'Calle 21, Pifsal, 43675 Tulancingo, Hgo.'),
(6, '-98.370941', '20.090433', 'sandra cruz', 'Durazno Poniente', 'La Morena Sur, 43625 Tulancingo, Hgo.'),
(7, '-98.371939', '20.090526', 'joel luqueño', 'Bodega Los Arcos', 'Pifsal, 43625'),
(8, '-98.372385', '20.090468', 'andres flores', 'la fruta verde', 'Sección D 17, Rinconada la Morena, 43625'),
(9, '-98.372713', '20.090375', 'blanca flores rosales', 'la cascara dura', 'Pifsal, 43625'),
(10, '-98.372918', '20.090241', 'blanca negrete verde', 'Cristalerias \"Don Tacho\"', 'Pifsal, 43625'),
(11, '-98.372850', '20.089770', 'neron sanches', 'BODEGA SAN MARTIN', ' 2da. Secc. Num. 14, Col. La Morena, Álamos'),
(12, '-98.373519', '20.090008', 'cristina gato', 'Sección frutera', 'Álamos, 43625'),
(13, '-98.373259', '20.090154', 'jesus hernandez', 'Molino de Chiles El Bajio', 'Carretera México-Tuxpan 33, Pifsal, 43625'),
(14, '-98.372943', '20.090259', 'uriel galindo', 'sin nombre', 'Pifsal, 43625'),
(15, '-98.371381', '20.090689', 'margarito lopez', 'Compra Venta de Frutas y Verduras 1 ', 'Pasaje Duarte'),
(17, '-98.370643', '20.089944', 'blanca hermosa flor', 'DULCES ANGELITOS', 'CIPRES no.204 LOCAL B');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_almacen`
--

CREATE TABLE `detalle_almacen` (
  `id_detallealmace` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `porcentaje_ganancia` double NOT NULL,
  `stock_min` double NOT NULL,
  `stock_max` double NOT NULL,
  `id_almacen` int(11) NOT NULL,
  `id_detalleproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detalle_almacen`
--

INSERT INTO `detalle_almacen` (`id_detallealmace`, `cantidad`, `porcentaje_ganancia`, `stock_min`, `stock_max`, `id_almacen`, `id_detalleproducto`) VALUES
(1, 50, 15, 50, 100, 1, 1),
(2, 56, 12, 50, 100, 3, 1),
(3, 58, 14, 50, 100, 6, 1),
(4, 90, 12, 50, 100, 7, 1),
(5, 68, 15, 50, 100, 9, 1),
(6, 58, 16, 50, 100, 11, 1),
(7, 98, 13, 50, 100, 2, 2),
(8, 78, 17, 50, 100, 4, 2),
(9, 77, 19, 50, 100, 6, 2),
(10, 57, 12, 50, 100, 8, 2),
(11, 89, 14, 50, 100, 10, 2),
(12, 24, 16, 50, 100, 13, 4),
(13, 34, 14, 50, 100, 15, 4),
(14, 87, 13, 50, 100, 17, 4),
(15, 46, 46, 46, 64, 8, 5),
(16, 346, 634, 36, 36, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `detalle_producto`
--

CREATE TABLE `detalle_producto` (
  `id_detalleproducto` int(11) NOT NULL,
  `tamaño` double NOT NULL,
  `fecha_caducidad` date NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_unidadmedida` int(11) NOT NULL,
  `id_precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detalle_producto`
--

INSERT INTO `detalle_producto` (`id_detalleproducto`, `tamaño`, `fecha_caducidad`, `id_producto`, `id_unidadmedida`, `id_precio`) VALUES
(1, 2, '2018-10-25', 1, 1, 1),
(2, 3, '2018-10-28', 2, 1, 2),
(3, 2, '2018-10-28', 3, 1, 3),
(4, 1, '2016-10-12', 4, 1, 4),
(5, 45, '2018-08-14', 3, 1, 6),
(6, 454, '2018-08-09', 1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `precio`
--

CREATE TABLE `precio` (
  `id_precio` int(11) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `precio`
--

INSERT INTO `precio` (`id_precio`, `precio`) VALUES
(1, 50),
(2, 30),
(3, 40),
(4, 60),
(5, 61),
(6, 62),
(7, 63),
(8, 64),
(9, 65),
(10, 66),
(11, 48),
(12, 46),
(13, 34),
(14, 36);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `producto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`id_producto`, `producto`) VALUES
(1, 'manzana'),
(2, 'pera'),
(3, 'cebolla'),
(4, 'frijo');

-- --------------------------------------------------------

--
-- Table structure for table `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `id_unidadmedida` int(11) NOT NULL,
  `unidad_medida` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unidad_medida`
--

INSERT INTO `unidad_medida` (`id_unidadmedida`, `unidad_medida`) VALUES
(1, 'kilo'),
(2, 'paca'),
(3, 'bulto'),
(4, 'litro');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`id_almacen`);

--
-- Indexes for table `detalle_almacen`
--
ALTER TABLE `detalle_almacen`
  ADD PRIMARY KEY (`id_detallealmace`),
  ADD KEY `fk_detalle_almacen_almacen1_idx` (`id_almacen`),
  ADD KEY `fk_detalle_almacen_detalle_producto1_idx` (`id_detalleproducto`);

--
-- Indexes for table `detalle_producto`
--
ALTER TABLE `detalle_producto`
  ADD PRIMARY KEY (`id_detalleproducto`),
  ADD KEY `fk_detalle_producto_producto_idx` (`id_producto`),
  ADD KEY `fk_detalle_producto_unidad_medida1_idx` (`id_unidadmedida`),
  ADD KEY `fk_detalle_producto_precio1_idx` (`id_precio`);

--
-- Indexes for table `precio`
--
ALTER TABLE `precio`
  ADD PRIMARY KEY (`id_precio`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indexes for table `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`id_unidadmedida`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `almacen`
--
ALTER TABLE `almacen`
  MODIFY `id_almacen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `detalle_almacen`
--
ALTER TABLE `detalle_almacen`
  MODIFY `id_detallealmace` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `detalle_producto`
--
ALTER TABLE `detalle_producto`
  MODIFY `id_detalleproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `precio`
--
ALTER TABLE `precio`
  MODIFY `id_precio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `id_unidadmedida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle_almacen`
--
ALTER TABLE `detalle_almacen`
  ADD CONSTRAINT `fk_detalle_almacen_almacen1` FOREIGN KEY (`id_almacen`) REFERENCES `almacen` (`id_almacen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_almacen_detalle_producto1` FOREIGN KEY (`id_detalleproducto`) REFERENCES `detalle_producto` (`id_detalleproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `detalle_producto`
--
ALTER TABLE `detalle_producto`
  ADD CONSTRAINT `fk_detalle_producto_precio1` FOREIGN KEY (`id_precio`) REFERENCES `precio` (`id_precio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_producto_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_producto_unidad_medida1` FOREIGN KEY (`id_unidadmedida`) REFERENCES `unidad_medida` (`id_unidadmedida`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
