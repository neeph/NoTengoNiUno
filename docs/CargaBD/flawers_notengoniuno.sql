-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-02-2011 a las 19:04:15
-- Versión del servidor: 5.1.52
-- Versión de PHP: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `flawers_notengoniuno`
--

--
-- Volcar la base de datos para la tabla `CATEGORIA`
--

INSERT INTO `CATEGORIA` (`ID_CATEGORIA`, `ID_PROYECTO`, `CATEGORIA`, `COLOR_CATEGORIA`, `ESTADO_CATEGORIA`) VALUES
(1, 1, 'Comida', '000000', 0),
(2, 1, 'Cuentas', 'ff0000', 0),
(3, 1, 'Otros', 'cccccc', 0),
(4, 1, 'Celular', '000000', 0),
(5, 1, 'DiversiÃ³n', NULL, 0),
(6, 1, 'Ropa', '000000', 0),
(7, 1, 'Sueldo', '000000', 0),
(8, 1, 'Transporte', '000000', 0),
(9, 1, 'Iglesia', NULL, 0),
(10, 1, 'Prestamos', '000000', 0),
(11, 3, 'prueba', NULL, 0),
(12, 3, 'cmvld', NULL, 0),
(13, 4, 'transporte', NULL, 0),
(14, 5, 'PeluquerÃ­a', NULL, 0),
(15, 5, 'Regalos', NULL, 0),
(16, 5, 'Farmacia', NULL, 0),
(17, 1, 'lala lala lolo', NULL, 0),
(18, 1, 'lolo', NULL, 0),
(19, 5, 'Sueldo', NULL, 0),
(20, 5, 'Giros del cajero', NULL, 0),
(21, 5, 'Ahorro Libreta Casa', NULL, 0),
(22, 5, 'Excedentes mes anterior', NULL, 0),
(23, 7, 'Almuerzo', NULL, 0),
(24, 7, 'Otras Comidas', NULL, 0),
(25, 7, 'LocomociÃ³n', NULL, 0),
(26, 7, 'Sueldo', NULL, 0),
(27, 7, 'ArtÃ­culos ElectrÃ³nicos', NULL, 0),
(28, 7, 'Carrete', NULL, 0),
(29, 7, 'Celular', NULL, 0),
(30, 7, 'PrÃ©stamos', NULL, 0),
(31, 7, 'Regalos', NULL, 0),
(32, 5, 'Ahorro seguro de vida', NULL, 0),
(33, 5, 'Ropa', NULL, 0),
(34, 5, 'Comida', NULL, 0),
(35, 5, 'Pasajes a ViÃ±a', NULL, 0),
(36, 5, 'Pago Visa', NULL, 0);

--
-- Volcar la base de datos para la tabla `REGISTRO`
--

INSERT INTO `REGISTRO` (`ID_REGISTRO`, `ID_TIPO_REGISTRO`, `ID_CATEGORIA`, `ID_PROYECTO`, `MONTO_REGISTRO`, `FECHA_REGISTRO`, `DESC_REGISTRO`, `ESTADO_REGISTRO`) VALUES
(1, 2, 1, 1, 1900, '2011-01-23', 'Supermercado', 0),
(2, 2, 1, 1, 1590, '2011-01-21', 'Almuerzo', 0),
(3, 2, 1, 1, 280, '2011-01-21', 'Colacion', 0),
(4, 2, 1, 1, 280, '2011-01-20', 'Colacion', 0),
(5, 2, 1, 1, 1300, '2011-01-19', 'Bebida Pancho', 0),
(6, 2, 8, 1, 2000, '2011-01-18', 'bip', 0),
(7, 2, 1, 1, 670, '2011-01-18', 'Colacion', 0),
(8, 2, 5, 1, 9600, '2011-01-17', 'Cine Harry Potter Cindy', 0),
(9, 2, 5, 1, 850, '2011-01-15', 'Act. JAS', 0),
(10, 2, 10, 1, 50000, '2011-01-15', 'a Papa', 0),
(11, 2, 8, 1, 350, '2011-01-14', 'Colectivo', 0),
(12, 2, 1, 1, 2000, '2011-01-14', 'Colacion', 0),
(13, 2, 1, 1, 1500, '2011-01-13', 'Jugos', 0),
(14, 2, 2, 1, 50000, '2011-01-13', 'Plantillas Digitalsupplystore.com', 0),
(15, 2, 2, 1, 21980, '2011-01-13', 'Internet', 0),
(16, 2, 10, 1, 1000, '2011-01-12', 'peaje obispo', 0),
(17, 2, 1, 1, 3300, '2011-01-12', 'Almuerzo', 0),
(18, 2, 1, 1, 7900, '2011-01-10', 'Pizza noche de hogar', 0),
(19, 2, 9, 1, 5000, '2011-01-09', 'Ofrenda de ayuno', 0),
(20, 2, 9, 1, 45000, '2011-01-09', 'Diezmo', 0),
(21, 2, 1, 1, 2850, '2011-01-09', 'Junta', 0),
(22, 2, 1, 1, 990, '2011-01-07', 'Helado', 0),
(23, 2, 3, 1, 9270, '2011-01-07', 'Cremas', 0),
(24, 2, 4, 1, 2000, '2011-01-06', 'recarga', 0),
(25, 2, 1, 1, 460, '2011-01-05', 'Colacion', 0),
(26, 2, 8, 1, 2000, '2011-01-05', 'bip', 0),
(27, 2, 1, 1, 2890, '2011-01-04', 'Almuerzo', 0),
(28, 2, 2, 1, 5000, '2011-01-04', 'LegalizaciÃ³n de letras', 0),
(29, 2, 2, 1, 160000, '2011-01-04', 'Abono repactacion U', 0),
(30, 1, 7, 1, 450000, '2011-01-04', 'Tacto S.A', 0),
(31, 2, 3, 1, 20000, '2011-01-02', 'Almohada', 0),
(32, 2, 1, 1, 5360, '2011-01-02', 'Supermercado', 0),
(33, 2, 5, 1, 7200, '2011-01-01', 'Cine Tron', 0),
(34, 2, 1, 1, 2000, '2011-01-01', 'Bebidas', 0),
(35, 1, 10, 1, 30000, '2010-12-31', 'DevoluciÃ³n PapÃ¡', 0),
(36, 1, 10, 1, 60000, '2010-12-31', 'DevoluciÃ³n MamÃ¡', 0),
(37, 1, 10, 1, 200000, '2010-12-31', 'DevoluciÃ³n MamÃ¡', 0),
(38, 1, 10, 1, 380000, '2010-12-31', 'DevoluciÃ³n MamÃ¡', 0),
(39, 2, 1, 1, 10000, '2010-12-31', 'Asado', 0),
(40, 2, 3, 1, 14263, '2010-12-30', 'ajuste', 0),
(41, 2, 3, 1, 500, '2010-12-30', 'Anacin', 0),
(42, 2, 1, 1, 2500, '2010-12-30', 'Almuerzo', 0),
(43, 2, 10, 1, 5000, '2010-12-30', 'a Paola', 0),
(44, 2, 8, 1, 2000, '2010-12-29', 'bip', 0),
(45, 2, 10, 1, 380000, '2010-12-29', 'a Mama', 0),
(46, 2, 3, 1, 3000, '2010-12-28', 'Peluqueria', 0),
(47, 2, 1, 1, 1000, '2010-12-28', 'Colacion', 0),
(48, 2, 3, 1, 6000, '2010-12-27', 'regalo a Luna', 0),
(49, 2, 5, 1, 5000, '2010-12-27', 'Luna', 0),
(50, 2, 1, 1, 10000, '2010-12-26', 'Varias', 0),
(51, 2, 3, 1, 30000, '2010-12-24', 'Regalos Navidad', 0),
(52, 2, 8, 1, 1400, '2010-12-22', 'Colectivo plaza italia a casa', 0),
(53, 2, 10, 1, 60000, '2010-12-22', 'a Mama (generos)', 0),
(54, 2, 3, 1, 2000, '2010-12-21', 'amigo secreto tacto', 0),
(55, 2, 1, 1, 3000, '2010-12-21', 'Cosas', 0),
(56, 2, 1, 1, 850, '2010-12-21', 'Colacion', 0),
(57, 2, 1, 1, 1690, '2010-12-20', 'Almuerzo', 0),
(58, 2, 2, 1, 12000, '2010-12-19', 'digitalsupplystore.com', 0),
(59, 2, 4, 1, 3000, '2010-12-17', 'recarga', 0),
(60, 2, 6, 1, 13000, '2010-12-17', 'Camisa', 0),
(61, 2, 1, 1, 3190, '2010-12-17', 'Almuerzo', 0),
(62, 2, 6, 1, 7000, '2010-12-16', 'zapatos', 0),
(63, 2, 1, 1, 2200, '2010-12-14', 'Almuerzo', 0),
(64, 2, 3, 1, 10000, '2010-12-12', 'Varios', 0),
(65, 2, 2, 1, 20000, '2010-12-12', 'Gas', 0),
(66, 2, 5, 1, 18500, '2010-12-12', 'Cumple Paola', 0),
(67, 2, 2, 1, 22000, '2010-12-11', 'Internet', 0),
(68, 2, 3, 1, 40000, '2010-12-10', 'Disco externo', 0),
(69, 2, 1, 1, 3000, '2010-12-09', 'Almuerzo', 0),
(70, 2, 1, 1, 1300, '2010-12-08', 'Helado', 0),
(71, 2, 5, 1, 6000, '2010-12-06', 'Luna', 0),
(72, 2, 9, 1, 59000, '2010-12-06', 'Diezmo', 0),
(73, 2, 5, 1, 5000, '2010-12-04', 'Cine Megamente', 0),
(74, 2, 2, 1, 35000, '2010-12-04', 'Hosting+dominio', 0),
(75, 1, 7, 1, 450000, '2010-12-03', 'Tacto S.A', 0),
(76, 2, 1, 1, 270, '2010-12-03', 'Chocolate', 0),
(77, 2, 8, 1, 2000, '2010-12-03', 'bip', 0),
(78, 2, 1, 1, 460, '2010-12-02', 'Alfajor', 0),
(79, 2, 5, 1, 7000, '2010-12-01', 'Cumple Adan', 0),
(80, 2, 3, 1, 10000, '2010-11-28', 'Act. JAS', 0),
(81, 2, 8, 1, 2000, '2010-11-26', 'bip', 0),
(82, 2, 1, 1, 2000, '2010-11-26', 'con la marce', 0),
(83, 2, 10, 1, 30000, '2010-11-24', 'a Papa', 0),
(84, 2, 8, 1, 2000, '2010-11-20', 'bip', 0),
(85, 2, 3, 1, 4500, '2010-11-19', 'Ibuprofeno+crema mama', 0),
(86, 2, 6, 1, 70000, '2010-11-19', 'Traje+camisa+corbata', 0),
(87, 1, 7, 1, 136000, '2010-11-19', 'Ayudantia', 0),
(88, 2, 1, 1, 370, '2010-11-18', 'Chocolate', 0),
(89, 2, 1, 1, 3000, '2010-11-17', 'Almuerzo', 0),
(90, 2, 3, 1, 20000, '2010-11-16', 'Regalo cumple papa', 0),
(91, 2, 8, 1, 2000, '2010-11-15', 'bip', 0),
(92, 2, 3, 1, 12000, '2010-11-15', 'Pastillas pa la caeza', 0),
(93, 2, 3, 1, 3600, '2010-11-14', 'Liahona', 0),
(94, 2, 9, 1, 10000, '2010-11-14', 'Diezmo', 0),
(95, 2, 1, 1, 9000, '2010-11-13', 'Once Cumple Papa', 0),
(96, 2, 1, 1, 750, '2010-11-12', 'Colacion', 0),
(97, 2, 1, 1, 1400, '2010-11-09', 'Colacion', 0),
(98, 1, 7, 1, 100000, '2010-11-09', 'Soporte GPSLine', 0),
(99, 2, 4, 1, 3000, '2010-11-09', 'Helados', 0),
(100, 2, 1, 1, 450, '2010-11-08', 'Colacion', 0),
(101, 2, 1, 1, 2500, '2010-11-08', 'Almuerzo', 0),
(102, 2, 9, 1, 45000, '2010-11-07', 'Diezmo', 0),
(103, 2, 5, 1, 7000, '2010-11-06', 'Dublin Paula', 0),
(104, 2, 4, 1, 12000, '2010-11-06', 'Almuerzo Paula', 0),
(105, 2, 4, 1, 2000, '2010-11-05', 'recarga', 0),
(106, 2, 1, 1, 2000, '2010-11-05', 'Churrasco', 0),
(107, 1, 7, 1, 450000, '2010-11-05', 'Tacto S.A', 0),
(108, 2, 2, 1, 43960, '2010-11-05', 'Internet', 0),
(109, 2, 5, 1, 7000, '2010-11-04', 'Sundance Paula', 0),
(110, 2, 8, 1, 2000, '2010-11-01', 'bip', 0),
(111, 2, 1, 1, 1390, '2010-10-26', 'Almuerzo', 0),
(112, 2, 1, 1, 1377, '2010-10-25', 'jugos', 0),
(113, 2, 1, 1, 2190, '2010-10-25', 'Almuerzo', 0),
(114, 2, 1, 1, 400, '2010-10-22', 'italiano', 0),
(115, 2, 8, 1, 2000, '2010-10-22', 'bip', 0),
(116, 2, 1, 1, 2000, '2010-10-22', 'Asado oficina', 0),
(117, 2, 3, 1, 3840, '2010-10-22', 'Desodorante+cepillo dientes', 0),
(118, 2, 3, 1, 1350, '2010-10-21', 'Algo', 0),
(119, 1, 10, 1, 20000, '2010-10-21', 'DevoluciÃ³n MamÃ¡', 0),
(120, 2, 8, 1, 2000, '2010-10-18', 'bip', 0),
(121, 2, 1, 1, 1170, '2010-10-18', 'Gatorade+chocolate', 0),
(122, 2, 8, 1, 2000, '2010-10-15', 'matri melissa', 0),
(123, 2, 1, 1, 1590, '2010-10-14', 'Almuerzo', 0),
(124, 2, 3, 1, 24990, '2010-10-14', 'regalo matri melissa', 0),
(125, 2, 8, 1, 2000, '2010-10-13', 'bip', 0),
(126, 2, 1, 1, 2190, '2010-10-13', 'Almuerzo', 0),
(127, 2, 1, 1, 560, '2010-10-13', 'Chocolate', 0),
(128, 2, 10, 1, 20000, '2010-10-11', 'a Mama', 0),
(129, 2, 6, 1, 69960, '2010-10-11', 'Ropa Matrimonio Meli', 0),
(130, 2, 5, 1, 9660, '2010-10-11', 'comida con carola y denis', 0),
(131, 2, 9, 1, 77000, '2010-10-09', 'Diezmo', 0),
(132, 2, 3, 1, 6900, '2010-10-08', 'Cera para el pelo', 0),
(133, 2, 1, 1, 790, '2010-10-06', 'Colacion', 0),
(134, 2, 1, 1, 5760, '2010-10-06', 'Almuerzo', 0),
(135, 2, 10, 1, 1000, '2010-10-05', 'a Papa', 0),
(136, 2, 10, 1, 200000, '2010-10-05', 'Casa', 0),
(137, 1, 7, 1, 450000, '2010-10-05', 'Tacto S.A', 0),
(138, 2, 1, 1, 1590, '2010-10-05', 'Almuerzo', 0),
(139, 2, 1, 1, 280, '2010-10-05', 'Chocolate', 0),
(140, 2, 2, 1, 21990, '2010-10-04', 'Internet', 0),
(141, 2, 8, 1, 2000, '2010-10-02', 'bip', 0),
(142, 2, 10, 1, 5000, '2010-10-02', 'a Papa', 0),
(143, 2, 10, 1, 20000, '2010-10-01', 'a Papa', 0),
(144, 2, 8, 1, 2000, '2010-09-30', 'bip', 0),
(145, 2, 10, 1, 10000, '2010-09-25', 'a Papa', 0),
(146, 2, 1, 1, 12600, '2010-09-25', 'casa', 0),
(147, 2, 3, 1, 970, '2010-09-24', 'Ibuprofeno', 0),
(148, 2, 3, 1, 21585, '2010-09-22', 'ajuste', 0),
(149, 2, 8, 1, 2000, '2010-09-21', 'bip', 0),
(150, 2, 2, 1, 257915, '2010-09-21', 'Universidad', 0),
(151, 2, 1, 1, 870, '2010-09-21', 'Colacion', 0),
(152, 2, 3, 1, 660, '2010-09-21', 'Portamina', 0),
(153, 1, 7, 1, 315000, '2010-09-21', 'SKF-Descuentos', 0),
(154, 2, 1, 1, 370, '2010-09-15', 'Chocolate', 0),
(155, 2, 8, 1, 2000, '2010-09-15', 'bip', 0),
(156, 2, 3, 1, 3000, '2010-09-14', 'Peluqueria', 0),
(157, 2, 1, 1, 800, '2010-09-13', 'Colacion', 0),
(158, 2, 1, 1, 740, '2010-09-13', 'Chocolate', 0),
(159, 1, 10, 1, 30000, '2010-09-10', 'de Mama', 0),
(160, 2, 8, 1, 3000, '2010-09-08', 'bip', 0),
(161, 2, 1, 1, 3000, '2010-09-08', 'La picola italia', 0),
(162, 2, 10, 1, 10000, '2010-09-01', 'a Papa', 0),
(163, 2, 10, 1, 10000, '2010-09-01', 'a Mama', 0),
(164, 2, 10, 1, 40000, '2010-09-01', 'a Papa, Gas', 0),
(165, 2, 10, 1, 20000, '2010-08-29', 'a Mama', 0),
(166, 2, 10, 1, 10000, '2010-08-27', 'a Papa', 0),
(167, 2, 5, 1, 6000, '2010-08-26', 'Casa Blanca', 0),
(168, 2, 5, 1, 4450, '2010-08-21', 'Act. Sacerdocio', 0),
(169, 2, 8, 1, 5040, '2010-08-21', 'Taxi a casa', 0),
(170, 2, 1, 1, 890, '2010-08-20', 'Pastel', 0),
(171, 2, 3, 1, 5000, '2010-08-17', 'gel antigrasa', 0),
(172, 2, 9, 1, 59000, '2010-08-15', 'Diezmo', 0),
(173, 2, 1, 1, 6740, '2010-08-14', 'Carola', 0),
(174, 2, 5, 1, 6100, '2010-08-14', 'Cine', 0),
(175, 1, 6, 1, 20000, '2010-08-13', 'Regalo cumple  papa (zapatillas)', 0),
(176, 1, 3, 1, 630, '2010-08-13', 'ajuste', 0),
(177, 2, 3, 1, 1300, '2010-08-13', 'Lapiz', 0),
(178, 2, 3, 1, 2090, '2010-08-10', 'Lapiz', 0),
(179, 2, 3, 1, 5900, '2010-08-10', 'Silicona para el pelo', 0),
(180, 2, 1, 1, 1000, '2010-08-09', 'Almuerzo', 0),
(181, 1, 10, 1, 70000, '2010-08-08', 'DevoluciÃ³n PapÃ¡', 0),
(182, 2, 1, 1, 7710, '2010-08-08', 'Colacion+Farmacia', 0),
(183, 2, 5, 1, 13990, '2010-08-06', 'StarCraft 2', 0),
(184, 2, 2, 1, 21980, '2010-08-06', 'Internet', 0),
(185, 2, 4, 1, 2000, '2010-08-06', 'recarga', 0),
(186, 1, 7, 1, 198000, '2010-08-05', 'SkinGift', 0),
(187, 1, 7, 1, 35000, '2010-08-05', 'Beca', 0),
(188, 2, 1, 1, 1000, '2010-08-04', 'panqueques', 0),
(189, 2, 10, 1, 390000, '2010-08-03', 'Deuda Santander', 0),
(190, 1, 7, 1, 315000, '2010-08-03', 'Vial y Cia', 0),
(191, 2, 3, 1, 3000, '2010-08-03', 'Peluqueria', 0),
(192, 2, 1, 1, 3697, '2010-08-03', 'Colacion', 0),
(193, 2, 5, 1, 2420, '2010-08-02', 'Bebida + Cafe (x gil :P)', 0),
(194, 2, 5, 1, 2000, '2010-07-30', 'Cuota cumple Rodrigo', 0),
(195, 2, 1, 1, 3990, '2010-07-30', 'Almuerzo', 0),
(196, 2, 1, 1, 300, '2010-07-29', 'chocolate', 0),
(197, 2, 1, 1, 450, '2010-07-28', 'chocolate+hall', 0),
(198, 2, 1, 1, 1590, '2010-07-28', 'Almuerzo', 0),
(199, 2, 5, 1, 10000, '2010-07-28', 'Karina', 0),
(200, 2, 8, 1, 2000, '2010-07-27', 'bip', 0),
(201, 2, 1, 1, 1250, '2010-07-27', 'Colacion', 0),
(202, 2, 3, 1, 3030, '2010-07-26', 'gel aftershave', 0),
(203, 2, 10, 1, 70000, '2010-07-25', 'Papa', 0),
(204, 2, 1, 1, 1590, '2010-07-22', 'Almuerzo', 0),
(205, 2, 1, 1, 300, '2010-07-22', 'chocolate', 0),
(206, 2, 1, 1, 10000, '2010-07-21', 'Colacion', 0),
(207, 2, 8, 1, 2000, '2010-07-20', 'bip', 0),
(208, 2, 4, 1, 2000, '2010-07-20', 'recarga', 0),
(209, 2, 1, 1, 1590, '2010-07-20', 'Almuerzo', 0),
(210, 2, 2, 1, 36000, '2010-07-19', 'Internet', 0),
(211, 2, 1, 1, 1100, '2010-07-19', 'Gatorade', 0),
(212, 2, 1, 1, 480, '2010-07-15', 'Alfajor', 0),
(213, 2, 3, 1, 480, '2010-07-14', 'Impresion pagare', 0),
(214, 2, 1, 1, 1590, '2010-07-14', 'Almuerzo', 0),
(215, 2, 1, 1, 1590, '2010-07-13', 'Almuerzo', 0),
(216, 1, 7, 1, 35000, '2010-07-13', 'Beca', 0),
(217, 2, 8, 1, 2000, '2010-07-13', 'bip', 0),
(218, 2, 5, 1, 4500, '2010-07-10', 'Cine', 0),
(219, 2, 1, 1, 3990, '2010-07-09', 'Almuerzo', 0),
(220, 2, 3, 1, 960, '2010-07-08', 'Anacin+frac', 0),
(221, 2, 8, 1, 2000, '2010-07-08', 'bip', 0),
(222, 2, 1, 1, 1590, '2010-07-08', 'Almuerzo', 0),
(223, 2, 1, 1, 1590, '2010-07-07', 'Almuerzo', 0),
(224, 2, 1, 1, 1590, '2010-07-06', 'Almuerzo', 0),
(225, 2, 1, 1, 5000, '2010-07-05', 'Colacion', 0),
(226, 1, 10, 1, 50000, '2010-07-05', 'Devolucion Papa', 0),
(227, 2, 1, 1, 1590, '2010-07-05', 'Almuerzo', 0),
(228, 2, 1, 1, 3990, '2010-07-02', 'Almuerzo', 0),
(229, 2, 10, 1, 50000, '2010-07-01', 'a Papa', 0),
(230, 2, 1, 1, 1750, '2010-07-01', 'Almuerzo', 0),
(231, 2, 1, 1, 1690, '2010-06-30', 'Almuerzo', 0),
(232, 2, 1, 1, 1400, '2010-06-29', 'Almuerzo', 0),
(233, 2, 8, 1, 2000, '2010-06-29', 'bip', 0),
(234, 2, 1, 1, 4825, '2010-06-28', 'colacion', 0),
(235, 2, 6, 1, 42990, '2010-06-28', 'zapatillas', 0),
(236, 2, 9, 1, 70000, '2010-06-27', '', 0),
(237, 2, 3, 1, 3000, '2010-06-26', 'peluqueria', 0),
(238, 2, 10, 1, 175000, '2010-06-26', 'a Papa, VTR', 0),
(239, 2, 1, 1, 2000, '2010-06-25', 'Asado', 0),
(240, 2, 1, 1, 120, '2010-06-24', 'Galletas', 0),
(241, 2, 1, 1, 1400, '2010-06-24', 'Almuerzo', 0),
(242, 2, 3, 1, 1000, '2010-06-23', 'paraguas', 0),
(243, 2, 1, 1, 1690, '2010-06-23', 'Almuerzo', 0),
(244, 2, 1, 1, 200, '2010-06-22', 'Hall', 0),
(245, 2, 1, 1, 1690, '2010-06-22', 'Almuerzo', 0),
(246, 2, 8, 1, 2000, '2010-06-21', 'bip', 0),
(247, 2, 3, 1, 150000, '2010-06-21', 'LCD', 0),
(248, 1, 7, 1, 450000, '2010-06-21', 'Skinfactory', 0),
(249, 2, 4, 1, 2000, '2010-06-20', '3G', 0),
(250, 2, 4, 1, 2000, '2010-06-20', 'recarga', 0),
(251, 2, 1, 1, 699, '2010-06-19', 'colacion', 0),
(252, 2, 4, 1, 20000, '2010-06-19', 'celular', 0),
(253, 2, 1, 1, 3990, '2010-06-18', 'Almuerzo', 0),
(254, 2, 1, 1, 1690, '2010-06-17', 'Almuerzo', 0),
(255, 2, 3, 1, 6990, '2010-06-14', 'vitaminas', 0),
(256, 2, 1, 1, 249, '2010-06-14', 'colacion', 0),
(257, 2, 8, 1, 2000, '2010-06-14', 'bip', 0),
(258, 1, 7, 1, 105000, '2010-06-14', 'Beca', 0),
(259, 2, 3, 1, 1490, '2010-06-12', 'Tapsin', 0),
(260, 2, 1, 1, 3590, '2010-06-12', 'colacion', 0),
(261, 2, 1, 1, 3990, '2010-06-11', 'Almuerzo', 0),
(262, 2, 1, 1, 420, '2010-06-10', 'chocolate+mentitas', 0),
(263, 2, 1, 1, 1300, '2010-06-10', 'Almuerzo', 0),
(264, 2, 1, 1, 500, '2010-06-09', 'propina', 0),
(265, 2, 1, 1, 3990, '2010-06-09', 'Almuerzo', 0),
(266, 2, 8, 1, 2000, '2010-06-08', 'bip', 0),
(267, 2, 1, 1, 2590, '2010-06-08', 'Almuerzo', 0),
(268, 2, 1, 1, 1050, '2010-06-08', 'Once', 0),
(269, 2, 1, 1, 1960, '2010-06-08', 'Almuerzo', 0),
(270, 1, 7, 1, 80000, '2010-06-07', 'Encuesta ED', 0),
(271, 2, 3, 1, 832, '2010-06-05', 'ni idea', 0),
(272, 1, 7, 1, 60000, '2010-06-05', 'Sindicatojumbo.cl', 0),
(273, 2, 1, 1, 4238, '2010-06-05', 'colacion', 0),
(274, 2, 5, 1, 1250, '2010-06-05', 'Noche de hogar', 0),
(275, 2, 1, 1, 4000, '2010-06-04', 'Almuerzo', 0),
(276, 2, 8, 1, 1000, '2010-06-02', 'bip', 0),
(277, 2, 1, 1, 2000, '2010-06-01', 'Once', 0),
(278, 2, 1, 1, 1950, '2010-06-01', 'Almuerzo', 0),
(279, 2, 5, 1, 3000, '2010-05-31', 'Cine', 0),
(280, 2, 8, 1, 1000, '2010-05-31', 'bip', 0),
(281, 2, 1, 1, 1950, '2010-05-31', 'Almuerzo', 0),
(282, 2, 1, 1, 1390, '2010-05-29', 'Comida de madrugada', 0),
(283, 2, 1, 1, 3990, '2010-05-28', 'Almuerzo', 0),
(284, 2, 3, 1, 5990, '2010-05-27', 'regalo Marcela', 0),
(285, 2, 1, 1, 1690, '2010-05-27', 'Almuerzo', 0),
(286, 2, 1, 1, 250, '2010-05-26', 'colacion', 0),
(287, 2, 1, 1, 1690, '2010-05-26', 'Almuerzo', 0),
(288, 2, 1, 1, 2500, '2010-05-25', 'Almuerzo', 0),
(289, 2, 8, 1, 2000, '2010-05-24', 'bip', 0),
(290, 2, 3, 1, 8110, '2010-05-21', 'Paseo chillan', 0),
(291, 2, 3, 1, 5990, '2010-05-20', 'regalo Diana', 0),
(292, 2, 1, 1, 1690, '2010-05-20', 'Almuerzo', 0),
(293, 2, 1, 1, 150, '2010-05-19', 'alfajor', 0),
(294, 2, 8, 1, 2000, '2010-05-18', 'bip', 0),
(295, 2, 3, 1, 580, '2010-05-18', 'fotocopias', 0),
(296, 2, 1, 1, 2080, '2010-05-18', 'Almuerzo', 0),
(297, 2, 3, 1, 25000, '2010-05-16', 'regalo dia de la madre', 0),
(298, 2, 3, 1, 7280, '2010-05-15', 'Audifonos, DVDs', 0),
(299, 2, 1, 1, 3500, '2010-05-14', 'Almuerzo', 0),
(300, 2, 3, 1, 200, '2010-05-13', 'no me acuerdo', 0),
(301, 2, 4, 1, 2000, '2010-05-13', 'recarga', 0),
(302, 2, 3, 1, 1760, '2010-05-13', 'cepillo de dientes', 0),
(303, 2, 1, 1, 1990, '2010-05-12', 'Almuerzo', 0),
(304, 2, 8, 1, 1000, '2010-05-12', 'bip', 0),
(305, 1, 7, 1, 450, '2010-05-12', 'monedas', 0),
(306, 2, 10, 1, 3000, '2010-05-08', 'a Paola', 0),
(307, 2, 3, 1, 30000, '2010-05-08', 'Maquina de afeitar', 0),
(308, 2, 6, 1, 20000, '2010-05-08', 'Pantalon Basement', 0),
(309, 2, 4, 1, 3000, '2010-05-07', '', 0),
(310, 2, 8, 1, 6000, '2010-05-03', '', 0),
(311, 2, 1, 1, 14000, '2010-05-03', '', 0),
(312, 2, 9, 1, 19000, '2010-05-02', '', 0),
(313, 1, 7, 1, 190000, '2010-04-30', 'Evoca', 0),
(314, 2, 2, 1, 77200, '2011-01-24', 'Falabella', 0),
(315, 1, 7, 1, 450000, '2011-02-04', 'Tacto S.A.', 1),
(316, 1, 7, 1, 200000, '2011-01-31', 'Energy', 1),
(317, 1, 7, 1, 200000, '2011-01-31', 'Agendamiento San Carlos', 1),
(318, 2, 1, 1, 380, '2011-01-25', 'Colacion', 0),
(319, 1, 1, 1, 10000, '2011-01-25', 'dasds', 1),
(320, 1, 1, 1, 1000000, '2011-01-25', 'prueba', 1),
(321, 1, 1, 1, 1000, '2011-01-26', 'Abono repactacion U', 1),
(322, 2, 1, 1, 390, '2011-01-26', 'Colacion', 0),
(323, 2, 3, 1, 7990, '2011-01-26', 'Cera para el pelo', 0),
(324, 2, 1, 1, 3090, '2011-01-26', 'Pizza Obispado', 0),
(325, 2, 1, 1, 280, '2011-01-27', 'Colacion', 0),
(326, 2, 11, 3, 564, '2011-01-03', 'yrh', 1),
(327, 2, 13, 4, 123, '2011-01-27', '55', 0),
(328, 2, 6, 1, 15000, '2011-01-27', 'Traje de baÃ±o', 0),
(329, 2, 1, 1, 380, '2011-01-28', 'Colacion', 0),
(330, 2, 15, 5, 10000, '2011-01-29', 'Regalo de cumpleaÃ±os LeÃ³n y Tigre', 1),
(331, 2, 16, 5, 5000, '2011-01-28', 'Eutirox 100 ', 1),
(332, 2, 3, 1, 8990, '2011-01-28', 'Bloqueador solar', 0),
(334, 1, 1, 1, 1234, '2011-01-28', 'dsdsa', 1),
(335, 1, 1, 1, 160000, '2011-01-28', 'Otros', 1),
(336, 1, 1, 1, 160000, '2011-01-28', '', 1),
(337, 1, 1, 1, 160000, '2011-01-28', 'Abono repactacion U', 1),
(338, 1, 1, 1, 160000, '2011-01-30', 'Abono repactacion U', 1),
(339, 2, 1, 1, 3330, '2011-01-29', 'Almuerzo', 0),
(340, 2, 3, 1, 200, '2011-01-29', 'BaÃ±o', 0),
(341, 2, 8, 1, 3000, '2011-01-29', 'bip', 0),
(342, 2, 10, 1, 400000, '2011-01-31', 'a MamÃ¡', 0),
(343, 1, 19, 5, 618537, '2011-01-31', 'Sueldo mes de Enero', 0),
(344, 2, 16, 5, 2890, '2011-01-30', 'Toallitas', 0),
(345, 2, 16, 5, 22400, '2011-01-30', 'Evra y Aerius', 0),
(346, 2, 15, 5, 11960, '2011-01-29', 'Regalo Cumple Tigre y LeÃ³n', 0),
(347, 2, 15, 5, 2394, '2011-01-29', 'Regalo bautizo Cata', 0),
(348, 2, 20, 5, 10000, '2011-01-29', '5 para bip y 5 para andar con $', 0),
(349, 2, 21, 5, 200000, '2011-01-30', 'Ahorro libreta de la vivienda', 0),
(350, 1, 22, 5, 39291, '2011-01-31', 'Lo que sobrÃ³ de Dic', 0),
(351, 1, 15, 5, 5980, '2011-01-29', 'Mitad del regalo TyL del Polito', 0),
(352, 2, 1, 1, 280, '2011-01-31', 'Colacion', 0),
(353, 2, 10, 1, 570, '2011-01-31', 'a Santiago', 1),
(354, 1, 26, 7, 621618, '2011-02-01', 'sueldo', 0),
(355, 1, 23, 7, 2790, '2011-01-31', 'ensalada Sammich', 1),
(356, 2, 19, 5, 1, '2011-01-31', 'lala', 1),
(357, 2, 23, 7, 2790, '2011-01-31', 'ensalada Sammich', 0),
(358, 2, 15, 5, 2790, '2011-01-31', 'lalkjfsg', 1),
(359, 2, 27, 7, 2950, '2011-01-31', 'ventilador usb', 0),
(360, 2, 29, 7, 3500, '2011-01-28', 'recarga celular', 0),
(361, 2, 29, 7, 13930, '2011-01-28', 'pago Entel enero', 0),
(362, 2, 23, 7, 18080, '2011-01-29', 'almuerzo en el mercado central', 0),
(363, 2, 28, 7, 16271, '2011-01-29', 'carne asado despedida Sam', 0),
(364, 2, 1, 1, 2890, '2011-01-31', 'Almuerzo', 0),
(365, 1, 30, 7, 100000, '2011-01-31', 'prÃ©stamo Cintin', 0),
(366, 2, 31, 7, 23204, '2011-01-30', 'gotas papÃ¡', 0),
(367, 1, 1, 1, 1234, '2011-01-31', 'Abono repactacion U', 1),
(368, 1, 1, 1, 3000, '2011-01-31', 'Colacion', 1),
(369, 1, 1, 1, 123, '2011-01-31', 'dsadsa', 1),
(370, 2, 20, 5, 7000, '2011-02-01', '1500 taxi y el resto para almuerzo', 0),
(371, 2, 1, 1, 730, '2011-02-01', 'Almuerzo', 0),
(372, 2, 8, 1, 5000, '2011-02-01', 'bip', 0),
(373, 2, 1, 1, 250, '2011-02-02', 'Colacion', 0),
(374, 2, 1, 1, 390, '2011-02-02', 'Colacion', 0),
(375, 2, 1, 1, 640, '2011-02-03', 'Almuerzo', 0),
(376, 2, 1, 1, 2745, '2011-02-03', 'Colacion', 0),
(377, 2, 32, 5, 98845, '2011-02-03', 'Pago seguro de vida mÃ¡s voluntario', 0),
(378, 2, 20, 5, 10000, '2011-02-03', 'Carrete + taxi happy hour', 0),
(379, 2, 5, 1, 6000, '2011-02-05', 'Cine, The Figther, Carola', 0),
(380, 2, 3, 1, 3000, '2011-02-05', 'Peluqueria', 0),
(381, 2, 20, 5, 10000, '2011-02-07', 'Tarjeta Bip', 0),
(382, 2, 15, 5, 5385, '2011-02-07', 'Carrete casa Any', 0),
(383, 2, 33, 5, 1990, '2011-02-06', 'Panties', 0),
(384, 2, 34, 5, 4280, '2011-02-06', 'Burger con Polito', 0),
(385, 1, 1, 1, 1234, '2011-02-07', 'Abono repactacion U', 1),
(386, 1, 1, 1, 1234, '2011-02-14', 'Abono repactacion U', 1),
(387, 1, 1, 1, 1234, '2011-02-07', 'Abono repactacion U', 1),
(388, 1, 1, 1, 1234, '2011-02-07', 'Abono repactacion U', 1),
(389, 1, 1, 1, 160000, '2011-02-07', 'Abono repactacion U', 1),
(390, 2, 8, 1, 5000, '2011-02-07', 'bip', 0),
(391, 1, 7, 1, 450000, '2011-02-07', 'Tacto S.A.', 0),
(392, 2, 2, 1, 21980, '2011-02-07', 'Internet', 0),
(393, 2, 2, 1, 120000, '2011-02-08', 'Letra febrero Usach', 1),
(394, 1, 7, 1, 200000, '2011-03-04', 'San Carlos UC', 1),
(395, 1, 7, 1, 200000, '2011-03-04', 'Energy', 1),
(396, 1, 7, 1, 500000, '2011-03-04', 'Tacto S.A.', 1),
(397, 1, 7, 1, 200000, '2011-03-04', 'NetMarket S.P.A.', 1),
(398, 2, 1, 1, 5750, '2011-02-09', 'Colacion', 0),
(399, 1, 7, 1, 200000, '2011-02-09', 'Energy', 1),
(400, 1, 7, 1, 200000, '2011-02-09', 'San Carlos UC', 1),
(401, 1, 7, 1, 200000, '2011-03-04', 'NetMarket S.P.A', 1),
(402, 1, 7, 1, 500000, '2011-03-04', 'Tacto S.A.', 1),
(403, 2, 2, 1, 120000, '2011-02-09', 'Letra 02.2010 Usach', 1),
(404, 2, 2, 1, 120000, '2011-03-03', 'Letra 03.2010 Usach', 1),
(405, 2, 9, 1, 110000, '2011-03-06', 'Diezmo', 1),
(406, 2, 9, 1, 45000, '2011-02-13', 'Diezmo', 0),
(407, 1, 1, 1, 123, '2011-02-10', '1234', 1),
(408, 1, 1, 1, 160000, '2011-02-10', 'Abono repactacion U', 1),
(409, 1, 1, 1, 160000, '2011-02-10', 'Abono repactacion U', 1),
(410, 2, 35, 5, 5700, '2011-02-09', 'Pasajes de ida y vuelta', 1),
(411, 2, 15, 5, 990, '2011-02-09', 'Revista Ga', 1),
(412, 2, 34, 5, 1300, '2011-02-09', 'Yoghourt y galletones', 1),
(413, 2, 20, 5, 5000, '2011-02-10', 'Almuerzo mÃ¡s salida con Arlette', 1),
(414, 2, 34, 5, 1300, '2011-02-09', 'Yoghourt y galletones', 0),
(415, 2, 15, 5, 990, '2011-02-09', 'Revista Ga', 0),
(416, 2, 35, 5, 5700, '2011-02-09', 'Pasajes ida y vuelta', 0),
(417, 2, 8, 1, 5000, '2011-02-10', 'bip', 0),
(418, 2, 20, 5, 4000, '2011-02-10', 'Almuerzo y salida con Arlette', 0),
(419, 2, 16, 5, 1000, '2011-02-10', 'Ibuprufeno 600', 0),
(420, 2, 36, 5, 74269, '2011-02-08', 'Pago Visa', 0),
(421, 2, 1, 1, 1500, '2011-02-12', 'Lomito', 0),
(422, 1, 1, 1, 12000, '2011-02-13', 'Ã¡Ã©Ã±', 1),
(423, 2, 6, 1, 1212, '2011-02-01', 'sadsa', 1),
(424, 1, 1, 1, 99999999, '2011-02-13', 'dsadas', 1),
(425, 1, 1, 1, 1212121, '2011-02-13', 'dsdsa', 1),
(426, 1, 1, 1, 160000, '2011-02-13', 'Abono repactacion U', 1),
(427, 2, 10, 1, 120000, '2011-02-14', 'a MamÃ¡', 0);

--
-- Volcar la base de datos para la tabla `REGISTRO_TAG`
--


--
-- Volcar la base de datos para la tabla `TAG`
--


--
-- Volcar la base de datos para la tabla `TIPO_MONEDA`
--

INSERT INTO `TIPO_MONEDA` (`ID_TIPO_MONEDA`, `TIPO_MONEDA`, `SIMBOLO_MONEDA`, `ESTADO_TIPO_MONEDA`) VALUES
(1, 'Peso Chileno', '$', 0);

--
-- Volcar la base de datos para la tabla `TIPO_REGISTRO`
--

INSERT INTO `TIPO_REGISTRO` (`ID_TIPO_REGISTRO`, `TIPO_REGISTRO`, `ESTADO_TIPO_REGISTRO`) VALUES
(1, 'Ingreso', 0),
(2, 'Egreso', 0);

--
-- Volcar la base de datos para la tabla `USUARIO`
--

INSERT INTO `USUARIO` (`ID_USUARIO`, `FECHA_SIGN`, `NOM_USUARIO`, `APE_USUARIO`, `EMA_USUARIO`, `FB_ACCESS_TOKEN`, `FB_SECRET`, `FB_SESSION_KEY`, `FB_SIG`, `FB_UID`) VALUES
(1, '2011-02-15 00:00:00', 'Alvaro', 'Flores', 'super.neeph@gmail.com', '175385569152277|16af2c6f6b1c021f432417da-705091365|FGIR6esbZqzmu37l-gc2OSYeZI8', '8c6c32ddc7005fe9823b4e50776fa3ac', '16af2c6f6b1c021f432417da-705091365', '68cd7d82c97cdfb3dafae3cda93d514d', '705091365'),
(2, '2011-01-13 00:00:00', 'Fabian', 'Zugac', 'deyavoo@gmail.com', '175385569152277|2454d5bee6201196e844fecd-689562160|IpIudsJsVOCXeTan_CefMXIpWIE', '34a9e3a61fa2b31084b80d23a53f91ba', '2454d5bee6201196e844fecd-689562160', '27abd578dde5786f4322a931c182e58c', '689562160'),
(3, '2011-02-07 00:00:00', 'Paola', 'Flores', 'poypoypolina@hotmail.com', '175385569152277|513fa879ac34f36d70f766bd-761838983|s1T6Cl_dEkZecdMWp7ZNSAdiXxQ', 'e7056f91b8cc65f7054faafbbc4ca017', '513fa879ac34f36d70f766bd-761838983', '47e0fb1af264262116b7dd85915bf6cb', '761838983'),
(4, '2011-01-27 00:00:00', 'Jorge', 'Vilches', 'jfloresdigitalsupply@gmail.com', '175385569152277|418f62ca4ce9d5dfeb623c55-1180854261|xk3UPq0Q-WaznVGVLlaL5hVm5mE', '5e57b556bfa098042c826cce198893e7', '418f62ca4ce9d5dfeb623c55-1180854261', 'd400698bf72116899b7debfd0a513044', '1180854261'),
(5, '2011-02-09 00:00:00', 'Carolina', 'Mendoza', 'carolinat@gmail.com', '175385569152277|d0193a0e317c072f92436e32-583225899|qTwfeSHMYyXSTKQmsAqPs_8gjCM', '070d20a94f5e443a8b4b6ad1a26fa596', 'd0193a0e317c072f92436e32-583225899', 'ee2819f01fef3673e67653fdb8aec2d9', '583225899'),
(6, '2011-01-30 00:00:00', 'Roberto', 'Gonzalez', 'chico_roberto@hotmail.com', '175385569152277|797d0b2fa042fcbd320f8661-529042420|dJ7ioJno8orA8G1U8gQQiIoTk88', 'f2b8fa0f4f7501ffbc88a41d4773c86e', '797d0b2fa042fcbd320f8661-529042420', 'a68df39c00811b8a23890fa4a38b8ea4', '529042420'),
(7, '2011-01-31 00:00:00', 'Claudio', 'Ite', 'sidcpvi@hotmail.com', '175385569152277|66a1cb7c3f0785fe2d097793-799467523|RASAdeV9b0unKybjkCNI3E_Zff8', '71cb2797190e73618d5e3ff550f2a31c', '66a1cb7c3f0785fe2d097793-799467523', '6ac66ae3cd051f3333934b6c483ac531', '799467523');


INSERT INTO PROYECTO (ID_TIPO_MONEDA, NOM_PROYECTO, DESC_PROYECTO, ESTADO_PROYECTO) VALUES
(1, 'Principal', 'Proyecto principal', 0),
(1, 'Principal', 'Proyecto principal', 0),
(1, 'Principal', 'Proyecto principal', 0),
(1, 'Principal', 'Proyecto principal', 0),
(1, 'Principal', 'Proyecto principal', 0),
(1, 'Principal', 'Proyecto principal', 0),
(1, 'Principal', 'Proyecto principal', 0);

INSERT INTO NIVEL_ACCESO (NOM_NIVEL_ACCESO) VALUES
('Administrador'),('Escribir y leer'), ('Solo leer');

INSERT INTO USUARIO_PROYECTO (ID_USUARIO, ID_PROYECTO, ID_NIVEL_ACCESO) VALUES
(1,1,1), (2,2,1), (3,3,1), (4,4,1), (5,5,1), (6,6,1), (7,7,1);