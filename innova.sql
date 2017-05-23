-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2017 at 12:06 AM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `roller`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_company`
--

CREATE TABLE IF NOT EXISTS `admin_company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `corporate_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET latin1 NOT NULL,
  `CUIT` int(11) NOT NULL,
  `status` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'P',
  `creation_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creator_id` int(11) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_company`
--

INSERT INTO `admin_company` (`company_id`, `parent_id`, `name`, `corporate_name`, `address`, `logo`, `website`, `phone`, `CUIT`, `status`, `creation_date`, `last_update`, `creator_id`) VALUES
(1, 0, 'Roller Service', '', '', '../../../skin/images/companies/logo.png', 'www.rollerservice.com.ar', '', 0, 'A', '2016-08-01 18:00:00', '2016-08-01 21:09:32', 8);

-- --------------------------------------------------------

--
-- Table structure for table `admin_country`
--

CREATE TABLE IF NOT EXISTS `admin_country` (
  `country_id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(4) NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5906 ;

--
-- Dumping data for table `admin_country`
--

INSERT INTO `admin_country` (`country_id`, `title`, `position`, `status`, `creation_date`) VALUES
(93, 'Afganistán', 1, 'A', '0000-00-00 00:00:00'),
(355, 'Albania', 1, 'A', '0000-00-00 00:00:00'),
(49, 'Alemania', 1, 'A', '0000-00-00 00:00:00'),
(376, 'Andorra', 1, 'A', '0000-00-00 00:00:00'),
(244, 'Angola', 1, 'A', '0000-00-00 00:00:00'),
(1021, 'Antigua y Barbuda', 1, 'A', '0000-00-00 00:00:00'),
(5902, 'Antillas', 1, 'A', '0000-00-00 00:00:00'),
(5901, 'Antillas Francesas', 1, 'A', '0000-00-00 00:00:00'),
(599, 'Antillas Holandesas', 1, 'A', '0000-00-00 00:00:00'),
(966, 'Arabia Saudita', 1, 'A', '0000-00-00 00:00:00'),
(213, 'Argelia', 1, 'A', '0000-00-00 00:00:00'),
(54, 'Argentina', 1, 'A', '0000-00-00 00:00:00'),
(374, 'Armenia', 1, 'A', '0000-00-00 00:00:00'),
(297, 'Aruba', 1, 'A', '0000-00-00 00:00:00'),
(61, 'Australia', 1, 'A', '0000-00-00 00:00:00'),
(43, 'Austria', 1, 'A', '0000-00-00 00:00:00'),
(994, 'Azerbaiyán', 1, 'A', '0000-00-00 00:00:00'),
(103, 'Bahamas', 1, 'A', '0000-00-00 00:00:00'),
(973, 'Bahrein', 1, 'A', '0000-00-00 00:00:00'),
(880, 'Bangladesh', 1, 'A', '0000-00-00 00:00:00'),
(104, 'Barbados', 1, 'A', '0000-00-00 00:00:00'),
(120, 'Barbudea', 1, 'A', '0000-00-00 00:00:00'),
(32, 'Bélgica', 1, 'A', '0000-00-00 00:00:00'),
(501, 'Belice', 1, 'A', '0000-00-00 00:00:00'),
(229, 'Benín', 1, 'A', '0000-00-00 00:00:00'),
(105, 'Bermuda', 1, 'A', '0000-00-00 00:00:00'),
(375, 'Bielorrusia', 1, 'A', '0000-00-00 00:00:00'),
(591, 'Bolivia', 1, 'A', '0000-00-00 00:00:00'),
(387, 'Bosnia - Herzegovina', 1, 'A', '0000-00-00 00:00:00'),
(267, 'Botswana', 1, 'A', '0000-00-00 00:00:00'),
(55, 'Brasil', 1, 'A', '0000-00-00 00:00:00'),
(673, 'Brunei', 1, 'A', '0000-00-00 00:00:00'),
(359, 'Bulgaria', 1, 'A', '0000-00-00 00:00:00'),
(226, 'Burkina Faso', 1, 'A', '0000-00-00 00:00:00'),
(257, 'Burundi', 1, 'A', '0000-00-00 00:00:00'),
(975, 'Bután', 1, 'A', '0000-00-00 00:00:00'),
(238, 'Cabo Verde', 1, 'A', '0000-00-00 00:00:00'),
(855, 'Cambodia', 1, 'A', '0000-00-00 00:00:00'),
(237, 'Camerún', 1, 'A', '0000-00-00 00:00:00'),
(107, 'Canadá', 1, 'A', '0000-00-00 00:00:00'),
(235, 'Chad', 1, 'A', '0000-00-00 00:00:00'),
(56, 'Chile', 1, 'A', '0000-00-00 00:00:00'),
(86, 'China', 1, 'A', '0000-00-00 00:00:00'),
(357, 'Chipre', 1, 'A', '0000-00-00 00:00:00'),
(269, 'Comores', 1, 'A', '0000-00-00 00:00:00'),
(57, 'Colombia', 1, 'A', '0000-00-00 00:00:00'),
(850, 'Corea del Norte', 1, 'A', '0000-00-00 00:00:00'),
(82, 'Corea del Sur', 1, 'A', '0000-00-00 00:00:00'),
(506, 'Costa Rica', 1, 'A', '0000-00-00 00:00:00'),
(385, 'Croacia', 1, 'A', '0000-00-00 00:00:00'),
(53, 'Cuba', 1, 'A', '0000-00-00 00:00:00'),
(45, 'Dinamarca', 1, 'A', '0000-00-00 00:00:00'),
(253, 'Djibouti', 1, 'A', '0000-00-00 00:00:00'),
(109, 'Dominica', 1, 'A', '0000-00-00 00:00:00'),
(593, 'Ecuador', 1, 'A', '0000-00-00 00:00:00'),
(20, 'Egipto', 1, 'A', '0000-00-00 00:00:00'),
(503, 'El Salvador', 1, 'A', '0000-00-00 00:00:00'),
(971, 'Emiratos &Aacute;rabes Unidos', 1, 'A', '0000-00-00 00:00:00'),
(291, 'Eritrea', 1, 'A', '0000-00-00 00:00:00'),
(421, 'Eslovaquia', 1, 'A', '0000-00-00 00:00:00'),
(386, 'Eslovenia', 1, 'A', '0000-00-00 00:00:00'),
(34, 'España', 1, 'A', '0000-00-00 00:00:00'),
(1, 'Estados Unidos', 1, 'A', '0000-00-00 00:00:00'),
(372, 'Estonia', 1, 'A', '0000-00-00 00:00:00'),
(251, 'Etiopía', 1, 'A', '0000-00-00 00:00:00'),
(679, 'Fiji', 1, 'A', '0000-00-00 00:00:00'),
(63, 'Filipinas', 1, 'A', '0000-00-00 00:00:00'),
(358, 'Finlandia', 1, 'A', '0000-00-00 00:00:00'),
(33, 'Francia', 1, 'A', '0000-00-00 00:00:00'),
(241, 'Gabón', 1, 'A', '0000-00-00 00:00:00'),
(441, 'Gales', 1, 'A', '0000-00-00 00:00:00'),
(220, 'Gambia', 1, 'A', '0000-00-00 00:00:00'),
(995, 'Georgia', 1, 'A', '0000-00-00 00:00:00'),
(233, 'Ghana', 1, 'A', '0000-00-00 00:00:00'),
(111, 'Granada', 1, 'A', '0000-00-00 00:00:00'),
(30, 'Grecia', 1, 'A', '0000-00-00 00:00:00'),
(299, 'Groenlandia', 1, 'A', '0000-00-00 00:00:00'),
(502, 'Guatemala', 1, 'A', '0000-00-00 00:00:00'),
(224, 'Guinea', 1, 'A', '0000-00-00 00:00:00'),
(245, 'Guinea Bissau', 1, 'A', '0000-00-00 00:00:00'),
(240, 'Guinea Ecuatorial', 1, 'A', '0000-00-00 00:00:00'),
(592, 'Guyana', 1, 'A', '0000-00-00 00:00:00'),
(594, 'Guyana Francesa', 1, 'A', '0000-00-00 00:00:00'),
(509, 'Haití', 1, 'A', '0000-00-00 00:00:00'),
(31, 'Holanda', 1, 'A', '0000-00-00 00:00:00'),
(504, 'Honduras', 1, 'A', '0000-00-00 00:00:00'),
(852, 'Hong Kong', 1, 'A', '0000-00-00 00:00:00'),
(36, 'Hungría', 1, 'A', '0000-00-00 00:00:00'),
(91, 'India', 1, 'A', '0000-00-00 00:00:00'),
(62, 'Indonesia', 1, 'A', '0000-00-00 00:00:00'),
(98, 'Irán', 1, 'A', '0000-00-00 00:00:00'),
(964, 'Iraq', 1, 'A', '0000-00-00 00:00:00'),
(353, 'Irlanda', 1, 'A', '0000-00-00 00:00:00'),
(354, 'Islandia', 1, 'A', '0000-00-00 00:00:00'),
(108, 'Islas Cayman', 1, 'A', '0000-00-00 00:00:00'),
(178, 'Islas Canarias', 1, 'A', '0000-00-00 00:00:00'),
(298, 'Islas Feroe', 1, 'A', '0000-00-00 00:00:00'),
(500, 'Islas Malvinas', 1, 'A', '0000-00-00 00:00:00'),
(692, 'Islas Marshall', 1, 'A', '0000-00-00 00:00:00'),
(677, 'Islas Salomón', 1, 'A', '0000-00-00 00:00:00'),
(123, 'Islas Virgenes', 1, 'A', '0000-00-00 00:00:00'),
(106, 'Islas Virgenes Británicas', 1, 'A', '0000-00-00 00:00:00'),
(972, 'Israel', 1, 'A', '0000-00-00 00:00:00'),
(39, 'Italia', 1, 'A', '0000-00-00 00:00:00'),
(112, 'Jamaica', 1, 'A', '0000-00-00 00:00:00'),
(81, 'Japón', 1, 'A', '0000-00-00 00:00:00'),
(962, 'Jordania', 1, 'A', '0000-00-00 00:00:00'),
(731, 'Kazajstán', 1, 'A', '0000-00-00 00:00:00'),
(254, 'Kenia', 1, 'A', '0000-00-00 00:00:00'),
(733, 'Kirguizistán', 1, 'A', '0000-00-00 00:00:00'),
(686, 'Kiribati', 1, 'A', '0000-00-00 00:00:00'),
(965, 'Kuwait', 1, 'A', '0000-00-00 00:00:00'),
(856, 'Laos', 1, 'A', '0000-00-00 00:00:00'),
(266, 'Lesotho', 1, 'A', '0000-00-00 00:00:00'),
(371, 'Letonia', 1, 'A', '0000-00-00 00:00:00'),
(961, 'Líbano', 1, 'A', '0000-00-00 00:00:00'),
(231, 'Liberia', 1, 'A', '0000-00-00 00:00:00'),
(218, 'Libia', 1, 'A', '0000-00-00 00:00:00'),
(417, 'Liechtenstein', 1, 'A', '0000-00-00 00:00:00'),
(370, 'Lituania', 1, 'A', '0000-00-00 00:00:00'),
(352, 'Luxemburgo', 1, 'A', '0000-00-00 00:00:00'),
(389, 'Macedonia', 1, 'A', '0000-00-00 00:00:00'),
(853, 'Macau', 1, 'A', '0000-00-00 00:00:00'),
(261, 'Madagascar', 1, 'A', '0000-00-00 00:00:00'),
(60, 'Malasia', 1, 'A', '0000-00-00 00:00:00'),
(265, 'Malawi', 1, 'A', '0000-00-00 00:00:00'),
(960, 'Maldivas', 1, 'A', '0000-00-00 00:00:00'),
(223, 'Malí', 1, 'A', '0000-00-00 00:00:00'),
(356, 'Malta', 1, 'A', '0000-00-00 00:00:00'),
(212, 'Marruecos', 1, 'A', '0000-00-00 00:00:00'),
(596, 'Martinica', 1, 'A', '0000-00-00 00:00:00'),
(230, 'Mauricio', 1, 'A', '0000-00-00 00:00:00'),
(222, 'Mauritania', 1, 'A', '0000-00-00 00:00:00'),
(52, 'México', 1, 'A', '0000-00-00 00:00:00'),
(691, 'Micronesia', 1, 'A', '0000-00-00 00:00:00'),
(373, 'Moldavia', 1, 'A', '0000-00-00 00:00:00'),
(377, 'Mónaco', 1, 'A', '0000-00-00 00:00:00'),
(976, 'Mongolia', 1, 'A', '0000-00-00 00:00:00'),
(258, 'Mozambique', 1, 'A', '0000-00-00 00:00:00'),
(95, 'Myamar', 1, 'A', '0000-00-00 00:00:00'),
(264, 'Namibia', 1, 'A', '0000-00-00 00:00:00'),
(674, 'Naurú', 1, 'A', '0000-00-00 00:00:00'),
(977, 'Nepal', 1, 'A', '0000-00-00 00:00:00'),
(505, 'Nicaragua', 1, 'A', '0000-00-00 00:00:00'),
(227, 'Níger', 1, 'A', '0000-00-00 00:00:00'),
(234, 'Nigeria', 1, 'A', '0000-00-00 00:00:00'),
(47, 'Noruega', 1, 'A', '0000-00-00 00:00:00'),
(64, 'Nueva Zelanda', 1, 'A', '0000-00-00 00:00:00'),
(986, 'Omán', 1, 'A', '0000-00-00 00:00:00'),
(92, 'Pakistán', 1, 'A', '0000-00-00 00:00:00'),
(680, 'Palau', 1, 'A', '0000-00-00 00:00:00'),
(595, 'Paraguay', 1, 'A', '0000-00-00 00:00:00'),
(507, 'Panamá', 1, 'A', '0000-00-00 00:00:00'),
(675, 'Papúa - Nueva Guinea', 1, 'A', '0000-00-00 00:00:00'),
(51, 'Perú', 1, 'A', '0000-00-00 00:00:00'),
(689, 'Polinesia', 1, 'A', '0000-00-00 00:00:00'),
(48, 'Polonia', 1, 'A', '0000-00-00 00:00:00'),
(351, 'Portugal', 1, 'A', '0000-00-00 00:00:00'),
(121, 'Puerto Rico', 1, 'A', '0000-00-00 00:00:00'),
(974, 'Qatar', 1, 'A', '0000-00-00 00:00:00'),
(44, 'Reino Unido', 1, 'A', '0000-00-00 00:00:00'),
(236, 'República Centroafricana', 1, 'A', '0000-00-00 00:00:00'),
(420, 'República Checa', 1, 'A', '0000-00-00 00:00:00'),
(242, 'República del Congo', 1, 'A', '0000-00-00 00:00:00'),
(243, 'República Democrática del Congo', 1, 'A', '0000-00-00 00:00:00'),
(110, 'República Dominicana', 1, 'A', '0000-00-00 00:00:00'),
(27, 'República Sudafricana', 1, 'A', '0000-00-00 00:00:00'),
(250, 'Ruanda', 1, 'A', '0000-00-00 00:00:00'),
(40, 'Rumanía', 1, 'A', '0000-00-00 00:00:00'),
(7, 'Rusia', 1, 'A', '0000-00-00 00:00:00'),
(685, 'Samoa Occidental', 1, 'A', '0000-00-00 00:00:00'),
(114, 'San Cristóbal y Nevis', 1, 'A', '0000-00-00 00:00:00'),
(378, 'San Marino', 1, 'A', '0000-00-00 00:00:00'),
(116, 'San Vicente y Granadinas', 1, 'A', '0000-00-00 00:00:00'),
(122, 'Santa Lucía', 1, 'A', '0000-00-00 00:00:00'),
(239, 'Santo Tomé y Príncipe', 1, 'A', '0000-00-00 00:00:00'),
(221, 'Senegal', 1, 'A', '0000-00-00 00:00:00'),
(248, 'Seychelles', 1, 'A', '0000-00-00 00:00:00'),
(232, 'Sierra Leona', 1, 'A', '0000-00-00 00:00:00'),
(65, 'Singapur', 1, 'A', '0000-00-00 00:00:00'),
(963, 'Siria', 1, 'A', '0000-00-00 00:00:00'),
(252, 'Somalia', 1, 'A', '0000-00-00 00:00:00'),
(94, 'Sri Lanka', 1, 'A', '0000-00-00 00:00:00'),
(249, 'Sudán', 1, 'A', '0000-00-00 00:00:00'),
(46, 'Suecia', 1, 'A', '0000-00-00 00:00:00'),
(41, 'Suiza', 1, 'A', '0000-00-00 00:00:00'),
(597, 'Surinam', 1, 'A', '0000-00-00 00:00:00'),
(268, 'Swazilandia', 1, 'A', '0000-00-00 00:00:00'),
(66, 'Tailandia', 1, 'A', '0000-00-00 00:00:00'),
(886, 'Taiwán', 1, 'A', '0000-00-00 00:00:00'),
(255, 'Tanzania', 1, 'A', '0000-00-00 00:00:00'),
(708, 'Tayikistán', 1, 'A', '0000-00-00 00:00:00'),
(228, 'Togo', 1, 'A', '0000-00-00 00:00:00'),
(676, 'Tonga', 1, 'A', '0000-00-00 00:00:00'),
(117, 'Trinidad y Tobago', 1, 'A', '0000-00-00 00:00:00'),
(216, 'Túnez', 1, 'A', '0000-00-00 00:00:00'),
(709, 'Turkmenistán', 1, 'A', '0000-00-00 00:00:00'),
(90, 'Turquía', 1, 'A', '0000-00-00 00:00:00'),
(688, 'Tuvalú', 1, 'A', '0000-00-00 00:00:00'),
(380, 'Ucrania', 1, 'A', '0000-00-00 00:00:00'),
(256, 'Uganda', 1, 'A', '0000-00-00 00:00:00'),
(598, 'Uruguay', 1, 'A', '0000-00-00 00:00:00'),
(711, 'Uzbekistán', 1, 'A', '0000-00-00 00:00:00'),
(678, 'Vanuatú', 1, 'A', '0000-00-00 00:00:00'),
(379, 'Vaticano', 1, 'A', '0000-00-00 00:00:00'),
(58, 'Venezuela', 1, 'A', '0000-00-00 00:00:00'),
(84, 'Vietnam', 1, 'A', '0000-00-00 00:00:00'),
(967, 'Yemen', 1, 'A', '0000-00-00 00:00:00'),
(381, 'Yugoslavia', 1, 'A', '0000-00-00 00:00:00'),
(3811, 'Yugoslavia - Serbia', 1, 'A', '0000-00-00 00:00:00'),
(382, 'Yugoslavia - Montenegro', 1, 'A', '0000-00-00 00:00:00'),
(260, 'Zambia', 1, 'A', '0000-00-00 00:00:00'),
(263, 'Zimbabwe', 1, 'A', '0000-00-00 00:00:00'),
(5000, 'Otros', 1, 'A', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_country_province`
--

CREATE TABLE IF NOT EXISTS `admin_country_province` (
  `province_id` int(4) NOT NULL AUTO_INCREMENT,
  `country_id` int(4) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(4) NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=79 ;

--
-- Dumping data for table `admin_country_province`
--

INSERT INTO `admin_country_province` (`province_id`, `country_id`, `title`, `position`, `status`) VALUES
(1, 54, 'Capital Federal', 1, 'A'),
(2, 54, 'Buenos Aires', 2, 'A'),
(3, 54, 'Santa Fé', 6, 'A'),
(4, 54, 'Entre Ríos', 7, 'A'),
(5, 54, 'Corrientes', 8, 'A'),
(6, 54, 'Misiones', 9, 'A'),
(7, 54, 'Chaco', 10, 'A'),
(8, 54, 'Formosa', 11, 'A'),
(9, 54, 'Córdoba', 12, 'A'),
(10, 54, 'Santiago del Estero', 13, 'A'),
(11, 54, 'Jujuy', 14, 'A'),
(12, 54, 'Salta', 15, 'A'),
(13, 54, 'La Rioja', 16, 'A'),
(14, 54, 'San Juan', 17, 'A'),
(15, 54, 'Tucumán', 18, 'A'),
(16, 54, 'Mendoza', 19, 'A'),
(17, 54, 'San Luis', 20, 'A'),
(18, 54, 'La Pampa', 21, 'A'),
(19, 54, 'Neuquén', 22, 'A'),
(20, 54, 'Río Negro', 23, 'A'),
(21, 54, 'Chubut', 24, 'A'),
(22, 54, 'Santa Cruz', 25, 'A'),
(23, 54, 'Tierra del Fuego', 26, 'A'),
(24, 54, 'Catamarca', 27, 'A'),
(25, 54, 'Gran Bs As Norte', 3, 'I'),
(26, 54, 'Gran Bs As Sur', 4, 'I'),
(27, 54, 'Gran Bs As Oeste', 5, 'I'),
(28, 34, '&Aacute;lava', 0, 'A'),
(29, 34, 'Albacete', 0, 'A'),
(30, 34, 'Alicante', 0, 'A'),
(31, 34, 'Almería', 0, 'A'),
(32, 34, 'Asturias', 0, 'A'),
(33, 34, '&Aacute;vila', 0, 'A'),
(34, 34, 'Badajoz', 0, 'A'),
(35, 34, 'Islas Baleares', 0, 'A'),
(36, 34, 'Barcelona', 0, 'A'),
(37, 34, 'Burgos', 0, 'A'),
(38, 34, 'Cáceres', 0, 'A'),
(39, 34, 'Cádiz', 0, 'A'),
(40, 34, 'Cantabria', 0, 'A'),
(41, 34, 'Castellón', 0, 'A'),
(42, 34, 'Ceuta', 0, 'A'),
(43, 34, 'Ciudad Real', 0, 'A'),
(44, 34, 'Córdoba', 0, 'A'),
(45, 34, 'La Coruña', 0, 'A'),
(46, 34, 'Cuenca', 0, 'A'),
(47, 34, 'Girona', 0, 'A'),
(48, 34, 'Granada', 0, 'A'),
(49, 34, 'Guadalajara', 0, 'A'),
(50, 34, 'Guipúzcoa', 0, 'A'),
(51, 34, 'Huelva', 0, 'A'),
(52, 34, 'Huesca', 0, 'A'),
(53, 34, 'Jaén', 0, 'A'),
(54, 34, 'León', 0, 'A'),
(55, 34, 'Lleida', 0, 'A'),
(56, 34, 'Lugo', 0, 'A'),
(57, 34, 'Madrid', 0, 'A'),
(58, 34, 'Málaga', 0, 'A'),
(59, 34, 'Melilla', 0, 'A'),
(60, 34, 'Murcia', 0, 'A'),
(61, 34, 'Navarra', 0, 'A'),
(62, 34, 'Orense', 0, 'A'),
(63, 34, 'Palencia', 0, 'A'),
(64, 34, 'Las Palmas', 0, 'A'),
(65, 34, 'Pontevedra', 0, 'A'),
(66, 34, 'La Rioja', 0, 'A'),
(67, 34, 'Salamanca', 0, 'A'),
(68, 34, 'Segovia', 0, 'A'),
(69, 34, 'Soria', 0, 'A'),
(70, 34, 'Tarragona', 0, 'A'),
(71, 34, 'S.C.Tenerife', 0, 'A'),
(72, 34, 'Teruel', 0, 'A'),
(73, 34, 'Toledo', 0, 'A'),
(74, 34, 'Valencia', 0, 'A'),
(75, 34, 'Valladolid', 0, 'A'),
(76, 34, 'Vizcaya', 0, 'A'),
(77, 34, 'Zamora', 0, 'A'),
(78, 34, 'Zaragoza', 0, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `admin_country_zone`
--

CREATE TABLE IF NOT EXISTS `admin_country_zone` (
  `zone_id` int(5) NOT NULL AUTO_INCREMENT,
  `country_id` int(4) NOT NULL,
  `province_id` int(4) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(4) NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1096 ;

--
-- Dumping data for table `admin_country_zone`
--

INSERT INTO `admin_country_zone` (`zone_id`, `country_id`, `province_id`, `title`, `position`, `status`) VALUES
(61, 54, 2, '9 de Julio', 0, 'A'),
(60, 54, 2, '25 de Mayo', 0, 'A'),
(59, 54, 2, '16 de Julio', 0, 'A'),
(11, 54, 1, 'Agronomía', 0, 'A'),
(12, 54, 1, 'Almagro', 0, 'A'),
(13, 54, 1, 'Balvanera', 0, 'A'),
(14, 54, 1, 'Barracas', 0, 'A'),
(15, 54, 1, 'Belgrano', 0, 'A'),
(16, 54, 1, 'Boedo', 0, 'A'),
(17, 54, 1, 'Caballito', 0, 'A'),
(18, 54, 1, 'Chacarita', 0, 'A'),
(19, 54, 1, 'Coghlan', 0, 'A'),
(20, 54, 1, 'Colegiales', 0, 'A'),
(21, 54, 1, 'Constitución', 0, 'A'),
(22, 54, 1, 'Flores', 0, 'A'),
(23, 54, 1, 'Floresta', 0, 'A'),
(24, 54, 1, 'La Boca', 0, 'A'),
(25, 54, 1, 'La Paternal', 0, 'A'),
(26, 54, 1, 'Liniers', 0, 'A'),
(27, 54, 1, 'Mataderos', 0, 'A'),
(28, 54, 1, 'Monte Castro', 0, 'A'),
(29, 54, 1, 'Monserrat', 0, 'A'),
(30, 54, 1, 'Nueva Pompeya', 0, 'A'),
(31, 54, 1, 'Núñez', 0, 'A'),
(32, 54, 1, 'Palermo', 0, 'A'),
(33, 54, 1, 'Parque Avellaneda', 0, 'A'),
(34, 54, 1, 'Parque Chacabuco', 0, 'A'),
(35, 54, 1, 'Parque Chas', 0, 'A'),
(36, 54, 1, 'Parque Patricios', 0, 'A'),
(37, 54, 1, 'Puerto Madero', 0, 'A'),
(38, 54, 1, 'Recoleta', 0, 'A'),
(39, 54, 1, 'Retiro', 0, 'A'),
(40, 54, 1, 'Saavedra', 0, 'A'),
(41, 54, 1, 'San Cristóbal', 0, 'A'),
(42, 54, 1, 'San Nicolás', 0, 'A'),
(43, 54, 1, 'San Telmo', 0, 'A'),
(44, 54, 1, 'Vélez Sársfield', 0, 'A'),
(45, 54, 1, 'Versalles', 0, 'A'),
(46, 54, 1, 'Villa Crespo', 0, 'A'),
(47, 54, 1, 'Villa del Parque', 0, 'A'),
(48, 54, 1, 'Villa Devoto', 0, 'A'),
(49, 54, 1, 'Villa Gral. Mitre', 0, 'A'),
(50, 54, 1, 'Villa Lugano', 0, 'A'),
(51, 54, 1, 'Villa Luro', 0, 'A'),
(52, 54, 1, 'Villa Ortúzar', 0, 'A'),
(53, 54, 1, 'Villa Pueyrredón', 0, 'A'),
(54, 54, 1, 'Villa Real', 0, 'A'),
(55, 54, 1, 'Villa Riachuelo', 0, 'A'),
(56, 54, 1, 'Villa Santa Rita', 0, 'A'),
(57, 54, 1, 'Villa Soldati', 0, 'A'),
(58, 54, 1, 'Villa Urquiza', 0, 'A'),
(62, 54, 2, 'Acevedo', 0, 'A'),
(63, 54, 2, 'Adela', 0, 'A'),
(64, 54, 2, 'Adolfo Gonzáles Chaves', 0, 'A'),
(65, 54, 2, 'Aeroparque', 0, 'A'),
(66, 54, 2, 'Agustina', 0, 'A'),
(67, 54, 2, 'Alberti', 0, 'A'),
(68, 54, 2, 'América', 0, 'A'),
(69, 54, 2, 'Andant', 0, 'A'),
(70, 54, 2, 'Anderson', 0, 'A'),
(71, 54, 2, 'Acassuso', 0, 'A'),
(72, 54, 2, 'Arboledas', 0, 'A'),
(73, 54, 2, 'Arenaza', 0, 'A'),
(74, 54, 2, 'Arrecifes', 0, 'A'),
(75, 54, 2, 'Arribeños', 0, 'A'),
(76, 54, 2, 'Arroyo Dulce', 0, 'A'),
(77, 54, 2, 'Ascensión', 0, 'A'),
(78, 54, 2, 'Atalaya', 0, 'A'),
(79, 54, 2, 'Avestruz', 0, 'A'),
(80, 54, 2, 'Ayacucho', 0, 'A'),
(81, 54, 2, 'Avellaneda', 0, 'A'),
(82, 54, 2, 'Azul', 0, 'A'),
(83, 54, 2, 'Bahía Blanca', 0, 'A'),
(84, 54, 2, 'Balcarce', 0, 'A'),
(85, 54, 2, 'Baln. San Cayetano', 0, 'A'),
(86, 54, 2, 'Balneario Orense', 0, 'A'),
(87, 54, 2, 'Balneario Oriente', 0, 'A'),
(88, 54, 2, 'Banderaló', 0, 'A'),
(89, 54, 2, 'Baradero', 0, 'A'),
(90, 54, 2, 'Barker', 0, 'A'),
(91, 54, 2, 'Batán', 0, 'A'),
(92, 54, 2, 'Belén de Escobar', 0, 'A'),
(93, 54, 2, 'Benito Juárez', 0, 'A'),
(94, 54, 2, 'Berisso', 0, 'A'),
(95, 54, 2, 'Berutti', 0, 'A'),
(96, 54, 2, 'Blancagrande', 0, 'A'),
(97, 54, 2, 'Banfield', 0, 'A'),
(98, 54, 2, 'Barrio Aeronáutico', 0, 'A'),
(99, 54, 2, 'Barrio Parque General San Martín', 0, 'A'),
(100, 54, 2, 'Béccar', 0, 'A'),
(101, 54, 2, 'Bella Vista', 0, 'A'),
(102, 54, 2, 'Bernal', 0, 'A'),
(103, 54, 2, 'Billinghurst', 0, 'A'),
(104, 54, 2, 'Blaquier', 0, 'A'),
(105, 54, 2, 'Bocayuva', 0, 'A'),
(106, 54, 2, 'Bordenave', 0, 'A'),
(107, 54, 2, 'Bragado', 0, 'A'),
(108, 54, 2, 'Brandsen', 0, 'A'),
(109, 54, 2, 'Buenos Aires', 0, 'A'),
(110, 54, 2, 'Cacharí', 0, 'A'),
(111, 54, 2, 'Calfucurá', 0, 'A'),
(112, 54, 2, 'Camet', 0, 'A'),
(113, 54, 2, 'Campana', 0, 'A'),
(114, 54, 2, 'Campodónico', 0, 'A'),
(115, 54, 2, 'Campos Salles', 0, 'A'),
(116, 54, 2, 'Boulogne', 0, 'A'),
(117, 54, 2, 'Campo de Mayo', 0, 'A'),
(118, 54, 2, 'Cangallo', 0, 'A'),
(119, 54, 2, 'Cañada Seca', 0, 'A'),
(120, 54, 2, 'Cañuelas', 0, 'A'),
(121, 54, 2, 'Capilla del Señor', 0, 'A'),
(122, 54, 2, 'Capitán Sarmiento', 0, 'A'),
(123, 54, 2, 'Carabelas', 0, 'A'),
(124, 54, 2, 'Carhué', 0, 'A'),
(125, 54, 2, 'Cariló', 0, 'A'),
(126, 54, 2, 'Carlos Casares', 0, 'A'),
(127, 54, 2, 'Carlos Tejedor', 0, 'A'),
(128, 54, 2, 'Carmen de Areco', 0, 'A'),
(129, 54, 2, 'Carmen de Patagones', 0, 'A'),
(130, 54, 2, 'Carapachay', 0, 'A'),
(131, 54, 2, 'Casalins', 0, 'A'),
(132, 54, 2, 'Casbas', 0, 'A'),
(133, 54, 2, 'Castelar', 0, 'A'),
(134, 54, 2, 'Castelli', 0, 'A'),
(135, 54, 2, 'Cerrito', 0, 'A'),
(136, 54, 2, 'Chacabuco', 0, 'A'),
(137, 54, 2, 'Chapadmalal', 0, 'A'),
(138, 54, 2, 'Chapaleofu', 0, 'A'),
(139, 54, 2, 'Chascomús', 0, 'A'),
(140, 54, 2, 'Chasicó', 0, 'A'),
(141, 54, 2, 'Chiclana', 0, 'A'),
(142, 54, 2, 'Chillar', 0, 'A'),
(143, 54, 2, 'Caseros', 0, 'A'),
(144, 54, 2, 'Castelar', 0, 'A'),
(145, 54, 2, 'Chilavert', 0, 'A'),
(146, 54, 2, 'Chivilcoy', 0, 'A'),
(147, 54, 2, 'Claraz', 0, 'A'),
(148, 54, 2, 'Claromecó', 0, 'A'),
(149, 54, 2, 'Cnel. Rodolfo Bunge', 0, 'A'),
(150, 54, 2, 'Cobo', 0, 'A'),
(151, 54, 2, 'Coliqueo', 0, 'A'),
(152, 54, 2, 'Colón', 0, 'A'),
(153, 54, 2, 'Condarco', 0, 'A'),
(154, 54, 2, 'Conesa', 0, 'A'),
(155, 54, 2, 'Copetonas', 0, 'A'),
(156, 54, 2, 'Corazzi', 0, 'A'),
(157, 54, 2, 'Coronel Charlone', 0, 'A'),
(158, 54, 2, 'Churruca', 0, 'A'),
(159, 54, 2, 'Ciudad del Libertador General José de San Martín', 0, 'A'),
(160, 54, 2, 'Ciudad Jardín El Libertador', 0, 'A'),
(161, 54, 2, 'Ciudad Jardín Lomas del Palomar', 0, 'A'),
(162, 54, 2, 'Ciudadela', 0, 'A'),
(163, 54, 2, 'Coronel Dorrego', 0, 'A'),
(164, 54, 2, 'Coronel Martínez de Hoz', 0, 'A'),
(165, 54, 2, 'Coronel Pringles', 0, 'A'),
(166, 54, 2, 'Coronel Suárez', 0, 'A'),
(167, 54, 2, 'Coronel Vidal', 0, 'A'),
(168, 54, 2, 'Cristiano Muerto', 0, 'A'),
(169, 54, 2, 'Crotto', 0, 'A'),
(170, 54, 2, 'Cura Malal', 0, 'A'),
(171, 54, 2, 'Curarú', 0, 'A'),
(172, 54, 2, 'Daireaux', 0, 'A'),
(173, 54, 2, 'Darregueira', 0, 'A'),
(174, 54, 2, 'De La Canal', 0, 'A'),
(175, 54, 2, 'Crucecita', 0, 'A'),
(176, 54, 2, 'Del Viso', 0, 'A'),
(177, 54, 2, 'Dolores', 0, 'A'),
(178, 54, 2, 'Don Torcuato', 0, 'A'),
(179, 54, 2, 'D''Orbigny', 0, 'A'),
(180, 54, 2, 'Doyle', 0, 'A'),
(181, 54, 2, 'Durañona', 0, 'A'),
(182, 54, 2, 'Egaña', 0, 'A'),
(183, 54, 2, 'El Arbolito', 0, 'A'),
(184, 54, 2, 'El Divisorio', 0, 'A'),
(185, 54, 2, 'El Lenguaraz', 0, 'A'),
(186, 54, 2, 'El Mangrullo', 0, 'A'),
(187, 54, 2, 'El Palomar', 0, 'A'),
(188, 54, 2, 'Dock Sud', 0, 'A'),
(189, 54, 2, 'Don Bosco', 0, 'A'),
(190, 54, 2, 'El Libertador', 0, 'A'),
(191, 54, 2, 'El Palomar', 0, 'A'),
(192, 54, 2, 'El Paraíso', 0, 'A'),
(193, 54, 2, 'El Pensamiento', 0, 'A'),
(194, 54, 2, 'El Socorro', 0, 'A'),
(195, 54, 2, 'El Tejar', 0, 'A'),
(196, 54, 2, 'El Triunfo', 0, 'A'),
(197, 54, 2, 'Elvira', 0, 'A'),
(198, 54, 2, 'Emilio V. Bunge', 0, 'A'),
(199, 54, 2, 'Energía', 0, 'A'),
(200, 54, 2, 'Ensenada', 0, 'A'),
(201, 54, 2, 'Espartillar', 0, 'A'),
(202, 54, 2, 'Espigas', 0, 'A'),
(203, 54, 2, 'Estomba', 0, 'A'),
(204, 54, 2, 'El Pilar', 0, 'A'),
(205, 54, 2, 'Ezeiza', 0, 'A'),
(206, 54, 2, 'Facundo Quiroga', 0, 'A'),
(207, 54, 2, 'Faro', 0, 'A'),
(208, 54, 2, 'Fatraló', 0, 'A'),
(209, 54, 2, 'Felipe Solá', 0, 'A'),
(210, 54, 2, 'Ferré', 0, 'A'),
(211, 54, 2, 'Florentino Ameghino', 0, 'A'),
(212, 54, 2, 'Fontezuela', 0, 'A'),
(213, 54, 2, 'Fulton', 0, 'A'),
(214, 54, 2, 'Gral. Alvear', 0, 'A'),
(215, 54, 2, 'Gral. Arenales', 0, 'A'),
(216, 54, 2, 'Gral. Belgrano', 0, 'A'),
(217, 54, 2, 'Ezpeleta', 0, 'A'),
(218, 54, 2, 'Florida Oeste', 0, 'A'),
(219, 54, 2, 'Gerli', 0, 'A'),
(220, 54, 2, 'Girondo', 0, 'A'),
(221, 54, 2, 'Gob. Castro', 0, 'A'),
(222, 54, 2, 'González Moreno', 0, 'A'),
(223, 54, 2, 'Gorchs', 0, 'A'),
(224, 54, 2, 'Guaminí', 0, 'A'),
(225, 54, 2, 'Guerrero', 0, 'A'),
(226, 54, 2, 'Guerrico', 0, 'A'),
(227, 54, 2, 'Henderson', 0, 'A'),
(228, 54, 2, 'Hortensia', 0, 'A'),
(229, 54, 2, 'Huanguelén', 0, 'A'),
(230, 54, 2, 'Hunter', 0, 'A'),
(231, 54, 2, 'Ibáñez', 0, 'A'),
(232, 54, 2, 'Gral. Conesa', 0, 'A'),
(233, 54, 2, 'Gral. Guido', 0, 'A'),
(234, 54, 2, 'Gral. La Madrid', 0, 'A'),
(235, 54, 2, 'Gral. Las Heras', 0, 'A'),
(236, 54, 2, 'Gral. Lavalle', 0, 'A'),
(237, 54, 2, 'Gral. Madariaga', 0, 'A'),
(238, 54, 2, 'Gral. Pinto', 0, 'A'),
(239, 54, 2, 'Gral. Pirán', 0, 'A'),
(240, 54, 2, 'Gral. Rojo', 0, 'A'),
(241, 54, 2, 'Gral. Viamonte', 0, 'A'),
(242, 54, 2, 'Gral. Villegas', 0, 'A'),
(243, 54, 2, 'Gil', 0, 'A'),
(244, 54, 2, 'Grand Bourg', 0, 'A'),
(245, 54, 2, 'Haedo', 0, 'A'),
(246, 54, 2, 'Hurlingham', 0, 'A'),
(247, 54, 2, 'Indio Rico', 0, 'A'),
(248, 54, 2, 'Inés Indart', 0, 'A'),
(249, 54, 2, 'Irala', 0, 'A'),
(250, 54, 2, 'Irineo Portela', 0, 'A'),
(251, 54, 2, 'José C. Paz', 0, 'A'),
(252, 54, 2, 'Juan A. de la Peña', 0, 'A'),
(253, 54, 2, 'Juan Bautista Alberdi', 0, 'A'),
(254, 54, 2, 'Juan E. Barra', 0, 'A'),
(255, 54, 2, 'Juan José Paso', 0, 'A'),
(256, 54, 2, 'Juan N. Fernández', 0, 'A'),
(257, 54, 2, 'Junín', 0, 'A'),
(258, 54, 2, 'La Emilia', 0, 'A'),
(259, 54, 2, 'Ingeniero Adolfo Sourdeaux', 0, 'A'),
(260, 54, 2, 'Ingeniero Pablo Nogués', 0, 'A'),
(261, 54, 2, 'Iparraguirre', 0, 'A'),
(262, 54, 2, 'Ituzaingó', 0, 'A'),
(263, 54, 2, 'José Ingenieros', 0, 'A'),
(264, 54, 2, 'José León Suárez', 0, 'A'),
(265, 54, 2, 'La Lucila', 0, 'A'),
(266, 54, 2, 'La Plata', 0, 'A'),
(267, 54, 2, 'La Porteña', 0, 'A'),
(268, 54, 2, 'La Reforma', 0, 'A'),
(269, 54, 2, 'La Trinidad', 0, 'A'),
(270, 54, 2, 'La Violeta', 0, 'A'),
(271, 54, 2, 'Labardén', 0, 'A'),
(272, 54, 2, 'Lanús', 0, 'A'),
(273, 54, 2, 'Laprida', 0, 'A'),
(274, 54, 2, 'Lartigau', 0, 'A'),
(275, 54, 2, 'Las Armas', 0, 'A'),
(276, 54, 2, 'Las Flores', 0, 'A'),
(277, 54, 2, 'Las Martinetas', 0, 'A'),
(278, 54, 2, 'Lanús Este', 0, 'A'),
(279, 54, 2, 'Lanús Oeste', 0, 'A'),
(280, 54, 2, 'Las Naciones', 0, 'A'),
(281, 54, 2, 'Las Toscas', 0, 'A'),
(282, 54, 2, 'Lazzarino', 0, 'A'),
(283, 54, 2, 'Leubucó', 0, 'A'),
(284, 54, 2, 'Lincoln', 0, 'A'),
(285, 54, 2, 'Lobería', 0, 'A'),
(286, 54, 2, 'Lobos', 0, 'A'),
(287, 54, 2, 'Loma Negra', 0, 'A'),
(288, 54, 2, 'Los Indios', 0, 'A'),
(289, 54, 2, 'Los Pinos', 0, 'A'),
(290, 54, 2, 'Luján', 0, 'A'),
(291, 54, 2, 'Luro', 0, 'A'),
(292, 54, 2, 'Macedo', 0, 'A'),
(293, 54, 2, 'Llavallol', 0, 'A'),
(294, 54, 2, 'Loma Hermosa', 0, 'A'),
(295, 54, 2, 'Lomas de Zamora', 0, 'A'),
(296, 54, 2, 'Los Polvorines', 0, 'A'),
(297, 54, 2, 'Magdalena', 0, 'A'),
(298, 54, 2, 'Maipú', 0, 'A'),
(299, 54, 2, 'Manantiales', 0, 'A'),
(300, 54, 2, 'Manuel Ocampo', 0, 'A'),
(301, 54, 2, 'Mar Chiquita', 0, 'A'),
(302, 54, 2, 'Mar de Ajó', 0, 'A'),
(303, 54, 2, 'Mar de las Pampas', 0, 'A'),
(304, 54, 2, 'Mar del Plata', 0, 'A'),
(305, 54, 2, 'Mar del Sur', 0, 'A'),
(306, 54, 2, 'Mar del Tuyú', 0, 'A'),
(307, 54, 2, 'María Ignacia', 0, 'A'),
(308, 54, 2, 'Mariano Benitez', 0, 'A'),
(309, 54, 2, 'Malaver', 0, 'A'),
(310, 54, 2, 'Malvinas Argentinas', 0, 'A'),
(311, 54, 2, 'Mariano H. Alfonzo', 0, 'A'),
(312, 54, 2, 'Martín Fierro', 0, 'A'),
(313, 54, 2, 'Marucha', 0, 'A'),
(314, 54, 2, 'Masurel', 0, 'A'),
(315, 54, 2, 'Maza', 0, 'A'),
(316, 54, 2, 'Mechongue', 0, 'A'),
(317, 54, 2, 'Médanos', 0, 'A'),
(318, 54, 2, 'Mercedes', 0, 'A'),
(319, 54, 2, 'Miramar', 0, 'A'),
(320, 54, 2, 'Miranda', 0, 'A'),
(321, 54, 2, 'Moctezuma', 0, 'A'),
(322, 54, 2, 'Monasterio', 0, 'A'),
(323, 54, 2, 'Martín Coronado', 0, 'A'),
(324, 54, 2, 'Martínez', 0, 'A'),
(325, 54, 2, 'Monsalvo', 0, 'A'),
(326, 54, 2, 'Monte Hermoso', 0, 'A'),
(327, 54, 2, 'Morea', 0, 'A'),
(328, 54, 2, 'Moreno', 0, 'A'),
(329, 54, 2, 'Morón', 0, 'A'),
(330, 54, 2, 'Muñoz', 0, 'A'),
(331, 54, 2, 'Napaleofú', 0, 'A'),
(332, 54, 2, 'Navarro', 0, 'A'),
(333, 54, 2, 'Necochea', 0, 'A'),
(334, 54, 2, 'Nicolás Descalzi', 0, 'A'),
(335, 54, 2, 'Nieves', 0, 'A'),
(336, 54, 2, 'Norberto De la Riestra', 0, 'A'),
(337, 54, 2, 'Monte Chingolo', 0, 'A'),
(338, 54, 2, 'Morón', 0, 'A'),
(339, 54, 2, 'Munro', 0, 'A'),
(340, 54, 2, 'Muñiz', 0, 'A'),
(341, 54, 2, 'Ochandío', 0, 'A'),
(342, 54, 2, 'Olascoaga', 0, 'A'),
(343, 54, 2, 'Olavarría', 0, 'A'),
(344, 54, 2, 'Olivera', 0, 'A'),
(345, 54, 2, 'Ombú', 0, 'A'),
(346, 54, 2, 'Orense', 0, 'A'),
(347, 54, 2, 'Otoño', 0, 'A'),
(348, 54, 2, 'Pardo', 0, 'A'),
(349, 54, 2, 'Parish', 0, 'A'),
(350, 54, 2, 'Paso Mayor', 0, 'A'),
(351, 54, 2, 'Pasteur', 0, 'A'),
(352, 54, 2, 'Pehuajó', 0, 'A'),
(353, 54, 2, 'Once de Septiembre', 0, 'A'),
(354, 54, 2, 'Pablo Podestá', 0, 'A'),
(355, 54, 2, 'Parque Leloir', 0, 'A'),
(356, 54, 2, 'Parque San Antonio', 0, 'A'),
(357, 54, 2, 'Pehuelches', 0, 'A'),
(358, 54, 2, 'Pehuen-Có', 0, 'A'),
(359, 54, 2, 'Pellegrini', 0, 'A'),
(360, 54, 2, 'Pérez Millán', 0, 'A'),
(361, 54, 2, 'Pergamino', 0, 'A'),
(362, 54, 2, 'Pichincha', 0, 'A'),
(363, 54, 2, 'Piedra Echada', 0, 'A'),
(364, 54, 2, 'Pigüé', 0, 'A'),
(365, 54, 2, 'Pilar', 0, 'A'),
(366, 54, 2, 'Pinamar', 0, 'A'),
(367, 54, 2, 'Pinzón', 0, 'A'),
(368, 54, 2, 'Piñeyro', 0, 'A'),
(369, 54, 2, 'Pipinas', 0, 'A'),
(370, 54, 2, 'Pirovano', 0, 'A'),
(371, 54, 2, 'Polvaredas', 0, 'A'),
(372, 54, 2, 'Pontaut', 0, 'A'),
(373, 54, 2, 'Puan', 0, 'A'),
(374, 54, 2, 'Punta Alta', 0, 'A'),
(375, 54, 2, 'Punta Indio', 0, 'A'),
(376, 54, 2, 'Quenumá', 0, 'A'),
(377, 54, 2, 'Quequén', 0, 'A'),
(378, 54, 2, 'Rafael Obligado', 0, 'A'),
(379, 54, 2, 'Ramallo', 0, 'A'),
(380, 54, 2, 'Rancagua', 0, 'A'),
(381, 54, 2, 'Ranchos', 0, 'A'),
(382, 54, 2, 'Rauch', 0, 'A'),
(383, 54, 2, 'Raulet', 0, 'A'),
(384, 54, 2, 'Recalde', 0, 'A'),
(385, 54, 2, 'Reta', 0, 'A'),
(386, 54, 2, 'Rivadavia', 0, 'A'),
(387, 54, 2, 'Rivera', 0, 'A'),
(388, 54, 2, 'Roberts', 0, 'A'),
(389, 54, 2, 'Rojas', 0, 'A'),
(390, 54, 2, 'Roque Pérez', 0, 'A'),
(391, 54, 2, 'Saavedra', 0, 'A'),
(392, 54, 2, 'Saladillo', 0, 'A'),
(393, 54, 2, 'Remedios de Escalada', 0, 'A'),
(394, 54, 2, 'Sáenz Peña', 0, 'A'),
(395, 54, 2, 'Salazar', 0, 'A'),
(396, 54, 2, 'Salliqueló', 0, 'A'),
(397, 54, 2, 'Salto', 0, 'A'),
(398, 54, 2, 'San Andrés de Giles', 0, 'A'),
(399, 54, 2, 'San Antonio de Areco', 0, 'A'),
(400, 54, 2, 'San Bernardo', 0, 'A'),
(401, 54, 2, 'San Carlos de Bolívar', 0, 'A'),
(402, 54, 2, 'San Cayetano', 0, 'A'),
(403, 54, 2, 'San Clemente del Tuyú', 0, 'A'),
(404, 54, 2, 'San Fernando', 0, 'A'),
(405, 54, 2, 'San Germán', 0, 'A'),
(406, 54, 2, 'San Jorge', 0, 'A'),
(407, 54, 2, 'San Alberto', 0, 'A'),
(408, 54, 2, 'San Andrés', 0, 'A'),
(409, 54, 2, 'San Francisco Solano', 0, 'A'),
(410, 54, 2, 'San Isidro', 0, 'A'),
(411, 54, 2, 'San José', 0, 'A'),
(412, 54, 2, 'San Justo', 0, 'A'),
(413, 54, 2, 'San Manuel', 0, 'A'),
(414, 54, 2, 'San Miguel', 0, 'A'),
(415, 54, 2, 'San Miguel del Monte', 0, 'A'),
(416, 54, 2, 'San Nicolás de los Arroyos', 0, 'A'),
(417, 54, 2, 'San Pedro', 0, 'A'),
(418, 54, 2, 'Santa Clara del Mar', 0, 'A'),
(419, 54, 2, 'Santa Teresita', 0, 'A'),
(420, 54, 2, 'Santo Domingo', 0, 'A'),
(421, 54, 2, 'Santos Unzué', 0, 'A'),
(422, 54, 2, 'Segurola', 0, 'A'),
(423, 54, 2, 'Santa María', 0, 'A'),
(424, 54, 2, 'Santos Lugares', 0, 'A'),
(425, 54, 2, 'Sarandí Villa Domínico', 0, 'A'),
(426, 54, 2, 'Shaw', 0, 'A'),
(427, 54, 2, 'Sierra de la Ventana', 0, 'A'),
(428, 54, 2, 'Sierra de los Padres', 0, 'A'),
(429, 54, 2, 'Sierras Bayas', 0, 'A'),
(430, 54, 2, 'Solanet', 0, 'A'),
(431, 54, 2, 'Suipacha', 0, 'A'),
(432, 54, 2, 'Tamangueyú', 0, 'A'),
(433, 54, 2, 'Tandil', 0, 'A'),
(434, 54, 2, 'Tapalqué', 0, 'A'),
(435, 54, 2, 'Tedín Uriburu', 0, 'A'),
(436, 54, 2, 'Teniente Origone', 0, 'A'),
(437, 54, 2, 'Tigre', 0, 'A'),
(438, 54, 2, 'Temperley', 0, 'A'),
(439, 54, 2, 'Tierras Altas', 0, 'A'),
(440, 54, 2, 'Todd', 0, 'A'),
(441, 54, 2, 'Tornquist', 0, 'A'),
(442, 54, 2, 'Treinta de Agosto', 0, 'A'),
(443, 54, 2, 'Trenque Lauquen', 0, 'A'),
(444, 54, 2, 'Tres Algarrobos', 0, 'A'),
(445, 54, 2, 'Tres Arroyos', 0, 'A'),
(446, 54, 2, 'Tres Lomas', 0, 'A'),
(447, 54, 2, 'Tres Picos', 0, 'A'),
(448, 54, 2, 'Urdampilleta', 0, 'A'),
(449, 54, 2, 'Valdes', 0, 'A'),
(450, 54, 2, 'Valeria del Mar', 0, 'A'),
(451, 54, 2, 'Vallimanca', 0, 'A'),
(452, 54, 2, 'Tortuguitas', 0, 'A'),
(453, 54, 2, 'Turdera', 0, 'A'),
(454, 54, 2, 'Valentín Alsina', 0, 'A'),
(455, 54, 2, 'Vazquez', 0, 'A'),
(456, 54, 2, 'Verónica', 0, 'A'),
(457, 54, 2, 'Víboras', 0, 'A'),
(458, 54, 2, 'Victorino de la Plaza', 0, 'A'),
(459, 54, 2, 'Vieytes', 0, 'A'),
(460, 54, 2, 'Vilela', 0, 'A'),
(461, 54, 2, 'Villa Cacique', 0, 'A'),
(462, 54, 2, 'Villa Gesell', 0, 'A'),
(463, 54, 2, 'Villa Maza', 0, 'A'),
(464, 54, 2, 'Villanueva', 0, 'A'),
(465, 54, 2, 'Viña', 0, 'A'),
(466, 54, 2, 'Yerbas', 0, 'A'),
(467, 54, 2, 'Vicente López Villa Martelli Florida', 0, 'A'),
(468, 54, 2, 'Villa Adelina', 0, 'A'),
(469, 54, 2, 'Villa Alberdi', 0, 'A'),
(470, 54, 2, 'Villa Ariza', 0, 'A'),
(471, 54, 2, 'Villa Ballester', 0, 'A'),
(472, 54, 2, 'Villa Bosch', 0, 'A'),
(473, 54, 2, 'Villa Centenario', 0, 'A'),
(474, 54, 2, 'Villa de Mayo', 0, 'A'),
(475, 54, 2, 'Villa Fiorito', 0, 'A'),
(476, 54, 2, 'Villa La Florida', 0, 'A'),
(477, 54, 2, 'Villa León', 0, 'A'),
(478, 54, 2, 'Villa Libertad', 0, 'A'),
(479, 54, 2, 'Villa Lynch', 0, 'A'),
(480, 54, 2, 'Villa Maipú', 0, 'A'),
(481, 54, 2, 'Villa Raffo', 0, 'A'),
(482, 54, 2, 'Villa Sarmiento Quilmes', 0, 'A'),
(483, 54, 2, 'Villa Tesei', 0, 'A'),
(484, 54, 2, 'Villa Udaondo', 0, 'A'),
(485, 54, 2, 'Wilde', 0, 'A'),
(486, 54, 2, 'William C. Morris', 0, 'A'),
(487, 54, 2, 'Zárate', 0, 'A'),
(489, 54, 24, 'Ancasti', 0, 'A'),
(490, 54, 24, 'Andalgalá', 0, 'A'),
(491, 54, 24, 'Catamarca', 0, 'A'),
(492, 54, 24, 'Recreo', 0, 'A'),
(493, 54, 24, 'San Martín', 0, 'A'),
(494, 54, 24, 'Tapso', 0, 'A'),
(495, 54, 24, 'Tinogasta', 0, 'A'),
(496, 54, 7, 'Charadai', 0, 'A'),
(497, 54, 7, 'Charata', 0, 'A'),
(498, 54, 7, 'Colonias Unidas', 0, 'A'),
(499, 54, 7, 'Concepción del Bermejo', 0, 'A'),
(500, 54, 7, 'Corzuela', 0, 'A'),
(501, 54, 7, 'Gancedo', 0, 'A'),
(502, 54, 7, 'Gral. Capdevila', 0, 'A'),
(503, 54, 7, 'Gral. José de San Martín', 0, 'A'),
(504, 54, 7, 'Gral. Pinedo', 0, 'A'),
(505, 54, 7, 'Juan José Castelli', 0, 'A'),
(506, 54, 7, 'La Leonesa', 0, 'A'),
(507, 54, 7, 'Las Breñas', 0, 'A'),
(508, 54, 7, 'Los Frentones', 0, 'A'),
(509, 54, 7, 'Machagai', 0, 'A'),
(510, 54, 7, 'Pampa del Infierno', 0, 'A'),
(511, 54, 7, 'Pres. de la Plaza', 0, 'A'),
(512, 54, 7, 'Pres. R. Saenz Peña', 0, 'A'),
(513, 54, 7, 'Quitilipi', 0, 'A'),
(514, 54, 7, 'Resistencia', 0, 'A'),
(515, 54, 7, 'Río Muerto', 0, 'A'),
(516, 54, 7, 'Taco Pozo', 0, 'A'),
(517, 54, 7, 'Tres Estacas', 0, 'A'),
(518, 54, 7, 'Villa Angela', 0, 'A'),
(519, 54, 7, 'Villa Berthet', 0, 'A'),
(520, 54, 21, 'Camarones', 0, 'A'),
(521, 54, 21, 'Comodoro Rivadavia', 0, 'A'),
(522, 54, 21, 'Esquel', 0, 'A'),
(523, 54, 21, 'La Hoya', 0, 'A'),
(524, 54, 21, 'Lago Puelo', 0, 'A'),
(525, 54, 21, 'Paso de Indios', 0, 'A'),
(526, 54, 21, 'Puerto Madryn', 0, 'A'),
(527, 54, 21, 'Puerto Pirámides', 0, 'A'),
(528, 54, 21, 'Rawson', 0, 'A'),
(529, 54, 21, 'Río Mayo', 0, 'A'),
(530, 54, 21, 'Sarmiento', 0, 'A'),
(531, 54, 21, 'Trelew', 0, 'A'),
(532, 54, 21, 'Trevelin', 0, 'A'),
(533, 54, 9, 'Achiras', 0, 'A'),
(534, 54, 9, 'Adelia María', 0, 'A'),
(535, 54, 9, 'Agua de Oro', 0, 'A'),
(536, 54, 9, 'Alcira', 0, 'A'),
(537, 54, 9, 'Alejandro Roca', 0, 'A'),
(538, 54, 9, 'Alicia', 0, 'A'),
(539, 54, 9, 'Almafuerte', 0, 'A'),
(540, 54, 9, 'Alpa Corral', 0, 'A'),
(541, 54, 9, 'Alta Gracia', 0, 'A'),
(542, 54, 9, 'Altos de Chipión', 0, 'A'),
(543, 54, 9, 'Amboy', 0, 'A'),
(544, 54, 9, 'Ambul', 0, 'A'),
(545, 54, 9, 'Ana Zumaran', 0, 'A'),
(546, 54, 9, 'Anisacate', 0, 'A'),
(547, 54, 9, 'Arias', 0, 'A'),
(548, 54, 9, 'Arroyito', 0, 'A'),
(549, 54, 9, 'Arroyo Algodón', 0, 'A'),
(550, 54, 9, 'Arroyo Cabral', 0, 'A'),
(551, 54, 9, 'Arroyo de los Patos', 0, 'A'),
(552, 54, 9, 'Ascochinga', 0, 'A'),
(553, 54, 9, 'Athos Pampa', 0, 'A'),
(554, 54, 9, 'Ausonia', 0, 'A'),
(555, 54, 9, 'Ballesteros', 0, 'A'),
(556, 54, 9, 'Balnearia', 0, 'A'),
(557, 54, 9, 'Bell Ville', 0, 'A'),
(558, 54, 9, 'Bengolea', 0, 'A'),
(559, 54, 9, 'Berrotarán', 0, 'A'),
(560, 54, 9, 'Bialet Massé', 0, 'A'),
(561, 54, 9, 'Brinkmann', 0, 'A'),
(562, 54, 9, 'Buchardo', 0, 'A'),
(563, 54, 9, 'Bulnes', 0, 'A'),
(564, 54, 9, 'Calchín', 0, 'A'),
(565, 54, 9, 'Canals', 0, 'A'),
(566, 54, 9, 'Cañada de Luque', 0, 'A'),
(567, 54, 9, 'Cañada de Río Pinto', 0, 'A'),
(568, 54, 9, 'Capilla del Monte', 0, 'A'),
(569, 54, 9, 'Carnerillo', 0, 'A'),
(570, 54, 9, 'Cerro Colorado', 0, 'A'),
(571, 54, 9, 'Chaján', 0, 'A'),
(572, 54, 9, 'Characato', 0, 'A'),
(573, 54, 9, 'Charbonier', 0, 'A'),
(574, 54, 9, 'Charras', 0, 'A'),
(575, 54, 9, 'Chazón', 0, 'A'),
(576, 54, 9, 'Chilibroste', 0, 'A'),
(577, 54, 9, 'Chucul', 0, 'A'),
(578, 54, 9, 'Colonia Caroya', 0, 'A'),
(579, 54, 9, 'Colonia Las Pichanas', 0, 'A'),
(580, 54, 9, 'Colonia Marina', 0, 'A'),
(581, 54, 9, 'Colonia Prosperidad', 0, 'A'),
(582, 54, 9, 'Colonia San Bartolomé', 0, 'A'),
(583, 54, 9, 'Colonia Tirolesa', 0, 'A'),
(584, 54, 9, 'Colonia Valtelina', 0, 'A'),
(585, 54, 9, 'Córdoba', 0, 'A'),
(586, 54, 9, 'Córdoba (aeropuerto)', 0, 'A'),
(587, 54, 9, 'Coronel Baigorria', 0, 'A'),
(588, 54, 9, 'Coronel Moldes', 0, 'A'),
(589, 54, 9, 'Corral de Bustos', 0, 'A'),
(590, 54, 9, 'Cosquín', 0, 'A'),
(591, 54, 9, 'Costa Sacate', 0, 'A'),
(592, 54, 9, 'Cruz Alta', 0, 'A'),
(593, 54, 9, 'Cruz del Eje', 0, 'A'),
(594, 54, 9, 'Cuesta Blanca', 0, 'A'),
(595, 54, 9, 'Deán Funes', 0, 'A'),
(596, 54, 9, 'Del Campillo', 0, 'A'),
(597, 54, 9, 'Devoto', 0, 'A'),
(598, 54, 9, 'El Arañado', 0, 'A'),
(599, 54, 9, 'El Durazno', 0, 'A'),
(600, 54, 9, 'El Fortín', 0, 'A'),
(601, 54, 9, 'El Tío', 0, 'A'),
(602, 54, 9, 'Elena', 0, 'A'),
(603, 54, 9, 'Embalse', 0, 'A'),
(604, 54, 9, 'Esc. Aviacion', 0, 'A'),
(605, 54, 9, 'Estancia Vieja', 0, 'A'),
(606, 54, 9, 'Etruria', 0, 'A'),
(607, 54, 9, 'Freyre', 0, 'A'),
(608, 54, 9, 'Gral. Cabrera', 0, 'A'),
(609, 54, 9, 'Gral. Deheza', 0, 'A'),
(610, 54, 9, 'Gral. Levalle', 0, 'A'),
(611, 54, 9, 'Gral. Paz', 0, 'A'),
(612, 54, 9, 'Hernando', 0, 'A'),
(613, 54, 9, 'Holmberg', 0, 'A'),
(614, 54, 9, 'Huanchilla', 0, 'A'),
(615, 54, 9, 'Huerta Grande', 0, 'A'),
(616, 54, 9, 'Huinca Renancó', 0, 'A'),
(617, 54, 9, 'Idiazabal', 0, 'A'),
(618, 54, 9, 'Inriville', 0, 'A'),
(619, 54, 9, 'Intiyaco', 0, 'A'),
(620, 54, 9, 'Ischilín', 0, 'A'),
(621, 54, 9, 'Isla Verde', 0, 'A'),
(622, 54, 9, 'Italó', 0, 'A'),
(623, 54, 9, 'Jesús María', 0, 'A'),
(624, 54, 9, 'Jovita', 0, 'A'),
(625, 54, 9, 'Justiniano Posse', 0, 'A'),
(626, 54, 9, 'La Calera', 0, 'A'),
(627, 54, 9, 'La Carlota', 0, 'A'),
(628, 54, 9, 'La Cautiva', 0, 'A'),
(629, 54, 9, 'La Cesira', 0, 'A'),
(630, 54, 9, 'La Cruz', 0, 'A'),
(631, 54, 9, 'La Cumbre', 0, 'A'),
(632, 54, 9, 'La Falda', 0, 'A'),
(633, 54, 9, 'La Francia', 0, 'A'),
(634, 54, 9, 'La Gilda', 0, 'A'),
(635, 54, 9, 'La Granja', 0, 'A'),
(636, 54, 9, 'La Laguna', 0, 'A'),
(637, 54, 9, 'La Paisanita', 0, 'A'),
(638, 54, 9, 'La Palestina', 0, 'A'),
(639, 54, 9, 'La Paquita', 0, 'A'),
(640, 54, 9, 'La Para', 0, 'A'),
(641, 54, 9, 'La Playosa', 0, 'A'),
(642, 54, 9, 'La Población', 0, 'A'),
(643, 54, 9, 'La Puerta', 0, 'A'),
(644, 54, 9, 'La Serranita', 0, 'A'),
(645, 54, 9, 'La Tordilla', 0, 'A'),
(646, 54, 9, 'Laborde', 0, 'A'),
(647, 54, 9, 'Laboulaye', 0, 'A'),
(648, 54, 9, 'Laguna Larga', 0, 'A'),
(649, 54, 9, 'Las Acequias', 0, 'A'),
(650, 54, 9, 'Las Albahacas', 0, 'A'),
(651, 54, 9, 'Las Higueras', 0, 'A'),
(652, 54, 9, 'Las Peñas', 0, 'A'),
(653, 54, 9, 'Las Peñas Sud', 0, 'A'),
(654, 54, 9, 'Las Perdices', 0, 'A'),
(655, 54, 9, 'Las Rabonas', 0, 'A'),
(656, 54, 9, 'Las Tapias', 0, 'A'),
(657, 54, 9, 'Las Varas', 0, 'A'),
(658, 54, 9, 'Las Varillas', 0, 'A'),
(659, 54, 9, 'Las Vertientes', 0, 'A'),
(660, 54, 9, 'Leguizamón', 0, 'A'),
(661, 54, 9, 'Leones', 0, 'A'),
(662, 54, 9, 'Los Cerrillos', 0, 'A'),
(663, 54, 9, 'Los Cocos', 0, 'A'),
(664, 54, 9, 'Los Hornillos', 0, 'A'),
(665, 54, 9, 'Los Reartes', 0, 'A'),
(666, 54, 9, 'Los Surgentes', 0, 'A'),
(667, 54, 9, 'Los Zorros', 0, 'A'),
(668, 54, 9, 'Loza Corral', 0, 'A'),
(669, 54, 9, 'Malena', 0, 'A'),
(670, 54, 9, 'Marcos Juárez', 0, 'A'),
(671, 54, 9, 'Marull', 0, 'A'),
(672, 54, 9, 'Mattaldi', 0, 'A'),
(673, 54, 9, 'Mayu Sumaj', 0, 'A'),
(674, 54, 9, 'Melo', 0, 'A'),
(675, 54, 9, 'Mendiolaza', 0, 'A'),
(676, 54, 9, 'Mina Clavero', 0, 'A'),
(677, 54, 9, 'Miramar', 0, 'A'),
(678, 54, 9, 'Monte Buey', 0, 'A'),
(679, 54, 9, 'Monte Cristo', 0, 'A'),
(680, 54, 9, 'Monte de los Gauchos', 0, 'A'),
(681, 54, 9, 'Monte Maíz', 0, 'A'),
(682, 54, 9, 'Morteros', 0, 'A'),
(683, 54, 9, 'Noetinger', 0, 'A'),
(684, 54, 9, 'Nono', 0, 'A'),
(685, 54, 9, 'Obispo Trejo', 0, 'A'),
(686, 54, 9, 'Olaeta', 0, 'A'),
(687, 54, 9, 'Oliva', 0, 'A'),
(688, 54, 9, 'Oncativo', 0, 'A'),
(689, 54, 9, 'Ongamira', 0, 'A'),
(690, 54, 9, 'Ordoñez', 0, 'A'),
(691, 54, 9, 'Pampa de Achala - El Cóndor', 0, 'A'),
(692, 54, 9, 'Pascanas', 0, 'A'),
(693, 54, 9, 'Pilar', 0, 'A'),
(694, 54, 9, 'Pincén', 0, 'A'),
(695, 54, 9, 'Porteña', 0, 'A'),
(696, 54, 9, 'Potrero de Garay', 0, 'A'),
(697, 54, 9, 'Pozo del Molle', 0, 'A'),
(698, 54, 9, 'Pueblo Italiano', 0, 'A'),
(699, 54, 9, 'Quebracho Herrado', 0, 'A'),
(700, 54, 9, 'Quilino', 0, 'A'),
(701, 54, 9, 'Reducción', 0, 'A'),
(702, 54, 9, 'Río Bamba', 0, 'A'),
(703, 54, 9, 'Río Ceballos', 0, 'A'),
(704, 54, 9, 'Río Cuarto', 0, 'A'),
(705, 54, 9, 'Río de los Sauces', 0, 'A'),
(706, 54, 9, 'Río Primero', 0, 'A'),
(707, 54, 9, 'Río Tercero', 0, 'A'),
(708, 54, 9, 'Rodeo Viejo', 0, 'A'),
(709, 54, 9, 'Rosales', 0, 'A'),
(710, 54, 9, 'Sacanta', 0, 'A'),
(711, 54, 9, 'Saira', 0, 'A'),
(712, 54, 9, 'Saldán', 0, 'A'),
(713, 54, 9, 'Salsacate', 0, 'A'),
(714, 54, 9, 'Salsipuedes', 0, 'A'),
(715, 54, 9, 'Sampacho', 0, 'A'),
(716, 54, 9, 'San Antonio de Arredondo', 0, 'A'),
(717, 54, 9, 'San Antonio de Litín', 0, 'A'),
(718, 54, 9, 'San Basilio', 0, 'A'),
(719, 54, 9, 'San Clemente', 0, 'A'),
(720, 54, 9, 'San Esteban', 0, 'A'),
(721, 54, 9, 'San Francisco', 0, 'A'),
(722, 54, 9, 'San Joaquin', 0, 'A'),
(723, 54, 9, 'San José de la Dormida', 0, 'A'),
(724, 54, 9, 'San Lorenzo', 0, 'A'),
(725, 54, 9, 'San Marcos Sierras', 0, 'A'),
(726, 54, 9, 'San Miguel de los Ríos', 0, 'A'),
(727, 54, 9, 'San Roque', 0, 'A'),
(728, 54, 9, 'San Vicente', 0, 'A'),
(729, 54, 9, 'Santa Eufemia', 0, 'A'),
(730, 54, 9, 'Santa María de Punilla', 0, 'A'),
(731, 54, 9, 'Santa Mónica', 0, 'A'),
(732, 54, 9, 'Santa Rosa de Calamuchita', 0, 'A'),
(733, 54, 9, 'Santa Rosa de Río Primero', 0, 'A'),
(734, 54, 9, 'Santiago Temple', 0, 'A'),
(735, 54, 9, 'Saturnino M. Laspiur', 0, 'A'),
(736, 54, 9, 'Seeber', 0, 'A'),
(737, 54, 9, 'Serrano', 0, 'A'),
(738, 54, 9, 'Silvio Pellico', 0, 'A'),
(739, 54, 9, 'Simbolar', 0, 'A'),
(740, 54, 9, 'Sinsacate', 0, 'A'),
(741, 54, 9, 'Suco', 0, 'A'),
(742, 54, 9, 'Tala Huasi', 0, 'A'),
(743, 54, 9, 'Tanti', 0, 'A'),
(744, 54, 9, 'Ticino', 0, 'A'),
(745, 54, 9, 'Tío Pujio', 0, 'A'),
(746, 54, 9, 'Toro Pujio', 0, 'A'),
(747, 54, 9, 'Tosquita', 0, 'A'),
(748, 54, 9, 'Totoral', 0, 'A'),
(749, 54, 9, 'Ucacha', 0, 'A'),
(750, 54, 9, 'Unquillo', 0, 'A'),
(751, 54, 9, 'Valle Hermoso', 0, 'A'),
(752, 54, 9, 'Vicuña Mackenna', 0, 'A'),
(753, 54, 9, 'Villa Allende', 0, 'A'),
(754, 54, 9, 'Villa Alpina', 0, 'A'),
(755, 54, 9, 'Villa Animí', 0, 'A'),
(756, 54, 9, 'Villa Berna', 0, 'A'),
(757, 54, 9, 'Villa Carlos Paz', 0, 'A'),
(758, 54, 9, 'Villa Ciudad de América', 0, 'A'),
(759, 54, 9, 'Villa Concepción del Tío', 0, 'A'),
(760, 54, 9, 'Villa Cura Brochero', 0, 'A'),
(761, 54, 9, 'Villa de las Rosas', 0, 'A'),
(762, 54, 9, 'Villa de María del Río Seco', 0, 'A'),
(763, 54, 9, 'Villa de Soto', 0, 'A'),
(764, 54, 9, 'Villa del Dique', 0, 'A'),
(765, 54, 9, 'Villa del Rosario', 0, 'A'),
(766, 54, 9, 'Villa del Totoral', 0, 'A'),
(767, 54, 9, 'Villa Dolores', 0, 'A'),
(768, 54, 9, 'Villa Flor Serrana', 0, 'A'),
(769, 54, 9, 'Villa Gral. Belgrano', 0, 'A'),
(770, 54, 9, 'Villa Giardino', 0, 'A'),
(771, 54, 9, 'Villa Huidobro', 0, 'A'),
(772, 54, 9, 'Villa Icho Cruz', 0, 'A'),
(773, 54, 9, 'Villa La Bolsa', 0, 'A'),
(774, 54, 9, 'Villa Los Aromos', 0, 'A'),
(775, 54, 9, 'Villa María', 0, 'A'),
(776, 54, 9, 'Villa Nueva', 0, 'A'),
(777, 54, 9, 'Villa Rossi', 0, 'A'),
(778, 54, 9, 'Villa Rumipal', 0, 'A'),
(779, 54, 9, 'Villa Santa Cruz del Lago', 0, 'A'),
(780, 54, 9, 'Villa Tulumba', 0, 'A'),
(781, 54, 9, 'Villa Yacanto de Calamuchita', 0, 'A'),
(782, 54, 9, 'Washington', 0, 'A'),
(783, 54, 9, 'Wenceslao Escalante', 0, 'A'),
(784, 54, 9, 'Yacanto - San Javier', 0, 'A'),
(785, 54, 5, 'Alvear', 0, 'A'),
(786, 54, 5, 'Bella Vista', 0, 'A'),
(787, 54, 5, 'Corrientes', 0, 'A'),
(788, 54, 5, 'Curuzú Cuatiá', 0, 'A'),
(789, 54, 5, 'Empedrado', 0, 'A'),
(790, 54, 5, 'Esquina', 0, 'A'),
(791, 54, 5, 'Gob. Virasoro', 0, 'A'),
(792, 54, 5, 'Goya', 0, 'A'),
(793, 54, 5, 'Ituzaingó', 0, 'A'),
(794, 54, 5, 'Mburucuyá', 0, 'A'),
(795, 54, 5, 'Mercedes', 0, 'A'),
(796, 54, 5, 'Monte Caseros', 0, 'A'),
(797, 54, 5, 'Paso de la Patria', 0, 'A'),
(798, 54, 5, 'Paso de los Libres', 0, 'A'),
(799, 54, 5, 'Saladas', 0, 'A'),
(800, 54, 5, 'San Carlos', 0, 'A'),
(801, 54, 5, 'Santo Tomé', 0, 'A'),
(802, 54, 4, 'Chajarí', 0, 'A'),
(803, 54, 4, 'Colón', 0, 'A'),
(804, 54, 4, 'Concepción del Uruguay', 0, 'A'),
(805, 54, 4, 'Concordia', 0, 'A'),
(806, 54, 4, 'Diamante', 0, 'A'),
(807, 54, 4, 'Federación', 0, 'A'),
(808, 54, 4, 'Federal', 0, 'A'),
(809, 54, 4, 'Gualeguay', 0, 'A'),
(810, 54, 4, 'Gualeguaychú', 0, 'A'),
(811, 54, 4, 'Hernandarias', 0, 'A'),
(812, 54, 4, 'La Paz', 0, 'A'),
(813, 54, 4, 'Los Charrúas', 0, 'A'),
(814, 54, 4, 'Nogoyá', 0, 'A'),
(815, 54, 4, 'Paraná', 0, 'A'),
(816, 54, 4, 'Rosario del Tala', 0, 'A'),
(817, 54, 4, 'San José de Feliciano', 0, 'A'),
(818, 54, 4, 'San Salvador', 0, 'A'),
(819, 54, 4, 'Santa Elena', 0, 'A'),
(820, 54, 4, 'Urdinarrain', 0, 'A'),
(821, 54, 4, 'Victoria', 0, 'A'),
(822, 54, 4, 'Villa Elisa', 0, 'A'),
(823, 54, 4, 'Villaguay', 0, 'A'),
(824, 54, 8, 'Clorinda', 0, 'A'),
(825, 54, 8, 'Cmdte. Fontana', 0, 'A'),
(826, 54, 8, 'El Colorado', 0, 'A'),
(827, 54, 8, 'Formosa', 0, 'A'),
(828, 54, 8, 'Ibarreta', 0, 'A'),
(829, 54, 8, 'Ingeniero Juárez', 0, 'A'),
(830, 54, 8, 'Laguna Blanca', 0, 'A'),
(831, 54, 8, 'Las Lomitas', 0, 'A'),
(832, 54, 8, 'Pirané', 0, 'A'),
(833, 54, 11, 'Humahuaca', 0, 'A'),
(834, 54, 11, 'La Quiaca', 0, 'A'),
(835, 54, 11, 'Lib. Gral. San Martín', 0, 'A'),
(836, 54, 11, 'Palpalá', 0, 'A'),
(837, 54, 11, 'Perico', 0, 'A'),
(838, 54, 11, 'Purmamarca', 0, 'A'),
(839, 54, 11, 'San Pedro', 0, 'A'),
(840, 54, 11, 'San Salvador de Jujuy', 0, 'A'),
(841, 54, 11, 'Tilcara', 0, 'A'),
(842, 54, 18, '25 de Mayo', 0, 'A'),
(843, 54, 18, 'Arata', 0, 'A'),
(844, 54, 18, 'Bernasconi', 0, 'A'),
(845, 54, 18, 'Caleufú', 0, 'A'),
(846, 54, 18, 'Catriló', 0, 'A'),
(847, 54, 18, 'Colonia Barón', 0, 'A'),
(848, 54, 18, 'Coronel Hilario Lagos', 0, 'A'),
(849, 54, 18, 'Doblas', 0, 'A'),
(850, 54, 18, 'Eduardo Castex', 0, 'A'),
(851, 54, 18, 'Embajador Martini', 0, 'A'),
(852, 54, 18, 'Gral. Acha', 0, 'A'),
(853, 54, 18, 'Gral. Pico', 0, 'A'),
(854, 54, 18, 'Gral. San Martín', 0, 'A'),
(855, 54, 18, 'Guatraché', 0, 'A'),
(856, 54, 18, 'Ingeniero Luiggi', 0, 'A'),
(857, 54, 18, 'Intendente Alvear', 0, 'A'),
(858, 54, 18, 'Jacinto Arauz', 0, 'A'),
(859, 54, 18, 'Macachín', 0, 'A'),
(860, 54, 18, 'Miguel Riglos', 0, 'A'),
(861, 54, 18, 'Quemú Quemú', 0, 'A'),
(862, 54, 18, 'Realicó', 0, 'A'),
(863, 54, 18, 'Santa Rosa', 0, 'A'),
(864, 54, 18, 'Telén', 0, 'A'),
(865, 54, 18, 'Trenel', 0, 'A'),
(866, 54, 18, 'Uriburu', 0, 'A'),
(867, 54, 18, 'Villa Mirasol', 0, 'A'),
(868, 54, 13, 'Aimogasta', 0, 'A'),
(869, 54, 13, 'Chamical', 0, 'A'),
(870, 54, 13, 'Chepes', 0, 'A'),
(871, 54, 13, 'Chilecito', 0, 'A'),
(872, 54, 13, 'El Barreal', 0, 'A'),
(873, 54, 13, 'La Rioja', 0, 'A'),
(874, 54, 13, 'Ulapes', 0, 'A'),
(875, 54, 16, 'Gral. Alvear', 0, 'A'),
(876, 54, 16, 'Godoy Cruz', 0, 'A'),
(877, 54, 16, 'La Paz', 0, 'A'),
(878, 54, 16, 'Las Leñas', 0, 'A'),
(879, 54, 16, 'Los Penitentes', 0, 'A'),
(880, 54, 16, 'Lunlunta', 0, 'A'),
(881, 54, 16, 'Malargüe', 0, 'A'),
(882, 54, 16, 'Mendoza', 0, 'A'),
(883, 54, 16, 'Puente del Inca', 0, 'A'),
(884, 54, 16, 'San Carlos', 0, 'A'),
(885, 54, 16, 'San Martín', 0, 'A'),
(886, 54, 16, 'San Rafael', 0, 'A'),
(887, 54, 16, 'Tunuyán', 0, 'A'),
(888, 54, 16, 'Uspallata', 0, 'A'),
(889, 54, 6, 'Apóstoles', 0, 'A'),
(890, 54, 6, 'Aristóbulo del Valle', 0, 'A'),
(891, 54, 6, 'Bernardo de Irigoyen', 0, 'A'),
(892, 54, 6, 'Eldorado', 0, 'A'),
(893, 54, 6, 'Jardín América', 0, 'A'),
(894, 54, 6, 'Leandro N. Alem', 0, 'A'),
(895, 54, 6, 'Oberá', 0, 'A'),
(896, 54, 6, 'Posadas', 0, 'A'),
(897, 54, 6, 'Puerto Iguazú', 0, 'A'),
(898, 54, 6, 'San Javier', 0, 'A'),
(899, 54, 6, 'San Pedro', 0, 'A'),
(900, 54, 6, 'Aluminé', 0, 'A'),
(901, 54, 6, 'Batea Mahuida', 0, 'A'),
(902, 54, 6, 'Caviahue', 0, 'A'),
(903, 54, 6, 'Cerro Bayo', 0, 'A'),
(904, 54, 6, 'Chapelco', 0, 'A'),
(905, 54, 6, 'Chos Malal', 0, 'A'),
(906, 54, 6, 'Copahue', 0, 'A'),
(907, 54, 6, 'Cutral Có', 0, 'A'),
(908, 54, 6, 'Junín de los Andes', 0, 'A'),
(909, 54, 6, 'Neuquén', 0, 'A'),
(910, 54, 6, 'Piedra del &Aacute;guila', 0, 'A'),
(911, 54, 6, 'Plaza Huincul', 0, 'A'),
(912, 54, 6, 'Rincón de los Sauces', 0, 'A'),
(913, 54, 6, 'San Martín de los Andes', 0, 'A'),
(914, 54, 6, 'Villa El Chocón', 0, 'A'),
(915, 54, 6, 'Villa La Angostura', 0, 'A'),
(916, 54, 6, 'Villa Pehuenia', 0, 'A'),
(917, 54, 6, 'Villa Traful', 0, 'A'),
(918, 54, 6, 'Zapala', 0, 'A'),
(919, 54, 20, 'Catriel', 0, 'A'),
(920, 54, 20, 'Cerro Catedral', 0, 'A'),
(921, 54, 20, 'Choele Choel', 0, 'A'),
(922, 54, 20, 'Cinco Saltos', 0, 'A'),
(923, 54, 20, 'Cipolletti', 0, 'A'),
(924, 54, 20, 'El Bolsón', 0, 'A'),
(925, 54, 20, 'Gral. Conesa', 0, 'A'),
(926, 54, 20, 'Gral. Roca', 0, 'A'),
(927, 54, 20, 'Las Grutas', 0, 'A'),
(928, 54, 20, 'Maquinchao', 0, 'A'),
(929, 54, 20, 'Río Colorado', 0, 'A'),
(930, 54, 20, 'San Antonio Oeste', 0, 'A'),
(931, 54, 20, 'San Carlos de Bariloche', 0, 'A'),
(932, 54, 20, 'Valcheta', 0, 'A'),
(933, 54, 20, 'Viedma', 0, 'A'),
(934, 54, 20, 'Villa Regina', 0, 'A'),
(935, 54, 12, 'Cachi', 0, 'A'),
(936, 54, 12, 'Cafayate', 0, 'A'),
(937, 54, 12, 'Embarcación', 0, 'A'),
(938, 54, 12, 'Iruya', 0, 'A'),
(939, 54, 12, 'Metán', 0, 'A'),
(940, 54, 12, 'Orán', 0, 'A'),
(941, 54, 12, 'Rivadavia', 0, 'A'),
(942, 54, 12, 'Rosario de la Frontera', 0, 'A'),
(943, 54, 12, 'Salta', 0, 'A'),
(944, 54, 12, 'Tartagal', 0, 'A'),
(945, 54, 14, 'Alto de Sierra', 0, 'A'),
(946, 54, 14, 'Barreal', 0, 'A'),
(947, 54, 14, 'Caucete', 0, 'A'),
(948, 54, 14, 'Encón', 0, 'A'),
(949, 54, 14, 'Jachal', 0, 'A'),
(950, 54, 14, 'San Agustín de Valle Fértil', 0, 'A'),
(951, 54, 14, 'San Juan', 0, 'A'),
(952, 54, 17, 'Candelaria', 0, 'A'),
(953, 54, 17, 'Justo Daract', 0, 'A'),
(954, 54, 17, 'Merlo', 0, 'A'),
(955, 54, 17, 'Naschel', 0, 'A'),
(956, 54, 17, 'Quines', 0, 'A'),
(957, 54, 17, 'San Francisco del Monte de Oro', 0, 'A'),
(958, 54, 17, 'San Luis', 0, 'A'),
(959, 54, 17, 'Santa Rosa del Conlara', 0, 'A'),
(960, 54, 17, 'Tilisarao', 0, 'A'),
(961, 54, 17, 'Unión', 0, 'A'),
(962, 54, 17, 'Villa Mercedes', 0, 'A'),
(963, 54, 17, 'Villa Reynolds', 0, 'A'),
(964, 54, 22, 'Cabo Vírgenes', 0, 'A'),
(965, 54, 22, 'Caleta Olivia', 0, 'A'),
(966, 54, 22, 'Cmdte. Luis Piedrabuena', 0, 'A'),
(967, 54, 22, 'El Calafate', 0, 'A'),
(968, 54, 22, 'El Chaltén', 0, 'A'),
(969, 54, 22, 'Esperanza', 0, 'A'),
(970, 54, 22, 'Gob. Gregores', 0, 'A'),
(971, 54, 22, 'Lago Argentino', 0, 'A'),
(972, 54, 22, 'Los Antiguos', 0, 'A'),
(973, 54, 22, 'Perito Moreno', 0, 'A'),
(974, 54, 22, 'Pico Truncado', 0, 'A'),
(975, 54, 22, 'Puerto Deseado', 0, 'A'),
(976, 54, 22, 'Puerto San Julián', 0, 'A'),
(977, 54, 22, 'Puerto Santa Cruz', 0, 'A'),
(978, 54, 22, 'Río Gallegos', 0, 'A'),
(979, 54, 22, 'Río Turbio', 0, 'A'),
(980, 54, 22, 'Tres Lagos', 0, 'A'),
(981, 54, 3, 'Acebal', 0, 'A'),
(982, 54, 3, 'Aceitera', 0, 'A'),
(983, 54, 3, 'Albarellos', 0, 'A'),
(984, 54, 3, 'Alcorta', 0, 'A'),
(985, 54, 3, 'Aldao', 0, 'A'),
(986, 54, 3, 'Angélica', 0, 'A'),
(987, 54, 3, 'Armstrong', 0, 'A'),
(988, 54, 3, 'Arroyo Seco', 0, 'A'),
(989, 54, 3, 'Arrufó', 0, 'A'),
(990, 54, 3, 'Arteaga', 0, 'A'),
(991, 54, 3, 'Bigand', 0, 'A'),
(992, 54, 3, 'Bombal', 0, 'A'),
(993, 54, 3, 'Calchaquí', 0, 'A'),
(994, 54, 3, 'Cañada de Gómez', 0, 'A'),
(995, 54, 3, 'Cañada Rica', 0, 'A'),
(996, 54, 3, 'Cañada Rosquín', 0, 'A'),
(997, 54, 3, 'Carcarañá', 0, 'A'),
(998, 54, 3, 'Carmen del Sauce', 0, 'A'),
(999, 54, 3, 'Carreras', 0, 'A'),
(1000, 54, 3, 'Carrizales', 0, 'A'),
(1001, 54, 3, 'Casas', 0, 'A'),
(1002, 54, 3, 'Casilda', 0, 'A'),
(1003, 54, 3, 'Centeno', 0, 'A'),
(1004, 54, 3, 'Cepeda', 0, 'A'),
(1005, 54, 3, 'Ceres', 0, 'A'),
(1006, 54, 3, 'Chañar Ladeado', 0, 'A'),
(1007, 54, 3, 'Chovet', 0, 'A'),
(1008, 54, 3, 'Colonia Belgrano', 0, 'A'),
(1009, 54, 3, 'Colonia Bicha', 0, 'A'),
(1010, 54, 3, 'Colonia Lago di Como', 0, 'A'),
(1011, 54, 3, 'Colonia Médici', 0, 'A'),
(1012, 54, 3, 'Coronda', 0, 'A'),
(1013, 54, 3, 'Coronel Bogado', 0, 'A'),
(1014, 54, 3, 'El Trébol', 0, 'A'),
(1015, 54, 3, 'Empalme Villa Constitución', 0, 'A'),
(1016, 54, 3, 'Esperanza', 0, 'A'),
(1017, 54, 3, 'Fighiera', 0, 'A'),
(1018, 54, 3, 'Firmat', 0, 'A'),
(1019, 54, 3, 'Fuentes', 0, 'A'),
(1020, 54, 3, 'Gálvez', 0, 'A'),
(1021, 54, 3, 'Gral. Gelly', 0, 'A'),
(1022, 54, 3, 'Gob. Crespo', 0, 'A'),
(1023, 54, 3, 'Gödeken', 0, 'A'),
(1024, 54, 3, 'Godoy', 0, 'A'),
(1025, 54, 3, 'Humboldt', 0, 'A'),
(1026, 54, 3, 'Juan B. Molina', 0, 'A'),
(1027, 54, 3, 'Las Parejas', 0, 'A'),
(1028, 54, 3, 'Las Rosas', 0, 'A'),
(1029, 54, 3, 'Las Toscas', 0, 'A'),
(1030, 54, 3, 'Los Cardos', 0, 'A'),
(1031, 54, 3, 'Los Nogales', 0, 'A'),
(1032, 54, 3, 'Lucio V. López', 0, 'A'),
(1033, 54, 3, 'Maciel', 0, 'A'),
(1034, 54, 3, 'Maggiolo', 0, 'A'),
(1035, 54, 3, 'Maizales', 0, 'A'),
(1036, 54, 3, 'María Juana', 0, 'A'),
(1037, 54, 3, 'Máximo Paz', 0, 'A'),
(1038, 54, 3, 'Melincue', 0, 'A'),
(1039, 54, 3, 'Montes de Oca', 0, 'A'),
(1040, 54, 3, 'Pavón', 0, 'A'),
(1041, 54, 3, 'Pérez', 0, 'A'),
(1042, 54, 3, 'Peyrano', 0, 'A'),
(1043, 54, 3, 'Piamonte', 0, 'A'),
(1044, 54, 3, 'Presidente Roca', 0, 'A'),
(1045, 54, 3, 'Pueblo Esther', 0, 'A'),
(1046, 54, 3, 'Pujato', 0, 'A'),
(1047, 54, 3, 'Rafaela', 0, 'A'),
(1048, 54, 3, 'Reconquista', 0, 'A'),
(1049, 54, 3, 'Romang', 0, 'A'),
(1050, 54, 3, 'Rosario', 0, 'A'),
(1051, 54, 3, 'Rueda', 0, 'A'),
(1052, 54, 3, 'Rufino', 0, 'A'),
(1053, 54, 10, 'Añatuya', 0, 'A'),
(1054, 54, 10, 'Campo del Cielo', 0, 'A'),
(1055, 54, 10, 'Campo Gallo', 0, 'A'),
(1056, 54, 10, 'Frías', 0, 'A'),
(1057, 54, 10, 'La Banda', 0, 'A'),
(1058, 54, 10, 'Loreto', 0, 'A'),
(1059, 54, 10, 'Monte Quemado', 0, 'A'),
(1060, 54, 10, 'Pampa de los Guanacos', 0, 'A'),
(1061, 54, 10, 'Quimilí', 0, 'A'),
(1062, 54, 10, 'Sachayoj', 0, 'A'),
(1063, 54, 10, 'Santiago del Estero', 0, 'A'),
(1064, 54, 10, 'Sumampa', 0, 'A'),
(1065, 54, 10, 'Suncho Corral', 0, 'A'),
(1066, 54, 10, 'Termas de Río Hondo', 0, 'A'),
(1067, 54, 10, 'Villa Ojo de Agua', 0, 'A'),
(1068, 54, 23, 'Cerro Castor', 0, 'A'),
(1069, 54, 23, 'El Kaiken', 0, 'A'),
(1070, 54, 23, 'Grytviken', 0, 'A'),
(1071, 54, 23, 'Islas Malvinas', 0, 'A'),
(1072, 54, 23, 'Mount Pleasant', 0, 'A'),
(1073, 54, 23, 'Pebble Island', 0, 'A'),
(1074, 54, 23, 'Puerto Argentino', 0, 'A'),
(1075, 54, 23, 'Puerto San Carlos', 0, 'A'),
(1076, 54, 23, 'Río Grande', 0, 'A'),
(1077, 54, 23, 'Sea Lion Island', 0, 'A'),
(1078, 54, 23, 'Tolhuin', 0, 'A'),
(1079, 54, 23, 'Ushuaia', 0, 'A'),
(1080, 54, 23, 'Weddel Island', 0, 'A'),
(1081, 54, 15, '7 de Abril', 0, 'A'),
(1082, 54, 15, 'Aguilares', 0, 'A'),
(1083, 54, 15, 'Amaicha del Valle', 0, 'A'),
(1084, 54, 15, 'Banda del Río Salí', 0, 'A'),
(1085, 54, 15, 'Concepción', 0, 'A'),
(1086, 54, 15, 'Famaillá', 0, 'A'),
(1087, 54, 15, 'Las Cejas', 0, 'A'),
(1088, 54, 15, 'Raco', 0, 'A'),
(1089, 54, 15, 'San Miguel de Tucumán', 0, 'A'),
(1090, 54, 15, 'Tafí del Valle', 0, 'A'),
(1091, 54, 15, 'Tafí Viejo', 0, 'A'),
(1092, 54, 15, 'Yerba Buena', 0, 'A'),
(1093, 54, 2, 'Quilmes', 0, 'A'),
(1094, 54, 2, 'Olivos', 0, 'A'),
(1095, 54, 3, 'Santa Fe', 0, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE IF NOT EXISTS `admin_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  `last_modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `admin_group`
--

INSERT INTO `admin_group` (`group_id`, `company_id`, `title`, `image`, `status`, `creation_date`, `last_modification`) VALUES
(1, 1, 'prueba', '../../../skin/images/groups/default/groupgen.jpg', 'I', '2016-04-20 03:23:03', '2016-04-20 06:23:03'),
(2, 1, 'test ale', '../../../skin/images/groups/default/groupgen.jpg', 'I', '2016-04-20 19:19:17', '2016-04-20 22:19:17'),
(3, 1, 'pepepepe', '../../../skin/images/groups/default/groupgen.jpg', 'I', '2016-04-20 19:28:40', '2016-04-20 22:28:40'),
(4, 1, 'osa', '../../../skin/images/groups/default/groupgen.jpg', 'I', '2016-04-20 19:51:46', '2016-04-20 22:51:46'),
(5, 1, 'Pepsi', '../../../skin/images/groups/default/groupgen.jpg', 'A', '2016-04-20 20:35:39', '2016-04-20 23:35:39'),
(6, 1, 'Coca Cola', '../../../skin/images/groups/default/groupgen.jpg', 'A', '2016-04-25 03:09:11', '2016-04-25 06:09:11'),
(7, 1, 'Sprite', '../../../skin/images/groups/default/groupgen.jpg', 'A', '2016-04-25 03:09:19', '2016-04-25 06:09:19'),
(8, 1, '7UP', '../../../skin/images/groups/default/groupgen.jpg', 'A', '2016-04-25 03:09:27', '2016-04-25 06:09:27'),
(9, 1, 'Fanta', '../../../skin/images/groups/default/groupgen.jpg', 'A', '2016-04-25 03:09:35', '2016-04-25 06:09:35'),
(10, 1, 'Cheketo', '../../../skin/images/groups/default/groupgen.jpg', 'I', '2016-10-24 21:53:42', '2016-10-24 21:53:42'),
(11, 1, 'Manaos', '../../../skin/images/groups/default/groupgen.jpg', 'A', '2016-10-25 01:10:05', '2016-10-25 01:10:05'),
(12, 1, 'Mirinda', '../../../skin/images/groups/default/groupgen.jpg', 'A', '2016-10-25 01:11:06', '2016-10-25 01:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE IF NOT EXISTS `admin_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `link` varchar(255) CHARACTER SET latin1 NOT NULL,
  `icon` varchar(255) CHARACTER SET latin1 NOT NULL,
  `position` int(11) NOT NULL,
  `public` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'Y',
  `status` char(1) CHARACTER SET latin1 NOT NULL,
  `view_status` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'A',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=83 ;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`menu_id`, `parent_id`, `title`, `link`, `icon`, `position`, `public`, `status`, `view_status`) VALUES
(1, 0, 'Administración', '#', 'fa-desktop', 999, 'N', 'A', 'A'),
(2, 53, 'Artículos', '#', 'fa-cube', 2, 'N', 'A', 'A'),
(3, 53, 'Líneas', '#', 'fa-sitemap', 3, 'N', 'A', 'A'),
(4, 6, 'Listado de Perfiles', '../profile/list.php', 'fa-list-ul', 1, 'N', 'A', 'A'),
(5, 1, 'Usuarios', '#', 'fa-user', 1, 'N', 'A', 'A'),
(6, 1, 'Perfiles', '#', 'fa-lock', 2, 'N', 'A', 'A'),
(7, 1, 'Grupos', '#', 'fa-users', 3, 'N', 'A', 'A'),
(8, 1, 'Menúes', '#', 'fa-align-left', 4, 'N', 'A', 'A'),
(9, 8, 'Nuevo Menú', '../menu/new.php', 'fa-plus-square', 1, 'N', 'A', 'A'),
(10, 8, 'Listado de Menúes', '../menu/list.php', 'fa-list-ul', 1, 'N', 'A', 'A'),
(11, 5, 'Nuevo Usuario', '../user/new.php', 'fa-user-plus', 1, 'N', 'A', 'A'),
(12, 5, 'Listado de Usuarios', '../user/list.php', 'fa-list-ul', 2, 'N', 'A', 'A'),
(13, 0, 'Inicio', '../main/main.php', 'fa-home', -100, 'N', 'A', 'A'),
(16, 5, 'Editar Usuario', '../user/edit.php', 'fa-edit', 3, 'N', 'A', 'O'),
(17, 8, 'Editar Menú', '../menu/edit.php', 'fa-edit', 3, 'N', 'A', 'O'),
(18, 2, 'Listado de Artículos', '../product/list.php', 'fa-list-ul', 3, 'N', 'A', 'A'),
(19, 2, 'Crear Artículo', '../product/new.php', 'fa-plus-square', 0, 'N', 'A', 'A'),
(20, 5, 'Usuarios Eliminados', '../user/list.php?status=I', 'fa-trash', 4, 'N', 'A', 'A'),
(21, 6, 'Nuevo Perfil', '../profile/new.php', 'fa-plus-square', 1, 'N', 'A', 'A'),
(22, 3, 'Listado de Líneas', '../category/list.php', 'fa-list-ul', 2, 'N', 'A', 'A'),
(23, 3, 'Nueva Línea', '../category/new.php', 'fa-plus-square', 1, 'N', 'A', 'A'),
(24, 3, 'Líneas Eliminadas', '../category/list.php?status=I', 'fa-trash', 9, 'N', 'A', 'A'),
(25, 2, 'Productos Eliminados', '../product/list.php?status=I', 'fa-trash', 9, 'N', 'A', 'A'),
(26, 7, 'Nuevo Grupo', '../group/new.php', 'fa-plus-square', 1, 'N', 'A', 'A'),
(27, 7, 'Listado de Grupos', '../group/list.php', 'fa-list-ul', 2, 'N', 'A', 'A'),
(28, 7, 'Editar Grupo', '../group/edit.php', 'fa-pencil', 3, 'N', 'A', 'O'),
(29, 8, 'Switcher', '../menu/switcher.php', '', 9, 'N', 'A', 'O'),
(30, 0, 'Pepepito', '../modulo/pepe2php', 'fa-magic', 678, 'Y', 'I', 'O'),
(31, 6, 'Perfiles Eliminados', '../profile/list.php?status=I', 'fa-trash', 3, 'N', 'A', 'A'),
(32, 8, 'Menúes Eliminados', '../menu/list.php?status=I', 'fa-trash', 3, 'N', 'A', 'A'),
(33, 7, 'Grupos Eliminados', '../group/list.php?status=I', 'fa-trash', 3, 'N', 'A', 'A'),
(34, 5, 'Mi Perfil', '../user/profile.php', 'fa-child', 4, 'Y', 'A', 'O'),
(35, 6, 'Editar Perfil', '../profile/edit.php', 'fa-pencil', 3, 'N', 'A', 'O'),
(36, 61, 'Clientes Prueba', '#', 'fa-suitcase', 90, 'N', 'A', 'A'),
(37, 36, 'Nuevo Cliente', '../customer_test/new.php', 'fa-plus', 1, 'N', 'A', 'A'),
(38, 36, 'Listado de Clientes', '../customer_test/list.php', 'fa-bars', 2, 'N', 'A', 'A'),
(39, 36, 'Cuenta Corriente', '../customer_test/account.php', 'fa-dollar', 3, 'N', 'A', 'A'),
(40, 1, 'Geolocalización', '#', 'fa-globe', 5, 'N', 'A', 'A'),
(41, 40, 'Países', '#', 'fa-flag', 1, 'N', 'A', 'A'),
(42, 40, 'Provincias', '#', 'fa-flag-checkered', 2, 'N', 'A', 'A'),
(43, 40, 'Zonas', '#', 'fa-flag-o', 3, 'N', 'A', 'A'),
(44, 41, 'Listado de Países', '../geolocation_country/list.php', 'fa-list-ul', 1, 'N', 'A', 'A'),
(45, 41, 'Nuevo País', '../geolocation_country/new.php', 'fa-plus-square', 0, 'N', 'A', 'A'),
(46, 36, 'Nueva Cuenta Corriente', '../customer_test/new-account.php', 'fa-calculator', 3, 'N', 'A', 'A'),
(47, 0, 'Empresas', '#', 'fa-building', 4, 'N', 'A', 'O'),
(48, 47, 'Nueva Empresa', '../company/new.php', 'fa-plus-square', 1, 'N', 'A', 'A'),
(49, 0, 'Prueba', '#', 'fa-university', 9, 'N', 'I', 'A'),
(54, 0, 'Proveedores', '#', 'fa-building', 6, 'N', 'A', 'A'),
(50, 53, 'Marcas', '#', 'fa-trademark', 4, 'N', 'A', 'A'),
(51, 50, 'Listado de Marcas', '../brand/list.php', 'fa-list-ul', 2, 'N', 'A', 'A'),
(52, 50, 'Nueva Marca', '../brand/new.php', 'fa-plus-square', 1, 'N', 'A', 'A'),
(53, 0, 'Productos', '#', 'fa-cubes', 0, 'N', 'A', 'A'),
(55, 54, 'Nacionales', '#', 'fa-flag', 1, 'N', 'A', 'A'),
(56, 54, 'Internacionales', '#', 'fa-globe', 2, 'N', 'A', 'A'),
(57, 2, 'Editar Artículo', '../product/edit.php', 'fa-pencil', 3, 'N', 'O', 'A'),
(58, 55, 'Crear Proveedor', '../provider_national/new.php', 'fa-plus-square', 1, 'N', 'A', 'A'),
(59, 55, 'Editar Proveedor', '../provider_national/edit.php', 'fa-pencil-square', 4, 'N', 'O', 'A'),
(60, 55, 'Listado de Proveedores', '../provider_national/list.php', 'fa-list-ul', 2, 'N', 'A', 'A'),
(61, 0, 'Pruebas', '#', 'fa-bug', 9999, 'N', 'A', 'A'),
(62, 61, 'Listado', '../prueba/list.php', 'fa-bed', 3, 'N', 'A', 'A'),
(63, 0, 'Clientes', '#', 'fa-industry', 3, 'N', 'A', 'A'),
(64, 67, 'Nuevo Cliente', '../customer_national/new.php', 'fa-plus-square', 1, 'N', 'A', 'A'),
(65, 67, 'Listado de Clientes', '../customer_national/list.php', 'fa-align-justify', 2, 'N', 'A', 'A'),
(66, 67, 'Editar Cliente', '../customer_national/edit.php', 'fa-pencil', 0, 'N', 'O', 'A'),
(67, 63, 'Nacionales', '#', 'fa-flag', 1, 'N', 'A', 'A'),
(68, 63, 'Internacionales', '#', 'fa-globe', 2, 'N', 'A', 'A'),
(69, 0, 'Ventas', '#', 'fa-dollar', 2, 'N', 'A', 'A'),
(70, 0, 'Estadísticas', '#', 'fa-area-chart', 15, 'N', 'A', 'A'),
(71, 53, 'Stock', '#', 'fa-th', 0, 'N', 'A', 'A'),
(72, 71, 'Modificar Stock', '#', 'fa-qrcode', 0, 'N', 'A', 'A'),
(73, 76, 'Crear', '../provider_national_order/new.php', 'fa-cart-plus', 1, 'N', 'A', 'A'),
(74, 76, 'Ordenes Sin Confirmar', '../provider_national_order/list.php?status=P', 'fa-shopping-cart', 2, 'N', 'A', 'A'),
(75, 76, 'Editar', '../provider_national_order/edit.php', 'fa-cart-arrow-down', 0, 'N', 'O', 'A'),
(76, 55, 'Ordenes de Compra', '#', 'fa-shopping-cart', 10, 'N', 'A', 'A'),
(77, 76, 'Ordenes Pedidas', '../provider_national_order/list.php?status=A', 'fa-truck', 3, 'N', 'A', 'A'),
(78, 76, 'Historial de Ordenes', '../provider_national_order/list.php?status=F', 'fa-hourglass-half', 6, 'N', 'A', 'A'),
(79, 71, 'Ingresar Stock', '../stock/stock_pending_entrance.php?status=A', 'fa-sign-in', 5, 'N', 'A', 'A'),
(80, 76, 'Pagar Orden de Compra', '../provider_national_order/payment.php', 'fa-usd', 99, 'N', 'O', 'A'),
(81, 76, 'Ordenes a Controlar', '../provider_national_order/list.php?status=S', 'fa-list-alt', 4, 'N', 'A', 'A'),
(82, 76, 'Ordenes Pend. Ingreso', '../provider_national_order/list.php?status=C', 'fa-sign-in', 4, 'N', 'A', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `admin_profile`
--

CREATE TABLE IF NOT EXISTS `admin_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` char(1) CHARACTER SET latin1 DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  `last_modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=362 ;

--
-- Dumping data for table `admin_profile`
--

INSERT INTO `admin_profile` (`profile_id`, `company_id`, `title`, `image`, `status`, `creation_date`, `last_modification`) VALUES
(333, 1, 'Superadministrador', '../../../skin/images/profiles/default/profilegen.jpg', 'A', '2013-03-03 03:03:03', '2016-10-25 01:35:58'),
(350, 1, 'Prueba', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-04-06 20:03:28', '2016-10-25 01:35:58'),
(351, 1, 'Pepe', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-04-06 20:05:21', '2016-10-25 01:35:58'),
(352, 1, 'Joni', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-04-08 00:10:19', '2016-10-25 01:35:58'),
(353, 1, 'Pruebas Administrador', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-04-11 02:56:59', '2016-11-24 14:41:21'),
(354, 1, 'Asd', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-04-11 04:29:43', '2016-10-25 01:35:58'),
(355, 1, 'Pruebas', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-10-21 09:02:22', '2016-10-25 19:38:15'),
(356, 1, 'Grupo de Prueba', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-10-24 21:38:49', '2016-10-25 01:35:58'),
(357, 1, 'Grupo de Prueba', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-10-24 21:44:29', '2016-10-25 19:34:16'),
(358, 1, 'Perfil de Prueba', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-10-25 01:34:23', '2016-10-25 19:37:53'),
(359, 1, 'Contador', '../../../skin/images/profiles/default/profilegen.jpg', 'A', '2016-11-11 19:56:40', '2016-11-11 19:56:40'),
(360, 1, 'Dueño', '../../../skin/images/profiles/default/profilegen.jpg', 'A', '2016-11-24 14:42:53', '2016-12-06 18:21:34'),
(361, 1, 'Corredor', '../../../skin/images/profiles/default/profilegen.jpg', 'A', '2017-01-18 14:25:14', '2017-01-18 14:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `first_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `profile_id` int(11) NOT NULL,
  `img` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'A',
  `tries` int(11) NOT NULL,
  `meli` tinyint(1) NOT NULL,
  `meli_code` varchar(255) CHARACTER SET latin1 NOT NULL,
  `meli_access_token` varchar(255) CHARACTER SET latin1 NOT NULL,
  `meli_refresh_token` varchar(255) CHARACTER SET latin1 NOT NULL,
  `meli_expires_in` int(11) NOT NULL,
  `last_access` datetime NOT NULL,
  `creation_date` datetime NOT NULL,
  `creator_id` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=86 ;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`admin_id`, `company_id`, `user`, `password`, `first_name`, `last_name`, `email`, `profile_id`, `img`, `status`, `tries`, `meli`, `meli_code`, `meli_access_token`, `meli_refresh_token`, `meli_expires_in`, `last_access`, `creation_date`, `creator_id`) VALUES
(3, 1, 'javzero', 'a01610228fe998f515a72dd730294d87', 'Leandro', 'Andrade', 'javzero1@gmail.com', 333, '../../../skin/images/users/3//user17324__3.jpeg', 'I', 0, 0, '', '', '', 0, '2016-11-09 19:34:17', '0000-00-00 00:00:00', 0),
(8, 1, 'cheketo', '49e09dc76bf5ba6fdcbfb710a7d8842d867bad54', 'Alejandro', 'Romero', 'romero.m.alejandro@gmail.com', 333, '../../../skin/images/users/default/default21.png', 'A', 0, 1, 'TG-57a3c1b8e4b0cd959dc5d629-42005580', 'APP_USR-1204162705833882-111711-d69cdda6ff6f221a81da45cf6ca4f3bd__H_D__-42005580', 'TG-582dd1d6e4b074472bddac1a-42005580', 1479419446, '2017-05-19 19:34:19', '0000-00-00 00:00:00', 0),
(28, 1, 'viole', '9d7311ba459f9e45ed746755a32dcd11', 'Violeta', 'Raffin', 'viole@ta.com', 333, '../../../skin/images/users/default/default23.png', 'I', 0, 0, '', '', '', 0, '2016-03-07 06:01:47', '0000-00-00 00:00:00', 0),
(35, 1, 'cheketox', '81dc9bdb52d04dc20036dbd8313ed055', 'Alex', 'Roemer', 'cheketox@mail.com', 353, '../../../skin/images/users/default/default08.png', 'I', 0, 0, '', '', '', 0, '2016-08-18 11:12:48', '2016-08-11 21:36:04', 8),
(36, 1, 'cheketo2', '72373a57bdf3807c0a1ac9c30bbf3045', 'Alejandrox', 'Romerox', 'romero.m.alejandro.mail.largo@gmail.com.ar', 353, '../../../skin/images/users/default/default10.png', 'I', 0, 0, '', '', '', 0, '2016-08-17 03:06:39', '2016-08-17 02:59:15', 8),
(37, 1, 'chopas', '81dc9bdb52d04dc20036dbd8313ed055', 'Nicolás ', 'Romero', 'chopa@lacooka.co', 353, '../../../skin/images/users/default/myAvatar-7.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-08-28 17:33:56', 8),
(38, 1, 'pepe', '81dc9bdb52d04dc20036dbd8313ed055', 'José', 'Camacho', '1234@1234.123', 353, '../../../skin/images/users/default/default14.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:01:34', 8),
(39, 1, 'carlitos', '81dc9bdb52d04dc20036dbd8313ed055', 'Carlos', 'Rondó', 'carlitos@carlos.com', 353, '../../../skin/images/users/default/default12.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:03:04', 8),
(40, 1, 'michael', '81dc9bdb52d04dc20036dbd8313ed055', 'Miguel', 'Thorne', 'michael@mail.com', 353, '../../../skin/images/users/default/default11.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:04:21', 8),
(41, 1, 'chiqui', '81dc9bdb52d04dc20036dbd8313ed055', 'Gustavo', 'Mangione', 'chiqui@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:05:37', 8),
(42, 1, 'mabrigo', '81dc9bdb52d04dc20036dbd8313ed055', 'Mauro', 'Abrigo', 'mauroa@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:07:03', 8),
(43, 1, 'sofi', '81dc9bdb52d04dc20036dbd8313ed055', 'Sofía', 'Ruiz', 'sofia@mail.com', 353, '../../../skin/images/users/default/default07.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:08:04', 8),
(44, 1, 'baltazar', '81dc9bdb52d04dc20036dbd8313ed055', 'Nicolás', 'Vallejo', 'nicov@mail.com', 353, '../../../skin/images/users/default/default09.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:09:29', 8),
(45, 1, 'test', '81dc9bdb52d04dc20036dbd8313ed055', 'Carla', 'Diaz', 'test@mail.com', 353, '../../../skin/images/users/default/default20.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:11:27', 8),
(46, 1, 'moni', '81dc9bdb52d04dc20036dbd8313ed055', 'Mónica', 'Laprida', 'moni@mail.com', 353, '../../../skin/images/users/default/default19.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:12:29', 8),
(47, 1, 'lau', '81dc9bdb52d04dc20036dbd8313ed055', 'Laura', 'Ibañez', 'lau@mail.com', 353, '../../../skin/images/users/default/default05.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:13:24', 8),
(48, 1, 'duncan', '81dc9bdb52d04dc20036dbd8313ed055', 'Mario', 'Mollinaris', 'duncan@mail.com', 353, '../../../skin/images/users/default/default13.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:14:10', 8),
(49, 1, 'test2', '81dc9bdb52d04dc20036dbd8313ed055', 'Marcos', 'Galperín', 'test2@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:14:50', 8),
(50, 1, 'test3', '81dc9bdb52d04dc20036dbd8313ed055', 'Darío', 'Rubric', 'test3@mail.com', 353, '../../../skin/images/users/50/user2196566669__8.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:15:54', 8),
(51, 1, 'test4', '81dc9bdb52d04dc20036dbd8313ed055', 'Norberto', 'Borghi', 'test4@mail.com', 353, '../../../skin/images/users/default/default15.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:16:46', 8),
(52, 1, 'test5', '81dc9bdb52d04dc20036dbd8313ed055', 'Lorena', 'Lopez', 'test5@mail.com', 353, '../../../skin/images/users/default/default18.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:17:58', 8),
(53, 1, 'eze', '81dc9bdb52d04dc20036dbd8313ed055', 'Ezequiel', 'Vinoli', 'ezequiel@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:18:42', 8),
(54, 1, 'tano', '81dc9bdb52d04dc20036dbd8313ed055', 'Juan Pablo', 'Córdoba', 'taco@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:19:25', 8),
(55, 1, 'fer', '81dc9bdb52d04dc20036dbd8313ed055', 'Fernando', 'Perez', 'fer@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:19:59', 8),
(56, 1, 'msanchez', '81dc9bdb52d04dc20036dbd8313ed055', 'Mirta', 'Sanchez', 'mirta@mial.com', 353, '../../../skin/images/users/default/default06.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:20:54', 8),
(57, 1, 'juli', '81dc9bdb52d04dc20036dbd8313ed055', 'Julian', 'Mondragón', 'julian@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:21:34', 8),
(58, 1, 'chris', '81dc9bdb52d04dc20036dbd8313ed055', 'Christian', 'Mercado', 'chris@mail.com', 353, '../../../skin/images/users/default/default08.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:23:12', 8),
(59, 1, 'test6', '81dc9bdb52d04dc20036dbd8313ed055', 'Test', 'De Prueba', 'test6@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:23:46', 8),
(60, 1, 'test7', '81dc9bdb52d04dc20036dbd8313ed055', 'Test', 'De Testeo', 'test7@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:24:26', 8),
(61, 1, 'rodo', '81dc9bdb52d04dc20036dbd8313ed055', 'Rodolfo', 'Otiñano', 'rodo@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:25:37', 8),
(62, 1, 'test8', '81dc9bdb52d04dc20036dbd8313ed055', 'Test', 'Ocho', 'test8@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:26:11', 8),
(63, 1, 'test9', '81dc9bdb52d04dc20036dbd8313ed055', 'Test', 'Nueve', 'test9@mail.com', 353, '../../../skin/images/users/default/default.jpg', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:26:42', 8),
(64, 1, 'test10', '81dc9bdb52d04dc20036dbd8313ed055', 'Test', 'Diez', 'test10@mail.com', 353, '../../../skin/images/users/default/default10.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:27:21', 8),
(65, 1, 'unpelado', 'a01610228fe998f515a72dd730294d87', 'Aldo', 'Lap', 'pelucasabe@gmail.com', 353, '../../../skin/images/users/default/default12.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-19 21:33:39', 3),
(66, 1, 'brand', '81dc9bdb52d04dc20036dbd8313ed055', 'Brandon', 'Flowers', 'brandon@killer.com', 359, '../../../skin/images/users/default/default01.png', 'I', 0, 0, '', '', '', 0, '2016-11-11 20:02:31', '2016-09-21 22:51:22', 8),
(67, 1, 'gogo', '81dc9bdb52d04dc20036dbd8313ed055', 'Gonzalo', 'Gonzalez', 'email@prueba.com.ar', 353, '../../../skin/images/users/default/default22.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-21 23:22:01', 8),
(68, 1, 'prueba', '81dc9bdb52d04dc20036dbd8313ed055', 'Prueba', 'Test', 'email@mail.com', 353, '../../../skin/images/users/default/default04.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-21 23:23:48', 8),
(69, 1, 'joni', '81dc9bdb52d04dc20036dbd8313ed055', 'Joni', 'Mercado', 'joni@joni.jon', 333, '../../../skin/images/users/default/default16.png', 'I', 0, 1, 'TG-57fc2ddbe4b08aea0175f6dc-184449568', 'APP_USR-1204162705833882-101020-9ca84e52ea4ed0cdc04275003959b49c__M_D__-184449568', 'TG-57fc2ddde4b08aea0175f717-184449568', 1476166206, '2016-10-11 00:06:26', '2016-10-11 00:05:39', 8),
(85, 1, 'mramirez', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Marcos', 'Ramirez', 'mramirez@rollerservice.com.ar', 361, '../../../skin/images/users/default/default15.png', 'A', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2017-01-18 14:28:37', 8),
(84, 1, 'jordoñez', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Jorge', 'Ordoñez', 'jordonez@rollerservice.com.ar', 361, '../../../skin/images/users/default/default12.png', 'A', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2017-01-18 14:27:24', 8),
(83, 1, 'carchundia', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Carlos', 'Archundia', 'carchundia@rollerservice.com.ar', 361, '../../../skin/images/users/default/default09.png', 'A', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2017-01-18 14:26:25', 8),
(78, 1, 'toni', '81dc9bdb52d04dc20036dbd8313ed055', 'Antonio', 'Anthony', 'toni@toni.com.ar', 353, '../../../skin/images/users/default/default22.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-10-24 15:52:16', 8),
(79, 1, 'contador', '81dc9bdb52d04dc20036dbd8313ed055', 'Contador', 'Contador', 'asdsadad@asdasd.com', 359, '../../../skin/images/users/default/default11.png', '', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-11-11 20:00:45', 8),
(80, 1, 'hernan', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Hernan', 'Balboa', 'hernanbalboa@gmail.com', 333, '../../../skin/images/users/default/default10.png', 'A', 0, 0, '', '', '', 0, '2017-05-04 19:12:45', '2016-11-17 20:52:43', 8),
(81, 1, 'pablo', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Pablo', 'Balboa', 'pablo.balboa@rollerservice.com.ar', 360, '../../../skin/images/users/default/default11.png', 'A', 0, 0, '', '', '', 0, '2016-12-02 14:19:22', '2016-11-24 14:43:55', 8),
(82, 1, 'gonza', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Gonzalo', 'Balboa', 'gonzalobalboa@gmail.com', 360, '../../../skin/images/users/default/default13.png', 'A', 0, 0, '', '', '', 0, '2016-11-30 01:11:49', '2016-11-24 14:50:14', 8);

-- --------------------------------------------------------

--
-- Table structure for table `config_iva_type`
--

CREATE TABLE IF NOT EXISTS `config_iva_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `config_iva_type`
--

INSERT INTO `config_iva_type` (`type_id`, `name`, `status`) VALUES
(1, 'IVA Responsable Inscripto', 'A'),
(2, 'IVA Responsable No Inscripto', 'A'),
(3, 'IVA Sujeto Excento', 'A'),
(4, 'Consumidor Final', 'A'),
(5, 'Sujeto No Categorizado', 'A'),
(6, 'Proveedor de Exterior', 'A'),
(7, 'Cliente del Exterior', 'A'),
(8, 'IVA Liberado – Ley Nº 19.640', 'A'),
(9, 'IVA Responsable Inscripto – Agente de Percepción', 'A'),
(10, 'Pequeño Contribuyente Eventual', 'A'),
(11, 'Responsable Monotributo', 'A'),
(12, 'Monotributista Social', 'A'),
(13, 'Pequeño Contribuyente Eventual Social', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `title`, `prefix`) VALUES
(1, 'Dolar', 'U$D'),
(2, 'Peso', '$');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cuit` bigint(15) NOT NULL,
  `iva` int(5) NOT NULL,
  `iibb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `international` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `type_id`, `company_id`, `name`, `cuit`, `iva`, `iibb`, `vat`, `international`, `status`, `creation_date`, `last_update`, `created_by`, `updated_by`) VALUES
(1, 2, 1, 'Prueba', 12331231322, 9, '123121321123123', '', 'N', 'A', '2017-02-02 17:38:37', '2017-02-07 19:24:58', 8, 8),
(2, 1, 1, 'Simple', 12312312312, 2, '123123123123', '', 'N', 'A', '2017-02-07 18:47:00', '2017-02-07 19:29:43', 8, 8),
(3, 2, 1, 'Test', 12312312312, 0, '12312332112321', '', 'N', 'A', '2017-02-07 19:29:28', '2017-02-07 20:27:42', 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `customer_agent`
--

CREATE TABLE IF NOT EXISTS `customer_agent` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `charge` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `extra` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `customer_agent`
--

INSERT INTO `customer_agent` (`agent_id`, `customer_id`, `branch_id`, `name`, `charge`, `email`, `phone`, `extra`, `creation_date`, `created_by`, `company_id`) VALUES
(26, 1, 19, 'Carla', 'Gerente', '', '123123', '', '2017-02-07 19:24:58', 8, 1),
(25, 1, 18, 'Julieta Ramirez', 'Prueba', 'julieta@mail.com', '12333213123', 'Info extra', '2017-02-07 19:24:58', 8, 1),
(24, 1, 17, 'Carlos Marcogliese', 'Director', 'carlos@mail.com', '123211', 'Muy atento', '2017-02-07 19:24:58', 8, 1),
(23, 1, 16, 'Horge', 'Dueño', '', '1233213321', 'info extra', '2017-02-07 19:24:58', 8, 1),
(22, 1, 16, 'Fernando Fernandez', 'Gerente Regional', 'fer@mail.com', '1233123123', '', '2017-02-07 19:24:58', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_branch`
--

CREATE TABLE IF NOT EXISTS `customer_branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `main_branch` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `lat` decimal(18,16) NOT NULL,
  `lng` decimal(18,16) NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `customer_branch`
--

INSERT INTO `customer_branch` (`branch_id`, `customer_id`, `country_id`, `province_id`, `region_id`, `zone_id`, `name`, `address`, `postal_code`, `phone`, `email`, `website`, `fax`, `main_branch`, `lat`, `lng`, `creation_date`, `created_by`, `company_id`) VALUES
(19, 1, 1, 6, 5, 5, 'Bernal', 'Av. Dardo Rocha 527', '', '12312312', 'mail@mail.com', '', '', 'N', '-34.7170068000000000', '-58.2946951000000100', '2017-02-07 19:24:58', 8, 1),
(18, 1, 1, 1, 4, 4, 'Palermo', 'Paraguay 5001', '', '123123312', 'palermo@mail.com', '', '123123FAX', 'N', '-34.5806891000000000', '-58.4291276000000150', '2017-02-07 19:24:58', 8, 1),
(17, 1, 1, 1, 3, 3, 'Floresta', 'Pergamino 211', '', '1233123', 'pergamino@mail.com', 'www.pergamino.prueba.com', '', 'N', '-34.6349545000000000', '-58.4733529999999750', '2017-02-07 19:24:58', 8, 1),
(16, 1, 1, 1, 1, 1, 'Central', 'Robertson 1031', '', '12333213', 'mail@sucursal.com', '', '', 'Y', '-34.6401673000000000', '-58.4542731999999900', '2017-02-07 19:24:58', 8, 1),
(15, 2, 1, 6, 6, 6, 'Central', 'Malvinas Argentinas 123', '1644', '', '', '', '', 'Y', '-34.4691908000000000', '-58.5700952999999900', '2017-02-07 19:22:38', 8, 1),
(21, 3, 1, 1, 7, 7, 'Central', 'Av. Eva Perón 4000', '', '', '', '', '', 'Y', '-34.6496159000000000', '-58.4697113999999940', '2017-02-07 20:27:42', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE IF NOT EXISTS `customer_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`type_id`, `name`, `status`, `creation_date`, `created_by`, `last_update`, `updated_by`) VALUES
(1, 'Revendedor/Colega', 'A', '2017-01-18 10:07:08', 28, '2017-01-18 00:00:00', 0),
(2, 'Industria', 'A', '2017-01-18 10:07:00', 28, '2017-01-18 12:57:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `geolocation_country`
--

CREATE TABLE IF NOT EXISTS `geolocation_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `geolocation_country`
--

INSERT INTO `geolocation_country` (`country_id`, `name`, `short_name`, `lat`, `lng`) VALUES
(1, 'Argentina', 'AR', -38.4161, -63.6167),
(3, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `geolocation_province`
--

CREATE TABLE IF NOT EXISTS `geolocation_province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `geolocation_province`
--

INSERT INTO `geolocation_province` (`province_id`, `country_id`, `name`, `short_name`, `lat`, `lng`) VALUES
(1, 1, 'Ciudad Autónoma de Buenos Aires', 'CABA', -34.6037, -58.3816),
(2, 1, 'Córdoba', 'Córdoba', -31.4201, -64.1888),
(3, 1, 'Santa Fe', 'Santa Fe', -31.6107, -60.6973),
(4, 1, 'Tucumán', 'Tucumán', -26.8083, -65.2176),
(6, 1, 'Buenos Aires', 'Bs. As.', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `geolocation_region`
--

CREATE TABLE IF NOT EXISTS `geolocation_region` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' ',
  `province_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `geolocation_region`
--

INSERT INTO `geolocation_region` (`region_id`, `province_id`, `country_id`, `name`, `short_name`) VALUES
(1, 1, 1, 'Comuna 7', 'Com. 7'),
(3, 1, 1, 'Comuna 10', 'Com. 10'),
(4, 1, 1, 'Comuna 14', 'Com. 14'),
(5, 6, 1, 'Quilmes', 'Quilmes'),
(6, 6, 1, 'San Fernando', 'San Fernando'),
(7, 1, 1, 'Comuna 9', 'Com. 9'),
(9, 6, 1, 'Esteban Echeverría', 'Esteban Echeverría');

-- --------------------------------------------------------

--
-- Table structure for table `geolocation_zone`
--

CREATE TABLE IF NOT EXISTS `geolocation_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `geolocation_zone`
--

INSERT INTO `geolocation_zone` (`zone_id`, `region_id`, `province_id`, `country_id`, `name`, `short_name`) VALUES
(1, 1, 1, 1, 'Flores', 'Flores'),
(3, 3, 1, 1, 'Floresta', 'Floresta'),
(4, 4, 1, 1, 'Palermo', 'Palermo'),
(5, 5, 6, 1, 'Bernal Oeste', 'Bernal Oeste'),
(6, 6, 6, 1, 'Victoria', 'Victoria'),
(7, 7, 1, 1, 'Parque Avellaneda', 'Parque Avellaneda'),
(9, 9, 6, 1, 'Luis Guillon', 'Luis Guillon');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `total` decimal(20,2) NOT NULL,
  `subtotal` decimal(20,2) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `prefix` int(11) NOT NULL,
  `number` bigint(11) NOT NULL,
  `operation` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `created_by` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_type`
--

CREATE TABLE IF NOT EXISTS `invoice_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

CREATE TABLE IF NOT EXISTS `login_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ip` varchar(255) CHARACTER SET latin1 NOT NULL,
  `tries` int(11) NOT NULL,
  `event` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=234 ;

--
-- Dumping data for table `login_log`
--

INSERT INTO `login_log` (`log_id`, `user`, `password`, `ip`, `tries`, `event`, `date`) VALUES
(1, 'Cheketo', '', '10.240.1.60', 0, 'OK', '2016-10-26 11:12:47'),
(2, 'Cheketo', '', '10.240.0.186', 0, 'OK', '2016-10-27 19:20:20'),
(3, 'javzero', '', '10.240.1.32', 0, 'OK', '2016-10-27 21:36:14'),
(4, 'javzero', '', '10.240.0.182', 0, 'OK', '2016-10-28 20:32:35'),
(5, 'Cheketo', '', '10.240.1.32', 0, 'OK', '2016-10-30 09:18:43'),
(6, 'Cheketo', '', '10.240.1.17', 0, 'OK', '2016-10-31 19:51:38'),
(7, 'Cheketo', '', '10.240.0.119', 0, 'OK', '2016-11-01 01:06:05'),
(8, 'Cheketo', '', '10.240.1.32', 0, 'OK', '2016-11-01 05:45:25'),
(9, 'cheketo', '', '10.240.0.207', 0, 'OK', '2016-11-01 05:56:25'),
(10, 'Cheketo', '', '10.240.1.60', 0, 'OK', '2016-11-01 18:37:08'),
(11, 'Cheketo', '', '10.240.0.208', 0, 'OK', '2016-11-01 20:49:50'),
(12, 'Cheketo', '', '10.240.1.32', 0, 'OK', '2016-11-01 22:18:27'),
(13, 'cheketo', '', '10.240.0.179', 0, 'OK', '2016-11-02 12:07:34'),
(14, 'Cheketo', '', '10.240.0.207', 0, 'OK', '2016-11-02 16:30:57'),
(15, 'javzero', '', '10.240.1.17', 0, 'OK', '2016-11-02 22:20:14'),
(16, 'Cheketo', '', '10.240.0.186', 0, 'OK', '2016-11-03 00:07:55'),
(17, 'Cheketo', '', '10.240.0.208', 0, 'OK', '2016-11-03 16:44:05'),
(18, 'javzero', '', '10.240.0.179', 0, 'OK', '2016-11-04 07:56:19'),
(19, 'javzero', '', '10.240.0.187', 0, 'OK', '2016-11-07 01:25:36'),
(20, 'cheketo', '', '10.240.0.241', 0, 'OK', '2016-11-07 21:14:41'),
(21, 'javzero', '', '10.240.0.187', 0, 'OK', '2016-11-07 22:23:38'),
(22, 'javzero', '', '10.240.0.186', 0, 'OK', '2016-11-08 00:41:59'),
(23, 'cheketo', '', '10.240.1.15', 0, 'OK', '2016-11-09 17:19:35'),
(24, 'javzero', '', '10.240.0.206', 0, 'OK', '2016-11-09 19:34:17'),
(25, 'cheketo', '', '10.240.0.204', 0, 'OK', '2016-11-09 20:32:29'),
(26, 'Cheketo', '', '10.240.1.19', 0, 'OK', '2016-11-11 19:50:52'),
(27, 'contador', '1234', '10.240.1.60', 0, 'Usuario invalido', '2016-11-11 20:00:58'),
(28, 'contador', '123', '10.240.1.20', 0, 'Usuario invalido', '2016-11-11 20:01:02'),
(29, 'contador', '12345', '10.240.0.208', 0, 'Usuario invalido', '2016-11-11 20:01:05'),
(30, 'cheketo', '', '10.240.1.60', 0, 'OK', '2016-11-11 20:01:14'),
(31, 'brand', '', '10.240.0.110', 0, 'OK', '2016-11-11 20:02:31'),
(32, 'cheketo', '', '10.240.0.110', 0, 'OK', '2016-11-15 12:12:48'),
(33, 'cheketo', '', '10.240.1.64', 0, 'OK', '2016-11-15 12:14:36'),
(34, 'cheketo', '', '10.240.1.20', 0, 'OK', '2016-11-15 13:17:27'),
(35, 'cheketo', '', '10.240.1.60', 0, 'OK', '2016-11-15 13:25:44'),
(36, 'Cheketo ', '', '10.240.1.60', 0, 'OK', '2016-11-15 13:30:06'),
(37, 'Hdddh', 'xnn', '10.240.0.208', 0, 'Usuario invalido', '2016-11-15 13:31:01'),
(38, 'Cheketo', '', '10.240.1.20', 0, 'OK', '2016-11-15 13:33:11'),
(39, 'Cheketo', 'Oraprod', '10.240.0.204', 1, 'Clave Incorrecta', '2016-11-15 13:42:59'),
(40, 'Cheketo', '', '10.240.0.187', 0, 'OK', '2016-11-15 13:43:08'),
(41, 'cheketo', '', '10.240.0.204', 0, 'OK', '2016-11-15 13:45:43'),
(42, 'cheketo', '', '10.240.0.208', 0, 'OK', '2016-11-15 16:29:33'),
(43, 'cheketo', 'Oraprod1810', '10.240.0.207', 1, 'Clave Incorrecta', '2016-11-16 01:02:14'),
(44, 'roller', 'Oraprod1810', '10.240.0.110', 0, 'Usuario invalido', '2016-11-16 01:02:21'),
(45, 'ggwegw', 'gewgerw', '10.240.0.241', 0, 'Usuario invalido', '2016-11-16 03:34:12'),
(46, 'ggwegw', 'gewgerw', '10.240.0.110', 0, 'Usuario invalido', '2016-11-16 03:34:48'),
(47, 'ggwegw', 'gewgerw', '10.240.0.186', 0, 'Usuario invalido', '2016-11-16 03:52:49'),
(48, '5325', '5325', '10.240.0.110', 0, 'Usuario invalido', '2016-11-17 03:03:48'),
(49, 'cheketo', '', '10.240.0.207', 0, 'OK', '2016-11-17 11:31:34'),
(50, 'cheketo', '', '10.240.1.20', 0, 'OK', '2016-11-17 15:50:44'),
(51, 'cheketo', '', '10.240.0.204', 0, 'OK', '2016-11-17 16:51:10'),
(52, 'cheketo', '', '10.240.0.204', 0, 'OK', '2016-11-17 18:14:58'),
(53, 'cheketo', '', '10.240.1.64', 0, 'OK', '2016-11-17 18:15:01'),
(54, 'cheketo', '', '10.240.0.182', 0, 'OK', '2016-11-17 18:37:45'),
(55, 'cheketo', '', '10.240.0.119', 0, 'OK', '2016-11-17 18:39:52'),
(56, 'cheketo', '', '10.240.0.207', 0, 'OK', '2016-11-17 18:45:53'),
(57, 'cheketo', '', '10.240.0.179', 0, 'OK', '2016-11-17 19:25:35'),
(58, 'cheketo', '', '10.240.0.204', 0, 'OK', '2016-11-17 19:30:29'),
(59, 'cheketo', '', '10.240.0.207', 0, 'OK', '2016-11-17 19:45:49'),
(60, '', '', '10.240.0.204', 0, 'OK', '2016-11-17 20:04:08'),
(61, 'cheketo', '', '10.240.1.17', 0, 'OK', '2016-11-17 20:05:35'),
(62, '', '', '10.240.1.17', 0, 'OK', '2016-11-17 20:06:14'),
(63, '', '', '10.240.0.110', 0, 'OK', '2016-11-17 20:09:03'),
(64, '', '', '10.240.1.20', 0, 'OK', '2016-11-17 20:12:28'),
(65, 'cheketo', '', '10.240.0.187', 0, 'OK', '2016-11-17 20:25:43'),
(66, 'cheketo', '', '10.240.0.206', 0, 'OK', '2016-11-17 20:31:36'),
(67, 'asddsa', '', '10.240.0.206', 0, 'Usuario invalido', '2016-11-17 20:33:56'),
(68, 'cheketo', 'Oraprod1041', '10.240.0.241', 1, 'Clave Incorrecta', '2016-11-17 20:47:14'),
(69, 'cheketo', '', '10.240.0.110', 0, 'OK', '2016-11-17 20:49:06'),
(70, 'hernan', '1234', '10.240.0.208', 1, 'Clave Incorrecta', '2016-11-17 20:53:38'),
(71, 'hernan', '1234', '10.240.0.204', 2, 'Clave Incorrecta', '2016-11-17 20:53:56'),
(72, 'Hernan', '1234', '10.240.0.204', 3, 'Clave Incorrecta', '2016-11-17 20:54:04'),
(73, 'hernan', '1234', '10.240.0.207', 4, 'Clave Incorrecta', '2016-11-17 20:54:10'),
(74, 'hernan', '', '10.240.1.15', 0, 'OK', '2016-11-17 20:54:46'),
(75, 'hr', 'eyhtey', '10.240.0.241', 0, 'Usuario invalido', '2016-11-17 20:56:58'),
(76, 'hernan', '', '10.240.1.32', 0, 'OK', '2016-11-18 00:31:56'),
(77, '', '', '10.240.1.60', 1, 'Clave Incorrecta', '2016-11-19 17:35:21'),
(78, '', '', '10.240.0.241', 1, 'Clave Incorrecta', '2016-11-19 17:35:24'),
(79, 'hernan', '', '10.240.1.60', 0, 'OK', '2016-11-19 17:35:28'),
(80, 'hernan', '', '10.240.0.186', 0, 'OK', '2016-11-19 17:38:57'),
(81, 'hernan', '', '10.240.1.60', 0, 'OK', '2016-11-19 20:57:21'),
(82, 'hernan', '', '10.240.0.179', 0, 'OK', '2016-11-19 20:58:31'),
(83, '', '', '10.240.1.60', 1, 'Clave Incorrecta', '2016-11-19 21:27:34'),
(84, '', '', '10.240.0.208', 1, 'Clave Incorrecta', '2016-11-19 21:28:09'),
(85, '', '', '10.240.0.119', 1, 'Clave Incorrecta', '2016-11-19 21:30:46'),
(86, '', '', '10.240.0.182', 1, 'Clave Incorrecta', '2016-11-19 21:31:53'),
(87, '436y36y', 'y36y36y', '10.240.0.204', 0, 'Usuario invalido', '2016-11-19 21:31:57'),
(88, '436y36y', '', '10.240.1.64', 0, 'Usuario invalido', '2016-11-19 21:32:11'),
(89, 'hernan', '8186516', '10.240.0.179', 1, 'Clave Incorrecta', '2016-11-19 21:32:29'),
(90, 'hernan', '8186516', '10.240.1.64', 2, 'Clave Incorrecta', '2016-11-19 21:32:34'),
(91, 'hernan', '', '10.240.0.206', 0, 'OK', '2016-11-19 21:41:45'),
(92, 'cheketo', 'Oraprod1-041', '10.240.0.187', 1, 'Clave Incorrecta', '2016-11-21 18:47:51'),
(93, 'cheketo', '', '10.240.0.186', 0, 'OK', '2016-11-21 18:47:55'),
(94, 'cheketo', '', '10.240.0.241', 0, 'OK', '2016-11-22 20:59:29'),
(95, 'cheketo', '', '10.240.0.179', 0, 'OK', '2016-11-24 11:55:15'),
(96, 'pablito', '', '10.240.0.110', 0, 'OK', '2016-11-24 14:44:13'),
(97, 'cheketo', '', '10.240.1.19', 0, 'OK', '2016-11-24 14:49:08'),
(98, 'gonza', '', '10.240.1.17', 0, 'OK', '2016-11-24 14:50:34'),
(99, 'hernan', '', '10.240.0.208', 0, 'OK', '2016-11-26 14:50:11'),
(100, 'hernan', '', '10.240.1.60', 0, 'OK', '2016-11-27 01:37:33'),
(101, 'hernan', '', '10.240.0.69', 0, 'OK', '2016-11-30 01:04:28'),
(102, 'gonza', '', '10.240.1.32', 0, 'OK', '2016-11-30 01:11:49'),
(103, 'pablito', '', '10.240.1.32', 0, 'OK', '2016-11-30 01:12:12'),
(104, 'hernan', '', '10.240.1.60', 0, 'OK', '2016-11-30 01:12:30'),
(105, 'cheketo', '', '10.240.0.69', 0, 'OK', '2016-11-30 11:51:34'),
(106, 'cheketo', '', '10.240.0.206', 0, 'OK', '2016-11-30 12:19:10'),
(107, 'Cheketo', '', '10.240.0.69', 0, 'OK', '2016-12-01 14:39:35'),
(108, 'pablito', '', '10.240.0.179', 0, 'OK', '2016-12-01 17:17:22'),
(109, 'pablo', '', '10.240.1.32', 0, 'OK', '2016-12-01 17:55:46'),
(110, 'pablo', '', '10.240.1.60', 0, 'OK', '2016-12-01 18:00:21'),
(111, 'pablo', '', '10.240.0.206', 0, 'OK', '2016-12-01 19:39:06'),
(112, 'pablo', '', '10.240.0.204', 0, 'OK', '2016-12-01 20:00:03'),
(113, 'pablo', '', '10.240.0.179', 0, 'OK', '2016-12-01 20:00:27'),
(114, 'hernan', '', '10.240.0.204', 0, 'OK', '2016-12-01 20:25:55'),
(115, 'hernan', '', '10.240.0.187', 0, 'OK', '2016-12-01 23:59:09'),
(116, 'cheketo', '', '10.240.0.119', 0, 'OK', '2016-12-02 13:00:57'),
(117, 'pablo', '', '10.240.1.19', 0, 'OK', '2016-12-02 14:19:22'),
(118, 'hernan', '', '10.240.1.32', 0, 'OK', '2016-12-02 15:46:53'),
(119, 'cheketo', '', '10.240.1.64', 0, 'OK', '2016-12-06 17:07:25'),
(120, 'cheketo', '', '10.240.1.17', 0, 'OK', '2016-12-06 17:10:12'),
(121, 'cheketo', '', '10.240.0.206', 0, 'OK', '2016-12-07 13:00:34'),
(122, 'hernan', '', '10.240.0.110', 0, 'OK', '2016-12-08 01:11:09'),
(123, 'hernan', '', '10.240.1.60', 0, 'OK', '2016-12-09 01:45:38'),
(124, 'cheketo', '', '10.240.1.19', 0, 'OK', '2016-12-13 17:13:19'),
(125, 'cheketo', '', '10.240.0.204', 0, 'OK', '2016-12-14 11:23:56'),
(126, 'hernan', '', '10.240.1.60', 0, 'OK', '2016-12-14 18:10:09'),
(127, '', '', '10.240.0.241', 0, 'Usuario invalido', '2016-12-15 00:09:14'),
(128, 'cheketo', '', '10.240.1.19', 0, 'OK', '2016-12-15 11:01:10'),
(129, 'hernan', '', '10.240.1.20', 0, 'OK', '2016-12-15 12:57:22'),
(130, 'hernan', '', '10.240.1.17', 0, 'OK', '2016-12-15 13:16:18'),
(131, 'hernan', '', '10.240.0.187', 0, 'OK', '2016-12-16 01:25:42'),
(132, 'hernan', '', '10.240.0.207', 0, 'OK', '2016-12-16 16:35:38'),
(133, 'cheketo', '', '10.240.0.186', 0, 'OK', '2016-12-20 12:28:59'),
(134, 'cheketo', '', '10.240.1.20', 0, 'OK', '2016-12-20 15:55:03'),
(135, 'cheketo', '', '10.240.0.241', 0, 'OK', '2016-12-20 16:04:09'),
(136, 'cheketo', '', '10.240.0.187', 0, 'OK', '2016-12-21 18:20:08'),
(137, 'cheketo', '', '10.240.1.19', 0, 'OK', '2016-12-21 20:29:56'),
(138, 'cheketo', '', '10.240.0.186', 0, 'OK', '2016-12-21 20:29:59'),
(139, 'cheketo', '', '10.240.1.32', 0, 'OK', '2016-12-21 20:30:03'),
(140, 'cheketo', '', '10.240.0.110', 0, 'OK', '2016-12-21 20:30:06'),
(141, 'hernan', '', '10.240.0.110', 0, 'OK', '2016-12-30 02:58:30'),
(142, 'Cheketo', 'Oraprod10441', '10.240.1.20', 1, 'Clave Incorrecta', '2017-01-01 16:51:51'),
(143, 'Cheketo', 'Oraprod1044', '10.240.0.187', 2, 'Clave Incorrecta', '2017-01-01 16:51:55'),
(144, 'Cheketo', '', '10.240.0.207', 0, 'OK', '2017-01-01 16:52:02'),
(145, 'cheketo', '', '10.240.0.241', 0, 'OK', '2017-01-09 17:06:54'),
(146, 'cheketo', '', '10.240.0.207', 0, 'OK', '2017-01-09 19:32:03'),
(147, 'hernan', '', '10.240.0.110', 0, 'OK', '2017-01-09 23:53:51'),
(148, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-01-10 17:33:56'),
(149, 'roller', 'Oraprod1810', '10.240.0.69', 0, 'Usuario invalido', '2017-01-11 19:19:10'),
(150, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-01-11 19:19:19'),
(151, 'hernan', '', '10.240.1.17', 0, 'OK', '2017-01-11 19:23:12'),
(152, 'cheketo', '', '10.240.0.182', 0, 'OK', '2017-01-12 16:45:37'),
(153, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-01-12 17:21:46'),
(154, 'Cheketo', '', '10.240.0.187', 0, 'OK', '2017-01-16 20:10:29'),
(155, 'hernan', '', '10.240.0.182', 0, 'OK', '2017-01-17 18:38:22'),
(156, 'cheketo', '', '10.240.0.110', 0, 'OK', '2017-01-17 20:32:15'),
(157, 'Cheketo', '', '10.240.0.182', 0, 'OK', '2017-01-18 12:30:21'),
(158, 'Cheketo', '', '10.240.0.110', 0, 'OK', '2017-01-19 05:16:32'),
(159, 'Cheketo', '', '10.240.0.119', 0, 'OK', '2017-01-19 18:10:57'),
(160, 'Cheketo', '', '10.240.0.204', 0, 'OK', '2017-01-21 15:07:43'),
(161, 'Cheketo', '', '10.240.0.119', 0, 'OK', '2017-01-25 18:41:22'),
(162, 'Cheketo', '', '10.240.0.204', 0, 'OK', '2017-01-25 20:08:24'),
(163, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-01-25 20:08:57'),
(164, 'cheketo', '', '10.240.1.20', 0, 'OK', '2017-01-25 20:12:59'),
(165, 'Cheketo', '', '10.240.1.60', 0, 'OK', '2017-01-26 15:49:49'),
(166, 'Cheketo', '', '10.240.1.17', 0, 'OK', '2017-01-26 18:03:39'),
(167, 'cheketo', '', '10.240.1.17', 0, 'OK', '2017-01-26 18:21:17'),
(168, 'cheketo', '', '10.240.0.187', 0, 'OK', '2017-01-26 19:01:06'),
(169, 'Cheketo', '', '10.240.0.186', 0, 'OK', '2017-01-26 23:06:33'),
(170, 'Cheketo', '', '10.240.1.60', 0, 'OK', '2017-01-27 18:16:02'),
(171, 'cheketo', '', '10.240.0.206', 0, 'OK', '2017-01-29 01:14:27'),
(172, 'cheketo', '', '10.240.1.64', 0, 'OK', '2017-01-30 19:43:06'),
(173, 'Cheketo', '', '10.240.0.204', 0, 'OK', '2017-02-02 11:55:31'),
(174, 'hernan', '', '10.240.0.241', 0, 'OK', '2017-02-03 20:24:44'),
(175, 'cheketo', '', '10.240.0.179', 0, 'OK', '2017-02-06 21:41:04'),
(176, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-02-06 23:20:16'),
(177, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-02-07 18:14:16'),
(178, 'cheketo', '', '10.240.0.187', 0, 'OK', '2017-02-07 19:08:00'),
(179, 'cheketo', '', '10.240.0.207', 0, 'OK', '2017-02-11 14:21:05'),
(180, 'cheketo', '', '10.240.0.179', 0, 'OK', '2017-02-11 14:21:06'),
(181, 'cheketo', '', '10.240.1.17', 0, 'OK', '2017-02-11 14:21:07'),
(182, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-02-13 17:00:03'),
(183, 'cheketo', '', '10.240.0.179', 0, 'OK', '2017-02-13 17:11:12'),
(184, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-02-14 11:58:53'),
(185, 'cheketo', '', '10.240.0.187', 0, 'OK', '2017-02-14 15:28:26'),
(186, 'hernan', '', '10.240.0.206', 0, 'OK', '2017-02-14 19:25:22'),
(187, 'hernan', '', '10.240.0.187', 0, 'OK', '2017-02-15 00:46:20'),
(188, 'hernan', '', '10.240.1.32', 0, 'OK', '2017-02-15 03:04:36'),
(189, 'roller', 'Oraprod1810', '10.240.1.19', 0, 'Usuario invalido', '2017-02-15 11:56:40'),
(190, 'roller', 'Oraprod1810', '10.240.1.19', 0, 'Usuario invalido', '2017-02-15 11:56:50'),
(191, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-02-15 11:56:58'),
(192, 'roller', 'Oraprod1810', '10.240.0.204', 0, 'Usuario invalido', '2017-02-20 20:29:06'),
(193, 'cheketo', '', '10.240.0.206', 0, 'OK', '2017-02-20 20:29:14'),
(194, 'cheketo', '', '10.240.0.206', 0, 'OK', '2017-02-22 15:45:04'),
(195, 'Cheketo', '', '10.240.1.60', 0, 'OK', '2017-02-23 17:48:43'),
(196, 'cheketo', '', '10.240.0.206', 0, 'OK', '2017-02-23 20:21:37'),
(197, 'cheketo', '', '10.240.1.60', 0, 'OK', '2017-03-03 15:08:53'),
(198, 'hernan', '', '10.240.1.20', 0, 'OK', '2017-03-03 15:11:29'),
(199, 'hernan', '', '10.240.0.119', 0, 'OK', '2017-03-07 20:49:57'),
(200, 'hernan', '', '10.240.0.207', 0, 'OK', '2017-03-08 00:20:05'),
(201, 'roller', 'Oraprod1810', '10.240.1.19', 0, 'Usuario invalido', '2017-03-09 17:38:41'),
(202, 'cheketo', '', '10.240.0.207', 0, 'OK', '2017-03-09 17:38:46'),
(203, 'hernan', '', '10.240.1.20', 0, 'OK', '2017-03-09 20:03:23'),
(204, 'hernan', '', '10.240.0.241', 0, 'OK', '2017-03-09 23:12:55'),
(205, 'cheketo', '', '10.240.1.32', 0, 'OK', '2017-03-15 23:04:23'),
(206, 'cheketo', '', '10.240.0.187', 0, 'OK', '2017-04-03 12:56:55'),
(207, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-04-03 20:08:28'),
(208, 'cheketo', '', '10.240.0.110', 0, 'OK', '2017-04-03 20:11:26'),
(209, 'cheketo', '', '10.240.0.241', 0, 'OK', '2017-04-04 16:52:53'),
(210, '', '', '10.240.1.17', 0, 'Usuario invalido', '2017-04-04 19:10:08'),
(211, '', '', '10.240.0.110', 0, 'Usuario invalido', '2017-04-04 19:10:18'),
(212, '', '', '10.240.0.110', 0, 'Usuario invalido', '2017-04-04 19:10:40'),
(213, 'cheketo', '', '10.240.0.119', 0, 'OK', '2017-04-04 19:18:44'),
(214, 'hernan', '', '10.240.1.20', 0, 'OK', '2017-04-06 06:19:54'),
(215, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-04-07 17:26:03'),
(216, 'hernan', '', '10.240.0.69', 0, 'OK', '2017-04-08 00:28:54'),
(217, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-04-10 18:44:46'),
(218, 'hernan', '', '10.240.0.110', 0, 'OK', '2017-04-17 16:17:47'),
(219, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-04-17 18:39:34'),
(220, 'cheketo', '', '10.240.1.20', 0, 'OK', '2017-05-04 19:00:38'),
(221, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-05-04 19:04:17'),
(222, 'hernan', '', '10.240.0.179', 0, 'OK', '2017-05-04 19:12:45'),
(223, 'cheketo', '', '10.240.1.60', 0, 'OK', '2017-05-11 16:08:00'),
(224, 'Cheketo', '', '10.240.0.182', 0, 'OK', '2017-05-16 17:18:29'),
(225, 'cheketo', '', '10.240.1.20', 0, 'OK', '2017-05-17 10:56:55'),
(226, 'cheketo', '', '10.240.1.32', 0, 'OK', '2017-05-17 12:58:46'),
(227, 'cheketo', '', '10.240.0.206', 0, 'OK', '2017-05-17 18:03:39'),
(228, 'cheketo', '', '10.240.1.32', 0, 'OK', '2017-05-18 17:42:39'),
(229, 'cheketo', '', '10.240.1.20', 0, 'OK', '2017-05-18 22:37:57'),
(230, 'cheketo', '', '10.240.0.179', 0, 'OK', '2017-05-19 10:55:30'),
(231, 'cheketo', '', '10.240.1.64', 0, 'OK', '2017-05-19 17:31:41'),
(232, 'cheketo', '', '10.240.1.17', 0, 'OK', '2017-05-19 19:33:56'),
(233, 'Cheketo', '', '10.240.0.179', 0, 'OK', '2017-05-19 19:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `mluser`
--

CREATE TABLE IF NOT EXISTS `mluser` (
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `issue_date` date NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `rack` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `stock_min` int(11) NOT NULL,
  `stock_max` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `price_fob` decimal(10,2) NOT NULL,
  `price_dispatch` decimal(10,2) NOT NULL,
  `dispatch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `company_id`, `category_id`, `brand_id`, `rack`, `code`, `stock`, `stock_min`, `stock_max`, `size`, `price`, `price_fob`, `price_dispatch`, `dispatch`, `description`, `status`, `modification_date`, `creation_date`, `created_by`, `updated_by`) VALUES
(1, 1, 11, 2, 'A4', '2333', 562, 15, 60, '122x45', '122.34', '0.00', '0.00', '', 'Descripción: este es un producto de prueba', 'A', '2016-12-13 19:19:36', '2016-12-13 19:19:36', 8, 0),
(2, 1, 28, 1, '2AJ5', 'NKI 15/16', 2412, 10, 100, '14x19x16', '23.00', '0.00', '0.00', '', '', 'A', '2016-12-13 20:17:17', '2016-12-13 20:17:17', 8, 8),
(3, 1, 26, 2, '', '6203 DDU', 117, 0, 0, '', '0.00', '0.00', '0.00', '', '', 'A', '2016-12-14 18:17:30', '2016-12-14 18:17:30', 80, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

CREATE TABLE IF NOT EXISTS `product_brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`brand_id`, `company_id`, `name`, `country_id`, `status`, `creation_date`) VALUES
(1, 1, 'Y&K', 976, 'A', '2016-11-24 13:54:23'),
(2, 1, 'Marca de Prueba', 0, 'A', '2016-11-30 11:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `category_id` int(5) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `parent_id` int(5) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_title` varchar(25) NOT NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_modification` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`category_id`, `company_id`, `parent_id`, `title`, `short_title`, `status`, `creation_date`, `created_by`, `last_modification`, `updated_by`) VALUES
(1, 1, 0, 'Rodamientos', '', 'A', '2016-12-01 16:05:43', 8, '0000-00-00 00:00:00', 0),
(2, 1, 0, 'Transportadores', '', 'A', '2016-12-01 16:06:35', 8, '0000-00-00 00:00:00', 0),
(3, 1, 0, 'Acoplamientos', '', 'A', '2016-12-01 16:06:49', 8, '0000-00-00 00:00:00', 0),
(4, 1, 0, 'Ruedas Dentadas', '', 'A', '2016-12-01 16:07:00', 8, '0000-00-00 00:00:00', 0),
(5, 1, 0, 'Poleas', '', 'A', '2016-12-01 16:07:10', 8, '0000-00-00 00:00:00', 0),
(6, 1, 0, 'Correas', '', 'A', '2016-12-01 16:07:17', 8, '0000-00-00 00:00:00', 0),
(7, 1, 0, 'Herramientas', '', 'A', '2016-12-01 16:07:26', 8, '0000-00-00 00:00:00', 0),
(8, 1, 0, 'Grasas', '', 'I', '2016-12-01 16:07:32', 8, '0000-00-00 00:00:00', 0),
(9, 1, 0, 'Aceites y Grasas', '', 'A', '2016-12-01 16:07:43', 8, '0000-00-00 00:00:00', 81),
(10, 1, 0, 'Cadenas', '', 'A', '2016-12-01 16:07:51', 8, '0000-00-00 00:00:00', 0),
(11, 1, 0, 'Embragues y Frenos Neumaticos', '', 'A', '2016-12-01 16:08:02', 8, '0000-00-00 00:00:00', 0),
(12, 1, 0, 'Engranajes', '', 'A', '2016-12-01 16:08:10', 8, '0000-00-00 00:00:00', 0),
(13, 1, 0, 'Piñones', '', 'A', '2016-12-01 16:08:18', 8, '0000-00-00 00:00:00', 0),
(14, 1, 0, 'Crucetas', '', 'A', '2016-12-01 16:08:26', 8, '0000-00-00 00:00:00', 0),
(15, 1, 0, 'Retenes', '', 'A', '2016-12-01 16:08:34', 8, '0000-00-00 00:00:00', 0),
(16, 1, 1, 'Conos y Cubetas', '', 'A', '2016-12-01 17:20:53', 81, '0000-00-00 00:00:00', 0),
(17, 1, 7, 'Extractores', '', 'A', '2016-12-01 17:48:12', 81, '0000-00-00 00:00:00', 0),
(18, 1, 7, 'Calentadores', '', 'A', '2016-12-01 17:48:42', 81, '0000-00-00 00:00:00', 0),
(19, 1, 6, 'Bandas', '', 'A', '2016-12-01 17:50:35', 81, '0000-00-00 00:00:00', 0),
(20, 1, 1, 'Rodamientos Inoxidables', '', 'A', '2016-12-01 17:53:48', 81, '0000-00-00 00:00:00', 0),
(21, 1, 9, 'Líquido Freno', '', 'A', '2016-12-01 17:57:16', 81, '0000-00-00 00:00:00', 0),
(22, 1, 20, 'Protector', '', 'A', '2016-12-01 17:57:54', 81, '0000-00-00 00:00:00', 0),
(23, 1, 1, 'Conjuntos', '', 'A', '2016-12-01 18:17:57', 81, '0000-00-00 00:00:00', 0),
(24, 1, 7, 'Alineador', '', 'A', '2016-12-01 18:20:50', 81, '0000-00-00 00:00:00', 0),
(25, 1, 1, 'Rótulas', '', 'A', '2016-12-01 18:21:33', 81, '0000-00-00 00:00:00', 0),
(26, 1, 9, 'Aditivo', '', 'A', '2016-12-01 18:22:29', 81, '0000-00-00 00:00:00', 0),
(27, 1, 15, 'Orings', '', 'A', '2016-12-01 18:23:29', 81, '0000-00-00 00:00:00', 0),
(28, 1, 1, 'Rodamientos de Agujas', '', 'A', '2016-12-01 18:24:08', 81, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE IF NOT EXISTS `product_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`image_id`, `product_id`, `src`, `position`) VALUES
(1, 1, '../../../skin/images/products/02.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE IF NOT EXISTS `provider` (
  `provider_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `corporate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT '1',
  `country_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lat` decimal(18,16) NOT NULL,
  `lng` decimal(18,16) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cuit` bigint(50) NOT NULL,
  `gross_income_tax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iva` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`provider_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`provider_id`, `type`, `name`, `corporate_name`, `company_id`, `country_id`, `province_id`, `region_id`, `zone_id`, `address`, `postal_code`, `lat`, `lng`, `email`, `phone`, `fax`, `cuit`, `gross_income_tax`, `iva`, `website`, `logo`, `status`, `creation_date`, `last_update`, `created_by`, `updated_by`) VALUES
(1, 'N', 'Prueba', 'Prueba S.A.', 1, 3, 7, 8, 8, 'Robertson 1041', 'DZK1406', '0.0000000000000000', '0.0000000000000000', 'info@pruebasa.com.ar', 'www.pruebasa.com.ar', '12344567890', 12344567890, '12345565234', '', '123456789', '../../../skin/images/providers//1provider.png', 'A', '2016-12-15 12:44:12', '2017-03-03 18:13:40', 8, 8),
(2, 'N', 'Prueba S.A.', 'Razón Social', 1, 3, 7, 8, 8, 'Robertson 1031', 'B1838', '-34.8135904000000000', '-58.4522249000000300', 'ventas@rollerservice.com.ar', 'www.rollerservice.com.ar', '33647656779', 33647656779, '55555578945', '2', '4912-1100', '../../../skin/images/providers/default/provider.png', 'A', '2016-12-15 13:37:16', '2017-03-03 18:09:49', 80, 8),
(3, 'N', 'PHP Tools2', 'PHP S.A.2', 1, 54, 2, 0, 81, 'Vuelta de Obligado 2002', 'DZK1422', '0.0000000000000000', '0.0000000000000000', 'info@phptools2.com.ar', 'www.phptools2.com.ar', '30123894722', 30123894722, '9342997432322', '', '12351234222', '../../../skin/images/providers//3provider787863719.jpeg', 'A', '2016-12-15 14:11:27', '2016-12-20 15:05:56', 8, 0),
(4, 'N', 'Ejemplo', 'Ejemplo S.A.', 1, 2, 5, 2, 2, 'Robertson 1041', 'C1406', '-34.6402627000000000', '-58.4541611999999900', 'mail@ejemplo.com', '123342342432', '20343232210', 12345678910, '398273489743', '4', 'www.ejemplo.com.ar', '../../../skin/images/providers/default/provider.png', 'A', '2017-01-10 19:53:00', '2017-01-12 19:02:23', 8, 0),
(6, 'N', 'Blanco Rodamientos S.A.', '', 1, 1, 1, 3, 3, 'Gualeguaychú 1059', '', '-34.6250491000000000', '-58.4895817000000300', 'ventas@blancorodamientos.com.ar', '123123213123', '123673217611', 30123435670, '8712378137887', '1', 'www.blancorodamientos.com.ar', '../../../skin/images/providers//6provider87159670.png', 'A', '2017-05-18 19:45:49', '2017-05-18 19:45:49', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `provider_agent`
--

CREATE TABLE IF NOT EXISTS `provider_agent` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `charge` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `extra` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `provider_agent`
--

INSERT INTO `provider_agent` (`agent_id`, `provider_id`, `name`, `charge`, `email`, `phone`, `extra`) VALUES
(25, 1, 'Jorge', 'Asd', 'asd@mail.com', '123567', 'Extra'),
(23, 4, 'Carlos', 'Gerente de ventas', 'carlos@ejemplo.com.ar', '123556433', ''),
(24, 4, 'Rigoberta', 'Dueña', 'rigo.berta@ejemplo.com.ar', '', 'Rigoberta no tiene teléfono porque tiene muy mal carácter'),
(26, 6, 'Mauro Rodriguez', 'Corredor', 'mrodriguez@blancorodamientos.com.ar', '12331322311', '');

-- --------------------------------------------------------

--
-- Table structure for table `provider_order`
--

CREATE TABLE IF NOT EXISTS `provider_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `type` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `total` decimal(14,2) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `actual_delivery_date` datetime NOT NULL,
  `extra` text COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `payment_status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `delivery_status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `company_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `provider_order`
--

INSERT INTO `provider_order` (`order_id`, `provider_id`, `agent_id`, `currency_id`, `type`, `total`, `delivery_date`, `actual_delivery_date`, `extra`, `status`, `payment_status`, `delivery_status`, `company_id`, `creation_date`, `created_by`, `modification_date`, `updated_by`) VALUES
(1, 6, 26, 2, 'N', '3260.07', '2017-05-26 00:00:00', '0000-00-00 00:00:00', '', 'A', 'P', 'P', 1, '2017-05-18 20:11:24', 8, '2017-05-19 15:04:01', 0),
(2, 2, 0, 2, 'N', '666.00', '2017-05-29 00:00:00', '0000-00-00 00:00:00', '', 'C', 'P', 'P', 1, '2017-05-18 20:11:51', 8, '2017-05-19 11:56:17', 8),
(3, 3, 0, 2, 'N', '2733.60', '2017-05-25 00:00:00', '0000-00-00 00:00:00', '', 'P', 'P', 'P', 1, '2017-05-18 20:13:37', 8, '2017-05-18 20:13:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `provider_order_item`
--

CREATE TABLE IF NOT EXISTS `provider_order_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `quantity` bigint(15) NOT NULL,
  `quantity_received` bigint(15) NOT NULL,
  `quantity_paid` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `payment_status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `delivery_date` datetime NOT NULL,
  `actual_delivery_date` datetime NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `provider_order_item`
--

INSERT INTO `provider_order_item` (`item_id`, `order_id`, `provider_id`, `product_id`, `currency_id`, `quantity`, `quantity_received`, `quantity_paid`, `price`, `status`, `payment_status`, `delivery_date`, `actual_delivery_date`, `creation_date`, `created_by`, `company_id`) VALUES
(1, 1, 6, 1, 2, 123, 0, 0, '8.88', 'P', 'P', '2017-05-26 00:00:00', '0000-00-00 00:00:00', '2017-05-18 20:11:24', 8, 1),
(2, 1, 6, 3, 2, 321, 0, 0, '3.33', 'P', 'P', '2017-05-26 00:00:00', '0000-00-00 00:00:00', '2017-05-18 20:11:24', 8, 1),
(3, 1, 6, 2, 2, 110, 0, 0, '9.99', 'P', 'P', '2017-05-26 00:00:00', '0000-00-00 00:00:00', '2017-05-18 20:11:24', 8, 1),
(4, 2, 2, 1, 2, 200, 0, 0, '3.33', 'P', 'P', '2017-05-29 00:00:00', '0000-00-00 00:00:00', '2017-05-18 20:11:51', 8, 1),
(5, 3, 3, 3, 2, 10, 0, 0, '9.00', 'P', 'P', '2017-05-25 00:00:00', '0000-00-00 00:00:00', '2017-05-18 20:13:37', 8, 1),
(6, 3, 3, 2, 2, 11, 0, 0, '11.00', 'P', 'P', '2017-05-25 00:00:00', '0000-00-00 00:00:00', '2017-05-18 20:13:37', 8, 1),
(7, 3, 3, 1, 2, 12, 0, 0, '12.00', 'P', 'P', '2017-05-25 00:00:00', '0000-00-00 00:00:00', '2017-05-18 20:13:37', 8, 1),
(8, 3, 3, 2, 2, 10, 0, 0, '8.00', 'P', 'P', '2017-05-18 00:00:00', '0000-00-00 00:00:00', '2017-05-18 20:13:37', 8, 1),
(9, 3, 3, 1, 2, 11, 0, 0, '9.80', 'P', 'P', '2017-05-18 00:00:00', '0000-00-00 00:00:00', '2017-05-18 20:13:37', 8, 1),
(10, 3, 3, 3, 2, 80, 0, 0, '9.22', 'P', 'P', '2017-05-18 00:00:00', '0000-00-00 00:00:00', '2017-05-18 20:13:37', 8, 1),
(11, 3, 3, 3, 2, 120, 0, 0, '12.11', 'P', 'P', '2017-05-18 00:00:00', '0000-00-00 00:00:00', '2017-05-18 20:13:37', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `provider_payment_item`
--

CREATE TABLE IF NOT EXISTS `provider_payment_item` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `delivered_at_moment` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `provider_payment_item`
--

INSERT INTO `provider_payment_item` (`payment_id`, `provider_id`, `order_id`, `product_id`, `item_id`, `amount`, `delivered_at_moment`, `creation_date`, `created_by`, `company_id`) VALUES
(6, 4, 4, 2, 34, '434.70', 45, '2017-05-17 11:25:53', 8, 1),
(5, 4, 4, 3, 33, '495.00', 15, '2017-05-17 11:25:53', 8, 1),
(4, 4, 4, 1, 32, '360.00', 30, '2017-05-17 11:25:53', 8, 1),
(7, 2, 5, 3, 73, '123.30', 10, '2017-05-17 13:25:59', 8, 1),
(8, 2, 5, 2, 75, '53.20', 40, '2017-05-17 13:25:59', 8, 1),
(9, 2, 5, 1, 74, '36.68', 4, '2017-05-17 13:35:28', 8, 1),
(10, 4, 6, 3, 60, '1032.96', 8, '2017-05-17 13:56:00', 8, 1),
(11, 4, 6, 3, 63, '1174.56', 12, '2017-05-17 13:56:00', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `relation_admin_group`
--

CREATE TABLE IF NOT EXISTS `relation_admin_group` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`),
  KEY `admin_id` (`admin_id`,`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `relation_admin_group`
--

INSERT INTO `relation_admin_group` (`relation_id`, `admin_id`, `group_id`) VALUES
(74, 8, 11),
(63, 28, 11),
(4, 38, 9),
(5, 39, 4),
(6, 40, 5),
(7, 41, 5),
(8, 41, 6),
(9, 41, 7),
(10, 42, 5),
(11, 42, 7),
(12, 42, 8),
(13, 43, 4),
(14, 43, 9),
(15, 44, 7),
(16, 44, 9),
(18, 46, 5),
(19, 46, 6),
(20, 47, 9),
(21, 48, 4),
(22, 49, 5),
(23, 50, 5),
(24, 50, 6),
(25, 51, 5),
(27, 55, 4),
(28, 55, 8),
(29, 58, 8),
(31, 60, 7),
(32, 61, 9),
(33, 62, 7),
(34, 62, 9),
(35, 64, 4),
(36, 64, 5),
(37, 64, 8),
(39, 67, 6),
(40, 68, 7),
(41, 69, 6),
(75, 80, 11);

-- --------------------------------------------------------

--
-- Table structure for table `relation_admin_menu`
--

CREATE TABLE IF NOT EXISTS `relation_admin_menu` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=423 ;

--
-- Dumping data for table `relation_admin_menu`
--

INSERT INTO `relation_admin_menu` (`relation_id`, `menu_id`, `admin_id`) VALUES
(399, 19, 66),
(400, 18, 66),
(401, 25, 66),
(408, 1, 81),
(409, 5, 81),
(410, 11, 81),
(411, 12, 81),
(412, 16, 81),
(413, 20, 81),
(414, 53, 8),
(415, 2, 8),
(416, 19, 8),
(417, 18, 8),
(418, 54, 8),
(419, 55, 8),
(420, 58, 8),
(421, 60, 8),
(422, 59, 8);

-- --------------------------------------------------------

--
-- Table structure for table `relation_customer_broker`
--

CREATE TABLE IF NOT EXISTS `relation_customer_broker` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `broker_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `relation_customer_broker`
--

INSERT INTO `relation_customer_broker` (`relation_id`, `customer_id`, `branch_id`, `broker_id`, `company_id`) VALUES
(38, 1, 19, 84, 1),
(37, 1, 18, 83, 1),
(36, 1, 17, 85, 1),
(35, 1, 17, 84, 1),
(34, 1, 17, 83, 1),
(33, 1, 16, 84, 1),
(32, 1, 16, 83, 1);

-- --------------------------------------------------------

--
-- Table structure for table `relation_group_profile`
--

CREATE TABLE IF NOT EXISTS `relation_group_profile` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `relation_group_profile`
--

INSERT INTO `relation_group_profile` (`relation_id`, `group_id`, `profile_id`) VALUES
(9, 6, 333),
(11, 7, 333),
(15, 8, 333),
(17, 4, 333),
(23, 5, 355),
(24, 6, 355),
(25, 10, 333),
(27, 10, 355),
(35, 12, 355),
(36, 12, 357),
(38, 11, 357),
(39, 11, 358),
(40, 11, 355),
(41, 11, 333),
(42, 9, 333);

-- --------------------------------------------------------

--
-- Table structure for table `relation_invoice_order`
--

CREATE TABLE IF NOT EXISTS `relation_invoice_order` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `relation_invoice_payment`
--

CREATE TABLE IF NOT EXISTS `relation_invoice_payment` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `difference_invoice` decimal(20,2) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `relation_menu_group`
--

CREATE TABLE IF NOT EXISTS `relation_menu_group` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `relation_menu_group`
--

INSERT INTO `relation_menu_group` (`relation_id`, `menu_id`, `group_id`) VALUES
(11, 25, 1),
(20, 25, 2),
(72, 25, 5),
(83, 30, 5),
(87, 7, 10),
(88, 26, 10),
(89, 27, 10),
(90, 28, 10),
(107, 7, 12),
(108, 26, 12),
(109, 27, 12),
(110, 28, 12),
(112, 7, 11),
(113, 26, 11),
(114, 27, 11),
(115, 28, 11),
(116, 8, 11),
(117, 9, 11),
(118, 10, 11),
(119, 17, 11),
(120, 29, 11),
(125, 18, 5),
(126, 19, 5),
(127, 13, 9),
(128, 13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `relation_menu_profile`
--

CREATE TABLE IF NOT EXISTS `relation_menu_profile` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

--
-- Dumping data for table `relation_menu_profile`
--

INSERT INTO `relation_menu_profile` (`relation_id`, `menu_id`, `profile_id`) VALUES
(9, 4, 351),
(10, 21, 351),
(16, 5, 352),
(17, 11, 352),
(18, 12, 352),
(19, 16, 352),
(20, 20, 352),
(86, 30, 333),
(104, 25, 356),
(107, 7, 357),
(108, 26, 357),
(109, 27, 357),
(110, 28, 357),
(114, 5, 353),
(115, 11, 353),
(116, 12, 353),
(117, 16, 353),
(118, 20, 353),
(120, 4, 353),
(121, 21, 353),
(122, 31, 353),
(123, 35, 353),
(124, 7, 353),
(125, 26, 353),
(126, 27, 353),
(127, 28, 353),
(128, 33, 353),
(129, 8, 353),
(130, 9, 353),
(131, 10, 353),
(132, 17, 353),
(133, 32, 353),
(134, 29, 353),
(147, 49, 359),
(148, 6, 353),
(149, 13, 353),
(150, 13, 360),
(151, 53, 360),
(152, 2, 360),
(153, 19, 360),
(154, 18, 360),
(155, 25, 360),
(156, 3, 360),
(157, 23, 360),
(158, 22, 360),
(159, 24, 360),
(160, 50, 360),
(161, 52, 360),
(162, 51, 360),
(168, 37, 360),
(169, 37, 333),
(173, 38, 359),
(174, 38, 360),
(175, 38, 333),
(176, 39, 359),
(177, 39, 360),
(178, 39, 333),
(179, 46, 360),
(180, 46, 333),
(184, 36, 359),
(185, 36, 360),
(186, 36, 333);

-- --------------------------------------------------------

--
-- Table structure for table `relation_product_category`
--

CREATE TABLE IF NOT EXISTS `relation_product_category` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`),
  KEY `product_id` (`product_id`,`category_id`),
  KEY `category to relation` (`category_id`),
  KEY `product_id_2` (`product_id`,`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `relation_product_category`
--

INSERT INTO `relation_product_category` (`relation_id`, `product_id`, `category_id`) VALUES
(2, 1, 1),
(3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `renovatio_configuration`
--

CREATE TABLE IF NOT EXISTS `renovatio_configuration` (
  `configuration_id` int(1) NOT NULL AUTO_INCREMENT,
  `meli_application_id` bigint(11) NOT NULL,
  `meli_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `renovatio_configuration`
--

INSERT INTO `renovatio_configuration` (`configuration_id`, `meli_application_id`, `meli_secret`) VALUES
(1, 1204162705833882, '9BSgeYbRpo4PCAOaCqYzhEqPo7354DyY');

-- --------------------------------------------------------

--
-- Table structure for table `stock_entrance`
--

CREATE TABLE IF NOT EXISTS `stock_entrance` (
  `entrance_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` bigint(15) NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`entrance_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `stock_entrance`
--

INSERT INTO `stock_entrance` (`entrance_id`, `item_id`, `order_id`, `provider_id`, `product_id`, `quantity`, `creation_date`, `created_by`, `company_id`) VALUES
(1, 33, 4, 4, 3, 5, '2017-04-10 20:12:46', 8, 1),
(2, 32, 4, 4, 1, 10, '2017-04-10 20:13:32', 8, 1),
(3, 33, 4, 4, 3, 5, '2017-04-10 20:13:32', 8, 1),
(4, 34, 4, 4, 2, 10, '2017-04-10 20:13:32', 8, 1),
(5, 34, 4, 4, 2, 5, '2017-04-10 20:15:54', 8, 1),
(6, 32, 4, 4, 1, 10, '2017-04-10 20:16:15', 8, 1),
(7, 34, 4, 4, 2, 30, '2017-04-10 20:16:57', 8, 1),
(8, 21, 3, 3, 2, 1, '2017-04-17 18:43:20', 80, 1),
(9, 20, 3, 3, 1, 1, '2017-04-17 18:43:20', 80, 1),
(10, 19, 3, 3, 3, 4, '2017-04-17 18:43:20', 80, 1),
(11, 74, 5, 2, 1, 4, '2017-05-17 13:23:30', 8, 1),
(12, 75, 5, 2, 2, 10, '2017-05-17 13:24:00', 8, 1),
(13, 73, 5, 2, 3, 5, '2017-05-17 13:24:00', 8, 1),
(14, 75, 5, 2, 2, 10, '2017-05-17 13:24:27', 8, 1),
(15, 73, 5, 2, 3, 5, '2017-05-17 13:24:27', 8, 1),
(16, 75, 5, 2, 2, 10, '2017-05-17 13:24:51', 8, 1),
(17, 75, 5, 2, 2, 10, '2017-05-17 13:25:00', 8, 1),
(18, 63, 6, 4, 3, 12, '2017-05-17 13:38:28', 8, 1),
(19, 62, 6, 4, 1, 500, '2017-05-17 13:38:28', 8, 1),
(20, 61, 6, 4, 2, 2000, '2017-05-17 13:38:28', 8, 1),
(21, 60, 6, 4, 3, 8, '2017-05-17 13:38:28', 8, 1),
(22, 7, 2, 2, 2, 1, '2017-05-17 15:03:35', 8, 1),
(23, 10, 2, 2, 3, 1, '2017-05-17 15:03:35', 8, 1),
(24, 27, 1, 2, 1, 1, '2017-05-17 15:05:14', 8, 1),
(25, 76, 7, 2, 1, 1, '2017-05-17 15:06:53', 8, 1),
(26, 79, 7, 2, 2, 1, '2017-05-17 15:13:38', 8, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;