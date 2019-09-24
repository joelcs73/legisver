-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-09-2019 a las 20:51:42
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `congresoveracruz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admmenu`
--

CREATE TABLE `admmenu` (
  `idMenu` int(11) NOT NULL,
  `idDiv` varchar(100) DEFAULT NULL,
  `paginaHref` varchar(100) DEFAULT NULL,
  `tituloMenu` varchar(100) DEFAULT NULL,
  `descripcionDelMenu` varchar(100) DEFAULT NULL,
  `iconoDelMenu` varchar(100) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admmenu`
--

INSERT INTO `admmenu` (`idMenu`, `idDiv`, `paginaHref`, `tituloMenu`, `descripcionDelMenu`, `iconoDelMenu`, `orden`) VALUES
(1, 'u_admUsuarios', 'diputados', 'Administración de usuarios', '', 'fa fa-user-circle', 90),
(2, 'u_admSeparaNombres', 'comisiones', 'Separa nombres', '', 'fa fa-unlink', 91),
(3, 'a_prvPreinscritos', 'distritos', 'Proveedores preinscritos', '', 'far fa-file-alt', 2),
(4, 'a_prvInicio', 'areas', 'Catálogo de proveedores', '', 'far fa-address-card', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admusuariomenu`
--

CREATE TABLE `admusuariomenu` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idMenu` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admusuariomenu`
--

INSERT INTO `admusuariomenu` (`id`, `idUsuario`, `idMenu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admusuarios`
--

CREATE TABLE `admusuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(100) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admusuarios`
--

INSERT INTO `admusuarios` (`idUsuario`, `nombreUsuario`, `clave`, `pwd`) VALUES
(1, 'Lic. Joel Clemente Serrano', 'jclemente', '906de634c48fb7d34136160b4c353ae4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendalegislativa`
--

CREATE TABLE `agendalegislativa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` text NOT NULL,
  `archivoAgenda` varchar(80) NOT NULL,
  `idEjercicio` int(11) NOT NULL,
  `idPeriodo` int(11) NOT NULL,
  `idLegislatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `agendalegislativa`
--

INSERT INTO `agendalegislativa` (`id`, `descripcion`, `archivoAgenda`, `idEjercicio`, `idPeriodo`, `idLegislatura`) VALUES
(1, 'AGENDA LEGISLATIVA', 'MEDALLAS, PARLAMENTOS Primer periodo.pdf', 1, 1, 8),
(2, 'EFEMÉRIDES', 'EFEMÉRIDES primer periodo.pdf', 1, 1, 8),
(3, 'MEDALLAS, PARLAMENTOS', 'MEDALLAS, PARLAMENTOS Primer periodo.pdf', 1, 1, 8),
(4, 'AGENDA LEGISLATIVA', 'AGENDA ADMVA-LEGIS Primer receso.pdf', 1, 2, 8),
(5, 'EFEMÉRIDES', 'EFEMÉRIDES Primer Receso.pdf', 1, 2, 8),
(6, 'MEDALLAS, PARLAMENTOS', 'MEDALLAS, PARLAMENTOS Primer Receso.pdf', 1, 2, 8),
(7, 'AGENDA LEGISLATIVA', 'AGENDA ADMVA-LEGIS Segundo Periodo.pdf', 1, 3, 8),
(8, 'EFEMÉRIDES', 'EFEMÉRIDES Segundo Periodo.pdf', 1, 3, 8),
(9, 'MEDALLAS, PARLAMENTOS', 'MEDALLAS, PARLAMENTOS Segundo Periodo.pdf', 1, 3, 8),
(10, 'AGENDA LEGISLATIVA', 'AGENDA ADMVA-LEGIS Segundo Receso.pdf', 1, 4, 8),
(11, 'EFEMÉRIDES', 'EFEMÉRIDES Segundo Receso.pdf', 1, 4, 8),
(12, 'MEDALLAS, PARLAMENTOS', 'MEDALLAS, PARLAMENTOS Segundo Receso.pdf', 1, 4, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_areas`
--

CREATE TABLE `cat_areas` (
  `idArea` bigint(20) UNSIGNED NOT NULL,
  `clave` varchar(15) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `responsable` varchar(255) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `areaPadre` int(11) DEFAULT '0',
  `apareceEnDirectorio` tinyint(4) NOT NULL DEFAULT '1',
  `idHijo` int(11) NOT NULL,
  `archivoCurriculo` varchar(200) DEFAULT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_areas`
--

INSERT INTO `cat_areas` (`idArea`, `clave`, `nombre`, `responsable`, `correo`, `extension`, `areaPadre`, `apareceEnDirectorio`, `idHijo`, `archivoCurriculo`, `orden`) VALUES
(1, NULL, 'Secretaría General del Congreso', 'Lic. Domingo Bahena Corbalá', 'dbahena@legisver.gob.mx', '3030', NULL, 1, 0, 'DOMINGO.pdf', 1),
(2, NULL, 'Coordinación de Comunicación Social', 'Lic. Aldo Adrián Valerio Zamudio', 'avalerio@legisver.gob.mx', '3061', NULL, 1, 1, NULL, 2),
(3, NULL, 'Coordinación de Archivo, Biblioteca y Hemeroteca', 'C. Miguel Ángel Andrade Huerta', 'mandrade@legisver.gob.mx', '3096', NULL, 1, 1, 'MIGUEL ANGEL ANDRADE HUERTA.pdf', 2),
(4, NULL, 'Coordinación de Investigaciones Legislativas', 'Lic. Juan José Chávez Jiménez', 'mandrade@legisver.gob.mx', '3055', NULL, 1, 1, 'JUAN JOSE CHAVEZ JIMENEZ.pdf', 2),
(5, NULL, 'Coordinación de Informática', 'Mtro. César Eduardo Pérez Díaz', 'cperez@legisver.gob.mx', '3073', NULL, 1, 1, 'PEREZ DIAZ CESAR EDUARDO.pdf', 2),
(6, NULL, 'Contraloría Interna del Poder Legislativo', 'Lic. Rene Buenrostro Hernández', 'rbuenrostro@legisver.gob.mx', '2171', NULL, 1, 0, 'RENE BUENROSTRO HERNANDEZ.pdf', 3),
(7, NULL, 'Oficina de Seguridad', 'Q.C. Simón Díaz Íñiguez', 'sdiaz@legisver.gob.mx', '3103', NULL, 1, 1, NULL, 3),
(8, NULL, 'Secretaría de Servicios Legislativos', 'Lic. Ángeles Blanca Castaneyra Chávez', 'acastaneyra@legisver.gob.mx', '3220', NULL, 1, 1, 'ANGELES BLANCA CASTANEYRA CHAVEZ.pdf', 4),
(9, NULL, 'Dirección de Asistencia Técnica Legislativa', 'Lic. Enrique Navarro Padilla', 'enavarro@legisver.gob.mx', '3126', NULL, 1, 2, 'ENRIQUE NAVARRO PADILLA.pdf', 4),
(10, NULL, 'Dirección de Registro Legislativo y Publicaciones Oficiales', 'Mtra. Maria Antonia Quiroz Morales', 'aquiroz@legisver.gob.mx', '3009', NULL, 1, 2, 'MARIA ANTONIA QUIROZ MORALES.pdf', 4),
(11, NULL, 'Secretaría de Servicios Administrativos y Financieros', 'Lic. Irma Ariadna Leal Morales', 'ileal@legisver.gob.mx', '3129', NULL, 1, 1, NULL, 5),
(12, NULL, 'Dirección de Tesorería', 'Lic. Diana Leydi Zacarias Carrasco', 'dzacarias@legisver.gob.mx', '3140', NULL, 1, 3, 'DIANA LEYDI ZACARIAS CARRASCO.pdf', 5),
(13, NULL, 'Dirección de Recursos Humanos', 'Mtro. Roberto Rafael Tovar Maldonado', 'rtovar@legisver.gob.mx', '3138', NULL, 1, 3, 'ROBERTO RAFAEL TOVAR MALDONADO.pdf', 5),
(14, NULL, 'Dirección de Recursos Materiales y Servicios Generales', 'Lic. Carlos Iram Arevalo Rodríguez', 'iarevalo@legisver.gob.mx', '3148', NULL, 1, 3, 'CARLOS IRAM AREVALO RODRIGUEZ.pdf', 5),
(15, NULL, 'Secretaría de Fiscalización', 'Mtra. Diana Alicia Bellido Díaz', 'dbellido@legisver.gob.mx', '3168', NULL, 1, 1, 'CARLOS IRAM AREVALO RODRIGUEZ.pdf', 6),
(16, NULL, 'Dirección de Auditoría y Revisión Financiera', 'Lic. Carlos de Jesús Mendoza Chesty', 'cmendoza@legisver.gob.mx', '3041', NULL, 1, 4, 'CARLOS DE JESUS MENDOZA CHESTY.pdf', 6),
(17, NULL, 'Dirección de Normatividad, Control y Seguimiento', 'Lic. Carlos Vidarte Fernández', 'cvidarte@legisver.gob.mx', '3037', NULL, 1, 4, 'CARLOS DE JESUS MENDOZA CHESTY.pdf', 6),
(18, NULL, 'Dirección de Servicios Jurídicos', 'Humberto Oliverio Hernández Reducindo', 'hhernandez@legisver.gob.mx', '3048', NULL, 1, 1, 'CARLOS DE JESUS MENDOZA CHESTY.pdf', 7),
(19, NULL, 'Subdirección de Servicios Jurídicos', 'Lic. Georgina Maribel Chuy Díaz', 'gchuy@legisver.gob.mx', '3050', NULL, 1, 1, 'GEORGINA MARIBEL CHUY DIAZ.pdf', 7),
(20, NULL, 'Departamento de Asistencia a Sesiones', 'Lic. Jesús Alberto Islas Aguilera', 'jislas@legisver.gob.mx', '3038', NULL, 1, 2, 'JESUS ALBERTO ISLAS AGUILERA.pdf', 8),
(21, NULL, 'Departamento de Asistencia a Comisiones', 'Lic. Esteban Ruíz Hernández', 'eruiz@legisver.gob.mx', '3034', NULL, 1, 2, 'JESUS ALBERTO ISLAS AGUILERA.pdf', 8),
(22, NULL, 'Departamento de Registro Documental Legislativo', 'Lic. Grace del Carmen Mendoza Chesty', 'gmendoza@legisver.gob.mx', '3009', NULL, 1, 2, 'MENDOZA CHESTY GRACE DEL CARMEN.pdf', 9),
(23, NULL, 'Departamento de Diario de Debates', 'Lic. Christian Toral Fernández', 'ctoral@legisver.gob.mx', '3124', NULL, 1, 2, 'TORAL FERNANDEZ CHRISTIAN.pdf', 9),
(24, NULL, 'Departamento de Finanzas', 'L.C. Marcela Cuevas Ramirez', 'mcuevas@legisver.gob.mx', '3144', NULL, 1, 3, 'MARCELA CUEVAS RAMIREZ.pdf', 10),
(25, NULL, 'Departamento de Programación y Presupuesto', 'Dr. Eber Jardiel Pérez Zuñiga', 'ejperez@legisver.gob.mx', '3143', NULL, 1, 3, 'EBER JARDIEL PEREZ ZUÑIGA.pdf', 10),
(26, NULL, 'Departamento de Contabilidad', 'Lic. Karina del Ángel Roman', 'kdelangel@legisver.gob.mx', '3142', NULL, 1, 3, 'KARINA DEL ANGEL ROMAN.pdf', 10),
(27, NULL, 'Departamento de Nómina', 'Lic. Ana Maria Vallines Casares', 'avallines@legisver.gob.mx', '3181', NULL, 1, 3, 'VallinesCasaresAnaMaria.pdf', 11),
(28, NULL, 'Departamento de Control de Personal', 'Lic. Miguel Ángel García Alarcón', 'mgarcia@legisver.gob.mx', '3136', NULL, 1, 3, 'MIGUEL ANGEL GARCIA ALARCON.pdf', 11),
(29, NULL, 'Departamento de Control de Personal', 'Lic. Miguel Ángel García Alarcón', 'mgarcia@legisver.gob.mx', '3136', NULL, 1, 3, 'MIGUEL ANGEL GARCIA ALARCON.pdf', 11),
(30, NULL, 'Departamento de Recursos Materiales', 'Lic. Jeimi Fonseca Domínguez', 'jfonseca@legisver.gob.mx', '3160', NULL, 1, 3, 'JIEMI FONSECA DOMINGUEZ.pdf', 12),
(31, NULL, 'Departamento de Servicios Generales', 'Lic. Carlos Gámez Peredes', 'cgamez@legisver.gob.mx', '3164', NULL, 1, 3, 'CARLOS GAMEZ PAREDES.pdf', 12),
(32, NULL, 'Departamento de Adquisiciones', 'L.E. Mario Pérez Espinoza', 'mperez@legisver.gob.mx', '3151', NULL, 1, 3, NULL, 12),
(33, NULL, 'Departamento de Auditoria y Análisis de Cuenta Pública', 'Lic. David Arturo Sandoval Garcia', 'dsandoval@legisver.gob.mx', '3173', NULL, 1, 4, NULL, 13),
(34, NULL, 'Departamento de Capacitación, Asesoría, Revisión y Supervisión a Municipios', 'L.A.E. Juan Carlos Patiño Pérez', 'jpatino@legisver.gob.mx', '3036', NULL, 1, 4, 'JUAN CARLOS PATIÑO PEREZ.pdf', 13),
(35, NULL, 'Depto. de Registro de Deuda Pública y Programas Institucionales', 'L.C.P. María del Carmen Morales Ramos', 'cmorales@legisver.gob.mx', '3176', NULL, 1, 4, 'MARIA DEL CARMEN MORALES RAMOS.pdf', 14),
(36, NULL, 'Departamento de Amparos', NULL, NULL, '3052', NULL, 1, 1, NULL, 15),
(37, NULL, 'Departamento de Fundo Legal', 'Lic. Pablo García Barradas', 'pgarcia@legisver.gob.mx', '3054', NULL, 1, 1, NULL, 15),
(38, NULL, 'Departamento de Archivo', 'C. Fernando Domínguez Olmos', 'archivo@legisver.gob.mx', '3091', NULL, 1, 1, 'DominguezOlmosFernando.pdf', 16),
(39, NULL, 'Oficina de Oficialía de Partes', 'Lic. Fernando Perera Herrera', 'fperera@legisver.gob.mx', '3104', NULL, 1, 1, 'FERNANDO PERERA HERRERA.pdf', 17),
(40, NULL, 'Oficina de Servicios Médicos', 'Dra. Claudia del Rosario García Pérez', 'dra_cgarcia@legisver.gob.mx', '3106', NULL, 1, 1, 'CLAUDIA DEL ROSARIO GARCIA PEREZ.pdf', 17),
(41, NULL, 'Oficina del Sindicato Único de Trabajadores al Servicio del Poder Legislativo', 'Lic. José de Jesús Rodríguez Hernández', 'jjrodriguez@legisver.gob.mx', '3109', NULL, 1, 0, NULL, 19),
(42, NULL, 'Centro de Estudios para la Igualdad de Género y Derechos Humanos', 'Dra. Mónica Mendoza Madrigal', 'mmendoza@legisver.gob.mx', '3039', NULL, 1, 1, NULL, 20),
(43, NULL, 'Unidad de Transparencia', 'Lic. Liliana López Coronado', 'llcoronado@legisver.gob.mx', '3127', NULL, 1, 0, 'LOPEZ CORONADO LILIANA2.pdf', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_comisiones`
--

CREATE TABLE `cat_comisiones` (
  `idComision` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `icono` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `archivoProgramaAnual` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_comisiones`
--

INSERT INTO `cat_comisiones` (`idComision`, `nombre`, `tipo`, `status`, `icono`, `correo`, `archivoProgramaAnual`) VALUES
(1, 'Comisión de Administración y Presupuesto', 'P', 1, 'AdmPres.png', 'comision.adminypresupuesto@legisver.gob.mx', NULL),
(2, 'Comisión de Asuntos Indígenas', 'P', 1, 'AsunIndig.png', 'comision.asuntosindigenas@legisver.gob.mx', NULL),
(3, 'Comisión de Ciencia y Tecnología', 'P', 1, 'CienTec.png', 'comision.cienciatecnologia@legisver.gob.mx', NULL),
(4, 'Comisión de Comunicaciones', 'P', 1, 'Comunicaciones.png', 'comision.comunicaciones@legisver.gob.mx', NULL),
(5, 'Comisión de Población y Atención a Migrantes', 'P', 1, 'PobAteMig.png', 'comision.atencionmigrantes@legisver.gob.mx', NULL),
(6, 'Comisión de Desarrollo Agropecuario, Rural y Forestal', 'P', 1, 'DesAgroRurFor.png', 'comision.desarrolloagro@legisver.gob.mx', NULL),
(7, 'Comisión Corredor Interoceánico, Zonas Libres y Desarrollo Económico', 'P', 1, 'ZonEspDesEco.png', 'comision.desarrolloeconomico@legisver.gob.mx', NULL),
(8, 'Comisión de Desarrollo Social, Humano y Regional', 'P', 1, 'desarrolloSocHumReg.png', 'comision.desarrollosocial@legisver.gob.mx', NULL),
(9, 'Comisión de Desarrollo Urbano, Ordenamiento Territorial, Vivienda y Fundo Legal', 'P', 1, 'DesUrbOrdTerr.png', 'comision.desarrollourbano@legisver.gob.mx', NULL),
(10, 'Comisión de Desarrollo y Fortalecimiento Municipal', 'P', 1, 'DesFortMun.png', 'comision.desarrollomunicipal@legisver.gob.mx', NULL),
(11, 'Comisión de Editorial, Biblioteca y Archivo', 'P', 1, 'EditBiblioArch.png', 'comision.editorial@legisver.gob.mx', NULL),
(12, 'Comisión de Educación y Cultura', 'P', 1, 'EducCult.png', 'comision.educacioncultura@legisver.gob.mx', NULL),
(13, 'Comisión para la Igualdad de Género', 'P', 1, 'IgualdadGenero.png', 'comision.igualdadgenero@legisver.gob.mx', NULL),
(14, 'Comisión de Participación Ciudadana, Gestoría y Quejas', 'P', 1, 'PartCiudadanaGestQuejas.png', 'comision.particiudadana@legisver.gob.mx', NULL),
(15, 'Comisión de Gobernación', 'P', 1, 'Gobernacion.png', 'comision.gobernacion@legisver.gob.mx', NULL),
(16, 'Comisión de Hacienda del Estado', 'P', 1, 'Hacienda.png', 'comision.haciendaestado@legisver.gob.mx', 'haciendayacta.pdf'),
(17, 'Comisión de Hacienda Municipal', 'P', 1, 'HaciendaMunicipal.png', 'comision.haciendamunicipal@legisver.gob.mx', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_diputados`
--

CREATE TABLE `cat_diputados` (
  `idDiputado` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) NOT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `cargo` varchar(200) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `cvPdf` varchar(50) DEFAULT NULL COMMENT 'Archivo PDF que contiene el curriculum vitae',
  `idDistrito` int(11) NOT NULL,
  `suplenteDe` int(11) DEFAULT '0',
  `ordenNivel` int(11) NOT NULL COMMENT '0 Pdte JUCOPO\r\n1 Presidente de la mesa directiva\r\n2 Secretario de la mesa directiva\r\n3 Vicepresidente\r\n4 Coordinador de grupo legislativo\r\n5 El resto de diputados'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_diputados`
--

INSERT INTO `cat_diputados` (`idDiputado`, `nombre`, `paterno`, `materno`, `extension`, `cargo`, `correo`, `foto`, `cvPdf`, `idDistrito`, `suplenteDe`, `ordenNivel`) VALUES
(1, 'Juan Javier', 'Gómez', 'Cazarín', '2166', 'PRESIDENTE', 'Dip_jgomez@legisver.gob.mx', 'JuanJavierGomezCasarin.jpg', NULL, 25, 0, 0),
(2, 'José Manuel', 'Pozos', 'Castro', '3026', 'PRESIDENTE DE LA MESA DIRECTIVA', 'Dip_mpozos@legisver.gob.mx', 'JoseManuelPozos.jpg', 'DIP. JOSE MANUEL POZOS CASTRO.pdf', 3, 0, 1),
(3, 'Cristina', 'Alarcón', 'Gutiérrez', '2028', '', 'Dip_calarcon@legisver.gob.mx', 'CristinaAlarcon.jpg', 'DIP. CRISTINA ALARCON GUTIERREZ1.pdf', 31, 0, 5),
(4, 'Augusto Nahúm', 'Álvarez', 'Pellico', '2234', '', 'Dip_aalvarez@legisver.gob.mx', 'AugustoNahumAlvarez.jpg', 'DIP. AUGUSTO NAHUM ALVAREZ PELLICO.pdf', 20, 0, 5),
(5, 'Raymundo', 'Andrade', 'Rivera', '2088', '', 'Dip_randrade@legisver.gob.mx', 'RaymundoAndrade.jpg', 'DIP. RAYMUNDO ANDRADE RIVERA.pdf', 12, 0, 5),
(6, 'Magaly', 'Armenta', 'Oliveros', '2040', '', 'Dip_marmenta@legisver.gob.mx', 'MagalyAmentaOlivera.jpg', 'DIP. MAGALY ARMENTA OLIVEROS.pdf', 26, 0, 5),
(7, 'José Andrés', 'Castellanos', 'Velázquez', '2228', '', 'Dip_acastellanos@legisver.gob.mx', 'JoseAndreCastellanos.jpg', 'DIP. JOSE ANDRES CASTELLANOS VELAZQUEZ.pdf', 31, 0, 5),
(8, 'Elizabeth', 'Cervantes', 'De La Cruz', '2208', '', 'Dip_ecervantes@legisver.gob.mx', 'ElizabethCervantesdelaCruz.jpg', 'DIP. ELIZABETH CERVANTES DE LA CRUZ.pdf', 31, 0, 5),
(9, 'Margarita', 'Corro', 'Mendoza', '2100', '', 'Dip_mcorro@legisver.gob.mx', 'MargaritaCorro.jpg', 'DIP. MARGARITA CORRO MENDOZA.pdf', 23, 0, 5),
(10, 'Amado de Jesús', 'Cruz', 'Malpica', '2194', '', 'Dip_acruz@legisver.gob.mx', 'AmadoCruz.jpg', 'DIP. AMADO JESUS CRUZ MALPICA.pdf', 29, 0, 5),
(11, 'Eric', 'Domínguez', 'Vázquez', '2008', '', 'Dip_edominguez@legisver.gob.mx', 'EricDominguezVazquez.jpg', 'DIP. ERIC DOMINGUEZ VAZQUEZ.pdf', 6, 0, 5),
(12, 'María Candelas', 'Francisco', 'Doce', '2240', '', 'Dip_candelas12@legisver.gob.mx', 'MariaCandelasFranciscoDoce.jpg', 'DIP. MARIA CANDELAS FRANCISCO DOCE.pdf', 21, 0, 5),
(13, 'Rosalinda', 'Galindo', 'Silva', '2064', '', 'Dip_rgalindo@legisver.gob.mx', 'RosalindaGalindo.jpg', 'DIP. GALINDO SILVA ROSALINDA.pdf', 10, 0, 5),
(14, 'Henri Christophe', 'Gómez', 'Sánchez', '2056', '', 'Dip_hgomez@legisver.gob.mx', 'HenriGomez.jpg', 'DIP. HENRI CHRISTOPHE GOMEZ SANCHEZ.pdf', 31, 0, 5),
(15, 'Wenceslao', 'González', 'Martínez', '2048', '', 'Dip_wgonzalez@legisver.gob.mx', 'WenceslaoGonzalez.jpg', 'DIP. WENCESLAO GONZALEZ MARTINEZ1.pdf', 31, 0, 5),
(16, 'León David', 'Jiménez', 'Reyes', '2076', '', 'Dip_ljimenez@legisver.gob.mx', 'LeonJimenez.jpg', 'DIP. LEON DAVID JIMENEZ REYES.pdf', 31, 0, 5),
(17, 'Deisy', 'Juan', 'Antonio', '2160', '', 'Dip_djuan@legisver.gob.mx', 'DeisyJuanAntonio.jpg', 'DIP. DEISY JUAN ANTONIO.pdf', 27, 0, 5),
(18, 'Adriana Paola', 'Linares', 'Capitanachi', '2212', '', 'Dip_alinares@legisver.gob.mx', 'AdrianaPaolaLinaresCapitanachi.jpg', 'DIP. ADRIANA PAOLA LINARES CAPITANACHI.pdf', 5, 0, 5),
(19, 'María Esther', 'López', 'Callejas', '2236', '', 'Dip_mlopez@legisver.gob.mx', 'MariaEstherLopezCallejas.jpg', 'DIP. MARIA ESTHER LOPEZ CALLEJAS.pdf', 13, 0, 5),
(20, 'Jessica', 'Ramírez', 'Cisneros', '2084', '', 'Dip_jramirez@legisver.gob.mx', 'JessicaRamirezCisneros.jpg', 'DIP. JESSICA RAMIREZ CISNEROS.pdf', 28, 0, 5),
(21, 'Mónica', 'Robles', 'Barajas', '2024', '', 'Dip_mrobles@legisver.gob.mx', 'MonicaRobles.jpg', 'DIP. MONICA ROBLES BARAJAS.pdf', 31, 0, 5),
(22, 'José Magdaleno', 'Rosales', 'Torres', '2036', '', 'Dip_mrosales@legisver.gob.mx', 'JoseMagdalenoRosales.jpg', 'DIP. JOSE MAGDALENO ROSALES TORRES.pdf', 17, 0, 5),
(23, 'Sergio', 'Hernández', 'Hernández', '2251', 'COORDINADOR DEL GRUPO LEGISLATIVO DEL PAN', 'Dip_shernandez@legisver.gob.mx', 'SergioHernandezHernandez.jpg', 'DIP. SERGIO HERNANDEZ HERNANDEZ.pdf', 31, 0, 4),
(24, 'Enrique', 'Cambranis', 'Torres', '2188', '', 'Dip_ecambranis@legisver.gob.mx', 'EnriqueCambranis.jpg', 'DIP. ENRIQUE CAMBRANIS TORRES.pdf', 31, 0, 5),
(25, 'Juan Manuel', 'De Unanue', 'Abascal', '2148', '', 'Dip_jdeunanue@legisver.gob.mx', 'JuanManueldeUnanueAbascal.jpg', 'DIP. JUAN MANUEL DE UNANUE ABASCAL.pdf', 16, 0, 5),
(26, 'María Josefina', 'Gamboa', 'Torales', '2080', '', 'Dip_jgamboa@legisver.gob.mx', 'MariaJosefinaGamboa.jpg', 'DIP. MARIA JOSEFINA GAMBOA TORALES.pdf', 14, 0, 5),
(27, 'Rodrígo', 'García', 'Escalante', '2136', NULL, 'Dip_rgarcia@legisver.gob.mx', 'RodrigoEscalante.jpg', 'DIP. RODRIGO GARCIA ESCALANTE.pdf', 1, 0, 5),
(28, 'María Graciela', 'Hernández', 'Iñiguez', '2128', '', 'Dip_ghernandez@legisver.gob.mx', 'MariaGracielaHernandez.jpg', 'DIP. MARIA GRACIELA HERNANDEZ IÑIGUEZ.pdf', 31, 0, 5),
(29, 'Nora Jessica', 'Lagunes', 'Jáuregui', '2152', '', 'Dip_nlagunes@legisver.gob.mx', 'NoraJessicaLagunesJauregui.jpg', 'NORA JESSICA LAGUNES JAUREGUIact2.pdf', 18, 0, 5),
(30, 'María de Jesús', 'Martínez', 'Díaz', '2180', '', 'Dip_jmartinez@legisver.gob.mx', 'MariadeJesusMartinez.jpg', 'DIP. MARIA DE JESUS MARTINEZ DIAZ.pdf', 31, 0, 5),
(31, 'Omar Guillermo', 'Miranda', 'Romero', '2120', '', 'Dip_omiranda@legisver.gob.mx', 'OmarMiranda.jpg', 'OMAR GUILLERMO MIRANDA ROMERO2.pdf', 31, 0, 5),
(32, 'Montserrat', 'Ortega', 'Ruiz', '2132', '', 'Dip_mortega@legisver.gob.mx', 'MontserratOrtegaRuiz.jpg', 'DIP. MONTSERRAT ORTEGA RUIZ.pdf', 31, 0, 5),
(33, 'Judith', 'Pineda', 'Andrade', '2196', NULL, 'Dip_jpineda@legisver.gob.mx', 'JudithPineda.jpg', 'DIP. JUDITH PINEDA ANDRADE.pdf', 2, 0, 5),
(34, 'Bingen', 'Rementería', 'Molina', '2124', '', 'Dip_brementeria@legisver.gob.mx', 'BingenRementeria.jpg', 'DIP. BINGEN REMENTERIA MOLINA.pdf', 15, 0, 5),
(35, 'Erik Iván', 'Aguilar', 'López', '2068', '', 'Dip_eaguilar@legisver.gob.mx', 'ErikIvanAguilarLopez.jpg', 'DIP. ERIK IVAN AGUILAR LOPEZ.pdf', 8, 0, 5),
(36, 'Gonzalo', 'Guízar', 'Valladares', '2016', 'COORDINADOR DEL GRUPO LEGISLATIVO DEL LADO CORRECTO DE LA HISTORIA', 'Dip_gguizar@legisver.gob.mx', 'GonzaloGuizarValladares.jpg', 'DIP. GONZALO GUIZAR VALLADARES.pdf', 30, 0, 4),
(37, 'Rubén', 'Ríos', 'Uribe', '2106', '', 'Dip_rrios@legisver.gob.mx', 'RubenRiosUribe.jpg', 'DIP. RUBEN RIOS URIBE.pdf', 19, 0, 5),
(38, 'Erika', 'Ayala', 'Ríos', '2156', 'COORDINADORA DEL GRUPO LEGISLATIVO DEL PRI', 'Dip_eayala@legisver.gob.mx', 'ErikaAyalaRios.jpg', 'DIP. ERIKA AYALA RIOS.pdf', 31, 0, 4),
(39, 'Jorge', 'Moreno', 'Salinas', '2052', 'SECRETARIO DE LA MESA DIRECTIVA', 'Dip_jmoreno@legisver.gob.mx', 'JorgeMorenoSalinas.jpg', 'DIP. JORGE MORENO SALINAS.pdf', 31, 0, 3),
(40, 'Juan Carlos', 'Molina', 'Palacios', '2032', '', 'Dip_cmolina@legisver.gob.mx', 'JuanCarlosMolinaPalacios.jpg', 'DIP. JUAN CARLOS MOLINA PALACIOS.pdf', 31, 0, 5),
(41, 'Alexis', 'Sánchez', 'García', '2216', 'VICEPRESIDENTE DE LA MESA DIRECTIVA', 'Dip_asanchez@legisver.gob.mx', 'AlexisSanchez.jpg', 'DIP. ALEXIS SANCHEZ GARCIA.pdf', 22, 0, 2),
(42, 'Ivonne', 'Trujillo', 'Ortiz', '2012', '', 'Dip_itrujillo@legisver.gob.mx', 'IvonneTrujillo.jpg', 'DIP. IVONNE TRUJILLO ORTIZ.pdf', 9, 0, 5),
(43, 'Brianda Kristel', 'Hernández', 'Topete', '2000', 'COORDINADORA DEL GRUPO LEGISLATIVO MC-PRD', 'Dip_bhernandez@legisver.gob.mx', 'BriandaKristelHernandezTopete.jpg', 'DIP. BRIANDA KRISTEL HERNANDEZ TOPETE.pdf', 24, 0, 4),
(44, 'Florencia', 'Martínez', 'Rivera', '2004', '', 'Dip_fmartinez@legisver.gob.mx', 'FlorenciaMartinez.jpg', 'DIP. FLORENCIA MARTINEZ RIVERA.pdf', 31, 0, 5),
(45, 'Andrea de Guadalupe', 'Yunes', 'Yunes', '2044', '', 'Dip_ayunes@legisver.gob.mx', 'AndreaYunes(1).jpg', 'DIP. ANDREA DE GUADALUPE YUNES YUNES.pdf', 31, 0, 5),
(46, 'Ana Miriam', 'Ferraez', 'Centeno', '2096', '', 'Dip_aferraez@legisver.gob.mx', 'AnaMiriamFerraez.jpg', NULL, 11, 0, 5),
(47, 'Adriana Esther', 'Martínez', 'Sánchez', '2020', '', 'Dip_amartinez@legisver.gob.mx', 'AdrianaEstherMartiSanchez.jpg', NULL, 7, 0, 5),
(48, 'Vicky Virginia', 'Tadeo', 'Ríos', '2224', '', 'Dip_vtadeo@legisver.gob.mx', 'VirginaTadeo.jpg', NULL, 31, 0, 5),
(49, 'Víctor Emmanuel', 'Vargas', 'Barrientos', '2072', '', 'Dip_evargas@legisver.gob.mx', 'VictorVargas.jpg', NULL, 31, 0, 5),
(50, 'Ricardo Arturo', 'Serna', 'Barajas', '2140', '', 'Dip_rserna@legisver.gob.mx', 'RicardoSernaBarajas.jpg', NULL, 4, 0, 5),
(51, 'Pedro', 'Pulido', 'Pecero', NULL, NULL, NULL, NULL, NULL, 1, 27, 5),
(52, 'María de Jesús', 'Montiel', 'Nava', NULL, NULL, NULL, NULL, NULL, 2, 33, 5),
(53, 'Héctor Manuel', 'Ponce', 'García', NULL, '', NULL, NULL, NULL, 3, 2, 5),
(54, 'Adrián', 'Feliciano', 'Martinez', NULL, '', NULL, NULL, NULL, 4, 50, 5),
(55, 'Victoria', 'Méndez', 'San Agustín', NULL, '', NULL, NULL, NULL, 5, 18, 5),
(56, 'Daniel', 'Pérez', 'Pacheco', NULL, '', NULL, NULL, NULL, 6, 11, 5),
(57, 'María Magdalena', 'Boussart', 'Cruz', NULL, '', NULL, NULL, NULL, 7, 47, 5),
(58, 'Carlos Manuel', 'Jimenez', 'Diaz', NULL, '', NULL, NULL, NULL, 8, 35, 5),
(59, 'Claudia', 'Cortes', 'Arroyo', NULL, '', NULL, NULL, NULL, 9, 42, 5),
(60, 'Rosa Elvia', 'Lara', 'Castillo', NULL, '', NULL, NULL, NULL, 10, 13, 5),
(61, 'Brenda', 'Ceron', 'Chagoya', NULL, '', NULL, NULL, NULL, 11, 46, 5),
(62, 'Adrián', 'González', 'Naveda', NULL, '', NULL, NULL, NULL, 12, 5, 5),
(63, 'Carmen Mariana', 'Pérez', 'Hernández', NULL, '', NULL, NULL, NULL, 13, 19, 5),
(64, 'Janet', 'Yepez', 'Lara', NULL, '', NULL, NULL, NULL, 14, 26, 5),
(65, 'Victor Manuel', 'De la Fuente', 'Melendez', NULL, '', NULL, NULL, NULL, 15, 34, 5),
(66, 'Carlos Alberto', 'Triana', 'García', NULL, '', NULL, NULL, NULL, 16, 25, 5),
(67, 'Adrián', 'Martínez', 'Gayoso', NULL, '', NULL, NULL, NULL, 17, 22, 5),
(68, 'Azalea', 'González', 'Castro', NULL, '', NULL, NULL, NULL, 18, 29, 5),
(69, 'José', 'Escamilla', 'Aguilera', NULL, '', NULL, NULL, NULL, 19, 37, 5),
(70, 'Ramón Carlos', 'Rocha', 'Manilla', NULL, '', NULL, NULL, NULL, 20, 4, 5),
(71, 'Libni Adaelsi', 'Sáncez', 'Núñez', NULL, '', NULL, NULL, NULL, 21, 12, 5),
(72, 'Domingo', 'Panzo', 'Tecpile', NULL, '', NULL, NULL, NULL, 22, 41, 5),
(73, 'María Dolores', 'Romay', 'Lagunes', NULL, '', NULL, NULL, NULL, 23, 9, 5),
(74, 'Jenny del Pilar', 'Trinidad', 'Herrera', NULL, '', NULL, NULL, NULL, 24, 43, 5),
(75, 'Filemón', 'Chan', 'Alarcón', '2166', NULL, 'Dip_fchan@legisver.gob.mx', NULL, NULL, 25, 1, 5),
(76, 'Emilce', 'Trujillo', 'Paredes', NULL, '', NULL, NULL, NULL, 26, 6, 5),
(77, 'Roxana', 'Mina', 'Joaquín', NULL, '', NULL, NULL, NULL, 27, 17, 5),
(78, 'Viridiana', 'Becerra', 'Estudillo', NULL, '', NULL, NULL, NULL, 28, 20, 5),
(79, 'Jesús Armando', 'Mertinez', 'Mendoza', NULL, '', NULL, NULL, NULL, 29, 10, 5),
(80, 'Raúl', 'Calderón', 'Domínguez', NULL, '', NULL, NULL, NULL, 30, 36, 5),
(81, 'Federico', 'Salomón', 'Medina', NULL, '', NULL, NULL, NULL, 31, 24, 5),
(82, 'Karla Verónica', 'González', 'Cruz', NULL, '', NULL, NULL, NULL, 31, 30, 5),
(83, 'Jorge Alejandro', 'Barrera', 'Juárez', NULL, '', NULL, NULL, NULL, 31, 31, 5),
(84, 'Claudia Isabel', 'Palma', 'Pelayo', NULL, '', NULL, NULL, NULL, 31, 32, 5),
(85, 'Mizraim Eligio', 'Castelan', 'Enriquez', NULL, '', NULL, NULL, NULL, 31, 23, 5),
(86, 'Orquidea del Carmen', 'Soto', 'Pontón', NULL, '', NULL, NULL, NULL, 31, 28, 5),
(87, 'Antonio', 'García', 'Reyes', NULL, '', NULL, NULL, NULL, 31, 40, 5),
(88, 'Diana Isabel', 'Díaz', 'Carreto', NULL, '', NULL, NULL, NULL, 31, 38, 5),
(89, 'Rafael', 'De Hombre', 'López', NULL, '', NULL, NULL, NULL, 31, 39, 5),
(90, 'Lidia Abigail', 'Vazquez', 'Reynoso', NULL, '', NULL, NULL, NULL, 31, 44, 5),
(91, 'Paula', 'Rodríguez', 'Prado', NULL, '', NULL, NULL, NULL, 31, 45, 5),
(92, 'Julián', 'Martínez', 'Martínez', NULL, '', NULL, NULL, NULL, 31, 16, 5),
(93, 'Ingrid Jeni', 'Calderón', 'Domínguez', NULL, '', NULL, NULL, NULL, 31, 8, 5),
(94, 'Oscar Agustín', 'Lara', 'Hernández', NULL, '', NULL, NULL, NULL, 31, 49, 5),
(95, 'Thaili Anai', 'Hermida', 'Ramón', NULL, '', NULL, NULL, NULL, 31, 3, 5),
(96, 'Martín', 'Martínez', 'Gómez', NULL, '', NULL, NULL, NULL, 31, 7, 5),
(97, 'Xochitl', 'Arbesu', 'Lago', NULL, '', NULL, NULL, NULL, 31, 21, 5),
(98, 'Ignacio', 'Arroyo', 'Gaona', NULL, '', NULL, NULL, NULL, 31, 14, 5),
(99, 'Silvia', 'Castillo', 'Rivas', NULL, '', NULL, NULL, NULL, 31, 48, 5),
(100, 'Leonel', 'Herrera', 'Zapata', NULL, '', NULL, NULL, NULL, 31, 15, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_distritos`
--

CREATE TABLE `cat_distritos` (
  `idDistrito` bigint(20) UNSIGNED NOT NULL,
  `clave` varchar(10) NOT NULL COMMENT 'Número romano',
  `numero` int(11) NOT NULL COMMENT 'Número arábigo',
  `nombre` varchar(100) NOT NULL,
  `vigente` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_distritos`
--

INSERT INTO `cat_distritos` (`idDistrito`, `clave`, `numero`, `nombre`, `vigente`) VALUES
(1, 'I', 1, 'Pánuco', 1),
(2, 'II', 2, 'Tantoyuca', 1),
(3, 'III', 3, 'Tuxpan', 1),
(4, 'IV', 4, 'Álamo-Temapache', 1),
(5, 'V', 5, 'Poza Rica', 1),
(6, 'VI', 6, 'Papantla', 1),
(7, 'VII', 7, 'Martínez de la Torre', 1),
(8, 'VIII', 8, 'Misantla', 1),
(9, 'IX', 9, 'Perote', 1),
(10, 'X', 10, 'Xalapa I', 1),
(11, 'XI', 11, 'Xalapa II', 1),
(12, 'XII', 12, 'Coatepec', 1),
(13, 'XIII', 13, 'Emiliano Zapata', 1),
(14, 'XIV', 14, 'Veracruz I', 1),
(15, 'XV', 15, 'Veracruz II', 1),
(16, 'XVI', 16, 'Boca del Río', 1),
(17, 'XVII', 17, 'Medellín', 1),
(18, 'XVIII', 18, 'Huatusco', 1),
(19, 'XIX', 19, 'Córdoba', 1),
(20, 'XX', 20, 'Orizaba', 1),
(21, 'XXI', 21, 'Camerino Z. Mendoza', 1),
(22, 'XXII', 22, 'Zongolica', 1),
(23, 'XXIII', 23, 'Cosamaloapan', 1),
(24, 'XXIV', 24, 'Santiago Tuxtla', 1),
(25, 'XXV', 25, 'San Andrés Tuxtla', 1),
(26, 'XXVI', 26, 'Cosoleacaque', 1),
(27, 'XXVII', 27, 'Acayucan', 1),
(28, 'XXVIII', 28, 'Minatitlán', 1),
(29, 'XXIX', 29, 'Coatzacoalcos I', 1),
(30, 'XXX', 30, 'Coatzacoalcos II', 1),
(31, '', 99, 'Representación Proporcional', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_ejerciciolegislativo`
--

CREATE TABLE `cat_ejerciciolegislativo` (
  `idEjercicio` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_ejerciciolegislativo`
--

INSERT INTO `cat_ejerciciolegislativo` (`idEjercicio`, `nombre`) VALUES
(1, 'Primer Año de Ejercicio Constitucional'),
(2, 'Segundo Año de Ejercicio Constitucional'),
(3, 'Tercer Año de Ejercicio Constitucional'),
(4, 'Cuarto Año de Ejercicio Constitucional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_legislaturas`
--

CREATE TABLE `cat_legislaturas` (
  `idLegislatura` bigint(20) UNSIGNED NOT NULL,
  `clave` varchar(4) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `inicio` int(11) NOT NULL COMMENT 'Año de inicio',
  `fin` int(11) NOT NULL COMMENT 'Año en que finaliza',
  `no_axos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_legislaturas`
--

INSERT INTO `cat_legislaturas` (`idLegislatura`, `clave`, `nombre`, `inicio`, `fin`, `no_axos`) VALUES
(1, '58', 'LVIII LEGISLATURA', 1997, 2000, 3),
(2, '59', 'LIX LEGISLATURA', 2000, 2004, 4),
(3, '60', 'LX LEGISLATURA', 2004, 2007, 3),
(4, '61', 'LXI LEGISLATURA', 2007, 2010, 3),
(5, '62', 'LXII LEGISLATURA', 2010, 2013, 3),
(6, '63', 'LXIII LEGISLATURA', 2013, 2016, 3),
(7, '64', 'LXIV LEGISLATURA', 2016, 2018, 3),
(8, '65', 'LXV LEGISLATURA', 2018, 2021, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_partidospoliticos`
--

CREATE TABLE `cat_partidospoliticos` (
  `idPartido` bigint(20) UNSIGNED NOT NULL,
  `siglas` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `archivoImagen` varchar(50) NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_partidospoliticos`
--

INSERT INTO `cat_partidospoliticos` (`idPartido`, `siglas`, `nombre`, `archivoImagen`, `orden`) VALUES
(1, 'MORENA', 'Morena', 'logo_morena.jpg', 1),
(2, 'PAN', 'Partido Acción Nacional', 'logopan.jpg', 2),
(3, 'PT', 'Partido del Trabajo', 'logo_pt.jpg', 3),
(4, 'PES', 'Partido Encuentro Social', 'logo_pes.jpg', 4),
(5, 'PRI', 'Partido Revolucionario Institucional', 'logopri.jpg', 5),
(6, 'MC', 'Partido Movimiento Ciudadano', 'logo_movimientociudadano.jpg', 6),
(7, 'PRD', 'Partido de la Revolución Democrática', 'logo_prd.jpg', 7),
(8, 'PVEM', 'Partido Verde Ecologista de México', 'logo_pvem.jpg', 8),
(9, 'PC', 'Partido Convergencia', 'logo_convergencia.jpg', 15),
(10, 'Independiente', 'Diputados Independientes', 'logoind.jpg', 15),
(11, 'PRV', 'Partido Revolucionario Veracruzano', 'logo_prv.jpg', 15),
(12, 'NUEVA ALIANZA', 'Partido Nueva Alianza', 'NuevaAlianzaCh.jpg', 15),
(13, 'PRD - PC', 'Partido de la Revolución Democrática - Movimiento Ciudadano', 'logo_prd_pc.jpg', 15),
(14, 'AVE', 'Partido Alternativa Veracruzana', 'logoAve.jpg', 15),
(15, 'JPV', 'Juntos Por Veracruz', 'juntos por veracruz.jpg', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_periodos`
--

CREATE TABLE `cat_periodos` (
  `idPeriodo` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `permanente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_periodos`
--

INSERT INTO `cat_periodos` (`idPeriodo`, `nombre`, `permanente`) VALUES
(1, 'Primer Período de Sesiones Ordinarias', 0),
(2, 'Primer Receso', 1),
(3, 'Segundo Periodo de Sesiones Ordinarias', 0),
(4, 'Segundo Receso', 1),
(5, 'Primer Periodo Extraordinario', 0),
(6, 'Segundo Periodo Extraordinario', 0),
(7, 'Tercer Periodo Extraordinario', 0),
(8, 'Cuarto Periodo Extraordinario', 0),
(9, 'Quinto Periodo Extraordinario', 0),
(10, 'Sexto Periodo Extraordinario', 0),
(11, 'Séptimo Periodo Extraordinario', 0),
(12, 'Octavo Periodo Extraordinario', 0),
(13, 'Noveno Periodo Extraordinario', 0),
(14, 'Décimo Periodo Extraordinario', 0),
(15, 'Décimoprimer Periodo Extraordinario', 0),
(16, 'Décimosegundo Periodo Extraordinario', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_sesiones`
--

CREATE TABLE `cat_sesiones` (
  `idSesion` bigint(20) UNSIGNED NOT NULL,
  `sesion` varchar(100) NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `idLegislatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_sesiones`
--

INSERT INTO `cat_sesiones` (`idSesion`, `sesion`, `tipo`, `idLegislatura`) VALUES
(1, 'Sesión de instalación', 'w', 8),
(2, 'Sesión Solemne', 'w', 8),
(3, 'Primera Sesión Ordinaria', 'w', 8),
(4, 'Segunda Sesión Ordinaria', 'w', 8),
(5, 'Tercera Sesión Ordinaria', 'w', 8),
(6, 'Cuarta Sesión Ordinaria', 'w', 8),
(7, 'Quinta Sesión Ordinaria', 'w', 8),
(8, 'Sexta Sesión Ordinaria', 'w', 8),
(9, 'Octava Sesión Ordinaria', 'w', 8),
(10, 'Novena Sesión Ordinaria', 'w', 8),
(11, 'Décima Sesión Ordinaria', 'w', 8),
(12, 'Décimaprimera Sesión Ordinaria', 'w', 8),
(13, 'Décimasegunda Sesión Ordinaria', 'w', 8),
(14, 'Décimatercera Sesión Ordinaria', 'w', 8),
(15, 'Décimacuarta Sesión Ordinaria', 'w', 8),
(16, 'Décimaquinta Sesión Ordinaria', 'w', 8),
(17, 'Décimasexta Sesión Ordinaria', 'w', 8),
(18, 'Décimaoctava Sesión Ordinaria', 'w', 8),
(19, 'Décimanovena Sesión Ordinaria', 'w', 8),
(20, 'Vigésima Sesión Ordinaria', 'w', 8),
(21, 'Vigésimaprimera Sesión Ordinaria', 'w', 8),
(22, 'Vigésimasegunda Sesión Ordinaria', 'w', 8),
(23, 'Vigésimatercera Sesión Ordinaria', 'w', 8),
(24, 'Vigésimacuarta Sesión Ordinaria', 'w', 8),
(25, 'Vigésimaquinta Sesión Ordinaria', 'w', 8),
(26, 'Vigésimasexta Sesión Ordinaria', 'w', 8),
(27, 'Vigésimaséptima Sesión Ordinaria', 'w', 8),
(28, 'Vigésimaoctava Sesión Ordinaria', 'w', 8),
(29, 'Vigésimanovena Sesión Ordinaria', 'w', 8),
(30, 'Sesión Extraordinaria', 'w', 8),
(31, 'Sesión Pública', 'w', 8),
(32, 'Sesión Solemne de Apertura', 'w', 8),
(33, 'Sesión Solemne Medalla Adolfo Ruiz Cortines', 'w', 8),
(34, 'Sesión Solemne Medalla Heberto Castillo Martínez', 'w', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diariodedebates`
--

CREATE TABLE `diariodedebates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `archivo` varchar(100) NOT NULL,
  `idEjercicio` int(11) NOT NULL,
  `idPeriodo` int(11) NOT NULL,
  `idLegislatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `diariodedebates`
--

INSERT INTO `diariodedebates` (`id`, `fecha`, `archivo`, `idEjercicio`, `idPeriodo`, `idLegislatura`) VALUES
(1, '2019-05-07', 'LXV_DiarioDebates_Noviembre_ 2018.pdf', 1, 1, 8),
(2, '2019-05-21', 'LXV_DiarioDebates_Diciembre_2018.pdf', 1, 1, 8),
(3, '2019-07-17', 'LXV_DiarioDebates_Enero_2019.pdf', 1, 1, 8),
(4, '2019-07-19', 'LXV_DiarioDebates_Febrero_2019.pdf', 1, 2, 8),
(5, '2019-08-02', 'LXV_DiarioDebates_Marzo_2019.pdf', 1, 2, 8),
(6, '2019-08-16', 'LXV_DiarioDebates_Abril_2019.pdf', 1, 2, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diariodedebatesanexos`
--

CREATE TABLE `diariodedebatesanexos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` text NOT NULL,
  `archivoAnexo` varchar(80) NOT NULL,
  `idDiario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `diariodedebatesanexos`
--

INSERT INTO `diariodedebatesanexos` (`id`, `descripcion`, `archivoAnexo`, `idDiario`) VALUES
(1, 'Anexo A. De la Comisión Permanente de Vigilancia, Dictamen con proyecto de Decreto que aprueba el Informe del Resultado de las cuentas públicas de los entes fiscalizables del Estado de Veracruz, correspondientes al ejercicio 2015', 'Anexo_A_1er_Ext.pdf', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diputadoslegislatura`
--

CREATE TABLE `diputadoslegislatura` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idLegislatura` int(11) NOT NULL,
  `idDiputado` int(11) NOT NULL,
  `idPartido` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `permanente` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `diputadoslegislatura`
--

INSERT INTO `diputadoslegislatura` (`id`, `idLegislatura`, `idDiputado`, `idPartido`, `status`, `permanente`) VALUES
(1, 8, 1, 1, 1, 0),
(2, 8, 2, 1, 1, 0),
(3, 8, 3, 1, 1, 0),
(4, 8, 4, 1, 1, 0),
(5, 8, 5, 1, 1, 0),
(6, 8, 6, 1, 1, 0),
(7, 8, 7, 1, 1, 0),
(8, 8, 8, 1, 1, 0),
(9, 8, 9, 1, 1, 0),
(10, 8, 10, 1, 1, 0),
(11, 8, 11, 1, 1, 0),
(12, 8, 12, 1, 1, 0),
(13, 8, 13, 1, 1, 0),
(14, 8, 14, 1, 1, 0),
(15, 8, 15, 1, 1, 0),
(16, 8, 16, 1, 1, 0),
(17, 8, 17, 1, 1, 0),
(18, 8, 18, 1, 1, 0),
(19, 8, 19, 1, 1, 0),
(20, 8, 20, 1, 1, 0),
(21, 8, 21, 1, 1, 0),
(22, 8, 22, 1, 1, 0),
(23, 8, 45, 8, 1, 0),
(24, 8, 49, 1, 1, 0),
(25, 8, 23, 2, 1, 0),
(26, 8, 24, 2, 1, 0),
(27, 8, 25, 2, 1, 0),
(28, 8, 26, 2, 1, 0),
(30, 8, 28, 2, 1, 0),
(31, 8, 29, 2, 1, 0),
(32, 8, 30, 2, 1, 0),
(33, 8, 31, 2, 1, 0),
(34, 8, 32, 2, 1, 0),
(35, 8, 33, 2, 0, 0),
(36, 8, 34, 2, 1, 0),
(37, 8, 50, 2, 1, 0),
(38, 8, 35, 3, 1, 0),
(39, 8, 36, 4, 1, 0),
(40, 8, 37, 4, 1, 0),
(41, 8, 38, 5, 1, 0),
(42, 8, 39, 5, 1, 0),
(43, 8, 40, 5, 1, 0),
(44, 8, 41, 6, 1, 0),
(45, 8, 42, 6, 1, 0),
(46, 8, 43, 7, 1, 0),
(47, 8, 44, 7, 1, 0),
(48, 8, 48, 1, 1, 0),
(49, 8, 46, 1, 1, 0),
(50, 8, 47, 1, 1, 0),
(76, 8, 27, 2, 1, 0),
(79, 8, 51, 2, 0, 0),
(80, 8, 52, 2, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticaslegislativas`
--

CREATE TABLE `estadisticaslegislativas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `archivoEstadistica` varchar(100) NOT NULL,
  `idEjercicio` int(11) NOT NULL,
  `idPeriodo` int(11) NOT NULL,
  `idLegislatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadisticaslegislativas`
--

INSERT INTO `estadisticaslegislativas` (`id`, `archivoEstadistica`, `idEjercicio`, `idPeriodo`, `idLegislatura`) VALUES
(1, 'ESTADISTICA GENERAL.pdf', 1, 1, 8),
(2, 'EstadísticaPrimerReceso.pdf', 1, 2, 8),
(3, 'ESTADISTICA_GENERAL_2do_PERIODO_ORDINARIO.pdf', 1, 3, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_22_235722_create_cat_areas_table', 1),
(10, '2019_08_23_012304_agrega_visible_a_cat_areas', 2),
(13, '2019_08_23_013947_create_diputados_table', 3),
(14, '2019_08_23_024105_create_distritos_table', 4),
(15, '2019_08_23_202726_create_comisions_table', 5),
(17, '2019_08_30_150845_create_partido_politicos_table', 6),
(18, '2019_08_30_160251_create_legislaturas_table', 7),
(20, '2019_08_30_181634_create_diputados_legislaturas_table', 8),
(21, '2019_08_19_000000_create_failed_jobs_table', 9),
(22, '2019_09_05_020422_create_legisladors_table', 9),
(23, '2019_09_21_144928_create_sesions_table', 9),
(24, '2019_09_21_153711_create_periodos_table', 10),
(25, '2019_09_23_164854_create_ejercicio_legislativos_table', 11),
(27, '2019_09_23_194046_create_fecha_sesions_table', 12),
(28, '2019_09_23_194046_create_sesions_table', 13),
(30, '2019_09_24_024047_create_sesion_anexos_table', 14),
(31, '2019_09_24_031834_create_sesiones_medios_table', 15),
(32, '2019_09_24_171645_create_diario_de_debates_table', 16),
(33, '2019_09_24_181642_create_diario_de_debates_anexos_table', 17),
(34, '2019_09_24_190314_create_sumario_legislativo_table', 18),
(36, '2019_09_24_194949_create_agenda_legislativa_table', 19),
(37, '2019_09_24_203004_create_estadisticas_legislativas_table', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('joelcs73@gmail.com', '$2y$10$gTLtsiwMbbMjHzjAiOUJYu/6Yx1QRYqhSEIOeJjW41yCb//vZS5TS', '2019-08-24 08:53:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(5) NOT NULL,
  `idEjercicio` int(11) NOT NULL,
  `idPeriodo` int(11) NOT NULL,
  `idSesion` int(11) NOT NULL,
  `idLegislatura` int(11) NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `numeroGaceta` int(11) DEFAULT NULL,
  `archivoGaceta` varchar(100) DEFAULT '',
  `archivoVersionEstenografica` varchar(100) DEFAULT '',
  `archivoActa` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sesiones`
--

INSERT INTO `sesiones` (`id`, `fecha`, `hora`, `idEjercicio`, `idPeriodo`, `idSesion`, `idLegislatura`, `activo`, `numeroGaceta`, `archivoGaceta`, `archivoVersionEstenografica`, `archivoActa`) VALUES
(1, '2018-11-13', '12:00', 1, 1, 4, 8, 1, 3, 'GACETA3.pdf', 'Version_13noviembre18_SegundaSesionOrdinaria.pdf', 'Acta_13nov2018_2aOrd.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesionesanexos`
--

CREATE TABLE `sesionesanexos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `archivoAnexo` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSesion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sesionesanexos`
--

INSERT INTO `sesionesanexos` (`id`, `descripcion`, `archivoAnexo`, `idSesion`) VALUES
(1, 'Anexo A: Iniciativas de Código Hacendario para el Municipio de Misantla, Estado de Veracruz de Ignacio de la Llave, presentada por el ayuntamiento de ese municipio. 	Iniciativa de Código Hacendario para el Municipio de Juan Rodríguez Clara, Estado de Veracruz de Ignacio de la Llave, presentada por el ayuntamiento de ese municipio.', 'AnexoA3.pdf', 1),
(2, 'Informe de Actividades: Dip. Camerino Basilio Picazo Pérez.', 'informecamerino.pdf', 1),
(3, 'Informe de Actividades: Dip. Lourdes García González.', 'informelourdes.pdf', 1),
(4, 'Informe de Actividades: Dip. José Kirsch Sánchez.', 'informekirsch.pdf', 1),
(5, 'Informe de Actividades: Dip. María Josefina Gamboa Torales.', 'informemarijose.pdf', 1),
(6, 'Informe de Actividades: Dip. Amado Jesús Cruz Malpica.', 'informeamado.pdf', 1),
(7, 'Informe de Actividades: Dip. Luis Daniel Olmos Barradas.', 'informeOlmos.pdf', 1),
(8, 'Informe de Actividades: Dip. Yazmín de los Ángeles Copete Zapot.', 'IIinformecopete.pdf', 1),
(9, 'Informe de Actividades: Dip. Luisa Ángela Soto Maldonado.', 'informeLASM.pdf', 1),
(10, 'Informe de Actividades: Dip. Vicente Guillermo Benítez González.', 'IIInforme VGBG.pdf', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesionesmedios`
--

CREATE TABLE `sesionesmedios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `archivoAudio` varchar(80) NOT NULL,
  `archivoVideo` varchar(80) NOT NULL,
  `idSesion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sesionesmedios`
--

INSERT INTO `sesionesmedios` (`id`, `archivoAudio`, `archivoVideo`, `idSesion`) VALUES
(1, 'LXV_a131118so.mp3', 'LXV_v131118so.mp4', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sumariolegislativo`
--

CREATE TABLE `sumariolegislativo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `archivoSumario` varchar(100) NOT NULL,
  `idEjercicio` int(11) NOT NULL,
  `idPeriodo` int(11) NOT NULL,
  `idLegislatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sumariolegislativo`
--

INSERT INTO `sumariolegislativo` (`id`, `archivoSumario`, `idEjercicio`, `idPeriodo`, `idLegislatura`) VALUES
(1, 'SUMARIOLEGISLATIVO.pdf', 1, 1, 8),
(2, 'SUMARIOLEGISLATIVOprimerreceso.pdf', 1, 2, 8),
(3, 'Sumario_Segundo_Periodo.pdf', 1, 3, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joel Clemente Serrano', 'joelcs73@gmail.com', NULL, '$2y$10$.uHjKsl1Yzi/MIUz3DkGj.yoKxcAnCKT7QLKbUCxhksyC0mgwjz9O', 'Lc9EBvHLNocF95kVAYjOYnFUScHa2uMk4IpwvHYictJ7aK52b5eVzGWy0DKw', '2019-08-24 08:51:33', '2019-08-24 08:51:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admmenu`
--
ALTER TABLE `admmenu`
  ADD PRIMARY KEY (`idMenu`);

--
-- Indices de la tabla `admusuariomenu`
--
ALTER TABLE `admusuariomenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_admusuariomenu_admusuarios1` (`idUsuario`),
  ADD KEY `fk_admusuariomenu_admmenu1` (`idMenu`);

--
-- Indices de la tabla `admusuarios`
--
ALTER TABLE `admusuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `agendalegislativa`
--
ALTER TABLE `agendalegislativa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cat_areas`
--
ALTER TABLE `cat_areas`
  ADD PRIMARY KEY (`idArea`);

--
-- Indices de la tabla `cat_comisiones`
--
ALTER TABLE `cat_comisiones`
  ADD PRIMARY KEY (`idComision`);

--
-- Indices de la tabla `cat_diputados`
--
ALTER TABLE `cat_diputados`
  ADD PRIMARY KEY (`idDiputado`) USING BTREE;

--
-- Indices de la tabla `cat_distritos`
--
ALTER TABLE `cat_distritos`
  ADD PRIMARY KEY (`idDistrito`);

--
-- Indices de la tabla `cat_ejerciciolegislativo`
--
ALTER TABLE `cat_ejerciciolegislativo`
  ADD PRIMARY KEY (`idEjercicio`);

--
-- Indices de la tabla `cat_legislaturas`
--
ALTER TABLE `cat_legislaturas`
  ADD PRIMARY KEY (`idLegislatura`);

--
-- Indices de la tabla `cat_partidospoliticos`
--
ALTER TABLE `cat_partidospoliticos`
  ADD PRIMARY KEY (`idPartido`);

--
-- Indices de la tabla `cat_periodos`
--
ALTER TABLE `cat_periodos`
  ADD PRIMARY KEY (`idPeriodo`);

--
-- Indices de la tabla `cat_sesiones`
--
ALTER TABLE `cat_sesiones`
  ADD PRIMARY KEY (`idSesion`);

--
-- Indices de la tabla `diariodedebates`
--
ALTER TABLE `diariodedebates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `diariodedebatesanexos`
--
ALTER TABLE `diariodedebatesanexos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `diputadoslegislatura`
--
ALTER TABLE `diputadoslegislatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadisticaslegislativas`
--
ALTER TABLE `estadisticaslegislativas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sesionesanexos`
--
ALTER TABLE `sesionesanexos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sesionesmedios`
--
ALTER TABLE `sesionesmedios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sumariolegislativo`
--
ALTER TABLE `sumariolegislativo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admmenu`
--
ALTER TABLE `admmenu`
  MODIFY `idMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `admusuariomenu`
--
ALTER TABLE `admusuariomenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `admusuarios`
--
ALTER TABLE `admusuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `agendalegislativa`
--
ALTER TABLE `agendalegislativa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cat_areas`
--
ALTER TABLE `cat_areas`
  MODIFY `idArea` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `cat_comisiones`
--
ALTER TABLE `cat_comisiones`
  MODIFY `idComision` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `cat_diputados`
--
ALTER TABLE `cat_diputados`
  MODIFY `idDiputado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `cat_distritos`
--
ALTER TABLE `cat_distritos`
  MODIFY `idDistrito` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `cat_ejerciciolegislativo`
--
ALTER TABLE `cat_ejerciciolegislativo`
  MODIFY `idEjercicio` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cat_legislaturas`
--
ALTER TABLE `cat_legislaturas`
  MODIFY `idLegislatura` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cat_partidospoliticos`
--
ALTER TABLE `cat_partidospoliticos`
  MODIFY `idPartido` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `cat_periodos`
--
ALTER TABLE `cat_periodos`
  MODIFY `idPeriodo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `cat_sesiones`
--
ALTER TABLE `cat_sesiones`
  MODIFY `idSesion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `diariodedebates`
--
ALTER TABLE `diariodedebates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `diariodedebatesanexos`
--
ALTER TABLE `diariodedebatesanexos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `diputadoslegislatura`
--
ALTER TABLE `diputadoslegislatura`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `estadisticaslegislativas`
--
ALTER TABLE `estadisticaslegislativas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sesionesanexos`
--
ALTER TABLE `sesionesanexos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sesionesmedios`
--
ALTER TABLE `sesionesmedios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sumariolegislativo`
--
ALTER TABLE `sumariolegislativo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
