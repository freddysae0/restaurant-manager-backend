-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 11, 2021 at 06:29 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurante`
--

-- --------------------------------------------------------

--
-- Table structure for table `caccounts`
--

CREATE TABLE `caccounts` (
  `idCuenta` int(11) NOT NULL,
  `nombreCliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fechaCuenta` date NOT NULL,
  `idEmpleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `caccounts`
--

INSERT INTO `caccounts` (`idCuenta`, `nombreCliente`, `fechaCuenta`, `idEmpleado`) VALUES
(1, 'Carlos Lemus', '2021-09-01', 1),
(2, 'Jose Alejandro Ibanez', '2021-09-03', 2),
(3, 'Jose Adolfo', '2021-09-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `idCategoria` int(11) NOT NULL,
  `nombreCategoria` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`idCategoria`, `nombreCategoria`) VALUES
(1, 'Desayuno'),
(2, 'Postre'),
(3, 'Comida rápida'),
(4, 'Cena'),
(5, 'Bebida'),
(6, 'Sopa');

-- --------------------------------------------------------

--
-- Table structure for table `commercial`
--

CREATE TABLE `commercial` (
  `idComercial` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `idEmpleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `commercial`
--

INSERT INTO `commercial` (`idComercial`, `nombre`, `ubicacion`, `telefono`, `idEmpleado`) VALUES
(1, 'Arduino\'s SV', 'Santa rosa de lima', '2345-4321', 3),
(2, 'Arduino\'s SV', 'San miguel', '1234-7890', 3),
(3, 'Arduinos\'s', 'Berlin, Usulutan', '6432-7853', 2);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `idEmpleado` int(11) NOT NULL,
  `idRol` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`idEmpleado`, `idRol`, `edad`, `telefono`, `direccion`, `email`, `nombre`, `url`, `password`, `username`) VALUES
(1, 1, 21, '12345678', 'San  miguel', 'Ale@gmail.com', 'Jose Alejandro', 'nada', '123', 'Ale27'),
(2, 3, 18, '12345678', 'Ninguna', 'Marlon@gmail.com', 'Marlon Coreas', 'nada', '123', 'Coreas32'),
(3, 4, 21, '12345678', 'Ninguna', 'Salsedo@gmail.com', 'Carlos jose salsedo', 'nada', '123', 'Salsedo21'),
(4, 2, 23, '12345678', 'San Marcos', 'Roberth@gmail.com', 'Roberto antonio ruiz', 'nada', '123', 'Roberto Ruiz');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id_item_name` int(11) NOT NULL,
  `nombre_Item` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `precio` double NOT NULL,
  `disponibilidad` int(11) NOT NULL,
  `detalles_item` text COLLATE utf8_spanish_ci NOT NULL,
  `descuento` float NOT NULL DEFAULT 0,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `idCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id_item_name`, `nombre_Item`, `precio`, `disponibilidad`, `detalles_item`, `descuento`, `url`, `idCategoria`) VALUES
(1, 'Hamburguesa al carbón', 10, 1, 'nada', 0, 'qweqwqwqw', 3),
(2, 'Burrito', 5, 1, 'er', 0, 'erere', 1),
(3, 'Sopon de frijoles blancos', 12, 1, 'asasa', 0, 'asas', 6),
(4, 'Cocacola', 2, 1, 'ass', 0, 'qwqw', 5),
(5, 'Licuado', 3, 1, 'ewe', 0, 'wewe', 5),
(6, 'Tres leches', 5, 1, 'erer', 0, 'qwwqd', 2),
(7, 'Cipitio', 2.5, 1, 'dsd', 0, 'sdsdsd', 3),
(8, 'Pupusas', 1, 1, 'wewewe', 0, '121212', 4),
(9, 'Horchata', 1, 1, 'wqwwq', 0, 'qwqw', 5),
(10, 'Alitas', 7, 1, '121212', 0, '12121', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `idPedido` int(11) NOT NULL,
  `idCuenta` int(11) NOT NULL,
  `id_item_name` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`idPedido`, `idCuenta`, `id_item_name`, `cantidad`, `importe`) VALUES
(1, 1, 5, 5, 15),
(2, 1, 10, 5, 35),
(3, 3, 4, 5, 10),
(4, 3, 5, 3, 15),
(5, 3, 6, 3, 15),
(6, 3, 9, 5, 5),
(7, 2, 7, 5, 10),
(8, 2, 4, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL,
  `nombreRol` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`idRol`, `nombreRol`) VALUES
(1, 'Administrador'),
(2, 'Cocinero'),
(3, 'Cajero'),
(4, 'Mesero');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `idTicket` int(11) NOT NULL,
  `idCuenta` int(11) NOT NULL,
  `Total_sin_iva` double NOT NULL,
  `total_iva` double NOT NULL,
  `total` double NOT NULL,
  `idComercial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`idTicket`, `idCuenta`, `Total_sin_iva`, `total_iva`, `total`, `idComercial`) VALUES
(1, 1, 44.25, 5.75, 50, 1),
(2, 2, 17.7, 2.3, 20, 2),
(3, 3, 39.82, 5.18, 45, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caccounts`
--
ALTER TABLE `caccounts`
  ADD PRIMARY KEY (`idCuenta`),
  ADD KEY `idEmpleado` (`idEmpleado`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `commercial`
--
ALTER TABLE `commercial`
  ADD PRIMARY KEY (`idComercial`),
  ADD KEY `idEmpleado` (`idEmpleado`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idRol` (`idRol`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id_item_name`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCuenta` (`idCuenta`),
  ADD KEY `id_item_name` (`id_item_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`idTicket`),
  ADD KEY `idCuenta` (`idCuenta`),
  ADD KEY `idComercial` (`idComercial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caccounts`
--
ALTER TABLE `caccounts`
  MODIFY `idCuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `commercial`
--
ALTER TABLE `commercial`
  MODIFY `idComercial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id_item_name` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `idTicket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `caccounts`
--
ALTER TABLE `caccounts`
  ADD CONSTRAINT `caccounts_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `employees` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `commercial`
--
ALTER TABLE `commercial`
  ADD CONSTRAINT `commercial_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `employees` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categories` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idCuenta`) REFERENCES `caccounts` (`idCuenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_item_name`) REFERENCES `menu_items` (`id_item_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`idCuenta`) REFERENCES `caccounts` (`idCuenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`idComercial`) REFERENCES `commercial` (`idComercial`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
