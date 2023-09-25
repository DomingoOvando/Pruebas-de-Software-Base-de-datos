-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2023 a las 22:13:44
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
-- Base de datos: `estancias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aa`
--

CREATE TABLE `aa` (
  `IdAsesor` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `APP` varchar(255) NOT NULL,
  `APM` varchar(255) NOT NULL,
  `IdGrado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aa`
--

INSERT INTO `aa` (`IdAsesor`, `Nombre`, `APP`, `APM`, `IdGrado`) VALUES
(1, 'jose', 'escabeche', 'm', 3),
(2, 'Glover Enrique', 'santos', 'concha', 3),
(3, 'Alexander ramon', 'garcia', 'mendoza', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aa_pp`
--

CREATE TABLE `aa_pp` (
  `IdAsesor` int(11) NOT NULL,
  `IdProceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aa_pp`
--

INSERT INTO `aa_pp` (`IdAsesor`, `IdProceso`) VALUES
(2, 18),
(3, 31),
(1, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ae`
--

CREATE TABLE `ae` (
  `IdAE` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ae`
--

INSERT INTO `ae` (`IdAE`, `Nombre`) VALUES
(1, 'Manuel'),
(9, 'maria jose'),
(10, 'mario kanul'),
(16, 'Prueba Test 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ae_emp`
--

CREATE TABLE `ae_emp` (
  `IdAE` int(11) NOT NULL,
  `IdEmp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ae_pp`
--

CREATE TABLE `ae_pp` (
  `Idae` int(11) NOT NULL,
  `IdProceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ae_pp`
--

INSERT INTO `ae_pp` (`Idae`, `IdProceso`) VALUES
(1, 18),
(16, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `IdCarrera` int(11) NOT NULL,
  `NombreCarrera` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`IdCarrera`, `NombreCarrera`) VALUES
(1, 'Ingeniería Financiera'),
(2, 'Ingeniería Biomédica'),
(3, 'Ingeniería Software'),
(4, 'Ingeniería Biotecnología'),
(5, 'Licenciatura Terapia Física'),
(6, 'Licenciatura Administración y Gestión De Empresarial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalledoc`
--

CREATE TABLE `detalledoc` (
  `IdDoc` int(11) NOT NULL,
  `IdProceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalledoc`
--

INSERT INTO `detalledoc` (`IdDoc`, `IdProceso`) VALUES
(17, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directorv`
--

CREATE TABLE `directorv` (
  `IdusuarioV` bigint(20) UNSIGNED NOT NULL,
  `Firma` varchar(500) NOT NULL,
  `IdGrado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `IdDoc` int(11) NOT NULL,
  `IdTipoDoc` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `IdEstado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`IdDoc`, `IdTipoDoc`, `usuario`, `ruta`, `comentario`, `IdEstado`) VALUES
(17, 4, 7, '202000093f011.pdf', NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `IdEmp` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Telefono` bigint(50) NOT NULL,
  `RFC` varchar(100) NOT NULL,
  `Giro` varchar(100) NOT NULL,
  `URLemp` varchar(200) NOT NULL,
  `fk_TipoEmp` int(11) NOT NULL,
  `fk_TamañoEmp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`IdEmp`, `Nombre`, `Direccion`, `Correo`, `Telefono`, `RFC`, `Giro`, `URLemp`, `fk_TipoEmp`, `fk_TamañoEmp`) VALUES
(10, 'Hospital General', 'Calle Paseo de las Amapolas, M. 11, Lotes 1110-25, San Miguel 247, 77516 Cancún, Q.R.', 'hospitalg@gmail.com', 529982340000, 'XAXX010101000', 'Medicina', 'https://qroo.gob.mx/sesa/', 2, 3),
(11, 'Steren', 'Av. José, López Portillo 619-Mz. 20, Lt. 15, 77515 Cancún, Q.R.', 'SterenLp@gmail.com', 529988400600, 'XAXX010101000', 'Tecnologia', 'https://www.steren.com.mx/?utm_term=steren%20mexico&utm_campaign=Search+-+Branded+(Desktop)&utm_source=adwords&utm_medium=ppc&hsa_acc=3543146321&hsa_cam=9713662552&hsa_grp=103182288847&hsa_ad=56302866', 1, 2),
(12, 'Hospital Cruz Roja', 'Chapultepec 239, 77000 Oteapan, Q.R.', 'hospitalCruzR@gmail.com', 529838320571, 'XAXX010101000', 'Medicina', 'https://CruzRoja.gob.mx', 2, 3),
(13, 'RadioShack', 'Avenida Tulum Sur 260, Plaza Las Americas 87 y 88, Centro, 77500 Cancún, Q.R.', 'RadioShackCancun@gmail.com', 529988847273, 'XAXX010101000', 'Tecnologia', 'https://www.radioshack.com.mx/store/radioshack/en/?gclid=CjwKCAjwwb6lBhBJEiwAbuVUSgqgx7I8getyCMY7X10gWOi6SxY8DlWF4gwjomtjbHV2wUGTqU1eoxoC6mQQAvD_BwE', 1, 3),
(14, 'CENTRO DE REHABILITACIÓN FÍSICA CANCÚN', 'AVE KABAH 324, REGION 93, 77517 Cancun, Quintana Roo', 'rehabilitacion_terapias@hotmail.com', 9988849285, 'XAXX010101000\r\n', 'CENTRO DE REHABILITACIÓN FÍSICA CANCÚN', 'https://www.guiatel.com.mx/empresas/centro-de-rehabilitacion-fisica-cancun-cancun-quintana-roo', 1, 2),
(15, 'CORPORATIVO RED ADUANERA', 'Carretera Cancún - Aeropuerto Mz 4 Lote 5 Smz 301, bodega 90 y 91 Central de abastos', 'ruth.flores@redaduanera.com', 9988862103, 'XAXX010101000\r\n', 'CORPORATIVO RED ADUANERA', 'https://www.redaduanera.com/es/', 1, 2),
(16, 'EL FIC', '', 'paulavr34@hotmail.com  <paulavr34@hotmail.com', 0, 'XAXX010101000\r\n', 'CENTRO ACUATICO DE REHABILITACION AVANZADA Y ATENCION INTEGRAL DEL ADULTO MAYOS', '', 1, 2),
(17, 'FISIO SPORTS', ' av. Cancun con av Mexico y av la luna, Avenida Cancun, Residencial santa fe', 'acervera-fisiatria@hotmail.com', 9982678677, 'XAXX010101000\r\n', 'MEDICINA DEL DEPORTE & REHABILITACION FISICA', 'https://www.facebook.com/fisiosportscancun/?locale=es_LA', 1, 2),
(18, 'GRUPO REGIO', ' Av. Andrés Quintana Roo , Mz.66 L.2-05, 77537 Cancún, Q.R.', 'desarrollohumano@gruporegio.com', 9988818100, 'XAXX010101000\r\n', 'OPERADORA REGIOSUR. S.A. DE C.V.', 'https://gruporegio.mx/', 1, 2),
(19, 'HOTEL HARD ROCK', 'Blvd. Kukulcan Km 14, Zona Hotelera, 77500 Cancún, Q.R.', 'jvasquez@hrhcancun.com', 9988813699, 'XAXX010101000\r\n', 'RCD RESORTS, S.A. DE C.V. (HOTEL HARD ROCK)', 'https://www.hardrockhotels.com/cancun/es/ofertas.aspx?dclid=&gclid=Cj0KCQjwib2mBhDWARIsAPZUn_kjNmEyhOwSJUk5RwYCsuZi1SmPfZtk5MlJxsUBs20FSO2bd045uGIaAuqbEALw_wcB', 1, 3),
(20, 'HOTEL HYAIT ZILARA CANCÚN', 'Blvd. Kukulcan, Punta Cancun, Zona Hotelera, 77500 Cancún, Q.R.', 'cristian.carballo@hyatt.com', 8487074, 'XAXX010101000\r\n', 'PLAYA RESORTS MANAGEMENT MÉXICO', 'https://www.hyatt.com/es-ES/hotel/mexico/hyatt-zilara-cancun/cunia', 1, 3),
(21, 'PALACE RESORTS', ' Km 21, Manzana 01, Lote 1 – 11, Edificio A, 77506 Cancún, Q.R.', 'vsandoval@palaceresorts.com', 9981932010, 'XAXX010101000\r\n', 'PALACE RESORTS, S.A. DE C.V.', 'https://www.palaceresorts.com/es', 1, 3),
(22, 'REHAB FISIOTERAPIA Y NEURAKINESTOLOGÍA', '130 Avenida Sur Manzana 312-Lote 2, Juan Bautista de La Vega, 77645 San Miguel de Cozumel, Q.R.', 'fisio_rehab@outlook.es', 9878768322, 'XAXX010101000\r\n', 'REHAB FISIOTERAPIA Y NEURAKINESTOLOGÍA', 'https://rehab-fisioterapia-neurokinesiologia.negocio.site/', 1, 3),
(23, 'ESPECILIDADADES DIAGNÓSTICAS BC', '', '', 9984034877, 'XAXX010101000\r\n', 'EDILAB ESPECILIDAD DIAGNÓSTICA', '', 1, 1),
(24, 'K20 CANCÚN, S. DE R.L. DE C.V.\r\n', 'Calle KUULCAN KM20 LOTE 70 Y 71,  Número Ext. (Ó Km.) 71,  Edificio 71,  Piso PLANTA BAJA,  Colonia INTERIOR DE COMPLEJO TURISTICO WESTIN', 'eduardo.enriquez@vacationclub.com\r\n', 9988487436, 'XAXX010101000\r\n', 'THE WESTIN RESORT AND SPA CANCÚN\r\n', '\r\n\r\nhttps://pymes.org.mx/pyme/empresa-de-servicios-k20-cancun-ecb41ca4.html', 1, 3),
(25, 'ABRL SISTEMAS Y PROYECTOS, S.A. DE C.V. (ABRHIL SOFTWARE)\r\n', '', 'cmayo@abrhil.com\r\n', 9982893684, 'XAXX010101000\r\n', 'ABRHIL SOFTAWARE\r\n', '', 1, 2),
(26, 'AEROPUERTO DE CANCUN\r\n', 'Cancun - Chetumal Km 22, 77565 Cancún, Q.R.', '', 9988487200, 'XAXX010101000\r\n', 'AEROPUERTO DE CANCUN S.A. DE C.V.\r\n', 'https://www.aeropuertos.net/aeropuerto-internacional-de-cancun/', 1, 3),
(27, 'AGUAKAN\r\n', 'Av. Chichen Itza 53, 77500 Cancún, Q.R.', 'reclutamiento@aguakan.com\r\n', 9984116745, 'XAXX010101000\r\n', 'AGUAKAN, S.A. DE C.V.\r\n', 'https://mx.eldirectorio.co/empresas/cancun/establecimiento/aguakan-s-a-de-c-v-1383', 1, 3),
(28, 'ALSEA\r\n', 'Calle Prol. Av. Kabáh/Av. Kabah', 'talento@alsea.com.mx\r\n', 5575832000, 'XAXX010101000\r\n', 'SISTEMA INTEGRAL DE ADMINISTRACION, S.A DE C.V.\r\n', 'https://www.alsea.net/', 1, 3),
(29, 'AMAREBODY\r\n', 'Av. Kabah, Plaza Mega Soriana MZ 4,21, Local 4y 5, 77505 Cancún, Q.R.', 'violetafregoso21@gmail.com\r\n', 9984891617, 'XAXX010101000\r\n', 'ABRAM TOPETE DIODADO\r\n', 'https://www.allbiz.mx/amare-body-998-489-1617', 1, 2),
(30, 'AMIGOS DE ISLA CONTOY, A.C.\r\n', 'Supermanzana 28, 77509 Cancún, Q.R.', 'islacontoy@live.com.mx, catalinagalindoprince@outlook.com\r\n', 9988847483, 'XAXX010101000\r\n', 'AMIGOS DE ISLA CONTOY, A.C.\r\n', 'https://bekaab.org/places/amigos-de-isla-contoy-a-c/', 1, 3),
(31, 'ANÁLISIS TECNOLÓGICO Y MANTENIMIENTO ATM, S.A. DE C.V.\r\n', 'AVE INSTITUTO POLITECNICO 29 MZ 12 LT 2, PARAISO VILLAS, 77533 Cancun, Quintana Roo\r\n', 'carlosdelacruz.atm@hotmail.com\r\n', 9982404016, 'XAXX010101000\r\n', 'ANÁLISIS TECNOLÓGICO Y MANTENIMIENTO ATM\r\n', 'https://www.guiatel.com.mx/empresas/analisis-tecnologico-y-mantenimiento-atm-cancun-quintana-roo', 1, 3),
(32, 'ANCONA AUTOPARTES\r\n', 'López Portillo SM 62 MZ 2 LT 51', 'capacitacion@anconaautopartes.com\r\n', 9983644833, 'XAXX010101000\r\n', 'FERACCIONARIA AUTOMOTRIZ ANCONA, S.A. DE C.V.\r\n', 'https://www.anconaautopartes.com/', 1, 3),
(33, 'ARREDONDO M. SEGUROS Y FINANZAS\r\n', ' Sm. 103 Mz.5 No. Lte.7', '', 9988845495, 'XAXX010101000\r\n', 'ARREDONDO M. SEGUROS Y FINANZAS S.C.\r\n', 'https://finanzasmexico.info/empresa-arredondo-m-seguros-y-fianzas-em-cancun-263', 1, 3),
(34, 'ARRENDADORA TRIPCAR, S.A. DE C.V.(TURICUN)\r\n', 'Av. Miguel Hidalgo (Ruta 5), Cancún Quintana Roo', 'marcos.chale@turicun.com\r\n', 9982407730, 'XAXX010101000\r\n', 'TRANSPORTES TURICUN\r\n', 'https://www.turicun.com/', 1, 2),
(35, 'ASESORES DE FRANQUICIAS PROFESIONALES\r\n', '', '', 9988981002, 'XAXX010101000\r\n', 'ASESORES DE FRANQUICIAS PROFESIONALES S.A. DE C.V.\r\n', 'https://www.desarrollodefranquicias.mx/consultoria-de-franquicias/?gclid=Cj0KCQjwib2mBhDWARIsAPZUn_n8RjfVy15Z103BoyXsQ6zTy7AaFy44qUdnKrWGwaVatfRR1LpcUBgaAiTXEALw_wcB', 1, 3),
(36, 'AVANTO\r\n', 'RET 1 DE MAYO N.40 13 2, SUPERMANZANA 4 A, 77500 Cancun, Quintana Roo', '', 9988873666, 'XAXX010101000\r\n', 'AVANTO INNOVANDO PYMES\r\n', 'https://www.guiatel.com.mx/empresas/avanto-cancun-quintana-roo', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emp_pp`
--

CREATE TABLE `emp_pp` (
  `IdEmp` int(11) NOT NULL,
  `IdProceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `emp_pp`
--

INSERT INTO `emp_pp` (`IdEmp`, `IdProceso`) VALUES
(8, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadodoc`
--

CREATE TABLE `estadodoc` (
  `IdEstado` int(11) NOT NULL,
  `nombreEstado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadodoc`
--

INSERT INTO `estadodoc` (`IdEstado`, `nombreEstado`) VALUES
(1, 'Aceptado'),
(2, 'Pendiente'),
(3, 'Observacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fases`
--

CREATE TABLE `fases` (
  `Idfase` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fases`
--

INSERT INTO `fases` (`Idfase`, `Nombre`) VALUES
(1, 'Primera etapa'),
(2, 'Segunda etapa'),
(3, 'Tercera etapa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradoacademico`
--

CREATE TABLE `gradoacademico` (
  `IdGrado` int(11) NOT NULL,
  `NombreGrado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gradoacademico`
--

INSERT INTO `gradoacademico` (`IdGrado`, `NombreGrado`) VALUES
(1, 'Lic.'),
(2, 'Ing.'),
(3, 'Mtro.'),
(4, 'Arq.'),
(5, 'Dr.'),
(6, 'Dra.'),
(7, 'C.P.T'),
(8, 'Prof.'),
(9, 'Profa.'),
(10, 'C.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `IdPeriodo` int(11) NOT NULL,
  `Periodo` int(11) DEFAULT NULL,
  `Idfase_1` int(11) DEFAULT NULL,
  `Activo_1` int(11) NOT NULL DEFAULT 1,
  `Idfase_2` int(11) DEFAULT NULL,
  `Activo_2` int(11) NOT NULL DEFAULT 1,
  `Idfase_3` int(11) DEFAULT NULL,
  `Activo_3` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`IdPeriodo`, `Periodo`, `Idfase_1`, `Activo_1`, `Idfase_2`, `Activo_2`, `Idfase_3`, `Activo_3`) VALUES
(4, 202301, 1, 1, 2, 1, 3, 0),
(5, 202302, 1, 1, 2, 1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `IdProceso` int(11) NOT NULL,
  `IdUsuario` bigint(11) UNSIGNED NOT NULL,
  `IdTipoProceso` int(11) NOT NULL,
  `IdPeriodo` int(11) NOT NULL,
  `IdCarrera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proceso`
--

INSERT INTO `proceso` (`IdProceso`, `IdUsuario`, `IdTipoProceso`, `IdPeriodo`, `IdCarrera`) VALUES
(18, 7, 1, 4, NULL),
(31, 7, 2, 5, NULL),
(32, 7, 1, 5, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tamañoemp`
--

CREATE TABLE `tamañoemp` (
  `id_Tamaño_Emp` int(11) NOT NULL,
  `Tipo_Tamaño` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tamañoemp`
--

INSERT INTO `tamañoemp` (`id_Tamaño_Emp`, `Tipo_Tamaño`) VALUES
(1, 'Pequeña'),
(2, 'Mediana'),
(3, 'Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodoc`
--

CREATE TABLE `tipodoc` (
  `IdTipoDoc` int(11) NOT NULL,
  `nombredoc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipodoc`
--

INSERT INTO `tipodoc` (`IdTipoDoc`, `nombredoc`) VALUES
(1, 'Carga horaria'),
(2, 'Constancia derecho'),
(3, 'Carta responsiva'),
(4, 'Carta presentación'),
(5, 'Carta aceptación'),
(6, 'Cedula de registro'),
(7, 'Definición de proyecto'),
(8, 'Carta de liberación'),
(9, 'Carta compromiso'),
(10, 'Reporte mensual'),
(11, 'Reporte mensual 2'),
(12, 'Reporte mensual 3'),
(13, 'Reporte mensual 4'),
(14, 'Reporte mensual 5'),
(15, 'Reporte mensual 6'),
(16, 'Reporte mensual 7'),
(17, 'Reporte mensual 8'),
(18, 'Reporte mensual 9'),
(19, 'Reporte mensual 10'),
(20, 'Reporte mensual 11'),
(21, 'Reporte mensual 12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoemp`
--

CREATE TABLE `tipoemp` (
  `id_Tipo_Emp` int(11) NOT NULL,
  `Tipo_Empresa` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipoemp`
--

INSERT INTO `tipoemp` (`id_Tipo_Emp`, `Tipo_Empresa`) VALUES
(1, 'Privada'),
(2, 'Publica'),
(3, 'Social');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproceso`
--

CREATE TABLE `tipoproceso` (
  `IdTipoProceso` int(11) NOT NULL,
  `nombreProceso` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipoproceso`
--

INSERT INTO `tipoproceso` (`IdTipoProceso`, `nombreProceso`) VALUES
(1, 'Estancia'),
(2, 'Estancia 2'),
(3, 'Estadia'),
(4, 'Servicio Social'),
(5, 'Estadia Nacional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `IdTipoUsu` int(11) NOT NULL,
  `NombreTipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`IdTipoUsu`, `NombreTipo`) VALUES
(1, 'Admin'),
(2, 'Alumno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Matricula` int(11) NOT NULL,
  `IdTipoUsu` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `Nombre`, `Matricula`, `IdTipoUsu`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Supervisor', 'estanciasestadias@upqroo.edu.mx', NULL, 'glover santos', 2020, 1, '$2y$10$PYU.qB63UbNKXhglEOctAe8u6C43hICvuzcle5WOqlbtWhZSZtciK', NULL, NULL, NULL),
(4, '202000092', '202000092@estudiantes.upqroo.edu.mx', NULL, 'glover santos', 202000092, 2, '$2y$10$7ZeBY6DzYgtfRE6R6BXOweE9G0TbYosxefT2K//CG71eJq8xKOQ66', NULL, '2023-04-04 06:37:23', '2023-04-04 06:37:23'),
(5, 'admin', 'gloverotaku@outlook.es', NULL, 'Glover Enrique Santos Concha', 202000092, 2, '$2y$10$lr3PYZVezoxM7NSnBYQzseXGK4K9lsRIggD6tVFi.eRYGoNwFhnBq', NULL, '2023-04-04 23:46:40', '2023-04-04 23:46:40'),
(7, '202000093', '202000093@estudiantes.upqroo.edu.mx', NULL, 'glover enrique santos concha', 202000091, 2, '$2y$10$3Qbie7m15/jJntdByV0vweKx3hxSCP1WU5ZL/zGQUw/U7RtFZOkYu', NULL, '2023-04-09 04:37:19', '2023-04-17 08:30:01'),
(9, '2020', 'g@outlook.es', NULL, 'glover enrique santos concha', 202020, 2, '$2y$10$G90mPGBXrOfj8cLD3yZw0O6Kg3ZIpyQagOQ/my7vkMm2eeUsiO0Aq', NULL, '2023-04-12 21:54:03', '2023-04-12 21:54:03'),
(16, '202000099', '202000099@estudiantes.upqroo.edu.mx', NULL, 'Glover enrique santos concha', 202000099, 1, '$2y$10$fdR/lzJL4ES7WxzVhxAFFeX/.co/Nue0TOlh3KAZrDGJQ3ZZqjEqe', NULL, NULL, NULL),
(17, '202000098', '202000098@estudiantes.upqroo.edu.mx', NULL, 'gsantos', 202000098, 1, '$2y$10$KOY45yVGXPvgA9Wdmyimhu7dtzvhS6YTxc1bVCWJQCVOP1oteg8a2', NULL, NULL, NULL),
(18, 'test', 'test@upqroo.edu.mx', NULL, 'test', 99999, 1, '$2y$10$B0MgZuPtlXr1vCK875MXTuZmqlvPWJASdlYm5KGszIlIG2l5zxHt.', NULL, '2023-06-09 02:01:36', '2023-06-30 00:40:48'),
(23, 'perro', '20220001212@upqroo.edu.mx', NULL, 'Domingo', 202200001, 1, '$2y$10$ZMUZnGgSmLIU7WohAJUp5OfllQgPtnIIEWfzduubQKR6w4iLQUM2G', NULL, '2023-07-21 01:12:17', '2023-07-21 01:12:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_empresa`
--

CREATE TABLE `user_empresa` (
  `id_user` bigint(20) UNSIGNED NOT NULL COMMENT 'pk usuario',
  `id_empresa` int(11) NOT NULL COMMENT 'pk empresa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Relacion muchos a muchos EMP_USER';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aa`
--
ALTER TABLE `aa`
  ADD PRIMARY KEY (`IdAsesor`),
  ADD KEY `IdGrado` (`IdGrado`);

--
-- Indices de la tabla `aa_pp`
--
ALTER TABLE `aa_pp`
  ADD KEY `IdAsesor` (`IdAsesor`),
  ADD KEY `IdProceso` (`IdProceso`);

--
-- Indices de la tabla `ae`
--
ALTER TABLE `ae`
  ADD PRIMARY KEY (`IdAE`);

--
-- Indices de la tabla `ae_emp`
--
ALTER TABLE `ae_emp`
  ADD KEY `IdAE` (`IdAE`),
  ADD KEY `IdEmp` (`IdEmp`);

--
-- Indices de la tabla `ae_pp`
--
ALTER TABLE `ae_pp`
  ADD KEY `Idae` (`Idae`),
  ADD KEY `IdProceso` (`IdProceso`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`IdCarrera`);

--
-- Indices de la tabla `detalledoc`
--
ALTER TABLE `detalledoc`
  ADD KEY `IdDoc` (`IdDoc`),
  ADD KEY `IdProceso` (`IdProceso`);

--
-- Indices de la tabla `directorv`
--
ALTER TABLE `directorv`
  ADD KEY `IdGrado` (`IdGrado`),
  ADD KEY `IdusuarioV` (`IdusuarioV`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`IdDoc`),
  ADD KEY `documentos_ibfk_1` (`IdTipoDoc`),
  ADD KEY `IdEstado` (`IdEstado`),
  ADD KEY `usuario` (`usuario`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`IdEmp`),
  ADD KEY `Tipo_Empresa` (`fk_TipoEmp`),
  ADD KEY `Tamaño_Empresa` (`fk_TamañoEmp`);

--
-- Indices de la tabla `estadodoc`
--
ALTER TABLE `estadodoc`
  ADD PRIMARY KEY (`IdEstado`);

--
-- Indices de la tabla `fases`
--
ALTER TABLE `fases`
  ADD PRIMARY KEY (`Idfase`);

--
-- Indices de la tabla `gradoacademico`
--
ALTER TABLE `gradoacademico`
  ADD PRIMARY KEY (`IdGrado`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`IdPeriodo`),
  ADD KEY `Idfase` (`Idfase_1`),
  ADD KEY `Idfase_2` (`Idfase_2`),
  ADD KEY `Idfase_3` (`Idfase_3`);

--
-- Indices de la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`IdProceso`),
  ADD KEY `IdPeriodo` (`IdPeriodo`),
  ADD KEY `IdTipoProceso` (`IdTipoProceso`),
  ADD KEY `IdCarrera` (`IdCarrera`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Indices de la tabla `tamañoemp`
--
ALTER TABLE `tamañoemp`
  ADD PRIMARY KEY (`id_Tamaño_Emp`);

--
-- Indices de la tabla `tipodoc`
--
ALTER TABLE `tipodoc`
  ADD PRIMARY KEY (`IdTipoDoc`);

--
-- Indices de la tabla `tipoemp`
--
ALTER TABLE `tipoemp`
  ADD PRIMARY KEY (`id_Tipo_Emp`);

--
-- Indices de la tabla `tipoproceso`
--
ALTER TABLE `tipoproceso`
  ADD PRIMARY KEY (`IdTipoProceso`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`IdTipoUsu`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `IdTipoUsu` (`IdTipoUsu`);

--
-- Indices de la tabla `user_empresa`
--
ALTER TABLE `user_empresa`
  ADD KEY `fk_empres` (`id_empresa`),
  ADD KEY `fk_user` (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aa`
--
ALTER TABLE `aa`
  MODIFY `IdAsesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ae`
--
ALTER TABLE `ae`
  MODIFY `IdAE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `IdCarrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `IdDoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `IdEmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `estadodoc`
--
ALTER TABLE `estadodoc`
  MODIFY `IdEstado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fases`
--
ALTER TABLE `fases`
  MODIFY `Idfase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `gradoacademico`
--
ALTER TABLE `gradoacademico`
  MODIFY `IdGrado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `IdPeriodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proceso`
--
ALTER TABLE `proceso`
  MODIFY `IdProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `tamañoemp`
--
ALTER TABLE `tamañoemp`
  MODIFY `id_Tamaño_Emp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipodoc`
--
ALTER TABLE `tipodoc`
  MODIFY `IdTipoDoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tipoemp`
--
ALTER TABLE `tipoemp`
  MODIFY `id_Tipo_Emp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipoproceso`
--
ALTER TABLE `tipoproceso`
  MODIFY `IdTipoProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `IdTipoUsu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aa`
--
ALTER TABLE `aa`
  ADD CONSTRAINT `aa_ibfk_1` FOREIGN KEY (`IdGrado`) REFERENCES `gradoacademico` (`IdGrado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `aa_pp`
--
ALTER TABLE `aa_pp`
  ADD CONSTRAINT `aa_pp_ibfk_1` FOREIGN KEY (`IdAsesor`) REFERENCES `aa` (`IdAsesor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aa_pp_ibfk_2` FOREIGN KEY (`IdProceso`) REFERENCES `proceso` (`IdProceso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ae_emp`
--
ALTER TABLE `ae_emp`
  ADD CONSTRAINT `ae_emp_ibfk_1` FOREIGN KEY (`IdAE`) REFERENCES `ae` (`IdAE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ae_emp_ibfk_2` FOREIGN KEY (`IdEmp`) REFERENCES `empresa` (`IdEmp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ae_pp`
--
ALTER TABLE `ae_pp`
  ADD CONSTRAINT `ae_pp_ibfk_1` FOREIGN KEY (`Idae`) REFERENCES `ae` (`IdAE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ae_pp_ibfk_2` FOREIGN KEY (`IdProceso`) REFERENCES `proceso` (`IdProceso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalledoc`
--
ALTER TABLE `detalledoc`
  ADD CONSTRAINT `detalledoc_ibfk_1` FOREIGN KEY (`IdDoc`) REFERENCES `documentos` (`IdDoc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalledoc_ibfk_2` FOREIGN KEY (`IdProceso`) REFERENCES `proceso` (`IdProceso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `directorv`
--
ALTER TABLE `directorv`
  ADD CONSTRAINT `directorv_ibfk_1` FOREIGN KEY (`IdGrado`) REFERENCES `gradoacademico` (`IdGrado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directorv_ibfk_2` FOREIGN KEY (`IdusuarioV`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`IdTipoDoc`) REFERENCES `tipodoc` (`IdTipoDoc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `documentos_ibfk_2` FOREIGN KEY (`IdEstado`) REFERENCES `estadodoc` (`IdEstado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `Tamaño_Empresa` FOREIGN KEY (`fk_TamañoEmp`) REFERENCES `tamañoemp` (`id_Tamaño_Emp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Tipo_Empresa` FOREIGN KEY (`fk_TipoEmp`) REFERENCES `tipoemp` (`id_Tipo_Emp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD CONSTRAINT `periodo_ibfk_1` FOREIGN KEY (`Idfase_1`) REFERENCES `fases` (`Idfase`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `periodo_ibfk_2` FOREIGN KEY (`Idfase_2`) REFERENCES `fases` (`Idfase`),
  ADD CONSTRAINT `periodo_ibfk_3` FOREIGN KEY (`Idfase_3`) REFERENCES `fases` (`Idfase`);

--
-- Filtros para la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD CONSTRAINT `proceso_ibfk_1` FOREIGN KEY (`IdPeriodo`) REFERENCES `periodo` (`IdPeriodo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proceso_ibfk_3` FOREIGN KEY (`IdTipoProceso`) REFERENCES `tipoproceso` (`IdTipoProceso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proceso_ibfk_4` FOREIGN KEY (`IdCarrera`) REFERENCES `carrera` (`IdCarrera`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proceso_ibfk_5` FOREIGN KEY (`IdUsuario`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`IdTipoUsu`) REFERENCES `tipousuario` (`IdTipoUsu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_empresa`
--
ALTER TABLE `user_empresa`
  ADD CONSTRAINT `fk_empres` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`IdEmp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
