-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-12-2024 a las 11:39:08
-- Versión del servidor: 8.0.40
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cybaco_ordenes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ajustes`
--

CREATE TABLE `ajustes` (
  `id_ajuste` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `ajustes`
--

INSERT INTO `ajustes` (`id_ajuste`, `id_producto`, `cantidad`, `fecha`, `observaciones`) VALUES
(1, 155, 2, '2009-11-13', 'Para uso interno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `id_almacen` int NOT NULL,
  `id_kit` int NOT NULL,
  `id_compra` int NOT NULL,
  `id_venta` int NOT NULL,
  `id_producto` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `series` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `entrada` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `salida` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`id_almacen`, `id_kit`, `id_compra`, `id_venta`, `id_producto`, `precio`, `cantidad`, `descripcion`, `series`, `entrada`, `salida`) VALUES
(657, 0, 52, 0, 178, 862.23, 2, '', '', '1', '0'),
(632, 0, 48, 0, 199, 1478.40, 1, '', '', '1', '0'),
(630, 0, 46, 0, 197, 1283.18, 3, '', 'SVND4F06331 , SVND3X19158 , SVND3X19149', '1', '0'),
(629, 0, 46, 0, 198, 821.25, 3, '', '', '1', '0'),
(627, 0, 45, 0, 195, 51.83, 1, '', '', '1', '0'),
(628, 0, 45, 0, 196, 56.12, 2, '', '', '1', '0'),
(626, 0, 45, 0, 194, 45.16, 1, '', '', '1', '0'),
(625, 0, 45, 0, 192, 363.77, 2, '', '2E9940401020 , 2E9940401018', '1', '0'),
(624, 0, 45, 0, 193, 63.94, 2, '', '', '1', '0'),
(623, 0, 45, 0, 182, 546.63, 1, '', 'WCAV28138405', '1', '0'),
(622, 0, 45, 0, 179, 580.80, 1, '', '98M0X6143068', '1', '0'),
(621, 0, 44, 0, 191, 217.50, 1, '', '', '1', '0'),
(620, 0, 44, 0, 105, 181.45, 1, '', '', '1', '0'),
(619, 0, 44, 0, 180, 155.46, 1, '', '', '1', '0'),
(618, 0, 44, 0, 181, 1322.00, 1, '', '910TPWQ3K857', '1', '0'),
(617, 0, 43, 0, 190, 111.33, 1, '', '', '1', '0'),
(615, 0, 43, 0, 154, 104.87, 1, '', '', '1', '0'),
(616, 0, 43, 0, 189, 334.88, 1, '', '6146GDSA05644', '1', '0'),
(614, 0, 43, 0, 185, 386.76, 1, '', '', '1', '0'),
(613, 0, 43, 0, 184, 616.87, 1, '', '', '1', '0'),
(611, 0, 43, 0, 179, 572.37, 1, '', '98M0X6139807', '1', '0'),
(612, 0, 43, 0, 182, 538.70, 1, '', 'WMAV2E94178', '1', '0'),
(601, 0, 37, 0, 188, 132.46, 2, '', '', '1', '0'),
(610, 0, 43, 0, 11, 489.55, 1, '', '', '1', '0'),
(600, 0, 36, 0, 55, 68.37, 1, '', '', '1', '0'),
(599, 0, 36, 0, 130, 86.33, 1, '', '', '1', '0'),
(598, 0, 35, 0, 187, 374.14, 1, '', '3E9940401744', '1', '0'),
(597, 0, 35, 0, 186, 78.00, 3, '', '', '1', '0'),
(596, 0, 35, 0, 185, 386.76, 1, '', '', '1', '0'),
(595, 0, 35, 0, 184, 609.43, 1, '', '', '1', '0'),
(594, 0, 35, 0, 183, 110.25, 1, '', '', '1', '0'),
(593, 0, 35, 0, 182, 544.96, 1, '', 'WMAV2E389613', '1', '0'),
(592, 0, 35, 0, 181, 1340.49, 1, '', '909TPWQ1P881', '1', '0'),
(590, 0, 35, 0, 179, 579.02, 1, '', '98M0X6133704', '1', '0'),
(591, 0, 35, 0, 180, 157.64, 1, '', '', '1', '0'),
(589, 0, 35, 0, 178, 875.65, 1, '', '', '1', '0'),
(588, 0, 34, 0, 177, 132.86, 2, '', '098UA322854, 098UA322840', '1', '0'),
(587, 0, 33, 0, 176, 61368.40, 1, '', 'SCN99QF100Z', '1', '0'),
(586, 0, 32, 0, 175, 799.33, 1, '', 'MDG30J729186', '1', '0'),
(585, 0, 0, 370, 174, 732.76, 2, '', '', '0', '1'),
(584, 0, 0, 369, 173, 48869.56, 1, '', '', '0', '1'),
(583, 0, 0, 366, 36, 0.04, 1, '', '', '0', '0'),
(582, 0, 0, 366, 34, 3352.17, 10, '', '', '0', '1'),
(581, 0, 0, 365, 172, 2782.61, 1, '', '', '0', '1'),
(580, 0, 0, 364, 172, 2782.61, 2, '', '', '0', '1'),
(579, 0, 0, 368, 26, 10307.69, 1, '50% Anticipo Sistema de Administración de Reservaciones HUINAB', '', '0', '0'),
(578, 0, 0, 367, 23, 200.00, 1, 'Telenlaces.com', '', '0', '0'),
(577, 0, 0, 367, 25, 1724.14, 1, 'Anticipo cafedechiapasonline.com', '', '0', '0'),
(132, 0, 0, 99, 27, 400.00, 1, '', '', '0', '0'),
(133, 0, 0, 100, 27, 400.00, 1, '', '', '0', '0'),
(658, 0, 52, 0, 179, 570.15, 2, '', '98M0X6143074 , 98M0X6143075', '1', '0'),
(659, 0, 52, 0, 184, 614.48, 4, '', '', '1', '0'),
(660, 0, 52, 0, 201, 96.11, 2, '', '27045769 , 27045768', '1', '0'),
(661, 0, 52, 0, 192, 357.10, 2, '', '2E9940401004 , 2E9940401005', '1', '0'),
(662, 0, 52, 0, 202, 142.89, 2, '', '09670303891, 09670304949', '1', '0'),
(663, 0, 52, 0, 180, 155.22, 2, '', '', '1', '0'),
(664, 0, 52, 0, 190, 111.33, 2, '', '', '1', '0'),
(665, 0, 52, 0, 182, 536.61, 2, '', 'WCAV28015834, WCAV28015527', '1', '0'),
(666, 0, 52, 0, 185, 386.76, 2, '', '', '1', '0'),
(667, 0, 52, 0, 200, 1483.27, 2, '', '909UXHB1X545 , 909UXMT1X531', '1', '0'),
(668, 0, 53, 0, 203, 545.91, 1, '', '', '1', '0'),
(669, 0, 53, 0, 204, 118.03, 1, '', '', '1', '0'),
(670, 0, 54, 0, 206, 1325.17, 1, '', '', '1', '0'),
(671, 0, 54, 0, 207, 185.92, 1, '', '', '1', '0'),
(672, 0, 54, 0, 205, 808.02, 1, '', '', '1', '0'),
(673, 0, 55, 0, 11, 491.83, 1, '', '', '1', '0'),
(674, 0, 55, 0, 179, 575.03, 1, '', '98M0X6174714', '1', '0'),
(675, 0, 55, 0, 181, 1334.75, 1, '', '910TPUU3K854', '1', '0'),
(676, 0, 55, 0, 182, 541.20, 1, '', 'WCAV27643372', '1', '0'),
(677, 0, 55, 0, 190, 111.33, 1, '', '', '1', '0'),
(678, 0, 55, 0, 209, 338.90, 1, '', '', '1', '0'),
(679, 0, 55, 0, 192, 360.15, 1, '', '3E9942400869', '1', '0'),
(680, 0, 55, 0, 185, 386.76, 1, '', '', '1', '0'),
(681, 0, 56, 0, 211, 9.32, 220, '', '', '1', '0'),
(682, 0, 57, 0, 212, 882.55, 1, '', '', '1', '0'),
(683, 0, 58, 0, 34, 935.35, 10, '', '', '1', '0'),
(684, 0, 59, 0, 213, 1085.40, 24, '', '', '1', '0'),
(576, 0, 0, 363, 19, 1500.00, 1, 'www.autobusesaexa.com.mx Cobertura 30/12/2009 - 29/12/2010 ', '', '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen_cotizaciones`
--

CREATE TABLE `almacen_cotizaciones` (
  `id_almacen` int NOT NULL,
  `id_cotizacion` int NOT NULL,
  `id_kit` int NOT NULL,
  `id_producto` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `series` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'Seguridad CCTV', ' '),
(2, 'Accesorios', ' '),
(3, 'Almacenamiento', ' '),
(4, 'Audio', ' '),
(5, 'Gabinetes', ' '),
(6, 'Lectores Opticos', ' '),
(7, 'Impresoras', ' '),
(8, 'Monitores', ' '),
(9, 'Motherboards', ' '),
(10, 'Procesadores', ' '),
(11, 'Redes', ' '),
(12, 'Scanners', ' '),
(13, 'Software', ' '),
(14, 'Video', ' '),
(15, 'Consumibles', ' '),
(16, 'Energía', ' '),
(17, 'Portatiles y Accesorios', ' '),
(19, 'Soporte Técnico', ' '),
(20, 'Servicios Web', ' '),
(21, 'Kits', ' '),
(22, 'Memorias', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cheques`
--

CREATE TABLE `cheques` (
  `id_cheque` int NOT NULL,
  `id_proveedor` int NOT NULL,
  `id_cuenta` int NOT NULL,
  `no_cheque` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `fecha_expedicion` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `fecha_cobro` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `concepto` text COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `cheques`
--

INSERT INTO `cheques` (`id_cheque`, `id_proveedor`, `id_cuenta`, `no_cheque`, `nombre`, `cantidad`, `fecha_expedicion`, `fecha_cobro`, `status`, `concepto`) VALUES
(6, 18, 2, 471, '', 3628.63, '2010-01-13', '2010-01-18', 'Pagado', 'Compra de Equipo de Computo'),
(5, 24, 2, 498, '', 15108.77, '2010-01-09', '2010-01-12', 'Pagado', ''),
(7, 18, 2, 472, '', 2157.87, '2010-01-15', '2010-01-18', 'Pagado', ''),
(9, 18, 2, 477, '', 16104.22, '2010-01-15', '2010-01-19', 'Pagado', ''),
(10, 2, 2, 501, '', 845.00, '2010-01-12', '2010-01-14', 'Pagado', ''),
(11, 18, 2, 479, '', 7260.28, '2010-01-15', '2010-01-19', 'Pagado', ''),
(12, 18, 2, 480, '', 2520.89, '2010-01-17', '2010-01-19', 'Pagado', ''),
(14, 24, 2, 510, '', 15108.77, '2010-01-20', '2010-01-22', 'Pagado', ''),
(15, 27, 2, 511, '', 3640.95, '2010-01-20', '2010-01-20', 'Pagado', ''),
(17, 18, 2, 484, ' ', 2666.98, '2010-01-18', '2010-01-25', 'Pagado', 'Compra de Equipo de Computo'),
(18, 18, 2, 485, ' ', 4760.94, '2010-01-20', '2010-01-25', 'Pagado', ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `rfc` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `razon` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `colonia` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cp` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `otro` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `web` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `activo` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `rfc`, `razon`, `direccion`, `colonia`, `cp`, `ciudad`, `estado`, `pais`, `telefono`, `fax`, `otro`, `email`, `web`, `observaciones`, `activo`) VALUES
(1, 'Carce', 'CEC010206N19', 'CONSTRUCTORA Y ELECTRIFICADORA CARCE S.A. DE C.V.', 'CARR. TUXTLA-CHICOASEN NO. 1639 LOCAL 11', 'FRACC. SAN ISIDRO BUENAVISTA', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '9616153871', '9616153871', ' ', ' ', ' ', ' ', '1'),
(2, 'Chevrolet', 'ATU-010531-EW2', 'AUTOCOMER TUXTLA S.A DE .C.V', 'LIBRAMIENTO SUR OTE. 850', 'COL. POPULAR', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(3, 'Grupo Kamus', 'GKP-080507-8A1', 'GRUPO KAMUS PACIFIC S.A. de C.V.', '9a SUR ORIENTE No.348', 'COL. CENTRO', '', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '', '', '', '', 'www.grupokamus.com.mx', 'Anteriormente la Empresa se llamaba Ayanegui', '1'),
(4, 'Inyen', 'INY010903T42', 'INYEN S.A. DE C.V.', 'AV GAVILAN 181 EDIF E 3 101', 'COL. BARRIO SAN MIGUEL IZTAPALAPA', '09360', 'MEXICO D.F.', ' ', 'MEXICO', ' ', ' ', ' ', ' ', 'www.inyen.com.mx', ' ', '1'),
(5, 'Henri Wallon', 'MOGN620913GI4', 'NORMA MOGUEL GALLEGOS', '15 PTE. SUR #336', 'COL. XAMAIPAK', '', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '', '', '', '', 'www.henriwallon.com.mx', '', '1'),
(6, 'Isuzu', 'TEC050825ER0', 'TECNOVENTAS S.A DE C.V.', 'LIBRAMIENTO SUR ORIENTE NO 850-A', ' ', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.isuzufarrera.com', ' ', '1'),
(7, 'Jaguares', 'SHO070124M42', 'SHOWMEX S.A. DE C.V.', 'BOULEVARD BELISARIO DOMINGUEZ 3777', 'COLONIA TERAN', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.clubjaguares.com', ' ', '1'),
(8, 'Gruas Express', 'GES–060727–36A', 'GRUAS EXPRESS DEL SURESTE, S. A. DE C. V.', '18ª PONIENTE SUR No. 710,ESQUINA 6ª. SUR PONIENTE', ' ', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.gruasexpress.com.mx', ' ', '1'),
(9, 'Notaria No.11', 'OACE330125KQ6', 'EUGENIO ORANTES DE COSS', '1a. AV. NORTE ORIENTE No.973', ' ', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '9616000878', ' ', ' ', ' ', ' ', ' ', '1'),
(10, 'Plasticos Titan', 'RACV720528AA7', 'VERONICA RAMOS CHAVARRIA', '1a PONIENTE SUR No. 718', ' ', '29020', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(11, 'Jovenes del Milenio', 'JMI-000904-GP8', 'JOVENES DEL MILENIO, S. DE S.S.', 'CARRETERA INT. KM. 1000', ' ', ' ', 'CINTALAPA', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(12, 'Tribunal', 'TFJ360831MTA', 'TRIBUNAL FEDERAL DE JUSTICIA FISCAL Y ADMINISTRATIVA', 'AV. INSURGENTES SUR No.881 ENTRE NEBRASKA Y AV. SAN ANTONIO (EJE 5 SUR)', 'COL. NAPOLES DELEGACION BENITO JUAREZ', '03810', 'MEXICO, D.F.', ' ', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(13, 'Faw', 'AOR031023UX0', 'AUTOCAMIONES ORIENTALES S.A. DE C.V.', 'BOULEVARD LOS LAGUITOS NO 4025-A', 'FRACC. LUM HA', '29020', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(14, 'Diestel', 'DIE971105LIA', 'DIESTEL S.A. DE C.V.', 'ALBINO ESPINOSA 1139 PONIENTE', 'COLONIA CENTRO', ' ', 'MONTERREY', 'NUEVO LEON', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(15, 'Cmnt', 'GCH070202CM2', 'GESTION CORPORATIVA Y HUMANA S.C.', '12 PTE NORTE NO. 1689', 'COL. EL MIRADOR', '29030', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.cmnt.com', ' ', '1'),
(16, 'Telenlaces', 'TEL-040614-SQ6', 'TELENLACES, S.A. DE C.V.', 'BOULEVARD BELISARIO DOMINGUEZ No. 171', ' ', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '9611214957', ' ', ' ', 'info@telenlaces.com.mx', 'www.telenlaces.com', ' ', '1'),
(17, 'Danato', 'NATD-820729-E54', 'DANIEL NARVAEZ TOVAR', '4 PONIENTE SUR # 255', 'COL. TERAN', '29050', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '9616152592', ' ', ' ', 'danato_@hotmail.com', 'www.sani.com.mx', ' ', '1'),
(18, 'Juan Ramon', 'EIJJ680826EX4 ', 'JUAN RAMON ESPINOSA JIMÉNEZ', '2 AV. PTE. NTE. Nº 81', 'BARRIO CRUZ GRANDE', ' ', 'COMITAN DE DOMINGUEZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(19, 'Felipe Constantino', 'COCF591015JC0', 'JOSE FELIPE CONSTANTINO CALCANEO', 'AV. CECILIO DEL VALLE No 491-A', 'COL. ELECTRICISTAS', '29040', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(20, 'Ing. Mancilla', 'MADR-501204-FW3', 'ROGER MANCILLA DOMINGUEZ', 'CALLE PRIMAVERA No. 240', 'COL. JARDINES DE TUXTLA', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(21, 'Solcan Lab', 'SLA-040908-ET6', 'SOLCAN LAB S.A. DE C.V.', '7a PONIENTE SUR NO. 206', 'COL. CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '', '', '', '', '', '', '1'),
(22, 'El Avila', 'COA-080820-J41', 'CENTRO OFTALMOLOGICO EL AVILA, S.C.', '16 PONIENTE NORTE NUM. 304. LOCAL 8.', 'LAS ARBOLEDAS.', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.elavila.com.mx', ' ', '1'),
(23, 'Hotel del Carmen', 'GACC 490904 KB7', 'CESAR ARMANDO GAMBOA CABALLERO', '2a AVENIDA SUR PONIENTE # 826', 'COL. CENTRO', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '9616123084 ', '9616123084 ', ' ', ' ', 'www.hoteldelcarmen.net', ' ', '1'),
(24, 'Alheli Morales', 'MOGA740929AL4', 'ALHELI MORALES GOMEZ', '9 NORTE ORIENTE NO 441', 'COL. CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(25, 'Fianzas Seguridad y Servicio', 'RICS-630528-KU2', 'MA SOLEDAD RINCON CARRILLO', 'AVENIDA QUERETARO No. 311', 'COL. RESIDENCIAL LA HACIENDA', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(26, 'Ajustes', 'ACA-860513-BK5', 'AJUSTES CALDERON, S.A.', 'BARRANCA DEL MUERTO #525-2 \\\"A\\\"', 'COLONIA MERCED GOMEZ, DELEGACION ALVARO OBREGON', ' ', 'MEXICO, DF.', ' ', 'MEXICO', '9616123189', '9616126832', ' ', ' ', 'www.ajuscal.com.mx', ' ', '1'),
(27, 'Coldwell Banker', 'CBR-030522-214', 'COMERCIALIZADORA EN BIENES RAICES DEL SUR S.A. DE C.V.', 'BLVD. BELISARIO DOMINGUEZ. No.302, LOCAL 20, PLAZA BONAMPAK', 'COL. MOCTEZUMA', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(28, 'Rio Negro', 'CRN-040212-8H9', 'CONSTRUCTORA RIO NEGRO S.A. DE C.V.', 'CALLE DEL HULE # 38 A', 'COL. JARDINES DE TUXTLA', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(29, 'Jorge Dominguez', 'DOAJ6805064X2', 'JORGE LUIS DOMINGUEZ ALVARADO', 'SIENA 150', 'FRACC. MONTE REAL', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(30, 'Ciudades Rurales', 'ICR-080606-Q57', 'INSTITUTO DE CIUDADES RURALES SUSTENTABLES', 'CALLE 1 ORIENTE SIN NUMERO TERCER PISO', 'COL. CENTRO', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(31, 'Soficredit', 'SOF960716890', 'SOFICREDIT SA DE CV', 'AVENIDA JUAREZ # 500', 'COL. CENTRO', '68000', 'OAXACA', 'OAXACA', 'MEXICO', ' ', ' ', ' ', ' ', 'www.soficredit.com.mx', ' ', '1'),
(32, 'R & Q Ingenieria', 'R&Q0209037R8', 'R & Q INGENIERIA S.A. DE C.V.', 'LOMA TECOLOTE No. 84', 'COL. LOMAS TETELA', '62157', 'CUERNAVACA', 'MORELOS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(33, 'Autodromo', 'OSP0709036PA', 'OPERADORA DE SERVICIOS PROMOCIONALES Y ESPECTACULOS S.A. DE C.V.', 'CALLE 11 PONIENTE NORTE NO. 1179', 'COLONIA VISTA HERMOSA', '29030', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.autodromochiapas.com', ' ', '1'),
(34, 'Turismo Expres', 'TES080115T98', 'TURISMO EXPRES DEL SURESTE S.A. DE C.V.', 'CALLE RIO TULIJA 4', 'COL. LOS LAURELES', '29025', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(35, 'Grupo Cove', 'GMC060327P20', 'GRUPO MULTIDISCIPLINARIO COVE, S.A. DE C.V.', 'CALLE DOS LT. 36', 'COL. VILLA MODERNA', '39074', 'CHILPANCINGO', 'GUERRERO', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(36, 'Terminator Fumigaciones', 'IAGM-640903-F93', 'MARTIN ANTONIO IBARRA GUTIERREZ', '2a NORTE ORIENTE 481-A', ' ', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '9616114722', '9616121470 ', ' ', ' ', 'www.terminator-fumigaciones.com', ' ', '1'),
(37, 'Gyo Constructores', 'GCO041118ER8', 'GYO CONSTRUCTORES S. A. DE C. V.', 'CALLE PITAGORAS No. 391', 'COLONIA ATENAS', '29020', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(38, 'Maquiladora Yalchivol', 'MFT000615DWA', 'MAQUILADORA DE FOMENTO TEXTIL YALCHIVOL S DE SS', 'CARRETERA COMITAN - TIZIMOL KM-8 S/N', 'COL. CHICHIMA GUADALUPE', '', 'COMITAN DE DOMINGUEZ', 'CHIAPAS', 'MEXICO', '', '', '', '', '', '', '1'),
(39, 'Rio Dorado', 'MRD 891101 5A7', 'MADERERIA RIO DORADO S.A. DE C.V.', 'LIB. SUR PTE. No. 239', ' ', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '9616125507', ' ', ' ', ' ', 'www.riodorado.com.mx', ' ', '1'),
(40, 'Elektromas', 'ECS-060418-CE1', 'ELEKTROMAS COMERCIALIZADORA Y SERVICIOS S.A. de C.V.', '5ta. NORTE PONIENTE # 2156', 'COL. LA GLORIA', '29038', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '9616023414 ', ' ', ' ', ' ', 'www.elektromas.com', ' ', '1'),
(41, 'Canaco', 'CNC-200202-MZ3', 'CANACO SERVYTUR DE TUXTLA GUTIERREZ', 'CALLE CENTRAL NORTE No. 225', 'COL. CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.canacotuxtla.org.mx', ' ', '1'),
(42, 'Llerandi', 'LGA071012J88', 'LLERANDI GALVAN Y ASOCIADOS SC', '11 PONIENTE NORTE No. 131-A ZONA CENTRO', '', '', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '(01961) 147 62 19', '', '', '', 'www.ekilibrio.com.mx', '', '1'),
(43, 'Thrifty', 'AAL-8903013F7', 'AUTOS ALMAR S.A. DE C.V.', 'BLVD. BELISARIO DOMINGUEZ #2510', 'COL. JARDINES DE TUXTLA', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(44, 'Escuela Cristobal Colon', 'ECC-620927-STO', 'ESCUELA CRISTÓBAL COLÓN A. C', 'CHULAVISTA 43', 'COL. TEPEYAC INSURGENTES', '07020', 'MEXICO, D.F.', ' ', 'MEXICO', ' ', ' ', ' ', ' ', 'www.ecclavilla.edu.mx', ' ', '1'),
(45, 'Unach', 'UAC 750417 LE8', 'UNIVERSIDAD AUTONOMA DE CHIAPAS', 'COLINA UNIVERSITARIA SIN NUMERO', ' ', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(46, 'Habitec', 'PDH-051229-JM8', 'PROMOTORA Y DESARROLLOS HABITEC S.A. DE C.V.', 'AGUASCALIENTES No. 119', 'COL. JUAN CRISPIN', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(47, 'Universidad Maya', 'CFP-970702-2G1', 'CENTRO DE FORMACION PROFESIONAL DE CHIAPAS, SC', '20a PONIENTE SUR No. 960', 'COL. PENIPAK', '', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '', '', '', '', '', '', '1'),
(48, 'Hotel El Roble', 'NACE 660320 GQ1', 'ELISA NARVAEZ CONSTANTINO', '3 NORTE ORIENTE No. 148', ' ', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.hotelelroblechiapas.com', ' ', '1'),
(49, 'Viajes Yansu', 'VAA0810242H9', 'VIAJES AMBAR ASESORES TURISTICOS S.A. DE C.V.', '1A AVENIDA SUR PONIENTE NO. 403', ' ', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.viajesyansu.com.mx', ' ', '1'),
(50, 'Junior', 'AAJJ-810706-JT1', 'JUNIOR ABRAHAM ALCAZAR JIMENEZ', '1a PONIENTE NORTE # 538', 'COL. TERAN', '29050', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(51, 'Emir Albores', 'AORE340829EL7', 'EMIR ALBORES RINCON', 'CERRADA SAN ISIDRO 415', ' ', '29020', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(52, 'Agencia de Cambio', 'ACL920305KW6', 'AGENCIA DE CAMBIOS LACANTUN, S.A DE C.V.', 'REAL DE GUADALUPE 12-A', 'COL. CENTRO', ' ', 'SAN CRISTOBAL DE LAS CASAS', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(53, 'Fernando Reyes', 'REFF600125KE9', 'FERNANDO REYES FARIAS', 'CALLE BRISAS 703 DEPTO 703', 'COL. LAS BRISAS', '29030', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '1251137', '', '', '', '', '', '1'),
(54, 'Publivia', 'GACR-710408-5Z3', 'RODOLFO GRAJALES CANO', 'RETORNO ASTROMELIAS NO. 55', 'COL. LOS LAURELES', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(55, 'Vilsa', 'CAV051013984', 'CONSTRUCTORA Y ARRENDADORA VIL S.A. DE C.V.', 'AVENIDA LIBRAMIENTO SUR OTE No.175', 'COL. SAN FRANCISCO', '29066', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '9616155358', ' ', ' ', ' ', 'www.cavilsa.com.mx', ' ', '1'),
(56, 'Guadalupe Gordillo', 'GORG570205QR8', 'MARIA GUADALUPE GORDILLO RODAS', 'PRIMAVERA # 513', 'COL. JARDINES DE TUXTLA', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(57, 'Carlos Arguello', 'AUAC741202V31', 'CARLOS ALBERTO ARGUELLO AREVALO', 'AV. JOAQUIN MIGUEL GUTIERREZ 285', 'COL . CASTILLO THIELMANS', '29070', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(58, 'Hotel La Ceiba', 'HCC0505113C7', 'HOTEL LA CEIBA DE CHIAPA DE CORZO S.A. DE C.V.', 'AV. DOMINGO RUIZ NO. 300', ' ', '29160', 'CHIAPA DE CORZO', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.laceibahotel.com.mx', ' ', '1'),
(59, 'Grupo Rogo', 'SAA0803117X2', 'SERVICIOS Y APOYO PARA AGREMIADOS S.A. DE C.V.', '4a SUR ORIENTE No. 1065 INT. 9', 'COL. CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.gruporogo.com', ' ', '1'),
(60, 'Roberto Zenteno', 'ZEMR740506TQ1', 'ROBERTO CARLOS ZENTENO MAYORGA', '18 PTE SUR NO.710', 'COLONIA XAMAIPAK', '29060', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(61, 'Hotel Fernando', 'NACG 721127 3Z2', 'GUADALUPE NARVAEZ CONSTANTINO', '2a AVENIDA NORTE ORIENTE # 515', ' ', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(62, 'Rancho El Potrero', 'TERA4803246P0', 'JOSE ALBERTO TREJO RODRIGUEZ', 'LA MERCED ENTRE EJIDO OCUILAPA Y REVOLUCIÓN', ' ', '29140', 'OCOZOCOAUTLA', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.ranchoelpotrero.com', ' ', '1'),
(63, 'Fomento Educativo', 'CNF710911GT6', 'CONSEJO NACIONAL DE FOMENTO EDUCATIVO', 'RIO ELBA No. 20', 'COL. CUAHUTEMOC', ' ', 'MEXICO, DF.', ' ', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(64, 'El Rojo', 'AAMM800626N1A', 'MARCO ANTONIO ARAUJO MONTOYA', 'AV. CENTRAL ORIENTE No. 939', 'COL. CENTRO', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '9616137629', ' ', ' ', ' ', 'www.studiolibelula.com', ' ', '1'),
(65, 'Fomento Agropecuario', 'FFA040604RR5', 'FONDO DE FOMENTO AGROPECUARIO DEL ESTADO DE CHIAPAS F/55', 'CARRETERA JUAN CRISPIN-CHICOASEN KM 2.5', 'COL. JUAN CRISPIN', '29020', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(66, 'Contraloria del Estado', 'GEC8501013X9', 'CONTRALORIA SOCIAL DEL GOBIERNO DEL ESTADO', '3a SUR PONIENTE # 1204', 'COL. CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(67, 'Copyfax', 'CFS890405P66', 'COPYFAX DEL SURESTE S.A. DE C.V.', '16 PONIENTE NORTE No. 308', 'COL. LAS ARBOLEDAS', '29030', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.copyfax.com.mx', ' ', '1'),
(68, 'Intercontinental', 'IME970211V92', 'INTERCONTINENTAL DE MEDICAMENTOS S.A. DE C.V.', 'AV. CHAPULTEPEC # 248-408', 'COL. LAS AMERICAS', '44160', 'GUADALAJARA', 'JALISCO', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(69, 'Jorge Flores', 'FOHJ690929UN6', 'JORGE FLORES HERRERA', 'ANTONIO VAN DICK #35 DESPACHO 14', 'COL. MIXCOAC', '03700', 'MEXICO, DF.', ' ', 'MEXICO', ' ', ' ', ' ', ' ', 'www.jfdistribucion.com', ' ', '1'),
(70, 'Julio Cesar Melo', 'MESJ791029C28', 'JULIO CESAR MELO SANCHEZ', 'AV. BERMELLON No. 262', 'FRACC. MONTERREAL', '29028', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.ottoinox.com', ' ', '1'),
(71, 'Editorial La Estrella', 'EESO50127QY3', 'EDITORIAL LA ESTRELLA, S.A. DE C.V.', '2a AVENIDA SUR Nº 121 PTA. BAJA', 'COL. CENTRO', '30700', 'TAPACHULA', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.noticiasdechiapas.net', ' ', '1'),
(72, 'Rio Sul', 'RSU-970624-S73', 'RIO SUL S.A. DE C.V.', 'ANT CAMINO A RESURRECCIÓN NO. 10610 -A', 'COL. STA. ROSA', '72228', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(73, 'Unicach', 'UCA9502023J3', 'UNIVERSIDAD DE CIENCIAS Y ARTES DE CHIAPAS', '1a. AV. SUR PONIENTE No. 1460', ' ', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(74, 'Blanca Narvaez', 'NAVB491020SM7', 'BLANCA ESTELA NARVAEZ VALENCIA', 'GUERRERO 50-6', 'COL. PLAN DE AYALA', '29110', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(75, 'Travel and Tours', 'CTT 0603157D4', 'CHIAPAS TRAVEL AND TOURS, S.A. DE C.V.', 'ALTADENA 320  AVENIDA DEL MONTE Y SANTA ANA', 'FRACC. EL CAMPANARIO', '29050', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '9616089135', ' ', ' ', 'efarfan@chiapastravelandtours.com', 'www.chiapastravelandtours.com', ' ', '1'),
(76, 'Angel Flores', 'FODA750412DB7', 'ANGEL FLORES DOLORES', '4a. AVENIDA PONIENTE SR # 39, LOC. E Y F, CALZADA DEL PANTEON', ' ', ' ', 'COMITAN', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(77, 'Redam', 'HEPM520802JI6', 'MIGUEL ANGEL HERRERA PANTOJA', '5a NORTE ORIENTE # 1161', 'COL. LAS DELICIAS', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.redamchiapas.com', ' ', '1'),
(78, 'Sulim', 'SLI8308016Z7', 'SURTIDORA DE LIMPIEZA S.A.', 'AV. PRIMAVERA # 225 -A', 'COL. JARDINES DE TUXTLA', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', 'www.sulim.com.mx', ' ', '1'),
(79, 'Grupo Industrial Chiapas', 'GIC950518-319', 'GRUPO INDUSTRIAL CHIAPAS S.A. DE C.V.', 'Av. El Norte #198', 'Fracc. El Campanario', '', 'Tuxtla Gutierrez Chiapas', 'Chiapas', 'Mexico', '', '', '', '', '', '', '1'),
(82, 'Nancy Soria Perez', 'SOPN6508097X3', 'NANCY SORIA PEREZ', 'AV.MARMOL #255', 'FRACC. JARDINES DE TUXTLA', 'CP 29049', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(81, 'Venta Al Publico', '', 'VENTA AL PUBLICO', '', '', '', '', '', '', '', '', '', '', '', '', '1'),
(83, 'Control Y Confianza', 'GEC8501013X9', 'CENTRO ESTATAL DE CONTROL DE CONFIANZA CERTIFICADO ', 'LIBRAMIENTO SUR ORIENTE Nº. 523', 'COLONIA BONAMPAK', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(84, 'Grupo Alfil', 'GAC830607121', 'GRUPO ALFIL CONSTRUCCIONES S.A. DE C.V', 'CALLE TERUEL #1499', 'COLONIA BERNARDO COBOS', 'CP 36610', 'IRAPUATO', 'CUANAJUATO', 'MEXICO', '', '', '', '', '', '', '1'),
(85, 'Metropolitana', 'MCS851226PS6', 'METROPOLITANA CIA. DE SEGUROS S.A.', 'BLVD. MANUEL AVILA CAMACHO #261', 'COL. LOS MORALES', 'CP 11510', 'MEXICO D.F.', 'MEXICO D.F.', 'MEXICO', '671-5029', '', '', '', '', '', '1'),
(86, 'Universidad del Sur', 'UTS-970707-6FA', 'UNIVERSIDAD TECNOLOGICA DEL SUR  S.C.', '4a ORIENTE SUR #345', 'COL CENTRO', 'CP 29000', 'TUXTLA GUTIERREZ ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(87, 'Organizacion Empresarial', 'OEA-70801-F43', 'ORGANIZACION EMPRESARIAL DE ASESORES S.A. DE C.V.', 'AV. MACTUMATZA MANZANA 2 LOTE 17 #287', 'COL LA GLORIA LIBRAMIENTO', 'CP 29067', 'TUXTLA GUTIERREZ ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(88, 'Granos Y fertilizantes', 'GFS9708288S4', 'GRANOS Y FERTILIZANTES DEL SUR S.A. DE C.V.', '10a CALLE PONIENTE SUR N. 27', ' ', 'CP 34470', 'VILLAFLORES ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(89, 'S. Soluciones', 'SSE-960228-1Y7', 'S.SOLUCIONES EMPRESARIALES S.A. DE C.V.', 'AV. CENTRAL PONIENTE #261 3º PISO', 'CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '', '', '', '', '', '', '1'),
(90, 'Hostal', 'HHS-080404 EXA', 'HOTEL HOSTAL SAN MIGUEL S.A. DE C.V.', '3AV. SUR PTE . #570', 'COL. EL CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS ', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(91, 'Gc Global', 'GGL050624I81', 'GC GLOBAL S.A. DE C.V. ', 'AV. INSURGENTES SUR N. 800 PISO 8', 'COLONIA DEL VALLE ', 'CP 03100', 'DELEGACION BENITO JUAREZ', 'MEXICO D.F.', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(92, 'Comercializadora Agropecuaria', 'ASC910416PK9', 'APOYOS Y SERVICIOS A LA COMERCIALIZACION AGROPECUARIA', 'CARRETERA A CHICOASEN KM 1.5', 'COLONIA LOS LAGUITOS', 'CP 29029', 'TUXTLA  GUTIERREZ ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(93, 'Senda Maya', 'TIS090127CL6', 'TURISMO INTERNACIONAL SENDA MAYA S.A. DE C.V.', 'VALENTIN GOMEZ FARIAS #20A', 'COLONIA ALTEJAR', '29278', 'SAN CRISTOBAL DE LAS CASAS', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(94, 'Jesus Antonio', 'IAMJ761029KE7', 'JESUS ANTONIO IBARRA MOSCOSO', '3a NORTE PONIENTE No 671-A', 'CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(95, 'Salud', 'ISA961203QN5', 'INSTITUTO DE SALUD', 'UNIDAD ADMINISTRATIVA EDIFICIO C CALZADA A LA CD. DEPORTIVA ', 'COLONIA MAYA', '29007', 'TUXTLA GUTIERREZ ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(96, 'Jose Alfredo', 'LECA7709287U8', 'JOSE ALFREDO LEON CASTAÑON', '6ª NORTE PONIENTE #328', 'COLONIA CENTRO', 'CP 29130', 'BERRIOZABAL', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(97, 'Jofers', 'AJO-050928-7P7', 'AUTOMOTRICES JOFERS, S.A. DE C.V.', 'CALLE AVIÑON #275', 'FRACC. LA SALLE', '29070', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(98, 'Piccino', 'CP1-050905-1X0', 'CONSTRUCTORA PICCINO, S.A. DE C.V.', 'LIBRAMIENTO SUR ORIENTE #170-B', 'COLONIA SAN FRANCISCO', '29066', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(99, 'Pisos de Tuxtla', 'PAT-071008-KS3', 'PISOS Y ACABADOS DE TUXTLA, S.A. DE C.V.', '5a NORTE PONIENTE #1051', 'COLONIA CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(100, 'Centro de Idiomas', 'CEI 8910315J6', 'CENTRO ESPECIALIZADO DE IDIOMAS DE CELAYA, A.C.', 'AV. PROLONGACION HIDALGO 816', 'ZONCA CENTRO', 'CP 38040', 'CELAYA', 'GUANAJUATO', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(101, 'Balcazar Castañon', 'BACB-680303-BW7', 'BALCAZAR CASTAÑON BOANERGES', '15 SUR PONIENTE #871', 'BARRIO  SAN FERNANDO', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(102, 'Tuberias del Sureste', 'TTS040511NV7', 'TUBERIAS Y TERMOFUSIONES DEL SURESTE S.A. DE C.V.', 'LOMA BLANCA MANZANA 5 LOTE 8 #248', 'FRACC. LOMA REAL', '29014', 'TUXTLA GUTIERREZ ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(103, 'PRD', 'PRD890526PA3', 'PARTIDO DE LA REVOLUCION DEMOCRATICA', 'BENJAMIN FRANKLIN #85', 'COLONIA ESCANDON', '11800', 'MEXICO D.F.', 'MEXICO', 'MEXICO', '', '', '', '', '', '', '1'),
(104, 'Soluciones G4', 'SGC050602TC8', 'SOLUCIONES G4 S.A. DE C.V.', 'CALLE COLIMA #426-3 ', 'COLONIA ROMA ', 'CP 06700', 'DELEGACION CUAUHTEMOC', 'MEXICO DF', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(105, 'Aexa', 'AEA010621Q58', 'AUTOBUSES EXPRESOS AZUL, S.A. DE C.V.', '5ta. NORTE PONIENTE #318', 'CENTRO', '29000', 'TUXTLA GUTIÉRREZ', 'CHIAPAS', 'MÉXICO', '61 12928', '', '', '', 'http://www.autobusesaexa.com.mx/', '', '1'),
(106, 'Secretaria Economia', 'GEC8501013X9', 'SECRETARIA DE ECONOMIA', 'BOULEVARD BELISARIO DOMINGUEZ NO. 2270', ' ', ' ', 'TUXTLA GUTIÉRREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1'),
(107, 'Viatours', 'VSU971028429', 'VIATOURS DEL SURESTE, S.A. DE C.V.', 'PROLONGACION PERIFERICO NORTE PONIENTE No. 457 LOCAL 19-B PLAZA CAÑA HUECA', 'FRANCISCO SABINAL', '', 'TUXTLA GUTIÉRREZ', 'CHIAPAS', 'MÉXICO', '', '', '', '', '', '', '1'),
(108, 'Alfonso Espinoza', 'EIPA611225VBA', 'ALFONSO ESPINOZA PASTRANA', 'Nuevo Leon #204', 'Plan de Ayala', '29110', 'Tuxtla Gutierrez', 'Chiapas', 'Mexico', '1464540', '', '', '', '', '', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compra` int NOT NULL,
  `entrada` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_proveedor` int NOT NULL,
  `no_factura` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `forma_pago` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `fecha_vencimiento` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `iva` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id_compra`, `entrada`, `id_proveedor`, `no_factura`, `fecha`, `forma_pago`, `fecha_vencimiento`, `status`, `observaciones`, `subtotal`, `iva`) VALUES
(32, '1', 18, 'TUX023969', '2009-12-02', 'Credito', '2010-01-01', 'Pagado', ' ', 799.33, 119.90),
(33, '1', 18, 'TUX023927', '2009-12-02', 'Credito', '2010-01-02', 'Pagado', ' ', 61368.40, 9205.26),
(34, '1', 18, 'TUX023918', '2009-12-02', 'Credito', '2010-01-02', 'Pagado', '', 265.73, 39.86),
(35, '1', 18, 'TUX024400', '2009-12-08', 'Credito', '2010-01-08', 'Pagado', '', 5212.34, 781.85),
(36, '1', 18, 'TUX024416', '2009-12-08', 'Credito', '2010-01-07', 'Pagado', ' ', 154.70, 23.21),
(37, '1', 18, 'TUX024413', '2009-12-08', 'Credito', '2010-01-08', 'Pagado', '', 264.91, 39.74),
(55, '1', 18, 'TUX025407', '2009-12-21', 'Credito', '2010-03-15', 'Pagado', ' ', 4139.95, 620.99),
(43, '1', 18, 'TUX024850', '2009-12-14', 'Credito', '2010-03-12', 'Pagado', ' ', 3155.33, 473.30),
(44, '1', 18, 'TUX024916', '2009-12-15', 'Credito', '2010-03-12', 'Pagado', ' ', 1876.41, 281.46),
(45, '1', 18, 'TUX025151', '2009-12-17', 'Credito', '2010-03-12', 'Pagado', ' ', 2192.08, 328.81),
(46, '1', 18, 'TUX025100', '2009-12-16', 'Credito', '2010-03-12', 'Pagado', ' ', 6313.29, 946.99),
(52, '1', 18, 'TUX025095', '2009-12-16', 'Credito', '2010-03-15', 'Pagado', ' ', 11861.33, 1779.20),
(48, '1', 18, 'TUX024953', '2009-12-15', 'Credito', '2010-03-13', 'Pagado', ' ', 1478.40, 221.76),
(53, '1', 18, 'TUX025040', '2009-12-16', 'Credito', '2010-03-15', 'Pendiente', ' ', 663.94, 99.59),
(54, '1', 18, 'TUX025271', '2009-12-18', 'Credito', '2010-03-15', 'Pagado', ' ', 2319.11, 347.87),
(56, '1', 26, 'FPU242765', '2010-01-05', 'Credito', '2010-03-15', 'Pagado', ' ', 2050.47, 307.58),
(57, '1', 26, 'FPU242766', '2010-01-05', 'Credito', '2010-03-15', 'Pagado', ' ', 1108.82, 177.41),
(58, '1', 23, '1020', '2010-01-13', 'Credito', '2010-03-15', 'Pagado', ' ', 9353.45, 1496.55),
(59, '1', 24, '124567', '2010-01-20', 'Credito', '2010-03-15', 'Pagado', '', 26049.60, 4167.94),
(63, '0', 26, 'FPU243770', '2010-01-08', 'Credito', '2010-03-17', 'Pagado', ' ', 25213.98, 4034.24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id_contacto` int NOT NULL,
  `id_proveedor` int NOT NULL,
  `id_cliente` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `puesto` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `departamento` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `msn` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `tipo` enum('P','C') COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id_contacto`, `id_proveedor`, `id_cliente`, `nombre`, `puesto`, `departamento`, `telefono`, `extension`, `celular`, `email`, `msn`, `observaciones`, `tipo`) VALUES
(1, 17, 0, 'MONICA', 'ENCARGADA DE VENTAS', 'VENTAS', '6113880', '', '', 'monica_dfs_ventas@hotmail.com', 'monica_dfs_ventas@hotmail.com', '', 'P'),
(2, 18, 0, 'BRENDA', 'ENCARGADA DE VENTAS', 'VENTAS', '1251657', '', '', 'ct_tuxtla_alma@hotmail.com', 'ct_tuxtla_alma@hotmail.com', '', 'P'),
(3, 20, 0, 'Julián Rodríguez', ' ', ' ', ' ', '(999) 254 25 25', ' ', 'maria.chan@pchardware.com.mx ', 'rjulian_a_@hotmail.com', ' ', 'P'),
(4, 19, 0, 'Luis Rodrigo Monjaraz Ruiz', ' ', ' ', ' ', ' ', ' ', 'luismanjaraz@compugolfo.com.mx ', 'luismanjaraz@compugolfo.com.mx ', ' ', 'P'),
(5, 6, 0, 'Otro CFE', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'P');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones`
--

CREATE TABLE `cotizaciones` (
  `id_cotizacion` int NOT NULL,
  `id_cliente` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `fecha` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `iva` decimal(10,2) NOT NULL,
  `facturado` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_impuesto` int NOT NULL,
  `encabezado` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id_cuenta` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `banco` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `titular` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `no_cuenta` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `clabe` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id_cuenta`, `nombre`, `banco`, `titular`, `no_cuenta`, `clabe`) VALUES
(1, 'Caja', '', 'Ariel Narváez Cortazar', '1', ''),
(2, 'Banorte 313', 'Banorte', 'Ariel Narváez Cortazar', '0578362313', '072 100 00578362313 2'),
(3, 'Banamex 683', 'Banamex', 'Ariel Narváez Cortazar', '5177 1250 7582 3683', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `puesto` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `colonia` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cp` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `activo` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `puesto`, `direccion`, `colonia`, `cp`, `ciudad`, `estado`, `telefono`, `email`, `observaciones`, `activo`) VALUES
(1, 'Diego', 'Programador', '14 pte sur', 'xamaipak', '29060', 'Tuxtla Gutiérrez', 'Chiapas', '9611949173', 'diego@grupocybac.com', 'observaciones', '1'),
(2, 'Roberto', 'Soporte', 'Av. Gardenias #14', 'Colonia El Valle', '29010', 'Tuxtla Gutierrez', 'Chiapas', '9611805519', 'roberto@grupocybac.com', '', '1'),
(3, 'Ruben', 'Jefe de Soporte', 'Calle El Roble Mz-12 Lt-5', 'Col. Paseo del Bosque', '29096', 'Tuxtla Gutierrez', 'Chiapas', '9611284907', 'ruben@grupocybac.com', '', '1'),
(4, 'Ariel', 'Gerente General', 'Av. Primavera', 'Gardines de Tuxtla', '29020', 'Tuxtla Gutierrez', 'Chiapas', '9615791834', 'ariel@grupocybac.com', '', '1'),
(5, 'Norberto', 'Desarrollador', 'Maya', 'Col. Popular', '', 'Tuxtla', 'Chiapas', '9616678265', 'norberto@grupocybac.com', '', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id_gasto` int NOT NULL,
  `id_proveedor` int NOT NULL,
  `id_cuenta` int NOT NULL,
  `concepto` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`id_gasto`, `id_proveedor`, `id_cuenta`, `concepto`, `status`, `cantidad`, `fecha`) VALUES
(8, 2, 2, 'Pago de Celular Diciembre', 'Pagado', 845.00, '2009-12-19'),
(9, 25, 2, 'Carga de Gasolina', 'Pagado', 300.00, '2010-01-14'),
(10, 25, 0, 'Carga de Gasolina', 'Pagado', 405.00, '2010-01-20'),
(11, 27, 0, 'Renta de Servidor Web Enero', 'Pagado', 3640.95, '2010-01-13'),
(12, 28, 0, 'Pago Contrato Auto 6/48', 'Pagado', 9000.00, '2010-01-22'),
(13, 6, 0, 'Pago de Luz Nov 09 - Ene 10', 'Pagado', 1230.00, '2010-01-10'),
(14, 7, 0, 'Pago Telefono Enero 2010', 'Pagado', 3101.00, '2010-01-22'),
(15, 25, 0, 'Carga de Gasolina', 'Pagado', 390.00, '2010-01-28'),
(16, 29, 0, 'Pago Cuota Patronal IMMS 12 INFONAVIT 6', 'Pagado', 2762.47, '2010-01-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos_facturas`
--

CREATE TABLE `gastos_facturas` (
  `id_gasto` int NOT NULL,
  `id_compra` int NOT NULL,
  `id_venta` int NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestos`
--

CREATE TABLE `impuestos` (
  `id_impuesto` int NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `porcentaje` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `impuestos`
--

INSERT INTO `impuestos` (`id_impuesto`, `tipo`, `nombre`, `porcentaje`) VALUES
(1, 'IVA', '15 %', 15),
(2, 'IVA', '16 %', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kits_productos`
--

CREATE TABLE `kits_productos` (
  `id_kp` int NOT NULL,
  `id_kit` int NOT NULL,
  `id_producto` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL,
  `descripcion` text COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `kits_productos`
--

INSERT INTO `kits_productos` (`id_kp`, `id_kit`, `id_producto`, `precio`, `cantidad`, `descripcion`) VALUES
(13, 171, 56, 350.00, 1, ''),
(12, 171, 38, 450.00, 2, ''),
(11, 171, 11, 1500.00, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_precios`
--

CREATE TABLE `lista_precios` (
  `id_lista` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `porcentaje` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `lista_precios`
--

INSERT INTO `lista_precios` (`id_lista`, `nombre`, `porcentaje`) VALUES
(1, '1', 10),
(2, '2', 15),
(3, '3', 20),
(4, '4', 25),
(5, '5', 30),
(6, '6', 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre`, `descripcion`) VALUES
(1, 'Acer', 'www.acer.com.mx/ '),
(2, 'Kingston', 'www.kingston.com/'),
(3, 'Lg', 'mx.lge.com/'),
(4, 'Hp', 'http://welcome.hp.com/country/mx/es/welcome.html#Product'),
(5, 'Toshiba', 'www.toshiba.com.mx/'),
(6, 'Sony', 'www.sony.com.mx/'),
(7, 'Compaq', 'www.compaq.com/'),
(8, 'Perfect Choice', 'www.perfectchoice.com.mx/'),
(9, 'Acteck', 'www.acteck.com/ '),
(10, 'Manhattan', 'http://www.manhattan-products.com/es-US'),
(11, 'Genius', 'http://www.genius-kye.com/'),
(12, 'Intel', 'www.Intel.com/mx '),
(13, 'Nvidia', 'la.nvidia.com'),
(14, 'ASRock', 'http://www.asrock.com/'),
(15, 'Gigabyte', 'www.giga-byte.com.ar'),
(16, 'D-Link', 'www.dlinkla.com/'),
(17, 'Linksys', 'www.linksysbycisco.com/LATAM/es/home'),
(18, 'Ansel', 'www.ansel.com.mx/'),
(19, 'Epson', 'www.epson.com.mx/'),
(20, 'CDP', 'http://www.cdpups.com/'),
(21, 'Logitech', 'www.logitech.com/index.cfm/home/&cl=mx,es'),
(22, 'Optoma', 'http://207.47.25.161/'),
(23, 'Transcend', 'http://www.transcendusa.com/global.asp'),
(24, 'Biostar', 'www.biostar.com.tw/'),
(25, 'Generico', ' '),
(26, 'Intellinet', 'http://www.intellinet-network.com/en-US'),
(27, 'Pc Chips', 'www.pcchips.com.tw/'),
(28, 'Prolicom', 'http://www.prolicom.com.mx/'),
(29, 'Western Digital ', 'www.wdc.com/ '),
(30, 'Compustar', 'http://www.compustar.com.mx/'),
(31, 'Encore', 'www.encore.com.mx/'),
(32, 'Soyo', 'www.soyo.com/'),
(33, 'Benq', 'www.benq.com.mx/ '),
(34, 'Cybac', 'http://www.cybac.com.mx'),
(35, 'Intecplan', 'http://www.intecplan.com.mx/'),
(36, 'Samsung', 'www.samsung.com.mx'),
(37, 'Liteon', 'www.liteon.com'),
(38, 'Airlink', 'WWW.AIRLINK.COM'),
(39, 'Halcon', ' '),
(40, 'Brother', 'WWW.BROTHER.COM'),
(41, 'Canon', 'www.canon.com'),
(42, 'DELL', 'WWW.DELL.COM'),
(43, 'AOC', 'WWW.AOC.COM'),
(44, 'Verbatim', ' '),
(45, 'Emachines', 'www.emachines.com'),
(46, 'Targus', 'www.Targus.com'),
(47, 'A Data', 'www.adata.com'),
(48, 'TP-Link', 'http://www.tp-link.com/'),
(49, 'TDE', 'http://www.tde.com.mx/'),
(50, 'Lexmark', 'http://www.lexmark.com.mx'),
(51, 'Express', ' '),
(52, 'Steren', ' '),
(53, 'Kyocera', 'http://americas.kyocera.com/index.cfm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `id_movimiento` int NOT NULL,
  `id_cuenta` int NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `concepto` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`id_movimiento`, `id_cuenta`, `tipo`, `concepto`, `cantidad`, `fecha`) VALUES
(3, 2, 'Abono', 'Prestamo Papa Ariel para Compras', 75000.00, '2010-01-08'),
(5, 2, 'Abono', 'Prestamo Papa Ariel para Compras', 230.00, '2010-01-19'),
(6, 2, 'Abono', 'Prestamo Papa Ariel para Compras', 28000.00, '2010-01-20'),
(7, 2, 'Abono', 'Prestamo Papa Ariel para Compras', 16000.00, '2010-01-22'),
(8, 2, 'Abono', 'Saldo Inicial', 0.59, '2009-12-31'),
(9, 2, 'Cargo', 'Comision Bancaria Cheque Rebotado', 928.00, '2010-01-29'),
(10, 2, 'Cargo', 'Retención IDE Enero 2010', 1807.00, '2010-01-29'),
(11, 2, 'Cargo', 'Comision de Transferencia SPEI', 6.38, '2010-01-21'),
(12, 2, 'Cargo', 'Comision de Transferencia SPEI', 6.38, '2010-01-28'),
(13, 2, 'Cargo', 'Comision de Transferencia SPEI', 6.38, '2010-01-28'),
(14, 2, 'Abono', 'Ajuste Dic 2009', 18500.00, '2009-12-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` int NOT NULL,
  `id_proveedor` int NOT NULL,
  `id_cliente` int NOT NULL,
  `id_venta` int NOT NULL,
  `id_compra` int NOT NULL,
  `id_gasto` int NOT NULL,
  `medio_pago` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_cuenta` int NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `referencia` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `fecha` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_cheque` int NOT NULL,
  `idPago` int NOT NULL,
  `completo` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pago`, `id_proveedor`, `id_cliente`, `id_venta`, `id_compra`, `id_gasto`, `medio_pago`, `id_cuenta`, `cantidad`, `referencia`, `fecha`, `id_cheque`, `idPago`, `completo`, `observaciones`) VALUES
(238, 0, 0, 369, 0, 0, '', 0, 56200.00, '', '', 0, 237, '0', ''),
(247, 0, 106, 0, 0, 0, 'Transferencia', 2, 38550.00, '', '2010-01-18', 0, 0, '1', ''),
(245, 0, 105, 0, 0, 0, 'Cheque', 2, 1725.00, '', '2010-01-08', 0, 0, '1', ''),
(243, 0, 16, 0, 0, 0, 'Cheque', 2, 2232.00, '', '2010-01-25', 0, 0, '1', ''),
(251, 0, 45, 0, 0, 0, 'Cheque', 2, 3200.00, '', '2010-01-14', 0, 0, '1', ''),
(249, 0, 45, 0, 0, 0, 'Cheque', 2, 6400.00, '', '2010-01-14', 0, 0, '1', ''),
(240, 0, 0, 370, 0, 0, '', 0, 1700.00, '', '', 0, 239, '0', ''),
(87, 0, 0, 0, 33, 0, '', 0, 12200.22, '', '', 0, 156, '0', ''),
(85, 0, 0, 0, 35, 0, '', 0, 5994.19, '', '', 0, 156, '0', ''),
(86, 0, 0, 0, 34, 0, '', 0, 305.59, '', '', 0, 156, '0', ''),
(88, 0, 0, 0, 33, 0, '', 0, 58373.44, '', '', 0, 160, '0', ''),
(89, 0, 0, 0, 32, 0, '', 0, 919.23, '', '', 0, 160, '0', ''),
(90, 0, 0, 0, 37, 0, '', 0, 304.65, '', '', 0, 160, '0', ''),
(91, 0, 0, 0, 36, 0, '', 0, 177.91, '', '', 0, 160, '0', ''),
(92, 0, 0, 0, 43, 0, '', 0, 3628.63, '', '', 0, 168, '0', ''),
(93, 0, 0, 0, 44, 0, '', 0, 2157.87, '', '', 0, 169, '0', ''),
(175, 0, 0, 0, 0, 9, '', 0, 300.00, '', '', 0, 174, '0', ''),
(101, 0, 0, 0, 48, 0, '', 0, 1700.16, '', '', 0, 162, '0', ''),
(102, 0, 0, 0, 52, 0, '', 0, 13640.53, '', '', 0, 162, '0', ''),
(103, 0, 0, 0, 53, 0, '', 0, 763.53, '', '', 0, 162, '0', ''),
(176, 25, 0, 0, 0, 0, 'Tarjeta', 2, 405.00, '', '2010-01-20', 0, 0, '1', ''),
(105, 0, 0, 0, 0, 8, '', 0, 845.00, '', '', 0, 163, '0', ''),
(178, 27, 0, 0, 0, 0, 'Cheque', 0, 0.00, '', '', 15, 0, '1', ''),
(107, 0, 0, 0, 46, 0, '', 0, 7260.28, '', '', 0, 164, '0', ''),
(108, 0, 0, 0, 45, 0, '', 0, 2520.89, '', '', 0, 165, '0', ''),
(109, 0, 0, 0, 56, 0, '', 0, 2358.05, ' ', '', 0, 166, '0', ''),
(110, 0, 0, 0, 57, 0, '', 0, 1286.23, ' ', '', 0, 166, '0', ''),
(112, 0, 0, 0, 58, 0, '', 0, 10850.00, '', '', 0, 170, '0', ''),
(114, 0, 0, 0, 59, 0, '', 0, 15108.77, '', '', 0, 161, '0', ''),
(180, 28, 0, 0, 0, 0, 'Transferencia', 2, 9000.00, '', '2010-01-22', 0, 0, '1', ''),
(116, 0, 0, 0, 59, 0, '', 0, 15108.77, '', '', 0, 167, '0', ''),
(162, 18, 0, 0, 0, 0, 'Cheque', 0, 0.00, '', '', 9, 0, '1', 'Compra de Equipo de Computo'),
(182, 6, 0, 0, 0, 0, 'Transferencia', 2, 1230.00, '', '2010-01-22', 0, 0, '1', ''),
(161, 24, 0, 0, 0, 0, 'Cheque', 0, 0.00, '', '', 5, 0, '1', 'Compra Toners Kyocera'),
(156, 18, 0, 0, 0, 0, 'Transferencia', 2, 18500.00, '', '2009-12-31', 0, 0, '1', 'Abono Facturas'),
(160, 18, 0, 0, 0, 0, 'Transferencia', 2, 59775.23, '', '2010-01-08', 0, 0, '1', 'Abono Facturas'),
(163, 2, 0, 0, 0, 0, 'Cheque', 0, 0.00, '', '', 10, 0, '1', ''),
(164, 18, 0, 0, 0, 0, 'Cheque', 0, 0.00, '', '', 11, 0, '1', ''),
(165, 18, 0, 0, 0, 0, 'Cheque', 0, 0.00, '', '', 12, 0, '1', ''),
(166, 26, 0, 0, 0, 0, 'Transferencia', 2, 3644.28, '', '2010-01-21', 0, 0, '1', ''),
(167, 24, 0, 0, 0, 0, 'Cheque', 0, 0.00, '', '', 14, 0, '1', ''),
(168, 18, 0, 0, 0, 0, 'Cheque', 0, 0.00, '', '', 6, 0, '1', ''),
(169, 18, 0, 0, 0, 0, 'Cheque', 0, 0.00, '', '', 7, 0, '1', ''),
(170, 23, 0, 0, 0, 0, 'Transferencia', 2, 10850.00, '', '2010-01-21', 0, 0, '1', ''),
(177, 0, 0, 0, 0, 10, '', 0, 405.00, '', '', 0, 176, '0', ''),
(174, 25, 0, 0, 0, 0, 'Tarjeta', 2, 300.00, '', '2010-01-14', 0, 0, '1', ''),
(179, 0, 0, 0, 0, 11, '', 0, 3640.95, '', '', 0, 178, '0', ''),
(181, 0, 0, 0, 0, 12, '', 0, 9000.00, '', '', 0, 180, '0', ''),
(183, 0, 0, 0, 0, 13, '', 0, 1230.00, '', '', 0, 182, '0', ''),
(206, 18, 0, 0, 0, 0, 'Cheque', 0, 0.00, '', '', 17, 0, '1', ''),
(207, 0, 0, 0, 54, 0, '', 0, 2666.98, '', '', 0, 206, '0', ''),
(208, 18, 0, 0, 0, 0, 'Cheque', 0, 0.00, '', '', 18, 0, '1', ''),
(209, 0, 0, 0, 55, 0, '', 0, 4760.94, '', '', 0, 208, '0', ''),
(210, 26, 0, 0, 0, 0, 'Transferencia', 2, 29248.22, '', '2010-01-28', 0, 0, '1', ''),
(211, 0, 0, 0, 63, 0, '', 0, 29248.22, '', '', 0, 210, '0', ''),
(212, 26, 0, 0, 0, 0, 'Transferencia', 2, 39344.06, '', '2010-01-28', 0, 0, '0', ''),
(214, 25, 0, 0, 0, 0, 'Tarjeta', 2, 390.00, '', '2010-01-28', 0, 0, '1', ''),
(215, 0, 0, 0, 0, 15, '', 0, 390.00, '', '', 0, 214, '0', ''),
(216, 7, 0, 0, 0, 0, 'Efectivo', 1, 3101.00, '', '2010-01-22', 0, 0, '1', ''),
(217, 0, 0, 0, 0, 14, '', 0, 3101.00, '', '', 0, 216, '0', ''),
(218, 29, 0, 0, 0, 0, 'Efectivo', 1, 2762.47, '', '2010-01-25', 0, 0, '1', ''),
(219, 0, 0, 0, 0, 16, '', 0, 2762.47, '', '', 0, 218, '0', ''),
(237, 0, 45, 0, 0, 0, 'Cheque', 2, 56200.00, '', '2010-01-27', 0, 0, '1', ''),
(239, 0, 7, 0, 0, 0, 'Cheque', 2, 1700.00, '', '2010-01-27', 0, 0, '1', ''),
(241, 0, 107, 0, 0, 0, 'Cheque', 2, 11956.92, '', '2010-01-26', 0, 0, '1', ''),
(242, 0, 0, 368, 0, 0, '', 0, 11956.92, '', '', 0, 241, '0', ''),
(244, 0, 0, 367, 0, 0, '', 0, 2232.00, '', '', 0, 243, '0', ''),
(246, 0, 0, 363, 0, 0, '', 0, 1725.00, '', '', 0, 245, '0', ''),
(248, 0, 0, 366, 0, 0, '', 0, 38550.00, '', '', 0, 247, '0', ''),
(250, 0, 0, 364, 0, 0, '', 0, 6400.00, '', '', 0, 249, '0', ''),
(252, 0, 0, 365, 0, 0, '', 0, 3200.00, '', '', 0, 251, '0', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int NOT NULL,
  `id_categoria` int NOT NULL,
  `id_marca` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `descripcion` blob NOT NULL,
  `codigo_barra` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `activo` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL,
  `precio_costo` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `inventariar` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL,
  `cantidad_actual` int NOT NULL,
  `cantidad_minima` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `id_categoria`, `id_marca`, `nombre`, `descripcion`, `codigo_barra`, `imagen`, `activo`, `precio_costo`, `precio_venta`, `inventariar`, `cantidad_actual`, `cantidad_minima`) VALUES
(5, 22, 6, 'Usb Sony 4 Gb Negro', 0x55736220536f6e792034204762204e6567726f, '', 'img_5.jpg', '1', 120.56, 0.00, '1', 0, 0),
(6, 7, 4, 'Multifuncional Deskjet HP F4480', 0x4d756c746966756e63696f6e616c204465736b6a65742048502046343438302028434237343541292c20496d707265736f726120436f706961646f72612079205363616e6e65722c20496d7072696d652032382070706d20656e206e6567726f2c2032322070706d20656e20636f6c6f722c205265736f6c756369c3b36e206e6567726f3a203132303020782032343030206470692c205265736f6c756369c3b36e20436f6c6f723a2034383030207820313230303b204d656d6f7269613a2031364d423b20436f6e6563746976696461643a2055534220436f6d7061746962696c696461643a20706172612050432057696e646f77732032303030206f204d61632e20436172747563686f7320436f6d70617469626c65733a204343363430574c2c4343363431574c2c204343363433574c2c204343363434574c, '', 'img_6.jpg', '1', 0.00, 0.00, '1', 0, 0),
(7, 8, 3, 'Monitor Marca LG de 15\\\" WIDE LCD', 0x4d6f6e69746f72204d61726361204c472064652031355c222057494445204c43442c204d6f64656c6f2028573135343253292c205265736f6c756369c3b36e20313238302078203732302c205469656d706f206465205265737075657374612038206d732c20436f6e74726173746520353030303a312028444643292c204272696c6c6f2032353063642f6d322c20416e67756c6f2064652056697369c3b36e2039302f36302c207365c3b1616c20646520656e74726164612020616e616c6f676f28564741292c20462d456e67696e652c20436f6c6f72204e6567726f2e, '', 'img_7.jpg', '1', 0.00, 0.00, '1', 0, 0),
(8, 2, 2, 'Candado Microsaver Pro P7500', '', '', 'img_8.jpg', '1', 130.00, 0.00, '1', 0, 0),
(9, 4, 9, 'Bocinas Acteck AX2500 Negro', '', '', 'img_9.jpg', '1', 0.00, 0.00, '1', 0, 0),
(10, 11, 16, 'Tarjeta de Red Dlink Pci Wireless Dwa-510', 0x5461726a65746120442d4c696e6b20284457412d353130292050434920576972656c6573732035344d6270732c20736567757269646164206176616e7a616461207065726d69746520656e63726970746163696f6e6573205745502079205750412f575041322d50534b2c205750412f575041322d45412c20736f706f7274612057696e646f77732056697374612c2058502c204d452c20323030302c20393853452c20636f6d70617469626c6520636f6e203830322e3131622f672e, '', 'img_10.jpg', '1', 0.00, 0.00, '1', 0, 0),
(11, 10, 12, 'Celeron Modelo 430 a 1.8 Ghz', '', '', 'img_11.jpg', '1', 0.00, 0.00, '1', 0, 0),
(12, 9, 14, 'MB Asrock G965M-S', '', '', 'img_12.gif', '1', 0.00, 0.00, '1', 0, 0),
(14, 4, 9, 'Bocinas Acteck Axl-3200 Plata', 0x50617220646520626f63696e6173204d756c74696d6564696120636f6e20737562776f6f66657220322e312041435445434b2041584c2d3332303020636f6c6f7220506c617461, '', 'img_14.jpg', '1', 200.00, 0.00, '1', 0, 0),
(15, 2, 21, 'Kit Tec Mou Log Wireless 967561-1104', '', '', 'img_15.jpg', '1', 0.00, 0.00, '1', 0, 0),
(16, 7, 4, 'Hp Deskjet D1560 CB710A', 0x496d707265736f726120204465736b6a65742048502044313536302028434237313041292c2048617374612031382070706d204e6567726f20792031322070706d20436f6c6f723b2054616d2e20496d7072657369c3b36e3a20323136207820333536206d6d2c204369636c6f2064652054726162616a6f3a204861737461203735302070c3a167696e617320616c206d65732c20436f6e6563746976696461643a20555342202d20636f6d70617469626c6520636f6e206c6173206573706563696669636163696f6e65732055534220322e303b20496e636c757965206361626c652045746865726e65743b20636172747563686f7320584c206f7063696f6e616c65732e, '', 'img_16.jpg', '1', 0.00, 0.00, '1', 0, 0),
(17, 20, 34, 'Hosting Mini', '', '', 'img_17.jpg', '1', 0.00, 0.00, '0', 0, 0),
(18, 20, 34, 'Hosting Basico', '', 'cybac3', 'img_18.jpg', '1', 800.00, 0.00, '0', 0, 0),
(19, 20, 34, 'Hosting Avanzado', '', '', 'img_19.jpg', '1', 0.00, 0.00, '0', 0, 0),
(20, 20, 34, 'Hosting Corporativo', '', 'cybaccor', 'img_20.jpg', '1', 2800.00, 0.00, '0', 0, 0),
(21, 20, 34, 'Hosting Reseller Bronze', '', '', 'img_21.jpg', '1', 0.00, 0.00, '0', 0, 0),
(22, 20, 34, 'Hosting Reseller Plata', '', '', 'img_22.jpg', '1', 0.00, 0.00, '0', 0, 0),
(23, 20, 34, 'Registro de Dominio', '', 'cybac23', 'img_23.jpg', '1', 286.96, 0.00, '0', 0, 0),
(24, 20, 34, 'Registro de Dominio MX', '', 'cybac425', 'img_24.jpg', '1', 400.00, 0.00, '0', 0, 0),
(25, 20, 34, 'Diseño de Página Web', '', '2', 'img_25.jpg', '1', 6000.00, 0.00, '0', 0, 0),
(26, 20, 34, 'Desarrollo de Aplicación Web', '', '', 'img_26.jpg', '1', 0.00, 0.00, '0', 0, 0),
(27, 19, 34, 'Mantenimiento Correctivo a Equipo de Computo', '', '123698', 'img_27.jpg', '1', 400.00, 0.00, '0', 0, 0),
(28, 19, 34, 'Mantenimiento Preventivo a Equipo de Computo', '', '998887', 'img_28.jpg', '1', 200.00, 0.00, '0', 0, 0),
(29, 19, 34, 'Instalación de Programas', '', '', 'img_29.jpg', '1', 0.00, 0.00, '0', 0, 0),
(30, 19, 34, 'Soporte Técnico Mensual', '', '1', 'img_30.jpg', '1', 1150.00, 0.00, '0', 0, 0),
(31, 20, 34, 'Actualización Página Web', '', 'cybac5', 'img_31.jpg', '1', 1000.00, 0.00, '0', 0, 0),
(32, 20, 34, 'Cambio de Plan de Hosting', '', 'cybaccambio', 'img_32.jpg', '1', 100.00, 0.00, '0', 0, 0),
(33, 19, 34, 'Instalación de Cámaras de Seguridad', '', 'cybaccctfv', 'img_33.jpg', '1', 300.00, 0.00, '0', 0, 0),
(34, 13, 35, 'Software Intecplan 2.0', '', '1111111', 'img_34.jpg', '1', 1950.00, 0.00, '1', 0, 0),
(35, 19, 34, 'Mantenimiento Correctivo a Impresora', '', '664444', 'img_35.jpg', '1', 400.00, 0.00, '0', 0, 0),
(36, 19, 34, 'Consultoria y Soporte Tenico', '', '36547895', 'img_36.jpg', '1', 2500.00, 0.00, '0', 0, 0),
(37, 22, 2, 'Memoria Kingston 512 PC333 DDR', '', '7885462', 'img_37.jpg', '0', 400.00, 0.00, '0', 0, 0),
(38, 22, 2, 'Memoria Kingston 1 GB PC 2700', '', '', 'img_38.jpg', '1', 0.00, 0.00, '1', 0, 0),
(39, 11, 2, 'Adaptador Aire Link 101 PCI 802.11G Wireless', 0x446573637269706369c3b36e3a0d0a0d0a200d0a0d0a49454545203830322e313167202f20622c20792053c3ba7065722047203f2071756520736f706f7274612068617374612031312f35342f3130384d627073207461736173206465206461746f732e0d0a0d0a200d0a0d0a536f706f72746120656c2075736f206465205750412c20575041322e0d0a0d0a200d0a0d0a486173746120313078206dc3a1732072c3a17069646f2071756520656c203830322e31316220636f6e206c61207465636e6f6c6f67c3ad612053c3ba7065722047203f0d0a0d0a200d0a0d0a200d0a0d0a436f6e656374617220737520504320612073752072656420696e616cc3a16d62726963612061637475616c20636f6e20756e61206d61796f722074617361206465206461746f7320313038204d627073200d0a0d0a204c6f6772617220656c206d656a6f722072656e64696d69656e746f20636f6e206c6f732070726f647563746f732064652041746865726f73203f2053c3ba7065722047203f2c2041523433305720792041574c43343133302e0d0a0d0a200d0a0d0a20436f6d70617469626c6520636f6e20494545452020203830322e3131672f622e0d0a4573706563696669636163696f6e65730d0a0d0a200d0a0d0a457374c3a16e64617265732049454545203830322e313167202f20622c2041746865726f732053c3ba7065722047203f0d0a0d0a200d0a0d0a53c3ba70657220472056656c6f6369646164206465206461746f7320313038204d627073200d0a0d0a200d0a0d0a3830322e313167202f20623a2035342c2034382c2033362c2032342c2031382c2031322c2031312c20392c20362c20352e352c20322c20314d6270730d0a0d0a200d0a0d0a436869707365742041746865726f73203f0d0a0d0a5472616e736d697420506f776572203132207e20313564426d20402035342f3130384d6270730d0a0d0a313864426d20402031314d6270730d0a0d0a200d0a0d0a5469706f20646520616e74656e61206f6d6e692d646972656363696f6e616c206465206c6120616e74656e61206469706f6c6f20636f6e20326442690d0a0d0a200d0a0d0a4c454420506f7765720d0a0d0a200d0a0d0a56c3ad6e63756c6f0d0a0d0a4465206369667261646f20646520736567757269646164205745502064652036342f31323820626974730d0a0d0a5750412c20575041320d0a0d0a200d0a0d0a5469706f206465204275732050434920627573206c6f63616c20322e320d0a0d0a200d0a0d0a5043492033322d62697420646520696e74657266617a2064650d0a0d0a200d0a0d0a456e746f726e6f2064652066756e63696f6e616d69656e746f2054656d70657261747572613a203020c2ba2043206120353520c2ba20430d0a0d0a200d0a0d0a48756d656461643a20313025206120393025202873696e20636f6e64656e73616369c3b36e290d0a0d0a200d0a0d0a44696d656e73696f6e6573203132322078203635206d6d20284c20782057290d0a0d0a200d0a0d0a4365727469666963616369c3b36e206465206c612046434320792043450d0a0d0a476172616e74c3ad61206c696d697461646120646520312061c3b16f20646520676172616e74c3ad6120466162726963616369c3b36e2e0d0a0d0a200d0a0d0a2a2053c3ba7065722047203f20746563686e6f6c6f67792028313038204d627073292073c3b36c6f207365207075656465206f6274656e657220616c207574696c697a61722070726f647563746f7320636f6e20636869707365742041746865726f732053c3ba7065722047203f2e0d0a0d0a200d0a0d0ac2b72020202056656c6f6369646164206dc3a178696d61207465c3b372696361206465206c61207365c3b1616c20696e616cc3a16d62726963612062617361646120656e20656c20657374c3a16e6461722049454545203830322e3131672e0d0a0d0ac2b72020202020456c2072656e64696d69656e746f207265616c207075656465207661726961722e0d0a0d0a200d0a0d0ac2b72020202020436f6e646963696f6e6573206465206c6120726564207920666163746f72657320616d6269656e74616c65732c20636f6d6f20656c20766f6c756d656e206465207472c3a16669636f206465207265642c206d6174657269616c657320646520636f6e73747275636369c3b36e2079206c6120636f6e73747275636369c3b36e2c206c61206d657a636c612064652070726f647563746f7320696e616cc3a16d627269636f7320757361646f732c20696e746572666572656e63696120646520726164696f206672656375656e6369612028706f7220656a656d706c6f2c2074656cc3a9666f6e6f7320696e616cc3a16d627269636f732079206d6963726f6f6e646173292c206173c3ad20636f6d6f206465206c61207265640d0a0d0a746173612064652072656e64696d69656e746f20646520736f6272656361726761206465206461746f73207265616c657320667565726f6e206d656e6f7265732e, '7842535', 'img_39.jpg', '1', 730.43, 0.00, '1', 0, 0),
(40, 19, 34, 'Mantenimiento Preventivo a Impresora', '', '89657412', 'img_40.jpg', '1', 400.00, 0.00, '0', 0, 0),
(41, 7, 36, 'Impresora Laser Samsung ML-2010', 0x496d707265736f7261204c61736572204d6f6e6f63726f6d61746963612053616d73756e67204d4c2d323031302c2056656c6f63696461642032322070706d2c205265736f6c756369c3b36e20313230307836303020647069204369636c6f204d656e7375616c20352c3030302070c3a167732e2054616d61c3b16f204d6178696d6f20646520696d7072657369c3b36e3a204f666963696f2e2042616e64656a61206d756c746970726f706f7369746f20706172612031353020686f6a61732e2050726f63657361646f72203135304d687a2c204d656d6f72696120384d422c204c656e6775616a6520646520496d7072657369c3b36e2053504c202853616d73756e67205072696e746572204c616e6775616765292e20496e746572666163653a205553422e20436f6d70617469626c6520636f6e2057696e646f77732c204c696e75782079204d61632e2044696d656e73696f6e65733a20333538207820323939207820323137206d6d2e20436f6e73756d69626c653a204d4c2d32303130443320284578697374656e63696173204c696d69746164617329, '78897896658', 'img_41.jpg', '1', 1304.35, 0.00, '1', 0, 0),
(42, 8, 3, 'Monitor LG 192WS 19\\\" LCD Wide screen black', 0xe280a2466f726d61746f2070616e6f72c3a16d69636f3a203139e2809d0d0ae280a2526174696f20646520636f6e7472617374652065787472656d6f3a203730303a310d0ae280a24d61796f72207261706964657a20646520726573707565737461203a20356d730d0ae280a2416c7461207265736f6c756369c3b36e3a203134343078393030202857535847412b290d0ae280a2436f6e6563746f7220646520656e747261646120416e616cc3b36769636f3a20313570696e20442d7375622f0d0ae280a250616e74616c6c612070616e6f72c3a16d69636120656e2057535847412b3a205375206173706563746f2031363a31302070726f706f7263696f6e61206c6173206d656a6f72657320636f6e646963696f6e65732070617261207665722070656cc3ad63756c6173206465204456442079207574696c697a617220766964656f6a7565676f732e0d0ae280a244464320284469676974616c2046696e6520436f6e7472617374296465204c473a205465636e6f6c6f67c3ad61207175652067656e65726120696dc3a167656e657320636f6e206d61796f72206e69746964657a207920636c6172696461642e20496465616c207061726120696dc3a167656e657320656e206d6f76696d69656e746f2079206dc3a17320706f74656e746520656e20696dc3a167656e6573206f7363757261732c207065726d697469656e646f20616c207573756172696f20756e612076697369c3b36e20706572666563746120792073696e20646973746f727369c3b36e2e0d0ae280a2466c6174726f6e20662d456e67696e653a205072696d657220636869702064656c206d756e646f2070617261206d6f6e69746f726573204c434420717565207265616c7a61206c6120696d6167656e2e0d0a4573706563696669636163696f6e65732054c3a9636e696361730d0a0d0ae280a250616e74616c6c612054465420200d0ae280a254616d61c3b16f2031392050756c67616461732050616e6f72c3a16d69636f0d0ae280a24272696c6c6f202863642f6d3229203330302063642f6d320d0ae280a2436f6e74726173746520283730303a3129204446430d0ae280a2416e67756c6f20646520766973696f6e20483a313630c2ba2c20563a313630c2ba0d0ae280a25469656d706f2064652072657370756573746120286d73292035206d730d0ae280a24e756d65726f20646520636f6c6f72657320286d696c6c6f6e6573292031362e320d0ae280a24672656375656e63696120686f72697a6f6e74616c20284b487a292033302d38330d0ae280a24672656375656e63696120766572746963616c2028487a292035362d37350d0ae280a25265736f6c7563696f6e206d6178696d612031343430783930302028575847412b29, '321456987', 'img_42.jpg', '1', 2400.00, 0.00, '1', 0, 0),
(44, 19, 34, 'Instalacion de Nodo de Red', '', '7685942', 'img_44.jpg', '1', 300.00, 0.00, '0', 0, 0),
(45, 20, 34, 'Renovacion de Dominio', '', '', 'img_45.jpg', '1', 400.00, 0.00, '0', 0, 0),
(46, 6, 37, 'DVD-RW 20X', '', '34353614', 'img_46.jpg', '1', 400.00, 0.00, '1', 0, 0),
(47, 22, 2, 'Memoria Kingston  DDR 512 PC2700', '', '25242628', 'img_47.jpg', '1', 400.00, 0.00, '1', 0, 0),
(48, 19, 34, 'Instalacion de Equipo de Computo', '', '8486825', 'img_48.jpg', '1', 500.00, 0.00, '0', 0, 0),
(49, 16, 20, 'UPS CDP 500VA 300WATTS UPR505', '', '9596912', 'img_49.jpg', '1', 600.00, 0.00, '1', 0, 0),
(50, 22, 2, 'Memoria Kingston  512 PC3200 DDR', '', '', 'img_50.jpg', '1', 600.00, 0.00, '1', 0, 0),
(52, 22, 2, 'Memoria Kingston  DDR 512 PC400', '', '3917624', 'img_52.jpg', '1', 500.00, 0.00, '1', 0, 0),
(53, 22, 2, 'Memoria Kingston  512 PC133 MHZ', '', '9731645', 'img_53.jpg', '1', 600.00, 0.00, '1', 0, 0),
(54, 19, 34, 'Configuracion De Impresora', '', '', 'img_54.jpg', '1', 200.00, 0.00, '0', 0, 0),
(55, 2, 8, 'Mouse Optico Ultra confort Usb PC-043782', '', '', 'img_55.bmp', '1', 0.00, 0.00, '1', 0, 0),
(56, 6, 3, 'CD-ROM', '', '283179', 'img_56.jpg', '1', 350.00, 0.00, '1', 0, 0),
(57, 11, 16, 'Wireless G usb adapter DWA-110', 0x416461707461646f7220636f6d706163746f20555342207061726120726564657320496e616cc3a16d62726963617320284457412d313130292c203534204d6270732c206672656375656e636961206120322e3447487a2c20636f6d70617469626c6520636f6e20656c20657374c3a16e646172203830322e3131622079203830322e313167, '790069302930', 'img_57.jpg', '1', 260.87, 0.00, '1', 0, 0),
(58, 19, 34, 'Recuperación de Datos', '', '3971258', 'img_58.jpg', '1', 200.00, 0.00, '0', 0, 0),
(59, 11, 38, 'Tarjeta inalambrica usb airlink', '', '', 'img_59.jpg', '1', 0.00, 0.00, '1', 0, 0),
(60, 15, 36, 'Toner ML1610 Samsung', '', '5468213', 'img_60.jpg', '1', 721.74, 0.00, '1', 0, 0),
(61, 2, 10, 'Adaptador Usb Para Disco Sata e Ide', '', '79461380', 'img_61.jpg', '1', 374.00, 0.00, '1', 0, 0),
(62, 22, 2, 'Memoria Kingston  Usb de 2 Gb', '', '05052040793', 'img_62.jpg', '1', 200.00, 0.00, '1', 0, 0),
(63, 2, 28, 'Antiestatico', '', '7503009367028', 'img_63.bmp', '1', 58.00, 0.00, '1', 0, 0),
(64, 2, 28, 'Limpiador de Superficies Platicas', '', '7503009367059', 'img_64.jpg', '1', 68.00, 0.00, '1', 0, 0),
(65, 2, 28, 'Aire Comprimido', '', '7503009367004', 'img_65.jpg', '1', 78.00, 0.00, '1', 0, 0),
(71, 11, 52, 'Pinza Para Ponchar Rj-45', '', '8029075604', 'img_71.jpg', '0', 165.00, 0.00, '0', 0, 0),
(70, 2, 28, 'Alcohol Isopropilico', '', '90603040271', 'img_70.gif', '1', 47.00, 0.00, '1', 0, 0),
(72, 11, 52, 'Ponchadora de Impacto Con Navaja', '', '703641238', 'img_72.jpg', '1', 450.00, 0.00, '1', 0, 0),
(74, 2, 34, 'Maletin c/Herramientas de Computo', '', '00450087954', 'img_74.JPG', '0', 1490.00, 0.00, '0', 0, 0),
(75, 11, 10, 'Provador de Cable Utp', '', '66777008894', 'img_75.jpg', '1', 261.00, 0.00, '1', 0, 0),
(76, 16, 20, 'Fuente de Poder 400w', '', '0214506584', 'img_76.jpg', '1', 160.00, 0.00, '1', 0, 0),
(77, 11, 31, 'Tarjeta de Red Inlambrica Encore Pcmcia ENPWI-G2', 0x416461707461646f722050434d43494120576972656c65737320456e636f726520454e5057492d4732203830322e313167203534204d627073, '', 'img_77.jpg', '1', 0.00, 0.00, '1', 0, 0),
(78, 16, 20, 'Fuente de Poder 350 Watts ATX', '', '7036014520', 'img_78.jpg', '1', 250.00, 0.00, '1', 0, 0),
(79, 3, 29, 'Disco Duro WD 80GB IDE', '', '', 'img_79.jpg', '1', 565.22, 0.00, '1', 0, 0),
(80, 11, 31, 'Switch 8 Puertos Encore', 0x53776974636820456e636f726520454e483930382d4e575920382070756572746f732031302f313030204d627073, '08009040563', 'img_80.jpg', '1', 339.13, 0.00, '1', 0, 0),
(81, 7, 36, 'Laser Samsung ML-2571N', 0x496d7072657369c3b36e202056656c6f636964616420284d6f6e6f29202032352070706d20200d0a5469656d706f20496d7072657369c3b36e205072696d65726120486f6a6120284d6f6e6f292020392073656720200d0a5265736f6c756369c3b36e2020313230302058203132303020200d0a496d7072657369c3b36e20446f626c65204361726120204d616e75616c20200d0a456d756c616369c3b36e202050434c362c20506f73745363726970743320200d0a4d616e656a6f20646520506170656c202054616d61c3b16f20646520486f6a612020322e39395c22205820355c222d382e35315c2220582031345c2220200d0a5469706f20506170656c20205472616e73706172656e636961732c206574697175657461732c20706f7374616c65732c20736f6272657320200d0a47656e6572616c202050726f63657361646f72202053414d53554e4720343030204d487a20200d0a4d656d6f726961202033322f3332204d4220200d0a53697374656d61204f706572617469766f202057696e646f777339382f6d652f323030302f58502833322f36342062697473292f4e54342e302f32303033207365727665722f76697374612e20566172696f73206c696e757820696e636c7579656e646f207265642068617420382d392c206d616e6472616b6520392e322d31302e312c206665646f726120636f726520312d332079205375534520382e322d392e322e204d6163204f5320382e362d392e322f31302e312d31302e3420200d0a496e74657266616365202055534220322e302c2049454545203132383420706172616c656c6f2e2865746865726e65742031302f3130302062617365207478206c61204d4c2d323537314e2920200d0a4e69766520646520727569646f20204d656e6f722061203533206442412f33352064424120200d0a4369636c6f204d656e7375616c2064652054726162616a6f20203130206d696c2070c3a167696e617320200d0a44696d656e73696f6e202857207820442078204829202031332e395c2220582031312e375c22205820392e36395c2220200d0a5065736f2020352e36206b6720200d0a436f6e73756d69626c6573202052656e64696d69656e746f202033206d696c2070c3a167696e617328737461727465722031206d696c2920200d0a5469706f2020436172747563686f20200d0a43c3b36469676f206465204d6f64656c6f20204d4c2d32303130443320200d0a, '550221478', 'img_81.png', '1', 2430.00, 0.00, '1', 0, 0),
(82, 13, 34, 'Diseño y Desarrollo de Cd Interactivo', '', '00122364078', 'img_82.jpg', '1', 6000.00, 0.00, '1', 0, 0),
(83, 15, 40, 'Cartucho Brother LC51M', '', '887795740', 'img_83.jpg', '1', 243.48, 0.00, '1', 0, 0),
(84, 15, 40, 'Cartucho Brother LC51C', '', '07074598234', 'img_84.jpg', '1', 243.48, 0.00, '1', 0, 0),
(85, 15, 40, 'Cartucho Brother LC51Y', '', '97014759682', 'img_85.jpg', '1', 243.48, 0.00, '1', 0, 0),
(86, 19, 34, 'Servicio De Grabado en CD de Datos', 0x2843442d52206465203730306d622e4574697175657461646f2c20636f6e20736f6272652073656e63696c6c6f20426c616e636f29, '889657405', 'img_86.jpg', '1', 17.70, 0.00, '0', 0, 0),
(87, 13, 34, 'Diseño Editorial', '', '99887744125', 'img_87.jpg', '1', 10000.00, 0.00, '1', 0, 0),
(88, 15, 4, 'Toner Cyan Q6001A', '', '6698741235', 'img_88.jpg', '1', 1200.00, 0.00, '1', 0, 0),
(89, 15, 4, 'Toner Magenta Q6003A', '', '', 'img_89.jpg', '1', 0.00, 0.00, '1', 0, 0),
(90, 15, 41, 'Cartucho Canon Num.30', '', '9987130541', 'img_90.jpg', '1', 245.00, 0.00, '1', 0, 0),
(91, 15, 41, 'Cartucho Canon Num.31', '', '0024183971', 'img_91.jpg', '1', 325.00, 0.00, '1', 0, 0),
(92, 15, 4, 'Cartucho Hp Num.15', '', '01201254067', 'img_92.jpg', '1', 450.00, 0.00, '1', 0, 0),
(93, 15, 4, 'Cartucho Hp Num.28', '', '090145781314', 'img_93.jpg', '1', 330.00, 0.00, '1', 0, 0),
(94, 15, 4, 'Cartucho Hp Num.27', '', '064872318441', 'img_94.jpg', '1', 280.00, 0.00, '1', 0, 0),
(95, 15, 19, 'Cartucho Epson Negro CX5600', '', '05879640125', 'img_95.jpg', '1', 160.00, 0.00, '1', 0, 0),
(96, 15, 19, 'Cartucho Epson Amarillo CX5600', '', '98003654710', 'img_96.jpg', '1', 160.00, 0.00, '1', 0, 0),
(97, 15, 19, 'Cartucho Epson Magenta CX5600', '', '98900525052', 'img_97.jpg', '1', 160.00, 0.00, '1', 0, 0),
(98, 15, 19, 'Cartucho Epson Cian CX5600', '', '0052511871057', 'img_98.jpg', '1', 160.00, 0.00, '1', 0, 0),
(99, 11, 16, 'Switch 8 Puertos D-Link', 0x53776974636820442d4c696e6b204445532d31303038442c20382070756572746f7320524a34352031302f3130304d6270732c206e6f2061646d696e6973747261626c65732c20746f646f73206c6f732070756572746f7320736f706f7274616e204d44492f4d4449582c206175746f646574656363696f6e2064656c206d6f646f20206465206f706572616369c3b36e2048616c6620206f2046756c6c204475706c65782c20736f706f72746520706172612020756e20636f6e6563746f72204d44492d49492045787472612c206375656e746120636f6e206c612061727175697465637475726120646520506172616c6c656c20537769746368696e67207061726120656c206d6f646f206465206f706572616369c3b36e2053746f726526466f7264776172642c207065726d697465206c61207472616e73666572656e636961206465206461746f7320656e20666f726d61206469726563746120656e747265206c61732064697374696e74617320707565727461732c20636f6e2046756c6c204572726f7220436865636b696e672c20656c696d696e616e646f20656e20656c207472c3a16669636f206465206c612072656420656c20656e76c3ad6f20646520506171756574657320496e636f6d706c65746f732c20467261676d656e7461646f73206f20636f6e204572726f726573206465204352432c2073616c76616775617264616e646f206465206573746120666f726d61206c6120696e7465677269646164206465206c6f73206461746f732e, '9987450126', 'img_99.jpg', '1', 250.00, 0.00, '1', 0, 0),
(100, 11, 26, 'Conector RJ-45', '', '369702115840', 'img_100.jpg', '1', 6.50, 0.00, '1', 0, 0),
(101, 15, 4, 'Toner Negro Q6000', '', '543638210226', 'img_101.jpg', '1', 1130.00, 0.00, '1', 0, 0),
(103, 7, 19, 'Impresora Epson LX-300', 0x496d707265736f7261204570736f6e204c582d3330302b4949202843313143363430303031292e20496d7072657369c3b36e206d6f6e6f63726f6dc3a1746963612c204d617472697a2064652050756e746f2064652039206167756a61732e2056656c6f636964616420646520696d7072657369c3b36e3a204861737461203330306370732028313020637069292c203232356370732028313020637069292e2042616e64656a6120646520656e7472616461207061726120686f6a61207375656c74617320792f6f2074726163746f7220646520666f726d617320636f6e74696e7561732e204f726967696e616c202b203420636f706961732e20496e746572666163653a205553422c2073657269616c207920706172616c656c612e205065736f3a20342e34206b672e20436f6e73756d69626c653a2043696e74612038373530, '100014250175123', 'img_103.jpg', '1', 3826.08, 0.00, '1', 0, 0),
(104, 17, 8, 'Adaptador de Corriente Universal', '', '00366987451', 'img_104.jpg', '1', 521.74, 0.00, '1', 0, 0),
(105, 15, 4, 'Cartucho Hp Num.21', '', '88741069654', 'img_105.jpg', '1', 250.00, 0.00, '1', 0, 0),
(106, 15, 4, 'Cartucho Hp Num.22', '', '030200111452', 'img_106.jpg', '1', 290.00, 0.00, '1', 0, 0),
(107, 11, 18, 'Tarjeta de red inalambrica pci  ansel', '', '786521492024', 'img_107.jpg', '1', 300.00, 0.00, '1', 0, 0),
(108, 20, 34, 'Mantenimiento Pagina Web', '', '9987712360554', 'img_108.jpg', '1', 800.00, 0.00, '0', 0, 0),
(109, 2, 8, 'Cable svga Macho-Macho 8 mts', '', '88987453621', 'img_109.jpg', '1', 460.87, 0.00, '1', 0, 0),
(110, 2, 8, 'Cable svga Macho-Macho 15 mts', '', '0212465978541', 'img_110.jpg', '1', 743.48, 0.00, '1', 0, 0),
(111, 2, 8, 'Cable para Impresora Paralelo/Usb', '', '980036571254', 'img_111.jpg', '1', 208.70, 0.00, '1', 0, 0),
(112, 22, 2, 'Memoria Kingston  Usb de 8 Gb', '', '99111564782', 'img_112.jpg', '1', 347.83, 0.00, '1', 0, 0),
(113, 7, 4, 'Multifuncional Laser Monocromatica Hp m1120', 0x4d756c746966756e63696f6e616c204c617365724a6574204850204d313132302028434235333741292c20496d707265736f72612c20657363616e6572202863616d6120706c616e6129207920636f706961646f72613b2048617374612032302070706d204e6567726f3b2054616d2e20496d7072657369c3b36e3a20323136207820333536206d6d3b2048617374612036303020782036303020782032206470692c205265732e20657363616e65723a2048617374612031392e32303020647069206d656a6f7261646f732e20636f706961646f72613a20486173746120363030207820363030206470693b204369636c6f2064652074726162616a6f3a20486173746120352c303030207070206d65733b20436f6e6563746976696461643a2050756572746f2055534220322e3020646520616c74612076656c6f63696461643b20506172612050432057696e646f77732032303030206f207375706572696f722079204d61633b204e6f20696e636c757965206361626c653b205065736f3a2031312c38206b672e20436f6e73756d69626c653a204342343336412e, '', 'img_113.jpg', '1', 0.00, 0.00, '1', 0, 0),
(114, 17, 42, 'Adaptador de Corriente DELL Latitude c840', '', '99874135584', 'img_114.jpg', '1', 1217.00, 0.00, '1', 0, 0),
(115, 2, 8, 'Convertidor de Ps2 A usb', '', '4786658525875', 'img_115.jpg', '1', 104.00, 0.00, '1', 0, 0),
(116, 15, 41, 'Toner Canon 106', '', '8874103695215', 'img_116.jpg', '1', 1960.87, 0.00, '1', 0, 0),
(117, 15, 36, 'Toner Samsung k409', '', '001248965237', 'img_117.jpg', '1', 696.65, 0.00, '1', 0, 0),
(118, 15, 4, 'Cartucho Negro Hp Num.74', '', '9332221457568', 'img_118.jpg', '1', 278.26, 0.00, '1', 0, 0),
(119, 15, 4, 'Cartucho Tricolor Hp Num.75', '', '9987452582136', 'img_119.jpg', '1', 313.04, 0.00, '1', 0, 0),
(120, 15, 41, 'Cartucho Canon PG-40', '', '125045803670', 'img_120.jpg', '1', 382.61, 0.00, '1', 0, 0),
(121, 15, 41, 'Cartucho Canon CL-41', '', '778014011548', 'img_121.jpg', '1', 460.87, 0.00, '1', 0, 0),
(122, 15, 40, 'Cartucho Brother LC51BK', '', '00122578421', 'img_122.jpg', '1', 252.17, 0.00, '1', 0, 0),
(123, 2, 8, 'Teclado Numerico Perfect Choise', '', '4786215045205', 'img_123.jpg', '1', 130.43, 0.00, '1', 0, 0),
(124, 2, 8, 'Mini Raton Retractil Perfect Choise', '', '1027873947665', 'img_124.jpg', '1', 147.83, 0.00, '1', 0, 0),
(125, 3, 6, 'Pack 25 Dvd Sony', '', '99557418621474', 'img_125.jpg', '1', 130.43, 0.00, '1', 0, 0),
(126, 19, 34, 'Configuracion De Red', '', '0010010203024', 'img_126.jpg', '1', 130.43, 0.00, '0', 0, 0),
(127, 3, 23, 'Disco duro externo 250GB, SATA ,2.5', '', '811475246943', 'img_127.jpg', '1', 1260.87, 0.00, '1', 0, 0),
(128, 22, 2, 'Memoria Kingston Usb de 16 Gb', '', '824637915000', 'img_128.jpg', '1', 478.26, 0.00, '1', 0, 0),
(129, 22, 2, 'Memoria Kingston  DDR SODIMM 2GB 667 GHZ', '', '95142336978745', 'img_129.gif', '1', 478.26, 0.00, '1', 0, 0),
(130, 2, 8, 'Teclado Multimedia Perfect Choice PS2 PC-200178', '', '', 'img_130.jpg', '1', 0.00, 0.00, '1', 0, 0),
(131, 8, 43, 'Monitor CRT 17\\\" AOC', 0x4d6f6e69746f7220414f432064652031375c275c27204352542c206d6f64656c6f204354373130472c204469676974616c2c205265736f6c756369c3b36e206465203132383078313032342c20302e32372044502c20436f6c6f72204e6567726f20284578697374656e63696173204c696d69746164617329, '01040702580369', 'img_131.jpg', '1', 1043.48, 0.00, '1', 0, 0),
(132, 22, 2, 'Memoria Kingston  Usb de 1 Gb', '', '3040901125471', 'img_132.jpg', '1', 92.56, 0.00, '1', 0, 0),
(133, 22, 2, 'Memoria Kingston  Usb de 4 Gb', '', '0449611805519', 'img_133.jpg', '1', 165.92, 0.00, '1', 0, 0),
(134, 3, 44, 'Verbatim 95116 DVD+4.7GB 10 disco', '', '0511987184752', 'img_134.jpg', '1', 8.24, 0.00, '1', 0, 0),
(135, 16, 20, 'No-break 4 contactos', '', '', 'img_135.jpg', '1', 0.00, 0.00, '1', 0, 0),
(136, 14, 10, 'Tarjeta Sintonizadora de TV PCI 3 en 1', '', '9782541036048', 'img_136.jpg', '1', 913.04, 0.00, '1', 0, 0),
(137, 2, 28, 'Paquete de Producto De Limpieza', '', '9573368412571', 'img_137.bmp', '1', 881.74, 0.00, '1', 0, 0),
(138, 3, 44, 'Torre De 50 CD-R', '', '044965123874', 'img_138.jpg', '1', 198.26, 0.00, '1', 0, 0),
(139, 3, 44, 'Torre De 50 CD-RW', '', '700598124236', 'img_139.jpg', '1', 252.17, 0.00, '1', 0, 0),
(140, 3, 29, 'Disco Sata 320 GB 2.5\\\\\\\"', '', '0998713550017', 'img_140.jpg', '1', 1173.91, 0.00, '1', 0, 0),
(141, 3, 44, 'Torre De 50 DVD+R', '', '8896574135420', 'img_141.jpg', '1', 252.17, 0.00, '1', 0, 0),
(142, 3, 44, 'CD-RW', '', '789635012450', 'img_142.jpg', '1', 11.30, 0.00, '1', 0, 0),
(143, 17, 45, 'Emachines EME725-4039', 0x50726f63657361646f7220496e74656cc2ae2050656e7469756dc2ae204475616c20436f7265205434323030206120322e3047487a2f314d42204c322f3830304d487a204653422c204d656d6f72696120646520323034384d422052414d2028313032342f31303234292044445249492d3533332c20446973636f206475726f2031363047422053415441403534303052504d2c20556e6964616420c3b37074696361204456442d53757065724d756c746920444c2038782028445644c2b15257292c204c6563746f72206d756c74697461726a65746120352d656e2d312070617261206f7063696f6e616c65732053442c204d4d432c204d532c204d532050524f2c2078442c2031352e365c5c5c2220544654204163746976612057584741202831333636783736382c20323030206e697429204372797374616c42726974652c20496e74656cc2ae204772617068696373204d6564696120416363656c657261746f7220343530304d2c2052656420476967616269742045746865726e65742031303030204261736554202c52656420696e616cc3a16d6272696361203830322e313142472057692d46692c2043c3a16d617261207765622c, '006600478123054', 'img_143.jpg', '1', 7791.30, 0.00, '1', 0, 0),
(144, 15, 4, 'Toner Hp Num. 36A', '', '8522711022812', 'img_144.jpg', '1', 1086.96, 0.00, '1', 0, 0),
(145, 13, 34, 'Desarrollo de Software', '', '00100200345564', 'img_145.jpg', '1', 1086.96, 0.00, '1', 0, 0),
(146, 7, 36, 'Impresora Laser Samsung ML-1640', 0x4573706563696669636163696f6e657320496d707265736f72613a0d0a2d2056656c6f636964616420284d6f6e6f293a206dc3a1732064652031362070706d20696e204134202831372070706d20656e206361727461290d0a2d205469656d706f2064652073616c696461207072696d65726120686f6a6120284d6f6e6f293a206d656e6f7320646520313020736567756e646f7320286465736465205265616479204d6f6465290d0a2d205265736f6c756369c3b36e3a206dc3a1732064652031323030207820363030206470692073616c6964612065666563746976610d0a2d204475706c65783a204d616e75616c0d0a2d20456d756c616369c3b36e3a2053504c202853414d53554e47205072696e746572204c616e6775616765290d0a47656e6572616c3a0d0a2d204d656d6f726961202f204361706163696461643a2038204d420d0a2d204f5320436f6d7061746962696c696461643a2057696e646f77732032303030202f205850202f203230303320536572766572202f20566973746120566172696f7573204c696e7578204f53204d6163204f5320582031302c33207e2031302c350d0a2d20496e7465726661636520436f6d70617469626c6520636f6e2055534220322e300d0a2d204e6976656c20646520527569646f3a204d656e6f73206465206442412028496d7072696d69656e646f29206d656e6f732064652032362064424120285374616e646279290d0a2d204369636c6f2064652074726162616a6f206d656e7375616c3a206dc3a17320646520352e3030302070c3a167696e61730d0a2d2044696d656e73696f6e65732028416c20782050207820416e293a20333533207820323938207820323039206d6d202831332c395c2220782031312c375c22207820382c325c22290d0a2d205065736f3a20352c37206b67202831322c36206c6273290d0a, '4746568954229636', 'img_146.jpg', '1', 826.00, 0.00, '1', 0, 0),
(147, 15, 4, 'Cartucho Negro Hp Num.88', '', '0104078850147', 'img_147.gif', '1', 304.34, 0.00, '1', 0, 0),
(148, 15, 4, 'Cartucho Magenta Hp Num.88', '', '09963510471000', 'img_148.gif', '1', 226.09, 0.00, '1', 0, 0),
(149, 15, 4, 'Cartucho Cyan Hp Num.88', '', '030020125407812', 'img_149.gif', '1', 226.09, 0.00, '1', 0, 0),
(150, 15, 4, 'Cartucho Amarillo Hp Num.88', '', '0987410056123', 'img_150.gif', '1', 226.09, 0.00, '1', 0, 0),
(152, 2, 9, 'Mini HUB USB 4 Puertos acteck ACU-HU350', '', '9970021469831', 'img_152.jpg', '1', 126.60, 0.00, '1', 0, 0),
(153, 2, 9, 'Dongle Adaptador Bluetooth USB ACC-DBT Acteck acc-dbt', '', '092222789312', 'img_153.jpg', '1', 252.56, 0.00, '1', 0, 0),
(154, 6, 9, 'Lector interno de memoria Interno USB 2.0', '', '', 'img_154.jpg', '1', 143.04, 0.00, '1', 0, 0),
(155, 2, 46, 'Mouse Laser Inalambrico Recargable Targus AMW15US', '', '0459162374891', 'img_155.jpg', '1', 540.00, 0.00, '1', 0, 0),
(156, 15, 4, 'Toner Negro Q5949A', '', '00021454978543', 'img_156.jpg', '1', 1237.10, 0.00, '1', 0, 0),
(157, 19, 34, 'Configuracion de Correo (Outlook)', '', '0048799621014', 'img_157.jpg', '1', 130.43, 0.00, '0', 0, 0),
(158, 17, 1, 'Notebook Aspire One A150-1491', 0x436f6d70757461646f726120506f7274c3a174696c204d617263612041434552206d6f64656c6f20415350495245204f4e4520413135302d3134393120284c552e53303530412e323832292c2050726f63657361646f7220496e74656cc2ae2041746f6de284a22c206368697073657420496e74656cc2ae203934354753452045787072657373206120312e3647487a2f3531324b42204c322f3533334d487a204653422c204d656d6f72696120646520313032344d422052414d20283531322f353132292044445249492d3533334d687a2c20446973636f206475726f203136304742205341544120403534303052504d2c2050616e74616c6c6120646520382e395c2220544654204163746976612057535647412028313032347836303029204372797374616c42726974652c2043c3a16d617261207765622c204c6563746f7220352d656e2d31202853442c204d4d432c204d532c204d532050524f2c207844292c2052656420466173742045746865726e65742031302f313030204d6270732c2052656420696e616cc3a16d6272696361203830322e313142472c2053697374656d61204f706572617469766f204c696e707573204c696e757820656e20696e676cc3a9732c20536f667477617265204f70656e4f666669636520322e332c20417370697265206f6e65204d61696c2c204d657373656e6765722c20436f6c6f7220417a756c207a616669726f2e, '99857413321521', 'img_158.jpg', '1', 4000.00, 0.00, '1', 0, 0),
(159, 6, 25, 'Floppy 1.44mb externo usb 2.0', '', '722231045281', 'img_159.jpg', '1', 486.96, 0.00, '1', 0, 0),
(160, 2, 28, 'Toallas Limpiadoras Para Pc', '', '91203306574152', 'img_160.jpg', '1', 28.80, 0.00, '1', 0, 0),
(161, 22, 47, 'Memoria secure digital 2gb adata', '', '81336140525781', 'img_161.jpg', '1', 130.43, 0.00, '1', 0, 0),
(162, 19, 34, 'Renta de Equipo de Computo', '', '936410274504', 'img_162.jpg', '1', 250.00, 0.00, '0', 0, 0),
(163, 15, 4, 'Cabezal pa Impresora Office jet pro 5400', '', '8874136542241', 'img_163.jpg', '1', 869.57, 0.00, '1', 0, 0),
(164, 17, 42, 'Bateria Para Portatil XPS-M1210', '', '9987422541360', 'img_164.jpg', '1', 1043.48, 0.00, '1', 0, 0),
(165, 17, 42, 'Teclado Para Portatil XPS-M1210', '', '45221085289365', 'img_165.jpg', '1', 608.70, 0.00, '1', 0, 0),
(166, 3, 29, 'Disco Duro 160 Sata 2.5\\\\\\\"', '', '9137085465123', 'img_166.jpg', '1', 739.13, 0.00, '1', 0, 0),
(171, 21, 34, 'Kit Basico', 0x50726f63657361646f722043656c65726f6e206120312e382047687a0d0a4d656d6f726961204b696e6773746f6e203220474220444452320d0a43442d526f6d, '', 'img_171.jpg', '1', 3500.00, 0.00, '1', 0, 0),
(172, 17, 42, 'Bateria para Portatil DELL XPS 1330', '', '', 'img_172.jpg', '1', 0.00, 0.00, '1', 0, 0),
(173, 7, 4, 'Plotter HP Designjet 510 (CH337A) 42\\\\\\\"', 0x56656c6f636964616420646520696d7072657369c3b36e2028636f6c6f722c2044657369676e6a65742c2063616c696461642065636f6ec3b36d696361293a20332c35206d696e2f70c3a167696e6120656e20736f706f72746573207265637562696572746f732064652041312e20446962756a6f73206c696e65616c65733a203535207365672f70c3a167696e6120656e2041312c20333120696d70726573696f6e657320656e20413120706f7220686f726120656e20736f706f72746573206e6f726d616c657320286dc3a178696d612076656c6f6369646164292c2056656c6f636964616420646520696d7072657369c3b36e2028636f6c6f722c2044657369676e6a65742c2063616c6964616420666f746f6772c3a166696361293a203136206d696e2f70c3a167696e6120656e20736f706f7274657320736174696e61646f732064652041313b204d616e6970756c616369c3b36e206465206c6f73206d6564696f732064652073616c696461206163616261646f733a20416c696d656e7461646f7220646520756e6120736f6c6120686f6a61207920646520706170656c20656e20726f6c6c6f732c20636f727461646f72206175746f6d2e2028636f72746120746f646f73206c6f7320736f706f72746573206578636570746f206c69656e7a6f292c205265736f6c756369c3b36e206f7074696d697a6164612064652068617374612032343030207820312e323030207070703b20312070756572746f20636f6d70617469626c652055534220322e302c20312070756572746f20706172616c656c6f20686f6d6f6c6f6761646f20494545452d313238342c20312072616e7572612064652061636365736f72696f732045494f204a65746469726563742c204d656d6f72696120457374c3a16e6461723a2020313630204d423b2052657175697369746f732064656c2053697374656d613a2057696e646f7773c2ae20323030302c2058502c2053657276657220323030332c2057696e646f77732056697374613b20436f6e73756d69626c6573204e6f2e203832207920436162657a616c6573204e6f2e2031312e, '', 'img_173.jpg', '1', 0.00, 0.00, '1', 0, 0),
(174, 15, 36, 'Toner Samsung MLT-D108S', 0x28312c3530302070c3a1672e29204e6567726f2070617261204d4c2d313634302c204d4c2d32323430, '', 'img_174.jpg', '1', 605.00, 0.00, '1', 0, 0),
(175, 11, 17, 'Access Point Linksys WAP54B', '', '', 'img_175.jpg', '1', 799.33, 0.00, '1', 0, 0),
(176, 12, 4, 'ScanjetHP N9120', 0x5343414e4e45522063616d6120706c616e61207061726120646f63756d656e746f73204850205363616e6a6574204e3931323020284c3236383341293b20457363616e656f206120646f626c6520636172612064652068617374612068617374612035302070706d2f3130302069706d3b2041444620416c696d656e7461646f72206175746f6dc3a17469636f206465203230302070c3a167696e61733b205265736f6c756369c3b36e206465203630302a363030206470692c203438206269747320646520636f6c6f722c20696e746572666173652055534220322e302c2061726561206dc3a178696d61206465206c6563747572613a203239372c322078203433312c38206d6d2028457363616e65612054616d2e20446f626c652063617274612c205461626c6f696465292c20657363616e656120746578746f2c206772c3a16669636f732c20666f746f732079206861737461206f626a65746f7320656e20332d44207573616e646f206c6173207465636e6f6c6f67c3ad6173204343442079204f43523b20436f6d70617469626c6520636f6e20504320284e6f204d4143293b2020496e636c757965206361626c6520656e2063616a613b205065736f3a2031382c39206b672e, '', 'img_176.jpg', '1', 0.00, 0.00, '1', 0, 0),
(177, 11, 48, 'Adaptador Inalambrico USB TP-Link TL-WN322G/TL-WN321G', 0x416461707461646f7220555342207061726120526564657320496e616cc3a16d6272696361732028544c2d574e333232472f544c2d574e3332314729203534204d6270732c206672656375656e636961206120322e3447487a2c20636f6d70617469626c6520636f6e20656c20657374c3a16e646172203830322e3131622f67, '', 'img_177.jpg', '1', 0.00, 0.00, '1', 0, 0),
(178, 10, 12, 'Pentium Dual Core 5200 2.50GHZ', '', '', 'img_178.jpg', '1', 0.00, 0.00, '1', 0, 0),
(179, 9, 14, 'Motherboard AsRock N73v-S', '', '', 'img_179.jpg', '1', 0.00, 0.00, '1', 0, 0),
(180, 16, 49, 'Regulador TDE NET 1000W 4 Contactos', '', '', 'img_180.jpg', '1', 0.00, 0.00, '1', 0, 0),
(181, 8, 3, 'Monitor LG 17 LCD Negro W17425-PF', 0x4d6f6e69746f72204d61726361204c472064652031375c222057494445204c43442c204d6f64656c6f20285731373432352d5046292c205265736f6c756369c3b36e20313434302078203930302c205469656d706f206465205265737075657374612038206d732c20436f6e74726173746520383030303a31202844464329204272696c6c6f2032353063642f6d322c20416e67756c6f2064652056697369c3b36e203137302f3137302c207365c3b1616c20646520656e74726164612020616e616c6f676f28564741292c20462d456e67696e652c207061726120736f706f727465205645534120283735783735292c20436f6c6f72204e6567726f2e, '', 'img_181.jpg', '1', 0.00, 0.00, '1', 0, 0),
(182, 3, 29, 'Disco Duro 160GB 3.5 SATA WD1600AAJS', '', '', 'img_182.jpg', '1', 0.00, 0.00, '1', 0, 0),
(183, 2, 8, 'Kit Teclado y Mouse Easy Line EL-993179', 0x4b6974203220656e2031205465636c61646f204d756c74696d65646961207920526174c3b36e204f707469636f20505332204e7565766f2064697365c3b16f2064656c6761646f2c203133205465636c6173206d756c74696d65646961202f20496e7465726e65742c205465636c61732063c3b36d6f64617320792073696c656e63696f736173206465206d656d6272616e612c20526174c3b36e2063c3b36d6f646f2079206572676f6ec3b36d69636f2c205265736f6c756369c3b36e20c3b3707469636120646520383030206470692e204c696765726f2079206d616e656a61626c652e204d617263612045617379204c696e652c20454c2d3939333031382e, '', 'img_183.jpg', '1', 0.00, 0.00, '1', 0, 0),
(184, 22, 2, 'Memoria Kingston DDR2 2GB 667MHZ', '', '', 'img_184.jpg', '1', 0.00, 0.00, '1', 0, 0),
(185, 5, 8, 'Gabinete Flow PC-600114', 0x476162696e65746520466c6f772c2044697365c3b16f20636f6d706163746f207920706f6465726f736f2c203220626168696173207061726120756e696461642064652043442d524f4d2c203120626168696120646520332e355c222028382c3920636d292c2031204261686961207061726120646973636f206475726f2c2076656e74696c61646f722064652038306d6d2c20372042616869617320646520657870616e73696f6e205043492c20647563746f20657874726163746f72206c61746572616c20706172612070726f63657361646f722e2054617061206c61746572616c20636f6e20746f726e696c6c6f73205c227468756d6273637265775c2220286e6f2072657175696572656e2064657361726d61646f72292c203220436f6e6563746f72657320646520617564696f2066726f6e74616c657320286d696372c3b3666f6e6f207920617564c3ad666f6e6f292c203220436f6e6563746f726573205553422066726f6e74616c65732c20436f6d70617469626c6520636f6e207461726a65746173206d61647265206d6963726f204154582c204675656e746520646520706f6465722064652034303020576174747320636f6d70617469626c6520636f6e20656c20657374616e6461722041545820322e322e204d6172636120506572666563742043686f6963652e2050432d363030313134, '', 'img_185.jpg', '1', 0.00, 0.00, '1', 0, 0),
(186, 4, 8, 'Bocinas PC-111320 200 Watts Negro', 0x50617220646520426f63696e61732032303020576174747320504d504f20636f6c6f72204e6567726f2c2020636f6e74726f6c20646520656e63656e6469646f207920766f6c756d656e2c20636f6e2073616c69646120706172612061756469666f6e6f732c4d6172636120506572666563742043686f696365204d6f64656c6f2050432d313131333230, '', 'img_186.jpg', '1', 0.00, 0.00, '1', 0, 0),
(211, 3, 6, 'CD-RW Sony 700MBSUPL 80 Mins 2X', '', '', 'img_211.jpg', '1', 9.10, 0.00, '1', 0, 0),
(188, 2, 12, 'Ventilador Para Intel LGA 775', '', '', 'img_188.jpg', '1', 0.00, 0.00, '1', 0, 0),
(190, 2, 9, 'Kit Teclado y Mouse Acteck AK-5970 Negro', '', '', 'img_190.jpg', '1', 111.33, 0.00, '1', 0, 0),
(191, 15, 50, 'Cartucho Lexmark 18C1428', '', '', 'img_191.gif', '1', 217.50, 0.00, '1', 0, 0),
(192, 6, 4, 'DVD RV Hp 1260i oem negra', '', '', 'img_192.jpg', '1', 0.00, 0.00, '1', 0, 0),
(193, 2, 9, 'Mouse nini acteck AM-360negro  Usb', '', '', 'img_193.jpg', '1', 0.00, 0.00, '1', 0, 0),
(194, 2, 11, 'Mouse Genius (GM-XSNP) Negro PS2', '', '', 'img_194.jpg', '1', 0.00, 0.00, '1', 0, 0),
(195, 2, 11, 'Mouse Genius (GM-XSNU) Negro Usb Retrac', '', '', 'img_195.jpg', '1', 0.00, 0.00, '1', 0, 0),
(196, 2, 28, 'Lectro-Express 454 Ml', 0x416e7469657374617469636f2050617261207461726a65746173, '', 'img_196.jpg', '1', 0.00, 0.00, '1', 0, 0),
(197, 7, 4, 'Hp Laserjet P1005', 0x496d707265736f7261204c617365724a65742048502050313030352028434234313041292c2048617374612031352070706d204e6567726f3b2054616d2e20496d7072657369c3b36e206dc3a178696d6f3a20323136207820333330206d6d205265736f6c756369c3b36e3a2048617374612036303020782036303020647069204e6567726f3b204369636c6f2064652074726162616a6f3a20486173746120352c303030207070206d65733b20436f6e6563746976696461643a2031205553423b20506172612050432057696e646f77732032303030205345206f207375706572696f723b204e6f20696e636c757965206361626c653b205065736f3a20352c32206b673b20546f6e657220636f6d70617469626c653a204850204342343335412e, '', 'img_197.jpg', '1', 0.00, 0.00, '1', 0, 0),
(198, 15, 4, 'Toner Negro  Hp CB435A', '', '', 'img_198.jpg', '1', 0.00, 0.00, '1', 0, 0),
(199, 10, 12, 'Core 2 Duo E7400 2.80 3 MB Cache', '', '', 'img_199.jpg', '1', 0.00, 0.00, '1', 0, 0),
(200, 8, 3, 'Monitor LG 19\\\" LCD Negro W1934S-BN', 0x4d6f6e69746f72204d61726361204c472064652031395c5c5c5c5c5c5c222057494445204c43442c204d6f64656c6f20285731393334532d424e292c205265736f6c756369c3b36e2031343430783930302c205469656d706f206465205265737075657374612035206d732c20436f6e74726173746520313030303a312c204272696c6c6f203330303063642f6d322c20416e67756c6f2064652056697369c3b36e203137302f3137302c20436f6c6f72204e6567726f2e, '', 'img_200.jpg', '1', 0.00, 0.00, '1', 0, 0),
(201, 6, 36, 'Floppy FDD 1.44MB Color NEGRO', '', '', 'img_201.jpg', '1', 0.00, 0.00, '1', 0, 0),
(202, 11, 48, 'Tarjeta de red PCI Tp-Link TL-WN350G', 0x5461726a657461206465205265642050434920496e616cc3a16d62726963612028544c2d574e33353047292c203534204d6270732c206672656375656e636961206120322e3447487a2c20636f6d70617469626c6520636f6e20656c20657374c3a16e646172203830322e3131672f62, '', 'img_202.jpg', '1', 0.00, 0.00, '1', 0, 0),
(203, 22, 2, 'Secure Digital 16GB Kingston', '', '', 'img_203.jpg', '1', 0.00, 0.00, '1', 0, 0),
(204, 22, 2, 'Micro  Secure Digital co Usb de 2gb A-D', 0x20, ' ', 'img_204.jpg', '1', 0.00, 0.00, '1', 0, 0),
(205, 11, 17, 'Access Point Linksys WAP54G', 0x4361726163746572c3ad737469636173205072696e636970616c6573200d0ae280a22049454545203830322e31316720736f706f7274612076656c6f63696461646573206465207472616e73666572656e636961206465206461746f73206465206861737461203534204d6270730d0ae280a220436f6d70617469626c6520636f6e2076657273696f6e657320616e746572696f726573206465206c6f7320646973706f73697469766f732049454545203830322e313162206578697374656e7465730d0ae280a220436f6e6669677572616369c3b36e20696e616cc3a16d62726963612073656e63696c6c6120636f6e20656c20626f74c3b36e205365637572654561737953657475700d0ae280a220536f706f7274612073656775726964616420575041207920656e6372697074616369c3b36e205745502064652036342f31323820626974730d0ae280a220496e74657266617a206465207573756172696f2077656220696e636f72706f72616461207061726120756e6120636f6e6669677572616369c3b36e2073656e63696c6c61206465736465206375616c7175696572206578706c6f7261646f72207765620d0ae280a2204669726d776172652061637475616c697a61626c65206d656469616e7465206578706c6f7261646f72207765620d0ae280a220536f706f727461206c61732066756e63696f6e6573206465207075656e746520696e616cc3a16d627269636f2c20726570657469646f7220696e616cc3a16d627269636f2c2066696c747261646f20646520646972656363696f6e6573204d4143207920726567697374726f2064652073756365736f730d0a4573706563696669636163696f6e65732054c3a9636e6963617320200d0a457374c3a16e646172657320e280a22049454545203830322e3131672c2049454545203830322e3131622c2049454545203830322e332c2049454545203830322e3375200d0a50756572746f732f626f746f6e657320e280a220556e2070756572746f206372757a61646f206175746f6dc3a17469636f20284d44492f4d44492d58292031302f3130302c2070756572746f20646520616c696d656e74616369c3b36e2c20626f746f6e6573206465207265696e6963696f207920534553200d0a5469706f206465206361626c657320e280a22043617465676f72c3ad6120352028636f6e20636f6e6563746f72657320524a2d343529200d0a4c7563657320e280a220416c696d656e74616369c3b36e2c204163746976696461642c20456e6c616365200d0a506f74656e636961206465207472616e736d697369c3b36e20e280a2203830322e3131673a20486162697475616c6d656e74652031332e35202b2f2d20322064426d20612074656d7065726174757261206e6f726d616c0d0ae280a2203830322e3131623a20486162697475616c6d656e74652031362c35202b2f2d20322064426d206120756e20696e74657276616c6f2064652074656d7065726174757261206e6f726d616c200d0a46756e63696f6e65732064652073656775726964616420e280a2205750412c20656e6372697074616369c3b36e205745502c2066696c747261646f20646520646972656363696f6e6573204d41432c206163746976616369c3b36e2f6465736163746976616369c3b36e20646520646966757369c3b36e2064652053534944200d0a4269747320646520636c6176652057455020e280a22036342f3132382062697473200d0a44696d656e73696f6e657320e280a220313836206d2078203438206d6d207820313639206d6d2028372e3332e2809d207820312e3839e2809d207820362e3635e2809d29200d0a5065736f20e280a220342e36206b672028312e3031206c696272617329200d0a416c696d656e74616369c3b36e2065787465726e6120e280a22031322056204343200d0a4365727469666963616369c3b36e20e280a2204643432c2043452c2057692d466920283830322e3131622079203830322e31316729200d0a, '', 'img_205.jpg', '1', 0.00, 0.00, '1', 0, 0),
(206, 11, 26, 'Bobina Cat 5e Utp 305m Solida Gris', '', '', 'img_206.jpg', '1', 0.00, 0.00, '1', 0, 0),
(207, 11, 26, 'Plug RJ-45 Cat 5e Utp Multifilar', '', '', 'img_207.jpg', '1', 0.00, 0.00, '1', 0, 0),
(209, 22, 2, 'Memoria Kingston DDR2 1GB 667MHZ', 0x20, ' ', 'img_209.jpg', '1', 0.00, 0.00, '1', 0, 0),
(210, 15, 4, 'Toner Amarillo Q6002A', 0x20, ' ', 'img_210.jpg', '1', 0.00, 0.00, '1', 0, 0),
(212, 15, 4, 'HP Cart. Tóner Negro Clave CB540A', 0x557361646f20656e3a2048502070617261204c617365724a657420204350313231352c204350313531384e492e20323230302050c3a167696e6173, '', 'img_212.jpg', '1', 882.55, 0.00, '1', 0, 0),
(213, 15, 53, 'Toner Kyocera TK-112 FS-820/920', '', '', 'img_213.jpg', '1', 1206.00, 0.00, '1', 0, 0),
(214, 17, 4, 'Probook HP 6530B Win7Pro 14.1 C2DP8700 250GB 2GB DVDRW BT WL', 0x20, ' ', ' ', '1', 14268.98, 0.00, '1', 0, 0),
(215, 17, 7, 'Laptop Compaq CPQ515 Linux AthlonX2 250GB 1GB DVDRW', 0x20, ' ', ' ', '1', 6498.99, 0.00, '1', 0, 0),
(216, 7, 4, 'Laserjet HP P1505', 0x20, ' ', ' ', '1', 0.00, 0.00, '1', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `rfc` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `razon` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `colonia` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cp` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `otro` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `web` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `activo` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL,
  `no_cliente` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tipo` enum('0','1','2') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre`, `rfc`, `razon`, `direccion`, `colonia`, `cp`, `ciudad`, `estado`, `pais`, `telefono`, `fax`, `otro`, `email`, `web`, `observaciones`, `activo`, `no_cliente`, `usuario`, `password`, `tipo`) VALUES
(1, 'OFFICE DEPOT', 'ODM-950324-V24', 'OFFICE DEPOT DE MEXICO, S.A. DE C.V.', 'JUAN SALVADOR AGRAZ #101', 'COLONIA SANTAFE', '05300', 'CUAJIMALPAN', 'MEXICO DF', 'MEXICO', '01 800 712 0934', '', '', '', 'www.officedepot.com.mx', '', '1', '', '', '', '0'),
(2, 'TELCEL', 'RDI-841003-QJ4', 'RADIOMOVIL DIPSA, S.A. DE C.V.', 'LAGO ALBERTO #366', 'COLONIA ANAHUAC', '11320', 'MIGUEL HIDALGO', 'MEXICO', 'MEXICO', '25813700', '', '', '', 'www.telcel.com', '', '1', '', '', '', '1'),
(3, 'NICMEX', 'NIC021002MQ6', 'NETWORK INFORMATION CENTER MEXICO S.C.', 'AV.EUGENIO GARZA SAD #427', 'COLONIA ALTAVISTA ', '64840', 'MONTERREY', 'NUEVO LEON', 'MEXICO', ' ', ' ', ' ', ' ', 'http://www.nic.mx/', ' ', '1', ' ', 'rar_grupo', ' ', '0'),
(4, 'TOALA', 'CATL850713SK8', 'SERVICIO Y ASESOCRIA ESPECIALIZADA', '24a PONIETE SUR #211', 'COLONIA SANAT ELENA', '29020', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '', '', '', '', '', '', '1', '', '', '', '0'),
(5, 'SUMINISTROS', 'STU-8805093-925', 'SUMINISTROS DE TUXTLA S.A. DE C.V.', '2a PONIENTE #1184', 'CENTRO', '29000', 'TUXTLA GUTIERREZ ', 'CHIAPAS', 'MEXICO', '6113322', ' ', ' ', ' ', ' ', ' ', '1', ' ', ' ', ' ', '0'),
(6, 'CFE', 'CFE-370814-Q10', 'COMISION FEDERAL DE ELECTRICIDAD', 'AV. PASEO DE LA REFORMA #164', 'COLONIA JUAREZ', '06600', 'MEXICO DF', 'MEXICO', 'MEXICO', '018007116259', '', '', '', '', '', '1', '', '', '', '1'),
(7, 'TELMEX', 'TME840315KT6', 'TELEFONOS DE MEXICO S.A.DE C..V', 'PARQUE CIA #198', 'COLONIA CUAUHTEMOC', '06599', 'MEXICO DF', 'MEXICO', 'MEXICO', '', '', '', '', '', '', '1', '', '', '', '1'),
(8, 'TV EN LINEA', 'TVC0608002NE4', 'TVCENLINEA.COM S.A. DE C.V.', 'CAMINO AL MIRADOR #5216', 'COLONIA PASEO  RESIDENCIAL', '64920', 'MONTERREY', 'NUEVO LEON', 'MEXICO', '', '', '', '', 'http://www.tvcenlinea.com/', '', '1', '', '', '', '0'),
(9, 'VIJIA', 'PEV0405212K8', 'PROTECCION ESPECIALIZADA VIJIA S.A DE C.V.', '15 PONIENTE NORTE #233-A', 'COLONIA MONTEZUMA', '29030', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '6029260', ' ', ' ', ' ', ' ', ' ', '1', ' ', ' ', ' ', '0'),
(10, 'FOTO CLAUDIA', 'DFC-790223-AHO', 'DISTRIBUIDORA FOTOGRAFICA CLAUDIA S.A. DE C.V.', '16 PONIENTE SUR #677', 'COLONIA XAMAIPAK', ' ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '6027067', ' ', ' ', ' ', ' ', ' ', '0', ' ', ' ', ' ', '0'),
(11, 'MANDIOLAQ', 'FMA-840829-K98', 'FERRETERA MANDIOLA S.A. DE C.V.', '3av. SUR PONIENTE #336', 'CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS ', 'MEXICO', '6130422', ' ', ' ', 'FMANDIOLA@HOTMAIL.COM', ' ', ' ', '1', ' ', ' ', ' ', '0'),
(12, 'MATERIAL ELECTRICO', 'MEC-840611-B16', 'MATERIAL ELECTRICO DE CHIAPAS S.A. DE C.V.', '1aPONIENTE SUR #747', 'CENTRO', '29000', 'TUXTLA GUTIERREZ ', 'CHIAPAS', 'MEXICO', '6120456', ' ', ' ', ' ', ' ', ' ', '1', ' ', ' ', ' ', '0'),
(13, 'SKY', 'CNO960830IT7', 'CORPORATIVO NOVAVISION S. DE R.L. DE C.V.', 'INSURGENTES SUR #694', 'COLONIA DEL VALLE DE MEXICO', ' ', 'MEXICO DF', 'MEXICO DF', 'MEXICO', '018004759759', ' ', ' ', ' ', 'WWW.SKY.COM.MX', ' ', '1', ' ', ' ', ' ', '0'),
(14, 'SULIM', 'SLI-830801-6Z7', 'SURTIDORA DE LIMPIEZA S.A. DE C.V.', 'AV. PRIMAVERA #225-A', 'COLONIA JARDINES DE TUXTLA', '29020', 'TUXTLA GUTIERREZ ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1', ' ', ' ', ' ', '0'),
(15, 'STEREN', 'EC1970918G14', 'ELECTRONICA CHIAPAS S.A. DE C.V.', '2aORIENTE SUR #145', 'COLONIA CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1', ' ', ' ', ' ', '0'),
(16, 'SAM´S', 'NWN9709244W4', 'NUEVA WOLMART DE MEXICO S. DE R.L. DE C.V.', 'NV. NEXTENGO #78', 'COLONIA SANTA CRUZ', '02770', 'ACAYUCANDE AZCAPOTZALCO', 'MEXICO', 'MEXICO', '018007106352', '', '', '', 'WWW.SAMS.COM.MX', '', '1', '', '', '', '0'),
(17, 'DFS', 'DSF-030211-JJ8', 'DUARTE´S FUTURE SYSTEMS S.A. DE C.V.', '11 PONIENTE NORTE #516', 'COLONIA CENTRO', '29000', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '6113880', '', '', '', 'WWW.DFSMAYORISTAS.COM.MX', '', '1', '856', '', '', '0'),
(18, 'CT', '', 'CT INTERNACIONAL DEL NORTE S.A. DE C.V.', 'QUINTA PONIENTE #1740 COLONIA ', 'COVADONGA ', 'CP.29030 ', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '1251657', '', '', '', 'http://www.ctin.com.mx/', '', '1', '0342', 'ADMIN', 'CYBAC123', '0'),
(19, 'COMPUGOLFO', '', 'COMPUGOLFO S.A. DE S.V.', 'Avenida 5ta. Nte. Pte. 2498', 'Col.Las Brisas,', '29030', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MEXICO', '(961) 1251476', '', '', '', 'http://www.compugolfo.com.mx/', '', '1', '', '', '', '0'),
(20, 'PCHARWARE', ' ', 'PCHARWARE S.A. DE C.V.', 'Calle 17A #101', 'Col. Itzimná', '97100', 'MERIDA', 'YUCATAN', 'MEXICO', '(999) 254-2525', '(999) 254-2525', ' ', ' ', 'http://www.pchardware.com.mx', ' ', '1', ' ', ' ', ' ', '0'),
(21, 'OFFICE MAX', ' ', 'OPERADORA OMX S.A. DE C.V.', 'LATERAL AUTOPISTA MEXICO TOLUCA #1235', 'COLONIA SANTAFE CUAJIMALPA', '05300', 'CUAJIMALPA', 'MEXICO DF', 'MEXICO', '91772800', ' ', ' ', ' ', ' ', ' ', '1', ' ', ' ', ' ', '0'),
(22, 'BARWARE', '', 'BARWARE, S.A. DE C.V.', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '0'),
(23, 'INTECPLAN', 'MACD710630RH5', 'DAVID MARQUEZ CORREA', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '0'),
(24, 'COPYFAX', 'CFS890405P66', 'COPYFAX DEL SURESTE S.A. DE C.V.', '16 PONIENTE NORTE No. 308', 'COL. LAS ARBOLEDAS', '29030', 'TUXTLA GUTIERREZ', 'CHIAPAS', 'MÉXICO', ' ', ' ', ' ', ' ', 'www.copyfax.com.mx', ' ', '1', ' ', ' ', ' ', '0'),
(25, 'GASOLINA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '1'),
(26, 'INGRAM MICRO', 'IMM930401GZ4', 'INGRAM MICRO MEXICO S.A. DE C.V.', 'LAGUNA DE TERMINOS 249', 'ANAHUAC', '11320', 'MIGUEL HIDALGO', 'DISTRITO FEDERAL', 'MÉXICO', ' ', ' ', ' ', ' ', ' ', ' ', '1', ' ', ' ', ' ', '0'),
(27, 'HOSTGATOR', '', 'HOSTGATOR.COM', '11251 NORTHWEST FREEWAY SUITE 400', '', '', 'HOUSTON', 'TEXAS', 'UNITED STATES OF AMERICA', '', '', '', '', '', '', '1', '', '', '', '1'),
(28, 'GMAC', '', 'GMAC', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '1'),
(29, 'IMSS', ' ', 'INSTITUTO MEXICANO DEL SEGURO SOCIAL', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '1', ' ', ' ', ' ', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int NOT NULL,
  `tipo` varchar(20) NOT NULL DEFAULT '',
  `cliente` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `telefono` varchar(20) NOT NULL DEFAULT '',
  `celular` varchar(20) NOT NULL DEFAULT '',
  `fecha` date NOT NULL,
  `equipo` varchar(20) NOT NULL DEFAULT '',
  `marca` varchar(20) NOT NULL DEFAULT '',
  `modelo` varchar(20) NOT NULL DEFAULT '',
  `serie` varchar(255) DEFAULT NULL,
  `falla` tinytext NOT NULL,
  `condiciones` tinytext NOT NULL,
  `recibio` varchar(40) NOT NULL DEFAULT '',
  `status` varchar(20) NOT NULL DEFAULT '',
  `reparacion` tinytext NOT NULL,
  `precio` int DEFAULT '0',
  `anticipo` int DEFAULT '0',
  `restante` int DEFAULT '0',
  `fecha2` date DEFAULT NULL,
  `idweb` varchar(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `tipo`, `cliente`, `email`, `telefono`, `celular`, `fecha`, `equipo`, `marca`, `modelo`, `serie`, `falla`, `condiciones`, `recibio`, `status`, `reparacion`, `precio`, `anticipo`, `restante`, `fecha2`, `idweb`) VALUES
(1, 'Normal', 'Anahi Marroquin', 'admin@gmail.com', '961487596', '9614785619', '2016-10-28', 'ipad', 'apple', 'asd254|', NULL, 'Bloqueo', '0', 'Ariel', 'Reparacion', '', 580, 100, 0, '0000-00-00', '9634'),
(2, 'Normal', 'anahi', 'carlos@gmail.com', '9610548974', '9614785619', '2016-10-28', 'ipad', 'apple', 'asd254|', NULL, 'adad', 'qwer', 'Ariel', 'Reparacion', '', 458, 458, 0, '0000-00-00', '6166'),
(3, 'Normal', 'anahi', 'carlos@gmail.com', '9610548974', '9614785619', '2016-10-28', 'ipad', 'apple', 'asd254|', NULL, 'adad', 'qwer', 'Ariel', 'Reparacion', '', 458, 458, 0, '0000-00-00', '4751'),
(4, 'Normal', 'anahi', 'carlos@gmail.com', '9610548974', '9614785619', '2016-10-28', 'ipad', 'apple', 'asd254|', NULL, 'adad', 'qwer', 'Ariel', 'Reparacion', '', 458, 458, 0, '0000-00-00', '4970'),
(5, 'Normal', 'anahi', 'carlos@gmail.com', '9610548974', '9614785619', '2016-10-28', 'ipad', 'apple', 'asd254|', NULL, 'adad', 'qwer', 'Ariel', 'Reparacion', '', 458, 458, 0, '0000-00-00', '9441'),
(6, 'Normal', 'anahi', 'carlos@gmail.com', '9610548974', '9614785619', '2016-10-28', 'ipad', 'apple', 'asd254|', '', 'adad', 'qwer', 'Ariel', 'Reparacion', '', 458, 458, 0, '0000-00-00', '9238'),
(7, 'Normal', 'Adolfo Solis', 'adolfoss@prodigy.net.mx', '', '+5219611130670', '2016-10-31', 'Laptop', 'HP', 'HP 240', NULL, 'Outlook no envia correos, equipo se esta apagando', 'Pasa a dejar cargador.', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '2108'),
(8, 'Normal', 'Edmundo Gonzalez', 'fentder@hotmail.com', '', '9611315772', '2016-11-09', 'HP ', '', '', '', 'Equipo ya no encendio, cliente retiro el DD y desea se verifique el funcionamiento de la laptop. ', 'Viene abrierta los tornillos por separado.', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '4528'),
(9, 'Normal', 'Jose Jeronimo Roblero', 'antrax07@hotmail.com', '', '9613187515', '2017-05-25', 'Laptop', 'Compaq', 'Presario CQ56-103LA', NULL, 'Cambio de display', 'No deja cargador, sin referencia de contraseÃ±a de usuario.\r\n', 'Ariel', 'Reparacion', '', 0, 1000, 0, '0000-00-00', '5300'),
(10, 'Normal', 'Jassiel Almaraz', '', '', '9541271079', '2017-05-31', 'Portatil', 'ASUS', 'S200E', NULL, 'No inicia Windows', 'Dejar Cargador Ovaltech', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '7346'),
(11, 'Normal', 'Carolina Constantino', '', '', '2223607331', '2017-09-27', 'Laptop', 'ACER ', 'ASPIRE 6397', '', 'No enciende necesitan saber si la bateria funciona. Saber el problema del fallo.\r\nHablar al cliente para que despues del diagnostico el equipo se formatee y se intale paqueteria indicada. ', 'Portatil color azul entrega cable de alimentacion y/o cargador', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '4496'),
(12, 'Normal', 'Veronica Velazquez', '', '', '9611063547', '2017-09-29', 'Laptop blanca', 'HP', '14 bs007la', NULL, '', 'InstalaciÃ³n de paqueteria Office y antivirus', 'Ariel', 'Reparacion', '', 200, 0, 0, '0000-00-00', '8472'),
(13, 'Normal', 'Adolfo Solis', 'adolfo@sendamaya.com', '', '9612159951', '2017-10-17', 'Portatil', 'HP', 'Pavillion x360', NULL, 'Instalacion de Office 2013', '', 'Ariel', 'Reparacion', '', 200, 0, 200, '0000-00-00', '5034'),
(14, 'Normal', 'Gamaliel Zambrano', 'gamazambrano@gmail.com', '', '9661088758', '2017-11-07', 'Laptop gris', 'Toshiba Satellite', 'c50', NULL, 'Bisagra daÃ±ada / posiblemente tapa y/o marco de display roto.', 'usada / deja cargador con eliminador.', 'Omar', 'Reparacion', '', 200, 0, 0, '0000-00-00', '3788'),
(15, 'Normal', 'Janeth', '', '', '', '2017-12-04', 'Laptop Morada', 'Acer', 'Aspire', NULL, 'El cliente informo directamente a Ariel del fallo.', 'Sin pila, carcasa rayada. Trae cargador.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '9303'),
(16, '', '', '', '', '', '2017-12-04', '', '', '', NULL, '', '', '', 'Reparacion', '', 0, 0, 0, '0000-00-00', '9688'),
(17, '', '', '', '', '', '2017-12-15', '', '', '', NULL, '', '', '', 'Reparacion', '', 0, 0, 0, '0000-00-00', '4253'),
(18, 'Normal', 'Jaciel Almaraz', 'almarazmelgar@live.com.mx', '', '9541271079', '2018-01-10', 'Laptop ', 'ASUS', 'S2003', NULL, 'Equipo no permite desinstalar nada, No permite el acceso al panel de control\r\n\r\nPosible error o conflicto con software de antivirus, cliente indica uso frecuente de medios extraibles en su PC.\r\n\r\n', 'Deja cargador del equipo,\r\nMEdio uso, adaptador pared tierra fisica.\r\nOval tech / eliminador.\r\n\r\n', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '5013'),
(19, '', '', '', '', '', '2018-01-10', '', '', '', NULL, '', '', '', 'Reparacion', '', 0, 0, 0, '0000-00-00', '5090'),
(20, '', '', '', '', '', '2018-01-16', '', '', '', NULL, '', '', '', 'Reparacion', '', 0, 0, 0, '0000-00-00', '7484'),
(21, '', '', '', '', '', '2018-01-29', '', '', '', NULL, '', '', '', 'Reparacion', '', 0, 0, 0, '0000-00-00', '6943'),
(22, 'Normal', 'Guillermo Sanche Olmedo', '', '', '96111159073', '2018-04-03', 'Lalptop', 'Toshiba Ultrabook i5', 'Satellite', NULL, 'Formateo WIN 7 / 10\r\nInstalacion de software Office y autocad  espaÃ±ol.', 'No es necesario respaldar info.\r\nDeja cargador\r\nContraseÃ±a\r\nmemin1962 (minusculas)', 'Omar', 'Reparacion', '', 300, 300, 0, '0000-00-00', '9774'),
(23, 'Normal', 'Jose Constantino', '', '', '9611555169', '2018-04-23', 'All in One', 'Dell', '', NULL, 'Equipo se congelo y el cliente forzo reinicio con boton encendido. Equipo ya no inicio y quedo en negros, cliente indica que solo se escuhca el encendido pero el equipo ya no hace más.', 'Dejo cargador y usb red/ sin teclado, ni mouse', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '3305'),
(24, 'Normal', 'Guillermo Obregon Velazco', '', '', '9611343032', '2018-04-23', 'Impresora', 'Brother', 'DCP 1512', NULL, 'Cliente indica que no tiene certeza de conexion,no escanea no imprime.', 'deja cable de corriente.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '6793'),
(25, 'Normal', 'Francisco Javier Ireta Munguia', 'iretamunguia@gmail.com', '', '9211823715', '2018-05-28', 'Portatil', 'Lenovo', 'Thinkpad', NULL, 'Formateo / Instalacion SO y Aplicaciones.', 'SN R8-5KPP6 10/09 \r\n\r\nEl equipo trae contraseÃ±a / deja cargador\r\n', 'Omar', 'Reparacion', '', 300, 0, 0, '0000-00-00', '7246'),
(26, 'Normal', 'Jonatham Molina', '', '', '9613231494', '2018-05-31', 'MiniLap', 'Emachines', '355', NULL, 'Esta falso el centro del cargador, no sirve la pila.', '', 'Carlos', 'Reparacion', '', 0, 0, 0, '0000-00-00', '4164'),
(27, 'Normal', 'Club de Leones', '', '', '', '2018-06-08', 'Laptop', 'DELL', '', NULL, 'Detalles en el tema de contraste alto, antivirus', '', 'Ariel', 'Reparacion', '', 100, 100, 0, '0000-00-00', '8237'),
(28, 'Normal', 'Veronica Hernandez', '', '', '9612776455', '2018-06-26', 'imac', 'Apple', '', NULL, 'El equipo esta lento', '', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '8432'),
(29, 'Normal', 'Erick Garcia', '', '', '', '2018-07-04', 'pc', '', '', NULL, 'no reconoce el sistema operativo, falla en la bios', '', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '9916'),
(30, 'Normal', 'Grajales', '', '', '', '2018-07-04', 'Laptop', 'Acer', '', NULL, 'Error al abrir Outlook', '', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '8947'),
(35, 'Normal', '', '', '', '', '2018-08-13', 'Laptop', 'Lenovo', '', NULL, 'No prende, no se tiene el cargador.', '', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '7244'),
(36, 'Normal', 'Ricardo Chanona', 'richard_craft45@hotmail.com', '', '9612801978', '2018-08-13', 'Laptop', 'DELL', 'Inspiron 14 - 5447', NULL, 'No enciende o carga, dueño no sabe si se daño pila eliminador o cable del eliminador.', 'Dejo cargador [eliminador y cable] ', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '1730'),
(37, 'Normal', 'Lucia Castro', '', '', '9611149395', '2018-09-01', 'COMPUTADOR PORTATIL', 'DELL', 'INSPIRON 3420', NULL, 'Equipo en desuso quieren echarlo a andar y ver si queda con el restablecimiento y formateo.\r\nSsino es posible ver que costo tendria y ver si conviene o no ponerla en funcionamiento otra vez.', 'Laptop roja con cargador y eliminador.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '5859'),
(38, 'Normal', 'Manuel Blancarte Rincom', 'blari23@hotmail.com', '', '9611522285', '2018-09-11', 'ALL IN ONE', 'HP', '', NULL, 'Equipo dio pantallazo azul y cliente indica se restableció completamente el equipo ya que no hay programas ni información', 'Cliente señala que el equipo se restauró en CYBAC en servicio anterior/ el cliente quiere que se ponga el respaldo que se tiene de ese equipo y una portátil que también dejo. Ambos respaldos  en el equipo de escritorio. Reestablecer la información en la A', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '5741'),
(39, 'Normal', 'Gabriel Rojas', 'gabrielesro24@hotmail.com', '', '9615794850', '2018-09-12', 'Portatil', 'HP', 'MINI 110', NULL, 'Equipo lento por instalación de antivirus. quiere que se ponga a punto. Limpieza o actualizar el sistema.\r\n', 'Deja cargador, equipo negro. Contraseña: gabriel', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '1347'),
(40, 'Normal', 'Gabriel Rojas', '', '', '9615794850', '2018-09-12', 'Portatil', 'HP', '15AC114LA', NULL, 'Equipo lento requiere antivirus / Limpieza o actualizar software ', 'DEJA ELIMINADOR | EQUIPO BLANCO Constraseña: imchisa o \"gordita56\"', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '5836'),
(41, 'Normal', 'Ing. Elmar', '', '', '', '2018-09-18', 'Portatil', 'HP', 'Pavillion G4', '', 'Cambio de Display', 'Deja cargador', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '3577'),
(43, 'Normal', 'Martin Mendoza', 'agrojaguar.chiapasq@outlook.com', '', '9612511422', '2018-11-07', 'Prolian ML30 Gen9', '', '', '', 'El equipo necesita re instalación de Windows Server 2016, ademas de respaldo de información . \r\n** IMPORTANTE**\r\nResplado carpeta en c:/ AEI', 'Equipo viene en caja, deja cable VGA y Cable de corriente\r\n** CLAVE DE ACCESO**\r\nuser ADMINISTRATOR / Administrator\r\npass Agromixteca2017\r\n', 'Omar', 'Reparacion', '', 900, 400, 500, '0000-00-00', '9982'),
(44, 'Normal', 'Maria Elema Dominguez', '', '', '9612545325', '2018-11-15', 'Portatil', 'HP', '', '', 'Video va a negrso, se apaga.... ya no encendio despues de actividad normal. CLiente indica apagones repentinos. \r\nEquipo con 6 meses de uso.', 'Deja cargador con alimentador \r\nContraseña:\r\nromeo09 PASS', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '4554'),
(45, 'Normal', 'Julio Cesar Isucar Lauriano', '', '', '9613178392', '2018-11-23', 'Portatil', 'HP', '15-AW002LA', '5CD652402W', 'Instalación de Paqueteria ADOBE', 'Deja Cargador', 'Ariel', 'Reparacion', '', 250, 0, 0, '0000-00-00', '8564'),
(46, 'Normal', 'Antonio Celorio', '', '', '9611300080', '2019-02-07', 'Portatil', 'HP', '', '', 'Limpieza contenido, respaldo de archivos FOTO y video en Disco duro externo.\r\nEl sistema al encender se apaga y reiniciar.\r\n', '', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '1974'),
(47, 'Normal', 'Gabriela Solis Nucamendo', '', '', '', '2019-02-13', 'Portatil', 'HP ', '4d020la', '', 'Equipo No enciende, cliente indica que no sabe si es por pila o falla del cargador.\r\nFuncionaba normalmente.', 'Equipo blanco, deja cargador con cable.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '1018'),
(48, 'Normal', 'Marco Antonio Penagos Manzanos', 'marcopenagos1@hotmail.com', '', '9613181679', '2019-02-25', 'Portatil', 'ASUS', '', 'H5NOCV083527202', 'Cotización carcaza / visagras superiores / tono rosa', '', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '2840'),
(49, 'Normal', 'Claudia Diaz', '', '', '9611779250', '2019-03-01', 'All in One', 'HP', '', '', 'Equipo no deja escanear documentos, En la pantalla le marca un error', 'Deja eliminador cargador con cable / sin daños fisicos visibles en equipo. No se encendió al recibir.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '3618'),
(50, 'Normal', 'Antonio Celorio', '', '', '9611300080', '2019-03-02', 'Tableta ', 'Apple', 'iPad', '', 'Se bloqueo', 'Deja cable con cargador eliminador.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '3443'),
(51, 'Normal', 'Alfredo Leon', '', '', '', '2019-03-12', 'Portatil', 'HP', 'RTL8723BENF', '', 'El cliente indico directamente a Ruben los detalles a realizar.', 'Dejan equipo con cargador  /  eliminador y ademas un disco duro externo Toshiba 2 tb en su caja para respaldo de información. Trae un micro USB en un puerto pudiendo ser WIFI y/o adpatador bluetooth', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '9257'),
(52, 'Normal', 'Alfredo Leon', '', '', '', '2019-03-12', 'TABLETA', 'IPAD', 'MINI', '', 'Se le indico a Ruben los requerimientos para el servicio', 'Deja cargador con cable', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '8572'),
(53, 'Normal', 'Alejandro Espinosa', '', '', '9615791472', '2019-06-12', 'Portatil', 'Vaio', '', '', 'Display presenta pantalla blanca.', 'Tapa y visagras desarmadas. Se observa trabajo previo de revisión. Visiblemente golpes en equipo, marco de display y carcaza exterior. No se probo salida de video.', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '4431'),
(54, 'Normal', 'Andres Jean Aguirre', '', '', '9612833569', '2019-06-14', 'Portatil', 'DELL', 'DELL g5 15', '', 'No tiene salida de audio. Posterior a una actualización de sistema operativo el computador dejo de emitir audio.', 'El usuario deja cargador con eliminador original / estado físico del computador. No tiene golpes visibles. \r\nPIN / 2805', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '3781'),
(55, 'Normal', 'Andres Jean Aguirre', '', '', '9612833569', '2019-06-28', 'Portatil', 'DELL', 'DELL g5 15', '', 'No tiene salida de audio. Posterior a una actualización de sistema operativo el computador dejo de emitir audio.\r\nSe realizo servicio previo para corrección de este error. ', '', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '5191'),
(56, 'Normal', 'Carlos Gutierrez', '', '', '9612177972', '2019-07-11', 'Portatil', 'Asus', 'X556U', '', 'Equipo Lento, revisar si necesita formatear', '', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '4676'),
(57, 'Normal', 'Antonio Nanguyasmu Morales', 'antonio_geko@hotmail.com', '', '9611346244', '2019-07-22', 'All in One', 'ACER', '', 'DOSVAAL004424035D53000', 'Tarda mucho el arranque, revisión del sistema ', 'deja eliminador de corriente', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '9590'),
(58, 'Normal', 'Carlos Narvaez', '', '', '', '2019-09-23', '', '', '', '', 'El equipo no enciende (monitor no se ve, indica cliente que el noton de encendio si se prende pero no ve nada)', 'Deja solo CPU AOI y cargador', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '6091'),
(59, 'Normal', 'Javier Zepeda', '', '', '961 235 72', '2019-10-04', 'All In One', 'HP', '', '', 'Indica cliente que estaba actualizando Windows y ya no reinicio.  Equipo de color blanco', 'Deja eliminador cargador. Sin tecelado, sin mouse.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '6053'),
(60, 'Normal', 'Omar Castañeda', 'omar@grupocybac.com', '9611655283', '9611655283', '2019-10-21', 'Portatil', 'DELL', 'N4030 INSPIRON', '456454564dsfgdfg6', 'EL ventilador no funciona.', 'Deja cargador con eliminador, no trae pila el equipo. Carcaza con rasguños moderados.\r\n', 'Omar', 'Reparacion', '', 350, 150, 200, '0000-00-00', '5873'),
(61, 'Normal', 'Maria Fernanda Lara', '', '', '9611296423', '2020-01-02', 'Portatil', 'DELL', 'G1GRM52', '34914145814', 'No enciende, teclas fallando', 'Deja Cargador', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '4638'),
(62, 'Normal', 'Lucia Castro', 'lucy@sendamaya.com', '', '9611149396', '2020-01-07', 'Portail', 'Lenovo', 'Z40-70', 'YB07804994', 'Se daño un puerto USB por golpe. Quedo inscrutado un conector bluetooth del mouse en su interior y la carcaza tambien quedo semi abierta.\r\nRevisar estado del equipo en velocidad.', 'Equipo color blanco, Buen estado. Deja eliminador con cable original.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '4872'),
(63, 'Normal', 'Edgar Esponisa', 'eespinosa_mendoza@hotmail.com', '9612121435', '', '2020-01-14', 'Portatil', 'HP', '14-bs  2la', '5CD7186FKF', 'Display estrellado [ROTO] / Cotizar para reemplazo.', 'Deja cargador eliminador original.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '7538'),
(64, 'Normal', 'Carlos Cruz', 'carloscruz_mx@hotmail.com', '', '9612193646', '2020-01-31', 'Portatil', 'HP', 'dv2500', '2ce747420j', 'Se desconoce estado del equipo y funcionamiento general. No trae cargador y se debe revisar el hardware general del equipo. Cliente solicita Actualización de OS y respaldo de información del disco. Requiere cotizar cargador para equipo.\r\n', 'Equipo vista general buen estado, etiquetas visibles de licencia, Sin cargador', 'Omar', 'Reparacion', '', 450, 0, 0, '0000-00-00', '3690'),
(65, 'Normal', 'Jorge Martinez', 'jorgeo.mtzhdz@gmail.com', '', '9611984119', '2020-02-12', 'Portatil', 'HP', 'ENVY  m4 Entretainme', 's/n', 'El equipo se cayo, posible daño de disco duro. Teclado sin la tecla \" \" , carcaza ligerante flacida lado izquierdo.\r\nNo arranca normalmente el sistema del equipo. No se pudo checar completamente funcionamiento de display.\r\nVentilador enciende, se calienta', 'Deja cargador con eliminador', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '9482'),
(66, 'Normal', 'Andres Jean Aguirre', '', '', '9612833469', '2020-03-13', 'Portatil', 'DELL', 'P72F', '6T3ZXR2', 'Problemas con el sonido', 'Deja cargador', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '6896'),
(67, 'Normal', 'AURORA OLIVA', '', '', '9616578351', '2020-03-19', 'Portatil', 'Sony', 'SVF11N13CLB', '546908740001221', 'NO ENCIENDE', 'DEJA CARGADOR', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '8306'),
(68, 'Normal', 'Mariana Cuesta', '', '', '9613594302', '2020-04-06', 'Portaíl', 'HP', '', '', 'Le cayo vino en el teclado parte superior izquierda. No se apago al momento pero ya despues no encendio.', 'Deja cargador y leminador. Model RMN-TPN-W125', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '7814'),
(69, 'Normal', 'Daniel Narváez', '', '', '55 6657 22', '2020-04-29', 'Impresora', 'HP', 'M1120', '', 'No jala bien las hojas', 'deja cable de corriente y toner gold', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '6246'),
(70, 'Normal', 'Clemente Hernandez', '', '', '9611529689', '2020-06-05', 'All in One', 'Lenovo', '', '', '', 'Deja cable de corriente con eliminador.\r\nLa persona que deja el equipo desconoce la falla del mismo.\r\nNo trae teclado ni mouse.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '8576'),
(71, 'Normal', 'Jose Luis Ruiz', '', '', '9616524118', '2020-06-12', 'Escritorio', 'Ensamble', 'Gamer', '', 'El equipo se apaga', 'Deja CPU', 'Ariel', 'Entregado', 'Revisión del Equipo', 0, 0, 0, '2024-11-14', '6671'),
(72, 'Normal', 'Diana Meneses', 'dianameneses_a@hotmail.com', '', '9611177251', '2020-10-22', 'All in One', 'Gateway', 'ZX6960', '1200766530', 'Formateo', 'No deja cables, sin teclado, sin mouse.', 'Omar', 'Reparacion', '', 400, 0, 0, '0000-00-00', '8894'),
(73, 'Normal', 'Araceli Chanona Suarez', '', '', '9611891818', '2020-10-26', 'Portatil', 'Asus', 'Transformer book', '', 'Necesita Actualización', 'Deja Cargador', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '5123'),
(74, 'Normal', 'Fernando Cano', '', '', '9611777235', '2020-12-07', 'AIO', 'HP', '', '', 'Equipo no enciende, dejan para valoración.', 'No trae teclado, ni mouse, viene con usb del fabricante en uno de los puertos posteriores.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '8994'),
(75, 'Normal', 'Gonzalo Gonzalez', '', '', '5554135514', '2021-02-25', 'Portatil', 'DELL', 'Latitude ', '', 'Problemas al Encender', 'Deja Cargador ', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '2664'),
(76, 'Normal', 'Toni Diaz', '', '', '9614508456', '2021-03-23', 'Escritorio', 'Ensamblado', '', '', 'No da video', 'Deja Solo CPU', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '3534'),
(77, 'Normal', 'Rosa Maria Gomez Santiz', 'wuliber2001rosy@gmail.com', '', '9612422313', '2021-05-11', 'All inOne', 'ACER', '', '', 'Reinstalacion de Win 8.1', 'Deja cargador, teclado acer, muose generico.\r\nSe realizo servicio de instalación.\r\nSe entrego equipo 11/05/2021\r\n', 'Ariel', 'Reparacion', '', 300, 0, 0, '0000-00-00', '2534'),
(78, 'Normal', 'Francisco Javier Ireta', '', '', '9611557410', '2021-05-25', 'Portatil', 'Lenovo', 'T410', '', 'Se derramo agua sobre el teclado, revisar bateria cmos y webcam', 'se realizo limpieza interna, fisura en la parte derecha de la carcasa superior, ya la habían abierto faltaban tornillos, hasta el momento funcionando, pide contraseña para ingresar al operativo', 'Ariel', 'Reparacion', '', 800, 0, 0, '0000-00-00', '6190'),
(79, 'Normal', 'Toño Contreras', '', '', '9612694936', '2021-05-26', 'Portatil', 'Gateway', 'V5WT2', '', 'No enciende', 'Se realizo limpieza en tarjeta madre se detecto sarro, probablemente húmeda o se mojo, equipo encendió y se realizo pruebas de funcionamiento, queda con el operativo que tenia win 8 y se activo office, queda funcionando sin problemas. se requiere cambiar ', 'Ariel', 'Reparacion', '', 600, 0, 0, '0000-00-00', '6162'),
(80, 'Normal', 'Toño Contreras', '', '', '', '2021-05-26', 'Portatil', 'Toshiba', 'Satelite L845D', '', 'No encinende, falso en pantalla', 'Se realizo el cambio de display y disco duro, se instalo windows 8.1, queda funcionando correctamente.', 'Ariel', 'Reparacion', '', 2100, 0, 0, '0000-00-00', '8669'),
(81, 'Normal', 'Conocido', '', '', '', '2021-06-07', 'Laptop color blanca', 'Toshiba', 'Satellite L755', '1C163972W', 'Revisar display, licencia de Windows, revisar batería.\r\nObservaciones: (Detalles estéticos y enciende solo al abrir...)', 'El display necesitaría cambiarse, se activo la licencia de office y Windows, la batería necesita cambiarse solo dura 5 min. y el juego de angry se necesita guardar el proceso con facebook.', 'Ariel', 'Reparacion', '', 300, 0, 0, '0000-00-00', '5253'),
(82, 'Normal', 'Clarisa Rojas', '', '', '', '2021-06-14', 'Laptop ', 'DELL', '', '', 'ninguna pasar el outlook a la otra computadora ', 'en buen estado ', 'William', 'Reparacion', '', 0, 0, 0, '0000-00-00', '5628'),
(83, 'Normal', 'Carlos Cabrera', '', '', '', '2021-07-12', 'Laptop', 'Dell', '', '', 'Se comunicará con Ruben el sr. Carlos cabrera. para los detalles.', 'se recibió un equipo, cargador y funda para laptop de color azul.', 'Carlos', 'Reparacion', '', 0, 0, 0, '0000-00-00', '7136'),
(84, 'Normal', 'Rocío Esquinca ', 'maresarquitectos@hotmail.com', '9611106593', '9611106593', '2021-07-23', 'Laptop ', 'ASUS Y DELL', '', '', 'ASUS- NECESITA ESTAR CONECTADA PARA QUE FUNCIONE, RESPALDO DE ARCHIVOS, ESTÁ MUY LENTA, INSTALACIÓN ANTIVIRUS.\r\nDELL- ESTA LENTA , INSTALAR ANTIVIRUS Y HACER UN RESPALDO \r\nCONTRASEÑA: pciosa', 'en buenas condiciones\r\ndejo cargadores ', 'Carlos', 'Reparacion', '', 0, 0, 0, '0000-00-00', '3104'),
(85, 'Normal', 'Marisol Ceballos', 'marisolceballos@hotmail.com', '9615791594', '9615791594', '2021-12-10', 'HP Smart ', 'HP Smart', 'Touch', '', 'De repente se apaga , como si perdiera energía', 'buenas condiciones', 'William', 'Reparacion', '', 0, 0, 0, '0000-00-00', '1026'),
(86, 'Garantia', 'Secretaría de Seguridad y Protección Ciudadana', '', '', '9611063380', '2022-01-28', 'Escritorio', 'Lenovo', 'M720S', 'MJ0CJ2ZZ', 'Disco Duro', 'Deja Solo CPU\r\nTrae el Equipo: Miguel Angel Arce Lopez\r\nNo. Caso Lenovo: 4002856609', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '5037'),
(87, 'Normal', 'Keren Belén Castillo', '', '', '9612401532', '2022-02-03', 'computadora, cargado', 'hp', '', '', 'instalaciòn de coreldraw', '', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '4185'),
(88, 'Normal', 'Oscar Victorio Camacho', '', '', '9191246103', '2022-12-16', 'Disco Duro Externo', 'ADATA', '', '', 'No inicia, intenar sacar la información', '', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '3726'),
(89, 'Normal', 'Belen Castillo', '', '', '9612401532', '2024-01-17', 'Laptop color blanco', 'HP', '', '5CG5323V6X', 'No enciende, se apaga. O no prende.', 'Deja cargador eliminador.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '5933'),
(90, 'Normal', 'Sofia Claderon', 'sofiaicr9@gmail.com', '', '9611784437', '2024-07-19', 'Laptop', 'HP', '15-bw005la', 'CND7362VXN', 'Requiere formateo y re instalación de software. ', 'Revisión de teclado, posible daño por caída. El equipo se abre ligeramente al abrir la pantalla a su posición. Deja eliminador cargador\r\ncontraseña: 5071', 'Omar', 'Reparacion', '', 600, 0, 0, '0000-00-00', '6519'),
(91, 'Normal', 'Rosario Hass', '', '', '5554075084', '2024-07-26', 'Laptop', 'Acer', 'A5151-55-320U', 'NXHSLAL00404007E1E7600', 'Instalacion de office', 'Contraseña 020913\r\nDeja el equipo con maletin negro.', 'Omar', 'Reparacion', '', 0, 0, 0, '0000-00-00', '1616'),
(92, 'Normal', 'Daniel Santos Zarate', 'santoszaratedaniel4@gimail.com', '9686708182', '9686708182', '2024-09-03', 'Laptop', 'Lenovo', 'thinkpad', '8405CE2B-AD73-4613BAE6-9EFF0B535A7B/ SL10M60149JS', 'Instalar office', 'laptop y cargador/ contraseña: 2003', 'Ariel', 'Reparacion', '', 250, 0, 0, '0000-00-00', '8466'),
(93, 'Normal', 'Cindy Jocelin Pérez Gómez', 'roblerodiazreynol@gmail com', '', '9921393552', '2024-09-23', 'lactop hp ', 'hp', '15-dw1083wm', 'CND0314GDF', 'Instalación del office y antivirus ', 'contraseña: joselinperez\r\nsolo dejo lactop', 'Ariel', 'Reparacion', '', 550, 0, 0, '0000-00-00', '4855'),
(94, 'Normal', 'Carlos Gutiérrez Morales', 'carlosgutierrezmorales@hotmail.com', '', '9612691819', '2024-12-11', 'lap top ', 'hp', '14-dq0530la', '5CD424DDBM', 'Instalación de office, antivirus, lector pdf. entre otros.', 'nueva.\r\ncontraseña: 5411.\r\ndejó cargador', 'Ariel', 'Reparacion', '', 0, 0, 0, '0000-00-00', '6397');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencias`
--

CREATE TABLE `transferencias` (
  `id_transferencia` int NOT NULL,
  `cuenta_origen` int NOT NULL,
  `cuenta_destino` int NOT NULL,
  `referencia` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `transferencias`
--

INSERT INTO `transferencias` (`id_transferencia`, `cuenta_origen`, `cuenta_destino`, `referencia`, `cantidad`, `fecha`, `observaciones`) VALUES
(5, 2, 1, 'Cheque 516 Ariel Narváez Cortazar', 10000.00, '2010-01-29', ' '),
(6, 2, 1, 'Retiro de Cajero', 300.00, '2010-01-31', ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int NOT NULL,
  `id_cliente` int NOT NULL,
  `no_factura` int NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `forma_pago` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `medio_pago` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `fecha_vencimiento` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `encabezado` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `iva` decimal(10,2) NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `facturado` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `salida` enum('0','1') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `id_impuesto` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_cliente`, `no_factura`, `fecha`, `forma_pago`, `medio_pago`, `fecha_vencimiento`, `status`, `encabezado`, `observaciones`, `subtotal`, `iva`, `tipo`, `facturado`, `salida`, `id_impuesto`) VALUES
(367, 16, 636, '2010-01-25', 'Credito', '', '2010-03-06', 'Pagado', '', '', 1924.14, 307.86, 'Factura', '0', '0', 2),
(364, 45, 612, '2009-12-11', 'Credito', '', '2010-03-06', 'Pagado', '', '', 5565.22, 834.78, 'Factura', '0', '1', 1),
(365, 45, 613, '2009-12-13', 'Credito', '', '2010-03-06', 'Pagado', '', '', 2782.61, 417.39, 'Factura', '0', '1', 1),
(366, 106, 597, '2009-12-22', 'Credito', '', '2010-03-06', 'Pagado', '', '', 33521.74, 5028.26, 'Factura', '0', '1', 1),
(369, 45, 622, '2009-12-22', 'Credito', '', '2010-03-06', 'Pagado', '', '', 48869.56, 7330.44, 'Factura', '0', '1', 1),
(368, 107, 632, '2010-01-22', 'Credito', '', '2010-03-06', 'Pagado', '', '', 10307.69, 1649.23, 'Factura', '0', '0', 2),
(370, 7, 640, '2010-01-27', 'Credito', '', '2010-03-06', 'Pagado', '', '', 1465.52, 234.48, 'Factura', '0', '1', 2),
(363, 105, 608, '2009-12-30', 'Credito', '', '2010-01-07', 'Pagado', '', '', 1500.00, 225.00, 'Factura', '0', '0', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ajustes`
--
ALTER TABLE `ajustes`
  ADD PRIMARY KEY (`id_ajuste`);

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`id_almacen`);

--
-- Indices de la tabla `almacen_cotizaciones`
--
ALTER TABLE `almacen_cotizaciones`
  ADD PRIMARY KEY (`id_almacen`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cheques`
--
ALTER TABLE `cheques`
  ADD PRIMARY KEY (`id_cheque`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  ADD PRIMARY KEY (`id_cotizacion`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id_cuenta`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id_gasto`);

--
-- Indices de la tabla `gastos_facturas`
--
ALTER TABLE `gastos_facturas`
  ADD PRIMARY KEY (`id_gasto`);

--
-- Indices de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  ADD PRIMARY KEY (`id_impuesto`);

--
-- Indices de la tabla `kits_productos`
--
ALTER TABLE `kits_productos`
  ADD PRIMARY KEY (`id_kp`);

--
-- Indices de la tabla `lista_precios`
--
ALTER TABLE `lista_precios`
  ADD PRIMARY KEY (`id_lista`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transferencias`
--
ALTER TABLE `transferencias`
  ADD PRIMARY KEY (`id_transferencia`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ajustes`
--
ALTER TABLE `ajustes`
  MODIFY `id_ajuste` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `id_almacen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=687;

--
-- AUTO_INCREMENT de la tabla `almacen_cotizaciones`
--
ALTER TABLE `almacen_cotizaciones`
  MODIFY `id_almacen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `cheques`
--
ALTER TABLE `cheques`
  MODIFY `id_cheque` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_contacto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  MODIFY `id_cotizacion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `id_cuenta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id_gasto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `gastos_facturas`
--
ALTER TABLE `gastos_facturas`
  MODIFY `id_gasto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  MODIFY `id_impuesto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `kits_productos`
--
ALTER TABLE `kits_productos`
  MODIFY `id_kp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `lista_precios`
--
ALTER TABLE `lista_precios`
  MODIFY `id_lista` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id_movimiento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `transferencias`
--
ALTER TABLE `transferencias`
  MODIFY `id_transferencia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
